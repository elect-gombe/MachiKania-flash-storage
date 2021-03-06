/*
   This file is provided under the LGPL license ver 2.1.
   Written by K.Tanaka & Katsumi
   http://www.ze.em-net.ne.jp/~kenken/index.html
   http://hp.vector.co.jp/authors/VA016157/
*/

#ifdef __DEBUG

#include <xc.h>
#include "api.h"
#include "main.h"
#include "compiler.h"

/*
	Enable following line when debugging binary object.
*/
//#include "debugdump.h"


// Pseudo reading config setting for debug mode
unsigned int g_DEVCFG1=0xFF7F4DDB;

// Construct jump assembly in boot area.
const unsigned int _debug_boot[] __attribute__((address(0xBFC00000))) ={
	0x0B401C00,//   j           0x9d007000
	0x00000000,//   nop         
};

// Use DEBUG.HEX as file name of this program.
const unsigned char _debug_filename[] __attribute__((address(FILENAME_FLASH_ADDRESS))) ="DEBUG.HEX";

static const char initext[];
static const char bastext[];

static char* readtext;
static int filepos;

/*
	Debug dump
	In debugdump.h:
		__DEBUGDUMP is defined.
		__DEBUGDUMP_FREEAREA is defined as start address of free area (1st argument of set_free_area() function)
		const unsigned char dump[] is initialized.
*/
#ifdef __DEBUGDUMP
int debugDump(){
	int i;
	for(i=0;i<sizeof dump;i++){
		RAM[i]=dump[i];
	}

	g_objpos=(__DEBUGDUMP_FREEAREA-(unsigned int)g_object)/4;

	// Initialize parameters
	g_pcg_font=0;
	g_use_graphic=0;
	g_graphic_area=0;
	clearscreen();
	setcursor(0,0,7);	

	printstr("BASIC "BASVER"\n");
	wait60thsec(15);
	// Initialize music
	init_music();

	printstr("Compiling...");

	// Initialize the other parameters
	// Random seed
	g_rnd_seed=0x92D68CA2; //2463534242
	// Clear variables
	for(i=0;i<ALLOC_BLOCK_NUM;i++){
		g_var_mem[i]=0;
		g_var_size[i]=0;
	}
	// Clear key input buffer
	for(i=0;i<256;i++){
		ps2keystatus[i]=0;
	}
	// Reset data/read.
	reset_dataread();

	// Assign memory
	set_free_area((void*)(g_object+g_objpos),(void*)(&RAM[RAMSIZE]));
	// Execute program
	// Start program from the beginning of RAM.
	// Work area (used for A-Z values) is next to the object code area.
	start_program((void*)(&(RAM[0])),(void*)(&g_var_mem[0]));
	printstr("\nOK\n");
	set_graphmode(0);
	g_use_graphic=0;

	return 1;
}
#else
int debugDump(){
	return 0;
}
#endif

/*
    Override libsdfsio functions.
    Here, don't use SD card, but the vertual files 
    (initext[] and bastext[]) are used. 
*/

FSFILE fsfile;

size_t FSfread(void *ptr, size_t size, size_t n, FSFILE *stream){
	char b;
	size_t ret=0;
	if (!readtext) return 0;
	while(b=readtext[filepos]){
		filepos++;
		((char*)ptr)[ret]=b;
		ret++;
		if (n<=ret) break;
	}
	return ret;
}
FSFILE* FSfopen(const char * fileName, const char *mode){
	int i;
	for(i=0;i<13;i++){
		if (fileName[i]=='.') break;
	}
	if (i==13) {
		// Unknown file name
		// Force BAS file
		readtext=(char*)&bastext[0];
	} else if (fileName[i+1]=='I' && fileName[i+2]=='N' && fileName[i+3]=='I') {
		// INI file
		readtext=(char*)&initext[0];
	} else if (fileName[i+1]=='B' && fileName[i+2]=='A' && fileName[i+3]=='S') {
		// BAS file
		readtext=(char*)&bastext[0];
		// Try debugDump.
		if (debugDump()) return 0;
	} else {
		readtext=0;
		return 0;
	}
	filepos=0;
	return &fsfile;
}
int FSfeof( FSFILE * stream ){
	return readtext[filepos]?1:0;
}
int FSfclose(FSFILE *fo){
	return 0;
}
int FSInit(void){
	return 1;
}
int FSremove (const char * fileName){
	return 0;
}
size_t FSfwrite(const void *ptr, size_t size, size_t n, FSFILE *stream){
	return 0;
}

int FindFirst (const char * fileName, unsigned int attr, SearchRec * rec){
	return 0;
}
int FindNext (SearchRec * rec){
	return 0;
}
int FSmkdir (char * path){
	return 0;
}
char * FSgetcwd (char * path, int numchars){
	return 0;
}
int FSchdir (char * path){
	return 0;
}
long FSftell (FSFILE * fo){
	return 0;
}
int FSfseek(FSFILE *stream, long offset, int whence){
	return 0;
}
/*
    ps2init() is not called.
    Instead, not_ps2init_but_init_Timer1() is called.
    Timer1 is used to update drawcount and drawing gloval variables.
*/

int not_ps2init_but_init_Timer1(){
	PR1=0x0FFF;
	TMR1=0;
	IFS0bits.T1IF=0;
	T1CON=0x8000;
	// Timer1 interrupt: priority 4
	IPC1bits.T1IP=4;
	IPC1bits.T1IS=0;
	IEC0bits.T1IE=1;

	return 0;
}

#pragma interrupt timer1Int IPL4SOFT vector 4

void timer1Int(){
	IFS0bits.T1IF=0;
	if (drawing) {
		drawing=0;
		drawcount++;
	} else {
		drawing=1;
	}
}

/*
    initext[] and bastext[] are vertual files 
    as "MACHIKAN.INI" and "DEBUG.BAS".
*/


static const char initext[]=
"#PRINT\n"
"#PRINT\n";


static const char bastext[]=
"CLS\n"
"USEVAR T01,T02,T03,T04,T05,T06,T07,T08\n"
"T01$=hex$(123)\n"
"PRINT T01$,\n"
"GOSUB SUB\n"
"PRINT T01$,\n"
"END\n"
"LABEL SUB\n"
"VAR T01,T02,T03,T04,T05,T06,T07,T08,A,B,C,D,E\n"
"PRINT T01,\n"
"T01=456\n"
"PRINT T01,\n"
"RETURN\n"
"\n"
"\n";

/*
    Test function for constructing assemblies from C codes.
*/

int __attribute__((nomips16))_debug_test(int a0, int a1, int a2, int a3, int param4, int param5){
//	if (a0<0xa0008192) return 0xa0000000;
	asm volatile("addiu $sp,$sp,-4");
	return a2+a3;
}

/*
	Break point used for debugging object code.

g_object[g_objpos++]=0x0000000d;// break 0x0

*/

#endif // __DEBUG
