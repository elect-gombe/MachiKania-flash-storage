/*
   This file is provided under the LGPL license ver 2.1.
   Written by Katsumi.
   http://hp.vector.co.jp/authors/VA016157/
   kmorimatsu@users.sourceforge.jp
*/
#define _MIPS32 __attribute__ ( ( nomips16,noinline) )

/* Definitions */
// Number of variables (including temporary ones)
#define ALLOC_VAR_NUM 36
// Block # dedicated for PCG
#define ALLOC_PCG_BLOCK 36
// Block # dedicated for GRAPHIC
#define ALLOC_GRAPHIC_BLOCK 37
// Start # for long name variables
#define ALLOC_LNV_BLOCK 38
// Number of long name variables
#define ALLOC_LNV_NUM 190
// Start # of permanent blocks
#define ALLOC_PERM_BLOCK 228
// Number of blocks that can be assigned for memory allocation (including all above)
#define ALLOC_BLOCK_NUM 238

// Persistent RAM bytes used for object, heap and exception data
#define PERSISTENT_RAM_SIZE (1024*54)
// Exception data area bytes
#define EXCEPTION_DATA_SIZE (64)
// RAM size used for object and heap
#define RAMSIZE (PERSISTENT_RAM_SIZE-EXCEPTION_DATA_SIZE)

/* Enums */
enum variable{
	VAR_INTEGER,
	VAR_FLOAT,
	VAR_STRING
};

#define OP_MASK 0x001F
enum operator{
	OP_VOID=0,
	OP_OR  =1,
	OP_AND =2,
	OP_XOR =3,
	OP_EQ  =4,
	OP_NEQ =5,
	OP_LT  =6,
	OP_LTE =7,
	OP_MT  =8,
	OP_MTE =9,
	OP_SHL =10,
	OP_SHR =11,
	OP_ADD =12,
	OP_SUB =13,
	OP_MUL =14,
	OP_DIV =15,
	OP_REM =16
};

#define LIB_MASK 0xFE00
#define LIB_STEP 0x0200
enum libs{
	LIB_SOUND          =LIB_STEP*0,
	LIB_MUSICFUNC      =LIB_STEP*1,
	LIB_MUSIC          =LIB_STEP*2,
	LIB_SETDRAWCOUNT   =LIB_STEP*3,
	LIB_DRAWCOUNT      =LIB_STEP*4,
	LIB_PALETTE        =LIB_STEP*5,
	LIB_GPALETTE       =LIB_STEP*6,
	LIB_BGCOLOR        =LIB_STEP*7,
	LIB_CURSOR         =LIB_STEP*8,
	LIB_CLS            =LIB_STEP*9,
	LIB_GCLS           =LIB_STEP*10,
	LIB_COLOR          =LIB_STEP*11,
	LIB_GCOLOR         =LIB_STEP*12,
	LIB_KEYS           =LIB_STEP*13,
	LIB_RESTORE        =LIB_STEP*14,
	LIB_RESTORE2       =LIB_STEP*15,
	LIB_READ           =LIB_STEP*16,
	LIB_MIDSTR         =LIB_STEP*17,
	LIB_CLEAR          =LIB_STEP*18,
	LIB_DIV0           =LIB_STEP*19,
	LIB_LETSTR         =LIB_STEP*20,
	LIB_STRNCMP        =LIB_STEP*21,
	LIB_RND            =LIB_STEP*22,
	LIB_DEC            =LIB_STEP*23,
	LIB_HEX            =LIB_STEP*24,
	LIB_CHR            =LIB_STEP*25,
	LIB_CONNECT_STRING =LIB_STEP*26,
	LIB_STRING         =LIB_STEP*27,
	LIB_PRINTSTR       =LIB_STEP*28,
	LIB_LABEL          =LIB_STEP*29,
	LIB_DIM            =LIB_STEP*30,
	LIB_VAL            =LIB_STEP*31,
	LIB_INPUT          =LIB_STEP*32,
	LIB_INKEY          =LIB_STEP*33,
	LIB_USEPCG         =LIB_STEP*34,
	LIB_PCG            =LIB_STEP*35,
	LIB_SCROLL         =LIB_STEP*36,
	LIB_WAIT           =LIB_STEP*37,
	LIB_VAR_PUSH       =LIB_STEP*38,
	LIB_VAR_POP        =LIB_STEP*39,
	LIB_SYSTEM         =LIB_STEP*40,
	LIB_SPRINTF        =LIB_STEP*41,
	LIB_FLOAT          =LIB_STEP*42,
	LIB_FLOATFUNCS     =LIB_STEP*43,
	LIB_CREAD          =LIB_STEP*44,
	LIB_USEGRAPHIC     =LIB_STEP*45,
	LIB_GRAPHIC        =LIB_STEP*46,
	LIB_WIDTH          =LIB_STEP*47,
	LIB_FILE           =LIB_STEP*48,
	LIB_DEBUG          =LIB_STEP*127,
};

