#include <stdint.h>
#include "ff.h"

#define _MAX_NAMES 64

/*path...overritable*/
int filer(char *path){
  char name[64][8+1+3+1];
  uint8_t attr[64];
  
  DIR dir;
  int dirnum,filenum,totalsize;
  char sizetmp[16];

  res = f_opendir(&dir, path);
  if (res) { put_rc(res); return; }
  for(;;) {
    res = f_readdir(&dir, &Finfo);
    if ((res != FR_OK) || !Finfo.fname[0]) break;
    if (Finfo.fattrib & AM_DIR) {
      xsprintf(name[dirnum+filenum],"%s/",Finfo.fname);
      dirnum++;
    } else {
      strcpy(name[dirnum+filenum],Finfo.fname);
      filenum++; totalsize += Finfo.fsize;
      xprintf("%12s",Finfo.fname, Finfo.fsize);
    }
  }
  xprintf("%4u File(s),%10lu bytes total\n%4u Dir(s)", filenum, totalsize, dirnum);
  if (f_getfree(ptr, (DWORD*)&p1, &fs) == FR_OK)
    xprintf(", %10lu KiB free\n", p1 * fs->csize /2);
  break;
}


char *size2str(unsigned int size,char *str){
  if(size < 10000){
    sprintf(str,"%d.%02dKB",size/1000,size%1000/10);
  }else if(size < 1000000){
    sprintf(str,"%3dKB",size/1000);
  }else if(size < 100000000){
    sprintf(str,"%d.%02dMB",size/1000000,size%1000000/10);
  }else{
    sprintf(str,"%dMB",size/1000000);
  }
  return str;
}
