#include "ff.h"
#include <stdio.h>
#include <stdint.h>

#define ATTR_DIRECTORY 0x10

typedef struct{
  DIR dir;
  FILINFO finfo;
  unsigned int attr;
  char filename[32];
} SearchRec;

int FSInit(void);
FIL* FSfopen(const char *filename,const char *mode);
int FSfclose(FIL* f);
int FSfseek(FIL *f,int ofs,int whence);
unsigned long FSftell(FIL *fo);
int FSremove(const char *filename);
int FindFirst(const char * fileName, unsigned int attr, SearchRec *rec);
int FindNext(SearchRec *rec);
int FSchdir(const char *path);
int FSfread(void *ptr,size_t size,size_t n,FIL *fp);
int FSwrite(const void *ptr,size_t size,size_t n,FIL *fp);
char* FSgetcwd(char *path,int len);


FATFS fs;

#define _MAX_FILES 2
FIL files[_MAX_FILES];
uint8_t usingfile = 0;

int FSInit(void){
  f_mount(&fs,"",0);
  return 1;
}

int FSfeof(FIL *fp){
  return f_eof(fp);
}

FIL* FSfopen(const char *filename,const char *mode){
  uint8_t fa = 0;
  FIL *fp;
  int i;

  if(mode[0] == 'r'&&mode[1] == '\0'){
    fa = FA_READ;
  }else if(mode[0] == 'r'&&mode[1] == '+'){
    fa = FA_READ|FA_WRITE;
  }else if(mode[0] == 'w'){
    fa = FA_CREATE_ALWAYS|FA_WRITE;
    if(mode[1] == '+'){
      fa |= FA_READ;
    }
  }else if(mode[0] == 'a'){
    /* fa = FA_OPEN_APPEND | FA_WRITE; */
    /* if(mode[1] == '+'){ */
    /*   fa |= FA_READ; */
    /* }     */
  }else if(mode[0] == 'w'){
    if(mode[1] == 'x'){
      fa = FA_CREATE_NEW | FA_WRITE;
    }else if(mode[1] == '+'&&mode[2] == 'x'){
      fa |= FA_READ;
    }
  }

  for(i=0;i<_MAX_FILES;i++){
    if((usingfile&(1<<i))==0){
      usingfile |= 1<<i;
      fp = &files[i];
      break;
    }
  }
  if(i==_MAX_FILES){
    printstr("Cannot allocate memory\n");
    printnum(usingfile);
    return 0;
  }
  f_open(fp,filename,fa);

  return fp;
}

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2


int FSfclose(FIL *f){
  int i;
  for(i=0;i<_MAX_FILES;i++){
    if(f == &files[i]){
      if(usingfile&(1<<i)){
	usingfile &= ~(1<<i);
      }else{
	printstr("Cannot close file\n");
	return 0;
      }
    }
  }
  return f_close(f);
}

int FSfseek(FIL *f,int ofs,int whence){
  switch(whence){
  case SEEK_SET:
    return f_lseek(f,ofs);
  case SEEK_CUR:
    return f_lseek(f,ofs+f_tell(f));
  case SEEK_END:
    return f_lseek(f,ofs+f_size(f));
  }
}

unsigned long FSftell(FIL *f){
  return f_tell(f);
}

int FSremove(const char *filename){
  return f_unlink(filename);
}

int FindFirst(const char * fileName, unsigned int attr, SearchRec *rec){
  rec->attr = attr;
  if(attr == ATTR_DIRECTORY){
    f_opendir(&rec->dir,"");
    do{
      f_readdir(&rec->dir,&rec->finfo);
    }while(rec->finfo.fname[0]&&(rec->finfo.fattrib&AM_DIR)==0);
  }else{
    f_findfirst(&rec->dir,&rec->finfo,"",fileName);
  }
  strcpy(rec->filename,rec->finfo.fname);
  return rec->finfo.fname[0]==0;
}

int FindNext(SearchRec *rec){
  if(rec->attr == ATTR_DIRECTORY){
    do{
      f_readdir(&rec->dir,&rec->finfo);
    }while(rec->finfo.fname[0]&&(rec->finfo.fattrib&AM_DIR)==0);
  }else{
    f_findnext(&rec->dir,&rec->finfo);
  }
  strcpy(rec->filename,rec->finfo.fname);
  return rec->finfo.fname[0]==0;  
}

int FSchdir(const char *dir){
  f_chdir(dir);
  return 0;
}

char *FSgetcwd(char *path,int len){
  f_getcwd(path,len);
  return path;
}

int FSfread(void *ptr,size_t size,size_t n,FIL *fp){
  int readnum;

  f_read(fp,ptr,size*n,&readnum);
  
  return readnum;
}

int FSfwrite(const void *ptr,size_t size,size_t n,FIL *fp){
  int writtennum;

  f_write(fp,ptr,size*n,&writtennum);
  
  return writtennum;
}

int FSmkdir(const char *path){
  return f_mkdir(path);
}
