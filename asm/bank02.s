.rombank $02

.base $7f0000
    .db $00,$00,$00,$00,$00,$00,$00,$00,$f0,$ab,$ef,$f0,$ab,$ef,$01,$ab
    .db $ef,$00,$0f,$ab,$ef,$e0,$ab,$ef,$e0,$ab,$ef,$01,$ab,$ef,$00,$0f
    .db $ab,$ef,$e0,$ab,$ef,$08

loc_7f0026:
.cpu
.a16
.i16
    plb
    sbc $efabe0
    ora ($ab,x)
    sbc $000000
    .db $00,$00,$0f,$2f,$00,$60,$0c,$f4,$60,$10,$f4,$00,$0f,$2f,$00,$60
    .db $0c,$f4,$08,$2f,$00,$60,$10,$f4,$00,$0f,$2f,$00,$60,$0a,$f4,$60
    .db $0e,$f4,$00,$0f,$2f,$00,$60,$0a,$f4,$08,$2f,$00,$60,$0e,$f4,$00
    .db $78,$0a,$f4,$78,$0a,$f4,$00,$2b,$2f,$00,$70,$0e,$f4,$50,$0e,$f4
    .db $00,$73,$e0,$00,$01,$f0,$00,$00,$0c,$80,$5f,$80,$2d,$80,$32,$80
    .db $7f,$80,$00,$2f,$80,$7f,$0f,$02,$0f,$78,$80,$00,$0f,$80,$46,$0f
    .db $7f,$0f,$03,$0f,$64,$80,$00

sub_7f0098:
.a8
.i8
    ldx $1947
    bne loc_7f009f
    ldx $00

loc_7f009f:
    jmp (tbl_7f00a2,x)

tbl_7f00a2:
    .db $d3,$0d,$77,$0d,$58,$0c,$c8,$0c,$1c,$0d,$74,$0b,$38,$0c,$8f,$07
    .db $8f,$07,$8f,$07,$8f,$07,$0f,$06,$df,$01,$1c,$10,$38,$10,$94,$10
    .db $3a,$06,$93,$06,$f8,$06,$9d,$01,$75,$07,$aa,$05,$c9,$01,$13,$0e
    .db $49,$02,$ea,$00,$0c,$01,$39,$01,$5e,$01

loc_7f00dc:
.i16
    sep #$30
.i8
    ldx $18e9
    jmp (tbl_7f00e4,x)

tbl_7f00e4:
    .db $e8,$00,$e9,$00

loc_7f00e8:
    rtl

loc_7f00e9:
    rtl

loc_7f00ea:
    rep #$10
.i16
    dec $1291

loc_7f00ef:
    lda HVBJOY
    bit #$40
    bne loc_7f00ef

loc_7f00f6:
    lda HVBJOY
    bit #$40
    beq loc_7f00f6
    stz INIDISP
    lda #$34
    sta $1947
    ldx #$00ac
    stx VTIMEL
    rtl

loc_7f010c:
.i8
    rep #$10
.i16
    dec $1291

loc_7f0111:
    lda HVBJOY
    bit #$40
    bne loc_7f0111

loc_7f0118:
    lda HVBJOY
    bit #$40
    beq loc_7f0118
    lda #$02
    sta TM
    lda #$01
    sta $7ed758
    sta INIDISP
    lda #$38
    sta $1947
    ldx #$00ae
    stx VTIMEL
    rtl

loc_7f0139:
.i8
    rep #$10
.i16
    dec $1291

loc_7f013e:
    lda HVBJOY
    bit #$40
    bne loc_7f013e

loc_7f0145:
    lda HVBJOY
    bit #$40
    beq loc_7f0145
    stz INIDISP
    lda #$13
    sta TM
    stz $1947
    ldx #$00d0
    stx VTIMEL
    rtl

loc_7f015e:
.i8
    rep #$10
.i16
    dec $1291

loc_7f0163:
    lda HVBJOY
    bit #$40
    bne loc_7f0163

loc_7f016a:
    lda HVBJOY
    bit #$40
    beq loc_7f016a
    lda $7ed758
    inc a
    inc a
    sta $7ed758
    sta INIDISP
    cmp #$0f
    beq loc_7f0191
    rep #$20
.a16
    and #$00ff
    inc a
    inc a
    adc #$00ac
    tax
    stx VTIMEL
    rtl

loc_7f0191:
.a8
    lda #$36
    sta $1947
    ldx #$00ce
    stx VTIMEL
    rtl

loc_7f019d:
.i8
    rep #$10
.i16
    dec $1291
    lda $1aa7
    bit #$01
    bne loc_7f01b3
    stz $1947
    ldx #$00d0
    stx VTIMEL
    rtl

loc_7f01b3:
    lda $1aa7
    bit #$40
    beq loc_7f01c6
    lda #$32
    sta $1947
    ldx #$00a5
    stx VTIMEL
    rtl

loc_7f01c6:
    brl loc_7f6ade

loc_7f01c9:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f01c9

loc_7f01d0:
    lda HVBJOY
    bit #$40
    beq loc_7f01d0
    lda #$8f
    sta INIDISP
    stz $00
    rtl

loc_7f01df:
    sep #$20
    rep #$10

loc_7f01e3:
.i16
    lda HVBJOY
    bit #$40
    bne loc_7f01e3

loc_7f01ea:
    lda HVBJOY
    bit #$40
    beq loc_7f01ea
    lda #$8f
    sta INIDISP
    stz $00
    lda $1b68
    cmp #$06
    bne loc_7f0214
    jsl sub_0bad77
    lda #$c0
    sta CGADD
    lda #$7e
    ldx #$f165
    ldy #$0080
    jsl sub_7f0a22

loc_7f0214:
    rep #$20
.a16
    lda $1b9c
    bit #$1000
    sep #$20
.a8
    beq loc_7f0231
    lda $1b68
    cmp #$0a
    bne loc_7f022d
    jsl sub_0bf5c9
    bra loc_7f0231

loc_7f022d:
    jsl sub_0be68c

loc_7f0231:
    jsr sub_7f0412

loc_7f0234:
    ldx #$0000
    stx HTIMEL
    ldx $1c4b
    bne loc_7f0242
    ldx #$00e2

loc_7f0242:
    stx VTIMEL
    stx $1c4b
    rtl

loc_7f0249:
.i8
    rep #$10
.i16
    inc $1b5e
    rep #$20
.a16
    lda #$0200
    trb $1b92
    sep #$20
.a8
    rep #$20
.a16
    lda $1b92
    bit #$0040
    sep #$20
.a8
    bne loc_7f0285

loc_7f0264:
    lda HVBJOY
    bit #$40
    bne loc_7f0264

loc_7f026b:
    lda HVBJOY
    bit #$40
    beq loc_7f026b
    lda #$8f
    sta INIDISP
    jsr sub_7f02a1
    jsr sub_7f033d
    jsr sub_7f0412
    jsr sub_7f03c2
    bra loc_7f0288

loc_7f0285:
    inc $1b60

loc_7f0288:
    rep #$20
.a16
    lda $1296
    ora $1c21
    sta $1c21
    lda $1292
    ora $1c1f
    sta $1c1f
    sep #$20
.a8
    brl loc_7f0234

sub_7f02a1:
    rep #$20
.a16
    lda $1b92
    bit #$0004
    beq loc_7f02ae
    brl loc_7f033c

loc_7f02ae:
    lda $7eda77
    tay
    lsr a
    clc
    adc $4a
    tax
    tya
    clc
    adc $46
    tay
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    stx VMADDL
    rep #$20
.a16
    tya
    clc
    adc #$0000
    tax
    sep #$20
.a8
    lda #$70
    ldy #$0400
    jsl sub_7f0a11
    pla
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $7eda77
    clc
    adc #$0400
    sta $7eda77
    cmp #$2000
    bne loc_7f033c
    lda #$0004
    tsb $1b92
    lda #$0040
    tsb $1b92
    lda #$0000
    sta $7eda77
    sep #$20
.a8
    rep #$20
.a16
    lda $46
    cmp #$4000
    beq loc_7f031f
    lda #$4000
    bra loc_7f0322

loc_7f031f:
    lda #$a000

loc_7f0322:
    sta $46
    sep #$20
.a8
    lda $4b
    sec
    sbc #$10
    and #$f0
    lsr a
    lsr a
    lsr a
    lsr a
    sta BG12NBA
    ldx $4a
    ldy $4c
    stx $4c
    sty $4a

loc_7f033c:
    rts

sub_7f033d:
    sep #$20
    ldx $1c17
    rep #$20
.a16
    lda #$6000
    sta VMADDL
    txa
    clc
    adc #$6a61
    tax
    sep #$20
.a8
    lda #$7e
    ldy #$0040
    jsl sub_7f0a11
    ldx $1c19
    rep #$20
.a16
    lda #$6100
    sta VMADDL
    txa
    clc
    adc #$6a61
    tax
    sep #$20
.a8
    lda #$7e
    ldy #$0040
    jsl sub_7f0a11
    ldx $1c1b
    rep #$20
.a16
    lda #$6020
    sta VMADDL
    txa
    clc
    adc #$6a61
    tax
    sep #$20
.a8
    lda #$7e
    ldy #$0040
    jsl sub_7f0a11
    ldx $1c1d
    rep #$20
.a16
    lda #$6120
    sta VMADDL
    txa
    clc
    adc #$6a61
    tax
    sep #$20
.a8
    lda #$7e
    ldy #$0040
    jsl sub_7f0a11
    ldx #$52e0
    stx VMADDL
    ldx #$d1c0
    lda #$7f
    ldy #$0100
    jsl sub_7f0a11
    rts

sub_7f03c2:
    lda $5e
    pha
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_03dd81
    jsl sub_0b8c21
    jsl sub_7f1118
    jsl sub_048301
    jsl sub_04a3ed
    jsl sub_04b5da
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    sep #$20
    lda #$7f
    pha
    pea $0409
    lda #$7e
    pha
    rep #$20
.a16
    lda $7ed9ca
    clc
    adc #$6a60
    pha
    sep #$20
.a8
    rtl
    pla
    sta $5e
    sta $00303a
    rts

sub_7f0412:
    php
    sep #$20
    rep #$20
.a16
    lda $1b9c
    bit #$0001
    sep #$20
.a8
    beq loc_7f0424
    brl loc_7f0451

loc_7f0424:
    lda #$7e
    ldx #$e83f
    ldy #$0220
    jsl sub_7f0a4d
    lda $1b68
    cmp #$07
    bne loc_7f044f
    lda $5e
    pha
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_7f0a2e
    pla
    sta $5e
    sta $00303a

loc_7f044f:
    bra loc_7f045d

loc_7f0451:
    lda #$7e
    ldx #$ea5f
    ldy #$0220
    jsl sub_7f0a4d

loc_7f045d:
    rep #$20
.a16
    lda $1b9c
    bit #$0100
    sep #$20
.a8
    beq loc_7f047a
    lda #$00
    sta CGADD
    lda #$7e
    ldx #$efe5
    ldy #$0200
    jsl sub_7f0a22

loc_7f047a:
    rep #$20
.a16
    lda $1b9c
    bit #$0010
    sep #$20
.a8
    beq loc_7f0498
    ldx #$4800
    stx VMADDL
    ldx #$cc00
    lda #$7f
    ldy #$0740
    jsl sub_7f0a11

loc_7f0498:
    jsr sub_7f0861
    lda $1cb8
    bit #$02
    beq loc_7f04c8
    rep #$20
.a16
    lda $7eefb0
    sta $7ff40a
    lda $7eefb4
    sta $7ff40e
    lda $7eefb2
    sta $7ff40c
    lda $7eefb6
    sta $7ff410
    sep #$20
.a8
    bra loc_7f04f8

loc_7f04c8:
    lda $1cbb
    sta BG1HOFS
    lda $1cbc
    sta BG1HOFS
    lda $1cbd
    sta BG1VOFS
    lda $1cbe
    sta BG1VOFS
    lda $1cbf
    sta BG2HOFS
    lda $1cc0
    sta BG2HOFS
    lda $1cc1
    sta BG2VOFS
    lda $1cc2
    sta BG2VOFS

loc_7f04f8:
    jsr sub_7f0b5b
    lda $1c51
    sta TM
    jsr sub_7f0e79
    lda $7f007c
    sta INIDISP
    jsr sub_7f0f23
    jsr sub_7f0e46
    jsr sub_7f0516
    plp
    rts

sub_7f0516:
    rep #$30
.a16
    lda #$efd1
    sec
    sbc #$efd0
    tax
    sep #$20
.a8
    dex

loc_7f0523:
    lda $7eefd0,x
    inc a
    sta $7eefd0,x
    dex
    bpl loc_7f0523
    rep #$30
.a16
    lda #$efd5
    sec
    sbc #$efd3
    tax
    dex
    dex

loc_7f053b:
    lda $7eefd3,x
    inc a
    sta $7eefd3,x
    dex
    dex
    bpl loc_7f053b
    sep #$20
.a8
    rep #$30
.a16
    lda #$efd0
    sec
    sbc #$efcd
    tax
    sep #$20
.a8
    dex

loc_7f0557:
    lda $7eefcd,x
    dec a
    bpl loc_7f0560
    lda #$00

loc_7f0560:
    sta $7eefcd,x
    dex
    bpl loc_7f0557
    rep #$30
.a16
    lda #$efd3
    sec
    sbc #$efd1
    tax
    dex
    dex

loc_7f0573:
    lda $7eefd1,x
    dec a
    bpl loc_7f057d
    lda #$0000

loc_7f057d:
    sta $7eefd1,x
    dex
    dex
    bpl loc_7f0573
    sep #$20
.a8
    jsl sub_7f058c
    rts

sub_7f058c:
    inc $1c00
    jsr sub_7f7bd4
    lda $1c00
    clc
    adc $da5b
    clc
    adc $e0
    sta $1c00
    rtl

loc_7f05a0:
    jsl sub_7f058c
    jsl sub_7f6dbd
    tya
    rtl

loc_7f05aa:
.i8
    sep #$20
    rep #$10

loc_7f05ae:
.i16
    lda HVBJOY
    bit #$40
    bne loc_7f05ae

loc_7f05b5:
    lda HVBJOY
    bit #$40
    beq loc_7f05b5
    lda #$8f
    sta INIDISP
    stz $00
    rep #$20
.a16
    lda $1b9c
    bit #$0001
    sep #$20
.a8
    beq loc_7f05d2
    brl loc_7f05e0

loc_7f05d2:
    lda #$7e
    ldx #$e83f
    ldy #$0220
    jsl sub_7f0a4d
    bra loc_7f05ec

loc_7f05e0:
    lda #$7e
    ldx #$ea5f
    ldy #$0220
    jsl sub_7f0a4d

loc_7f05ec:
    jsr sub_7f0aaa
    jsr sub_7f0b5b
    jsr sub_7f0e79
    lda $7f007c
    sta INIDISP
    jsr sub_7f0f23
    jsr sub_7f0e46
    ldx #$0080
    stx HTIMEL
    ldx #$00e1
    stx VTIMEL
    rtl

loc_7f060f:
.i8
    rep #$10
.i16
    ldx #$0072
    stx VTIMEL
    sep #$10
.i8
    lda #$40

loc_7f061b:
    bit HVBJOY
    bne loc_7f061b
    lda $7f007c
    tax
    lda #$40

loc_7f0627:
    bit HVBJOY
    beq loc_7f0627
    stx INIDISP
    rep #$10
.i16
    lda #$26
    sta $1947
    dec $1291
    rtl

loc_7f063a:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f063a

loc_7f0641:
    lda HVBJOY
    bit #$40
    beq loc_7f0641
    lda #$8f
    sta INIDISP
    rep #$10
.i16
    ldx $4a
    ldy $46
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    stx VMADDL
    rep #$20
.a16
    tya
    clc
    adc #$0000
    tax
    sep #$20
.a8
    lda #$70
    ldy #$23f6
    jsl sub_7f0a11
    pla
    sta $5e
    sta $00303a
    lda #$22
    sta $00
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc
    .db $6b

loc_7f0693:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f0693

loc_7f069a:
    lda HVBJOY
    bit #$40
    beq loc_7f069a
    lda #$8f
    sta INIDISP
    rep #$30
.a16
.i16
    lda $4a
    clc
    adc #$11fb
    tax
    lda $46
    clc
    adc #$23f6
    tay
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    stx VMADDL
    rep #$20
.a16
    tya
    clc
    adc #$0000
    tax
    sep #$20
.a8
    lda #$70
    ldy #$23f6
    jsl sub_7f0a11
    pla
    sta $5e
    sta $00303a
    lda #$24
    sta $00
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc
    .db $6b

loc_7f06f8:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f06f8

loc_7f06ff:
    lda HVBJOY
    bit #$40
    beq loc_7f06ff
    lda #$8f
    sta INIDISP
    rep #$30
.a16
.i16
    lda $4a
    clc
    adc #$23f6
    tax
    lda $46
    clc
    adc #$47ec
    tay
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    stx VMADDL
    rep #$20
.a16
    tya
    clc
    adc #$0000
    tax
    sep #$20
.a8
    lda #$70
    ldy #$0c14
    jsl sub_7f0a11
    pla
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $46
    cmp #$4000
    beq loc_7f0755
    lda #$4000
    bra loc_7f0758

loc_7f0755:
    lda #$a000

loc_7f0758:
    sta $46
    sep #$20
.a8
    jmp loc_7f078f

loc_7f075f:
    lda #$28
    sta $00
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc
    .db $6b

loc_7f0775:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f0775

loc_7f077c:
    lda HVBJOY
    bit #$40
    beq loc_7f077c
    lda #$8f
    sta INIDISP
    sep #$20
    rep #$10
.i16
    jmp loc_7f078f

loc_7f078f:
    lda $1aa6
    bit #$40
    bne loc_7f07a8
    ldx $1b44
    stx VMADDL
    ldx #$196f
    lda #$00
    ldy #$0080
    jsl sub_7f0a11

loc_7f07a8:
    sep #$20
    rep #$10
    rep #$20
.a16
    lda $1b9c
    bit #$0001
    sep #$20
.a8
    beq loc_7f07bb
    brl loc_7f07c9

loc_7f07bb:
    lda #$7e
    ldx #$e83f
    ldy #$0220
    jsl sub_7f0a4d
    bra loc_7f07d5

loc_7f07c9:
    lda #$7e
    ldx #$ea5f
    ldy #$0220
    jsl sub_7f0a4d

loc_7f07d5:
    lda #$00
    sta CGADD
    lda #$7e
    ldx #$efe5
    ldy #$0200
    jsl sub_7f0a22
    lda $5e
    pha
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    jsl sub_0ba865
    pla
    sta $5e
    sta $00303a
    jsr sub_7f0aaa
    jsr sub_7f0b5b
    lda $1aa7
    bit #$08
    beq loc_7f081e
    lda $4b
    and #$f0
    sta $162a
    lda $1b3b
    lsr a
    lsr a
    lsr a
    lsr a
    ora $162a
    bra loc_7f082f

loc_7f081e:
    lda $4b
    lsr a
    lsr a
    lsr a
    lsr a
    sta $162a
    lda $1b3b
    and #$f0
    ora $162a

loc_7f082f:
    sta BG12NBA
    ldx $4a
    ldy $4c
    stx $4c
    sty $4a
    jsr sub_7f0861
    jsr sub_7f0e46
    lda $1c51
    sta TM
    jsr sub_7f0e79
    jsr sub_7f0516
    stz $00
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc
    .db $00,$00

sub_7f0861:
    php
    sep #$20
    rep #$10
    rep #$20
.a16
    lda $1c67
    eor #$0001
    sta $1c67
    sep #$20
.a8
    ldx $1608
    beq loc_7f0892
    rep #$20
.a16
    lda $1c67
    bit #$0001
    sep #$20
.a8
    beq loc_7f088c
    ldx #$1c70
    ldy #$1c82
    bra loc_7f0892

loc_7f088c:
    ldx #$1c94
    ldy #$1ca6

loc_7f0892:
    jsr sub_7f0897
    plp
    rts

sub_7f0897:
    cpx #$0000
    bne loc_7f089f
    brl loc_7f0998

loc_7f089f:
    lda $07,x
    sta CGADSUB
    lda $08,x
    beq loc_7f08ad
    sta COLDATA
    bra loc_7f08c8

loc_7f08ad:
    lda $09,x
    and #$1f
    ora #$20
    sta COLDATA
    lda $0a,x
    and #$1f
    ora #$40
    sta COLDATA
    lda $0b,x
    and #$1f
    ora #$80
    sta COLDATA

loc_7f08c8:
    lda $05,x
    sta TS
    rep #$20
.a16
    lda $1c67
    bit #$0008
    sep #$20
.a8
    bne loc_7f08e2
    lda $1aa6
    bit #$02
    bne loc_7f08fe
    bra loc_7f0956

loc_7f08e2:
    rep #$20
.a16
    lda $0d,x
    sta $7f0009
    clc
    adc #$00e0
    sta $7f000c
    phx
    tyx
    lda $0d,x
    sta $7f000c
    plx
    brl loc_7f0956

loc_7f08fe:
.a8
    rep #$20
.a16
    lda $0d,x
    bne loc_7f0911
    lda #$002f
    sta $7f0016
    sta $7f0019
    bra loc_7f093e

loc_7f0911:
    sta $7f0016
    phx
    tyx
    lda $0d,x
    sta $7f0019
    plx
    lda $11,x
    bit #$0001
    bne loc_7f093e
    lda $7f0015
    ora #$0080
    sta $7f0015
    lda $7f0018
    ora #$0080
    sta $7f0018
    brl loc_7f0956

loc_7f093e:
    lda $7f0015
    and #$ff7f
    sta $7f0015
    lda $7f0018
    and #$ff7f
    sta $7f0018
    bra loc_7f0956

loc_7f0956:
    lda $11,x
    bit #$0002
    bne loc_7f0962
    lda #$efab
    bra loc_7f0965

loc_7f0962:
    lda #$efa7

loc_7f0965:
    sta $7f0020
    sta loc_7f0026
    sta $7f002c
    sep #$20
.a8
    lda $06,x
    sta CGWSEL
    lda $00,x
    sta W12SEL
    lda $01,x
    sta W34SEL
    lda $02,x
    sta WOBJSEL
    lda $03,x
    sta WBGLOG
    lda $04,x
    sta WOBJLOG
    lda $0c,x
    sta DMAP5
    bra loc_7f09d3

loc_7f0998:
    stz WOBJSEL
    stz W12SEL
    stz W34SEL
    lda #$e0
    sta COLDATA
    rep #$20
.a16
    lda $1b9c
    bit #$0004
    sep #$20
.a8
    beq loc_7f09d3
    lda #$02
    sta CGWSEL
    rep #$20
.a16
    lda $1b9c
    bit #$0008
    sep #$20
.a8
    bne loc_7f09c7
    lda #$10
    bra loc_7f09c9

loc_7f09c7:
    lda #$50

loc_7f09c9:
    sta CGADSUB
    lda #$07
    sta TS
    bra loc_7f09d3

loc_7f09d3:
    lda #$1f
    sta TMW
    rts
    .db $08,$c2,$20,$ae,$01,$18,$ad,$03,$18,$8e,$03,$18,$8d,$01,$18,$8d
    .db $32,$43,$e2,$20,$ad,$05,$18,$49,$01,$8d,$05,$18,$28,$60

sub_7f09f7:
    rep #$20
.a16
    lda #$6c00
    sta VMADDL
    txa
    clc
    adc #$0000
    tax
    sep #$20
.a8
    lda #$7f
    ldy #$0800
    jsl sub_7f0a11
    rts

sub_7f0a11:
    sta A1B0
    lda #$80
    sta VMAIN
    lda #$18
    sta BBAD0
    lda #$01
    bra loc_7f0a5f

sub_7f0a22:
    sta A1B0
    lda #$22
    sta BBAD0
    lda #$02
    bra loc_7f0a5f

sub_7f0a2e:
    ldx #$e83f
    stx WMADDL
    lda #$00
    sta WMADDH
    lda #$80
    sta BBAD0
    lda #$04
    sta A1B0
    ldx #$9c65
    ldy #$0200
    lda #$08
    bra loc_7f0a5f

sub_7f0a4d:
    sta A1B0
    lda #$04
    sta BBAD0
    lda #$00
    sta OAMADDL
    sta OAMADDH
    lda #$00

loc_7f0a5f:
    sta DMAP0
    stx A1TL0
    sty DASL0
    lda #$01
    sta MDMAEN
    rtl

sub_7f0a6e:
    sta WMADDH
    stx WMADDL
    bra loc_7f0a8a

sub_7f0a76:
    rep #$20
.a16
    lda $17f2
    asl a
    clc
    adc #$efe5
    sta WMADDL
    sep #$20
.a8
    lda #$7e
    sta WMADDH

loc_7f0a8a:
    lda #$80
    sta BBAD0
    ldx $17ec
    stx A1TL0
    lda $17ee
    sta A1B0
    ldx $17ef
    stx DASL0
    stz DMAP0
    lda #$01
    sta MDMAEN
    rtl

sub_7f0aaa:
    php
    rep #$20
.a16
    lda #$002f
    sta $7f004b
    lda $1cc7
    sta $7f004e
    lda $1cca
    sta $7f0051
    sep #$20
.a8
    lda $1cc9
    bit #$01
    beq loc_7f0adb
    lda $7f004d
    and #$7f
    sta $7f004d
    sta $7f0050
    bra loc_7f0ae9

loc_7f0adb:
    lda $7f004d
    ora #$80
    sta $7f004d
    sta $7f0050

loc_7f0ae9:
    rep #$20
.a16
    lda #$002f
    sta $7f0034
    lda $1ccd
    sta $7f0037
    lda $1cd0
    sta $7f003a
    sep #$20
.a8
    lda $1ccf
    bit #$01
    beq loc_7f0b19
    lda $7f0036
    and #$7f
    sta $7f0036
    sta $7f0039
    bra loc_7f0b27

loc_7f0b19:
    lda $7f0036
    ora #$80
    sta $7f0036
    sta $7f0039

loc_7f0b27:
    rep #$20
.a16
    sep #$20
.a8
    lda $1cb8
    bit #$08
    rep #$20
.a16
    bne loc_7f0b4a
    lda $193c
    sta $7ff40a
    sta $7ff40e
    lda $193a
    sta $7ff40c
    sta $7ff410

loc_7f0b4a:
    lda $1b44
    ror a
    ror a
    and #$00f8
    sta $7f0076
    brl loc_7f0b59

loc_7f0b59:
    plp
.a8
    rts

sub_7f0b5b:
    lda $1cc3
    sta BG3HOFS
    lda $1cc4
    sta BG3HOFS
    lda $1cc5
    sta BG3VOFS
    lda $1cc6
    sta BG3VOFS
    rts

loc_7f0b74:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f0b74

loc_7f0b7b:
    lda HVBJOY
    bit #$40
    beq loc_7f0b7b
    lda #$8f
    sta INIDISP
    rep #$10
.i16
    lda #$01
    ora $1a88
    ora $1a89
    sta BGMODE

loc_7f0b94:
    lda $129b
    sta HDMAEN
    stz $181c
    lda $1c52
    sta TM
    sta $1c51
    stz BG2VOFS
    stz BG2VOFS
    stz $1812
    stz $1d22
    stz $1d1f
    stz $1603
    lda $17f1
    jsl sub_038584
    rep #$20
.a16
    lda #$8f2c
    sta $700050
    sep #$20
.a8
    rep #$10
    rep #$20
.a16
    lda #$0080
    sta $7001ba
    stz $18cc
    stz $18e7
    stz $15ff
    lda #$0000
    sta $7ef524
    sep #$20
.a8
    stz $1d4b
    stz $18d2
    lda $1aa6
    bit #$10
    beq loc_7f0bf8
    lda #$02
    bra loc_7f0bfa

loc_7f0bf8:
    lda #$01

loc_7f0bfa:
    sta $162a
    lda $1b3d
    ora $162a
    sta $162a
    lda $1aa7
    bit #$08
    beq loc_7f0c15
    lda $162a
    sta BG1SC
    bra loc_7f0c1b

loc_7f0c15:
    lda $162a
    sta BG2SC

loc_7f0c1b:
    lda $1c56
    ora $1a8a
    sta BG3SC
    stz $00
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc
    .db $6b

loc_7f0c38:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f0c38

loc_7f0c3f:
    lda HVBJOY
    bit #$40
    beq loc_7f0c3f
    lda #$8f
    sta INIDISP
    rep #$10
.i16
    lda #$02
    ora $1a88
    sta BGMODE
    brl loc_7f0b94

loc_7f0c58:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f0c58

loc_7f0c5f:
    lda HVBJOY
    bit #$40
    beq loc_7f0c5f
    lda #$8f
    sta INIDISP
    rep #$10
.i16
    rep #$20
.a16
    lda $1b9c
    bit #$0040
    sep #$20
.a8
    bne loc_7f0c7d
    jsl sub_7f0a76

loc_7f0c7d:
    rep #$20
.a16
    lda #$0040
    trb $1b9c
    sep #$20
.a8
    lda #$80
    sta VMAIN
    lda #$18
    sta BBAD0
    ldx $17e4
    stx VMADDL
    ldx #$3b50
    stx A1TL0
    lda #$70
    sta A1B0
    ldx $17e6
    stx DASL0
    lda #$01
    sta DMAP0
    lda #$01
    sta MDMAEN
    inc $00
    inc $00
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc
    .db $6b

loc_7f0cc8:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f0cc8

loc_7f0ccf:
    lda HVBJOY
    bit #$40
    beq loc_7f0ccf
    lda #$8f
    sta INIDISP
    rep #$10
.i16
    lda #$80
    sta VMAIN
    lda #$18
    sta BBAD0
    ldx $17e8
    stx VMADDL
    ldx #$5b50
    stx A1TL0
    lda #$70
    sta A1B0
    ldx $17ea
    stx DASL0
    lda #$01
    sta DMAP0
    lda #$01
    sta MDMAEN
    stz $00
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc
    .db $6b

loc_7f0d1c:
.i8
    rep #$10
.i16
    lda #$80
    sta VMAIN
    lda #$18
    sta BBAD0
    ldx $1b3e
    stx VMADDL
    ldx #$3b50
    stx A1TL0
    lda #$70
    sta A1B0
    ldx $17e6
    stx DASL0
    lda #$01
    sta DMAP0
    lda #$01
    sta MDMAEN
    lda #$80
    sta VMAIN
    lda #$18
    sta BBAD0
    ldx $1b40
    stx VMADDL
    ldx #$5b50
    stx A1TL0
    lda #$70
    sta A1B0
    ldx $17ea
    stx DASL0
    lda #$01
    sta DMAP0
    lda #$01
    sta MDMAEN
    stz $00
    rtl

loc_7f0d77:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f0d77

loc_7f0d7e:
    lda HVBJOY
    bit #$40
    beq loc_7f0d7e
    lda #$8f
    sta INIDISP
    jsl sub_7f0da3
    sep #$20
    rep #$10
.i16
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc

sub_7f0da3:
    rep #$10
    lda #$80
    sta VMAIN
    lda #$18
    sta BBAD0
    ldx $17e4
    stx VMADDL
    ldx #$3b50
    stx A1TL0
    lda #$70
    sta A1B0
    ldx $17e6
    stx DASL0
    lda #$01
    sta DMAP0
    lda #$01
    sta MDMAEN
    stz $00
    rtl

loc_7f0dd3:
.i8
    rep #$20
.a16
    lda $1b84
    bit #$0004
    sep #$20
.a8
    bne loc_7f0e09

loc_7f0ddf:
    lda HVBJOY
    bit #$40
    bne loc_7f0ddf

loc_7f0de6:
    lda HVBJOY
    bit #$40
    beq loc_7f0de6
    lda #$8f
    sta INIDISP
    jsr sub_7f0f23
    rep #$10
.i16
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc
    .db $6b

loc_7f0e09:
.i8
    jsr sub_7f0f23
    rtl

loc_7f0e0d:
    jsr sub_7f0f23
    rep #$10
.i16
    rtl

loc_7f0e13:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f0e13

loc_7f0e1a:
    lda HVBJOY
    bit #$40
    beq loc_7f0e1a
    lda #$8f
    sta INIDISP
    lda $1cd3
    bit #$04
    bne loc_7f0e2f
    stz $00

loc_7f0e2f:
    rep #$10
.i16
    jsr sub_7f0e46
    jsr sub_7f0e79
    stz HTIMEL
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    rtl

sub_7f0e46:
    php
    sep #$20

loc_7f0e49:
    lda HVBJOY
    bit #$01
    bne loc_7f0e49
    rep #$20
