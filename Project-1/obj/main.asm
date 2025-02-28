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
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _vsync
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
	C$main.c$10$1_0$126	= .
	.globl	C$main.c$10$1_0$126
;src/main.c:10: set_bkg_data(0, 79u, dungeon_tiles);
	ld	de, #_dungeon_tiles
	push	de
	ld	hl, #0x4f00
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$11$1_0$126	= .
	.globl	C$main.c$11$1_0$126
;src/main.c:11: set_bkg_tiles(0, 0, 32u, 32u, dungeon_mapPLN0);
	ld	de, #_dungeon_mapPLN0
	push	de
	ld	hl, #0x2020
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$14$1_0$126	= .
	.globl	C$main.c$14$1_0$126
;src/main.c:14: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$15$1_0$126	= .
	.globl	C$main.c$15$1_0$126
;src/main.c:15: }
	C$main.c$15$1_0$126	= .
	.globl	C$main.c$15$1_0$126
	XG$init_gfx$0$0	= .
	.globl	XG$init_gfx$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$18$1_0$128	= .
	.globl	C$main.c$18$1_0$128
;src/main.c:18: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
	dec	sp
	C$main.c$20$1_0$128	= .
	.globl	C$main.c$20$1_0$128
;src/main.c:20: init_gfx();
	call	_init_gfx
	C$main.c$22$1_0$128	= .
	.globl	C$main.c$22$1_0$128
;src/main.c:22: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfb
	ldh	(_LCDC_REG + 0), a
	C$main.c$23$1_0$128	= .
	.globl	C$main.c$23$1_0$128
;src/main.c:23: set_sprite_data(0, 1, blob);
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
	C$main.c$26$1_0$128	= .
	.globl	C$main.c$26$1_0$128
;src/main.c:26: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$27$2_0$129	= .
	.globl	C$main.c$27$2_0$129
;src/main.c:27: int x = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), a
	C$main.c$28$2_0$129	= .
	.globl	C$main.c$28$2_0$129
;src/main.c:28: int y = 0;
	ld	bc, #0x0000
	C$main.c$30$1_1$129	= .
	.globl	C$main.c$30$1_1$129
;src/main.c:30: while(1) {
00106$:
;src/main.c:33: move_sprite(0, x, y);
	ld	d, c
	ldhl	sp,	#0
	ld	e, (hl)
;../Tools/gbdk//include/gb/gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;../Tools/gbdk//include/gb/gb.h:1962: itm->y=y, itm->x=x;
	ld	a, d
	ld	(hl+), a
	ld	(hl), e
	C$main.c$36$2_1$130	= .
	.globl	C$main.c$36$2_1$130
;src/main.c:36: if (x == 168){
	ldhl	sp,	#0
	ld	a, (hl+)
	sub	a, #0xa8
	C$main.c$37$3_1$131	= .
	.globl	C$main.c$37$3_1$131
;src/main.c:37: x = 0;
	or	a,(hl)
	jr	NZ, 00102$
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), a
	C$main.c$38$3_1$131	= .
	.globl	C$main.c$38$3_1$131
;src/main.c:38: y++;
	inc	bc
00102$:
	C$main.c$40$2_1$130	= .
	.globl	C$main.c$40$2_1$130
;src/main.c:40: if (y == 160){
	ld	a, c
	sub	a, #0xa0
	or	a, b
	jr	NZ, 00104$
	C$main.c$41$3_1$132	= .
	.globl	C$main.c$41$3_1$132
;src/main.c:41: y=0;
	ld	bc, #0x0000
00104$:
	C$main.c$43$2_1$130	= .
	.globl	C$main.c$43$2_1$130
;src/main.c:43: x++;
	ldhl	sp,	#0
	inc	(hl)
	jr	NZ, 00138$
	inc	hl
	inc	(hl)
00138$:
	C$main.c$47$2_1$130	= .
	.globl	C$main.c$47$2_1$130
;src/main.c:47: vsync();
	call	_vsync
	jr	00106$
	C$main.c$49$1_1$128	= .
	.globl	C$main.c$49$1_1$128
;src/main.c:49: }
	inc	sp
	inc	sp
	C$main.c$49$1_1$128	= .
	.globl	C$main.c$49$1_1$128
	XG$main$0$0	= .
	.globl	XG$main$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
