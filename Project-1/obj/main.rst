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
                                     14 	.globl _vsync
                                     15 	.globl _joypad
                                     16 ;--------------------------------------------------------
                                     17 ; special function registers
                                     18 ;--------------------------------------------------------
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area _DATA
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area _INITIALIZED
                                     27 ;--------------------------------------------------------
                                     28 ; absolute external ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area _DABS (ABS)
                                     31 ;--------------------------------------------------------
                                     32 ; global & static initialisations
                                     33 ;--------------------------------------------------------
                                     34 	.area _HOME
                                     35 	.area _GSINIT
                                     36 	.area _GSFINAL
                                     37 	.area _GSINIT
                                     38 ;--------------------------------------------------------
                                     39 ; Home
                                     40 ;--------------------------------------------------------
                                     41 	.area _HOME
                                     42 	.area _HOME
                                     43 ;--------------------------------------------------------
                                     44 ; code
                                     45 ;--------------------------------------------------------
                                     46 	.area _CODE
                         00000000    47 	G$init_gfx$0$0	= .
                                     48 	.globl	G$init_gfx$0$0
                         00000000    49 	C$main.c$8$0_0$126	= .
                                     50 	.globl	C$main.c$8$0_0$126
                                     51 ;src/main.c:8: void init_gfx(void) {
                                     52 ;	---------------------------------
                                     53 ; Function init_gfx
                                     54 ; ---------------------------------
    00000200                         55 _init_gfx::
                         00000000    56 	C$main.c$17$1_0$126	= .
                                     57 	.globl	C$main.c$17$1_0$126
                                     58 ;src/main.c:17: SHOW_BKG;
    00000200 F0 40            [12]   59 	ldh	a, (_LCDC_REG + 0)
    00000202 F6 01            [ 8]   60 	or	a, #0x01
    00000204 E0 40            [12]   61 	ldh	(_LCDC_REG + 0), a
                         00000006    62 	C$main.c$18$1_0$126	= .
                                     63 	.globl	C$main.c$18$1_0$126
                                     64 ;src/main.c:18: }
                         00000006    65 	C$main.c$18$1_0$126	= .
                                     66 	.globl	C$main.c$18$1_0$126
                         00000006    67 	XG$init_gfx$0$0	= .
                                     68 	.globl	XG$init_gfx$0$0
    00000206 C9               [16]   69 	ret
                         00000007    70 	G$main$0$0	= .
                                     71 	.globl	G$main$0$0
                         00000007    72 	C$main.c$21$1_0$128	= .
                                     73 	.globl	C$main.c$21$1_0$128
                                     74 ;src/main.c:21: void main(void)
                                     75 ;	---------------------------------
                                     76 ; Function main
                                     77 ; ---------------------------------
    00000207                         78 _main::
    00000207 E8 FB            [16]   79 	add	sp, #-5
                         00000009    80 	C$main.c$23$1_0$128	= .
                                     81 	.globl	C$main.c$23$1_0$128
                                     82 ;src/main.c:23: init_gfx();
    00000209 CD 00 02         [24]   83 	call	_init_gfx
                         0000000C    84 	C$main.c$25$1_0$128	= .
                                     85 	.globl	C$main.c$25$1_0$128
                                     86 ;src/main.c:25: SPRITES_8x8;
    0000020C F0 40            [12]   87 	ldh	a, (_LCDC_REG + 0)
    0000020E E6 FB            [ 8]   88 	and	a, #0xfb
    00000210 E0 40            [12]   89 	ldh	(_LCDC_REG + 0), a
                         00000012    90 	C$main.c$26$1_0$128	= .
                                     91 	.globl	C$main.c$26$1_0$128
                                     92 ;src/main.c:26: set_sprite_data(0, 1, blob);
    00000212 11 90 02         [12]   93 	ld	de, #_blob
    00000215 D5               [16]   94 	push	de
    00000216 AF               [ 4]   95 	xor	a, a
    00000217 3C               [ 4]   96 	inc	a
    00000218 F5               [16]   97 	push	af
    00000219 CD EB 0B         [24]   98 	call	_set_sprite_data
    0000021C E8 04            [16]   99 	add	sp, #4
                                    100 ;../Tools/gbdk//include/gb/gb.h:1875: shadow_OAM[nb].tile=tile;
    0000021E 21 02 C0         [12]  101 	ld	hl, #(_shadow_OAM + 2)
    00000221 36 00            [12]  102 	ld	(hl), #0x00
                                    103 ;../Tools/gbdk//include/gb/gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
    00000223 21 00 C0         [12]  104 	ld	hl, #_shadow_OAM
                                    105 ;../Tools/gbdk//include/gb/gb.h:1962: itm->y=y, itm->x=x;
    00000226 3E 64            [ 8]  106 	ld	a, #0x64
    00000228 22               [ 8]  107 	ld	(hl+), a
    00000229 36 50            [12]  108 	ld	(hl), #0x50
                         0000002B   109 	C$main.c$29$1_0$128	= .
                                    110 	.globl	C$main.c$29$1_0$128
                                    111 ;src/main.c:29: SHOW_SPRITES;
    0000022B F0 40            [12]  112 	ldh	a, (_LCDC_REG + 0)
    0000022D F6 02            [ 8]  113 	or	a, #0x02
    0000022F E0 40            [12]  114 	ldh	(_LCDC_REG + 0), a
                         00000031   115 	C$main.c$32$2_0$129	= .
                                    116 	.globl	C$main.c$32$2_0$129
                                    117 ;src/main.c:32: int x = 16;
    00000231 F8 01            [12]  118 	ldhl	sp,	#1
    00000233 3E 10            [ 8]  119 	ld	a, #0x10
    00000235 22               [ 8]  120 	ld	(hl+), a
    00000236 AF               [ 4]  121 	xor	a, a
                         00000037   122 	C$main.c$33$2_0$129	= .
                                    123 	.globl	C$main.c$33$2_0$129
                                    124 ;src/main.c:33: int y = 16;
    00000237 22               [ 8]  125 	ld	(hl+), a
    00000238 3E 10            [ 8]  126 	ld	a, #0x10
    0000023A 22               [ 8]  127 	ld	(hl+), a
    0000023B AF               [ 4]  128 	xor	a, a
    0000023C 77               [ 8]  129 	ld	(hl), a
                         0000003D   130 	C$main.c$37$1_1$129	= .
                                    131 	.globl	C$main.c$37$1_1$129
                                    132 ;src/main.c:37: while(1) {
    0000023D                        133 00110$:
                         0000003D   134 	C$main.c$39$2_1$130	= .
                                    135 	.globl	C$main.c$39$2_1$130
                                    136 ;src/main.c:39: uint8_t inputState = joypad();
    0000023D CD 2B 0C         [24]  137 	call	_joypad
    00000240 F8 00            [12]  138 	ldhl	sp,#0
    00000242 77               [ 8]  139 	ld	(hl), a
    00000243 4E               [ 8]  140 	ld	c, (hl)
                         00000044   141 	C$main.c$40$2_1$130	= .
                                    142 	.globl	C$main.c$40$2_1$130
                                    143 ;src/main.c:40: if (inputState & J_UP) {
    00000244 CB 51            [ 8]  144 	bit	2, c
    00000246 28 0A            [12]  145 	jr	Z, 00102$
                         00000048   146 	C$main.c$41$3_1$131	= .
                                    147 	.globl	C$main.c$41$3_1$131
                                    148 ;src/main.c:41: y = y - moveAmount;
    00000248 F8 03            [12]  149 	ldhl	sp,#3
    0000024A 2A               [ 8]  150 	ld	a, (hl+)
    0000024B 5F               [ 4]  151 	ld	e, a
    0000024C 3A               [ 8]  152 	ld	a, (hl-)
    0000024D 57               [ 4]  153 	ld	d, a
    0000024E 1B               [ 8]  154 	dec	de
    0000024F 7B               [ 4]  155 	ld	a, e
    00000250 22               [ 8]  156 	ld	(hl+), a
    00000251 72               [ 8]  157 	ld	(hl), d
    00000252                        158 00102$:
                         00000052   159 	C$main.c$43$2_1$130	= .
                                    160 	.globl	C$main.c$43$2_1$130
                                    161 ;src/main.c:43: if (inputState & J_DOWN) {
    00000252 CB 59            [ 8]  162 	bit	3, c
    00000254 28 07            [12]  163 	jr	Z, 00104$
                         00000056   164 	C$main.c$44$3_1$132	= .
                                    165 	.globl	C$main.c$44$3_1$132
                                    166 ;src/main.c:44: y = y + moveAmount;
    00000256 F8 03            [12]  167 	ldhl	sp,	#3
    00000258 34               [12]  168 	inc	(hl)
    00000259 20 02            [12]  169 	jr	NZ, 00154$
    0000025B 23               [ 8]  170 	inc	hl
    0000025C 34               [12]  171 	inc	(hl)
    0000025D                        172 00154$:
    0000025D                        173 00104$:
                         0000005D   174 	C$main.c$46$2_1$130	= .
                                    175 	.globl	C$main.c$46$2_1$130
                                    176 ;src/main.c:46: if (inputState & J_LEFT) {
    0000025D CB 49            [ 8]  177 	bit	1, c
    0000025F 28 0A            [12]  178 	jr	Z, 00106$
                         00000061   179 	C$main.c$47$3_1$133	= .
                                    180 	.globl	C$main.c$47$3_1$133
                                    181 ;src/main.c:47: x = x - moveAmount;
    00000261 F8 01            [12]  182 	ldhl	sp,#1
    00000263 2A               [ 8]  183 	ld	a, (hl+)
    00000264 5F               [ 4]  184 	ld	e, a
    00000265 3A               [ 8]  185 	ld	a, (hl-)
    00000266 57               [ 4]  186 	ld	d, a
    00000267 1B               [ 8]  187 	dec	de
    00000268 7B               [ 4]  188 	ld	a, e
    00000269 22               [ 8]  189 	ld	(hl+), a
    0000026A 72               [ 8]  190 	ld	(hl), d
    0000026B                        191 00106$:
                         0000006B   192 	C$main.c$49$2_1$130	= .
                                    193 	.globl	C$main.c$49$2_1$130
                                    194 ;src/main.c:49: if (inputState & J_RIGHT) {
    0000026B CB 41            [ 8]  195 	bit	0, c
    0000026D 28 07            [12]  196 	jr	Z, 00108$
                         0000006F   197 	C$main.c$50$3_1$134	= .
                                    198 	.globl	C$main.c$50$3_1$134
                                    199 ;src/main.c:50: x = x + moveAmount;
    0000026F F8 01            [12]  200 	ldhl	sp,	#1
    00000271 34               [12]  201 	inc	(hl)
    00000272 20 02            [12]  202 	jr	NZ, 00157$
    00000274 23               [ 8]  203 	inc	hl
    00000275 34               [12]  204 	inc	(hl)
    00000276                        205 00157$:
    00000276                        206 00108$:
                                    207 ;src/main.c:53: move_sprite(0, x, y);
    00000276 F8 03            [12]  208 	ldhl	sp,	#3
    00000278 3A               [ 8]  209 	ld	a, (hl-)
    00000279 2B               [ 8]  210 	dec	hl
    0000027A 4F               [ 4]  211 	ld	c, a
    0000027B 3A               [ 8]  212 	ld	a, (hl-)
    0000027C 77               [ 8]  213 	ld	(hl), a
                                    214 ;../Tools/gbdk//include/gb/gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
                                    215 ;../Tools/gbdk//include/gb/gb.h:1962: itm->y=y, itm->x=x;
    0000027D 21 00 C0         [12]  216 	ld	hl, #_shadow_OAM
    00000280 71               [ 8]  217 	ld	(hl), c
    00000281 11 01 C0         [12]  218 	ld	de, #(_shadow_OAM + 1)
    00000284 F8 00            [12]  219 	ldhl	sp,	#0
    00000286 7E               [ 8]  220 	ld	a, (hl)
    00000287 12               [ 8]  221 	ld	(de), a
                         00000088   222 	C$main.c$69$2_1$130	= .
                                    223 	.globl	C$main.c$69$2_1$130
                                    224 ;src/main.c:69: vsync();
    00000288 CD BD 01         [24]  225 	call	_vsync
    0000028B 18 B0            [12]  226 	jr	00110$
                         0000008D   227 	C$main.c$71$1_1$128	= .
                                    228 	.globl	C$main.c$71$1_1$128
                                    229 ;src/main.c:71: }
    0000028D E8 05            [16]  230 	add	sp, #5
                         0000008F   231 	C$main.c$71$1_1$128	= .
                                    232 	.globl	C$main.c$71$1_1$128
                         0000008F   233 	XG$main$0$0	= .
                                    234 	.globl	XG$main$0$0
    0000028F C9               [16]  235 	ret
                                    236 	.area _CODE
                                    237 	.area _INITIALIZER
                                    238 	.area _CABS (ABS)