.a16
    lda JOY1L
    pha
    eor $1292
    and JOY1L
    sta $1296
    lda JOY2L
    pha
    eor $1294
    and JOY2L
    sta $1298
    pla
    sta $1294
    pla
    sta $1292
    plp
.a8
    rts
    .db $e2,$20,$60

sub_7f0e79:
    lda $18bb
    inc a
    beq loc_7f0e8c
    lda #$8f
    sta $7f007c
    sta $7f007e
    brl loc_7f0f0a

loc_7f0e8c:
    lda $f3
    bne loc_7f0e93
    brl loc_7f0f0a

loc_7f0e93:
    bpl loc_7f0eca
    cmp #$fe
    beq loc_7f0ec1
    cmp #$fd
    beq loc_7f0eba

loc_7f0e9d:
    lda $f4

loc_7f0e9f:
    beq loc_7f0ea6
    dec a
    beq loc_7f0ea6
    bra loc_7f0edf

loc_7f0ea6:
    lda #$8f
    sta $7f007c
    sta $7f007e
    sta $7f0080
    stz $f3
    stz $f4
    bra loc_7f0f0a

loc_7f0eba:
    lda $c4
    and #$01
    beq loc_7f0e9d
    rts

loc_7f0ec1:
    lda $f4
    beq loc_7f0ea6
    dec a
    beq loc_7f0ea6
    bra loc_7f0e9f

loc_7f0eca:
    cmp #$02
    beq loc_7f0eef
    cmp #$03
    beq loc_7f0efd

loc_7f0ed2:
    lda $f4
    cmp #$0f
    beq loc_7f0edb
    inc a
    bra loc_7f0edf

loc_7f0edb:
    stz $f3
    lda #$0f

loc_7f0edf:
    sta $f4
    sta $7f007c
    sta $7f007e
    sta $7f0080
    bra loc_7f0f0a

loc_7f0eef:
    lda $f4
    cmp #$0f
    beq loc_7f0edb
    inc a
    cmp #$0f
    beq loc_7f0edf
    inc a
    bra loc_7f0edf

loc_7f0efd:
    dec $1c59
    bne loc_7f0f0a
    lda $1c5a
    sta $1c59
    bra loc_7f0ed2

loc_7f0f0a:
    rts
    .db $8e,$2a,$16,$cd,$2a,$16,$8c,$2a,$16,$f0,$0c,$30,$06,$38,$ed,$2a
    .db $16,$80,$04,$18,$6d,$2a,$16,$60

sub_7f0f23:
.i8
    php
    sep #$30
    lda $1cd9
    beq loc_7f0f30
    dec a
    beq loc_7f0f3e
    bra loc_7f0f50

loc_7f0f30:
    lda $1cda
    sta APUIO0
    lda #$01
    sta $1cd9
    brl loc_7f0fd0

loc_7f0f3e:
    lda APUIO0
    cmp $1cda
    beq loc_7f0f49
    brl loc_7f0fd0

loc_7f0f49:
    lda #$02
    sta $1cd9
    bra loc_7f0f50

loc_7f0f50:
    lda $1cd3
    bit #$01
    beq loc_7f0f5d
    stz $1ce5
    stz $1ce6

loc_7f0f5d:
    lda $1cd3
    bit #$08
    beq loc_7f0f67
    stz $1ce6

loc_7f0f67:
    lda $1ce5
    sta APUIO1
    rep #$10
.i16
    lda $1ce7
    cmp $1cf1
    bne loc_7f0f84
    ldx $1ce8
    cpx $1cf2
    beq loc_7f0f84
    stz APUIO2
    bra loc_7f0f8a

loc_7f0f84:
    lda $1ce6
    sta APUIO2

loc_7f0f8a:
    lda $1ce7
    sta $1cf1
    ldx $1ce8
    stx $1cf2
    sep #$10
.i8
    lda $1d1a
    cmp APUIO3
    bne loc_7f0fd0
    lda $1d1b
    bne loc_7f0fda
    ldx $1d18
    cpx $1d16
    beq loc_7f0fd0
    lda $1cf6,x
    cmp $1d1a
    beq loc_7f0fd2
    sta APUIO3
    sta $1d1a
    lda $1d18
    inc a
    inc a
    and #$1f
    sta $1d18
    lda $1cda
    and #$0f
    ora $1cf7,x
    sta APUIO0

loc_7f0fd0:
    plp
    rts

loc_7f0fd2:
    stz APUIO3
    stz $1d1a
    plp
    rts

loc_7f0fda:
    sta APUIO3
    sta $1d1a
    stz $1d16
    stz $1d18
    stz $1d1b
    plp
    rts
    .db $a5,$e0,$18,$e5,$e1,$85,$e1,$e5,$e2,$85,$e2,$e5,$e3,$85,$e3,$e5
    .db $e0,$85,$e0,$60

sub_7f0fff:
.i16
    sep #$20
    lda $f3
    beq loc_7f1016
    clc
    adc $f4
    bpl loc_7f100e
    lda #$00
    bra loc_7f1014

loc_7f100e:
    cmp #$10
    bmi loc_7f1014
    lda #$0f

loc_7f1014:
    sta $f4

loc_7f1016:
    lda $f4
    sta INIDISP
    rts

loc_7f101c:
.i8
    sep #$20
    rep #$10
.i16
    stz $00
    lda #$7e
    ldx #$e83f
    ldy #$0220
    jsl sub_7f0a4d
    jsr sub_7f0fff
    jsr sub_7f0f23
    jsr sub_7f0e46
    rtl

loc_7f1038:
.i8
    lda HVBJOY
    bit #$40
    bne loc_7f1038

loc_7f103f:
    lda HVBJOY
    bit #$40
    beq loc_7f103f
    lda #$8f
    sta INIDISP
    rep #$10
.i16
    rep #$20
.a16
    lda $17f2
    asl a
    clc
    adc #$efe5
    sta WMADDL
    sep #$20
.a8
    lda #$00
    sta WMADDH
    ldx $17ec
    stx A1TL0
    lda $17ee
    sta A1B0
    ldx $17ef
    stx DASL0
    lda #$80
    sta BBAD0
    stz DMAP0
    lda #$01
    sta MDMAEN
    stz $00
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc
    .db $6b

loc_7f1094:
.i8
    sep #$20
    rep #$10

loc_7f1098:
.i16
    lda HVBJOY
    bit #$40
    bne loc_7f1098

loc_7f109f:
    lda HVBJOY
    bit #$40
    beq loc_7f109f
    lda #$8f
    sta INIDISP
    stz $00
    jsr sub_7f0e46
    rep #$20
.a16
    lda $1b96
    bit #$0400
    sep #$20
.a8
    beq loc_7f10db
    ldx #$dc00
    rep #$20
.a16
    lda $1b84
    bit #$0020
    sep #$20
.a8
    beq loc_7f10ce
    ldx #$e400

loc_7f10ce:
    jsr sub_7f09f7
    rep #$20
.a16
    lda #$0400
    trb $1b96
    sep #$20

loc_7f10db:
.a8
    rep #$20
.a16
    lda $1b9c
    bit #$0001
    sep #$20
.a8
    beq loc_7f10ea
    brl loc_7f10f8

loc_7f10ea:
    lda #$7e
    ldx #$e83f
    ldy #$0220
    jsl sub_7f0a4d
    bra loc_7f1104

loc_7f10f8:
    lda #$7e
    ldx #$ea5f
    ldy #$0220
    jsl sub_7f0a4d

loc_7f1104:
    jsr sub_7f0861
    jsr sub_7f0f23
    lda #$16
    sta $1947
    ldx $1b4b
    stx VTIMEL
    jmp loc_7f00dc

sub_7f1118:
    php
    sep #$20
    rep #$10
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $142c
    ldx #$12e8
    jsr sub_7f11a3
    stx $1608
    ldy #$1c70
    lda $1c67
    bit #$0001
    beq loc_7f1146
    ldy #$1c94

loc_7f1146:
    cpx #$0000
    beq loc_7f1155
    lda #$0011
    phb
    mvn $00,$00
    plb
    bra loc_7f1163

loc_7f1155:
    sep #$20
.a8
    lda #$00
    sta $0002,y
    lda #$e0
    sta $0008,y
    rep #$20

loc_7f1163:
.a16
    lda $142e
    ldx #$138a
    jsr sub_7f11a3
    stx $160a
    ldy #$1c82
    lda $1c67
    bit #$0001
    beq loc_7f117d
    ldy #$1ca6

loc_7f117d:
    cpx #$0000
    beq loc_7f118c
    lda #$0011
    phb
    mvn $00,$00
    plb
    bra loc_7f1198

loc_7f118c:
    sep #$20
.a8
    lda #$00
    sta $0002,y
    lda #$e0
    sta $0008,y

loc_7f1198:
    sep #$20
    pla
    sta $5e
    sta $00303a
    plp
    rtl

sub_7f11a3:
.a16
    sta $1c6a
    beq loc_7f11b7
    txa
    ldx #$0009

loc_7f11ac:
    ror $1c6a
    bcs loc_7f11ba
    adc #$0012
    dex
    bne loc_7f11ac

loc_7f11b7:
    lda #$0000

loc_7f11ba:
    tax
    rts

sub_7f11bc:
.a8
    php
    sep #$20
    lda #$00
    sta $1944
    bra loc_7f11da

sub_7f11c6:
    php
    sep #$20
    lda $1aa6
    bit #$01
    bne loc_7f11d2
    plp
    rtl

loc_7f11d2:
    lda #$01
    sta $1944
    bra loc_7f11da
    .db $08

loc_7f11da:
    phb
    sep #$20
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    lda #$7e
    pha
    plb
    rep #$30
.a16
    stz $18c6
    lda $18b9
    sta $cf19
    lda $c9
    sta $cf1b
    stz $18c6
    ldx #$b273
    ldy $12a8

loc_7f1207:
    sep #$20
.a8
    sty $12c7
    lda $0008,y
    and #$e1
    ora #$08
    sta $0008,y
    lda $0023,y
    and #$02
    beq loc_7f1221
    jml loc_7f1460

loc_7f1221:
    lda $0025,y
    and #$08
    beq loc_7f122c
    jml loc_7f1460

loc_7f122c:
    lda $0009,y
    bit #$01
    rep #$20
.a16
    beq loc_7f123a
    lda #$3a98
    bra loc_7f123d

loc_7f123a:
    lda #$0000

loc_7f123d:
    sta $0002,x
    lda $000c,y
    sta $0020,x
    lda $000e,y
    sta $0022,x
    lda $0010,y
    sta $0024,x
    lda $0004,y
    sta $0008,x
    sep #$20
.a8
    lda $1944
    bne loc_7f1262
    brl loc_7f130f

loc_7f1262:
    lda $0025,y
    and #$20
    beq loc_7f1273
    lda $0023,y
    and #$40
    beq loc_7f1273
    brl loc_7f1460

loc_7f1273:
    phx
    ldx $04,y
    sep #$20
    lda $0026,y
    and #$10
    beq loc_7f1283
    jml loc_7f12ac

loc_7f1283:
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $000010,x
    asl a
    asl a
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    clc
    adc $1a7f
    cmp #$2ee0
    bcc loc_7f12b1

loc_7f12ac:
.a8
    rep #$20
.a16
    lda #$2ee0

loc_7f12b1:
    sta $3a
    asl a
    sta $3e
    lda $0024,y
    and #$0001
    bne loc_7f12c2
    jml loc_7f12cd

loc_7f12c2:
    lda $3a
    clc
    adc #$01f4
    sta $3a
    asl a
    sta $3e

loc_7f12cd:
    ldx #$037e
    lda $000c,y
    sec
    sbc $0c,x
    clc
    adc $3a
    cmp $3e
    bcs loc_7f12f6
    lda $0010,y
    sec
    sbc $10,x
    clc
    adc $3a
    cmp $3e
    bcs loc_7f12f6
    sep #$20
.a8
    lda $0024,y
    ora #$01
    sta $0024,y
    bra loc_7f1300

loc_7f12f6:
.a16
    sep #$20
.a8
    lda $0024,y
    and #$fe
    sta $0024,y

loc_7f1300:
    plx
    lda $0024,y
    and #$01
    bne loc_7f130c
    jml loc_7f1460

loc_7f130c:
    brl loc_7f13b9

loc_7f130f:
    lda $0025,y
    and #$20
    beq loc_7f1320
    lda $0023,y
    and #$40
    bne loc_7f1320
    brl loc_7f1460

loc_7f1320:
    phx
    ldx $04,y
    sep #$20
    lda $0026,y
    and #$10
    beq loc_7f1330
    jml loc_7f1359

loc_7f1330:
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $000010,x
    asl a
    asl a
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    clc
    adc $1a7f
    cmp #$2ee0
    bcc loc_7f135e

loc_7f1359:
.a8
    rep #$20
.a16
    lda #$2ee0

loc_7f135e:
    sta $3a
    asl a
    sta $3e
    lda $0023,y
    and #$0080
    bne loc_7f136f
    jml loc_7f137a

loc_7f136f:
    lda $3a
    clc
    adc #$01f4
    sta $3a
    asl a
    sta $3e

loc_7f137a:
    ldx #$033f
    lda $000c,y
    sec
    sbc $0c,x
    clc
    adc $3a
    cmp $3e
    bcs loc_7f13a3
    lda $0010,y
    sec
    sbc $10,x
    clc
    adc $3a
    cmp $3e
    bcs loc_7f13a3
    sep #$20
.a8
    lda $0023,y
    ora #$80
    sta $0023,y
    bra loc_7f13ad

loc_7f13a3:
.a16
    sep #$20
.a8
    lda $0023,y
    and #$7f
    sta $0023,y

loc_7f13ad:
    plx
    lda $0023,y
    and #$80
    bne loc_7f13b9
    jml loc_7f1460

loc_7f13b9:
    lda $0012,y
    sta $0004,x
    lda $0014,y
    sta $0005,x
    lda $0016,y
    sta $0006,x
    lda $0008,y
    and #$01
    beq loc_7f13da
    lda $000a,y
    sta $0018,x
    bra loc_7f13df

loc_7f13da:
    lda #$00
    sta $0018,x

loc_7f13df:
    lda $0020,y
    bit #$10
    beq loc_7f1400
    rep #$20
.a16
    tya
    sta $000a,x
    sep #$20
.a8
    lda $0013,y
    sta $000c,x
    lda $0015,y
    sta $000d,x
    lda $0017,y
    sta $000e,x

loc_7f1400:
    lda $0020,y
    sta $0007,x
    lda $1ccb,y
    bmi loc_7f140d
    lda $c4

loc_7f140d:
    and #$7f
    sta $0019,x
    lda $1cca,y
    bmi loc_7f1419
    lda $c4

loc_7f1419:
    and #$7f
    sta $001a,x
    lda $1cef,y
    sta $001e,x
    lda $1cc8,y
    sta $001b,x
    lda $1cda,y
    sta $001c,x
    lda $1cdb,y
    sta $001d,x
    rep #$20
.a16
    cpy $16d1
    bne loc_7f1451
    lda $c4
    and #$0007
    cmp #$0004
    bcc loc_7f144c
    lda #$8074
    bra loc_7f1454

loc_7f144c:
    lda #$8174
    bra loc_7f1454

loc_7f1451:
    lda $1ccd,y

loc_7f1454:
    sta $0016,x
    inc $18c6
    txa
    clc
    adc #$0026
    tax

loc_7f1460:
.a8
    sep #$20
    lda $1944
    bne loc_7f146f
    lda $0020,y
    and #$fd
    sta $0020,y

loc_7f146f:
    rep #$20
.a16
    lda $0000,y
    tay
    beq loc_7f147a
    brl loc_7f1207

loc_7f147a:
    lda $18c6
    sta $7ecf1d
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    plb
    plp
    rtl

sub_7f148d:
    php
    phb
    sep #$20
    lda #$00
    pha
    plb
    lda $5e
    pha
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda #$70
    pha
    plb
    rep #$30
.a16
    ldx #$b273
    ldy #$0ad0
    lda $0018c6
    sta $02
    bne loc_7f14b9
    brl loc_7f1551

loc_7f14b9:
    lda $7e0000,x
    sta $0000,y
    lda $7e0002,x
    sta $0002,y
    lda $7e0004,x
    sta $0004,y
    lda $7e0006,x
    sta $0006,y
    lda $7e0008,x
    sta $0008,y
    lda $7e000a,x
    sta $000a,y
    lda $7e000c,x
    sta $000c,y
    lda $7e000e,x
    sta $000e,y
    lda $7e0010,x
    sta $0010,y
    lda $7e0012,x
    sta $0012,y
    lda $7e0014,x
    sta $0014,y
    lda $7e0016,x
    sta $0016,y
    lda $7e0018,x
    sta $0018,y
    lda $7e001a,x
    sta $001a,y
    lda $7e001c,x
    sta $001c,y
    lda $7e001e,x
    sta $001e,y
    lda $7e0020,x
    sta $0020,y
    lda $7e0022,x
    sta $0022,y
    lda $7e0024,x
    sta $0024,y
    txa
    clc
    adc #$0026
    tax
    tya
    clc
    adc #$0026
    tay
    dec $02
    beq loc_7f1551
    brl loc_7f14b9

loc_7f1551:
    sep #$20
.a8
    lda #$00
    pha
    plb
    pla
    sta $5e
    sta $00303a
    plb
    plp
    rtl

sub_7f1561:
    ldx #$033f
    stx $1934
    jmp loc_7f1573

sub_7f156a:
    ldx #$037e
    stx $1934
    jmp loc_7f1573

loc_7f1573:
    php
    rep #$20
.a16
    lda $7ecf19
    sta $7003ee
    lda $7ecf1b
    sta $7000da
    lda $7ecf1d
    sta $7001ee
    ldx $1934
    ldy $06,x
    lda $002d,y
    and #$00ff
    sta $7024c0
    lda $0c,x
    sta $1461
    lda $0e,x
    sta $1463
    lda $10,x
    sta $1465
    lda $29,x
    sta $1825
    lda $14,x
    sta $1821
    lda $12,x
    sta $181f
    lda $16,x
    sta $1823
    lda $1461
    sta $c7
    lda $1463
    sta $c9
    lda $1465
    sta $cb
    lda $181f
    sta $1594
    lda $1821
    sta $1596
    lda $1823
    sta $1598
    sep #$20
.a8
    rep #$10
    rep #$20
.a16
    lda $1594
    eor #$ffff
    inc a
    sta $158e
    stz $1590
    stz $1592
    sep #$20
.a8
    jsl sub_038bbf
.i8
    rep #$20
.a16
    lda $153e
    sta $157c
    lda $1540
    sta $157e
    lda $1542
    sta $1580
    lda $1544
    sta $1582
    lda $1546
    sta $1584
    lda $1548
    sta $1586
    lda $154a
    sta $1588
    lda $154c
    sta $158a
    lda $154e
    sta $158c
    stz $02
    stz $08
    lda $1825
    eor #$ffff
    inc a
    sta $97
    sep #$20
.a8
    jsl sub_038b85
    rep #$20
.a16
    stz $158e
    lda $1596
    eor #$ffff
    inc a
    sta $1590
    stz $1592
    sep #$20
.a8
    jsl sub_038bbf
    rep #$20
.a16
    lda $153e
    sta $157c
    lda $1540
    sta $157e
    lda $1542
    sta $1580
    lda $1544
    sta $1582
    lda $1546
    sta $1584
    lda $1548
    sta $1586
    lda $154a
    sta $1588
    lda $154c
    sta $158a
    lda $154e
    sta $158c
    lda $b7
    sta $02
    lda $b9
    sta $08
    lda $bb
    sta $97
    sep #$20
.a8
    jsl sub_038b85
    clc
    lda $b7
    adc $c7
    sta $c7
    lda $b8
    adc $c8
    sta $c8
    clc
    lda $b9
    adc $c9
    sta $c9
    lda $ba
    adc $ca
    sta $ca
    clc
    lda $bb
    adc $cb
    sta $cb
    lda $bc
    adc $cc
    sta $cc
    rep #$20
.a16
    lda $1594
    sta $158e
    lda $1596
    sta $1590
    lda $1598
    sta $1592
    sep #$30
.a8
    jsl sub_038bbf
    rep #$20
.a16
    lda $153e
    sta $157c
    lda $1540
    sta $157e
    lda $1542
    sta $1580
    lda $1544
    sta $1582
    lda $1546
    sta $1584
    lda $1548
    sta $1586
    lda $154a
    sta $1588
    lda $154c
    sta $158a
    lda $154e
    sta $158c
    lda $c7
    sta $7000d8
    lda $cb
    sta $7000dc
    lda $c9
    sta $7000da
    plp
.a8
.i16
    rtl

sub_7f1737:
    php
    phb
    sep #$20
    lda #$7e
    pha
    plb
    rep #$30
.a16
    ldx #$0002
    stz $6a61,x
    stz $6a63,x
    lda #$47fe
    sta $6a65,x
    stx $6a61
    plb
    plp
.a8
    rtl
    .db $08,$8b,$da,$5a,$e2,$20,$a9,$7e,$48,$ab,$c2,$20,$ae,$61,$6a,$a9
    .db $00,$00,$18,$7d,$65,$6a,$bc,$61,$6a,$bb,$d0,$f6,$7a,$fa,$ab,$28
    .db $6b

sub_7f1777:
.a16
    cmp #$0000
    bne loc_7f177d
    rtl

loc_7f177d:
    phx
    phy
    php
    dec a
    dec a
    sta $b261
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $b261
    tax
    clc
    adc $6a61,x
    sta $b263
    lda $6a61,x
    sta $b265
    ldy $6a61
    bne loc_7f17af
    brl loc_7f181e

loc_7f17af:
    tya
    clc
    adc $6a65,y
    cmp $b261
    beq loc_7f17dd
    cpy $b263
    beq loc_7f17ed
    lda $6a61,y
    tay
    bne loc_7f17af
    lda $6a61,x
    sta $6a65,x
    ldy $6a61
    stx $6a61
    txa
    sta $6a63,y
    tya
    sta $6a61,x
    stz $6a63,x
    bra loc_7f182d

loc_7f17dd:
    lda $6a65,y
    clc
    adc $6a61,x
    sta $6a65,y
    tyx
    jsr sub_7f185a
    bra loc_7f182d

loc_7f17ed:
    lda $6a65,y
    clc
    adc $6a61,x
    sta $6a65,x
    lda $6a61,y
    sta $6a61,x
    lda $6a63,y
    sta $6a63,x
    txa
    ldy $6a61,x
    beq loc_7f180c
    sta $6a63,y

loc_7f180c:
    ldy $6a63,x
    beq loc_7f1816
    sta $6a61,y
    bra loc_7f1819

loc_7f1816:
    sta $6a61

loc_7f1819:
    jsr sub_7f185a
    bra loc_7f182d

loc_7f181e:
    stx $6a61
    lda $6a61,x
    sta $6a65,x
    stz $6a63,x
    stz $6a61,x

loc_7f182d:
    sta $b261
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $b261
    plp
    ply
    plx
    rtl

sub_7f1842:
    lda $6a63,x
    ldy $6a61,x
    beq loc_7f184d
    sta $6a63,y

loc_7f184d:
    tax
    beq loc_7f1856
    tya
    sta $6a61,x
    bra loc_7f1859

loc_7f1856:
    sty $6a61

loc_7f1859:
    rts

sub_7f185a:
    stx $b261
    txa
    clc
    adc $6a65,x
    sta $b263
    ldy $6a61

loc_7f1868:
    cpy $b263
    beq loc_7f187e
    tya
    clc
    adc $6a65,y
    cmp $b261
    beq loc_7f1893
    lda $6a61,y
    tay
    bne loc_7f1868
    rts

loc_7f187e:
    lda $6a65,x
    clc
    adc $6a65,y
    sta $6a65,x
    stx $b261
    tyx
    jsr sub_7f1842
    ldx $b261
    rts

loc_7f1893:
    lda $6a65,y
    clc
    adc $6a65,x
    sta $6a65,y
    sty $b261
    jsr sub_7f1842
    ldx $b261
    rts

AllocBlock:
    phx
    phy
    php
    sta $b261
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $b261
    inc a
    and #$fffe
    beq loc_7f1939
    inc a
    inc a
    cmp #$0006
    bcs loc_7f18d1
    lda #$0006

loc_7f18d1:
    ldx $6a61
    beq loc_7f1939

loc_7f18d6:
    cmp $6a65,x
    bcc loc_7f18e8
    beq loc_7f18e8
    ldy $6a61,x
    tyx
    bne loc_7f18d6
    lda #$0000
    bra loc_7f1939

loc_7f18e8:
    sta $b261
    lda $6a65,x
    sec
    sbc $b261
    cmp #$0006
    bcc loc_7f190d
    beq loc_7f190d
    sta $6a65,x
    txa
    clc
    adc $6a65,x
    tax
    lda $b261
    sta $6a61,x
    inx
    inx
    txa
    bra loc_7f1939

loc_7f190d:
    lda $6a65,x
    sta $b261
    stx $b263
    lda $6a61,x
    ldy $6a63,x
    beq loc_7f1923
    sta $6a61,y
    bra loc_7f1926

loc_7f1923:
    sta $6a61

loc_7f1926:
    tax
    beq loc_7f192d
    tya
    sta $6a63,x

loc_7f192d:
    ldx $b263
    lda $b261
    sta $6a61,x
    inx
    inx
    txa

loc_7f1939:
    sta $b261
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $b261
    plp
    ply
    plx
    rtl

sub_7f194e:
    clc
    adc #$0002
    jsl AllocBlock
    cmp #$0000
    beq loc_7f196a
    phy
    tay
    lda $1cdc,x
    sta $6a61,y
    tya
    sta $1cdc,x
    ply
    inc a
    inc a

loc_7f196a:
    rtl

sub_7f196b:
    phy
    phx
    dec a
    dec a
    sta $b261
    ldy $1cdc,x
    beq loc_7f19a4
    phx
    ldx #$0000

loc_7f197b:
    cpy $b261
    beq loc_7f198d
    tyx
    ldy $6a61,x
    bne loc_7f197b
    plx
    ply
    jsl sub_00801c
    rtl

loc_7f198d:
    lda $6a61,y
    cpx #$0000
    beq loc_7f199b
    sta $6a61,x
    plx
    bra loc_7f199f

loc_7f199b:
    plx
    sta $1cdc,x

loc_7f199f:
    tya
    jsl sub_7f1777

loc_7f19a4:
    plx
    ply
    rtl

sub_7f19a7:
.a8
    phx
    phy
    php
    phb
    sep #$20
    lda #$7e
    pha
    plb
    rep #$20
.a16
    ldy $1cdc,x
    beq loc_7f19c8
    phx

loc_7f19b9:
    ldx $6a61,y
    tya
    jsl sub_7f1777
    txy
    bne loc_7f19b9
    plx
    stz $1cdc,x

loc_7f19c8:
    stz $1cec,x
    stz $1cde,x
    stz $1ce0,x
    plb
    plp
.a8
    ply
    plx
    rtl

loc_7f19d6:
    jsl sub_008027
    phx
    php
    phb
    pha
    sep #$20
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda #$0006
    jsl AllocBlock
    cmp #$0000
    bne loc_7f19f8
    plx
    plb
    plp
    plx
    sec
    rtl

loc_7f19f8:
    tax
    pla
    sta $6a61,x
    lda $b269
    sta $6a63,x
    lda $b26b
    sta $6a65,x
    txa
    plb
    plp
    plx
    clc
    rtl

sub_7f1a0f:
    phx
    php
    phb
    pha
    sep #$20
.a8
    lda #$7e
    pha
    plb
    rep #$20
.a16
    pla
    phy
    tay
    bne loc_7f1a33
    lda #$0021
    jsl sub_7f194e
    tay
    sep #$20
.a8
    lda #$01
    sta $6a61,y
    rep #$20
.a16
    bra loc_7f1a5a

loc_7f1a33:
    lda $6a61,y
    and #$00ff
    inc a
    sep #$20
.a8
    sta $6a61,y
    bit #$07
    rep #$20
.a16
    bne loc_7f1a5a
    clc
    adc #$0008
    asl a
    asl a
    inc a
    jsl sub_7f1b00
    cmp #$0000
    bne loc_7f1a59
    jsl sub_008027

loc_7f1a59:
    tay

loc_7f1a5a:
    phy
    lda $6a61,y
    and #$00ff
    asl a
    asl a
    sty $b261
    sec
    adc $b261
    tay
    lda $b269
    sta $6a5d,y
    lda $b26b
    sta $6a5f,y
    pla
    ply
    plb
    plp
    plx
    clc
    rtl

loc_7f1a7e:
    phx
    php
    phb
    sep #$10
.i8
    ldx #$7e
    phx
    plb
    rep #$10
.i16
    phy
    tay
    bne loc_7f1a91
    jsl sub_008027

loc_7f1a91:
    phy
    lda $6a61,y
    and #$00ff
    bne loc_7f1a9e
    jsl sub_008027

loc_7f1a9e:
    dec a
    sep #$20
.a8
    sta $6a61,y
    rep #$20
.a16
    asl a
    asl a
    sty $b261
    sec
    adc $08
    tay
    lda $6a61,y
    sta $b269
    lda $6a63,y
    sta $b26b
    pla
    ply
    plb
    plp
    plx
    rtl

sub_7f1ac1:
    phx
    phy
    php
    phb
    pha
    sep #$20
.a8
    lda #$7e
    pha
    plb
    rep #$20
.a16
    ply
    phy
    lda $6a61,y
    and #$00ff
    bne loc_7f1adc
    jsl sub_008027

loc_7f1adc:
    dec a
    sep #$20
.a8
    sta $6a61,y
    rep #$20
.a16
    asl a
    asl a
    sty $b261
    sec
    adc $b261
    tay
    lda $6a61,y
    sta $b269
    lda $6a63,y
    sta $b26b
    pla
    plb
    plp
    ply
    plx
    rtl

sub_7f1b00:
    cpy #$0000
    bne loc_7f1b08
    brl sub_7f194e

loc_7f1b08:
    sta $cf2b
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $cf2b
    jsl sub_7f194e
    beq loc_7f1b63
    pha
    phy
    phx
    tyx
    tay
    lda $6a5d,x
    cmp $cf2b
    bcs loc_7f1b35
    sta $cf2b

loc_7f1b35:
    sep #$20

loc_7f1b37:
.a8
    lda $6a61,x
    sta $6a61,y
    inx
    iny
    rep #$20
.a16
    dec $cf2b
    sep #$20
.a8
    bne loc_7f1b37
    rep #$20
.a16
    plx
    pla
    jsl sub_7f196b
    pla
    sta $cf2b
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $cf2b
    rtl

loc_7f1b63:
    jsl sub_008027
    rtl

sub_7f1b68:
    sep #$20
.a8
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1b4d
    and #$0007
    cmp #$0000
    beq loc_7f1b86
    lda #$2000
    bra loc_7f1b89

loc_7f1b86:
    lda #$4000

loc_7f1b89:
    sta $195d
    stz $195f
    stz $1961
    stz $1949
    lda #$0000
    sta $1a8b
    sta $1a8d
    sta $1a8f
    sta $1a93
    sta $1a97
    sta $1a9b
    sta $1a91
    sta $1a95
    sta $1a99
    sta $1a9d
    sta $1957
    sta $1959
    stz $08
    lda #$8000
    sta $1965
    lda #$0000
    sta $1963
    sta $1967
    sta $196b
    sta $196d
    lda $0c,x
    sta $02
    lda $10,x
    sta $97
    lda $04,x
    sta $5f
    stx $3a
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    rep #$20
.a16
    rtl

sub_7f1bf0:
    sep #$20
.a8
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$20

loc_7f1bfe:
.a16
    cpx $3a
    beq loc_7f1c70
    lda $31,x
    and #$0004
    bne loc_7f1c70
    lda $24,x
    and #$0004
    bne loc_7f1c70
    ldy $04,x
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $000a,y
    sta $04
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $04
    clc
    adc $0c,x
    asl $04
    sec
    sbc $02
    cmp $04
    bcs loc_7f1c70
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $000e,y
    sta $04
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $04
    clc
    adc $10,x
    asl $04
    sec
    sbc $97
    cmp $04
    bcc loc_7f1c75

loc_7f1c70:
    lda $00,x
    tax
    bne loc_7f1bfe

loc_7f1c75:
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    rep #$20
.a16
    rtl

loc_7f1c84:
    php
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    jsr sub_7f1ca0
    pla
    sta $5e
    sta $00303a
    plp
    rtl

sub_7f1ca0:
.a16
    phx
    php
    rep #$30
    lda #$0000
    sec
    sbc $69
    sta $69
    lda $6d
    asl $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1cb8
    txa

loc_7f1cb8:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1cc2
    txa

