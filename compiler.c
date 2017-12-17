/*
   This file is provided under the LGPL license ver 2.1.
   Written by Katsumi.
   http://hp.vector.co.jp/authors/VA016157/
   kmorimatsu@users.sourceforge.jp
*/

#include "compiler.h"


#pragma GCC optimize ("-O1")

void _MIPS32 start_program(void* addr, void* memory){
	static unsigned int stored_sp;
	// Store s0-s7, fp, and ra in stacks
	asm volatile("#":::"s0");
	asm volatile("#":::"s1");
	asm volatile("#":::"s2");
	asm volatile("#":::"s3");
	asm volatile("#":::"s4");
	asm volatile("#":::"s5");
	asm volatile("#":::"s6");
	asm volatile("#":::"s7");
	asm volatile("#":::"30");
	asm volatile("#":::"ra");
	// Store sp in stored_sp
	asm volatile("la $v0,%0"::"i"(&stored_sp));
	asm volatile("sw $sp,0($v0)");
	// Shift sp for safety
	asm volatile("addiu $sp,$sp,-8");
	// Register vector for unexpected NEXT/RETURN
	asm volatile("la $v0,%0"::"i"(&err_unexp_next));
	asm volatile("sw $v0,4($sp)");
	// Store end address in g_end_addr
	asm volatile("la $v0,%0"::"i"(&g_end_addr));
	asm volatile("la $v1,label");
	asm volatile("sw $v1,0($v0)");
	// Set s7 for easy calling call_library()
	asm volatile("la $s7,%0"::"i"(&call_library));
	// Set fp and execute program
	asm volatile("addu $30,$zero,$a1");
	asm volatile("jr $a0");
	// Restore sp from stored_sp
	asm volatile("label:");
	asm volatile("la $v0,%0"::"i"(&stored_sp));
	asm volatile("lw $sp,0($v0)");
	// Restore registers from stack and return
	return;
}
#pragma GCC optimize ("-Os")

int _MIPS32 get_gp(void){
	asm volatile("addu $v0,$gp,$zero");
}

int _MIPS32 get_fp(void){
	asm volatile("addu $v0,$30,$zero");
}


void shift_obj(int* src, int* dst, int len){
	int i;
	if (dst<src) {
		for(i=0;i<len;i++){
			dst[i]=src[i];
		}
	} else if (src<dst) {
		for(i=len-1;0<=i;i--){
			dst[i]=src[i];
		}
	}
}

int strncmp(char* str1, char* str2, int len){
	int i;
	for (i=0;i<len;i++) {
		if (str1[i]>str2[i]) return 1;
		if (str1[i]<str2[i]) return -1;
	}
	return 0;
}

int nextCodeIs(char* str){
	int len;
	next_position();
	for(len=0;str[len];len++);
	if (!strncmp(g_source+g_srcpos,str,len)) {
		if ('A'<=str[len-1] && str[len-1]<='Z') {
			// When the last character of str is alphabet, 
			// the next character in source must be space, enter, or ':'.
			if (0x20<g_source[g_srcpos+len] && g_source[g_srcpos+len]!=':') return 0;
		}
		// String matches in the current position in source.
		g_srcpos+=len;
		return len;
	} else {
		// String didn't match.
		return 0;
	}
}

int endOfStatement(){
	unsigned char b;
	next_position();
	b=g_source[g_srcpos];
	return (b<0x20 || b==':') ? 1:0;
}

char* compile_line(void){
	char b1;
	char* err;
	g_line++;
	g_fileline++;
	// Check if line number exists
	next_position();
	b1=g_source[g_srcpos];
	if (b1<0x20) {
		// The end of line.
		// Don't add $s6-setting command.
		if (g_source[g_srcpos]==0x0D && g_source[g_srcpos+1]==0x0A) g_srcpos++;
		g_srcpos++;
		return 0;
	} else if ('0'<=b1 && b1<='9') {
		// Line number exists
		err=get_label();
		if (err) return err;
		g_line=g_label;
	}
	// Store line number in $s6
	if (!(g_line&0xFFFF0000)) {
		// Line number must be less than 65536.
		// If not, it is invalid number.
		// Check existing line with the same number here.
		if (search_label(g_line)) {
			// Error: duplicate lines
			printstr("Line ");
			printstr(resolve_label(g_line));
			return ERR_MULTIPLE_LABEL;
		}
		check_obj_space(1);
		g_object[g_objpos++]=0x34160000|g_line; //ori         s6,zero,xxxx;
	}
	while(g_source[g_srcpos]!=0x0D && g_source[g_srcpos]!=0x0A){
		err=statement();
		if (err) return err;
		next_position();
		if (g_source[g_srcpos]==':') {
			g_srcpos++;
			next_position();
		}
	}
	if (g_source[g_srcpos]==0x0D && g_source[g_srcpos+1]==0x0A) g_srcpos++;
	g_srcpos++;
	return 0;
}