// Note: OP_XXXX and FUNC_XXXX cannot be used simultaneously
#define FUNC_MASK 0x003F
#define FUNC_STEP 0x0001
enum functions{
	FUNC_FLOAT       =FUNC_STEP*0,
	FUNC_INT         =FUNC_STEP*1,
	FUNC_VALSHARP    =FUNC_STEP*2,
	FUNC_SIN         =FUNC_STEP*3,
	FUNC_COS         =FUNC_STEP*4,
	FUNC_TAN         =FUNC_STEP*5,
	FUNC_ASIN        =FUNC_STEP*6,
	FUNC_ACOS        =FUNC_STEP*7,
	FUNC_ATAN        =FUNC_STEP*8,
	FUNC_ATAN2       =FUNC_STEP*9,
	FUNC_SINH        =FUNC_STEP*10,
	FUNC_COSH        =FUNC_STEP*11,
	FUNC_TANH        =FUNC_STEP*12,
	FUNC_EXP         =FUNC_STEP*13,
	FUNC_LOG         =FUNC_STEP*14,
	FUNC_LOG10       =FUNC_STEP*15,
	FUNC_POW         =FUNC_STEP*16,
	FUNC_SQRT        =FUNC_STEP*17,
	FUNC_CEIL        =FUNC_STEP*18,
	FUNC_FLOOR       =FUNC_STEP*19,
	FUNC_FABS        =FUNC_STEP*20,
	FUNC_MODF        =FUNC_STEP*21,
	FUNC_FMOD        =FUNC_STEP*22,
	FUNC_PSET        =FUNC_STEP*23,
	FUNC_LINE        =FUNC_STEP*24,
	FUNC_BOXFILL     =FUNC_STEP*25,
	FUNC_CIRCLE      =FUNC_STEP*26,
	FUNC_CIRCLEFILL  =FUNC_STEP*27,
	FUNC_GPRINT      =FUNC_STEP*28,
	FUNC_PUTBMP      =FUNC_STEP*29,
	FUNC_PUTBMP2     =FUNC_STEP*30,
	FUNC_GCOLOR      =FUNC_STEP*31,
	FUNC_POINT       =FUNC_STEP*32,
	FUNC_FOPEN       =FUNC_STEP*33,
	FUNC_FOPENST     =FUNC_STEP*34,
	FUNC_FILE        =FUNC_STEP*35,
	FUNC_FCLOSE      =FUNC_STEP*36,
	FUNC_FINPUT      =FUNC_STEP*37,
	FUNC_FPRINTSTR   =FUNC_STEP*38,
	FUNC_FGET        =FUNC_STEP*39,
	FUNC_FPUT        =FUNC_STEP*40,
	FUNC_FSEEK       =FUNC_STEP*41,
	FUNC_FTELL       =FUNC_STEP*42,
	FUNC_FLEN        =FUNC_STEP*43,
	FUNC_FSTRING     =FUNC_STEP*44,
	FUNC_FGETC       =FUNC_STEP*45,
	FUNC_FPUTC       =FUNC_STEP*46,
	FUNC_FREMOVE     =FUNC_STEP*47,
	FUNC_FEOF        =FUNC_STEP*48,
	FUNC_FINIT       =FUNC_STEP*49,
	// MAX 63
};

/* Global vars (see globalvers.c) */
extern int g_intconst;
extern char g_valueisconst;
extern unsigned int g_rnd_seed;
extern unsigned int g_label;
extern int g_sdepth;
extern int g_maxsdepth;
extern enum variable g_lastvar;
extern char* g_source;
extern int g_srcpos;
extern int g_line;
extern int g_fileline;
extern int* g_object;
extern int g_objpos;
extern int* g_objmax;
extern const char* g_err_str[];
extern const unsigned char g_priority[];
extern enum operator g_last_op;
extern int g_end_addr;
extern int g_gp;
extern int g_s6;
extern char RAM[RAMSIZE];
extern unsigned int g_ex_data[EXCEPTION_DATA_SIZE/4];
extern int g_var_mem[ALLOC_BLOCK_NUM];
extern unsigned short g_var_pointer[ALLOC_BLOCK_NUM];
extern unsigned short g_var_size[ALLOC_BLOCK_NUM];
extern char g_temp_area_used;
extern int* g_heap_mem;
extern int g_max_mem;
extern char g_disable_break;
extern unsigned char* g_pcg_font;
extern char g_use_graphic;
extern unsigned short* g_graphic_area;
extern int* g_libparams;
extern int g_long_name_var_num;
extern int g_temp;

/* Prototypes */
int _MIPS32 get_gp(void);
int _MIPS32 get_fp(void);
void _MIPS32 start_program(void* addr, void* memory);
void shift_obj(int* src, int* dst, int len);
char* compile_line(void);
int nextCodeIs(char* str);
int endOfStatement();

char* init_file(char* buff,char* appname);
void close_file();
void read_file(int blocklen);
char* compile_file();

void _MIPS32 err_break(void);
void _MIPS32 err_music(char* str);
void _MIPS32 err_data_not_found(void);
void _MIPS32 err_str_complex(void);
void _MIPS32 err_label_not_found(void);
void _MIPS32 err_no_mem(void);
void _MIPS32 err_div_zero(void);
void _MIPS32 err_unkonwn(void);
void _MIPS32 err_unexp_next(void);
void _MIPS32 err_no_block(void);
void _MIPS32 err_invalid_param(void);
char* resolve_label(int s6);