loc_7f1cc2:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1ccc
    txa

loc_7f1ccc:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1cd6
    txa

loc_7f1cd6:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1ce0
    txa

loc_7f1ce0:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1cea
    txa

loc_7f1cea:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1cf4
    txa

loc_7f1cf4:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1cfe
    txa

loc_7f1cfe:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1d08
    txa

loc_7f1d08:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1d12
    txa

loc_7f1d12:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1d1c
    txa

loc_7f1d1c:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1d26
    txa

loc_7f1d26:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1d30
    txa

loc_7f1d30:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1d3a
    txa

loc_7f1d3a:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1d44
    txa

loc_7f1d44:
    rol $6b
    rol a
    tax
    clc
    adc $69
    bcs loc_7f1d4e
    txa

loc_7f1d4e:
    lda $6b
    rol a
    sta $6f
    stz $71
    plp
    plx
    rts

sub_7f1d58:
.a8
    php
    sep #$20
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    jsr sub_7f1d7e
    rep #$20
.a16
    sta $50
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $50
    plp
.a8
    rtl

sub_7f1d7e:
    phx
    phy
    php
    rep #$30
.a16
    lda $08
    bne loc_7f1d8c
    lda #$4000
    bra loc_7f1df5

loc_7f1d8c:
    bpl loc_7f1d92
    eor #$ffff
    inc a

loc_7f1d92:
    sta $69
    lda $02
    bpl loc_7f1d9c
    eor #$ffff
    inc a

loc_7f1d9c:
    ldy #$0000
    cmp $69
    bne loc_7f1da8
    lda #$2000
    bra loc_7f1df5

loc_7f1da8:
    bmi loc_7f1db0
    dey
    ldx $69
    sta $69
    txa

loc_7f1db0:
    stz $6b
    lsr a
    ror $6b
    lsr a
    ror $6b
    sta $6d
    jsr sub_7f1ca0
    lda $6f
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    and #$fffe
    tax
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $0dfc74,x
    sta $69
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    cpy #$0000
    bpl loc_7f1df7
    lda #$4000
    sec
    sbc $69

loc_7f1df5:
    sta $69

loc_7f1df7:
    lda $02
    eor $08
    bpl loc_7f1e05
    lda #$0000
    sec
    sbc $69
    sta $69

loc_7f1e05:
    lda $08
    bpl loc_7f1e11
    lda $69
    clc
    adc #$8000
    sta $69

loc_7f1e11:
    lda $69
    plp
.a8
    ply
    plx
    rts
    .db $08,$20,$1d,$1e,$28,$6b,$da,$08,$e2,$20,$a5,$5e,$48,$22,$fe,$77
    .db $7f,$c2,$20,$a5,$02,$8f,$68,$00,$70,$a5,$08,$8f,$2c,$00,$70,$e2
    .db $20,$c2,$10,$a9,$01,$a2,$a6,$90,$22,$7b,$78,$7f,$c2,$20,$af,$40
    .db $00,$70,$85,$50,$e2,$20,$68,$85,$5e,$8f,$3a,$30,$00,$22,$4b,$78
    .db $7f,$c2,$20,$a5,$50,$28,$fa,$60,$86,$3a,$ae,$36,$14,$f0,$1c,$c9
    .db $00,$00,$f0,$20,$9b,$d5,$04,$f0,$05,$b4,$00,$bb,$d0,$f7,$e4,$3a
    .db $f0,$f7,$b4,$00,$8c,$36,$14,$9b,$a6,$3a,$6b,$a0,$00,$00,$8c,$36
    .db $14,$a6,$3a,$6b,$b4,$00,$f0,$f3,$bb,$e4,$3a,$f0,$f7,$b5,$22,$29
    .db $04,$00,$f0,$f0,$8e,$36,$14,$a6,$3a,$6b,$c9,$00,$00,$f0,$2e,$86
    .db $3a,$ae,$36,$14,$f0,$d5,$9b,$d5,$04,$f0,$05,$b4,$00,$bb,$d0,$f7
    .db $e4,$3a,$f0,$f7,$85,$5f,$e2,$20,$b5,$20,$25,$02,$c2,$20,$d0,$04
    .db $a5,$5f,$80,$e7,$b4,$00,$8c,$36,$14,$9b,$a6,$3a,$6b,$86,$3a,$ae
    .db $36,$14,$f0,$a7,$9b,$e2,$20,$e4,$3a,$f0,$06,$b5,$20,$25,$02,$d0
    .db $05,$b4,$00,$bb,$d0,$f1,$b4,$00,$8c,$36,$14,$9b,$a6,$3a,$c2,$20
    .db $6b

sub_7f1ef8:
.a16
    stx $04
    ldx $1436
    bne loc_7f1f02
    brl loc_7f1f3b

loc_7f1f02:
    cmp #$0000
    beq loc_7f1f41
    sta $0a
    stz $3c

loc_7f1f0b:
    cpx $04
    beq loc_7f1f2c
    lda $04,x
    cmp $0a
    bne loc_7f1f2c
    ldy $04
    jsl sub_7f249f
.a8
    rep #$20
.a16
    lda $12de
    cmp $3a
    bpl loc_7f1f2c
    cmp $3e
    bmi loc_7f1f2c
    sta $3a
    stx $3c

loc_7f1f2c:
    ldy $00,x
    tyx
    bne loc_7f1f0b
    ldy $00,x
    sty $1436
    ldy $3c
    ldx $04
    rtl

loc_7f1f3b:
    ldy #$0000
    ldx $04
    rtl

loc_7f1f41:
    stz $3c

loc_7f1f43:
    cpx $04
    beq loc_7f1f65
    lda $22,x
    and #$0004
    beq loc_7f1f65
    ldy $04
    jsl sub_7f249f
    rep #$20
    lda $12de
    cmp $3a
    bpl loc_7f1f65
    cmp $3e
    bmi loc_7f1f65
    sta $3a
    stx $3c

loc_7f1f65:
    ldy $00,x
    tyx
    bne loc_7f1f43
    sty $1436
    ldy $3c
    ldx $04
    rtl

loc_7f1f72:
    stx $04
    ldx $1436
    beq loc_7f1f3b
    cmp #$0000
    beq loc_7f1fad
    sta $0a
    stz $3c

loc_7f1f82:
    cpx $04
    beq loc_7f1f9f
    lda $04,x
    cmp $0a
    bne loc_7f1f9f
    ldy $04
    jsl sub_7f249f
    rep #$20
    lda $12de
    cmp $3a
    bpl loc_7f1f9f
    cmp $3e
    bpl loc_7f1fa4

loc_7f1f9f:
    ldy $00,x
    tyx
    bne loc_7f1f82

loc_7f1fa4:
    ldy $00,x
    sty $1436
    txy
    ldx $04
    rtl

loc_7f1fad:
    cpx $04
    beq loc_7f1fcb
    lda $22,x
    and #$0004
    beq loc_7f1fcb
    ldy $04
    jsl sub_7f249f
    rep #$20
    lda $12de
    cmp $3a
    bpl loc_7f1fcb
    cmp $3e
    bpl loc_7f1fd0

loc_7f1fcb:
    ldy $00,x
    tyx
    bne loc_7f1fad

loc_7f1fd0:
    ldy $00,x
    sty $1436
    txy
    ldx $04
    rtl
    .db $08,$ac,$a8,$12,$bb,$d5,$04,$f0,$07,$b4,$00,$d0,$f7,$a2,$00,$00
    .db $28,$6b

sub_7f1feb:
    stz $3c
    stx $04
    ldx $12a8

loc_7f1ff2:
    cpx $04
    bne loc_7f1ffa
    jml loc_7f20ed

loc_7f1ffa:
    lda $22,x
    and #$0004
    bne loc_7f2005
    jml loc_7f20ed

loc_7f2005:
    ldy $04
    jsl sub_7f249f
    rep #$20
    lda $12de
    cmp $3a
    bmi loc_7f2018
    jml loc_7f20ed

loc_7f2018:
    cmp $3e
    bpl loc_7f2020
    jml loc_7f20ed

loc_7f2020:
    rep #$20
    lda $0c,x
    sec
    sbc $000c,y
    sta $02
    lda $10,x
    sec
    sbc $0010,y
    sta $08
    sep #$20
.a8
    jsl sub_7f1d58
    sep #$20
    xba
    sta $02
    lda $97
    clc
    adc $0014,y
    clc
    adc $02
    cmp #$80
    ror a
    cmp $97
    bcc loc_7f2051
    jml loc_7f20eb

loc_7f2051:
    phx
    phy
    jsl sub_7f249f
    rep #$20
.a16
    lda $12de
    sta $08
    lda $000e,y
    sec
    sbc $0e,x
    sta $02
    jsl sub_7f1d58
    rep #$30
    ply
    plx
    sep #$20
.a8
    xba
    sta $02
    lda $e4
    clc
    adc $0012,y
    clc
    adc $02
    cmp #$80
    ror a
    cmp $e4
    bcc loc_7f2087
    jml loc_7f20eb

loc_7f2087:
    lda $0031,y
    and #$20
    cmp #$20
    beq loc_7f2094
    jml loc_7f20a0

loc_7f2094:
    lda $31,x
    and #$20
    cmp #$20
    bne loc_7f20a0
    jml loc_7f20eb

loc_7f20a0:
    lda $31,x
    and #$02
    beq loc_7f20aa
    jml loc_7f20eb

loc_7f20aa:
    lda $31,x
    and #$10
    cmp #$10
    beq loc_7f20b6
    jml loc_7f20eb

loc_7f20b6:
    lda $31,x
    and #$80
    cmp #$80
    bne loc_7f20c2
    jml loc_7f20eb

loc_7f20c2:
    lda $31,x
    and #$08
    cmp #$08
    bne loc_7f20ce
    jml loc_7f20eb

loc_7f20ce:
    lda $21,x
    and #$01
    beq loc_7f20d8
    jml loc_7f20eb

loc_7f20d8:
    lda $22,x
    and #$08
    beq loc_7f20e2
    jml loc_7f20eb

loc_7f20e2:
    rep #$20
.a16
    lda $12de
    sta $3a
    stx $3c

loc_7f20eb:
.a8
    rep #$20

loc_7f20ed:
.a16
    ldy $00,x
    tyx
    beq loc_7f20f6
    jml loc_7f1ff2

loc_7f20f6:
    sty $1436
    .db $a4

loc_7f20fa:
    bit $04a6,x
    rtl

loc_7f20fe:
    phx
    phy
    jsl sub_7f249f
    rep #$20
    lda $02
    clc
    adc $04
    sta $02
    lda $08
    clc
    adc $e4
    sta $08
    jsl sub_7f1d58
    rep #$20
    xba
    and #$00ff
    sep #$20
.a8
    rep #$10
    ply
    plx
    rtl

loc_7f2125:
    phx
    phy
    jsl sub_7f2441
    jsl sub_7f1d58
    rep #$20
.a16
    xba
    and #$00ff
    sep #$20
.a8
    rep #$10
    ply
    plx
    rtl
    .db $c2,$20,$86,$3a,$bb,$a4,$3a,$b5,$32,$85,$02,$b5,$34,$85,$08,$b5
    .db $36,$85,$97,$86,$3a,$bb,$a4,$3a,$b5,$32,$18,$65,$02,$95,$32,$b5
    .db $34,$18,$65,$08,$95,$34,$b5,$36,$18,$65,$97,$95,$36,$e2,$20,$6b
    .db $c2,$20,$b5,$10,$18,$6d,$5f,$14,$95,$10,$e2,$20,$6b,$c2,$20,$b9
    .db $10,$00,$18,$6d,$5f,$14,$99,$10,$00,$e2,$20,$6b

sub_7f2188:
    phx
    phy
    rep #$20
.a16
    lda $000c,y
    sec
    sbc $0c,x
    sta $02
    lda $0010,y
    sec
    sbc $10,x
    sta $08
    jsl sub_7f1d58
    rep #$30
    ply
    plx
    rtl

sub_7f21a5:
.a8
    phx
    phy
    jsl sub_7f249f
    rep #$20
.a16
    lda $12de
    sta $08
    lda $000e,y
    sec
    sbc $0e,x
    sta $02
    jsl sub_7f1d58
    rep #$30
    ply
    plx
    rtl

sub_7f21c3:
.a8
    phx
    phy
    jsl sub_7f2441
    rep #$20
.a16
    lda $12de
    sta $08
    lda $000a
    sec
    sbc $0e,x
    sta $02
    jsl sub_7f1d58
    rep #$20
    sta $3a
    xba
    and #$00ff
    sep #$20
.a8
    rep #$10
    ply
    plx
    rtl

sub_7f21eb:
    phx
    phy
    rep #$20
.a16
    lda $0004
    sec
    sbc $0c,x
    sta $02
    lda $00e4
    sec
    sbc $10,x
    sta $08
    jsl sub_7f1d58
    rep #$20
    sta $3a
    xba
    and #$00ff
    sep #$20
.a8
    rep #$10
    ply
    plx
    rtl

sub_7f2212:
    php
    rep #$30
.a16
    txa
    ldy $12a8

loc_7f2219:
    tyx
    cmp $06,x
    beq loc_7f2225
    ldy $00,x
    bne loc_7f2219
    ldx $14d6

loc_7f2225:
    txy
    tax
    plp
    rtl

sub_7f2229:
.a8
    phy
    ldy $06,x
    rep #$20
.a16
    lda $1cd8,x
    beq loc_7f223d
    stx $02
    cmp $02
    bne loc_7f223c
    brl loc_7f2315

loc_7f223c:
    tay

loc_7f223d:
    sep #$20
.a8
    rep #$20
.a16
    lda $1ccf,x
    sta $02
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd1,x
    sta $08
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd3,x
    sta $97
    sep #$20
.a8
    jsl sub_7f2bbe
    lda $1cd5,x
    clc
    adc $0012,y
    sta $12,x
    lda $1cd6,x
    clc
    adc $0014,y
    sta $14,x
    lda $1cd7,x
    clc
    adc $0016,y
    sta $16,x
    lda $0012,y
    sta $158f
    lda $0014,y
    sta $1591
    lda $0016,y
    sta $1593
    stz $158e
    stz $1590
    stz $1592
    phx
    phy
    sep #$20
    lda $5e
    pha
    jsl sub_7f77fe
    jsl sub_038c27
.i8
    rep #$20
.a16
    lda $153e
    sta $157c
    lda $1540
    sta $157e
    lda $1542
    sta $1580
    lda $1544
    sta $1582
    lda $1546
    sta $1584
    lda $1548
    sta $1586
    lda $154a
    sta $1588
    lda $154c
    sta $158a
    lda $154e
    sta $158c
    jsl sub_038b85
    sep #$20
.a8
    rep #$10
.i16
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    ply
    plx
    sep #$20
    rep #$10
    rep #$20
.a16
    lda $0c,x
    clc
    adc $b7
    sta $0c,x
    sep #$20
.a8
    rep #$20
.a16
    lda $0e,x
    clc
    adc $b9
    sta $0e,x
    sep #$20
.a8
    rep #$20
.a16
    lda $10,x
    clc
    adc $bb
    sta $10,x
    sep #$20

loc_7f2315:
.a8
    sep #$20
    ply
    rtl

sub_7f2319:
    phy
    phx
    lda $5e
    pha
    jsl sub_7f77fe

loc_7f2322:
    ldy $29,x
    beq loc_7f232d
    tyx
    jsl sub_7f2229
    bra loc_7f2322

loc_7f232d:
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    plx
    ply
    rtl

sub_7f233b:
    sep #$20
    sta $cf2a
    ldy $1cec,x
    beq loc_7f235f
    lda $6a61,y
    sta $cf29

loc_7f234b:
    iny
    lda $6a61,y
    cmp $cf2a
    beq loc_7f235f
    iny
    iny
    iny
    dec $cf29
    bne loc_7f234b
    ldy #$0000

loc_7f235f:
    rtl

sub_7f2360:
    sep #$20
    sta $cf2a
    ldy $1cec,x
    beq loc_7f239b
    lda $6a61,y
    sta $cf29

loc_7f2370:
    iny
    lda $6a61,y
    cmp $cf2a
    beq loc_7f23d1
    iny
    iny
    iny
    dec $cf29
    bne loc_7f2370
    ldy $1cec,x
    lda $6a61,y
    inc a
    rep #$20
.a16
    and #$00ff
    asl a
    asl a
    inc a
    rep #$20
    jsl sub_7f1b00
    tay
    sep #$20
.a8
    bra loc_7f23ac

loc_7f239b:
    rep #$20
.a16
    lda #$0005
    jsl sub_7f194e
    tay
    sep #$20
.a8
    lda #$00
    sta $6a61,y

loc_7f23ac:
    rep #$20
.a16
    tya
    sta $1cec,x
    sep #$20
.a8
    lda $6a61,y
    inc a
    sta $6a61,y
    dec a
    rep #$20
.a16
    and #$00ff
    asl a
    asl a
    clc
    adc $1cec,x
    inc a
    tay
    sep #$20
.a8
    lda $cf2a
    sta $6a61,y

loc_7f23d1:
    rtl
    .db $85,$3a,$b5,$18,$38,$e5,$5f,$f0,$2d,$10,$03,$49,$ff,$1a,$c5,$3a
    .db $10,$04,$a5,$5f,$80,$1c,$b5,$18,$c5,$5f,$f0,$16,$30,$0b,$38,$e5
    .db $3a,$c5,$5f,$10,$0d,$a5,$5f,$80,$09,$18,$65,$3a,$c5,$5f,$30,$02
    .db $a5,$5f,$95,$18,$18,$6b,$38,$6b,$c2,$20,$b9,$0c,$00,$18,$65,$04
    .db $38,$f5,$0c,$85,$02,$10,$06,$a9,$00,$00,$38,$e5,$02,$8d,$de,$12
    .db $b9,$10,$00,$18,$65,$e4,$38,$f5,$10,$85,$08,$30,$06,$18,$6d,$de
    .db $12,$80,$06,$38,$ad,$de,$12,$e5,$08,$8d,$de,$12,$e2,$20,$6b

sub_7f2441:
    rep #$20
.a16
    lda $04
    sec
    sbc $0c,x
    sta $02
    bpl loc_7f2452
    lda #$0000
    sec
    sbc $02

loc_7f2452:
    sta $12de
    lda $e4
    sec
    sbc $10,x
    sta $08
    bmi loc_7f2464
    clc
    adc $12de
    bra loc_7f246a

loc_7f2464:
    sec
    lda $12de
    sbc $08

loc_7f246a:
    sta $12de
    sep #$20
.a8
    rtl
    .db $c2,$20,$a5,$04,$38,$f5,$0c,$85,$02,$10,$06,$a9,$00,$00,$38,$e5
    .db $02,$8d,$de,$12,$a5,$0a,$38,$f5,$0e,$85,$08,$30,$06,$18,$6d,$de
    .db $12,$80,$06,$38,$ad,$de,$12,$e5,$08,$8d,$de,$12,$e2,$20,$6b

sub_7f249f:
    rep #$20
.a16
    lda $000c,y
    sec
    sbc $0c,x
    bpl loc_7f24ad
    eor #$ffff
    inc a

loc_7f24ad:
    sta $02
    lda $0010,y
    sec
    sbc $10,x
    bpl loc_7f24bb
    eor #$ffff
    inc a

loc_7f24bb:
    sta $08
    rep #$20
    lda $02
    cmp #$8000
    ror a
    sta $02
    lda $08
    cmp #$8000
    ror a
    sta $08
    lda $08
    clc
    adc $02
    asl a
    sta $12de
    lda $08
    cmp $02
    bmi loc_7f24e2
    lda $08
    bra loc_7f24e4

loc_7f24e2:
    lda $02

loc_7f24e4:
    clc
    adc $12de
    sta $02
    sta $08
    lda $02
    cmp #$8000
    ror a
    clc
    adc $08
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    sta $12de
    sep #$20
.a8
    rtl

sub_7f2503:
.a16
    rep #$20
    lda $000c,y
    sec
    sbc $0c,x
    sta $02
    bpl loc_7f2515
    lda #$0000
    sec
    sbc $02

loc_7f2515:
    sta $14fa
    lda $000e,y
    sec
    sbc $0e,x
    sta $08
    bmi loc_7f2528
    clc
    adc $14fa
    bra loc_7f252e

loc_7f2528:
    sec
    lda $14fa
    sbc $08

loc_7f252e:
    sta $14fa
    sep #$20
.a8
    rtl

sub_7f2534:
.a16
    cmp $3a
    bne loc_7f253c
    jml loc_7f2921

loc_7f253c:
    sec
    sbc $3a
    cmp #$0000
    bmi loc_7f254e
    cmp #$0002
    bpl loc_7f2556
    lda #$0002
    bra loc_7f2556

loc_7f254e:
    cmp #$fffe
    bmi loc_7f2556
    lda #$fffe

loc_7f2556:
    cmp #$8000
    ror a
    bpl loc_7f255f
    adc #$0000

loc_7f255f:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

sub_7f2567:
    cmp $3a
    bne loc_7f256f
    jml loc_7f2921

loc_7f256f:
    sec
    sbc $3a
    cmp #$0000
    bmi loc_7f2581
    cmp #$0004
    bpl loc_7f2589
    lda #$0004
    bra loc_7f2589

loc_7f2581:
    cmp #$fffc
    bmi loc_7f2589
    lda #$fffc

loc_7f2589:
    cmp #$8000
    ror a
    bpl loc_7f2592
    adc #$0000

loc_7f2592:
    cmp #$8000
    ror a
    bpl loc_7f259b
    adc #$0000

loc_7f259b:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

sub_7f25a3:
    cmp $3a
    bne loc_7f25ab
    jml loc_7f2921

loc_7f25ab:
    sec
    sbc $3a
    cmp #$0000
    bmi loc_7f25bd
    cmp #$0008
    bpl loc_7f25c5
    lda #$0008
    bra loc_7f25c5

loc_7f25bd:
    cmp #$fff8
    bmi loc_7f25c5
    lda #$fff8

loc_7f25c5:
    cmp #$8000
    ror a
    bpl loc_7f25ce
    adc #$0000

loc_7f25ce:
    cmp #$8000
    ror a
    bpl loc_7f25d7
    adc #$0000

loc_7f25d7:
    cmp #$8000
    ror a
    bpl loc_7f25e0
    adc #$0000

loc_7f25e0:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

sub_7f25e8:
    cmp $3a
    bne loc_7f25f0
    jml loc_7f2921

loc_7f25f0:
    sec
    sbc $3a
    cmp #$0000
    bmi loc_7f2602
    cmp #$0010
    bpl loc_7f260a
    lda #$0010
    bra loc_7f260a

loc_7f2602:
    cmp #$fff0
    bmi loc_7f260a
    lda #$fff0

loc_7f260a:
    cmp #$8000
    ror a
    bpl loc_7f2613
    adc #$0000

loc_7f2613:
    cmp #$8000
    ror a
    bpl loc_7f261c
    adc #$0000

loc_7f261c:
    cmp #$8000
    ror a
    bpl loc_7f2625
    adc #$0000

loc_7f2625:
    cmp #$8000
    ror a
    bpl loc_7f262e
    adc #$0000

loc_7f262e:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

sub_7f2636:
    cmp $3a
    bne loc_7f263e
    jml loc_7f2921

loc_7f263e:
    sec
    sbc $3a
    cmp #$0000
    bmi loc_7f2650
    cmp #$0020
    bpl loc_7f2658
    lda #$0020
    bra loc_7f2658

loc_7f2650:
    cmp #$ffe0
    bmi loc_7f2658
    lda #$ffe0

loc_7f2658:
    cmp #$8000
    ror a
    bpl loc_7f2661
    adc #$0000

loc_7f2661:
    cmp #$8000
    ror a
    bpl loc_7f266a
    adc #$0000

loc_7f266a:
    cmp #$8000
    ror a
    bpl loc_7f2673
    adc #$0000

loc_7f2673:
    cmp #$8000
    ror a
    bpl loc_7f267c
    adc #$0000

loc_7f267c:
    cmp #$8000
    ror a
    bpl loc_7f2685
    adc #$0000

loc_7f2685:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

loc_7f268d:
    cmp $3a
    bne loc_7f2695
    jml loc_7f2921

loc_7f2695:
    sec
    sbc $3a
    cmp #$0000
    bmi loc_7f26a7
    cmp #$0040
    bpl loc_7f26af
    lda #$0040
    bra loc_7f26af

loc_7f26a7:
    cmp #$ffc0
    bmi loc_7f26af
    lda #$ffc0

loc_7f26af:
    cmp #$8000
    ror a
    bpl loc_7f26b8
    adc #$0000

loc_7f26b8:
    cmp #$8000
    ror a
    bpl loc_7f26c1
    adc #$0000

loc_7f26c1:
    cmp #$8000
    ror a
    bpl loc_7f26ca
    adc #$0000

loc_7f26ca:
    cmp #$8000
    ror a
    bpl loc_7f26d3
    adc #$0000

loc_7f26d3:
    cmp #$8000
    ror a
    bpl loc_7f26dc
    adc #$0000

loc_7f26dc:
    cmp #$8000
    ror a
    bpl loc_7f26e5
    adc #$0000

loc_7f26e5:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

loc_7f26ed:
    cmp $3a
    bne loc_7f26f5
    jml loc_7f2921

loc_7f26f5:
    sec
    sbc $3a
    cmp #$0000
    bmi loc_7f2707
    cmp #$0080
    bpl loc_7f270f
    lda #$0080
    bra loc_7f270f

loc_7f2707:
    cmp #$ff80
    bmi loc_7f270f
    lda #$ff80

loc_7f270f:
    cmp #$8000
    ror a
    bpl loc_7f2718
    adc #$0000

loc_7f2718:
    cmp #$8000
    ror a
    bpl loc_7f2721
    adc #$0000

loc_7f2721:
    cmp #$8000
    ror a
    bpl loc_7f272a
    adc #$0000

loc_7f272a:
    cmp #$8000
    ror a
    bpl loc_7f2733
    adc #$0000

loc_7f2733:
    cmp #$8000
    ror a
    bpl loc_7f273c
    adc #$0000

loc_7f273c:
    cmp #$8000
    ror a
    bpl loc_7f2745
    adc #$0000

loc_7f2745:
    cmp #$8000
    ror a
    bpl loc_7f274e
    adc #$0000

loc_7f274e:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

loc_7f2756:
    cmp $3a
    bne loc_7f275e
    jml loc_7f2921

loc_7f275e:
    sec
    sbc $3a
    cmp #$3000
    php
    cmp #$1002
    asl a
    lda #$8002
    asl $c9
    inc $0230,x
    lda #$c9fe
    bra loc_7f27e0
    .db $10,$02,$69,$00,$18,$65,$3a,$85,$3a,$82,$9b,$01

sub_7f2782:
.a8
    cmp $3a
    bne loc_7f278a
    jml loc_7f2921

loc_7f278a:
    sec
    sbc $3a
    cmp #$00
    bmi loc_7f2799
    cmp #$04
    bpl loc_7f279f
    lda #$04
    bra loc_7f279f

loc_7f2799:
    cmp #$fc
    bmi loc_7f279f
    lda #$fc

loc_7f279f:
    cmp #$80
    ror a
    bpl loc_7f27a6
    adc #$00

loc_7f27a6:
    cmp #$80
    ror a
    bpl loc_7f27ad
    adc #$00

loc_7f27ad:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

sub_7f27b5:
    cmp $3a
    bne loc_7f27bd
    jml loc_7f2921

loc_7f27bd:
    sec
    sbc $3a
    cmp #$00
    bmi loc_7f27cc
    cmp #$08
    bpl loc_7f27d2
    lda #$08
    bra loc_7f27d2

loc_7f27cc:
    cmp #$f8
    bmi loc_7f27d2
    lda #$f8

loc_7f27d2:
    cmp #$80
    ror a
    bpl loc_7f27d9
    adc #$00

loc_7f27d9:
    cmp #$80
    ror a
    bpl loc_7f27e0
    adc #$00

loc_7f27e0:
    cmp #$80
    ror a
    bpl loc_7f27e7
    adc #$00

loc_7f27e7:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

loc_7f27ef:
    cmp $3a
    bne loc_7f27f7
    jml loc_7f2921

loc_7f27f7:
    sec
    sbc $3a
    cmp #$00
    bmi loc_7f2806
    cmp #$10
    bpl loc_7f280c
    lda #$10
    bra loc_7f280c

loc_7f2806:
    cmp #$f0
    bmi loc_7f280c
    lda #$f0

loc_7f280c:
    cmp #$80
    ror a
    bpl loc_7f2813
    adc #$00

loc_7f2813:
    cmp #$80
    ror a
    bpl loc_7f281a
    adc #$00

loc_7f281a:
    cmp #$80
    ror a
    bpl loc_7f2821
    adc #$00

loc_7f2821:
    cmp #$80
    ror a
    bpl loc_7f2828
    adc #$00

loc_7f2828:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

loc_7f2830:
    cmp $3a
    bne loc_7f2838
    jml loc_7f2921

loc_7f2838:
    sec
    sbc $3a
    cmp #$00
    bmi loc_7f2847
    cmp #$20
    bpl loc_7f284d
    lda #$20
    bra loc_7f284d

loc_7f2847:
    cmp #$e0
    bmi loc_7f284d
    lda #$e0

loc_7f284d:
    cmp #$80
    ror a
    bpl loc_7f2854
    adc #$00

loc_7f2854:
    cmp #$80
    ror a
    bpl loc_7f285b
    adc #$00

loc_7f285b:
    cmp #$80
    ror a
    bpl loc_7f2862
    adc #$00

loc_7f2862:
    cmp #$80
    ror a
    bpl loc_7f2869
    adc #$00

loc_7f2869:
    cmp #$80
    ror a
    bpl loc_7f2870
    adc #$00

loc_7f2870:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

loc_7f2878:
    cmp $3a
    bne loc_7f2880
    jml loc_7f2921

loc_7f2880:
    sec
    sbc $3a
    cmp #$00
    bmi loc_7f288f
    cmp #$40
    bpl loc_7f2895
    lda #$40
    bra loc_7f2895

loc_7f288f:
    cmp #$c0
    bmi loc_7f2895
    lda #$c0

loc_7f2895:
    cmp #$80
    ror a
    bpl loc_7f289c
    adc #$00

loc_7f289c:
    cmp #$80
    ror a
    bpl loc_7f28a3
    adc #$00

loc_7f28a3:
    cmp #$80
    ror a
    bpl loc_7f28aa
    adc #$00

loc_7f28aa:
    cmp #$80
    ror a
    bpl loc_7f28b1
    adc #$00

loc_7f28b1:
    cmp #$80
    ror a
    bpl loc_7f28b8
    adc #$00

loc_7f28b8:
    cmp #$80
    ror a
    bpl loc_7f28bf
    adc #$00

loc_7f28bf:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

loc_7f28c7:
    cmp $3a
    bne loc_7f28cf
    jml loc_7f2921

loc_7f28cf:
    sec
    sbc $3a
    cmp #$00
    bmi loc_7f28de
    cmp #$80
    bpl loc_7f28e4
    lda #$80
    bra loc_7f28e4

loc_7f28de:
    cmp #$80
    bmi loc_7f28e4
    lda #$80

loc_7f28e4:
    cmp #$80
    ror a
    bpl loc_7f28eb
    adc #$00

loc_7f28eb:
    cmp #$80
    ror a
    bpl loc_7f28f2
    adc #$00

loc_7f28f2:
    cmp #$80
    ror a
    bpl loc_7f28f9
    adc #$00

loc_7f28f9:
    cmp #$80
    ror a
    bpl loc_7f2900
    adc #$00

loc_7f2900:
    cmp #$80
    ror a
    bpl loc_7f2907
    adc #$00

loc_7f2907:
    cmp #$80
    ror a
    bpl loc_7f290e
    adc #$00

loc_7f290e:
    cmp #$80
    ror a
    bpl loc_7f2915
    adc #$00

loc_7f2915:
    clc
    adc $3a
    sta $3a
    brl loc_7f291d

loc_7f291d:
    lda $3a
    clc
    rtl

loc_7f2921:
    lda $3a
    sec
    rtl

sub_7f2925:
    rep #$20
.a16
    txy
    ldx $12aa
    bne loc_7f2933
    sep #$20
.a8
    tyx
    jmp loc_7f2969

loc_7f2933:
.a16
    lda $00,x
    sta $12aa
    tya
    bne loc_7f2947
    lda $12a8
    sta $00,x
    stz $02,x
    stx $12a8
    bra loc_7f2953

loc_7f2947:
    lda $0000,y
    sta $00,x
    txa
    sta $0000,y
    tya
    sta $02,x

