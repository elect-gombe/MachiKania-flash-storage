	.file	1 "globalvars.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

	.comm	g_intconst,4,4

	.comm	g_valueisconst,1,1

	.comm	g_rnd_seed,4,4

	.comm	g_sdepth,4,4

	.comm	g_maxsdepth,4,4

	.comm	g_lastvar,4,4

	.comm	g_source,4,4

	.comm	g_srcpos,4,4

	.comm	g_line,4,4

	.comm	g_fileline,4,4

	.comm	g_object,4,4

	.comm	g_objpos,4,4

	.comm	g_objmax,4,4

	.comm	g_end_addr,4,4

	.comm	g_gp,4,4

	.comm	g_s6,4,4
	.globl	RAM
	.section	*.RAM,address(0xa0002800),persist,coherent
	.align	2
	.type	RAM, @object
	.size	RAM, 55232
RAM:
	.space	55232
	.globl	g_ex_data
	.section	*.g_ex_data,address(0xa000ffc0),persist,coherent
	.align	2
	.type	g_ex_data, @object
	.size	g_ex_data, 64
g_ex_data:
	.space	64

	.comm	g_var_mem,952,4

	.comm	g_var_pointer,476,4

	.comm	g_var_size,476,4

	.comm	g_temp_area_used,1,1

	.comm	g_heap_mem,4,4

	.comm	g_max_mem,4,4

	.comm	g_disable_break,1,1

	.comm	g_pcg_font,4,4

	.comm	g_use_graphic,1,1

	.comm	g_graphic_area,4,4

	.comm	g_libparams,4,4

	.comm	g_long_name_var_num,4,4

	.comm	g_temp,4,4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
