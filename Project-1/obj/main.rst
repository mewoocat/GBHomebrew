                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _init_gfx
                                     13 	.globl _set_sprite_data
                                     14 	.globl _set_bkg_tiles
                                     15 	.globl _set_bkg_data
                                     16 	.globl _vsync
                                     17 ;--------------------------------------------------------
                                     18 ; special function registers
                                     19 ;--------------------------------------------------------
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area _DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area _INITIALIZED
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area _DABS (ABS)
                                     32 ;--------------------------------------------------------
                                     33 ; global & static initialisations
                                     34 ;--------------------------------------------------------
                                     35 	.area _HOME
                                     36 	.area _GSINIT
                                     37 	.area _GSFINAL
                                     38 	.area _GSINIT
                                     39 ;--------------------------------------------------------
                                     40 ; Home
                                     41 ;--------------------------------------------------------
                                     42 	.area _HOME
                                     43 	.area _HOME
                                     44 ;--------------------------------------------------------
                                     45 ; code
                                     46 ;--------------------------------------------------------
                                     47 	.area _CODE
                         00000000    48 	G$init_gfx$0$0	= .
                                     49 	.globl	G$init_gfx$0$0
                         00000000    50 	C$main.c$8$0_0$126	= .
                                     51 	.globl	C$main.c$8$0_0$126
                                     52 ;src/main.c:8: void init_gfx(void) {
                                     53 ;	---------------------------------
                                     54 ; Function init_gfx
                                     55 ; ---------------------------------
    00000200                         56 _init_gfx::
                         00000000    57 	C$main.c$10$1_0$126	= .
                                     58 	.globl	C$main.c$10$1_0$126
                                     59 ;src/main.c:10: set_bkg_data(0, 79u, dungeon_tiles);
    00000200 11 95 06         [12]   60 	ld	de, #_dungeon_tiles
    00000203 D5               [16]   61 	push	de
    00000204 21 00 4F         [12]   62 	ld	hl, #0x4f00
    00000207 E5               [16]   63 	push	hl
    00000208 CD C8 0B         [24]   64 	call	_set_bkg_data
    0000020B E8 04            [16]   65 	add	sp, #4
                         0000000D    66 	C$main.c$11$1_0$126	= .
                                     67 	.globl	C$main.c$11$1_0$126
                                     68 ;src/main.c:11: set_bkg_tiles(0, 0, 32u, 32u, dungeon_mapPLN0);
    0000020D 11 95 02         [12]   69 	ld	de, #_dungeon_mapPLN0
    00000210 D5               [16]   70 	push	de
    00000211 21 20 20         [12]   71 	ld	hl, #0x2020
    00000214 E5               [16]   72 	push	hl
    00000215 AF               [ 4]   73 	xor	a, a
    00000216 0F               [ 4]   74 	rrca
    00000217 F5               [16]   75 	push	af
    00000218 CD 00 0C         [24]   76 	call	_set_bkg_tiles
    0000021B E8 06            [16]   77 	add	sp, #6
                         0000001D    78 	C$main.c$14$1_0$126	= .
                                     79 	.globl	C$main.c$14$1_0$126
                                     80 ;src/main.c:14: SHOW_BKG;
    0000021D F0 40            [12]   81 	ldh	a, (_LCDC_REG + 0)
    0000021F F6 01            [ 8]   82 	or	a, #0x01
    00000221 E0 40            [12]   83 	ldh	(_LCDC_REG + 0), a
                         00000023    84 	C$main.c$15$1_0$126	= .
                                     85 	.globl	C$main.c$15$1_0$126
                                     86 ;src/main.c:15: }
                         00000023    87 	C$main.c$15$1_0$126	= .
                                     88 	.globl	C$main.c$15$1_0$126
                         00000023    89 	XG$init_gfx$0$0	= .
                                     90 	.globl	XG$init_gfx$0$0
    00000223 C9               [16]   91 	ret
                         00000024    92 	G$main$0$0	= .
                                     93 	.globl	G$main$0$0
                         00000024    94 	C$main.c$18$1_0$128	= .
                                     95 	.globl	C$main.c$18$1_0$128
                                     96 ;src/main.c:18: void main(void)
                                     97 ;	---------------------------------
                                     98 ; Function main
                                     99 ; ---------------------------------
    00000224                        100 _main::
    00000224 3B               [ 8]  101 	dec	sp
    00000225 3B               [ 8]  102 	dec	sp
                         00000026   103 	C$main.c$20$1_0$128	= .
                                    104 	.globl	C$main.c$20$1_0$128
                                    105 ;src/main.c:20: init_gfx();
    00000226 CD 00 02         [24]  106 	call	_init_gfx
                         00000029   107 	C$main.c$22$1_0$128	= .
                                    108 	.globl	C$main.c$22$1_0$128
                                    109 ;src/main.c:22: SPRITES_8x8;
    00000229 F0 40            [12]  110 	ldh	a, (_LCDC_REG + 0)
    0000022B E6 FB            [ 8]  111 	and	a, #0xfb
    0000022D E0 40            [12]  112 	ldh	(_LCDC_REG + 0), a
                         0000002F   113 	C$main.c$23$1_0$128	= .
                                    114 	.globl	C$main.c$23$1_0$128
                                    115 ;src/main.c:23: set_sprite_data(0, 1, blob);
    0000022F 11 85 02         [12]  116 	ld	de, #_blob
    00000232 D5               [16]  117 	push	de
    00000233 AF               [ 4]  118 	xor	a, a
    00000234 3C               [ 4]  119 	inc	a
    00000235 F5               [16]  120 	push	af
    00000236 CD D0 0B         [24]  121 	call	_set_sprite_data
    00000239 E8 04            [16]  122 	add	sp, #4
                                    123 ;../Tools/gbdk//include/gb/gb.h:1875: shadow_OAM[nb].tile=tile;
    0000023B 21 02 C0         [12]  124 	ld	hl, #(_shadow_OAM + 2)
    0000023E 36 00            [12]  125 	ld	(hl), #0x00
                                    126 ;../Tools/gbdk//include/gb/gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
    00000240 21 00 C0         [12]  127 	ld	hl, #_shadow_OAM
                                    128 ;../Tools/gbdk//include/gb/gb.h:1962: itm->y=y, itm->x=x;
    00000243 3E 64            [ 8]  129 	ld	a, #0x64
    00000245 22               [ 8]  130 	ld	(hl+), a
    00000246 36 50            [12]  131 	ld	(hl), #0x50
                         00000048   132 	C$main.c$26$1_0$128	= .
                                    133 	.globl	C$main.c$26$1_0$128
                                    134 ;src/main.c:26: SHOW_SPRITES;
    00000248 F0 40            [12]  135 	ldh	a, (_LCDC_REG + 0)
    0000024A F6 02            [ 8]  136 	or	a, #0x02
    0000024C E0 40            [12]  137 	ldh	(_LCDC_REG + 0), a
                         0000004E   138 	C$main.c$27$2_0$129	= .
                                    139 	.globl	C$main.c$27$2_0$129
                                    140 ;src/main.c:27: int x = 0;
    0000024E AF               [ 4]  141 	xor	a, a
    0000024F F8 00            [12]  142 	ldhl	sp,	#0
    00000251 22               [ 8]  143 	ld	(hl+), a
    00000252 77               [ 8]  144 	ld	(hl), a
                         00000053   145 	C$main.c$28$2_0$129	= .
                                    146 	.globl	C$main.c$28$2_0$129
                                    147 ;src/main.c:28: int y = 0;
    00000253 01 00 00         [12]  148 	ld	bc, #0x0000
                         00000056   149 	C$main.c$30$1_1$129	= .
                                    150 	.globl	C$main.c$30$1_1$129
                                    151 ;src/main.c:30: while(1) {
    00000256                        152 00106$:
                                    153 ;src/main.c:33: move_sprite(0, x, y);
    00000256 51               [ 4]  154 	ld	d, c
    00000257 F8 00            [12]  155 	ldhl	sp,	#0
    00000259 5E               [ 8]  156 	ld	e, (hl)
                                    157 ;../Tools/gbdk//include/gb/gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
    0000025A 21 00 C0         [12]  158 	ld	hl, #_shadow_OAM
                                    159 ;../Tools/gbdk//include/gb/gb.h:1962: itm->y=y, itm->x=x;
    0000025D 7A               [ 4]  160 	ld	a, d
    0000025E 22               [ 8]  161 	ld	(hl+), a
    0000025F 73               [ 8]  162 	ld	(hl), e
                         00000060   163 	C$main.c$36$2_1$130	= .
                                    164 	.globl	C$main.c$36$2_1$130
                                    165 ;src/main.c:36: if (x == 168){
    00000260 F8 00            [12]  166 	ldhl	sp,	#0
    00000262 2A               [ 8]  167 	ld	a, (hl+)
    00000263 D6 A8            [ 8]  168 	sub	a, #0xa8
                         00000065   169 	C$main.c$37$3_1$131	= .
                                    170 	.globl	C$main.c$37$3_1$131
                                    171 ;src/main.c:37: x = 0;
    00000265 B6               [ 8]  172 	or	a,(hl)
    00000266 20 05            [12]  173 	jr	NZ, 00102$
    00000268 F8 00            [12]  174 	ldhl	sp,	#0
    0000026A 22               [ 8]  175 	ld	(hl+), a
    0000026B 77               [ 8]  176 	ld	(hl), a
                         0000006C   177 	C$main.c$38$3_1$131	= .
                                    178 	.globl	C$main.c$38$3_1$131
                                    179 ;src/main.c:38: y++;
    0000026C 03               [ 8]  180 	inc	bc
    0000026D                        181 00102$:
                         0000006D   182 	C$main.c$40$2_1$130	= .
                                    183 	.globl	C$main.c$40$2_1$130
                                    184 ;src/main.c:40: if (y == 160){
    0000026D 79               [ 4]  185 	ld	a, c
    0000026E D6 A0            [ 8]  186 	sub	a, #0xa0
    00000270 B0               [ 4]  187 	or	a, b
    00000271 20 03            [12]  188 	jr	NZ, 00104$
                         00000073   189 	C$main.c$41$3_1$132	= .
                                    190 	.globl	C$main.c$41$3_1$132
                                    191 ;src/main.c:41: y=0;
    00000273 01 00 00         [12]  192 	ld	bc, #0x0000
    00000276                        193 00104$:
                         00000076   194 	C$main.c$43$2_1$130	= .
                                    195 	.globl	C$main.c$43$2_1$130
                                    196 ;src/main.c:43: x++;
    00000276 F8 00            [12]  197 	ldhl	sp,	#0
    00000278 34               [12]  198 	inc	(hl)
    00000279 20 02            [12]  199 	jr	NZ, 00138$
    0000027B 23               [ 8]  200 	inc	hl
    0000027C 34               [12]  201 	inc	(hl)
    0000027D                        202 00138$:
                         0000007D   203 	C$main.c$47$2_1$130	= .
                                    204 	.globl	C$main.c$47$2_1$130
                                    205 ;src/main.c:47: vsync();
    0000027D CD BD 01         [24]  206 	call	_vsync
    00000280 18 D4            [12]  207 	jr	00106$
                         00000082   208 	C$main.c$49$1_1$128	= .
                                    209 	.globl	C$main.c$49$1_1$128
                                    210 ;src/main.c:49: }
    00000282 33               [ 8]  211 	inc	sp
    00000283 33               [ 8]  212 	inc	sp
                         00000084   213 	C$main.c$49$1_1$128	= .
                                    214 	.globl	C$main.c$49$1_1$128
                         00000084   215 	XG$main$0$0	= .
                                    216 	.globl	XG$main$0$0
    00000284 C9               [16]  217 	ret
                                    218 	.area _CODE
                                    219 	.area _INITIALIZER
                                    220 	.area _CABS (ABS)