loc_7f2953:
    ldy $00,x
    beq loc_7f295b
    txa
    sta $0002,y

loc_7f295b:
    sep #$20
.a8
    phx
    ldx $12aa
    bne loc_7f2966
    jsr sub_7f2979

loc_7f2966:
    plx
    sec
    rtl

loc_7f2969:
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_008032
    clc
    rtl

sub_7f2979:
    phx
    phy
    ldx $12a8

loc_7f297e:
    ldy $00,x
    beq loc_7f29b9
    phy
    lda $20,x
    and #$10
    beq loc_7f298d
    jml loc_7f29ac

loc_7f298d:
    rep #$20
.a16
    lda $04,x
    cmp #$bd98
    beq loc_7f29ac
    cmp #$bdb4
    beq loc_7f29ac
    cmp #$bdd0
    beq loc_7f29ac
    cmp #$bdec
    beq loc_7f29ac
    cmp #$be08
    beq loc_7f29ac
    bra loc_7f29b4

loc_7f29ac:
.a8
    sep #$20
    lda $25,x
    ora #$08
    sta $25,x

loc_7f29b4:
    sep #$20
    plx
    bra loc_7f297e

loc_7f29b9:
    ply
    plx
    rts

sub_7f29bc:
    phx
    tyx
    ply
    phb
    lda #$7e
    pha
    plb
    lda #$00
    phy
    phx
    ldy #$003b

loc_7f29cb:
    sta $04,x
    inx
    dey
    bne loc_7f29cb
    plx
    phx
    ldy #$003f

loc_7f29d6:
    sta $1cc1,x
    inx
    dey
    bne loc_7f29d6
    plx
    ply
    lda $08,x
    ora #$10
    sta $08,x
    lda $09,x
    ora #$08
    sta $09,x
    lda $31,x
    ora #$04
    sta $31,x
    lda $22,x
    ora #$04
    sta $22,x
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    bne loc_7f2a06
    jmp loc_7f2a0c

loc_7f2a06:
    lda $26,x
    ora #$08
    sta $26,x

loc_7f2a0c:
    lda $190e
    sta $1cf0,x
    plb
    phx
    tyx
    ply
    rtl

sub_7f2a17:
    stx $3a
    ldx $12a8
    jsl sub_7f2925
    bcs loc_7f2a29
    ldy #$0000
    ldx $3a
    clc
    rtl

loc_7f2a29:
    txy
    ldx $3a
    sep #$20
    jsl sub_7f29bc
    rep #$20
.a16
    lda $5f
    sta $0004,y
    sep #$20
.a8
    sec
    rtl

sub_7f2a3d:
    sta $5f
    lda $5f
    sta $0013,y
    stx $06,y
    rep #$20
.a16
    lda #$0000
    sta $0029,y
    sep #$20
.a8
    rep #$20
.a16
    sty $3a
    txa

loc_7f2a55:
    tay
    lda $0029,y
    bne loc_7f2a55
    lda $3a
    sta $0029,y
    ldy $3a
    sep #$20
.a8
    lda $23,x
    ora #$10
    sta $23,x
    lda $0023,y
    ora #$04
    sta $0023,y
    lda $0025,y
    ora #$01
    sta $0025,y
    rtl

sub_7f2a7b:
    sta $192a
    phx

loc_7f2a7f:
    ldy $29,x
    beq loc_7f2a8e
    lda $0013,y
    cmp $192a
    beq loc_7f2a8e
    tyx
    bra loc_7f2a7f

loc_7f2a8e:
    plx
    rtl
    .db $8d,$2a,$19,$5a,$b6,$29,$f0,$0a,$b5,$13,$cd,$2a,$19,$f0,$03,$9b
    .db $80,$f2,$7a,$6b

sub_7f2aa4:
    phy
    phx
    sep #$20
    lda $23,x
    and #$10
    bne loc_7f2ab2
    jml loc_7f2b8c

loc_7f2ab2:
    lda $23,x
    and #$ef
    sta $23,x
    ldy $29,x
    tyx
    bne loc_7f2ac0
    brl loc_7f2b8c

loc_7f2ac0:
    ldy $29,x
    phy
    lda $23,x
    and #$fb
    sta $23,x
    rep #$20
.a16
    lda #$0000
    sta $06,x
    sep #$20
.a8
    lda $25,x
    and #$01
    bne loc_7f2adc
    jml loc_7f2b85

loc_7f2adc:
    brl loc_7f2b7b
    .db $da,$c2,$20,$ae,$85,$12,$9b,$ae,$83,$12,$d0,$04,$bb,$4c,$76,$2b
    .db $bd,$00,$00,$8d,$83,$12,$98,$d0,$0e,$ad,$85,$12,$9d,$00,$00,$9e
    .db $02,$00,$8e,$85,$12,$80,$0e,$b9,$00,$00,$9d,$00,$00,$8a,$99,$00
    .db $00,$98,$9d,$02,$00,$bc,$00,$00,$f0,$04,$8a,$99,$02,$00,$9b,$fa
    .db $b5,$0c,$99,$04,$00,$b5,$0e,$99,$06,$00,$b5,$10,$99,$08,$00,$b5
    .db $04,$99,$0d,$00,$8a,$99,$13,$00,$98,$9d,$e6,$1c,$b5,$26,$29,$01
    .db $00,$f0,$04,$5c,$59,$2b,$7f,$b5,$19,$99,$0f,$00,$e2,$20,$b5,$1b
    .db $99,$11,$00,$a9,$01,$99,$12,$00,$80,$0c,$b5,$2b,$99,$0f,$00,$e2
    .db $20,$a9,$03,$99,$12,$00,$b5,$12,$99,$0a,$00,$b5,$14,$99,$0b,$00
    .db $b5,$16,$99,$0c,$00,$80,$0f,$e2,$20,$fa,$80,$0a

loc_7f2b7b:
    lda $21,x
    ora #$01
    sta $21,x
    lda #$00
    sta $2d,x

loc_7f2b85:
    ply
    tyx
    beq loc_7f2b8c
    brl loc_7f2ac0

loc_7f2b8c:
    plx
    ply
    rtl

loc_7f2b8f:
    lda $1b,x
    pha
    rep #$20
.a16
    bne loc_7f2b9f
    lda $19,x
    beq loc_7f2ba6
    dec a
    pha
    sep #$20
.a8
    rtl

loc_7f2b9f:
.a16
    lda $19,x
    dec a
    pha
    sep #$20
.a8
    rtl

loc_7f2ba6:
.a16
    sep #$20
.a8
    pla
    rtl

sub_7f2baa:
    rep #$20
.a16
    lda $0c,x
    sta $000c,y
    lda $0e,x
    sta $000e,y
    lda $10,x
    sta $0010,y
    sep #$20
.a8
    rtl

sub_7f2bbe:
    rep #$20
.a16
    lda $000c,y
    sta $0c,x
    lda $000e,y
    sta $0e,x
    lda $0010,y
    sta $10,x
    sep #$20
.a8
    rtl

sub_7f2bd2:
    lda $12,x
    sta $0012,y
    lda $14,x
    sta $0014,y
    lda $16,x
    sta $0016,y
    rtl

sub_7f2be2:
    lda $0012,y
    sta $12,x
    lda $0014,y
    sta $14,x
    lda $0016,y
    sta $16,x
    rtl
    .db $c2,$20,$06,$02,$06,$08,$06,$97,$06,$02,$06,$08,$06,$97,$80,$0a
    .db $c2,$20,$06,$02,$06,$08,$06,$97,$c2,$20,$b5,$0c,$18,$65,$02,$95
    .db $0c,$b5,$0e,$18,$65,$08,$95,$0e,$b5,$10,$18,$65,$97,$95,$10,$e2
    .db $20,$6b

sub_7f2c24:
    rep #$20
.a16
    lda $0c,x
    clc
    adc $32,x
    sta $0c,x
    lda $0e,x
    clc
    adc $34,x
    sta $0e,x
    lda $10,x
    clc
    adc $36,x
    sta $10,x
    sep #$20
.a8
    rtl
    .db $b5,$18,$85,$85,$8b,$86,$7d,$84,$7f,$64,$08,$64,$09,$b5,$14,$aa
    .db $e2,$10,$bf,$92,$3d,$7f,$85,$81,$bf,$d2,$3d,$7f,$85,$82,$a5,$85
    .db $30,$18,$0a,$8f,$02,$42,$00,$a5,$81,$30,$35,$8f,$03,$42,$00,$ea
    .db $ea,$ea,$ea,$af,$17,$42,$00,$4c,$ae,$2c,$49,$ff,$1a,$0a,$8f,$02
    .db $42,$00,$a5,$81,$30,$08,$8f,$03,$42,$00,$ea,$4c,$a7,$2c,$49,$ff
    .db $1a,$8f,$03,$42,$00,$ea,$ea,$ea,$ea,$af,$17,$42,$00,$4c,$ae,$2c
    .db $49,$ff,$1a,$8f,$03,$42,$00,$ea,$ea,$a9,$00,$38,$ef,$17,$42,$00
    .db $aa,$a2,$00,$85,$02,$c9,$00,$10,$01,$ca,$86,$03,$a5,$85,$30,$18
    .db $0a,$8f,$02,$42,$00,$a5,$82,$30,$35,$8f,$03,$42,$00,$ea,$ea,$ea
    .db $ea,$af,$17,$42,$00,$4c,$0c,$2d,$49,$ff,$1a,$0a,$8f,$02,$42,$00
    .db $a5,$82,$30,$08,$8f,$03,$42,$00,$ea,$4c,$05,$2d,$49,$ff,$1a,$8f
    .db $03,$42,$00,$ea,$ea,$ea,$ea,$af,$17,$42,$00,$4c,$0c,$2d,$49,$ff
    .db $1a,$8f,$03,$42,$00,$ea,$ea,$a9,$00,$38,$ef,$17,$42,$00,$aa,$a2
    .db $00,$85,$97,$c9,$00,$10,$01,$ca,$86,$98,$c2,$10,$a6,$7d,$a4,$7f
    .db $6b

sub_7f2d1f:
    jsl sub_7f306e
    rep #$20
.a16
    lda $02
    sta $32,x
    lda $08
    sta $34,x
    lda $97
    sta $36,x
    sep #$20
.a8
    rtl

loc_7f2d34:
    jsl sub_7f306e
    rep #$20
.a16
    lda $02
    asl a
    sta $32,x
    lda $08
    asl a
    sta $34,x
    lda $97
    asl a
    sta $36,x
    sep #$20
.a8
    rtl

loc_7f2d4c:
    jsl sub_7f306e
    rep #$20
.a16
    lda $02
    asl a
    asl a
    sta $32,x
    lda $08
    asl a
    asl a
    sta $34,x
    lda $97
    asl a
    asl a
    sta $36,x
    sep #$20
.a8
    rtl

loc_7f2d67:
    jsl sub_7f306e
    rep #$20
.a16
    lda $02
    asl a
    asl a
    asl a
    sta $32,x
    lda $08
    asl a
    asl a
    asl a
    sta $34,x
    lda $97
    asl a
    asl a
    asl a
    sta $36,x
    sep #$20
.a8
    rtl
    .db $b5,$18,$85,$85,$b5,$14

sub_7f2d8b:
    stx $7d
    sty $7f
    stz $08
    stz $09
    eor #$ff
    inc a
    tax
    sep #$10
.i8
    inx
    iny
    lda $7f3d92,x
    sta $81
    lda $7f3dd2,x
    sta $82
    lda $85
    bmi loc_7f2dc3
    asl a
    sta $004202
    lda $81
    bmi loc_7f2de9
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f2df9

loc_7f2dc3:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $81
    bmi loc_7f2dd7
    sta $004203
    nop
    jmp loc_7f2df2

loc_7f2dd7:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f2df9

loc_7f2de9:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f2df2:
    lda #$00
    sec
    sbc $004217

loc_7f2df9:
    tax
    ldx #$00
    sta $02
    cmp #$00
    bpl loc_7f2e03
    dex

loc_7f2e03:
    stx $03
    lda $85
    bmi loc_7f2e21
    asl a
    sta $004202
    lda $82
    bmi loc_7f2e47
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f2e57

loc_7f2e21:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $82
    bmi loc_7f2e35
    sta $004203
    nop
    jmp loc_7f2e50

loc_7f2e35:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f2e57

loc_7f2e47:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f2e50:
    lda #$00
    sec
    sbc $004217

loc_7f2e57:
    tax
    ldx #$00
    sta $97
    cmp #$00
    bpl loc_7f2e61
    dex

loc_7f2e61:
    stx $98
    rep #$10
.i16
    ldx $7d
    ldy $7f
    rtl
    .incbin "data/012e6a-01306e.bin"

sub_7f306e:
    stz $03
    stz $09
    stz $98
    stx $7d
    sty $7f
    lda $1512
    eor #$ff
    inc a
    tay
    lda $1511
    tax
    sep #$10
.i8
    phx
    tyx
    lda $7f3d92,x
    sta $81
    lda $7f3dd2,x
    sta $82
    plx
    lda $7f3d92,x
    sta $89
    lda $7f3dd2,x
    sta $8a
    lda $85
    bmi loc_7f30bc
    asl a
    sta $004202
    lda $81
    bmi loc_7f30e2
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f30f2

loc_7f30bc:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $81
    bmi loc_7f30d0
    sta $004203
    nop
    jmp loc_7f30eb

loc_7f30d0:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f30f2

loc_7f30e2:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f30eb:
    lda #$00
    sec
    sbc $004217

loc_7f30f2:
    tax
    sta $02
    lda $02
    bmi loc_7f3111
    asl a
    sta $004202
    lda $8a
    bmi loc_7f3137
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3147

loc_7f3111:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $8a
    bmi loc_7f3125
    sta $004203
    nop
    jmp loc_7f3140

loc_7f3125:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3147

loc_7f3137:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3140:
    lda #$00
    sec
    sbc $004217

loc_7f3147:
    tax
    sta $02
    cmp #$00
    bpl loc_7f3150
    dec $03

loc_7f3150:
    lda $85
    bmi loc_7f316c
    asl a
    sta $004202
    lda $82
    bmi loc_7f3192
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f31a2

loc_7f316c:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $82
    bmi loc_7f3180
    sta $004203
    nop
    jmp loc_7f319b

loc_7f3180:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f31a2

loc_7f3192:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f319b:
    lda #$00
    sec
    sbc $004217

loc_7f31a2:
    tax
    sta $97
    lda $97
    bmi loc_7f31c1
    asl a
    sta $004202
    lda $8a
    bmi loc_7f31e7
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f31f7

loc_7f31c1:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $8a
    bmi loc_7f31d5
    sta $004203
    nop
    jmp loc_7f31f0

loc_7f31d5:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f31f7

loc_7f31e7:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f31f0:
    lda #$00
    sec
    sbc $004217

loc_7f31f7:
    tax
    sta $97
    cmp #$00
    bpl loc_7f3200
    dec $98

loc_7f3200:
    lda $85
    bmi loc_7f321c
    asl a
    sta $004202
    lda $89
    bmi loc_7f3242
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3252

loc_7f321c:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $89
    bmi loc_7f3230
    sta $004203
    nop
    jmp loc_7f324b

loc_7f3230:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3252

loc_7f3242:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f324b:
    lda #$00
    sec
    sbc $004217

loc_7f3252:
    tax
    sta $08
    cmp #$00
    bpl loc_7f325b
    dec $09

loc_7f325b:
    rep #$20
.a16
    lda $02
    sta $02
    lda $08
    sta $08
    lda $97
    sta $97
    sep #$20
.a8
    rep #$10
.i16
    ldx $7d
    ldy $7f
    rtl
    .db $85,$02,$bd,$c7,$1c,$18,$65,$02,$9d,$c7,$1c,$6b,$9d,$c7,$1c,$6b

loc_7f3282:
    sty $16ca
    lda $1cc7,x
    rep #$20
.a16
    and #$00ff
    asl a
    asl a
    tay
    sep #$20
.a8
    lda [$54],y
    pha
    iny
    rep #$20
.a16
    lda [$54],y
    pha
    sep #$20
.a8
    ldy $16ca
    rtl

sub_7f32a1:
    php
    sep #$20
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$30
.a16
    stz $18d9
    lda $1b96
    bit #$0100
    bne loc_7f333b
    ldx $12a8
    beq loc_7f333b
    ldy #$0000

loc_7f32c6:
    phx
    lda $31,x
    and #$0004
    bne loc_7f3335
    lda $21,x
    and #$0001
    bne loc_7f3335
    lda $25,x
    and #$0008
    bne loc_7f3335
    lda $2d,x
    and #$00ff
    beq loc_7f3335
    lda $08,x
    bit #$0001
    bne loc_7f3335
    phx
    lda $04,x
    tyx
    tay
    pla
    sta $7e2f42,x
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $0008,y
    sta $7e2f44,x
    lda $000a,y
    sta $7e2f46,x
    lda $000c,y
    sta $7e2f48,x
    lda $000e,y
    sta $7e2f4a,x
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    inc $18d9
    txa
    clc
    adc #$000a
    tay

loc_7f3335:
    plx
    lda $00,x
    tax
    bne loc_7f32c6

loc_7f333b:
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    plp
    rtl

sub_7f3346:
    jsl sub_7f3356
    rtl

loc_7f334b:
    phx
    tyx
    ply
    jsl sub_7f3346
    phx
    tyx
    ply
    rtl

sub_7f3356:
    jsr sub_7f335a
    rtl

sub_7f335a:
    phx
    phy
    php
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    jsl sub_7f3425
    jsl sub_7f33b2
.a16
    jsl sub_7f344f
.a8
    rep #$20
.a16
    jsl sub_7f34cb
    ldy $02,x
    bne loc_7f338d
    ldy $00,x
    sty $12a8
    lda #$0000
    sta $0002,y
    bra loc_7f339d

loc_7f338d:
    phx
    lda $00,x
    tax
    sta $0000,y
    cmp #$0000
    beq loc_7f339c
    tya
    sta $02,x

loc_7f339c:
    plx

loc_7f339d:
    lda $12aa
    sta $00,x
    stx $12aa
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    plp
    ply
    plx
    rts

sub_7f33b2:
    phb
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    rep #$20
.a16
    ldy $1e,x
    beq loc_7f33cc

loc_7f33c1:
    lda $0000,y
    pha
    jsl sub_7f3fa7
    ply
    bne loc_7f33c1

loc_7f33cc:
    lda $1e,x
    beq loc_7f33d4
    jsl sub_008006

loc_7f33d4:
    plb
    rtl

sub_7f33d6:
.a8
    phb
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    phy
    ldy $1ce6,x
    beq loc_7f3422
    stz $1ce6,x
    stz $1ce7,x
    phx
    phy
    tyx
    rep #$20
.a16
    ldy $0002,x
    bne loc_7f3403
    ldy $0000,x
    sty $1285
    lda #$0000
    sta $0002,y
    bra loc_7f3415

loc_7f3403:
    phx
    lda $0000,x
    tax
    sta $0000,y
    cmp #$0000
    beq loc_7f3414
    tya
    sta $0002,x

loc_7f3414:
    plx

loc_7f3415:
    lda $1283
    sta $0000,x
    stx $1283
    sep #$20
.a8
    ply
    plx

loc_7f3422:
    ply
    plb
    rtl

sub_7f3425:
    phb
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    phy
    ldy $1ce6,x
    beq loc_7f344c
    stz $1ce6,x
    stz $1ce7,x
    lda $0012,y
    and #$fe
    ora #$10
    sta $0012,y
    lda #$00
    sta $0013,y
    sta $0014,y

loc_7f344c:
    ply
    plb
    rtl

sub_7f344f:
.a16
    phy
    phx
    sep #$20
.a8
    lda $23,x
    and #$04
    bne loc_7f345d
    jml loc_7f348f

loc_7f345d:
    ldy $06,x
    lda $23,x
    and #$fb
    sta $23,x
    lda $25,x
    and #$fe
    sta $25,x
    rep #$20
.a16
    stx $3c
    phy

loc_7f3470:
    lda $0029,y
    beq loc_7f348c
    cmp $3c
    beq loc_7f347c
    tay
    bra loc_7f3470

loc_7f347c:
    lda $29,x
    sta $0029,y
    lda #$0000
    sta $06,x
    sta $29,x
    sep #$20
.a8
    sta $13,x

loc_7f348c:
    ply
    sep #$20

loc_7f348f:
    lda $23,x
    and #$10
    bne loc_7f3499
    jml loc_7f34c8

loc_7f3499:
    lda $23,x
    and #$ef
    sta $23,x
    ldy $29,x
    tyx
    beq loc_7f34c8

loc_7f34a4:
    ldy $29,x
    lda $23,x
    and #$fb
    sta $23,x
    rep #$20
.a16
    lda #$0000
    sta $06,x
    sep #$20
.a8
    lda $25,x
    and #$01
    bne loc_7f34bf
    jml loc_7f34c5

loc_7f34bf:
    lda $25,x
    ora #$08
    sta $25,x

loc_7f34c5:
    tyx
    bne loc_7f34a4

loc_7f34c8:
    plx
    ply
    rtl

sub_7f34cb:
.a16
    phx
    txa
    ldx $12a8

loc_7f34d0:
    cmp $1c,x
    bne loc_7f34d6
    stz $1c,x

loc_7f34d6:
    cmp $06,x
    bne loc_7f34dc
    stz $06,x

loc_7f34dc:
    ldy $00,x
    tyx
    bne loc_7f34d0
    plx
    jsl sub_7f19a7
    rtl

sub_7f34e7:
.a8
    phb
    sep #$20
    rep #$10
    lda $1e0d
    bit #$10
    beq loc_7f34f7
    jsl sub_07f05c

loc_7f34f7:
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    inc $c4
    bne loc_7f350a
    inc $c5

loc_7f350a:
    lda #$7e
    pha
    plb
    ldx $12a8

loc_7f3511:
    lda $003030
    and #$20
    beq loc_7f353e
    lda $26,x
    and #$40
    beq loc_7f3523
    jml loc_7f352f

loc_7f3523:
    stz $12d6
    jsl sub_7f3596
    lda $12d6
    bne loc_7f3536

loc_7f352f:
    ldy $00,x

loc_7f3531:
    tyx
    bne loc_7f3511
    bra loc_7f353e

loc_7f3536:
    ldy $00,x
    jsl sub_7f3356
    bra loc_7f3531

loc_7f353e:
    stx $1942
    pla
    sta $5e
    sta $00303a
    plb
    rtl

sub_7f354a:
    phb
    sep #$20
    rep #$10
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    lda #$7e
    pha
    plb
    ldx $1942
    beq loc_7f358a

loc_7f3565:
    lda $26,x
    and #$40
    beq loc_7f356f
    jml loc_7f357b

loc_7f356f:
    stz $12d6
    jsl sub_7f3596
    lda $12d6
    bne loc_7f3582

loc_7f357b:
    ldy $00,x

loc_7f357d:
    tyx
    bne loc_7f3565
    bra loc_7f358a

loc_7f3582:
    ldy $00,x
    jsl sub_7f3356
    bra loc_7f357d

loc_7f358a:
    stx $1942
    pla
    sta $5e
    sta $00303a
    plb
    rtl

sub_7f3596:
    php
    sep #$20
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$30
.a16
    cpx $14d6
    bne loc_7f35b0
    brl loc_7f3650

loc_7f35b0:
    sep #$20
.a8
    stx $12c7
    lda $2d,x
    bne loc_7f35ee
    lda $31,x
    and #$04
    beq loc_7f35c3
    jml loc_7f35ee

loc_7f35c3:
    lda $26,x
    and #$08
    beq loc_7f35cd
    jml loc_7f35dc

loc_7f35cd:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_7f35dc
    jmp loc_7f35ee

loc_7f35dc:
    lda #$03
    sta $12d1
    rep #$20
.a16
    lda #$a055
    sta $12cf
    brl loc_7f363b
    .db $e2,$20

loc_7f35ee:
.a8
    lda $31,x
    and #$fb
    sta $31,x
    lda $20,x
    and #$80
    beq loc_7f3612
    lda #$03
    sta $12d1
    rep #$20
.a16
    lda #$a327
    sta $12cf
    brl loc_7f363b
    .db $e2,$20,$b5,$20,$29,$7f,$95,$20

loc_7f3612:
.a8
    lda $1b,x
    sta $12d1
    rep #$20
.a16
    lda $19,x
    beq loc_7f3676
    sta $12cf
    sep #$20
.a8
    lda $26,x
    and #$08
    beq loc_7f362c
    jml loc_7f363b

loc_7f362c:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_7f363b
    jmp loc_7f3650

loc_7f363b:
    sep #$20
    lda #$7f
    pha
    pea $364f
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    jml [$12cf]

loc_7f3650:
    lda $5e
    ora #$10
    .db $85
.a16
    lsr $3a8f,x
    bmi loc_7f365a

loc_7f365a:
.a8
    phx
    phy
    php
    sep #$20
    rep #$10
    lda $1cd3
    bit #$01
    bne loc_7f3673
    lda $1ccc,x
    beq loc_7f3673
    ldy #$033f
    jsr sub_7f36b8

loc_7f3673:
    plp
    ply
    plx

loc_7f3676:
    sep #$20
    pla
    sta $5e
    sta $00303a
    plp
    rtl
    .db $e2,$20,$9c,$00,$42,$9c,$0c,$42,$9c,$2c,$21,$9c,$2d,$21,$48,$9c
    .db $0c,$42,$a9,$80,$8d,$00,$21,$68,$9c,$21,$21,$8d,$22,$21,$1a,$8d
    .db $22,$21,$1a,$29,$0f,$48,$ad,$9b,$12,$8d,$0c,$42,$a9,$0f,$8d,$00
    .db $21,$ea,$ea,$ea,$ea,$80,$d8

sub_7f36b8:
    phx
    php
    sta $1bc0
    jsr sub_7f3736
    rep #$20
.a16
    lda $16b5
    cmp $1cf4
    bcs loc_7f372c
    sta $1cf4
    sep #$20
.a8
    lda $1bc0
    sta $1ced
    stx $1cee
    rep #$20
.a16
    ldx #$0000
    lda $1cf4
    cmp #$0190
    bmi loc_7f36f2
    inx
    cmp #$03e8
    bmi loc_7f36f2
    inx
    cmp #$07d0
    bmi loc_7f36f2
    inx

loc_7f36f2:
    sep #$20
.a8
    lda $7f372f,x
    ora $1bc0
    sta $1bc0
    rep #$20
.a16
    jsl sub_7f1d58
    sep #$20
.a8
    xba
    sec
    sbc $0015,y
    ldx #$0000
    cmp #$10
    bcc loc_7f3721
    cmp #$f0
    bcs loc_7f3721
    cmp #$70
    bcc loc_7f3720
    cmp #$90
    bcc loc_7f3721
    bra loc_7f3722

loc_7f3720:
    inx

loc_7f3721:
    inx

loc_7f3722:
    lda $7f3733,x
    ora $1bc0
    sta $1cec

loc_7f372c:
    plp
    plx
    rts
    .db $00,$10,$20,$30,$40,$80,$c0

sub_7f3736:
    php
    rep #$20
.a16
    lda $000c,x
    sec
    sbc $000c,y
    sta $02
    bpl loc_7f3748
    eor #$ffff
    inc a

loc_7f3748:
    sta $04
    lda $0010,x
    sec
    sbc $0010,y
    sta $08
    bpl loc_7f3759
    eor #$ffff
    inc a

loc_7f3759:
    sta $0a
    clc
    adc $04
    ror a
    sta $16b5
    plp
.a8
    rts
    .db $08,$c2,$20,$9c,$b5,$16,$a5,$02,$49,$ff,$ff,$1a,$85,$04,$a5,$97
    .db $c5,$02,$30,$06,$c5,$04,$10,$09,$80,$0a,$c5,$04,$30,$03,$ee,$b5
    .db $16,$ee,$b5,$16,$28,$60

sub_7f378a:
    stx $3a
    sty $3c
    php
    phb
    sep #$10
.i8
    tax
    lda #$00
    pha
    plb
    lda $8e26,x
    sta $152d
    lda $8e66,x
    sta $152e
    lda $02
    sta $6a
    lda $03
    sta $6b
    lda $152d
    sta $6c
    jsl sub_0389e1
    lda $6d
    sta $e4
    lda $6e
    sta $e5
    lda $97
    sta $6a
    lda $98
    sta $6b
    lda $152e
    sta $6c
    jsl sub_0389e1
    lda $6d
    clc
    adc $e4
    sta $e4
    lda $6e
    adc $e5
    sta $e5
    lda $97
    sta $6a
    lda $98
    sta $6b
    lda $152d
    sta $6c
    jsl sub_0389e1
    lda $6d
    sta $04
    lda $6e
    sta $05
    lda $02
    sta $6a
    lda $03
    sta $6b
    lda $152e
    sta $6c
    jsl sub_0389e1
    lda $6d
    sec
    sbc $04
    sta $04
    lda $6e
    sbc $05
    sta $05
    plb
    plp
.i16
    ldy $3c
    ldx $3a
    rtl

sub_7f3818:
    stx $3a
    sty $3c
    php
    phb
    sep #$10
.i8
    eor #$ff
    inc a
    tax
    lda #$00
    pha
    plb
    lda $8e26,x
    sta $152d
    lda $8e66,x
    sta $152e
    lda $08
    sta $6a
    lda $09
    sta $6b
    lda $152d
    sta $6c
    jsl sub_0389e1
    lda $6d
    sta $e4
    lda $6e
    sta $e5
    lda $97
    sta $6a
    lda $98
    sta $6b
    lda $152e
    sta $6c
    jsl sub_0389e1
    lda $6d
    clc
    adc $e4
    sta $e4
    lda $6e
    adc $e5
    sta $e5
    lda $97
    sta $6a
    lda $98
    sta $6b
    lda $152d
    sta $6c
    jsl sub_0389e1
    lda $6d
    sta $0a
    lda $6e
    sta $0b
    lda $08
    sta $6a
    lda $09
    sta $6b
    lda $152e
    sta $6c
    jsl sub_0389e1
    lda $6d
    sec
    sbc $0a
    sta $0a
    lda $6e
    sbc $0b
    sta $0b
    plb
    plp
.i16
    ldy $3c
    ldx $3a
    rtl

sub_7f38a9:
    phy
    phx
    php
    sep #$10
.i8
    eor #$ff
    inc a
    tax
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    lda $7f3dd2,x
    sta $e9
    lda $7f3d92,x
    sta $e8
    lda $02
    bmi loc_7f38e7
    asl a
    sta $004202
    lda $e9
    bmi loc_7f390d
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f391d

loc_7f38e7:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e9
    bmi loc_7f38fb
    sta $004203
    nop
    jmp loc_7f3916

loc_7f38fb:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f391d

loc_7f390d:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3916:
    lda #$00
    sec
    sbc $004217

loc_7f391d:
    tax
    stx $04
    lda $97
    bmi loc_7f393c
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3962
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3972

loc_7f393c:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3950
    sta $004203
    nop
    jmp loc_7f396b

loc_7f3950:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3972

loc_7f3962:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f396b:
    lda #$00
    sec
    sbc $004217

loc_7f3972:
    tax
    txa
    clc
    adc $04
    sta $04
    bit #$80
    beq loc_7f3983
    lda #$ff
    sta $05
    bra loc_7f3985

loc_7f3983:
    stz $05

loc_7f3985:
    lda $02
    bmi loc_7f39a1
    asl a
    sta $004202
    lda $e8
    bmi loc_7f39c7
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f39d7

loc_7f39a1:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e8
    bmi loc_7f39b5
    sta $004203
    nop
    jmp loc_7f39d0

loc_7f39b5:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f39d7

loc_7f39c7:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f39d0:
    lda #$00
    sec
    sbc $004217

loc_7f39d7:
    tax
    txa
    eor #$ff
    inc a
    sta $e4
    lda $97
    bmi loc_7f39fa
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3a20
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3a30

loc_7f39fa:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3a0e
    sta $004203
    nop
    jmp loc_7f3a29

loc_7f3a0e:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3a30

loc_7f3a20:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3a29:
    lda #$00
    sec
    sbc $004217

loc_7f3a30:
    tax
    txa
    clc
    adc $e4
    sta $e4
    bit #$80
    beq loc_7f3a41
    lda #$ff
    sta $e5
    bra loc_7f3a43

loc_7f3a41:
    stz $e5

loc_7f3a43:
    pla
    sta $5e
    sta $00303a
    plp
.i16
    plx
    ply
    rtl

sub_7f3a4e:
    phx
    phy
    php
    sep #$10
.i8
    tax
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    lda $7f3dd2,x
    sta $e9
    lda $7f3d92,x
    sta $e8
    lda $08
    bmi loc_7f3a89
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3aaf
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3abf

