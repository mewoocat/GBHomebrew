;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _init_gfx
	.globl _set_sprite_data
	.globl _vsync
	.globl _joypad
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$init_gfx$0$0	= .
	.globl	G$init_gfx$0$0
	C$main.c$8$0_0$126	= .
	.globl	C$main.c$8$0_0$126
;src/main.c:8: void init_gfx(void) {
;	---------------------------------
; Function init_gfx
; ---------------------------------
_init_gfx::
	C$main.c$17$1_0$126	= .
	.globl	C$main.c$17$1_0$126
;src/main.c:17: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$18$1_0$126	= .
	.globl	C$main.c$18$1_0$126
;src/main.c:18: }
	C$main.c$18$1_0$126	= .
	.globl	C$main.c$18$1_0$126
	XG$init_gfx$0$0	= .
	.globl	XG$init_gfx$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$21$1_0$128	= .
	.globl	C$main.c$21$1_0$128
;src/main.c:21: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-5
	C$main.c$23$1_0$128	= .
	.globl	C$main.c$23$1_0$128
;src/main.c:23: init_gfx();
	call	_init_gfx
	C$main.c$25$1_0$128	= .
	.globl	C$main.c$25$1_0$128
;src/main.c:25: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfb
	ldh	(_LCDC_REG + 0), a
	C$main.c$26$1_0$128	= .
	.globl	C$main.c$26$1_0$128
;src/main.c:26: set_sprite_data(0, 1, blob);
	ld	de, #_blob
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_data
	add	sp, #4
;../Tools/gbdk//include/gb/gb.h:1875: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
;../Tools/gbdk//include/gb/gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;../Tools/gbdk//include/gb/gb.h:1962: itm->y=y, itm->x=x;
	ld	a, #0x64
	ld	(hl+), a
	ld	(hl), #0x50
	C$main.c$29$1_0$128	= .
	.globl	C$main.c$29$1_0$128
;src/main.c:29: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$32$2_0$129	= .
	.globl	C$main.c$32$2_0$129
;src/main.c:32: int x = 16;
	ldhl	sp,	#1
	ld	a, #0x10
	ld	(hl+), a
	xor	a, a
	C$main.c$33$2_0$129	= .
	.globl	C$main.c$33$2_0$129
;src/main.c:33: int y = 16;
	ld	(hl+), a
	ld	a, #0x10
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$main.c$37$1_1$129	= .
	.globl	C$main.c$37$1_1$129
;src/main.c:37: while(1) {
00110$:
	C$main.c$39$2_1$130	= .
	.globl	C$main.c$39$2_1$130
;src/main.c:39: uint8_t inputState = joypad();
	call	_joypad
	ldhl	sp,#0
	ld	(hl), a
	ld	c, (hl)
	C$main.c$40$2_1$130	= .
	.globl	C$main.c$40$2_1$130
;src/main.c:40: if (inputState & J_UP) {
	bit	2, c
	jr	Z, 00102$
	C$main.c$41$3_1$131	= .
	.globl	C$main.c$41$3_1$131
;src/main.c:41: y = y - moveAmount;
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
00102$:
	C$main.c$43$2_1$130	= .
	.globl	C$main.c$43$2_1$130
;src/main.c:43: if (inputState & J_DOWN) {
	bit	3, c
	jr	Z, 00104$
	C$main.c$44$3_1$132	= .
	.globl	C$main.c$44$3_1$132
;src/main.c:44: y = y + moveAmount;
	ldhl	sp,	#3
	inc	(hl)
	jr	NZ, 00154$
	inc	hl
	inc	(hl)
00154$:
00104$:
	C$main.c$46$2_1$130	= .
	.globl	C$main.c$46$2_1$130
;src/main.c:46: if (inputState & J_LEFT) {
	bit	1, c
	jr	Z, 00106$
	C$main.c$47$3_1$133	= .
	.globl	C$main.c$47$3_1$133
;src/main.c:47: x = x - moveAmount;
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
00106$:
	C$main.c$49$2_1$130	= .
	.globl	C$main.c$49$2_1$130
;src/main.c:49: if (inputState & J_RIGHT) {
	bit	0, c
	jr	Z, 00108$
	C$main.c$50$3_1$134	= .
	.globl	C$main.c$50$3_1$134
;src/main.c:50: x = x + moveAmount;
	ldhl	sp,	#1
	inc	(hl)
	jr	NZ, 00157$
	inc	hl
	inc	(hl)
00157$:
00108$:
;src/main.c:53: move_sprite(0, x, y);
	ldhl	sp,	#3
	ld	a, (hl-)
	dec	hl
	ld	c, a
	ld	a, (hl-)
	ld	(hl), a
;../Tools/gbdk//include/gb/gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
;../Tools/gbdk//include/gb/gb.h:1962: itm->y=y, itm->x=x;
	ld	hl, #_shadow_OAM
	ld	(hl), c
	ld	de, #(_shadow_OAM + 1)
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$main.c$69$2_1$130	= .
	.globl	C$main.c$69$2_1$130
;src/main.c:69: vsync();
	call	_vsync
	jr	00110$
	C$main.c$71$1_1$128	= .
	.globl	C$main.c$71$1_1$128
;src/main.c:71: }
	add	sp, #5
	C$main.c$71$1_1$128	= .
	.globl	C$main.c$71$1_1$128
	XG$main$0$0	= .
	.globl	XG$main$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