void set_sound(unsigned long* data);
int musicRemaining(void);
void set_music(char* str);
void init_music(void);

char* statement(void);
char* gosub_statement();
char* graphic_statement(enum functions func);
char* fopen_statement(enum functions func);
char* fget_statement();
char* fput_statement();
char* fputc_statement();
char* fremove_statement();

char* function(void);
char* str_function(void);
char* float_function(void);

void _MIPS32 call_library(void);
void reset_dataread();

void free_temp_str(char* str);
void*  alloc_memory(int size, int var_num) _MIPS32;
void* calloc_memory(int size, int var_num);
void move_to_perm_block(int var_num);
void move_from_perm_block(int var_num);

char* link(void);
char* get_label(void);
void* search_label(unsigned int label);

char* get_string();
char* simple_string(void);

char* get_operator(void);
char* get_floatOperator(void);
char* calculation(enum operator op);
char* calculation_float(enum operator op);
int lib_float(int ia0,int iv0, enum operator a1);

int lib_file(enum functions func, int a0, int a1, int v0);

char* get_dim_value(int i);
char* get_simple_value(void);
char* get_value();
char* get_floatOrValue();
char* get_stringFloatOrValue();

void _MIPS32 blue_screen(void);

char* get_float();

void cmpdata_init();
char* cmpdata_insert(unsigned char type, short data16, int* data, unsigned char num);
void cmpdata_reset();
int* cmpdata_find(unsigned char type);
int* cmpdata_findfirst(unsigned char type);

int check_var_name();
int get_var_number();
int search_var_name(int nameint);
char* register_var_name(int nameint);


/* Error messages */
#define ERR_SYNTAX (char*)(g_err_str[0])
#define ERR_NE_BINARY (char*)(g_err_str[1])
#define ERR_NE_MEMORY (char*)(g_err_str[2])
#define ERR_DIV_0 (char*)(g_err_str[3])
#define ERR_NY_I (char*)(g_err_str[4])
#define ERR_LABEL_NF (char*)(g_err_str[5])
#define ERR_LABEL_LONG (char*)(g_err_str[6])
#define ERR_STR_COMPLEX (char*)(g_err_str[7])
#define ERR_DATA_NF (char*)(g_err_str[8])
#define ERR_UNKNOWN (char*)(g_err_str[9])
#define ERR_MUSIC (char*)(g_err_str[10])
#define ERR_MULTIPLE_LABEL (char*)(g_err_str[11])
#define ERR_BREAK (char*)(g_err_str[12])
#define ERR_UNEXP_NEXT (char*)(g_err_str[13])
#define ERR_NO_BLOCK (char*)(g_err_str[14])
#define ERR_GOSUB_ASH (char*)(g_err_str[15])
#define ERR_INVALID_BREAK (char*)(g_err_str[16])
#define ERR_INVALID_ELSEIF (char*)(g_err_str[17])
#define ERR_INVALID_PARAM (char*)(g_err_str[18])
#define ERR_FILE (char*)(g_err_str[19])
#define ERR_INVALID_VAR_NAME (char*)(g_err_str[20])

/* comple data type numbers */
#define CMPDATA_RESERVED 0
#define CMPDATA_USEVAR   1

/* Macros */

// Skip blanc(s) in source code
#define next_position() while(g_source[g_srcpos]==' ') {g_srcpos++;}

// Check if object area is not full.
#define check_obj_space(x) if (g_objmax<g_object+g_objpos+(x)) return ERR_NE_BINARY

// Returns priority of operator
#define priority(x) (int)g_priority[(int)(x)]

// Insert code for calling library
//02E0F809   jalr        ra,s7
//24070000   addiu       a3,zero,0000
#define call_lib_code(x) \
	check_obj_space(2);\
	g_object[g_objpos++]=0x02E0F809;\
	g_object[g_objpos++]=0x24070000|((x)&0x0000FFFF)

// Division macro for unsigned long
// Valid for 31 bits for all cases and 32 bits for some cases
#define div32(x,y,z) ((((unsigned long long)((unsigned long)(x)))*((unsigned long long)((unsigned long)(y))))>>(z))

// Divide by 10 (valid for 32 bits)
#define div10_32(x) div32(x,0xcccccccd,35)
#define rem10_32(x) ((x)-10*div10_32(x))

// Divide by 36 (valid for 32 bits)
#define div36_32(x) div32(x,0xe38e38e4,37)
#define rem36_32(x) (x-36*div36_32(x))

// Check break key or buttons when executing BASIC code.
// In PS/2 mode, detect ctrl-break.
// In button mode, detect pushing four buttons are pushed simultaneously.
#define check_break() \
	if (g_disable_break==0) {\
		if (inPS2MODE()) {\
			if (ps2keystatus[0x03]) err_break();\
		} else {\
			if ((PORTB&0x4c80)==0) err_break();\
		}\
	}