loc_7f3a89:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3a9d
    sta $004203
    nop
    jmp loc_7f3ab8

loc_7f3a9d:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3abf

loc_7f3aaf:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3ab8:
    lda #$00
    sec
    sbc $004217

loc_7f3abf:
    tax
    stx $0a
    lda $97
    bmi loc_7f3ade
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3b04
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3b14

loc_7f3ade:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3af2
    sta $004203
    nop
    jmp loc_7f3b0d

loc_7f3af2:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3b14

loc_7f3b04:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3b0d:
    lda #$00
    sec
    sbc $004217

loc_7f3b14:
    tax
    txa
    clc
    adc $0a
    sta $0a
    bit #$80
    beq loc_7f3b25
    lda #$ff
    sta $0b
    bra loc_7f3b27

loc_7f3b25:
    stz $0b

loc_7f3b27:
    lda $08
    bmi loc_7f3b43
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3b69
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3b79

loc_7f3b43:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3b57
    sta $004203
    nop
    jmp loc_7f3b72

loc_7f3b57:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3b79

loc_7f3b69:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3b72:
    lda #$00
    sec
    sbc $004217

loc_7f3b79:
    tax
    txa
    eor #$ff
    inc a
    sta $e4
    lda $97
    bmi loc_7f3b9c
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3bc2
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3bd2

loc_7f3b9c:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3bb0
    sta $004203
    nop
    jmp loc_7f3bcb

loc_7f3bb0:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3bd2

loc_7f3bc2:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3bcb:
    lda #$00
    sec
    sbc $004217

loc_7f3bd2:
    tax
    txa
    clc
    adc $e4
    sta $e4
    bit #$80
    beq loc_7f3be3
    lda #$ff
    sta $e5
    bra loc_7f3be5

loc_7f3be3:
    stz $e5

loc_7f3be5:
    pla
    sta $5e
    sta $00303a
    plp
.i16
    ply
    plx
    rtl

sub_7f3bf0:
    phy
    phx
    php
    sep #$10
.i8
    tax
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    lda $7f3dd2,x
    sta $e9
    lda $7f3d92,x
    sta $e8
    lda $02
    bmi loc_7f3c2b
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3c51
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3c61

loc_7f3c2b:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3c3f
    sta $004203
    nop
    jmp loc_7f3c5a

loc_7f3c3f:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3c61

loc_7f3c51:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3c5a:
    lda #$00
    sec
    sbc $004217

loc_7f3c61:
    tax
    stx $04
    lda $08
    bmi loc_7f3c80
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3ca6
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3cb6

loc_7f3c80:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3c94
    sta $004203
    nop
    jmp loc_7f3caf

loc_7f3c94:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3cb6

loc_7f3ca6:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3caf:
    lda #$00
    sec
    sbc $004217

loc_7f3cb6:
    tax
    txa
    clc
    adc $04
    sta $04
    bit #$80
    beq loc_7f3cc7
    lda #$ff
    sta $05
    bra loc_7f3cc9

loc_7f3cc7:
    stz $05

loc_7f3cc9:
    lda $02
    bmi loc_7f3ce5
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3d0b
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3d1b

loc_7f3ce5:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e8
    bmi loc_7f3cf9
    sta $004203
    nop
    jmp loc_7f3d14

loc_7f3cf9:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3d1b

loc_7f3d0b:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3d14:
    lda #$00
    sec
    sbc $004217

loc_7f3d1b:
    tax
    txa
    eor #$ff
    inc a
    sta $0a
    lda $08
    bmi loc_7f3d3e
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3d64
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3d74

loc_7f3d3e:
    eor #$ff
    inc a
    asl a
    sta $004202
    lda $e9
    bmi loc_7f3d52
    sta $004203
    nop
    jmp loc_7f3d6d

loc_7f3d52:
    eor #$ff
    inc a
    sta $004203
    nop
    nop
    nop
    nop
    lda $004217
    jmp loc_7f3d74

loc_7f3d64:
    eor #$ff
    inc a
    sta $004203
    nop
    nop

loc_7f3d6d:
    lda #$00
    sec
    sbc $004217

loc_7f3d74:
    tax
    txa
    clc
    adc $0a
    sta $0a
    bit #$80
    beq loc_7f3d85
    lda #$ff
    sta $0b
    bra loc_7f3d87

loc_7f3d85:
    stz $0b

loc_7f3d87:
    pla
    sta $5e
    sta $00303a
    plp
.i16
    plx
    ply
    rtl
    .db $00,$03,$06,$09,$0c,$0f,$12,$15,$18,$1b,$1e,$21,$24,$27,$2a,$2d
    .db $30,$33,$36,$39,$3b,$3e,$41,$43,$46,$49,$4b,$4e,$50,$52,$55,$57
    .db $59,$5b,$5e,$60,$62,$64,$66,$67,$69,$6b,$6c,$6e,$70,$71,$72,$74
    .db $75,$76,$77,$78,$79,$7a,$7b,$7b,$7c,$7d,$7d,$7e,$7e,$7e,$7e,$7e
    .db $7f,$7e,$7e,$7e,$7e,$7e,$7d,$7d,$7c,$7b,$7b,$7a,$79,$78,$77,$76
    .db $75,$74,$72,$71,$70,$6e,$6c,$6b,$69,$67,$66,$64,$62,$60,$5e,$5b
    .db $59,$57,$55,$52,$50,$4e,$4b,$49,$46,$43,$41,$3e,$3b,$39,$36,$33
    .db $30,$2d,$2a,$27,$24,$21,$1e,$1b,$18,$15,$12,$0f,$0c,$09,$06,$03
    .db $00,$fd,$fa,$f7,$f4,$f1,$ee,$eb,$e8,$e5,$e2,$df,$dc,$d9,$d6,$d3
    .db $d0,$cd,$ca,$c7,$c5,$c2,$bf,$bd,$ba,$b7,$b5,$b2,$b0,$ae,$ab,$a9
    .db $a7,$a5,$a2,$a0,$9e,$9c,$9a,$99,$97,$95,$94,$92,$90,$8f,$8e,$8c
    .db $8b,$8a,$89,$88,$87,$86,$85,$85,$84,$83,$83,$82,$82,$82,$82,$82
    .db $81,$82,$82,$82,$82,$82,$83,$83,$84,$85,$85,$86,$87,$88,$89,$8a
    .db $8b,$8c,$8e,$8f,$90,$92,$94,$95,$97,$99,$9a,$9c,$9e,$a0,$a2,$a5
    .db $a7,$a9,$ab,$ae,$b0,$b2,$b5,$b7,$ba,$bd,$bf,$c2,$c5,$c7,$ca,$cd
    .db $d0,$d3,$d6,$d9,$dc,$df,$e2,$e5,$e8,$eb,$ee,$f1,$f4,$f7,$fa,$fd
    .db $00,$03,$06,$09,$0c,$0f,$12,$15,$18,$1b,$1e,$21,$24,$27,$2a,$2d
    .db $30,$33,$36,$39,$3b,$3e,$41,$43,$46,$49,$4b,$4e,$50,$52,$55,$57
    .db $59,$5b,$5e,$60,$62,$64,$66,$67,$69,$6b,$6c,$6e,$70,$71,$72,$74
    .db $75,$76,$77,$78,$79,$7a,$7b,$7b,$7c,$7d,$7d,$7e,$7e,$7e,$7e,$7e

sub_7f3ed2:
    stx $04
    sty $0a
    rep #$20
.a16
    tya
    ldy $001e,x
    beq loc_7f3eea
    tyx

loc_7f3edf:
    cmp $0004,x
    beq loc_7f3f41
    ldy $0000,x
    tyx
    bne loc_7f3edf

loc_7f3eea:
    ldx $04
    lda $1e,x
    sta $08
    tax
    txy
    ldx $1281
    bne loc_7f3efb
    tyx
    jmp loc_7f3f55

loc_7f3efb:
    lda $0000,x
    sta $1281
    tya
    bne loc_7f3f10
    lda $08
    sta $0000,x
    stz $0002,x
    stx $08
    bra loc_7f3f1e

loc_7f3f10:
    lda $0000,y
    sta $0000,x
    txa
    sta $0000,y
    tya
    sta $0002,x

loc_7f3f1e:
    ldy $0000,x
    beq loc_7f3f27
    txa
    sta $0002,y

loc_7f3f27:
    ldy $04
    lda $08
    sta $001e,y
    stz $0004,x
    stz $0006,x
    sep #$20
.a8
    lda #$02
    sta $0009,x
    stz $0008,x
    stz $000a,x

loc_7f3f41:
    sep #$20
    lda $0009,x
    ora #$01
    sta $0009,x
    inc $000a,x
    stx $02
    ldx $04
    ldy $0a
    rts

loc_7f3f55:
.a16
    jsl sub_008006

sub_7f3f59:
    php
    phy
    sty $cf2d
    lda $0004,y
    tay
    sep #$20
.a8
    phy
    lda #$07
    jsl sub_7f233b
    cpy #$0000
    bne loc_7f3f74
    jml loc_7f3fa3

loc_7f3f74:
    rep #$20
.a16
    lda $6a62,y
    sta $12cf
    sep #$20
.a8
    lda $6a64,y
    sta $12d1
    ply
    phy
    lda $5e
    pha
    lda #$7f
    pha
    pea $3f9b
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    jml [$12cf]
    pla
    sta $5e
    sta $00303a

loc_7f3fa3:
    ply
    ply
    plp
.a16
    rts

sub_7f3fa7:
    phx
    phy
    jsr sub_7f3f59
    ldx $0004,y
    lda $0006,y
    tay
    jsr sub_7f3f59
    lda $1e,x
    sta $08
    phx
    tyx
    ldy $0002,x
    bne loc_7f3fce
    ldy $0000,x
    sty $08
    lda #$0000
    sta $0002,y
    bra loc_7f3fe0

loc_7f3fce:
    phx
    lda $0000,x
    tax
    sta $0000,y
    cmp #$0000
    beq loc_7f3fdf
    tya
    sta $0002,x

loc_7f3fdf:
    plx

loc_7f3fe0:
    lda $1281
    sta $0000,x
    stx $1281
    plx
    lda $08
    sta $1e,x
    ply
    plx
    lda $1e,x
    sta $08
    phx
    tyx
    ldy $0002,x
    bne loc_7f4008
    ldy $0000,x
    sty $08
    lda #$0000
    sta $0002,y
    bra loc_7f401a

loc_7f4008:
    phx
    lda $0000,x
    tax
    sta $0000,y
    cmp #$0000
    beq loc_7f4019
    tya
    sta $0002,x

loc_7f4019:
    plx

loc_7f401a:
    lda $1281
    sta $0000,x
    stx $1281
    plx
    lda $08
    sta $1e,x
    rtl
    .db $20,$d4,$40,$6b

sub_7f402d:
.a8
    phb
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    ldx $12a8

loc_7f403a:
    lda $25,x
    and #$08
    bne loc_7f4044
    jml loc_7f4054

loc_7f4044:
    rep #$20
.a16
    lda $00,x
    pha
    sep #$20
.a8
    jsl sub_7f3346
    ply
    tyx
    jmp loc_7f40b3

loc_7f4054:
    lda $22,x
    and #$08
    beq loc_7f405e
    jml loc_7f4066

loc_7f405e:
    lda $25,x
    and #$ef
    sta $25,x
    bra loc_7f406c

loc_7f4066:
    lda $25,x
    ora #$10
    sta $25,x

loc_7f406c:
    lda $20,x
    and #$80
    beq loc_7f4076
    jml loc_7f407e

loc_7f4076:
    lda $21,x
    and #$fd
    sta $21,x
    bra loc_7f4084

loc_7f407e:
    lda $21,x
    ora #$02
    sta $21,x

loc_7f4084:
    lda $20,x
    and #$7f
    sta $20,x
    ldy $1e,x
    beq loc_7f40b0
    rep #$20

loc_7f4090:
.a16
    lda $0000,y
    pha
    lda $0009,y
    bit #$0001
    bne loc_7f40a2
    jsl sub_7f3fa7
    bra loc_7f40ab

loc_7f40a2:
    sep #$20
.a8
    and #$fe
    sta $0009,y
    rep #$20

loc_7f40ab:
.a16
    ply
    bne loc_7f4090
    sep #$20

loc_7f40b0:
.a8
    txy
    ldx $00,y

loc_7f40b3:
    bne loc_7f403a
    lda $18d9
    beq loc_7f40d1
    ldx #$0000

loc_7f40bd:
    phx
    jsr sub_7f40d4
    plx
    rep #$20
.a16
    txa
    clc
    adc #$000a
    tax
    sep #$20
.a8
    dec $18d9
    bne loc_7f40bd

loc_7f40d1:
    plp
    plb
    rtl

sub_7f40d4:
    stx $7f
    ldy $2f42,x
    tyx
    stx $7d
    ldy $04,x
    sty $18e1
    ldy $7f
    stz $f6
    stz $f0
    rep #$20
.a16
    lda $2f44,y
    bne loc_7f40f1
    brl loc_7f4409

loc_7f40f1:
    sep #$20
.a8
    pha
    lda #$7f
    pha
    plb
    pla
    rep #$20

loc_7f40fb:
.a16
    tay
    sep #$20
.a8
    stz $f7
    lda $0002,y
    beq loc_7f412e
    dec a
    sta $02
    lda $7e1ccb,x
    bpl loc_7f4114
    and $02
    beq loc_7f412e
    bra loc_7f411a

loc_7f4114:
    lda $02
    and $c4
    beq loc_7f412e

loc_7f411a:
    rep #$20
.a16
    and #$007f
    sta $02
    tya
    ldy $02
    clc

loc_7f4125:
    adc #$0012
    dey
    bne loc_7f4125
    tay
    sep #$20

loc_7f412e:
.a8
    lda $0009,y
    sta $ef
    bit #$f0
    bne loc_7f413a
    brl loc_7f43a5

loc_7f413a:
    bit #$10
    beq loc_7f4141
    brl loc_7f4323

loc_7f4141:
    bit #$20
    beq loc_7f4148
    brl loc_7f42a0

loc_7f4148:
    bit #$40
    beq loc_7f414f
    brl loc_7f421d

loc_7f414f:
    lda $0003,y
    sta $02
    sta $04
    lda $0005,y
    sta $08
    sta $0a
    lda $000016,x
    beq loc_7f4167
    jsl sub_7f3bf0

loc_7f4167:
    lda $0a
    sta $08
    lda $0007,y
    sta $97
    sta $e4
    lda $000012,x
    beq loc_7f417c
    jsl sub_7f3a4e

loc_7f417c:
    lda $04
    sta $02
    lda $e4
    sta $97
    lda $000014,x
    beq loc_7f418e
    jsl sub_7f38a9

loc_7f418e:
    rep #$20
.a16
    lda $04
    bit #$0080
    beq loc_7f419c
    ora #$ff00
    bra loc_7f419f

loc_7f419c:
    and #$00ff

loc_7f419f:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f41b5
    sty $f1
    tay
    lda $02

loc_7f41ad:
    asl a
    dey
    bne loc_7f41ad
    ldy $f1
    bra loc_7f41b7

loc_7f41b5:
    lda $02

loc_7f41b7:
    clc
    adc $00000c,x
    sta $73
    lda $e4
    bit #$0080
    beq loc_7f41ca
    ora #$ff00
    bra loc_7f41cd

loc_7f41ca:
    and #$00ff

loc_7f41cd:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f41e3
    sty $f1
    tay
    lda $02

loc_7f41db:
    asl a
    dey
    bne loc_7f41db
    ldy $f1
    bra loc_7f41e5

loc_7f41e3:
    lda $02

loc_7f41e5:
    clc
    adc $000010,x
    sta $75
    lda $0a
    bit #$0080
    beq loc_7f41f8
    ora #$ff00
    bra loc_7f41fb

loc_7f41f8:
    and #$00ff

loc_7f41fb:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f4211
    sty $f1
    tay
    lda $02

loc_7f4209:
    asl a
    dey
    bne loc_7f4209
    ldy $f1
    bra loc_7f4213

loc_7f4211:
    lda $02

loc_7f4213:
    clc
    adc $00000e,x
    sta $7b
    jmp loc_7f43c5

loc_7f421d:
.a8
    lda $0005,y
    sta $08
    sta $0a
    lda $0007,y
    sta $97
    sta $e4
    lda $000012,x
    beq loc_7f4235
    jsl sub_7f3a4e

loc_7f4235:
    rep #$20
.a16
    lda $0a
    bit #$0080
    beq loc_7f4243
    ora #$ff00
    bra loc_7f4246

loc_7f4243:
    and #$00ff

loc_7f4246:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f425c
    sty $f1
    tay
    lda $02

loc_7f4254:
    asl a
    dey
    bne loc_7f4254
    ldy $f1
    bra loc_7f425e

loc_7f425c:
    lda $02

loc_7f425e:
    clc
    adc $00000e,x
    sta $7b
    lda $e4
    bit #$0080
    beq loc_7f4271
    ora #$ff00
    bra loc_7f4274

loc_7f4271:
    and #$00ff

loc_7f4274:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f428a
    sty $f1
    tay
    lda $02

loc_7f4282:
    asl a
    dey
    bne loc_7f4282
    ldy $f1
    bra loc_7f428c

loc_7f428a:
    lda $02

loc_7f428c:
    clc
    adc $000010,x
    sta $75
    lda $0003,y
    clc
    adc $00000c,x
    sta $73
    jmp loc_7f43c5

loc_7f42a0:
.a8
    lda $0003,y
    sta $02
    sta $04
    lda $0007,y
    sta $97
    sta $e4
    lda $000014,x
    beq loc_7f42b8
    jsl sub_7f38a9

loc_7f42b8:
    rep #$20
.a16
    lda $04
    bit #$0080
    beq loc_7f42c6
    ora #$ff00
    bra loc_7f42c9

loc_7f42c6:
    and #$00ff

loc_7f42c9:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f42df
    sty $f1
    tay
    lda $02

loc_7f42d7:
    asl a
    dey
    bne loc_7f42d7
    ldy $f1
    bra loc_7f42e1

loc_7f42df:
    lda $02

loc_7f42e1:
    clc
    adc $00000c,x
    sta $73
    lda $e4
    bit #$0080
    beq loc_7f42f4
    ora #$ff00
    bra loc_7f42f7

loc_7f42f4:
    and #$00ff

loc_7f42f7:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f430d
    sty $f1
    tay
    lda $02

loc_7f4305:
    asl a
    dey
    bne loc_7f4305
    ldy $f1
    bra loc_7f430f

loc_7f430d:
    lda $02

loc_7f430f:
    clc
    adc $000010,x
    sta $75
    lda $0005,y
    clc
    adc $00000e,x
    sta $7b
    jmp loc_7f43c5

loc_7f4323:
.a8
    lda $0003,y
    sta $02
    sta $04
    lda $0005,y
    sta $08
    sta $0a
    lda $000016,x
    beq loc_7f433b
    jsl sub_7f3bf0

loc_7f433b:
    rep #$20
.a16
    lda $04
    bit #$0080
    beq loc_7f4349
    ora #$ff00
    bra loc_7f434c

loc_7f4349:
    and #$00ff

loc_7f434c:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f4362
    sty $f1
    tay
    lda $02

loc_7f435a:
    asl a
    dey
    bne loc_7f435a
    ldy $f1
    bra loc_7f4364

loc_7f4362:
    lda $02

loc_7f4364:
    clc
    adc $00000c,x
    sta $73
    lda $0a
    bit #$0080
    beq loc_7f4377
    ora #$ff00
    bra loc_7f437a

loc_7f4377:
    and #$00ff

loc_7f437a:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f4390
    sty $f1
    tay
    lda $02

loc_7f4388:
    asl a
    dey
    bne loc_7f4388
    ldy $f1
    bra loc_7f4392

loc_7f4390:
    lda $02

loc_7f4392:
    clc
    adc $00000e,x
    sta $7b
    lda $0007,y
    clc
    adc $000010,x
    sta $75
    bra loc_7f43c5

loc_7f43a5:
.a8
    rep #$20
.a16
    lda $0003,y
    clc
    adc $00000c,x
    sta $73
    lda $0005,y
    clc
    adc $00000e,x
    sta $7b
    lda $0007,y
    clc
    adc $000010,x
    sta $75

loc_7f43c5:
    lda $000a,y
    sta $58
    lda $000c,y
    sta $5a
    lda $000e,y
    sta $5c
    phx
    phy
    sep #$20
.a8
    lda $0010,y
    sta $f6
    pha
    lda #$7e
    pha
    plb
    pla
    rep #$20
.a16
    jsr sub_7f4424
.a8
    rep #$20
.a16
    sep #$20
.a8
    pha
    lda #$7f
    pha
    plb
    pla
    rep #$20
.a16
    ply
    plx
    rep #$20
    lda $0000,y
    beq loc_7f4400
    brl loc_7f40fb

loc_7f4400:
    sep #$20
.a8
    pha
    lda #$7e
    pha
    plb
    pla
    rts

loc_7f4409:
.a16
    lda $2f46,y
    sta $58
    lda $2f48,y
    sta $5a
    lda $2f4a,y
    sta $5c
    lda $0c,x
    sta $73
    lda $10,x
    sta $75
    lda $0e,x
    sta $7b

sub_7f4424:
    lda $18d9
    sta $18db
    ldy $7f
    sty $18dd
    jmp loc_7f4938

loc_7f4432:
    sep #$20
.a8
    sty $18dd
    ldx $2f42,y
    stz $f5
    rep #$20
.a16
    ldy $7d
    lda $0031,y
    and $31,x
    and #$00f8
    beq loc_7f444d
    brl loc_7f4938

loc_7f444d:
    tya
    cmp $1c,x
    bne loc_7f4455
    brl loc_7f4938

loc_7f4455:
    txa
    tyx
    cmp $1c,x
    bne loc_7f445e
    brl loc_7f4938

loc_7f445e:
    txy
    tax
    lda $0c,x
    sta $3a
    lda $0e,x
    sta $3c
    lda $10,x
    sta $3e
    lda $22,x
    and #$0020
    beq loc_7f4480
    lda $0022,y
    and #$0020
    beq loc_7f4480
    lda $04,x
    txy
    bra loc_7f448b

loc_7f4480:
    lda $04,x
    txy
    cmp $18e1
    bne loc_7f448b
    brl loc_7f4938

loc_7f448b:
    ldx $18dd
    lda $2f44,x
    bne loc_7f4496
    brl loc_7f489a

loc_7f4496:
    pha
    lda $3a
    sta $18d3
    lda $3c
    sta $18d5
    lda $3e
    sta $18d7
    lda $2f4a,x
    clc
    adc $5c
    sta $12de
    lda $3e
    sec
    sbc $75
    bpl loc_7f44ba
    eor #$ffff
    inc a

loc_7f44ba:
    sec
    sbc $12de
    bmi loc_7f44c3
    jmp loc_7f44fd

loc_7f44c3:
    lda $2f46,x
    clc
    adc $58
    sta $12de
    lda $3a
    sec
    sbc $73
    bpl loc_7f44d7
    eor #$ffff
    inc a

loc_7f44d7:
    sec
    sbc $12de
    bmi loc_7f44e0
    jmp loc_7f44fd

loc_7f44e0:
    lda $2f48,x
    clc
    adc $5a
    sta $12de
    lda $3c
    sec
    sbc $7b
    bpl loc_7f44f4
    eor #$ffff
    inc a

loc_7f44f4:
    sec
    sbc $12de
    bmi loc_7f4501
    jmp loc_7f44fd

loc_7f44fd:
    pla
    jmp loc_7f4938

loc_7f4501:
    pla
    tax

loc_7f4503:
    sep #$20
.a8
    lda $7f0002,x
    beq loc_7f4538
    dec a
    sta $02
    phx
    tyx
    lda $7e1ccb,x
    bpl loc_7f451d
    plx
    and $02
    beq loc_7f4538
    bra loc_7f4524

loc_7f451d:
    plx
    lda $02
    and $c4
    beq loc_7f4538

loc_7f4524:
    rep #$20
.a16
    and #$007f
    sta $02
    txa
    ldx $02
    clc

loc_7f452f:
    adc #$0012
    dex
    bne loc_7f452f
    tax
    sep #$20

loc_7f4538:
.a8
    lda $7f0009,x
    sta $ef
    and #$f0
    bne loc_7f4545
    brl loc_7f47aa

loc_7f4545:
    bit #$10
    beq loc_7f454c
    brl loc_7f4729

loc_7f454c:
    bit #$20
    beq loc_7f4553
    brl loc_7f46a7

loc_7f4553:
    bit #$40
    beq loc_7f455a
    brl loc_7f4625

loc_7f455a:
    lda $7f0003,x
    sta $02
    sta $04
    lda $7f0005,x
    sta $08
    sta $0a
    lda $0016,y
    beq loc_7f4573
    jsl sub_7f3bf0

loc_7f4573:
    lda $0a
    sta $08
    lda $7f0007,x
    sta $97
    sta $e4
    lda $0012,y
    beq loc_7f4588
    jsl sub_7f3a4e

loc_7f4588:
    lda $04
    sta $02
    lda $e4
    sta $97
    lda $0014,y
    beq loc_7f4599
    jsl sub_7f38a9

loc_7f4599:
    rep #$20
.a16
    lda $0a
    bit #$0080
    beq loc_7f45a7
    ora #$ff00
    bra loc_7f45aa

loc_7f45a7:
    and #$00ff

loc_7f45aa:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f45c0
    sty $f1
    tay
    lda $02

loc_7f45b8:
    asl a
    dey
    bne loc_7f45b8
    ldy $f1
    bra loc_7f45c2

loc_7f45c0:
    lda $02

loc_7f45c2:
    clc
    adc $18d5
    sta $3c
    lda $e4
    bit #$0080
    beq loc_7f45d4
    ora #$ff00
    bra loc_7f45d7

loc_7f45d4:
    and #$00ff

loc_7f45d7:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f45ed
    sty $f1
    tay
    lda $02

loc_7f45e5:
    asl a
    dey
    bne loc_7f45e5
    ldy $f1
    bra loc_7f45ef

loc_7f45ed:
    lda $02

loc_7f45ef:
    clc
    adc $18d7
    sta $3e
    lda $04
    bit #$0080
    beq loc_7f4601
    ora #$ff00
    bra loc_7f4604

loc_7f4601:
    and #$00ff

loc_7f4604:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f461a
    sty $f1
    tay
    lda $02

loc_7f4612:
    asl a
    dey
    bne loc_7f4612
    ldy $f1
    bra loc_7f461c

loc_7f461a:
    lda $02

loc_7f461c:
    clc
    adc $18d3
    sta $3a
    brl loc_7f47ca

loc_7f4625:
.a8
    lda $7f0005,x
    sta $08
    sta $0a
    lda $7f0007,x
    sta $97
    sta $e4
    lda $0012,y
    beq loc_7f463e
    jsl sub_7f3a4e

loc_7f463e:
    rep #$20
.a16
    lda $0a
    bit #$0080
    beq loc_7f464c
    ora #$ff00
    bra loc_7f464f

loc_7f464c:
    and #$00ff

loc_7f464f:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f4665
    sty $f1
    tay
    lda $02

loc_7f465d:
    asl a
    dey
    bne loc_7f465d
    ldy $f1
    bra loc_7f4667

loc_7f4665:
    lda $02

loc_7f4667:
    clc
    adc $18d5
    sta $3c
    lda $e4
    bit #$0080
    beq loc_7f4679
    ora #$ff00
    bra loc_7f467c

loc_7f4679:
    and #$00ff

loc_7f467c:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f4692
    sty $f1
    tay
    lda $02

loc_7f468a:
    asl a
    dey
    bne loc_7f468a
    ldy $f1
    bra loc_7f4694

loc_7f4692:
    lda $02

loc_7f4694:
    clc
    adc $18d7
    sta $3e
    lda $18d3
    clc
    adc $7f0003,x
    sta $3a
    jmp loc_7f47ca

loc_7f46a7:
.a8
    lda $7f0003,x
    sta $02
    sta $04
    lda $7f0007,x
    sta $97
    sta $e4
    lda $0014,y
    beq loc_7f46c0
    jsl sub_7f38a9

loc_7f46c0:
    rep #$20
.a16
    lda $04
    bit #$0080
    beq loc_7f46ce
    ora #$ff00
    bra loc_7f46d1

loc_7f46ce:
    and #$00ff

loc_7f46d1:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f46e7
    sty $f1
    tay
    lda $02

loc_7f46df:
    asl a
    dey
    bne loc_7f46df
    ldy $f1
    bra loc_7f46e9

loc_7f46e7:
    lda $02

loc_7f46e9:
    clc
    adc $18d3
    sta $3a
    lda $e4
    bit #$0080
    beq loc_7f46fb
    ora #$ff00
    bra loc_7f46fe

loc_7f46fb:
    and #$00ff

loc_7f46fe:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f4714
    sty $f1
    tay
    lda $02

loc_7f470c:
    asl a
    dey
    bne loc_7f470c
    ldy $f1
    bra loc_7f4716

loc_7f4714:
    lda $02

loc_7f4716:
    clc
    adc $18d7
    sta $3e
    lda $18d5
    clc
    adc $7f0005,x
    sta $3c
    brl loc_7f47ca

loc_7f4729:
.a8
    lda $7f0003,x
    sta $02
    sta $04
    lda $7f0005,x
    sta $08
    sta $0a
    lda $0016,y
    beq loc_7f4742
    jsl sub_7f3bf0

loc_7f4742:
    rep #$20
.a16
    lda $04
    bit #$0080
    beq loc_7f4750
    ora #$ff00
    bra loc_7f4753

loc_7f4750:
    and #$00ff

loc_7f4753:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f4769
    sty $f1
    tay
    lda $02

loc_7f4761:
    asl a
    dey
    bne loc_7f4761
    ldy $f1
    bra loc_7f476b

loc_7f4769:
    lda $02

loc_7f476b:
    clc
    adc $18d3
    sta $3a
    lda $0a
    bit #$0080
    beq loc_7f477d
    ora #$ff00
    bra loc_7f4780

loc_7f477d:
    and #$00ff

loc_7f4780:
    sta $02
    lda $ef
    and #$000f
    beq loc_7f4796
    sty $f1
    tay
    lda $02

loc_7f478e:
    asl a
    dey
    bne loc_7f478e
    ldy $f1
    bra loc_7f4798

loc_7f4796:
    lda $02

loc_7f4798:
    clc
    adc $18d5
    sta $3c
    lda $18d7
    clc
    adc $7f0007,x
    sta $3e
    bra loc_7f47ca

loc_7f47aa:
.a8
    rep #$20
.a16
    lda $18d3
    clc
    adc $7f0003,x
    sta $3a
    lda $18d5
    clc
    adc $7f0005,x
    sta $3c
    lda $18d7
    clc
    adc $7f0007,x
    sta $3e

loc_7f47ca:
    lda $7f000e,x
    clc
    adc $5c
    sta $12de
    lda $3e
    sec
    sbc $75
    bpl loc_7f47df
    eor #$ffff
    inc a

loc_7f47df:
    sec
    sbc $12de
    bmi loc_7f47e8
    jmp loc_7f4830

loc_7f47e8:
    lda $7f000a,x
    clc
    adc $58
    sta $12de
    lda $3a
    sec
    sbc $73
    bpl loc_7f47fd
    eor #$ffff
    inc a

loc_7f47fd:
    sec
    sbc $12de
    bmi loc_7f4806
    jmp loc_7f4830

loc_7f4806:
    lda $7f000c,x
    clc
    adc $5a
    sta $12de
    lda $3c
    sec
    sbc $7b
    bpl loc_7f481b
    eor #$ffff
    inc a

loc_7f481b:
    sec
    sbc $12de
    bmi loc_7f4824
    jmp loc_7f4830

loc_7f4824:
    sep #$20
.a8
    lda $7f0010,x
    ora $f5
    sta $f5
    rep #$20

loc_7f4830:
.a16
    lda $7f0000,x
    tax
    beq loc_7f483a
    brl loc_7f4503

loc_7f483a:
    sep #$20
.a8
    lda $f5
    beq loc_7f4897
    phx
    ldx $7d
    jsr sub_7f3ed2
    ldx $02
    stx $97
    tyx
    ldy $7d
    jsr sub_7f3ed2
    lda $20,x
    ora #$80
    sta $20,x
    lda $0020,y
    ora #$80
    sta $0020,y
    rep #$20
.a16
    phx
    txa
    ldx $97
    sta $0004,x
    ldy $02
    lda $7d
    sta $0004,y
    txa
    sta $0006,y
    tya
    sta $0006,x
    sep #$20
