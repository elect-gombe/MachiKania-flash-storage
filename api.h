/*
   This file is provided under the LGPL license ver 2.1.
   Written by Katsumi.
   http://hp.vector.co.jp/authors/VA016157/
   kmorimatsu@users.sourceforge.jp
*/

#ifndef BOOL
	typedef enum _BOOL { FALSE = 0, TRUE } BOOL; 
#endif

#include "integer.h"

#ifndef size_t
	#define size_t unsigned int
#endif

// Used for asm("wait")
#define WAIT "wait"

#include "videoout.h"
#include "SDFSIO.h"
#include "ps2keyboard.h"
#include "debug.h"