.a8
    lda $f5
    sta $0008,y
    lda $f6
    sta $0008,x
    ply
    lda $0038,y
    ora $f5
    sta $0038,y
    ldx $7d
    lda $38,x
    ora $f6
    sta $38,x
    plx
    jmp loc_7f4938

loc_7f4897:
    jmp loc_7f4938

loc_7f489a:
.a16
    lda $2f4a,x
    clc
    adc $5c
    sta $12de
    lda $3e
    sec
    sbc $75
    bpl loc_7f48ae
    eor #$ffff
    inc a

loc_7f48ae:
    sec
    sbc $12de
    bmi loc_7f48b7
    jmp loc_7f4938

loc_7f48b7:
    lda $2f46,x
    clc
    adc $58
    sta $12de
    lda $3a
    sec
    sbc $73
    bpl loc_7f48cb
    eor #$ffff
    inc a

loc_7f48cb:
    sec
    sbc $12de
    bmi loc_7f48d4
    jmp loc_7f4938

loc_7f48d4:
    lda $2f48,x
    clc
    adc $5a
    sta $12de
    lda $3c
    sec
    sbc $7b
    bpl loc_7f48e8
    eor #$ffff
    inc a

loc_7f48e8:
    sec
    sbc $12de
    bmi loc_7f48f1
    jmp loc_7f4938

loc_7f48f1:
    phx
    sep #$20
.a8
    ldx $7d
    jsr sub_7f3ed2
    ldx $02
    stx $97
    tyx
    ldy $7d
    jsr sub_7f3ed2
    lda $20,x
    ora #$80
    sta $20,x
    lda $0020,y
    ora #$80
    sta $0020,y
    rep #$20
.a16
    txa
    ldx $97
    sta $0004,x
    ldy $02
    lda $7d
    sta $0004,y
    txa
    sta $0006,y
    tya
    sta $0006,x
    sep #$20
.a8
    lda $f6
    sta $0008,x
    ldx $7d
    lda $38,x
    ora $f6
    sta $38,x
    plx

loc_7f4938:
    rep #$20
.a16
    lda $18dd
    clc
    adc #$000a
    tay
    dec $18db
    beq loc_7f494a
    jmp loc_7f4432

loc_7f494a:
    sep #$20
.a8
    rts
    .incbin "data/01494d-015183.bin"

sub_7f5183:
    rep #$20
.a16
    lda $1b96
    bit #$0100
    sep #$20
.a8
    beq loc_7f5192
    brl loc_7f529e

loc_7f5192:
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $d98c
    sta $e83f,y
    iny
    iny
    lda $d98a
    clc
    adc #$0008
    and #$00ff
    lsr a
    lsr a
    lsr a
    lsr a
    asl a
    tax
    lda $7f5163,x
    clc
    adc #$2040
    sta $e83f,y
    iny
    iny
    sep #$20
.a8
    rep #$30
.a16
    lda $1b96
    bit #$0100
    beq loc_7f51d5
    brl loc_7f5283

loc_7f51d5:
    stz $1bc8
    stz $1bca
    lda $e82e
    cmp #$0001
    bpl loc_7f51e6
    inc $1bca

loc_7f51e6:
    ldx $12a8
    bne loc_7f51ee
    brl loc_7f5266

loc_7f51ee:
    lda $1cee,x
    and #$00ff
    bne loc_7f51ff

loc_7f51f6:
    lda $0000,x
    tax
    bne loc_7f51ee
    jmp loc_7f5266

loc_7f51ff:
    sta $5f
    lda $000c,x
    sec
    sbc $d984
    sta $02
    lda $d988
    sec
    sbc $0010,x
    sta $97
    stz $50
    lda $5f
    cmp #$001e
    beq loc_7f5221
    cmp #$0086
    bne loc_7f5223

loc_7f5221:
    inc $50

loc_7f5223:
    bit #$0080
    beq loc_7f5257
    and #$007f
    xba
    ora #$002e
    sta $5f
    lda $1bca
    bne loc_7f523a
    dec $5f
    bra loc_7f5257

loc_7f523a:
    lda $000e,x
    sec
    sbc $d986
    sta $08
    cmp #$fe00
    bmi loc_7f524f
    cmp #$0200
    bpl loc_7f5253
    bra loc_7f5257

loc_7f524f:
    inc $5f
    bra loc_7f5257

loc_7f5253:
    dec $5f
    bra loc_7f5257

loc_7f5257:
    jsr sub_7f52a3
    bcs loc_7f5263
    lda $50
    beq loc_7f5263
    inc $1bc8

loc_7f5263:
    brl loc_7f51f6

loc_7f5266:
    rep #$20
    lda $1b88
    bit #$0001
    beq loc_7f5283
    lda $1bc8
    bne loc_7f5283
    lda $1b96
    bit #$4000
    bne loc_7f5283
    lda #$0100
    tsb $1b96

loc_7f5283:
    sep #$20
.a8
    rep #$20
.a16
    lda $1b84
    bit #$0001
    sep #$20
.a8
    bne loc_7f5295
    jsl sub_7f6e2e

loc_7f5295:
    sep #$20
    pla
    sta $5e
    sta $00303a

loc_7f529e:
    rtl
    .db $20,$a3,$52,$6b

sub_7f52a3:
.a16
    phx
    lda $02
    sta $04
    lda $97
    sta $e4
    lda $e82e
    beq loc_7f52d8
    bit #$8000
    bne loc_7f52cc
    tax

loc_7f52b7:
    lda $04
    cmp #$8000
    ror a
    sta $04
    lda $e4
    cmp #$8000
    ror a
    sta $e4
    dex
    bne loc_7f52b7
    bra loc_7f52d8

loc_7f52cc:
    eor #$ffff
    inc a
    tax

loc_7f52d1:
    asl $04
    asl $e4
    dex
    bne loc_7f52d1

loc_7f52d8:
    lda $02
    cmp #$8000
    ror a
    clc
    adc $e832
    bmi loc_7f5327
    cmp $e830
    bpl loc_7f5327
    lda $97
    cmp #$8000
    ror a
    clc
    adc $e832
    bmi loc_7f5327
    cmp $e830
    bpl loc_7f5327
    lda $04
    xba
    sep #$20
.a8
    clc
    adc $d98c
    pha
    rep #$20
.a16
    lda $e4
    and #$ff00
    clc
    adc $d98c
    sep #$20
.a8
    pla
    rep #$20
.a16
    sta $e83f,y
    iny
    iny
    lda $5f
    clc
    adc #$2040
    sta $e83f,y
    iny
    iny
    plx
    clc
    rts

loc_7f5327:
    plx
    sec
    rts

sub_7f532a:
.a8
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    lda #$0b
    sta $003034
    rep #$20
.a16
    lda #$87be
    sta $00301e
    lda #$0040
    trb $1b92
    sep #$20

loc_7f534b:
.a8
    lda $003030
    and #$20
    bne loc_7f534b
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    rtl

sub_7f535e:
    php
    rep #$30
.a16
    ldx $1c08
    jsr (tbl_7f5369,x)
    plp
.a8
    rtl

tbl_7f5369:
    .db $79,$53,$79,$53,$79,$53,$79,$53,$79,$53,$79,$53,$79,$53,$79,$53

loc_7f5379:
.a16
    jsr sub_7f537d
    rts

sub_7f537d:
    lda $1b8c

loc_7f5380:
    bit #$0002
    bne loc_7f539b
    jsr sub_7f55fe
    jsr sub_7f5693
    jsr sub_7f55a0
    jsl sub_7f53e1
    jsr sub_7f5a8d
    jsr sub_7f649a
    jsr sub_7f66e6

loc_7f539b:
    rts

sub_7f539c:
.a8
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$30
.a16
    lda $1b84
    bit #$001a
    bne loc_7f53d7
    lda $1b96
    bit #$0004
    beq loc_7f53d7
    lda $1b96
    bit #$0008
    beq loc_7f53d7
    lda $1b86
    bit #$0020
    bne loc_7f53d7
    sep #$20
.a8
    phb
    lda #$7e
    pha
    plb
    jsl sub_7f535e
    plb

loc_7f53d7:
    sep #$20
    pla
    sta $5e
    sta $00303a
    rtl

sub_7f53e1:
.a16
    lda $1b8c
    bit #$0001
    bne loc_7f53f4
    ldy $e079
    lda $e085
    asl a
    tax
    jsr (tbl_7f53f5,x)

loc_7f53f4:
    rtl

tbl_7f53f5:
    .db $fd,$53,$2e,$54,$d8,$54,$de,$54

loc_7f53fd:
    jsr sub_7f550a
    lda $0008,y
    dec a
    sta $0008,y
    bne loc_7f542d
    lda $0030,y
    ora #$0800
    sta $0030,y
    lda #$0004
    tsb $e087
    lda #$0002
    trb $e087
    lda #$0010
    sta $0008,y
    lda #$0040
    tsb $1c0e
    inc $e085

loc_7f542d:
    rts

loc_7f542e:
    lda $e087
    bit #$0008
    beq loc_7f544f
    lda $e093
    bne loc_7f5443
    lda $1b86
    bit #$0010
    bne loc_7f5444

loc_7f5443:
    rts

loc_7f5444:
    ldx $e091
    lda #$0008
    trb $e087
    bra loc_7f54cb

loc_7f544f:
    jsr sub_7f550a
    lda $0008,y
    dec a
    sta $0008,y
    beq loc_7f545c
    rts

loc_7f545c:
    lda #$0010
    sta $0008,y
    lda $0030,y
    bit #$2000
    lda $e093
    beq loc_7f5487
    ldx $db45
    lda $000c,x
    sta $04
    lda $000e,x
    sta $0a
    jsr sub_7f5569
    bcs loc_7f5480
    rts

loc_7f5480:
    lda #$0008
    tsb $e087
    rts

loc_7f5487:
    ldx $e0a3
    beq loc_7f549a

loc_7f548c:
    lda $002e,x
    bit #$bfc9
    beq loc_7f549b

loc_7f5494:
    lda $0000,x
    tax
    bne loc_7f548c

loc_7f549a:
    rts

loc_7f549b:
    lda $001c,x
    and #$00ff
    sta $04
    lda $001f,x
    and #$00ff
    sta $0a
    jsr sub_7f5532
    bcc loc_7f5494
    stx $e091
    lda $1b86
    bit #$0010
    bne loc_7f54cb
    lda $002e,x
    ora #$2000
    sta $002e,x
    lda #$0008
    tsb $e087
    rts

loc_7f54cb:
    txy
    lda #$0200
    tsb $db33
    jsl sub_7f6181
    bra loc_7f54de

loc_7f54d8:
    lda $e089
    beq loc_7f54de
    rts

loc_7f54de:
    ldy $e079
    lda $0030,y
    and #$f7ff
    sta $0030,y
    lda #$0004
    trb $e087
    lda #$0002
    tsb $e087
    ldx $1ba3
    lda $7f5504,x
    sta $0008,y
    stz $e085
    rts
    .db $dc,$05,$64,$05,$b0,$04

sub_7f550a:
    lda $000c,y
    dec a
    sta $000c,y
    beq loc_7f5514
    rts

loc_7f5514:
    lda #$003c
    sta $000c,y
    lda $0024,y
    clc
    adc #$1000
    sta $0024,y
    xba
    clc
    adc #$0008
    and #$00f0
    lsr a
    lsr a
    sta $e095
    rts

sub_7f5532:
    ldy $e079
    lda $0025,y
    and #$00ff
    sta $3c
    lda $001c,y
    and #$00ff
    sta $02
    lda $001f,y
    and #$00ff
    sta $08
    jsl sub_7f6a46
    sep #$20
.a8
    xba
    sec
    sbc $3c
    cmp #$0b
    bcc loc_7f5561
    beq loc_7f5561
    cmp #$f5
    bcc loc_7f5565

loc_7f5561:
    rep #$20
.a16
    sec
    rts

loc_7f5565:
.a8
    rep #$20
.a16
    clc
    rts

sub_7f5569:
    ldy $e079
    lda $0025,y
    and #$00ff
    sta $3c
    lda $001c,y
    and #$00ff
    sta $02
    lda $001f,y
    and #$00ff
    sta $08
    jsl sub_7f6a46
    sep #$20
.a8
    xba
    sec
    sbc $3c
    cmp #$08
    bcc loc_7f5598
    beq loc_7f5598
    cmp #$f8
    bcc loc_7f559c

loc_7f5598:
    rep #$20
.a16
    sec
    rts

loc_7f559c:
.a8
    rep #$20
.a16
    clc
    rts

sub_7f55a0:
    lda $1b8c
    bit #$0001
    bne loc_7f55be
    lda $1b90
    bit #$0020
    bne loc_7f55be
    ldy $db61
    lda $0036,y
    and #$00ff
    asl a
    tax
    jsr (tbl_7f55bf,x)

loc_7f55be:
    rts

tbl_7f55bf:
    .db $c7,$55,$e3,$55,$e8,$55,$f8,$55

loc_7f55c7:
    tyx
    lda $e093
    beq loc_7f55ce
    rts

loc_7f55ce:
    lda $d7f2
    dec a
    bne loc_7f55d9
    lda #$0780
    bra loc_7f55dc

loc_7f55d9:
    lda #$05a0

loc_7f55dc:
    sta $003e,x
    inc $0036,x
    rts

loc_7f55e3:
    tyx
    jsr sub_7f600a
    rts

loc_7f55e8:
    tyx
    lda $da43
    cmp #$0010
    bpl loc_7f55f7
    jsr sub_7f6027
    inc $0036,x

loc_7f55f7:
    rts

loc_7f55f8:
    tyx
    rts

sub_7f55fa:
    jsr sub_7f55fe
    rtl

sub_7f55fe:
    ldx $db67
    beq loc_7f5625

loc_7f5603:
    lda $001c,x
    bit #$0001
    beq loc_7f561f
    lda $001c,x
    bit #$1200
    bne loc_7f561f
    lda $0036,x
    and #$00ff
    asl a
    txy
    tax
    jsr (tbl_7f5626,x)

loc_7f561f:
    lda $0000,x
    tax
    bne loc_7f5603

loc_7f5625:
    rts

tbl_7f5626:
    .db $2e,$56,$30,$56,$56,$56,$63,$56

loc_7f562e:
    tyx
    rts

loc_7f5630:
    tyx
    lda $1b90
    bit #$0008
    bne loc_7f5655
    phx
    ldx $d7f2
    lda $7f6cda,x
    clc
    adc $0004,y
    and #$00ff
    asl a
    tax
    lda $7f6cdd,x
    sta $003e,y
    plx
    inc $0036,x

loc_7f5655:
    rts

loc_7f5656:
    tyx
    lda $001c,x
    bit #$0280
    bne loc_7f5662
    jsr sub_7f600a

loc_7f5662:
    rts

loc_7f5663:
    tyx
    lda $da43
    cmp #$0010
    bpl loc_7f568e
    lda $da45
    cmp #$0006
    bpl loc_7f568e
    lda $001c,x
    bit #$1a80
    bne loc_7f568e
    jsr sub_7f6027
    lda $001c,x
    ora #$0800
    sta $001c,x
    lda #$0000
    sta $0036,x

loc_7f568e:
    rts

sub_7f568f:
    jsr sub_7f5693
    rtl

sub_7f5693:
    lda $1b90
    bit #$0001
    bne loc_7f56bd
    lda #$ffff
    sta $da73
    ldy $e0a3
    beq loc_7f56bd

loc_7f56a6:
    ldx $0000,y
    phx
    lda $002e,y
    bit #$0040
    beq loc_7f56ba
    lda $0004,y
    asl a
    tax
    jsr (tbl_7f56be,x)

loc_7f56ba:
    ply
    bne loc_7f56a6

loc_7f56bd:
    rts

tbl_7f56be:
    .db $d0,$56,$d1,$56,$dd,$56,$fc,$56,$20,$57,$6e,$57,$78,$57,$f4,$57
    .db $ed,$57

loc_7f56d0:
    rts

loc_7f56d1:
    jsr sub_7f5ee8
    bcc loc_7f56dc
    lda #$0002
    sta $0004,y

loc_7f56dc:
    rts

loc_7f56dd:
    lda #$0019
    sta $0044,y
    lda #$0000
    sta $0046,y
    lda #$0003
    sta $0004,y
    lda #$0018
    sta $0008,y
    sta $0048,y
    dec $da39
    rts

loc_7f56fc:
    jsr sub_7f5ee8
    bcc loc_7f571f
    lda #$0000
    sta $0046,y
    lda #$ffff
    sta $0044,y
    lda #$0001
    sta $000e,y
    lda #$0001
    sta $0008,y
    lda #$0004
    sta $0004,y

loc_7f571f:
    rts

loc_7f5720:
    lda $0008,y
    beq loc_7f5731
    jsr sub_7f5920
    bcc loc_7f5730
    lda #$0000
    sta $0008,y

loc_7f5730:
    rts

loc_7f5731:
    lda $0012,y
    tax
    sep #$20
.a8
    lda $000c,x
    sta $001c,y
    lda $000e,x
    dec a
    sta $001f,y
    rep #$20
.a16
    lda #$001a
    sta $0044,y
    lda #$0000
    sta $0046,y
    lda #$0005
    sta $0004,y
    lda #$001b
    sta $0008,y
    sta $0048,y
    lda #$0000
    sta $000e,y
    lda #$0010
    tsb $1c0e
    rts

loc_7f576e:
    jsr sub_7f5ee8
    bcc loc_7f5777
    jsl sub_7f58a6

loc_7f5777:
    rts

loc_7f5778:
    lda $0012,y
    tax
    sep #$20
.a8
    lda $001c,y
    sta $000c,x
    lda $001f,y
    sta $000e,x
    rep #$20
.a16
    lda $002e,y
    bit #$0004
    bne loc_7f5798
    jsr sub_7f5943
    rts

loc_7f5798:
    lda $002e,y
    and #$bffb
    sta $002e,y
    lda $0030,y
    ora #$0004
    sta $0030,y
    lda #$0000
    sta $000e,y
    lda #$0008
    sta $0004,y
    lda $001e,x
    ora #$0002
    sta $001e,x
    lda #$0258
    sta $0034,x
    lda #$0001
    sta $0032,x
    lda #$0002
    sta $004a,x
    lda #$0000
    sta $004c,x
    lda $1b86
    bit #$0010
    bne loc_7f57e6
    lda #$0008
    tsb $f55c
    rts

loc_7f57e6:
    lda #$0080
    tsb $db33
    rts

loc_7f57ed:
    jsr sub_7f57f8
    jsr sub_7f5943
    rts

loc_7f57f4:
    jsr sub_7f57f8
    rts

sub_7f57f8:
    lda $1b8c
    bit #$0001
    bne loc_7f5855
    lda $0012,y
    tax
    lda $001e,x
    bit #$0002
    beq loc_7f5855
    lda $0034,x
    beq loc_7f5838
    dec a
    sta $0034,x
    beq loc_7f5838
    cmp $da73
    bcs loc_7f5855
    lda $1b88
    bit #$0080
    bne loc_7f5855
    stx $da6b
    lda $0034,x
    sta $da71
    sta $da73
    lda #$0001
    sta $da69
    bra loc_7f5855

loc_7f5838:
    lda $1b88
    bit #$0080
    bne loc_7f5855
    stx $da6b
    lda $0034,x
    sta $da71
    lda #$0002
    sta $da69
    lda #$0080
    tsb $1b88

loc_7f5855:
    rts

sub_7f5856:
    phx
    phy
    lda #$ffff
    sta $da73
    ldy $e0a3
    beq loc_7f5874

loc_7f5863:
    lda $002e,y
    bit #$0040
    beq loc_7f586e
    jsr sub_7f5877

loc_7f586e:
    lda $0000,y
    tay
    bne loc_7f5863

loc_7f5874:
    ply
    plx
    rtl

sub_7f5877:
    lda $1b88
    bit #$0080
    bne loc_7f58a5
    lda $0012,y
    tax
    lda $001e,x
    bit #$0002
    beq loc_7f58a5
    lda $0034,x
    cmp $da73
    bcs loc_7f58a5
    stx $da6b
    sta $da71
    sta $da73
    sep #$20
.a8
    lda #$10
    tsb $1cd3
    rep #$20

loc_7f58a5:
.a16
    rts

sub_7f58a6:
    lda $0012,y
    tax
    sep #$20
.a8
    lda $000e,x
    sta $001f,y
    lda $002a,x
    sta $0020,y
    lda $002c,x
    sta $0022,y
    rep #$20
.a16
    lda #$0000
    sta $0046,y
    lda #$0018
    sta $0044,y
    lda #$0050
    sta $0048,y
    lda $002e,y
    and #$dfff
    sta $002e,y
    lda $002e,y
    ora #$4000
    sta $002e,y
    lda $0030,y
    ora #$0014
    sta $0030,y
    lda #$0001
    sta $000e,y
    lda #$0006
    sta $0004,y
    lda #$0018
    sta $0044,y
    lda #$0019
    jsr sub_7f590a
    rtl

sub_7f5906:
    jsr sub_7f590a
    rtl

sub_7f590a:
    sta $0026,y
    jsl sub_7f698b
    lda $0012,y
    tax
    lda $0024,y
    sta $0024,x
    rts
    .db $20,$20,$59,$6b

sub_7f5920:
    lda $001c,y
    and #$00ff
    sta $02
    lda $001f,y
    and #$00ff
    sta $08
    lda $0020,y
    sta $04
    lda $0022,y
    sta $0a
    lda $0040,y
    sta $e4
    jsr sub_7f6aae
    rts

sub_7f5943:
    phy
    lda $0012,y
    tay
    tax
    inc $0022,x
    lda $1b90
    bit #$0010
    bne loc_7f595f
    lda $0036,y
    and #$00ff
    asl a
    tax
    jsr (tbl_7f5961,x)

loc_7f595f:
    ply
    rts

tbl_7f5961:
    .db $6b,$59,$6c,$59,$3a,$5a,$47,$5a,$6d,$5a

loc_7f596b:
    rts

loc_7f596c:
    lda $da43
    cmp #$0010
    bpl loc_7f597c
    lda $da4d
    cmp #$0002
    bmi loc_7f597d

loc_7f597c:
    rts

loc_7f597d:
    ldx $0018,y
    phx
    lda $7f6c10,x
    and #$00ff
    asl a
    tax
    jmp (tbl_7f598d,x)

tbl_7f598d:
    .db $99,$59,$9b,$59,$a1,$59,$ba,$59,$cf,$59,$df,$59

loc_7f5999:
    plx
    rts

loc_7f599b:
    plx
    jsr sub_7f5a10
    bra loc_7f59f4

loc_7f59a1:
    plx
    jsr sub_7f5a10
    lda $001c,y
    ora #$0100
    sta $001c,y
    lda $7f6c14,x
    and #$00ff
    sta $001a,y
    bra loc_7f59f3

loc_7f59ba:
    plx
    lda $001c,y
    bit #$0100
    beq loc_7f59c4
    rts

loc_7f59c4:
    lda $001c,y
    ora #$0100
    sta $001c,y
    bra loc_7f59e0

loc_7f59cf:
    plx
    jsr sub_7f5a10
    lda $7f6c14,x
    and #$00ff
    sta $001a,y
    bra loc_7f59f3

loc_7f59df:
    plx

loc_7f59e0:
    lda $001a,y
    dec a
    beq loc_7f5a01
    sta $001a,y
    dex
    dex
    dex
    dex
    dex
    jsr sub_7f5a10
    bra loc_7f59fc

loc_7f59f3:
    inx

loc_7f59f4:
    inx
    inx
    inx
    inx
    txa
    sta $0018,y

loc_7f59fc:
    tyx
    inc $0036,x
    rts

loc_7f5a01:
    inx
    txa
    sta $0018,y
    lda $001c,y
    and #$feff
    sta $001c,y
    rts

sub_7f5a10:
    lda $7f6c11,x
    sta $003e,y
    lda $7f6c13,x
    and #$00ff
    sta $02
    lda $da3b
    dec a
    bne loc_7f5a28
    inc $02

loc_7f5a28:
    lda $02
    sta $003c,y
    sta $003a,y
    lda $001c,y
    ora #$0400
    sta $001c,y
    rts

loc_7f5a3a:
    tyx
    lda $001c,x
    bit #$0080
    bne loc_7f5a46
    jsr sub_7f600a

loc_7f5a46:
    rts

loc_7f5a47:
    tyx

loc_7f5a48:
    lda $da43
    cmp #$0010
    bpl loc_7f5a6c
    lda $da4d
    cmp #$0002
    bpl loc_7f5a6c
    lda $003a,x
    beq loc_7f5a66
    dec a
    sta $003a,x
    jsr sub_7f6027
    bra loc_7f5a48

loc_7f5a66:
    lda #$0001
    sta $0036,x

loc_7f5a6c:
    rts

loc_7f5a6d:
    tyx
    jsr sub_7f600a
    bcc loc_7f5a8c
    lda #$0000
    sta $0036,x
    lda $0028,x
    tay
    lda $0030,y
    and #$fffb
    sta $0030,y
    lda #$0190
    jsr sub_7f590a

loc_7f5a8c:
    rts

sub_7f5a8d:
    lda $1b90
    bit #$0002
    bne loc_7f5ab4
    ldy $e0a3
    beq loc_7f5ab4

loc_7f5a9a:
    ldx $0000,y
    phx
    lda $002e,y
    bit #$8740
    bne loc_7f5ab1
    lda $0004,y
    and #$00ff
    asl a
    tax
    jsr (tbl_7f5ab5,x)

loc_7f5ab1:
    ply
    bne loc_7f5a9a

loc_7f5ab4:
    rts

tbl_7f5ab5:
    .db $db,$5a,$67,$5b,$8a,$5b,$dc,$5a,$03,$5b,$1f,$5b,$56,$5b,$c1,$5b
    .db $e0,$5b,$b3,$5c,$4e,$5c,$b2,$5c,$d6,$5c,$02,$5d,$2e,$5d,$45,$5d
    .db $72,$5d,$87,$5d,$9e,$5d

loc_7f5adb:
    rts

loc_7f5adc:
    jsr sub_7f5920
    bcc loc_7f5b02
    lda #$0000
    sta $000e,y
    lda #$0023
    sta $0044,y
    lda #$0000
    sta $0046,y
    lda #$0004
    sta $0004,y
    lda #$0010
    sta $0008,y
    sta $0048,y

loc_7f5b02:
    rts

loc_7f5b03:
    lda $0008,y
    dec a
    sta $0008,y
    bne loc_7f5b1e
    lda $002e,y
    and #$bfff
    sta $002e,y
    lda #$0007
    sta $0004,y
    dec $d9b0

loc_7f5b1e:
    rts

loc_7f5b1f:
    jsr sub_7f5920
    bcc loc_7f5b55
    lda $002e,y
    ora #$4000
    sta $002e,y
    lda #$0000
    sta $000e,y
    lda #$0026
    sta $0044,y
    lda #$0000
    sta $0046,y
    lda #$0006
    sta $0004,y
    lda #$0032
    sta $0008,y
    sta $0048,y
    lda #$008b
    jsl sub_7f6e09

loc_7f5b55:
    rts

loc_7f5b56:
    lda $0008,y
    dec a
    sta $0008,y
    bne loc_7f5b66
    jsl sub_7f6181
    dec $d9b0

loc_7f5b66:
    rts

loc_7f5b67:
    jsr sub_7f5ee8
    bcc loc_7f5b89
    lda $002e,y
    bit #$0020
    beq loc_7f5b90
    lda #$0200
    sta $004a,y
    jsr sub_7f679d
    lda #$0200
    sta $0026,y
    lda #$0007
    sta $000e,y

loc_7f5b89:
    rts

loc_7f5b8a:
    lda $0008,y
    beq loc_7f5b90
    rts

loc_7f5b90:
    jsr sub_7f607a
    lda #$0007
    sta $0004,y
    lda $d998
    beq loc_7f5ba2
    dec a
    sta $d998

loc_7f5ba2:
    lda $1b86
    bit #$0010
    beq loc_7f5bc0
    lda $002e,y
    bit #$0020
    bne loc_7f5bba
    lda #$0020
    tsb $db33
    bra loc_7f5bc0

loc_7f5bba:
    lda #$0010
    tsb $db33

loc_7f5bc0:
    rts

loc_7f5bc1:
    lda $002e,y
    bit #$0002
    bne loc_7f5be0
    lda $0030,y
    bit #$0100
    beq loc_7f5bd4
    brl loc_7f5e38

loc_7f5bd4:
    lda $002e,y
    bit #$0080
    beq loc_7f5bdf
    brl loc_7f5bf5

loc_7f5bdf:
    rts

loc_7f5be0:
    lda $0008,y
    beq loc_7f5beb
    dec a
    sta $0008,y
    bne loc_7f5bf4

loc_7f5beb:
    jsr sub_7f5f0d
    lda #$0078
    sta $0008,y

loc_7f5bf4:
    rts

loc_7f5bf5:
    lda $1b88
    bit #$0060
    bne loc_7f5c2f
    lda $0008,y
    beq loc_7f5c07
    dec a
    sta $0008,y
    rts

loc_7f5c07:
    jsr sub_7f6a9d
    lda #$0003
    sta $000e,y
    lda #$01f4
    sta $0026,y
    lda $0034,y
    sec
    sbc #$001c
    asl a
    tax
    lda $7f5c27,x
    sta $0008,y
    rts
    .db $3c,$00,$78,$00,$b4,$00,$f0,$00

loc_7f5c2f:
    lda $002e,y
    bit #$0004
    bne loc_7f5c47
    lda #$0096
    sta $0026,y
    lda #$0003
    sta $000e,y
    jsr sub_7f6a87
    rts

loc_7f5c47:
    lda #$0000
    sta $000e,y
    rts

loc_7f5c4e:
    jsr sub_7f5920
    bcc loc_7f5cb1
    ldx $e079
    lda $001b,x
    sta $001b,y
    lda $001e,x
    sta $001e,y
    lda #$0002
    sta $e093
    lda $0030,x
    ora #$2000
    sta $0030,x
    lda #$0400
    tsb $e087
    lda #$000b
    sta $0004,y
    lda #$0000
    sta $000e,y
    lda #$0100
    tsb $db33
    lda $1b86
    bit #$0010
    bne loc_7f5c97
    lda #$0200
    tsb $e087

loc_7f5c97:
    lda $e087
    bit #$0008
    beq loc_7f5cb1
    lda #$0008
    trb $e087
    ldx $e091
    lda $002e,x
    and #$dfff
    sta $002e,x

loc_7f5cb1:
    rts

loc_7f5cb2:
    rts

loc_7f5cb3:
    lda $0008,y
    bne loc_7f5cc9
    jsr sub_7f5e13
    lda $1b88
    bit #$0010
    bne loc_7f5cca
    lda #$0011
    sta $0004,y

loc_7f5cc9:
    rts

loc_7f5cca:
    lda #$0008
    tsb $db33
    jsr sub_7f5f0d
    brl loc_7f5d9e

loc_7f5cd6:
    tyx
    lda #$001c
    sta $0044,y
    lda #$0000
    sta $0046,y
    lda #$0000
    sta $000e,y
    lda $002e,y
    ora #$6000
    sta $002e,y
    lda #$003f
    sta $0008,y
    sta $0048,y
    lda #$000e
    sta $0004,y
    rts

loc_7f5d02:
    tyx
    lda #$0022
    sta $0044,y
    lda #$0000
    sta $0046,y
    lda #$0000
    sta $000e,y
    lda $002e,y
    ora #$6000
    sta $002e,y
    lda #$004b
    sta $0008,y
    sta $0048,y
    lda #$000e
    sta $0004,y
    rts

loc_7f5d2e:
    tyx
    jsr sub_7f5ee8
    bcc loc_7f5d44
    jsl sub_7f620f
    lda #$0080
    trb $e087
    lda #$0000
    sta $d7fc

loc_7f5d44:
    rts

loc_7f5d45:
    tyx
    lda $1b88
    bit #$0010
    bne loc_7f5d93
    jsr sub_7f5ee8
    bcc loc_7f5d71
    lda #$000c
    sta $0008,y
    sta $0048,y
    lda #$0015
    sta $0044,y
    lda #$0000
    sta $0046,y
    lda $002e,y
    ora #$4000
    sta $002e,y

loc_7f5d71:
    rts

loc_7f5d72:
    tyx
    lda $1b88
    bit #$0010
    bne loc_7f5d93
    jsr sub_7f5ee8
    bcc loc_7f5d86
    jsr sub_7f5f0d
    jsr sub_7f5e13

loc_7f5d86:
    rts

loc_7f5d87:
    lda $1b88
    bit #$0010
    bne loc_7f5d9e
    jsr sub_7f5ee8
    rts

loc_7f5d93:
    jsr sub_7f5f0d
    lda #$0008
    tsb $db33
    bra loc_7f5d9e

loc_7f5d9e:
    jsl sub_7f6181
    rts

sub_7f5da3:
    rep #$20
    lda $002e,y
    ora #$2000
    sta $002e,y
    lda $0030,y
    ora #$0004
    sta $0030,y
    lda #$0006
    sta $000e,y
    lda #$000f
    sta $0004,y
    lda #$003c
    sta $0008,y
    lda #$0400
    sta $004a,y
    ldx #$0000
    lda $001c,y
    and #$00ff
    cmp #$0020
    bmi loc_7f5dea
    inx
    cmp #$0030
    bmi loc_7f5dea
    inx
    cmp #$0040
    bmi loc_7f5dea
    inx

loc_7f5dea:
    txa
    asl a
    asl a
    tax
    lda $7f6d10,x
    sta $0028,y
    lda $7f6d20,x
    sta $002b,y
    sep #$20
.a8
    lda $7f6d12,x
    sta $002a,y
    lda $7f6d22,x
    sta $002d,y
    rep #$20
.a16
    rtl
    .db $20,$13,$5e,$6b

sub_7f5e13:
    lda #$0022
    sta $0044,y
    lda #$004b
    sta $0008,y
    sta $0048,y
    lda #$0000
    sta $0046,y
    lda #$0000
    sta $000e,y
    lda $002e,y
    ora #$6000
    sta $002e,y
    rts

loc_7f5e38:
    lda $1b92
    bit #$0800
    beq loc_7f5e41
    rts

loc_7f5e41:
    lda $000a,y
    asl a
    tax
    jmp (tbl_7f5e49,x)

tbl_7f5e49:
    .db $71,$5e,$9f,$5e,$a6,$5e,$53,$5e,$6d,$5e

loc_7f5e53:
    lda #$00c8
    sta $0026,y
    jsr sub_7f698f
    lda #$0001
    sta $000e,y
    lda #$00b4
    sta $000c,y
    tyx
    inc $000a,x
    rts

loc_7f5e6d:
    jsr sub_7f5ead
    rts

loc_7f5e71:
    jsr sub_7f6a9d
    lda #$0003
    sta $000e,y
    lda #$0078
    sta $000c,y
    lda #$0226
    sta $0026,y
    lda $1b8a
    bit #$0080
    beq loc_7f5e9a
    lda #$04b0
    sta $0026,y
    lda #$012c
    sta $000c,y

loc_7f5e9a:
    tyx
    inc $000a,x
    rts

loc_7f5e9f:
    jsr sub_7f6a9d
    jsr sub_7f5ead
    rts

loc_7f5ea6:
    lda #$0000
    sta $000a,y
    rts

sub_7f5ead:
    tyx
    lda $000c,y
    beq loc_7f5eb8
    dec a
    sta $000c,y
    rts

loc_7f5eb8:
    inc $000a,x
    rts

loc_7f5ebc:
    lda $0030,y
    ora #$0200
    sta $0030,y
    jsr sub_7f6a9d
    lda #$0258
    sta $0026,y
    jsr sub_7f67c1
    lda #$0007
    sta $000e,y
    lda #$00b4
    sta $0050,y
    rts

loc_7f5ede:
    jsr sub_7f5e13
    lda #$0011
    sta $0004,y
    rtl

sub_7f5ee8:
    lda #$0001
    jsl sub_7f6908
    sta $02
    lda $0008,y
    sec
    sbc $02
    sta $0008,y
    beq loc_7f5efe
    bcs loc_7f5f07

loc_7f5efe:
    lda $0004,y
    inc a
    sta $0004,y
    sec
    rts

loc_7f5f07:
    clc
    rts

sub_7f5f09:
    jsr sub_7f5f0d
    rtl

sub_7f5f0d:
    lda $002e,y
    bit #$0020
    bne loc_7f5f1d
    lda #$0004
    tsb $1c0e
    bra loc_7f5f23

loc_7f5f1d:
    lda #$0008
    tsb $1c0e

loc_7f5f23:
    lda $003c,y
    sta $02
    lda $0038,y
    sta $08
    jsl sub_7f6d46
    clc
    adc $db4b
    sta $db4b
    rts

sub_7f5f39:
    lda $1b8a
    bit #$0200
    bne loc_7f5f46
    lda $db4b
    bne loc_7f5f59

loc_7f5f46:
    lda $d9b9
    beq loc_7f5f57
    dec a
    sta $d9b9
    bne loc_7f5f57
    lda #$2000
    trb $1b9c

loc_7f5f57:
    clc
    rtl

loc_7f5f59:
    dec $db4b
    dec $db47
    lda #$1000
    tsb $1b88
    lda #$2000
    tsb $1b9c
    lda #$0032
    sta $d9b9
    lda #$0064
    sec
    sbc $db47
    sta $db49
    cmp #$0064
    bne loc_7f5f9e
    lda #$0003
    sta $1b78
    lda #$0002
    sta $da21
    lda #$0100
    tsb $1b88
    lda #$0030
    tsb $1b84
    lda #$0200
    tsb $1b8a

loc_7f5f9e:
    sec
    rtl

sub_7f5fa0:
    lda $1b8a
    bit #$0200
    bne loc_7f5fb2
    lda $efd5
    bne loc_7f5fb2
    lda $db4b
    bne loc_7f5fb4

loc_7f5fb2:
    clc
    rtl

loc_7f5fb4:
    dec $db4b
    dec $db47
    lda #$1000
    tsb $1b88
    lda #$0064
    sec
    sbc $db47
    sta $db49
    cmp #$0064
    bne loc_7f6008
    lda #$0002
    sta $da21
    lda #$0100
    tsb $1b88
    lda #$003f
    tsb $1b8c
    lda #$ffff
    trb $da8b
    lda #$ffff
    trb $da8d
    lda #$ffff
    trb $db01
    lda #$ffff
    trb $db23
    stz $d9c4
    lda #$0030
    tsb $1b84
    lda #$0200
    tsb $1b8a

loc_7f6008:
    sec
    rtl

sub_7f600a:
    lda #$0001
    jsl sub_7f6908
    sta $02
    lda $003e,x
    sec
    sbc $02
    sta $003e,x
    beq loc_7f6020
    bpl loc_7f6025

loc_7f6020:
    inc $0036,x
    sec
    rts

loc_7f6025:
    clc
    rts

sub_7f6027:
    php
    phx
    rep #$30
    jsr sub_7f6136
    tya
    sta $0026,x
    lda #$0001
    sta $0004,y
    lda $002e,y
    ora #$2000
    sta $002e,y
    txa
    sta $0012,y
    sta $0014,y
    lda $000c,x
    and #$00ff
    xba
    sta $001b,y
    lda $000e,x
    and #$00ff
    xba
    sta $001e,y
    lda $0010,x
    sta $0020,y
    lda $0012,x
    sta $0022,y
    lda #$0001
    sta $000e,y
    lda #$0018
    sta $0042,y
    jsr sub_7f625c
    plx
    plp
    rts

sub_7f607a:
    lda $002e,y
    bit #$0800
    beq loc_7f6085
    brl loc_7f6131

loc_7f6085:
    lda $0014,y
    tax
    lda $0010,x
    sta $0020,y
    lda $0012,x
    sta $0022,y
    phx
    sep #$20
.a8
    lda #$00
    xba
    ldx $d7f2
    lda $0036,y
    asl a
    clc
    adc $7f6cc3,x
    rep #$20
.a16
    tax
    lda $7f6cab,x
    sta $0026,y
    plx
    lda $002e,y
    bit #$0060
    bne loc_7f610a
    lda $0030,y
    bit #$0080
    bne loc_7f60d6
    lda #$b000
    sta $0024,y
    lda #$0080
    sta $004a,y
    lda #$ffc0
    sta $004c,y
    bra loc_7f60e8

loc_7f60d6:
    lda #$3000
    sta $0024,y
    lda #$0080
    sta $004a,y
    lda #$0040
    sta $004c,y

loc_7f60e8:
    lda #$0240
    sta $004e,y
    lda #$0008
    sta $000e,y
    lda $0030,y
    bit #$0100

loc_7f60fa:
    beq loc_7f6116
    lda #$0000
    sta $000a,y
    lda #$0000
    sta $000c,y
    bra loc_7f6116

loc_7f610a:
    jsr sub_7f698f
    dec $da47
    lda #$0001
    sta $000e,y

loc_7f6116:
    lda #$0000
    sta $0044,y
    sta $0046,y
    lda $002e,y
    and #$9fff
    sta $002e,y
    lda $0030,y
    and #$fffb
    sta $0030,y

loc_7f6131:
    rts

sub_7f6132:
    jsr sub_7f6136
    rtl

sub_7f6136:
    phx
    jsl sub_7f6141
    txy
    plx
    inc $da43
    rts

sub_7f6141:
.a8
    php
    rep #$20
.a16
    ldx #$0000
    txy
    ldx $e0a5
    bne loc_7f6151
    tyx
    jmp loc_7f6ad6

loc_7f6151:
    lda $0000,x
    sta $e0a5
    tya
    bne loc_7f6168
    lda $e0a3
    sta $0000,x
    stz $0002,x
    stx $e0a3
    bra loc_7f6176

loc_7f6168:
    lda $0000,y
    sta $0000,x
    txa
    sta $0000,y
    tya
    sta $0002,x

loc_7f6176:
    ldy $0000,x
    beq loc_7f617f
    txa
    sta $0002,y

loc_7f617f:
    plp
.a8
    rtl

sub_7f6181:
.a16
    php
    rep #$20
    phx
    lda $002e,y
    bit #$0020
    bne loc_7f61bb
    bit #$0080
    bne loc_7f61e4
    bit #$0800
    bne loc_7f61ec
    bit #$0008
    bne loc_7f61ee
    lda $0014,y
    tax
    lda $0030,y
    bit #$1000
    beq loc_7f61b6
    dec $003c,x
    bne loc_7f61b6
    lda $001c,x
    and #$feff
    sta $001c,x

loc_7f61b6:
    dec $da4d
    bra loc_7f61f1

loc_7f61bb:
    lda $0014,y
    tax
    lda $001c,x
    and #$f7ff
    sta $001c,x
    lda #$0001
    sta $0036,x
    dec $da45
    lda $1b94
    bit #$0001
    beq loc_7f61f1
    stz $da11
    lda #$0000
    sta $d7fc
    bra loc_7f61f1

loc_7f61e4:
    dec $da53
    dec $da55
    bra loc_7f61f1

loc_7f61ec:
    bra loc_7f61f1

loc_7f61ee:
    dec $da57

loc_7f61f1:
    lda $003a,y
    tax
    sep #$20
.a8
    stz $d800,x
    stz $d7c2,x
    rep #$20
.a16
    txa
    asl a
    tax
    stz $d7a2,x
    tyx
    jsr sub_7f6213
    dec $da43
    plx
    plp
    rtl

sub_7f620f:
    jsr sub_7f6213
    rtl

sub_7f6213:
    phy
    lda $002e,x
    and #$0000
    sta $002e,x
    lda $0030,x
    and #$0000
    sta $0030,x
    stz $0048,x
    stz $0004,x
    ldy $0002,x
    bne loc_7f623f
    ldy $0000,x
    sty $e0a3
    lda #$0000
    sta $0002,y
    bra loc_7f6251

loc_7f623f:
    phx
    lda $0000,x
    tax
    sta $0000,y
    cmp #$0000
    beq loc_7f6250
    tya
    sta $0002,x

loc_7f6250:
    plx

loc_7f6251:
    lda $e0a5
    sta $0000,x
    stx $e0a5
    ply
    rts

sub_7f625c:
    rep #$20
    phx
    lda $001c,x
    bit #$0010
    beq loc_7f626a
    brl loc_7f639f

loc_7f626a:
    lda $001c,x
    bit #$0004
    bne loc_7f6275
    brl loc_7f633c

loc_7f6275:
    inc $da4d
    lda $002e,y
    ora #$0010
    sta $002e,y
    lda $001c,x
    bit #$0100
    beq loc_7f6292
    lda $0030,y
    ora #$1000
    sta $0030,y

loc_7f6292:
    lda #$000f
    sta $0008,y
    lda $0030,y
    ora #$0004
    sta $0030,y
    phx
    lda $003a,x
    asl a
    tax
    lda $7f6c9b,x
    sta $0029,y
    lda $7f6ca3,x
    sta $002c,y
    plx
    lda $003a,x
    and #$0001
    beq loc_7f62c7
    lda $0030,y
    ora #$0080
    sta $0030,y

loc_7f62c7:
    lda #$0006
    sta $0032,y
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    ldx $d9f9
    lda $00b1fc,x
    sta $02
    lda #$00
    xba
    ldx $d7f2
    lda $7f6d0a,x
    clc
    adc $02
    sta $0034,y
    tax
    lda $7f6c7b,x
    sta $0036,y
    cmp #$02
    bne loc_7f6301

loc_7f6301:
    lda $00b0f8,x
    sta $5f
    lda $00b118,x
    sta $3a
    lda $00b138,x
    sta $3c
    pla
    sta $5e
    sta $00303a
    jsr sub_7f6433
    lda $d9f9
    inc a
    and #$7f
    sta $d9f9
    lda #$02
    sta $003c,y
    rep #$20
.a16
    lda #$0001
    tsb $1c0e
    lda #$0008
    sta $0040,y
    brl loc_7f63da

loc_7f633c:
    inc $da45
    lda #$0032
    sta $0008,y
    lda #$0000
    sta $0029,y
    lda #$ffc0
    sta $002c,y
    lda $d7f2
    asl a
    tax
    lda $7f6491,x
    clc
    adc $d9fb
    tax
    jsl sub_7f63e8
    lda $d9fb
    inc a
    and #$000f
    sta $d9fb
    lda #$0007
    sta $0032,y
    lda #$0003
    sta $0036,y
    lda #$0005
    sta $003c,y
    rep #$20
    lda #$0000
    sta $0024,y
    lda $002e,y
    ora #$0020
    sta $002e,y
    lda #$0002
    tsb $1c0e
    lda #$0006
    sta $0040,y
    brl loc_7f63da

loc_7f639f:
    lda #$000a
    sta $0004,y
    lda #$0007
    sta $0032,y
    lda $002e,y
    ora #$0800
    sta $002e,y
    lda $002e,y
    and #$dfff
    sta $002e,y
    lda #$0005
    sta $0036,y
    lda #$0190
    sta $0026,y
    lda #$0006
    sta $0040,y
    jsl sub_7f698b
    ldx #$0030
    jsl sub_7f63e8

loc_7f63da:
    lda $0036,y
    asl a
    tax
    lda $7f6cc6,x
    sta $db3b
    plx
    rts

sub_7f63e8:
    php
    sep #$20
.a8
    lda #$00
    xba
    lda $5e
    pha
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda $00b27c,x
    sta $0034,y
    tax
    lda $00b158,x
    sta $5f
    lda $00b164,x
    sta $3a
    lda $00b170,x
    sta $3c
    pla
    sta $5e
    sta $00303a
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    jsr sub_7f6433
    plp
.a16
    rtl

sub_7f642b:
    php
    sep #$20
.a8
    jsr sub_7f6433
    plp
.a16
    rtl

sub_7f6433:
.a8
    jsr sub_7f645e
    sta $003a,y
    tax
    lda $3a
    sta $e805,x
    lda $3c
    sta $e815,x
    lda $5f
    sta $d7c2,x
    jsr sub_7f6483
    sta $0038,y
    rep #$20
.a16
    txa
    asl a
    tax
    stz $d7a2,x
    sep #$20
.a8
    rts
    .db $20,$5e,$64,$6b

sub_7f645e:
    phx
    php
    sep #$20
    lda #$00
    xba
    ldx $d7fe

loc_7f6468:
    lda $d800,x
    beq loc_7f6474
    txa
    inc a
    and #$0f
    tax
    bra loc_7f6468

loc_7f6474:
    inc a
    sta $d800,x
    stx $d7fe
    rep #$20
.a16
    txa
    sep #$20
.a8
    plp
    plx
    rts

sub_7f6483:
    pha
    lsr a
    lsr a
    lsr a
    lsr a
    sta $02
    pla
    and #$0f
    clc
    adc $02
    rts
    .db $00,$00,$10,$00,$20,$00,$9d,$08,$00

sub_7f649a:
.a16
    lda #$1000
    trb $1b88
    ldy $e0a3
    beq loc_7f64b0

loc_7f64a5:
    jsr sub_7f64b1
    lda $0000,y
    beq loc_7f64b0
    tay
    bra loc_7f64a5

loc_7f64b0:
    rts

sub_7f64b1:
    lda $002e,y
    bit #$3000
    beq loc_7f64ba
    rts

loc_7f64ba:
    lda $1b88
    bit #$0060
    bne loc_7f6504
    lda $0042,y
    beq loc_7f64cd
    dec a
    sta $0042,y
    bra loc_7f6504

loc_7f64cd:
    lda $0040,y
    and #$00ff
    sta $e4
    jsr sub_7f6a5d
    bcc loc_7f6504
    sty $e097
    jsr sub_7f6653
    lda $002e,y
    ora #$2001
    sta $002e,y
    lda #$0064
    tsb $1b88
    lda #$001e
    tsb $1b8c
    lda #$0002
    sta $1b74
    jsr sub_7f6692
    sta $db5b
    brl loc_7f65ae

loc_7f6504:
    lda $1b8a
    bit #$0010
    beq loc_7f655c
    bit #$0020
    bne loc_7f655c
    lda $002e,y
    bit #$0008
    beq loc_7f655c
    bit #$0001
    bne loc_7f655c
    lda $0040,y
    and #$00ff
    sta $e4
    jsr sub_7f6a5d
    bcc loc_7f655c
    lda #$0020
    tsb $1b8a
    lda #$0001
    sta $d79d
    sep #$20
.a8
    lda $003e,y
    sta $1e09
    rep #$20
.a16
    sty $e099
    lda $000e,y
    sta $e09b
    lda $0004,y
    sta $e09d
    lda #$0000
    sta $000e,y
    lda #$0000
    sta $0004,y

loc_7f655c:
    lda $0030,y
    and #$fffd
    sta $0030,y
    lda $002e,y
    and #$fffb
    sta $002e,y
    jsr sub_7f6692
    cmp #$0000
    beq loc_7f658b
    cmp #$0009
    beq loc_7f659d
    cmp #$0007
    bne loc_7f6589
    lda $0030,y
    ora #$0002
    sta $0030,y

loc_7f6589:
    bra loc_7f65ae

loc_7f658b:
    lda $002e,y
    bit #$0001
    bne loc_7f65ae
    bit #$00b0
    beq loc_7f65ae
    jsr sub_7f65af
    bra loc_7f65ae

loc_7f659d:
    lda $002e,y
    bit #$0040
    beq loc_7f65ae
    lda $002e,y
    ora #$0004
    sta $002e,y

loc_7f65ae:
    rts

sub_7f65af:
    lda $002e,y
    bit #$0080
    bne loc_7f6623
    lda $002e,y
    bit #$0002
    beq loc_7f65c2
    brl loc_7f6639

loc_7f65c2:
    lda $002e,y
    bit #$0020
    bne loc_7f6601
    lda #$0001
    sta $0008,y
    lda #$0400
    sta $004a,y
    lda #$0400
    sta $0026,y
    jsr sub_7f6723
    lda $001c,y
    and #$00ff
    sta $0020,y
    lda $001f,y
    and #$00ff
    sta $0022,y
    lda $1b88
    bit #$0010
    beq loc_7f65ff
    lda #$0004
    tsb $db33

loc_7f65ff:
    bra loc_7f6639

loc_7f6601:
    lda $1b88
    bit #$0010
    bne loc_7f660f
    jsl sub_7f5da3
    bra loc_7f6639

loc_7f660f:
    lda #$0008
    tsb $db33
    lda #$1000
    tsb $1b88
    jsr sub_7f5f0d
    jsl sub_7f6181
    rts

loc_7f6623:
    lda $1b88
    bit #$0010
    beq loc_7f6649
    lda $002e,y
    bit #$0002
    bne loc_7f6639
    lda #$0004
    tsb $db33

loc_7f6639:
    lda $002e,y
    ora #$0006
    sta $002e,y
    lda #$1000
    tsb $1b88
    rts

loc_7f6649:
    lda $002e,y
    and #$fffd
    sta $002e,y
    rts

sub_7f6653:
    lda $002e,y
    bit #$8040
    bne loc_7f6664
    lda #$0000
    sta $0044,y
    sta $0046,y

loc_7f6664:
    lda $0004,y
    sta $0006,y
    lda $000e,y
    sta $0010,y
    lda $002e,y
    bit #$0040
    bne loc_7f6685
    lda #$0000
    sta $000e,y
    lda #$0000
    sta $0004,y
    rts

loc_7f6685:
    lda #$0000
    sta $000e,y
    lda #$0007
    sta $0004,y
    rts

sub_7f6692:
    lda $001c,y
    and #$00ff
    sta $02
    lda $001f,y
    and #$00ff
    sta $08
    jsr sub_7f6931
    rts

sub_7f66a6:
    lda $0004,y
    and #$00ff
    asl a
    tax
    jsr (tbl_7f5ab5,x)
    rtl

sub_7f66b2:
    lda $000e,y
    asl a
    tax
    jsr (tbl_7f6700,x)
    rtl

sub_7f66bb:
    lda $0004,y
    and #$00ff
    asl a
    tax
    jsr (tbl_7f5ab5,x)
    lda $000e,y
    asl a
    tax
    jsr (tbl_7f6700,x)
    rtl

sub_7f66cf:
    lda $0004,y
    and #$00ff
    asl a
    tax
    jsr (tbl_7f5ab5,x)
    lda $000e,y
    asl a
    tax
    jsr (tbl_7f6700,x)
    jsr sub_7f64b1
    rtl

sub_7f66e6:
    ldy $e0a3
    bne loc_7f66ee
    brl loc_7f66ff

loc_7f66ee:
    lda $000e,y
    asl a
    tax
    jsr (tbl_7f6700,x)
    lda $0000,y
    beq loc_7f66ff
    tay
    brl loc_7f66ee

loc_7f66ff:
    rts

tbl_7f6700:
    .db $12,$67,$13,$67,$1e,$68,$18,$68,$16,$67,$42,$67,$70,$67,$87,$67
    .db $f8,$67

loc_7f6712:
    rts

loc_7f6713:
    brl loc_7f6830

loc_7f6716:
    lda $0024,y
    clc
    adc $004a,y
    sta $0024,y
    brl loc_7f681e

sub_7f6723:
    lda $001e,y
    cmp #$9800
    bmi loc_7f6735
    lda $004a,y
    eor #$ffff
    inc a
    sta $004a,y

loc_7f6735:
    lda #$0008
    trb $1b92
    lda #$0004
    sta $000e,y
    rts

loc_7f6742:
    lda $0030,y
    bit #$0020
    bne loc_7f6758
    lda $0024,y
    clc
    adc $004a,y
    sta $0024,y
    bne loc_7f676d
    bra loc_7f6764

loc_7f6758:
    lda $0024,y
    sec
    sbc $004a,y
    sta $0024,y
    bne loc_7f676d

loc_7f6764:
    lda $0030,y
    eor #$0020
    sta $0030,y

loc_7f676d:
    brl loc_7f681e

loc_7f6770:
    lda $004a,y
    clc
    adc #$0080
    sta $004a,y
    lda $0024,y
    clc
    adc $004a,y
    sta $0024,y
    brl loc_7f6838

loc_7f6787:
    lda $0008,y
    beq loc_7f679a
    dec a
    sta $0008,y
    lda $0024,y
    clc
    adc $004a,y
    sta $0024,y

loc_7f679a:
    brl loc_7f681e

sub_7f679d:
    jsr sub_7f6964
    sec
    sbc $0024,y
    bit #$8000
    beq loc_7f67ad
    eor #$ffff
    inc a

loc_7f67ad:
    and #$ff00
    xba
    sta $02
    lda $004a,y
    xba
    sta $08
    jsl sub_7f6da0
    sta $0008,y
    rts

sub_7f67c1:
    ldx #$0000
    jsr sub_7f6964
    sec
    sbc $0024,y
    bit #$8000
    beq loc_7f67d5
    eor #$ffff
    inc a
    dex

loc_7f67d5:
    sta $50
    stz $52
    phy
    lda $004a,y
    tay
    jsl sub_7f6ddd
    ply
    lda $004a,y
    cpx #$0000
    bpl loc_7f67ef
    eor #$ffff
    inc a

loc_7f67ef:
    sta $004a,y
    lda $50
    sta $0008,y
    rts

loc_7f67f8:
    lda $0024,y
    clc
    adc $004c,y
    sta $0024,y
    lda $004e,y
    dec a
    sta $004e,y
    beq loc_7f680e
    brl loc_7f681e

loc_7f680e:
    jsr sub_7f67c1
    lda #$0007
    sta $000e,y
    rts

loc_7f6818:
    jsr sub_7f698f
    brl loc_7f6830

loc_7f681e:
    jsr sub_7f6995
    brl loc_7f6830
    .db $20,$16,$67,$6b,$20,$13,$67,$6b,$20,$30,$68,$6b

loc_7f6830:
    lda $1b92
    bit #$0008
    bne loc_7f6877

loc_7f6838:
    lda $0028,y
    clc
    adc $001a,y
    sta $001a,y
    sep #$20
.a8
    lda $002a,y
    adc $001c,y
    cmp #$0c
    bcc loc_7f6855
    cmp #$f4
    bcs loc_7f6855
    sta $001c,y

loc_7f6855:
    rep #$20
.a16
    lda $002b,y
    clc
    adc $001d,y
    sta $001d,y
    sep #$20
.a8
    lda $002d,y
    adc $001f,y
    cmp #$10
    bcc loc_7f6874
    cmp #$ac
    bcs loc_7f6874
    sta $001f,y

loc_7f6874:
    rep #$20
.a16
    rts

loc_7f6877:
    lda $002a,y
    bit #$0080
    beq loc_7f6884
    ora #$ff00
    bra loc_7f6887

loc_7f6884:
    and #$00ff

loc_7f6887:
    sta $52
    lda $0028,y
    sta $50
    jsl sub_7f6917
    lda $50
    sta $d984
    sep #$20
.a8
    lda $52
    sta $d986
    rep #$20
.a16
    lda $002d,y
    bit #$0080
    beq loc_7f68ad
    ora #$ff00
    bra loc_7f68b0

loc_7f68ad:
    and #$00ff

loc_7f68b0:
    sta $52
    lda $002b,y
    sta $50
    jsl sub_7f6917
    lda $50
    sta $d988
    sep #$20
.a8
    lda $52
    sta $d98a
    rep #$20
.a16
    lda $d984
    clc
    adc $001a,y
    sta $001a,y
    sep #$20
.a8
    lda $d986
    adc $001c,y
    cmp #$0c
    bcc loc_7f68e6
    cmp #$f4
    bcs loc_7f68e6
    sta $001c,y

loc_7f68e6:
    rep #$20
.a16
    lda $d988
    clc
    adc $001d,y
    sta $001d,y
    sep #$20
.a8
    lda $d98a
    adc $001f,y
    cmp #$10
    bcc loc_7f6905
    cmp #$ac
    bcs loc_7f6905
    sta $001f,y

loc_7f6905:
    rep #$20
.a16
    rts

sub_7f6908:
    pha
    lda $1b92
    bit #$0008
    beq loc_7f6915
    pla
    asl a
    asl a
    rtl

loc_7f6915:
    pla
    rtl

sub_7f6917:
    lda $1b92
    bit #$0008
    bne loc_7f6924
    rtl
    .db $06,$50,$26,$52

loc_7f6924:
    asl $50
    rol $52
    asl $50
    rol $52
    rtl

sub_7f692d:
    jsr sub_7f6931
    rtl

sub_7f6931:
    sep #$20
.a8
    lda $08
    lsr a
    lsr a
    lsr a
    sta $004202
    lda #$20
    sta $004203
    nop
    nop
    nop
    nop
    rep #$20
.a16
    lda $02
    and #$00ff
    lsr a
    lsr a
    lsr a
    clc
    adc $004216
    rep #$20
    rep #$10
    phx
    tax
    lda $7fd400,x
    and #$00ff
    plx
    rts

sub_7f6964:
    lda $001b,y
    and #$ff00
    xba
    sta $02
    lda $001e,y
    and #$ff00
    xba
    sta $08
    lda $0020,y
    and #$00ff
    sta $04
    lda $0022,y
    and #$00ff
    sta $0a
    jsl sub_7f6a46
    rts

sub_7f698b:
    jsr sub_7f698f
    rtl

sub_7f698f:
    jsr sub_7f6964
    sta $0024,y

sub_7f6995:
    lda $0026,y
    eor #$ffff
    inc a
    sta $02
    lda $0025,y
    sta $08
    jsr sub_7f69c7
    lda $3a
    sta $0028,y
    lda $50
    sta $002b,y
    sep #$20
.a8
    lda $3c
    sta $002a,y
    lda $52
    sta $002d,y
    rep #$20
.a16
    rts
    .db $20,$95,$69,$6b

sub_7f69c3:
    jsr sub_7f69c7
    rtl

sub_7f69c7:
    phx
    phy
    sep #$10
.i8
    lda $08
    clc
    adc #$0040
    tax
    lda $7f3dd2,x
    bit #$0080
    beq loc_7f69e0
    ora #$ff00
    bra loc_7f69e3

loc_7f69e0:
    and #$00ff

loc_7f69e3:
    sta $04
    lda $7f3d92,x
    bit #$0080
    beq loc_7f69f3
    ora #$ff00
    bra loc_7f69f6

loc_7f69f3:
    and #$00ff

loc_7f69f6:
    sta $0a
    rep #$10
.i16
    ldy $04
    lda $02
    eor #$ffff
    inc a
    jsl sub_7f76d8
    sta $3c
    sty $3a
    ldy $0a
    lda $02
    jsl sub_7f76d8
    sta $52
    sty $50
    lsr $3c
    ror $3a
    lsr $3c
    ror $3a
    lsr $52
    ror $50
    lsr $52
    ror $50
    ply
    plx
    rts

loc_7f6a29:
    sep #$20
.a8
    lda $0026,y
    sta $08
    stz $02
    lda $0025,y
    jsl sub_7f3bf0
    rep #$20
.a16
    lda $04
    sta $0029,y
    lda $0a
    sta $002c,y
    rts

sub_7f6a46:
    php
    rep #$20
    lda $02
    sec
    sbc $04
    sta $02
    lda $08
    sec
    sbc $0a
    sta $08
    jsl sub_7f1d58
    plp
    rtl

sub_7f6a5d:
    lda $daf3
    and #$00ff
    sta $02
    lda $daf6
    and #$00ff
    sta $08
    lda $001b,y
    and #$ff00
    xba
    sta $04
    lda $001e,y
    and #$ff00
    xba
    sta $0a
    jsr sub_7f6aae
    rts
    .db $20,$87,$6a,$6b

sub_7f6a87:
    phx
    php
    sep #$20
.a8
    ldx $db45
    lda $000c,x
    sta $0020,y
    lda $000e,x
    sta $0022,y
    plp
.a16
    plx
    rts

sub_7f6a9d:
    sep #$20
.a8
    lda $daf3
    sta $0020,y
    lda $daf6
    sta $0022,y
    rep #$20
.a16
    rts

sub_7f6aae:
    lda $04
    clc
    adc $e4
    cmp $02
    bmi loc_7f6ad4
    lda $04
    sec
    sbc $e4
    cmp $02
    bpl loc_7f6ad4
    lda $0a
    clc
    adc $e4
    cmp $08
    bmi loc_7f6ad4
    lda $0a
    sec
    sbc $e4
    cmp $08
    bpl loc_7f6ad4
    sec
    rts

loc_7f6ad4:
    clc
    rts

loc_7f6ad6:
    sep #$20
.a8
    bra loc_7f6ae0
    .db $e2,$20,$80,$02

loc_7f6ade:
    sep #$20

loc_7f6ae0:
    jsl sub_008027
    .incbin "data/016ae4-016d46.bin"

sub_7f6d46:
.a16
    sep #$20
.a8
    lda $02
    sta $004202
    lda $08
    sta $004203
    nop
    nop
    nop
    nop
    rep #$20
.a16
    lda $004216
    rtl
    .db $a2,$00,$00,$a5,$02,$45,$04,$89,$80,$f0,$01,$ca,$a5,$02,$10,$05
    .db $49,$ff,$1a,$85,$02,$a5,$04,$10,$05,$49,$ff,$1a,$85,$04,$a5,$02
    .db $8f,$02,$42,$00,$a5,$04,$8f,$03,$42,$00,$ea,$ea,$ea,$ea,$c2,$20
    .db $af,$16,$42,$00,$e8,$d0,$04,$49,$ff,$ff,$1a,$85,$02,$aa,$e2,$20
    .db $6b

sub_7f6da0:
    lda $02
    sta $004204
    sep #$20
.a8
    lda $08
    sta $004206
    rep #$20
.a16
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    lda $004214
    rtl

sub_7f6dbd:
    sta $004204
    txa
    sep #$20
.a8
    sta $004206
    rep #$20
.a16
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    lda $004214
    tax
    lda $004216
    tay
    rtl

sub_7f6ddd:
    sty $54
    ldy #$0020
    rol $50
    rol $52
    lda #$0000

loc_7f6de9:
    rol a
    cmp $54
    bcc loc_7f6df0
    sbc $54

loc_7f6df0:
    rol $50
    rol $52
    dey
    bne loc_7f6de9
    rtl

sub_7f6df8:
.a8
    phx
    php
    sep #$30
.i8
    sta $1cda
    stz $1cd9
    plp
.i16
    plx
    rtl
    .db $8d,$e6,$1c,$6b

sub_7f6e09:
.a16
    phx
    ldx $1d16
    sta $1cf6,x
    sep #$20
.a8
    txa
    inc a
    inc a
    and #$1f
    sta $1d16
    rep #$20
.a16
    plx
    rtl
    .db $01,$00,$02,$00,$04,$00,$08,$00,$10,$00,$20,$00,$40,$00,$80,$00

sub_7f6e2e:
.a8
    phb
    pea $7e7e
    plb
    plb
    php
    rep #$30
.a16
    jsr sub_7f6e80
    lda $d984
    sec
    sbc #$0200
    sta $f548
    lda $d988
    sec
    sbc #$0200
    sta $f54a
    lda #$00c7
    sta $f54c
    lda #$2f00
    sta $f54e
    jsr sub_7f6ebc
    plp
.a8
    plb
    rtl
    .db $51,$36,$49,$1d,$51,$36,$51,$36,$4c,$32,$68,$21,$68,$21,$4c,$32
    .db $eb,$41,$49,$2d,$49,$2d,$49,$2d,$51,$36,$49,$1d,$51,$36,$51,$36

sub_7f6e80:
.a16
    phx
    phy
    lda #$ffff
    sta $08
    lda $1b88
    bit #$0001
    beq loc_7f6eb9
    lda $e82e
    and #$0003
    tax
    txa
    sta $08
    asl a
    asl a
    asl a
    tax
    lda $7f6e60,x
    sta $f191
    lda $7f6e62,x
    sta $f193
    lda $7f6e64,x
    sta $f195
    lda $7f6e66,x
    sta $f197

loc_7f6eb9:
    ply
    plx
    rts

sub_7f6ebc:
    lda $f548
    and #$fc00
    sec
    sbc #$0800
    sta $e4
    lda $f54a
    and #$fc00
    sec
    sbc #$0800
    sta $a5
    lda $f548
    and #$0380
    asl a
    xba
    eor #$ffff
    inc a
    clc
    adc $f54c
    sta $04
    lda $f54a
    and #$0380
    asl a
    clc
    adc $f54e
    ora $04
    tyx
    jsr sub_7f6f1a
    txy
    rts
    .db $6b,$7f,$2a,$5c,$2a,$5d,$2a,$6a,$2a,$4c,$2a,$7b,$2a,$40,$00,$4b
    .db $2a,$4d,$2a,$40,$00,$7a,$2a,$4a,$2a,$6b,$2a,$5b,$2a,$5a,$2a,$bf
    .db $2a

sub_7f6f1a:
    ldy #$0006
    sty $97
    pha
    phx
    lda $e4
    xba
    lsr a
    and #$007f
    tax
    lsr a
    lsr a
    lsr a
    sta $04
    txa
    phx
    and #$0006
    asl a
    tax
    lda $7f6e1e,x
    plx
    sta $3c
    sta $0a
    lda $a5
    and #$fc00
    xba
    asl a
    asl a
    asl a
    clc
    adc $04
    sta $a7
    sta $3a
    plx
    pla

loc_7f6f50:
    sta $02
    ldy #$0006

loc_7f6f55:
    sta $7ee83f,x
    clc
    adc #$0008
    phy
    pha
    phx
    bit $08
    bpl loc_7f6f69
    jsr sub_7f6fb2
    bra loc_7f6f6c

loc_7f6f69:
    jsr sub_7f7017

loc_7f6f6c:
    plx
    sta $7ee841,x
    lda $0a
    asl a
    sta $0a
    bit #$ff00
    beq loc_7f6f8a
    xba
    sta $0a
    lda $3a
    inc a
    eor $3a
    and #$000f
    eor $3a
    sta $3a

loc_7f6f8a:
    pla
    ply
    inx
    inx
    inx
    inx
    dey
    bne loc_7f6f55
    lda $a7
    clc
    adc #$0020
    and #$07ff
    sta $a7
    sta $3a
    lda $3c
    sta $0a
    lda $02
    sec
    sbc #$0800
    dec $97
    beq loc_7f6fb1
    jmp loc_7f6f50

loc_7f6fb1:
    rts

sub_7f6fb2:
    ldy #$0000
    ldx $3a
    lda $7ecf36,x
    bit $0a
    beq loc_7f6fc6
    pha
    tya
    ora #$0002
    tay
    pla

loc_7f6fc6:
    asl $0a
    bit $0a
    beq loc_7f6fd3
    pha
    tya
    ora #$0004
    tay
    pla

loc_7f6fd3:
    lsr $0a
    lda $7ecf46,x
    bit $0a
    beq loc_7f6fe4
    pha
    tya
    ora #$0008
    tay
    pla

loc_7f6fe4:
    asl $0a
    bit $0a
    beq loc_7f6ff1
    pha
    tya
    ora #$0010
    tay
    pla

loc_7f6ff1:
    tyx
    lda $7f6efa,x
    rts
    .db $be,$2a,$ae,$2a,$bf,$2a,$af,$2a,$ae,$2a,$ae,$2a,$ae,$2a,$ae,$2a
    .db $ae,$2a,$ae,$2a,$ae,$2a,$ae,$2a,$ae,$2a,$ae,$2a,$ae,$2a,$ae,$2a

sub_7f7017:
    asl $0a
    ldx #$0000
    lda $0a
    and #$00cc
    beq loc_7f7026
    ldx #$0004

loc_7f7026:
    lda $3a
    and #$0020
    beq loc_7f702f
    inx
    inx

loc_7f702f:
    lda $7f6ff7,x
    rts

sub_7f7034:
.a8
    phb
    pea $7f7f
    plb
    plb
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$30
.a16
    jsl sub_7f7763
    jsr sub_7f705b
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    plb
    rtl

sub_7f705b:
.a16
    lda $001e68
    and #$00ff
    asl a
    tax
    jmp (tbl_7f7067,x)

tbl_7f7067:
    .db $27,$74,$64,$71,$87,$74,$87,$74,$7d,$73,$fc,$70,$99,$70,$9b,$70
    .db $9a,$70,$83,$70,$bb,$70,$31,$71,$1c,$71,$46,$71

loc_7f7083:
    ldy $fc
    ldx #$00c0
    lda #$0000
    jsr sub_7f76cf
    ldy $54
    ldx #$00c0
    lda #$0000
    jmp sub_7f76cf

loc_7f7099:
    rts

loc_7f709a:
    rts

loc_7f709b:
    rts

sub_7f709c:
    lda $001e40
    and #$00ff
    bne loc_7f70ab
    lda $001e3c
    bra loc_7f70af

loc_7f70ab:
    asl a
    adc #$0090

loc_7f70af:
    sta $3a
    rts
    .db $20,$03,$74,$10,$fe,$f0,$4c,$62,$75

loc_7f70bb:
    lda $000054
    tay
    lda #$0000
    ldx #$00c0
    jsr sub_7f76cf
    lda $faf5
    beq loc_7f70e7
    asl a
    adc $000054
    tay
    ldx #$0000

loc_7f70d7:
    lda $7f70e8,x
    sta $0000,y
    iny
    iny
    inx
    inx
    cpx #$0014
    bne loc_7f70d7

loc_7f70e7:
    rts
    .db $08,$00,$10,$00,$20,$00,$10,$00,$08,$00,$00,$00,$00,$00,$00,$00
    .db $00,$00,$00,$00

loc_7f70fc:
    lda $0000fc
    tay
    lda #$0000
    ldx #$00c0
    jsr sub_7f76cf
    lda $000054
    tay
    ldx #$0000
    stz $02
    lda #$00c0
    sta $08
    jmp sub_7f74f9

loc_7f711c:
    lda #$0006
    sta $fadf
    lda #$0018
    sta $fae5
    lda #$000c
    sta $faeb
    jmp loc_7f7562

loc_7f7131:
    lda #$0020
    sta $fadf
    lda #$00fe
    sta $fae5
    lda #$fffc
    sta $faeb
    jmp loc_7f7562

loc_7f7146:
    lda #$0008
    sta $fadf
    lda #$0011
    sta $fae5
    lda #$0008
    sta $faeb
    jmp loc_7f7562
    .db $20,$03,$74,$04,$ff,$e0,$4c,$62,$75

loc_7f7164:
    jsr sub_7f709c
    jsr sub_7f71f1
    lda $000054
    tay
    lda #$0100
    sec
    sbc $3a
    beq loc_7f71ac
    bmi loc_7f71ac
    cmp #$00c0
    bcc loc_7f7181
    lda #$00c0

loc_7f7181:
    sta $08
    sta $5f
    phy
    ldy #$0000
    jsr sub_7f7406
    .db $00,$00,$00,$7a,$20,$f0,$74,$a9,$c0,$00,$38,$e5,$5f,$f0,$55,$85
    .db $08,$5a,$a0,$02,$00,$20,$06,$74,$c8,$4c,$02,$7a,$20,$eb,$74,$60

loc_7f71ac:
    stz $5f
    lda $3a
    sec
    sbc #$0270
    bcs loc_7f71d6
    eor #$ffff
    inc a
    cmp #$00c0
    beq loc_7f71f0
    bcc loc_7f71c4
    lda #$00c0

loc_7f71c4:
    sta $08
    sta $5f
    phy
    ldy #$0002
    jsr sub_7f7406
    iny
    jmp $7a02
    .db $20,$eb,$74

loc_7f71d6:
    lda #$00c0
    sec
    sbc $5f
    beq loc_7f71f0
    bmi loc_7f71f0
    sta $08
    phy
    ldy #$0004
    jsr sub_7f7406
    php
    ora ($08),y
    ply
    jsr sub_7f74e6

loc_7f71f0:
    rts

sub_7f71f1:
    ldx #$00c0
    lda $0000fc
    tay
    lda $001e40
    beq loc_7f7218
    cmp #$0100
    beq loc_7f7224
    lda $3a
    cmp #$0090
    bcc loc_7f7218
    cmp #$0150
    bcc loc_7f7231
    cmp #$0210
    bcc loc_7f7237
    jmp loc_7f723d

loc_7f7218:
    lda #$0090
    ldx #$00c0
    jsr sub_7f76cf
    jmp loc_7f724f

loc_7f7224:
    lda $001e3c
    ldx #$00c0
    jsr sub_7f76cf
    jmp sub_7f7243

loc_7f7231:
    jsr sub_7f7309
    jmp sub_7f7243

loc_7f7237:
    jsr sub_7f728c
    jmp sub_7f7243

loc_7f723d:
    jsr sub_7f725b
    jmp sub_7f7243

sub_7f7243:
    lda $001d9d
    ora #$0080
    sta $001d9d
    rts

loc_7f724f:
    lda $001d9d
    and #$ff7f
    sta $001d9d
    rts

sub_7f725b:
    lda #$0210
    sec
    sbc $3a
    clc
    adc #$0060
    tax
    sta $3c
    beq loc_7f7278
    bmi loc_7f7288
    lda #$0210
    sec
    sbc $3a
    clc
    adc $3a
    jsr sub_7f76cf

loc_7f7278:
    lda #$00c0
    sec
    sbc $3c
    beq loc_7f7287
    tax
    lda #$0290
    jsr sub_7f76cf

loc_7f7287:
    rts

loc_7f7288:
    stz $3c
    bra loc_7f7278

sub_7f728c:
    ldx #$0060
    lda #$0090
    jsr sub_7f76cf
    ldx #$0060
    lda #$0290
    jsr sub_7f7374
    lda $0000fc
    clc
    adc #$00be
    tay
    lda #$0210
    stz $faf9
    stz $fafb
    sta $fafa
    lda #$0210
    sec
    sbc $3a
    and #$fffe
    tax
    jsr sub_7f7678
    eor #$ffff
    inc a
    asl a
    sta $fafd
    bpl loc_7f72cf
    lda #$ffff
    bra loc_7f72d2

loc_7f72cf:
    lda #$0000

loc_7f72d2:
    sta $faff
    ldx #$0060

loc_7f72d8:
    lda $fafa
    cmp #$01f0
    bcc loc_7f72fd
    sta $0000,y
    dey
    dey
    clc
    lda $faf9
    adc $fafd
    sta $faf9
    lda $faff
    adc $fafb
    sta $fafb
    dex
    bne loc_7f72d8
    bra loc_7f72fd

loc_7f72fd:
    txa
    eor #$ffff
    inc a
    clc
    adc #$0100
    sta $3a
    rts

sub_7f7309:
    ldx #$0060
    lda #$0090
    jsr sub_7f76cf
    lda #$0090
    stz $faf9
    stz $fafb
    sta $fafa
    lda #$0090
    sec
    sbc $3a
    eor #$ffff
    inc a
    and #$fffe
    tax
    jsr sub_7f7678
    asl a
    sta $fafd
    stz $faff
    ldx #$0060

loc_7f7339:
    lda $fafa
    cmp #$0120
    bcs loc_7f735e
    sta $0000,y
    iny
    iny
    clc
    lda $faf9
    adc $fafd
    sta $faf9
    lda $faff
    adc $fafb
    sta $fafb
    dex
    bne loc_7f7339
    bra loc_7f7364

loc_7f735e:
    lda #$0290
    jsr sub_7f7374

loc_7f7364:
    lda #$00a0
    sta $3a
    rts
    .db $99,$00,$00,$c8,$c8,$3a,$ca,$d0,$f7,$60

sub_7f7374:
    sta $0000,y
    iny
    iny
    dex
    bne sub_7f7374
    rts

loc_7f737d:
    jsr sub_7f7383
    jmp loc_7f7427

sub_7f7383:
    stz $faf9
    stz $fafb
    lda $001e3c
    sta $fafa
    ldx #$0000
    lda $faf1
    eor #$ffff
    inc a
    sta $fafd
    bpl loc_7f73a0
    dex

loc_7f73a0:
    stx $faff
    lda $faf3
    sec
    sbc $001e3c
    bmi loc_7f7402
    cmp #$0190
    bcs loc_7f7402
    sta $02
    asl a
    adc $0000fc
    tay
    phy
    lda #$00c0
    sec
    sbc $02
    tax
    lda $001e3c

loc_7f73c6:
    sta $0000,y
    iny
    iny
    dex
    bne loc_7f73c6
    ply
    dey
    dey
    ldx $02

loc_7f73d3:
    lda $fafa
    pha
    clc
    adc $02
    bpl loc_7f73e5
    pla
    lda $02
    eor #$ffff
    inc a
    bra loc_7f73e6

loc_7f73e5:
    pla

loc_7f73e6:
    sta $0000,y
    dey
    dey
    clc
    lda $faf9
    adc $fafd
    sta $faf9
    lda $faff
    adc $fafb
    sta $fafb
    dec $02
    bne loc_7f73d3

loc_7f7402:
    rts
    .db $a0,$00,$00

sub_7f7406:
    plx
    lda $0001,x
    and #$00ff
    sta $fadf,y
    lda $0002,x
    and #$00ff
    sta $fae5,y
    lda $0003,x
    and #$00ff
    sta $faeb,y
    inx
    inx
    inx
    phx
    rts

loc_7f7427:
    lda #$0000
    sta $fad7
    sta $fae5
    sta $fadf
    sta $faeb
    lda $001e0b
    and #$ff00
    bne loc_7f7454
    ldx #$00c0
    lda $000054
    tay
    lda $00193c

loc_7f744b:
    sta $0000,y
    iny
    iny
    dex
    bne loc_7f744b
    rts

loc_7f7454:
    jsr sub_7f7601
    lda $00193c
    sta $02
    lda $000054
    tay
    ldx #$00c0

loc_7f7465:
    lda $02
    clc
    adc $fafa
    sta $0000,y
    iny
    iny
    clc
    lda $faf9
    adc $fafd
    sta $faf9
    lda $faff
    adc $fafb
    sta $fafb
    dex
    bne loc_7f7465
    rts

loc_7f7487:
    phb
    sep #$20
.a8
    lda #$7e
    pha
    plb
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    plb
    rep #$20
.a16
    jsl sub_0bab6d
    sep #$20
.a8
    phb
    lda #$7e
    pha
    plb
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$20
.a16
    plb
    jsr sub_7f7243
    lda #$00c0
    sta $08
    lda $0000fc
    tay
    ldx #$0002
    lda $001e3c
    and #$03ff
    sta $02
    jsr sub_7f74f9
    lda #$00c0
    sta $08
    lda $000054
    tay
    ldx #$0000
    lda $00193c
    sta $02
    jsr sub_7f74f9
    rts

sub_7f74e6:
    ldx #$0004
    bra loc_7f74f3
    .db $a2,$02,$00,$80,$03,$a2,$00,$00

loc_7f74f3:
    lda $00193c
    sta $02

sub_7f74f9:
    phx
    lda $fad7,x
    pha
    asl a
    sta $0a
    lda $fae5,x
    and #$00ff
    sta $04
    lda $fadf,x
    sta $97
    plx
    jsr sub_7f7521
    clc
    plx
    lda $faeb,x
    adc $fad7,x
    and #$00ff
    sta $fad7,x
    rts

sub_7f7521:
    sep #$20
.a8
    lda $7f3d92,x
    sta $e5
    bpl loc_7f752e
    eor #$ff
    inc a

loc_7f752e:
    sta $004202
    lda $97
    sta $004203
    nop
    rep #$21
.a16
    lda #$00ff
    and $004217
    bit $e4
    bpl loc_7f754a
    eor #$ffff
    inc a

loc_7f754a:
    adc $02
    sta $0000,y
    iny
    iny
    lda $0a
    clc
    adc $04
    and #$01ff
    sta $0a
    lsr a
    tax
    dec $08
    bne sub_7f7521
    rts

loc_7f7562:
    lda $fae5
    ora $fadf
    ora $faeb
    bne loc_7f7570
    jmp loc_7f7427

loc_7f7570:
    jsr sub_7f7601
    lda #$00c0
    sta $08
    ldx $fad7
    txa
    asl a
    sta $0a
    lda $fae5
    and #$00ff
    sta $04
    lda $fadf
    sta $97
    lda $000054
    tay
    jsr sub_7f75a2
    clc
    lda $faeb
    adc $fad7
    and #$00ff
    sta $fad7
    rts

sub_7f75a2:
    lda $00193c
    sta $02

loc_7f75a8:
    sep #$20
.a8
    lda $7f3d92,x
    sta $e5
    bpl loc_7f75b5
    eor #$ff
    inc a

loc_7f75b5:
    sta $004202
    lda $97
    sta $004203
    nop
    rep #$20
.a16
    lda #$00ff
    and $004217
    bit $e4
    bpl loc_7f75d1
    eor #$ffff
    inc a

loc_7f75d1:
    clc
    adc $02
    clc
    adc $fafa
    sta $0000,y
    iny
    iny
    lda $0a
    clc
    adc $04
    and #$01ff
    sta $0a
    lsr a
    tax
    clc
    lda $faf9
    adc $fafd
    sta $faf9
    lda $faff
    adc $fafb
    sta $fafb
    dec $08
    bne loc_7f75a8
    rts

sub_7f7601:
    ldy #$0070
    lda $001e0b
    cmp #$0000
    bpl loc_7f7617
    cmp #$f900
    bcs loc_7f761f
    lda #$f900
    bra loc_7f761f

loc_7f7617:
    cmp #$0700
    bcc loc_7f761f
    lda #$0700

loc_7f761f:
    ldx #$0007
    cmp #$0000
    php
    bpl loc_7f762c
    eor #$ffff
    inc a

loc_7f762c:
    sta $004204
    sep #$20
.a8
    txa
    sta $004206
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rep #$20
.a16
    lda $004214
    plp
    bpl loc_7f764b
    eor #$ffff
    inc a

loc_7f764b:
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    sta $fafd
    jsl sub_7f76d8
    sty $faf9
    sta $fafb
    ldx #$0000
    lda $fafd
    eor #$ffff
    inc a
    sta $fafd
    bpl loc_7f7674
    dex

loc_7f7674:
    stx $faff
    rts

sub_7f7678:
    phb
    pea $7e7e
    plb
    plb
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $18c5bb,x
    pha
    sep #$20
.a8
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    rep #$20
.a16
    pla
    plb
    rts
    .db $8b,$e2,$20,$a9,$7e,$48,$ab,$a5,$5e,$29,$ef,$85,$5e,$8f,$3a,$30
    .db $00,$ab,$c2,$20,$22,$6c,$ab,$0b,$e2,$20,$8b,$a9,$7e,$48,$ab,$a5
    .db $5e,$09,$18,$85,$5e,$8f,$3a,$30,$00,$c2,$20,$ab,$60

sub_7f76cf:
    sta $0000,y
    iny
    iny
    dex
    bne sub_7f76cf
    rts

sub_7f76d8:
    phb
    pea $0000
    plb
    plb
    phx
    jsr sub_7f76e5
    plx
    plb
    rtl

sub_7f76e5:
    tyx
    bpl loc_7f76fa
    tay
    bpl loc_7f76f7
    eor #$ffff
    inc a
    tay
    txa
    eor #$ffff
    inc a
    bra loc_7f76fa

loc_7f76f7:
    txa
    bra loc_7f76fa

loc_7f76fa:
    cmp #$8000
    bcc sub_7f7722
    eor #$ffff
    inc a
    jsr sub_7f7722
    eor #$ffff
    tax
    tya
    eor #$ffff
    tay
    iny
    bne loc_7f7713
    inx

loc_7f7713:
    txa
    rts

sub_7f7715:
    phb
    pea $0000
    plb
    plb
    phx
    jsr sub_7f7722
    plx
    plb
    rtl

sub_7f7722:
    sty $a7
    sep #$30
.a8
.i8
    sta WRMPYA
    sty WRMPYB
    rep #$21
.a16
    xba
    tax
    ldy $a8
    lda RDMPYL
    sty WRMPYB
    sta $a5
    xba
    and #$00ff
    adc RDMPYL
    ldy $a7
    stx WRMPYA
    sty WRMPYB
    nop
    ldy $a8
    adc RDMPYL
    sty WRMPYB
    sta $a6
    and #$ff00
    adc #$0000
    xba
    rep #$11
.i16
    ldy $a5
    adc RDMPYL
    rts

sub_7f7763:
    phb
    pea $7e7e
    plb
    plb
    php
    rep #$30
    lda $1b68
    and #$00ff
    cmp #$0001
    bne loc_7f777f
    lda $1fbe
    cmp #$0003
    beq loc_7f77ba

loc_7f777f:
    lda $1e84
    bne loc_7f77ba
    ldx #$0000

loc_7f7787:
    lda $7f77d4,x
    beq loc_7f77ba
    trb $db33
    bne loc_7f779a
    txa
    clc
    adc #$0004
    tax
    bra loc_7f7787

loc_7f779a:
    lda $7f77d6,x
    and #$00ff
    bne loc_7f77a6
    jsr sub_7f77bd

loc_7f77a6:
    sta $1e84
    lda $7f77d7,x
    and #$00ff
    sta $7ef566
    stz $f55e
    stz $f560

loc_7f77ba:
    plp
    plb
    rtl

sub_7f77bd:
    lda #$0011
    ldy $db47
    cpy #$000f
    bcc loc_7f77d3
    lda #$0010
    cpy #$0032
    bcc loc_7f77d3
    lda #$000f

loc_7f77d3:
    rts
    .db $02,$00,$6e,$03,$04,$00,$00,$02,$08,$00,$12,$02,$01,$00,$13,$02
    .db $10,$00,$51,$00,$20,$00,$50,$00,$40,$00,$52,$00,$80,$00,$87,$00
    .db $00,$01,$d1,$02,$00,$02,$c5,$02,$00,$00

sub_7f77fe:
.a8
    phb
    lda #$00
    pha
    plb
    lda $1913
    bne loc_7f783c
    lda GSU_SFR
    and #$20
    beq loc_7f783f
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    lda #$01
    sta $7024da
    lda $5e
    ora #$18
    sta $5e
    sta $00303a

loc_7f7829:
    sep #$20
    lda GSU_SFR
    and #$20
    bne loc_7f7829
    lda $7024da
    eor #$01
    sta $7024da

loc_7f783c:
    inc $1913

loc_7f783f:
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    plb
    rtl

sub_7f784b:
    phx
    phb
    lda #$00
    pha
    plb
    dec $1913
    bne loc_7f7878
    lda $7024da
    beq loc_7f7878
    lda #$00
    sta $7024da
    lda $70390e
    sta GSU_PBR
    stz GSU_SFR
    rep #$20
.a16
    lda $70390c
    tax
    sep #$20
.a8
    stx GSU_R15

loc_7f7878:
    plb
    plx
    rtl

sub_7f787b:
    sta $f8
    phb
    lda #$00
    pha
    plb
    lda GSU_SFR
    and #$20
    beq loc_7f78ec
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    lda #$01
    sta $7024da
    lda $5e
    ora #$18
    sta $5e
    sta $00303a

loc_7f78a6:
    lda GSU_SFR
    and #$20
    bne loc_7f78a6
    lda $f8
    sta GSU_PBR
    stz GSU_SFR
    stx GSU_R15

loc_7f78b8:
    lda GSU_SFR
    and #$20
    bne loc_7f78b8
    lda $7024da
    bne loc_7f78dd
    lda $70390e
    sta GSU_PBR
    stz GSU_SFR
    rep #$20
.a16
    lda $70390c
    tax
    sep #$20
.a8
    stx GSU_R15
    bra loc_7f78e3

loc_7f78dd:
    lda #$00
    sta $7024da

loc_7f78e3:
    pla
    sta $5e
    sta $00303a
    plb
    rtl

loc_7f78ec:
    lda $f8
    sta GSU_PBR
    lda $5e
    pha
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    stz GSU_SFR
    stx GSU_R15

loc_7f7904:
    lda GSU_SFR
    and #$20
    bne loc_7f7904
    pla
    sta $5e
    sta $00303a
    plb
    rtl
    .db $22,$06,$80,$00

sub_7f7918:
    rep #$30
.a16
    lda $18e7
    sta $7024be
    sep #$20
.a8
    jsl sub_7f1561
    lda $45
    lsr a
    lsr a
    sta GSU_SCBR
    rep #$20
.a16
    lda $44
    sta $700014
    lda #$13b8
    sta $7021b8
    lda #$0000
    sta $7024da
    sep #$20
.a8
    lda $181c
    sta $7001b2
    jsl sub_038d94
    sep #$20
    rep #$10
    lda #$01
    ldx #$cd99
    sta GSU_PBR
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    stz GSU_SFR
    stx GSU_R15
    jsr sub_7f7bbc
    sep #$20
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    stz $1913
    rtl

sub_7f7980:
    sep #$20
    lda $1aa6
    bit #$20
    bne loc_7f7991
    bit #$01
    bne loc_7f7991
    jsr sub_7f7bc2
    rtl

loc_7f7991:
    rep #$30
.a16
    lda $18e7
    sta $7024be
    sep #$20
.a8
    jsl sub_7f156a
    lda #$1b
    sta GSU_SCBR
    rep #$20
.a16
    lda #$6c00
    sta $700014
    lda #$1ab8
    sta $7021b8
    lda #$0000
    sta $7024da
    sep #$20
.a8
    lda $181c
    sta $7001b2
    jsl sub_038d94
    sep #$20
    rep #$10
    lda #$01
    ldx #$cd99
    sta GSU_PBR
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    stz GSU_SFR
    stx GSU_R15
    jsr sub_7f7bc2
    sep #$20
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    stz $1913
    rtl

sub_7f79f8:
    php
    sep #$20
    rep #$10
    lda #$00
    pha
    plb
    lda $5e
    ora #$18
    sta $5e
    sta $00303a

loc_7f7a0b:
    lda GSU_SFR
    and #$20
    bne loc_7f7a0b
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    plp
    rtl

sub_7f7a1e:
    rep #$30
.a16
    lda $18e7
    sta $7024be
    sep #$20
.a8
    jsl sub_7f1561
    lda $45
    lsr a
    lsr a
    sta GSU_SCBR
    lda #$00
    sta $703a50
    lda $7ecf32
    beq loc_7f7a4c
    lda $7ed759
    bne loc_7f7a4c
    lda #$01
    sta $703a50

loc_7f7a4c:
    rep #$20
.a16
    lda $44
    sta $700014
    lda #$13b8
    sta $7021b8
    lda #$0000
    sta $7024da
    sta $70285a
    sep #$20
.a8
    lda $181c
    sta $7001b2
    lda $7ed775
    asl a
    cmp $7001ac
    beq loc_7f7a92
    bcc loc_7f7a88
    lda $7001ac
    inc a
    inc a
    sta $7001ac
    bra loc_7f7a92

loc_7f7a88:
    lda $7001ac
    dec a
    dec a
    sta $7001ac

loc_7f7a92:
    lda $7ed773
    bit #$80
    beq loc_7f7aa0
    lda #$00
    sta $7ed773

loc_7f7aa0:
    asl a
    and #$ff
    cmp $7001ac
    bcc loc_7f7aad
    lda $7001ac

loc_7f7aad:
    sta $7001ae
    rep #$20
.a16
    lda $7ed777
    sta $702864
    lda $7ed779
    sta $702866
    lda $001e1c
    eor #$ffff
    inc a
    sta $703900
    lda $001e1e
    eor #$ffff
    inc a
    sta $703902
    lda $001e20
    eor #$ffff
    inc a
    sta $703904
    jsl sub_038d94
.a8
.i8
    sep #$20
    rep #$10
.i16
    lda #$01
    ldx #$cd99
    sta GSU_PBR
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    stz GSU_SFR
    stx GSU_R15
    jsr sub_7f7bbd
    sep #$20
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    stz $1913
    rtl
    .db $08,$e2,$20,$c2,$10,$a5,$5e,$09,$18,$85,$5e,$8f,$3a,$30,$00,$af
    .db $30,$30,$00,$29,$20,$d0,$f8,$28,$6b

sub_7f7b33:
    php
    sep #$20
    rep #$10
    lda #$00
    pha
    plb
    lda $5e
    ora #$18
    sta $5e
    sta $00303a

loc_7f7b46:
    lda GSU_SFR
    and #$20
    bne loc_7f7b46
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $44
    cmp #$4000
    beq loc_7f7b65
    lda #$4000
    bra loc_7f7b68

loc_7f7b65:
    lda #$a000

loc_7f7b68:
    sta $44
    sep #$20
.a8
    rep #$20
.a16
    lda $44
    sta $700014
    plp
.a8
    rtl
    .db $c2,$30,$ad,$31,$14,$8f,$80,$28,$70,$ad,$e7,$18,$8f,$be,$24,$70
    .db $e2,$20,$a9,$01,$a2,$c5,$cd,$8d,$34,$30,$a5,$5e,$09,$18,$85,$5e
    .db $8f,$3a,$30,$00,$9c,$30,$30,$8e,$1e,$30,$20,$cb,$7b,$e2,$20,$ad
    .db $30,$30,$29,$20,$d0,$f9,$a5,$5e,$29,$e7,$85,$5e,$8f,$3a,$30,$00
    .db $22,$e4,$85,$03,$6b,$6b

sub_7f7bbc:
    rts

sub_7f7bbd:
    jsl sub_7f402d
    rts

sub_7f7bc2:
    jsl sub_7f402d
    jsl sub_7f11bc
    rts
    .db $22,$2d,$40,$7f,$60

sub_7f7bd0:
    jsr sub_7f7bd4
    rtl

sub_7f7bd4:
    lda $e0
    clc
    sbc $e1
    sta $e1
    sbc $e2
    sta $e2
    sbc $e3
    sta $e3
    sbc $e0
    sta $e0
    rts
    .incbin "data/017be8-017e00.bin"
.endbase

    .incbin "data/017e00-018000.bin"
