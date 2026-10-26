.rombank $03

    .db $e4,$00,$64,$00

GameTick:    ; one battle frame: $1291 (IRQ count) -> $1604, then calls the per-frame update routines (watch: $1604 written at 03:800B every tick)
.cpu
.a8
.i16
    sep #$20
    rep #$10
    lda $1291
    sta $1604
    stz $1291

loc_038011:
    lda $00
    bne loc_038011
    lda $1aa6
    bit #$01
    beq loc_03801f
    brl loc_03809f

loc_03801f:
    lda #$20
    sta $00
    jsl sub_7f148d
    jsl sub_7f32a1
    lda $00
    jsl sub_7f7a1e
    lda $00
    jsl sub_03d87d
    jsl sub_7f1118
    jsl sub_04fcc8
    jsl sub_07950e
    jsl sub_07bd46
    jsl sub_07ea67
    jsl sub_03b0c3
    jsl sub_07aa8c
    jsl sub_07a326
    jsl sub_7f539c
    jsl sub_048301
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    ldx $1657
    jsl sub_038fc9
    lda $5e
    ora #$08
    sta $5e
    sta $00303a
    jsl sub_0dd5fa
    lda $00
    jsl sub_7f34e7
    jsl sub_7f354a
    lda $00
    jsl sub_7f11bc
    jsl sub_7f7b33
    lda $00
    lda $1d27
    beq loc_03809c
    jsr sub_03820c

loc_03809c:
    jmp loc_038158

loc_03809f:
    lda $1aa6
    bit #$20
    beq loc_0380aa
    lda #$20
    bra loc_0380ac

loc_0380aa:
    lda #$0e

loc_0380ac:
    sta $00
    jsl sub_7f32a1
    jsl sub_7f7980
    jsl sub_07a337
    jsl sub_03d87d
    jsl sub_7f1118
    jsl sub_048301
    jsl sub_04fcc8
    lda $1aa6
    bit #$20
    bne loc_0380d5
    bit #$01
    bne loc_0380d5

loc_0380d5:
    jsl sub_7f34e7
    jsl sub_07aa8c
    jsl sub_07950e
    jsl sub_07bd46
    jsl sub_7f79f8
    jsl sub_7f148d
    lda $1aa6
    bit #$02
    beq loc_0380fe

loc_0380f4:
    lda $00
    beq loc_038106
    cmp #$28
    bne loc_0380f4
    bra loc_038106

loc_0380fe:
    lda $00
    bne loc_0380fe
    lda #$12
    sta $00

loc_038106:
    jsl sub_03b0c3
    jsl sub_7f7918
    jsl sub_07a326
    lda $1aa6
    bit #$02
    bne loc_038121
    jsl sub_7f354a
    jsl sub_07aa8c

loc_038121:
    jsl sub_7f79f8
    lda $1aa6
    bit #$20
    bne loc_03813d
    sep #$20
    ldx $1657
    jsl sub_038fc9
    jsl sub_7f11c6
    jsl sub_7f148d

loc_03813d:
    jsl sub_0dd5fa

loc_038141:
    lda $00
    bne loc_038141
    lda $1d27
    beq loc_03814d
    jsr sub_03820c

loc_03814d:
    lda $1aa6
    bit #$20
    bne loc_038158
    bit #$01
    beq loc_038158

loc_038158:
    sep #$20
    rep #$20
.a16
    lda $1b84
    bit #$0001
    sep #$20
.a8
    bne loc_038192
    lda $1cec
    sta $1ce6
    lda $1ced
    sta $1ce7
    ldx $1cee
    stx $1ce8
    ldx $1cf4
    stx $1cea
    rep #$20
.a16
    lda $1cf4
    inc a
    bne loc_038192
    stz $1ce6
    stz $1ce7
    ldx #$0000
    stx $1ce8

loc_038192:
    sep #$20
.a8
    jsl sub_04a3ed
    jsl sub_03b0ef
    jsl sub_0acd66
    jsl sub_0b8010
    jsl sub_0ad049
    lda $00
    sep #$20
    lda $1291
    sta $144e
    lda $1605
    clc
    adc $1604
    sta $1605
    inc $1606
    lda $1605
    cmp #$3c
    bcc loc_0381d8
    lda $1606
    sta $1607
    stz $1606
    lda $1605
    sec
    sbc #$3c
    sta $1605

loc_0381d8:
    lda $1607
    rep #$20
.a16
    lda $1292
    and #$0030
    cmp #$0030
    sep #$20
.a8
    bne loc_038203
    rep #$20
.a16
    lda $1296
    bit #$0040
    sep #$20
.a8
    beq loc_038203
    rep #$20
.a16
    lda $1b84
    eor #$0080
    sta $1b84
    sep #$20

loc_038203:
.a8
    jsl sub_03e78d
    rtl
    .db $20,$0c,$82,$6b

sub_03820c:
    php

loc_03820d:
    lda $00
    bne loc_03820d
    sep #$20
    lda $1d27
    bit #$01
    beq loc_03821e
    jsl sub_03a4dc

loc_03821e:
    rep #$30
.a16
    lda $1d27
    bit #$0004
    beq loc_038233
    lda $46
    cmp #$a000
    bne loc_03824d
    jsl sub_039d5b

loc_038233:
    rep #$30
    lda $1d27
    bit #$0008
    beq loc_038241
    jsl sub_039861

loc_038241:
    sep #$20
.a8
    lda $1d27
    and #$f2
    sta $1d27
    stz $00

loc_03824d:
    plp
    rts
    .db $60,$60,$20,$55,$82,$6b,$60,$08,$e2,$20,$c2,$10,$20,$60,$82,$28
    .db $6b,$a9,$80,$8d,$15,$21,$a9,$18,$8d,$01,$43,$a2,$27,$18,$8e,$02
    .db $43,$9c,$04,$43,$a2,$a0,$2f,$8e,$16,$21,$a2,$40,$00,$8e,$05,$43
    .db $a9,$01,$8d,$00,$43,$a9,$01,$8d,$0b,$42,$60,$08,$e2,$20,$c2,$10
    .db $a9,$01,$a2,$5d,$d2,$22,$7b,$78,$7f,$28,$6b,$08,$e2,$20,$c2,$10
    .db $a9,$01,$a2,$74,$d2,$22,$7b,$78,$7f,$28,$6b,$e2,$20,$c2,$10,$ae
    .db $d2,$14,$b5,$2d,$10,$02,$a9,$00,$8f,$f0,$01,$70

sub_0382bb:
.i8
    php
    sep #$20
    lda #$28
    sta $17fb
    sta $17fe
    sta $17fc
    sta $17fd
    sta $17ff
    sta $1800
    rep #$10
.i16
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda #$0080
    tsb $1b86
    sep #$20
.a8
    lda #$01
    sta $1c10
    jsl sub_06a3b0
    ldx #$ff00
    stx $efa7
    ldx #$ff00
    stx $efa9
    ldx #$0001
    stx $efab
    ldx #$0001
    stx $efad
    plb
    jsl sub_03a627
    jsl sub_038f79
    rep #$30
.a16
    stz $1696
    sep #$20
.a8
    rep #$20
.a16
    lda #$0080
    tsb $1b84
    sep #$20
.a8
    lda #$01
    sta GSU_CLSR
    plp
.i8
    rtl

sub_038325:
.i16
    php
    phb
    sep #$20
    lda #$00
    pha
    plb
    sei
    sep #$20
    stz HDMAEN
    lda #$80
    jsl sub_038784
    sta INIDISP
    stz $f3
    stz $f4
    lda #$00
    sta $001a87
    lda #$6e
    sta $163e
    jsl sub_038f57
    sep #$20
    rep #$10
    lda #$64
    sta $163e
    jsl sub_038f57
    sep #$20
    rep #$10
    lda #$80
    sta $1b49
    stz $1947
    rep #$30
.a16
    lda #$2ee0
    sta $7ed739
    lda #$d8f0
    sta $1e11
    lda #$0001
    sta $7024bc
    stz $1b32
    stz $1aca
    stz $1acc
    stz $1d57
    stz $160e
    stz $1655
    stz $1659
    stz $165b
    stz $cb
    lda #$0001
    sta $7003ea
    stz $1d57
    sep #$20
.a8
    rep #$10
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $1b84
    bit #$0001
    sep #$20
.a8
    bne loc_0383f2
    lda #$01
    sta $1b70
    rep #$20
.a16
    lda #$0010
    tsb $1b84
    lda #$0100
    trb $1b84
    lda #$0004
    trb $1b96
    lda #$ffff
    sta $e82e
    stz $da63
    lda #$00f0
    sta $da61
    lda #$0004
    sta $da67
    stz $1c0a
    sep #$20
.a8
    lda #$03
    sta $e836
    brl loc_038426

loc_0383f2:
    ldx #$007a
    stx $1c0a
    jsl sub_06a3b0
    ldx $12c3
    rep #$20
.a16
    lda $002b,x
    tax
    sep #$20
.a8
    lda #$0f
    sta $6c32,x
    lda #$0a
    sta $6c31,x
    ldx $12c5
    rep #$20
.a16
    lda $002b,x
    tax
    sep #$20
.a8
    lda #$0f
    sta $6c32,x
    lda #$0a
    sta $6c31,x

loc_038426:
    lda #$03
    sta $7ef4e5
    lda #$03
    sta $7ef4e6
    plb
    jsl sub_0baaf5
    stz $1d74
    rep #$20
.a16
    stz $1e44
    stz $1e46
    stz $1e4e
    stz $1e50
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $7ed775
    sep #$20
.a8
    lda #$00
    sta $7003ea
    stz $c4
    jsl sub_03b19d
    sep #$20
    lda #$01
    sta $1517
    stz $18b0
    stz $17f9
    stz $17fa
    stz $1d28
    stz $1d52
    stz $1d53
    stz $142c
    stz $142e
    stz $1d54
    stz $1d1b
    stz $1d1a
    stz $1d63
    lda #$ff
    sta $190e
    sta $190f
    stz $1910
    lda #$00
    sta $7ecf32
    jsl sub_0385ae
    jsl sub_7f1737
    jsl sub_0dd5b7
    sep #$20
    lda $192e
    pha
    lda $058002
    sta $192e
    rep #$30
.a16
    lda $1657
    pha
    lda $058000
    tax
    stz $12c3
    stz $12c5
    lda $1aa6
    bit #$0008
    bne loc_0384d3
    jsl sub_038fc9

loc_0384d3:
    sep #$20
.a8
    rep #$10
    jsl sub_03a55d
    rep #$10
    plx
    pla
    sta $192e
    rep #$20
.a16
    stz $1d57
    stx $1657
    jsl sub_038fc9
    jsl sub_0384f9
    jsl sub_7f1118
    plb
    plp
.a8
    rtl

sub_0384f9:
.a16
    php
    sep #$30
.a8
.i8
    rep #$20
.a16
    lda #$1234
    sta $7001e8
    lda #$0001
    sta $7001ea
    jsl sub_03ad58
    sep #$20
.a8
    lda #$80
    sta $a0
    lda #$ff
    sta $1528
    stz $00
    jml loc_038a68
    .db $08,$e2,$20,$9c,$0d,$21,$9c,$0d,$21,$9c,$0e,$21,$9c,$0e,$21,$9c
    .db $0f,$21,$9c,$0f,$21,$9c,$10,$21,$9c,$10,$21,$9c,$11,$21,$9c,$11
    .db $21,$9c,$12,$21,$9c,$12,$21,$9c,$13,$21,$9c,$13,$21,$9c,$14,$21
    .db $9c,$14,$21,$28,$6b

sub_038556:
.i16
    php
    rep #$30
.a16
    and #$00ff
    xba
    lsr a
    lsr a
    lsr a
    tax
    sep #$20
.a8
    lda #$70
    sta CGADD
    ldy #$0000

loc_03856b:
    lda $018a0c,x
    sta CGDATA
    lda $018a0d,x
    sta CGDATA
    inx
    inx
    iny
    iny
    cpy #$0020
    bne loc_03856b
    plp
    rtl

sub_038584:
    php
    phb
    rep #$30
.a16
    and #$00ff
    xba
    lsr a
    lsr a
    lsr a
    tax
    sep #$20
.a8
    lda #$7e
    pha
    plb
    ldy #$0000
    rep #$20

loc_03859b:
.a16
    lda $018a0c,x
    sta $f0c5,y
    inx
    inx
    iny
    iny
    cpy #$0020
    bne loc_03859b
    plb
    plp
.a8
    rtl

sub_0385ae:
    php
    rep #$30
.a16
    stz $12a8
    lda #$03bd
    sta $12aa
    ldy #$003c

loc_0385bd:
    tax
    clc
    adc #$003f
    sta $00,x
    dey
    bne loc_0385bd
    stz $00,x
    plp
.a8
    rtl
    .db $08,$20,$2c,$86,$e2,$20,$c2,$10,$e2,$20,$a9,$01,$a2,$8b,$d2,$22
    .db $7b,$78,$7f,$e2,$20,$c2,$10,$28,$6b,$08,$8b,$e2,$20,$a9,$7e,$48
    .db $ab,$c2,$10,$a2,$d0,$0a,$ac,$a8,$12,$e2,$20,$b9,$23,$00,$29,$02
    .db $d0,$24,$c2,$20,$bf,$12,$00,$70,$10,$0b,$b9,$08,$00,$09,$14,$00
    .db $99,$08,$00,$80,$09,$b9,$08,$00,$09,$10,$00,$99,$08,$00,$c2,$20
    .db $8a,$18,$69,$26,$00,$aa,$c2,$20,$b9,$00,$00,$a8,$d0,$cb,$ab,$28
    .db $6b,$08,$8b,$e2,$20,$a9,$7e,$48,$ab,$c2,$30,$9c,$c6,$18,$ad,$b9
    .db $18,$8f,$ee,$03,$70,$a5,$c9,$8f,$da,$00,$70,$a2,$d0,$0a,$ac,$a8
    .db $12,$e2,$20,$8c,$c7,$12,$b9,$08,$00,$29,$e1,$09,$08,$99,$08,$00
    .db $b9,$23,$00,$29,$02,$f0,$04,$5c,$5a,$87,$03,$b9,$09,$00,$89,$01
    .db $c2,$20,$f0,$05,$a9,$98,$3a,$80,$03,$a9,$00,$00,$9f,$02,$00,$70
    .db $b9,$0c,$00,$38,$e5,$c7,$9f,$12,$00,$70,$b9,$0e,$00,$38,$e5,$c9
    .db $9f,$10,$00,$70,$b9,$10,$00,$38,$e5,$cb,$9f,$14,$00,$70,$b9,$04
    .db $00,$9f,$08,$00,$70,$e2,$20,$b9,$12,$00,$9f,$04,$00,$70,$b9,$14
    .db $00,$9f,$05,$00,$70,$b9,$16,$00,$9f,$06,$00,$70,$e2,$20,$b9,$08
    .db $00,$29,$01,$f0,$2e,$b9,$0a,$00,$9f,$18,$00,$70,$b9,$20,$00,$89
    .db $10,$f0,$26,$c2,$20,$98,$9f,$0a,$00,$70,$e2,$20,$b9,$13,$00,$9f
    .db $0c,$00,$70,$b9,$15,$00,$9f,$0d,$00,$70,$b9,$17,$00,$9f,$0e,$00
    .db $70,$80,$06,$a9,$00,$9f,$18,$00,$70,$b9,$20,$00,$9f,$07,$00,$70
    .db $29,$fd,$99,$20,$00,$b9,$cb,$1c,$30,$02,$a5,$c4,$29,$7f,$9f,$19
    .db $00,$70,$b9,$ca,$1c,$30,$02,$a5,$c4,$29,$7f,$9f,$1a,$00,$70,$b9
    .db $c8,$1c,$9f,$1b,$00,$70,$b9,$da,$1c,$9f,$1c,$00,$70,$b9,$db,$1c
    .db $9f,$1d,$00,$70,$c2,$20,$cc,$d1,$16,$d0,$14,$a5,$c4,$29,$07,$00
    .db $c9,$04,$00,$90,$05,$a9,$74,$80,$80,$08,$a9,$74,$81,$80,$03,$b9
    .db $cd,$1c,$9f,$16,$00,$70,$ee,$c6,$18,$8a,$18,$69,$26,$00,$aa,$c2
    .db $20,$b9,$00,$00,$a8,$f0,$03,$82,$e7,$fe,$ad,$c6,$18,$8f,$ee,$01
    .db $70,$ab,$28,$60,$20,$73,$87,$6b,$60,$da,$e2,$20,$a9,$00,$a2,$df
    .db $00,$9d,$e3,$16,$ca,$10,$fa,$fa,$6b

sub_038784:
    php
    sep #$20
    sta $7f007c
    sta $7f007e
    sta $7f0080
    plp
    rtl

sub_038795:
    php
    sep #$20
    lda #$63
    sta $7f007b
    lda #$31
    sta $7f007d
    lda #$3a
    sta $7f007f
    plp
    rtl

sub_0387ac:
    php
    sep #$20
    rep #$10
    stz HDMAEN
    stz $00
    lda #$96
    sta $163e
    jsl sub_038f57
    sep #$20
    rep #$10
    lda #$8c
    sta $163e
    jsl sub_038f57
    sep #$20
    rep #$10
    lda #$80
    sta INIDISP
    jsl sub_038784
    plp
    rtl
    .incbin "data/0187db-0189e1.bin"

sub_0389e1:
.i8
    jsr sub_0389e5
    rtl

sub_0389e5:
    stz $6f
    stz $70
    stz $6e
    lda $6c
    bmi loc_038a12
    asl a
    sta WRMPYA
    lda $6b
    bmi loc_038a03
    lda $6a
    sta WRMPYB
    nop
    nop
    lda $6b
    jmp loc_038a4b

loc_038a03:
    lda #$00
    sec
    sbc $6a
    sta WRMPYB
    lda #$00
    sbc $6b
    jmp loc_038a27

loc_038a12:
    eor #$ff
    inc a
    asl a
    sta WRMPYA
    lda $6b
    bmi loc_038a3d
    lda $6a
    sta WRMPYB
    nop
    nop
    nop
    lda $6b

loc_038a27:
    ldy RDMPYH
    sta WRMPYB
    sty $6d
    rep #$20
.a16
    lda $6f
    sec
    sbc RDMPYL
    sec
    sbc $6d
    jmp loc_038a5d

loc_038a3d:
.a8
    lda #$00
    sec
    sbc $6a
    sta WRMPYB
    nop
    nop
    lda #$00
    sbc $6b

loc_038a4b:
    ldy RDMPYH
    sta WRMPYB
    sty $6d
    rep #$21
.a16
    lda $6f
    adc RDMPYL
    clc
    adc $6d

loc_038a5d:
    sta $6d
    sep #$20
.a8
    rts
    .db $08,$80,$03,$08,$e2,$30

loc_038a68:
    lda #$3a
    sta $e0
    lda #$a7
    sta $e1
    lda #$55
    sta $e2
    lda #$7f
    sta $e3
    stz $9c
    stz $bd
    stz $9b
    stz $9f
    stz $a0
    stz $a1
    stz $9d
    stz $d4
    stz $1595
    stz $1597
    stz $1599
    stz $12d7
    stz $12d8
    lda #$00
    sta $1531
    jsl sub_038aed
    jsl sub_038ae8
    jsl sub_038aaa
.a16
    plp
.i16
    rtl

sub_038aaa:
.a8
.i8
    lda #$ff
    sta $1528
    jsl sub_038dfa
    rep #$20
.a16
    lda $d0
    sta $700034
    lda $d2
    sta $700036
    lda $2a
    sta $700038
    lda $2e
    sta $70003a
    lda $2c
    sta $70003c
    lda $30
    sta $70003e
    lda $18ea
    sta $700092
    lda $18ec
    sta $700094
    rtl

sub_038ae8:
.a8
    php
    sep #$30
    plp
    rtl

sub_038aed:
    php
    rep #$20
.a16
    stz $1594
    stz $1596
    stz $1598
    lda $1594
    sta $158e
    lda $1596
    sta $1590
    lda $1598
    sta $1592
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
    sep #$20
.a8
    lda #$7f
    sta $156b
    stz $156d
    stz $156f
    stz $1571
    sta $1573
    stz $1575
    stz $1577
    stz $1579
    sta $157b
    stz $156a
    stz $156c
    stz $156e
    stz $1570
    stz $1572
    stz $1574
    stz $1576
    stz $1578
    stz $157a
    plp
    rtl

sub_038b85:
    phx
    phy
    php
    rep #$30
.a16
.i16
    lda $02
    sta $700068
    lda $08
    sta $70002c
    lda $97
    sta $70002e
    sep #$20
.a8
    lda #$01
    ldx #$913a
    jsl sub_7f787b
    rep #$20
.a16
    lda $700026
    sta $b7
    lda $700028
    sta $b9
    lda $70002a
    sta $bb
    plp
.a8
.i8
    ply
    plx
    rtl

sub_038bbf:
    rep #$20
.a16
    lda $158e
    sta $700020
    lda $1590
    sta $700022
    lda $1592
    sta $700024
    sep #$20
.a8
    rep #$10
.i16
    lda #$01
    ldx #$9191
    jsl sub_7f787b
    rep #$20
.a16
    lda $7000e4
    sta $153e
    lda $7000e6
    sta $1540
    lda $7000e8
    sta $1542
    lda $7000ea
    sta $1544
    lda $7000ec
    sta $1546
    lda $7000ee
    sta $1548
    lda $7000f0
    sta $154a
    lda $7000f2
    sta $154c
    lda $7000f4
    sta $154e
    sep #$30
.a8
.i8
    rtl

sub_038c27:
.i16
    rep #$20
.a16
    lda $158e
    sta $700020
    lda $1590
    sta $700022
    lda $1592
    sta $700024
    sep #$20
.a8
    rep #$10
    lda #$01
    ldx #$92bc
    jsl sub_7f787b
    rep #$20
.a16
    lda $7000e4
    sta $153e
    lda $7000e6
    sta $1540
    lda $7000e8
    sta $1542
    lda $7000ea
    sta $1544
    lda $7000ec
    sta $1546
    lda $7000ee
    sta $1548
    lda $7000f0
    sta $154a
    lda $7000f2
    sta $154c
    lda $7000f4
    sta $154e
    sep #$30
.a8
.i8
    rtl
    .db $a5,$02,$85,$8b,$a5,$03,$85,$8c,$a5,$97,$85,$8d,$a5,$98,$85,$8e
    .db $22,$e2,$8c,$03,$a5,$8f,$85,$79,$a5,$90,$85,$7a,$a5,$08,$85,$8b
    .db $a5,$09,$85,$8c,$a5,$97,$85,$8d,$a5,$98,$85,$8e,$22,$e2,$8c,$03
    .db $a5,$8f,$85,$7b,$a5,$90,$85,$7c,$18,$a5,$d2,$65,$7b,$85,$7b,$a5
    .db $d3,$65,$7c,$85,$7c,$38,$a5,$7b,$e5,$d0,$85,$7b,$a5,$7c,$e5,$d1
    .db $85,$7c,$6b,$a2,$00,$a5,$8e,$f0,$0c,$e8,$4a,$f0,$06,$66,$8d,$e8
    .db $4a,$d0,$fa,$66,$8d,$86,$99,$a2,$00,$a5,$8c,$85,$92,$10,$0d,$a9
    .db $00,$38,$e5,$8b,$85,$8b,$a9,$00,$e5,$8c,$85,$8c,$f0,$0f,$e8,$4a
    .db $f0,$06,$66,$8b,$e8,$4a,$d0,$fa,$66,$8b,$4c,$33,$8d,$a5,$8b,$30
    .db $13,$d0,$0b,$a5,$d0,$85,$8f,$a5,$d1,$85,$90,$4c,$93,$8d,$ca,$0a
    .db $10,$fc,$85,$8b,$a5,$8d,$c5,$8b,$90,$08,$ca,$4a,$c5,$8b,$b0,$fa
    .db $85,$8d,$8a,$38,$e5,$99,$85,$91,$a6,$8b,$bd,$c7,$82,$a6,$8d,$38
    .db $fd,$c7,$82,$aa,$bd,$c7,$81,$85,$90,$bd,$c7,$80,$a6,$91,$30,$0b
    .db $f0,$0f,$0a,$26,$90,$ca,$d0,$fa,$4c,$70,$8d,$46,$90,$6a,$e8,$d0
    .db $fa,$85,$8f,$24,$92,$10,$10,$38,$a5,$d0,$e5,$8f,$85,$8f,$a5,$d1
    .db $e5,$90,$85,$90,$4c,$93,$8d,$18,$a5,$8f,$65,$d0,$85,$8f,$a5,$90
    .db $65,$d1,$85,$90,$6b

sub_038d94:
.a16
.i16
    rep #$30
    lda #$0000
    sta $7001b0
    lda $1d74
    bit #$0080
    bne loc_038dad
    lda $1aa6
    bit #$0008
    beq loc_038db0

loc_038dad:
    sep #$30
.a8
.i8
    rtl

loc_038db0:
.a16
.i16
    lda $181c
    and #$00ff
    cmp #$0002
    bne loc_038dd6
    lda $7001bc
    and #$fffe
    sta $7001bc

loc_038dc6:
    lda $001b49
    and #$00ff
    sta $700040
    jsl sub_038e0a
.a8
.i8
    rtl

loc_038dd6:
.a16
.i16
    ldx $1934
    lda $0e,x
    cmp $1e11
    bcc loc_038ded
    lda $7001bc
    ora #$0001
    sta $7001bc
    bra loc_038dc6

loc_038ded:
    lda $7001bc
    and #$fffe
    sta $7001bc
    bra loc_038dc6

sub_038dfa:
.a8
.i8
    sep #$20
    rep #$10
.i16
    lda #$01
    ldx #$c785
    jsl sub_7f787b
    sep #$30
.i8
    rtl

sub_038e0a:
.a16
.i16
    rep #$20
    lda $c7
    sta $7000d8
    lda $c9
    sta $7000da
    lda $cb
    sta $7000dc
    lda $1430
    and #$00ff
    beq loc_038e2e
    lda $001439
    sta $7000dc

loc_038e2e:
    lda $157c
    sta $7000e4
    lda $157e
    sta $7000e6
    lda $1580
    sta $7000e8
    lda $1582
    sta $7000ea
    lda $1584
    sta $7000ec
    lda $1586
    sta $7000ee
    lda $1588
    sta $7000f0
    lda $158a
    sta $7000f2
    lda $158c
    sta $7000f4
    lda $7001b0
    ora #$0002
    sta $7001b0
    sep #$30
.a8
.i8
    rtl
    .db $e2,$30,$6b

sub_038e7e:
.i16
    phx
    phy
    php
    rep #$20
.a16
    stz $02
    stz $08
    stz $97
    stz $04
    stz $0a
    stz $e4
    sep #$20
.a8
    stz $02
    stz $08
    lda #$e2
    sta $97
    lda $12,x
    jsl Rotate2D
    lda $04
    sta $02
    lda $0a
    sta $08
    lda $e4
    sta $97
    lda $14,x
    jsl sub_7f38a9
    rep #$20
.a16
    lda $04
    bit #$0080
    beq loc_038ebf
    ora #$ff00
    bra loc_038ec2

loc_038ebf:
    and #$00ff

loc_038ec2:
    clc
    adc $0c,x
    sec
    sbc $c7
    sta $700068
    lda $0a
    bit #$0080
    beq loc_038ed8
    ora #$ff00
    bra loc_038edb

loc_038ed8:
    and #$00ff

loc_038edb:
    clc
    adc $0e,x
    sec
    sbc $c9
    sta $70002c
    lda $e4
    bit #$0080
    beq loc_038ef1
    ora #$ff00
    bra loc_038ef4

loc_038ef1:
    and #$00ff

loc_038ef4:
    clc
    adc $10,x
    sec
    sbc $cb
    sta $70002e
    sep #$20
.a8
    lda #$01
    ldx #$913a
    jsl sub_7f787b
    rep #$20
.a16
    lda $700026
    sta $700068
    lda $700028
    sta $70002c
    lda $70002a
    sta $70002e
    sep #$20
.a8
    lda #$01
    ldx #$d50a
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    rep #$20
    lda $700068
    sta $79
    lda $70002c
    sta $7b
    plp
.a8
    ply
    plx
    rtl

loc_038f44:
    php
    sep #$20
    lda #$de
    sta $163e
    jsl sub_038f57
    lda #$00

loc_038f52:
    dec a
    bne loc_038f52
    plp
    rts

sub_038f57:
.i8
    php
    rep #$30
.a16
.i16
    phx
    pha
    sep #$20
.a8
    stz $163f

loc_038f61:
    sep #$20
    lda SLHV
    lda OPVCT
    xba
    lda OPVCT
    xba
    cmp $163e
    bne loc_038f61
    rep #$30
.a16
    pla
    plx
    plp
.a8
.i8
    rtl

sub_038f79:
.i16
    php
    sep #$20
    lda #$03
    sta $1647
    stz $17f4
    stz $1639
    stz $1640
    stz $1642
    plp
    rtl
    .db $08,$e2,$20,$ad,$12,$42,$89,$01,$f0,$f9,$ad,$12,$42,$89,$01,$d0
    .db $f9,$80,$01,$08,$c2,$20,$ad,$18,$42,$48,$4d,$92,$12,$2d,$18,$42
    .db $8d,$96,$12,$ad,$1a,$42,$48,$4d,$94,$12,$2d,$1a,$42,$8d,$98,$12
    .db $68,$8d,$94,$12,$68,$8d,$92,$12,$28,$6b

sub_038fc9:
    php
    sep #$20
    phb
    jsr sub_038fd3
.a16
    plb
    plp
.a8
    rtl

sub_038fd3:
    sep #$20
    lda $192e
    pha
    plb
    rep #$20
.a16
    lda $8000,x
    and #$00ff
    txy
    tax
    jmp (tbl_038fe7,x)

tbl_038fe7:
    .db $6c,$9e,$6c,$9e,$71,$9e,$c0,$9e,$c4,$9e,$57,$9f,$f2,$9f,$96,$9d
    .db $3c,$9d,$12,$a0,$c1,$96,$e6,$9c,$ee,$9c,$f9,$9c,$d8,$9c,$80,$9c
    .db $a2,$9c,$c2,$9c,$ce,$9c,$6c,$9e,$33,$9c,$5f,$9c,$e5,$9b,$d3,$9b
    .db $7f,$9b,$9b,$9b,$b7,$9b,$87,$9a,$aa,$9a,$cc,$9a,$f7,$9a,$1d,$9b
    .db $42,$9b,$5b,$9a,$66,$9a,$ff,$99,$2d,$9a,$dd,$99,$be,$99,$71,$9a
    .db $7c,$9a,$96,$99,$aa,$99,$80,$99,$8a,$99,$46,$99,$2c,$99,$13,$99
    .db $ee,$98,$22,$9d,$04,$9d,$4c,$98,$e8,$97,$1a,$98,$cf,$97,$cf,$97
    .db $a1,$9d,$a1,$9d,$6c,$9e,$a1,$9d,$e4,$96,$01,$97,$26,$97,$7f,$97
    .db $a8,$97,$d9,$96,$63,$99,$c8,$9e,$c1,$96,$ad,$96,$92,$96,$e9,$95
    .db $3f,$95,$27,$95,$ef,$90,$4d,$97,$66,$97,$dd,$90,$25,$a0,$bf,$90
    .db $33,$95,$30,$a0,$3a,$a0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
    .db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
    .db $00,$00,$00,$00,$00,$00,$00,$00,$65,$94,$ce,$94,$fd,$94,$06,$92
    .db $d8,$91,$74,$93,$05,$92,$df,$93

loc_0390bf:
    sep #$20
.a8
    lda $8001,y
    cmp $1ba5
    bne loc_0390d2
    rep #$20
.a16
    lda $8002,y
    tax
    jmp sub_038fd3

loc_0390d2:
.a8
    rep #$20
.a16
    tya
    clc
    adc #$0004
    tax
    jmp sub_038fd3

loc_0390dd:
    lda $8001,y
    sta $7001bc
    rep #$20
    tya
    clc
    adc #$0003
    tax
    jmp sub_038fd3

loc_0390ef:
    lda $8001,y
    and #$007f
    tax
    beq loc_039104
    lda #$0000
    clc

loc_0390fc:
    adc #$0010
    dex
    bne loc_0390fc
    clc
    tax

loc_039104:
    lda $8002,y
    and #$00ff
    xba
    sta $7e686a,x
    lda $8003,y
    and #$00ff
    xba
    sta $7e686e,x
    lda $8004,y
    and #$00ff
    xba
    sta $7e6870,x
    lda $8005,y
    and #$00ff
    xba
    sta $7e6874,x
    lda $8006,y
    sta $7e6876,x
    lda $8007,y
    sta $7e6877,x
    sep #$20
.a8
    lda $8001,y
    and #$80
    beq loc_03914b
    lda #$00
    beq loc_03914d

loc_03914b:
    lda #$02

loc_03914d:
    sta $7e6879,x
    inc $1910
    rep #$20
.a16
    tya
    clc
    adc #$0009
    tax
    jmp sub_038fd3

sub_03915f:
.a8
    php
    phy
    rep #$20
.a16
    ldy $1b32
    beq loc_039180
    txa
    bra loc_039179

loc_03916b:
    txa
    cmp $1ace,y
    beq loc_039183
    lda $1ce6,x
    cmp $1ace,y
    beq loc_039183

loc_039179:
    dey
    dey
    dey
    dey
    dey
    bpl loc_03916b

loc_039180:
    ply
    plp
    rtl

loc_039183:
    phx
    phb
    sep #$20
.a8
    lda $192e
    pha
    lda $1ad2,y
    sta $192e
    ldx $1ad0,y
    phy
    jsl sub_038fc9
    ply
    jsr sub_0391a8
    sep #$20
    pla
    sta $192e
    plb
    plx
    ply
    plp
    rtl

sub_0391a8:
    php
    rep #$20
.a16
    phx
    sty $02
    lda $1b32
    sec
    sbc $02
    beq loc_0391d5
    sec
    sbc #$0005
    beq loc_0391cb
    tax
    sep #$20

loc_0391bf:
.a8
    lda $1ad3,y
    sta $1ace,y
    iny
    dex
    bne loc_0391bf
    rep #$20

loc_0391cb:
.a16
    lda $1b32
    sec
    sbc #$0005
    sta $1b32

loc_0391d5:
    plx
    plp
    rts

loc_0391d8:
    tyx
    ldy $1b32
    lda $1651
    beq loc_0391fe
    sta $1ace,y
    txa
    clc
    adc #$0003
    sta $1ad0,y
    sep #$20
.a8
    lda $192e
    sta $1ad2,y
    rep #$20
.a16
    iny
    iny
    iny
    iny
    iny
    sty $1b32

loc_0391fe:
    lda $8001,x
    tax
    jmp sub_038fd3
    .incbin "data/019205-019527.bin"

loc_039527:
    lda $8001,y
    tya
    clc
    adc #$0002
    tax
    jmp sub_038fd3

loc_039533:
    phb
    phy
    lda #$0022
    sta $7ed73d
    jmp loc_039548

loc_03953f:
    phb
    phy
    lda #$0002
    sta $7ed73d

loc_039548:
    lda $8001,y
    sta $02
    lda $8003,y
    sta $08
    lda $8005,y
    sta $97
    lda $8008,y
    sta $04
    lda $800a,y
    sta $0a
    sep #$20
.a8
    lda $8007,y
    sta $e5
    lda #$7e
    pha
    plb
    rep #$20
.a16
    ldx $1285
    txy
    ldx $1283
    bne loc_03957b
    tyx
    jmp loc_0395de

loc_03957b:
    lda $0000,x
    sta $1283
    tya
    bne loc_039592
    lda $1285
    sta $0000,x
    stz $0002,x
    stx $1285
    bra loc_0395a0

loc_039592:
    lda $0000,y
    sta $0000,x
    txa
    sta $0000,y
    tya
    sta $0002,x

loc_0395a0:
    ldy $0000,x
    beq loc_0395a9
    txa
    sta $0002,y

loc_0395a9:
    lda $02
    sta $0004,x
    lda $08
    sta $0006,x
    lda $97
    sta $0008,x
    lda $04
    sta $000d,x
    lda $0a
    sta $000f,x
    sep #$20
.a8
    lda $e5
    sta $000b,x
    lda $190e
    sta $0018,x
    lda $7ed73d
    sta $0012,x
    stz $000a,x
    stz $000c,x
    rep #$20

loc_0395de:
.a16
    plx
    plb
    txa
    clc
    adc #$000c
    tax
    jmp sub_038fd3

loc_0395e9:
    phb
    phy
    lda $8001,y
    sta $02
    lda $8003,y
    sta $08
    lda $8005,y
    sta $97
    lda $8008,y
    sta $04
    lda $800a,y
    sta $0a
    sep #$20
.a8
    lda $800c,y
    sta $e4
    lda $8007,y
    sta $e5
    lda #$7e
    pha
    plb
    rep #$20
.a16
    ldx $1285
    txy
    ldx $1283
    bne loc_039623
    tyx
    jmp loc_039687

loc_039623:
    lda $0000,x
    sta $1283
    tya
    bne loc_03963a
    lda $1285
    sta $0000,x
    stz $0002,x
    stx $1285
    bra loc_039648

loc_03963a:
    lda $0000,y
    sta $0000,x
    txa
    sta $0000,y
    tya
    sta $0002,x

loc_039648:
    ldy $0000,x
    beq loc_039651
    txa
    sta $0002,y

loc_039651:
    lda $02
    sta $0004,x
    lda $08
    sta $0006,x
    lda $97
    sta $0008,x
    lda $04
    sta $000d,x
    lda $0a
    sta $000f,x
    sep #$20
.a8
    lda $e4
    sta $0011,x
    lda $e5
    sta $000b,x
    lda $190e
    sta $0018,x
    stz $0012,x
    stz $000a,x
    stz $000c,x
    rep #$20

loc_039687:
.a16
    plx
    plb
    txa
    clc
    adc #$000d
    tax
    jmp sub_038fd3

loc_039692:
    tyx
    phx
    ldx $1651
    bne loc_03969d
    plx
    jmp loc_0396a7

loc_03969d:
    plx
    ldy $1651
    lda $8001,x
    sta $002b,y

loc_0396a7:
    inx
    inx
    inx
    jmp sub_038fd3

loc_0396ad:
    tyx
    lda $8001,x
    and #$00ff
    asl a
    asl a
    asl a
    asl a
    sta $1655
    inx
    inx
    stx $1657
    rts

loc_0396c1:
    tyx
    sep #$20
.a8
    lda $1442
    and #$80
    bne loc_0396d4
    lda $8001,x
    sta $1cda
    stz $1cd9

loc_0396d4:
    inx
    inx
    jmp sub_038fd3

loc_0396d9:
.a16
    tyx
    phx
    lda $8001,x
    plx
    inx
    inx
    jmp sub_038fd3

loc_0396e4:
    tyx
    txa
    clc
    adc #$8000
    tax
    sep #$20
.a8
    lda #$00
    pha
    plb
    lda #$03
    pha
    ldy #$8fd2
    phy
    lda $192e
    pha
    phx
    ldx $1651
    rtl

loc_039701:
.a16
    tyx
    phx
    sep #$20
.a8
    lda #$03
    pha
    ldy #$971b
    phy
    lda $8003,x
    pha
    ldy $8001,x
    phy
    ldx $1651
    lda #$00
    pha
    plb
    rtl
    rep #$30
.a16
    plx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039726:
    tyx
    lda $8001,x
    sta $54
    lda $8002,x
    sta $55
    sep #$20
.a8
    lda [$54]
    cmp $8004,x
    bpl loc_039743
    rep #$20
.a16
    lda $8005,x
    tax
    jmp sub_038fd3

loc_039743:
.a8
    inx
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_03974d:
.a16
    tyx
    lda $7ecf33
    bit $8001,x
    beq loc_03975e
    lda $8003,x
    tax
    jmp sub_038fd3

loc_03975e:
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039766:
    tyx
    lda $7ecf33
    bit $8001,x
    bne loc_039777
    lda $8003,x
    tax
    jmp sub_038fd3

loc_039777:
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_03977f:
    tyx
    lda $8001,x
    sta $54
    lda $8002,x
    sta $55
    sep #$20
.a8
    lda [$54]
    cmp $8004,x
    beq loc_03979e
    bmi loc_03979e
    rep #$20
.a16
    lda $8005,x
    tax
    jmp sub_038fd3

loc_03979e:
.a8
    inx
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_0397a8:
.a16
    tyx
    lda $8001,x
    sta $54
    lda $8002,x
    sta $55
    sep #$20
.a8
    lda [$54]
    cmp $8004,x
    bne loc_0397c5
    rep #$20
.a16
    lda $8005,x
    tax
    jmp sub_038fd3

loc_0397c5:
.a8
    inx
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_0397cf:
.a16
    php
    rep #$30
    lda $16ce
    beq loc_0397e6
    sta $18ca
    ldy #$0002
    sty $18d0
    lda #$001e
    sta $18ce

loc_0397e6:
    plp
    rtl

loc_0397e8:
    tyx
    phx
    ldx $1651
    bne loc_0397f3
    plx
    jmp loc_039811

loc_0397f3:
    plx
    lda $8001,x
    clc
    adc $1651
    tay
    lda $8003,x
    sta $54
    lda $8004,x
    sta $55
    sep #$20
.a8
    lda [$54]
    clc
    adc $0000,y
    sta $0000,y

loc_039811:
.a16
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_03981a:
    tyx
    phx
    ldx $1651
    bne loc_039825
    plx
    jmp loc_039843

loc_039825:
    plx
    lda $8001,x
    clc
    adc $1651
    tay
    lda $8003,x
    sta $54
    lda $8004,x
    sta $55
    rep #$20
    lda [$54]
    clc
    adc $0000,y
    sta $0000,y

loc_039843:
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_03984c:
    tyx
    phx
    jsl sub_039857
    plx
    inx
    jmp sub_038fd3

sub_039857:
    lda $1d27
    ora #$0008
    sta $1d27
    rtl

sub_039861:
    php
    rep #$30
    sep #$20
.a8
    lda $16df
    bit #$18
    beq loc_039882
    bit #$08
    beq loc_039878
    lda #$01
    sta $1653
    bra loc_039885

loc_039878:
    lda #$ff
    sta $1653
    sta $1654
    bra loc_039888

loc_039882:
    stz $1653

loc_039885:
    stz $1654

loc_039888:
    lda $16df
    bit #$01
    beq loc_039894
    jsr sub_039c8c
    bra loc_039897

loc_039894:
    jsr sub_039cae

loc_039897:
    lda $16df
    bit #$02
    beq loc_0398a5
    lda #$01
    sta $18ad
    bra loc_0398a8

loc_0398a5:
    stz $18ad

loc_0398a8:
    lda #$00
    sta $7024ba
    sta $7024bb
    lda $16df
    bit #$20
    beq loc_0398c5
    lda #$01
    sta $7024ba
    sta $7024bb
    bra loc_0398d3

loc_0398c5:
    bit #$40
    beq loc_0398db
    lda #$02
    sta $7024ba
    sta $7024bb

loc_0398d3:
    lda #$ff
    sta $1653
    sta $1654

loc_0398db:
    lda $16df
    bit #$04
    beq loc_0398e9
    lda #$01
    sta $164b
    bra loc_0398ec

loc_0398e9:
    stz $164b

loc_0398ec:
    plp
.a16
    rtl

loc_0398ee:
    tyx
    lda $8001,x
    sta $54
    lda $8002,x
    sta $55
    lda $8004,x
    sta [$54]
    inc $54
    inc $54
    sep #$20
.a8
    lda $8006,x
    sta [$54]
    inx
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039913:
.a16
    tyx
    lda $8003,x
    sta $54
    lda $8004,x
    sta $55
    lda $8001,x
    sta [$54]
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_03992c:
    tyx
    lda $8002,x
    sta $54
    lda $8003,x
    sta $55
    sep #$20
.a8
    lda $8001,x
    sta [$54]
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039946:
.a16
    tyx
    phx
    ldx $1651
    bne loc_039951
    plx
    jmp loc_03995f

loc_039951:
    plx
    ldy $1651
    sep #$20
.a8
    lda #$01
    sta $0020,y
    inc $1696

loc_03995f:
.a16
    inx
    jmp sub_038fd3

loc_039963:
    tyx
    phx
    ldx $1651
    bne loc_03996e
    plx
    jmp loc_03997c

loc_03996e:
    plx
    ldy $1651
    sep #$20
.a8
    lda #$20
    sta $0023,y
    inc $1696

loc_03997c:
.a16
    inx
    jmp sub_038fd3

loc_039980:
    tyx
    sep #$20
.a8
    stz $164b
    inx
    jmp sub_038fd3

loc_03998a:
.a16
    tyx
    sep #$20
.a8
    lda #$01
    sta $164b
    inx
    jmp sub_038fd3

loc_039996:
.a16
    tyx
    sep #$20
.a8
    stz $f3
    stz $f4
    lda #$80
    jsl sub_038784
    sta INIDISP
    inx
    jmp sub_038fd3

loc_0399aa:
.a16
    tyx
    sep #$20
.a8
    stz $f3
    lda #$0f
    sta $f4
    jsl sub_038784
    sta INIDISP
    inx
    jmp sub_038fd3

loc_0399be:
.a16
    tyx
    sep #$20
.a8
    lda $f4
    bne loc_0399d1
    lda $7f007c
    cmp #$80
    bne loc_0399d1
    inx
    jmp sub_038fd3

loc_0399d1:
    lda #$01
    sta $1655
    stz $1656
    stx $1657
    rts

loc_0399dd:
.a16
    tyx
    phx
    ldx $1651
    bne loc_0399e8
    plx
    jmp loc_0399f8

loc_0399e8:
    plx
    lda $8001,x
    sta $54
    lda $8002,x
    sta $55
    lda $1651
    sta [$54]

loc_0399f8:
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_0399ff:
    tyx
    phx
    ldx $1651
    bne loc_039a0a
    plx
    jmp loc_039a24

loc_039a0a:
    plx
    lda $8001,x
    clc
    adc $1651
    tay
    lda $8003,x
    sta $54
    lda $8004,x
    sta $55
    sep #$20
.a8
    lda [$54]
    sta $0000,y

loc_039a24:
.a16
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039a2d:
    tyx
    phx
    ldx $1651
    bne loc_039a38
    plx
    jmp loc_039a52

loc_039a38:
    plx
    lda $8001,x
    clc
    adc $1651
    tay
    lda $8003,x
    sta $54
    lda $8004,x
    sta $55
    rep #$20
    lda [$54]
    sta $0000,y

loc_039a52:
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039a5b:
    tyx
    sep #$20
.a8
    lda #$01
    sta $f3
    inx
    jmp sub_038fd3

loc_039a66:
.a16
    tyx
    sep #$20
.a8
    lda #$ff
    sta $f3
    inx
    jmp sub_038fd3

loc_039a71:
.a16
    tyx
    sep #$20
.a8
    lda #$02
    sta $f3
    inx
    jmp sub_038fd3

loc_039a7c:
.a16
    tyx
    sep #$20
.a8
    lda #$fe
    sta $f3
    inx
    jmp sub_038fd3

loc_039a87:
.a16
    tyx
    phx
    ldx $1651
    bne loc_039a92
    plx
    jmp loc_039aa3

loc_039a92:
    plx
    lda $8001,x
    clc
    adc $1651
    tay
    sep #$20
.a8
    lda $8003,x
    sta $0000,y

loc_039aa3:
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039aaa:
.a16
    tyx
    phx
    ldx $1651
    bne loc_039ab5
    plx
    jmp loc_039ac4

loc_039ab5:
    plx
    lda $8001,x
    clc
    adc $1651
    tay
    lda $8003,x
    sta $0000,y

loc_039ac4:
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039acc:
    tyx
    phx
    ldx $1651
    bne loc_039ad7
    plx
    jmp loc_039aee

loc_039ad7:
    plx
    lda $8001,x
    clc
    adc $1651
    tay
    lda $8003,x
    sta $0000,y
    sep #$20
.a8
    lda $8005,x
    sta $0002,y

loc_039aee:
.a16
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039af7:
    tyx
    phx
    ldx $1651
    bne loc_039b02
    plx
    jmp loc_039b16

loc_039b02:
    plx
    lda $1651
    clc
    adc $8001,x
    txy
    tax
    sep #$20
.a8
    lda $8003,y
    sta $7e207e,x
    tyx

loc_039b16:
.a16
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039b1d:
    tyx
    phx
    ldx $1651
    bne loc_039b28
    plx
    jmp loc_039b3a

loc_039b28:
    plx
    lda $1651
    clc
    adc $8001,x
    txy
    tax
    lda $8003,y
    sta $7e207e,x
    tyx

loc_039b3a:
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039b42:
    tyx
    phx
    ldx $1651
    bne loc_039b4d
    plx
    jmp loc_039b68

loc_039b4d:
    plx
    lda $1651
    clc
    adc $8001,x
    txy
    tax
    lda $8003,y
    sta $7e207e,x
    sep #$20
.a8
    lda $8005,y
    sta $7e2080,x
    tyx

loc_039b68:
.a16
    inx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3
    .db $bb,$bd,$01,$80,$8d,$55,$16,$e8,$e8,$e8,$8e,$57,$16,$60

loc_039b7f:
    tyx
    sep #$20
.a8
    phx
    ldx $1651
    bne loc_039b8c
    plx
    jmp loc_039b96

loc_039b8c:
    plx
    lda $8001,x
    ldy $1651
    sta $0012,y

loc_039b96:
    inx
    inx
    jmp sub_038fd3

loc_039b9b:
.a16
    tyx
    phx
    ldx $1651
    bne loc_039ba6
    plx
    jmp loc_039bb2

loc_039ba6:
    plx
    sep #$20
.a8
    lda $8001,x
    ldy $1651
    sta $0014,y

loc_039bb2:
.a16
    inx
    inx
    jmp sub_038fd3

loc_039bb7:
    tyx
    sep #$20
.a8
    phx
    ldx $1651
    bne loc_039bc4
    plx
    jmp loc_039bce

loc_039bc4:
    plx
    lda $8001,x
    ldy $1651
    sta $0016,y

loc_039bce:
    inx
    inx
    jmp sub_038fd3

loc_039bd3:
.a16
    tyx
    sep #$20
.a8
    lda $8003,x
    sta $192e
    rep #$20
.a16
    lda $8001,x
    tax
    jmp sub_038fd3

loc_039be5:
    tyx
    phx
    sep #$20
.a8
    lda #$03
    pha
    rep #$20
.a16
    lda #$9c05
    pha
    sep #$20
.a8
    lda $8003,x
    pha
    rep #$20
.a16
    lda $8001,x
    dec a
    pha
    sep #$20
.a8
    lda #$00
    pha
    plb
    rtl
    .db $b0,$1a,$e2,$20,$ad,$2e,$19,$48,$ab,$c2,$30,$fa,$e8,$e8,$e8,$e8
    .db $e8,$e8,$8e,$57,$16,$a9,$01,$00,$8d,$55,$16,$60,$e2,$20,$ad,$2e
    .db $19,$48,$ab,$c2,$30,$fa,$bd,$04,$80,$aa,$4c,$d3,$8f

loc_039c33:
.a16
    tyx
    ldy $168a
    txa
    sta $165d,y
    sep #$20
.a8
    lda $192e
    sta $165f,y
    rep #$20
.a16
    iny
    iny
    iny
    sty $168a
    sep #$20
.a8
    lda $8003,x
    sta $192e
    rep #$20
.a16
    lda $8001,x
    tax
    inc $168c
    jmp sub_038fd3

loc_039c5f:
    tyx
    ldy $168a
    dey
    sep #$20
.a8
    lda $165d,y
    sta $192e
    rep #$20
.a16
    dey
    dey
    ldx $165d,y
    sty $168a
    inx
    inx
    inx
    inx
    dec $168c
    jmp sub_038fd3

loc_039c80:
    tyx
    jsr sub_039c8c
    inx
    jmp sub_038fd3
    .db $20,$8c,$9c,$6b

sub_039c8c:
.a8
    php
    sep #$20
    lda $18a7
    sta BG2VOFS
    lda $18a8
    sta BG2VOFS
    lda #$01
    sta $18ae
    plp
    rts

loc_039ca2:
.a16
    tyx
    jsr sub_039cae
    inx
    jmp sub_038fd3
    .db $20,$ae,$9c,$6b

sub_039cae:
.a8
    php
    sep #$20
    stz $18ae
    lda $18a7
    sta BG2VOFS
    lda $18a8
    sta BG2VOFS
    plp
    rts

loc_039cc2:
.a16
    tyx
    sep #$20
.a8
    lda #$01
    sta $18ad
    inx
    jmp sub_038fd3

loc_039cce:
.a16
    tyx
    sep #$20
.a8
    stz $18ad
    inx
    jmp sub_038fd3

loc_039cd8:
.a16
    tyx
    sep #$20
.a8
    lda $8001,x
    sta $18af
    inx
    inx
    jmp sub_038fd3

loc_039ce6:
.a16
    tyx
    stz $1653
    inx
    jmp sub_038fd3

loc_039cee:
    tyx
    lda #$0001
    sta $1653
    inx
    jmp sub_038fd3

loc_039cf9:
    tyx
    lda #$ffff
    sta $1653
    inx
    jmp sub_038fd3

loc_039d04:
    tyx
    phx
    lda $1642
    tax
    lda $03d774,x
    sta $02
    lda $03d775,x
    ora $02
    beq loc_039d1d
    plx
    stx $1657
    rts

loc_039d1d:
    plx
    inx
    jmp sub_038fd3

loc_039d22:
    tyx
    lda $8001,x
    and #$00ff
    sta $1644
    lda $8002,x
    sta $1642
    sta $169b
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039d3c:
    tyx
    phx
    rep #$20
    lda $8001,x
    jsl sub_039d4e
    plx
    inx
    inx
    inx
    jmp sub_038fd3

sub_039d4e:
    sta $169b
    lda $1d27
    ora #$0004
    sta $1d27
    rtl

sub_039d5b:
    sep #$20
.a8
    lda #$13
    sta $1c52
    rep #$30
.a16
    ldx $169b

loc_039d67:
    lda $03d774,x
    sta $02
    lda $03d775,x
    sta $04
    ora $02
    beq loc_039d95
    phx
    sep #$20
.a8
    lda #$03
    pha
    rep #$20
.a16
    lda #$9d8c
    pha
    sep #$20
.a8
    lda $02
    pha
    ldx $04
    dex
    phx
    rtl
    rep #$20
.a16
    plx
    inx
    inx
    inx
    bra loc_039d67

loc_039d95:
    rtl

loc_039d96:
    tyx
    lda #$0032
    sta $1524
    inx
    jmp sub_038fd3

loc_039da1:
    tyx
    lda $8001,x
    and #$00ff
    asl a
    asl a
    sta $1655
    phx
    ldx $12a8
    txy
    ldx $12aa
    bne loc_039dbb
    tyx
    jmp loc_039e59

loc_039dbb:
    lda $00,x
    sta $12aa
    tya
    bne loc_039dcf
    lda $12a8
    sta $00,x
    stz $02,x
    stx $12a8
    bra loc_039ddb

loc_039dcf:
    lda $0000,y
    sta $00,x
    txa
    sta $0000,y
    tya
    sta $02,x

loc_039ddb:
    ldy $00,x
    beq loc_039de3
    txa
    sta $0002,y

loc_039de3:
    txy
    plx
    sep #$20
.a8
    jsl sub_7f29bc
    rep #$20
.a16
    lda $8002,x
    bit #$0080
    beq loc_039dfa
    ora #$ff00
    bra loc_039dfd

loc_039dfa:
    and #$00ff

loc_039dfd:
    asl a
    asl a
    sta $000c,y
    lda $8003,x
    bit #$0080
    beq loc_039e0f
    ora #$ff00
    bra loc_039e12

loc_039e0f:
    and #$00ff

loc_039e12:
    asl a
    asl a
    sta $000e,y
    lda $8004,x
    bit #$0080
    beq loc_039e24
    ora #$ff00
    bra loc_039e27

loc_039e24:
    and #$00ff

loc_039e27:
    asl a
    asl a
    asl a
    asl a
    sta $0010,y
    lda $8005,x
    sta $0004,y
    lda $8006,x
    sta $0019,y
    sep #$20
.a8
    lda $8008,x
    sta $001b,y
    rep #$20
.a16
    sty $1651
    txa
    clc
    adc #$0007
    tax
    lda $1655
    bne loc_039e55
    jmp sub_038fd3

loc_039e55:
    stx $1657
    rts

loc_039e59:
    rep #$20
    stz $1651
    pla
    clc
    adc #$0007
    tax
    lda $1655
    bne loc_039e55
    jmp sub_038fd3

loc_039e6c:
    tyx
    stx $1657
    rts

loc_039e71:
    tya
    ldx #$0000

loc_039e75:
    cmp $16a5,x
    beq loc_039e9a
    inx
    inx
    cpx #$0008
    bne loc_039e75
    ldx $16ad
    sta $16a5,x
    lda $8003,y
    sta $169d,x
    inc $16ad
    inc $16ad
    lda $8001,y
    tax
    jmp sub_038fd3

loc_039e9a:
    lda $169d,x
    dec a
    beq loc_039eab
    sta $169d,x
    tyx
    lda $8001,x
    tax
    jmp sub_038fd3

loc_039eab:
    stz $16a5,x
    stz $169d,x
    dec $16ad
    dec $16ad
    tyx
    inx
    inx
    inx
    inx
    inx
    jmp sub_038fd3

loc_039ec0:
    jsl sub_008006

loc_039ec4:
    inx
    jmp sub_038fd3

loc_039ec8:
    tyx
    lda $8001,x
    sta $1655
    phx
    ldx $12a8
    txy
    ldx $12aa
    bne loc_039edd
    tyx
    jmp loc_039f4a

loc_039edd:
    lda $00,x
    sta $12aa
    tya
    bne loc_039ef1
    lda $12a8
    sta $00,x
    stz $02,x
    stx $12a8
    bra loc_039efd

loc_039ef1:
    lda $0000,y
    sta $00,x
    txa
    sta $0000,y
    tya
    sta $02,x

loc_039efd:
    ldy $00,x
    beq loc_039f05
    txa
    sta $0002,y

loc_039f05:
    txy
    sty $1651
    plx
    sep #$20
.a8
    jsl sub_7f29bc
    rep #$20
.a16
    lda $8003,x
    sta $000c,y
    lda $8005,x
    sta $000e,y
    lda $8007,x
    sta $0010,y
    lda $8009,x
    sta $0004,y
    lda $800b,x
    sta $0019,y
    lda $800c,x
    sta $001a,y
    rep #$20
    txa
    clc
    adc #$000e
    tax

loc_039f3e:
    lda $1655
    bne loc_039f46
    jmp sub_038fd3

loc_039f46:
    stx $1657
    rts

loc_039f4a:
    rep #$20
    stz $1651
    pla
    clc
    adc #$000e
    tax
    bra loc_039f3e

loc_039f57:
    tyx
    lda $8001,x
    sta $1655
    phx
    ldx $12a8
    txy
    ldx $12aa
    bne loc_039f6c
    tyx
    jmp loc_039fe5

loc_039f6c:
    lda $00,x
    sta $12aa
    tya
    bne loc_039f80
    lda $12a8
    sta $00,x
    stz $02,x
    stx $12a8
    bra loc_039f8c

loc_039f80:
    lda $0000,y
    sta $00,x
    txa
    sta $0000,y
    tya
    sta $02,x

loc_039f8c:
    ldy $00,x
    beq loc_039f94
    txa
    sta $0002,y

loc_039f94:
    txy
    sty $1651
    plx
    sep #$20
.a8
    jsl sub_7f29bc
    rep #$20
.a16
    lda $8003,x
    sta $000c,y
    lda $8005,x
    sta $000e,y
    lda $8007,x
    sta $0010,y
    lda $8009,x
    sta $0004,y
    lda $800b,x
    sta $0019,y
    lda $800c,x
    sta $001a,y
    lda $800e,x
    sta $0006,y
    lda #$0008
    sta $0009,y
    rep #$20
    txa
    clc
    adc #$0010
    tax

loc_039fd9:
    lda $1655
    bne loc_039fe1
    jmp sub_038fd3

loc_039fe1:
    stx $1657
    rts

loc_039fe5:
    rep #$20
    stz $1651
    pla
    clc
    adc #$0010
    tax
    bra loc_039fd9

loc_039ff2:
    ldx $12a8
    beq loc_03a009

loc_039ff7:
    lda $00,x
    tax
    beq loc_03a009
    lda $8003,y
    cmp $04,x
    bne loc_039ff7
    phy
    jsl sub_7f3356
    ply

loc_03a009:
    tya
    clc
    adc #$0005
    tax
    jmp sub_038fd3

loc_03a012:
    tyx
    inx
    inx
    inx
    lda $7ffe,x
    beq loc_03a022
    sta $1655
    stx $1657
    rts

loc_03a022:
    jmp sub_038fd3

loc_03a025:
    tyx
    lda #$0100
    tsb $1b84
    inx
    jmp sub_038fd3

loc_03a030:
    lda $1ba5
    bit #$0001
    beq loc_03a04c
    bra loc_03a045

loc_03a03a:
    lda $7ee087
    bit #$0400
    beq loc_03a04c
    bra loc_03a045

loc_03a045:
    lda $8001,y
    tax
    jmp sub_038fd3

loc_03a04c:
    tya
    clc
    adc #$0003
    tax
    jmp sub_038fd3

loc_03a055:
.a8
    lda #$0c
    jsl sub_7f233b
    cpy #$0000
    bne loc_03a064
    jml loc_03a077

loc_03a064:
    rep #$20
.a16
    lda $6a62,y
    sta $12cf
    sep #$20
.a8
    lda $6a64,y
    sta $12d1
    jml [$12cf]

loc_03a077:
    lda $25,x
    and #$40
    bne loc_03a081
    jml loc_03a08b

loc_03a081:
    dec $1aca
    inc $1acc
    jsl sub_03915f

loc_03a08b:
    lda $25,x
    and #$02
    beq loc_03a095
    jml loc_03a26a

loc_03a095:
    lda $1aa6
    bit #$02
    bne loc_03a0a0
    jsl sub_068007

loc_03a0a0:
    jsl sub_068000
    lda $24,x
    ora #$04
    sta $24,x
    lda $26,x
    ora #$08
    sta $26,x
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_03a0c3
    jml loc_03a26a

loc_03a0c3:
    lda $0021,y
    ora #$01
    sta $0021,y
    lda $0020,y
    ora #$20
    sta $0020,y
    lda #$00
    sta $1cc8,y
    lda #$00
    sta $1cda,y
    lda $0026,y
    ora #$08
    sta $0026,y
    lda $0024,y
    ora #$04
    sta $0024,y
    lda $0026,y
    ora #$10
    sta $0026,y
    rep #$20
.a16
    phy
    ldy $04,x
    phx
    tyx
    stz $1486
    lda $00000a,x
    cmp $00000c,x
    bcs loc_03a10d
    lda $00000c,x

loc_03a10d:
    asl a
    cmp #$0040
    bcs loc_03a116
    brl loc_03a1eb

loc_03a116:
    cmp #$0080
    bcs loc_03a11e
    brl loc_03a1a1

loc_03a11e:
    cmp #$0100
    bcs loc_03a126
    brl loc_03a156

loc_03a126:
    plx
    sep #$20
.a8
    jsr sub_03a62a
    ply
    lda #$08
    sta $000b,y
    rep #$20
.a16
    lda #$bdec
    sta $0004,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$bc9c
    sta $04,x
    sep #$20
.a8
    rep #$20
.a16
    lda #$a279
    sta $19,x
    sep #$20
.a8
    lda #$03
    sta $1b,x
    jml loc_03a230

loc_03a156:
.a16
    sec
    sbc #$0100
    sta $02
    lda $000007,x
    and #$00ff
    beq loc_03a16a

loc_03a165:
    lsr $02
    dec a
    bne loc_03a165

loc_03a16a:
    lda $02
    plx
    ply
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    sep #$20
.a8
    sta $1cda,y
    lda #$08
    sta $000b,y
    rep #$20
.a16
    lda #$bdd0
    sta $0004,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$bc9c
    sta $04,x
    sep #$20
.a8
    rep #$20
.a16
    lda #$a279
    sta $19,x
    sep #$20
.a8
    lda #$03
    sta $1b,x
    jml loc_03a230

loc_03a1a1:
.a16
    sec
    sbc #$0080
    sta $02
    lda $000007,x
    and #$00ff
    beq loc_03a1b5

loc_03a1b0:
    lsr $02
    dec a
    bne loc_03a1b0

loc_03a1b5:
    lda $02
    plx
    ply
    lsr a
    lsr a
    lsr a
    lsr a
    sep #$20
.a8
    sta $1cda,y
    lda #$06
    sta $000b,y
    rep #$20
.a16
    lda #$bdb4
    sta $0004,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$bc9c
    sta $04,x
    sep #$20
.a8
    rep #$20
.a16
    lda #$a279
    sta $19,x
    sep #$20
.a8
    lda #$03
    sta $1b,x
    jml loc_03a230

loc_03a1eb:
.a16
    sec
    sbc #$0040
    sta $02
    lda $000007,x
    and #$00ff
    beq loc_03a1ff

loc_03a1fa:
    lsr $02
    dec a
    bne loc_03a1fa

loc_03a1ff:
    lda $02
    plx
    ply
    lsr a
    lsr a
    lsr a
    sep #$20
.a8
    sta $1cda,y
    lda #$04
    sta $000b,y
    rep #$20
.a16
    lda #$bd98
    sta $0004,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$bc9c
    sta $04,x
    sep #$20
.a8
    rep #$20
.a16
    lda #$a279
    sta $19,x
    sep #$20
.a8
    lda #$03
    sta $1b,x

loc_03a230:
    lda #$00
    sta $000a,y
    lda #$00
    ora #$80
    sta $1cca,y
    jsl sub_7f2baa
    lda #$01
    sta $002d,y
    lda $0021,y
    ora #$01
    sta $0021,y
    rep #$20
.a16
    lda #$a279
    sta $0019,y
    sep #$20
.a8
    lda #$03
    sta $001b,y
    rep #$20
.a16
    lda $000e,y
    sec
    sbc $1486
    sta $000e,y
    sep #$20

loc_03a26a:
.a8
    jsl sub_7f2aa4
    jsl sub_7f33d6
    lda $25,x
    ora #$08
    sta $25,x
    rtl

loc_03a279:
    ldy $12c3
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    phx
    tyx
    ply
    and #$f0
    cmp #$10
    beq loc_03a293
    jml loc_03a2b1

loc_03a293:
    rep #$20
.a16
    lda $1e1c
    asl a
    eor #$ffff
    inc a
    clc
    adc $0c,x
    sta $0c,x
    lda $1e20
    asl a
    eor #$ffff
    inc a
    clc
    adc $10,x
    sta $10,x
    sep #$20

loc_03a2b1:
.a8
    inc $0a,x
    lda $0a,x
    cmp $000b,x
    bmi loc_03a2be
    jml loc_03a2d8

loc_03a2be:
    lda $1cca,x
    clc
    adc #$01
    bmi loc_03a2c9
    clc
    adc #$08

loc_03a2c9:
    and #$7f
    cmp #$08
    bcc loc_03a2d2
    sec
    sbc #$08

loc_03a2d2:
    ora #$80
    sta $1cca,x
    rtl

loc_03a2d8:
    lda $20,x
    and #$10
    bne loc_03a2e2
    jml loc_03a316

loc_03a2e2:
    lda $20,x
    ora #$10
    sta $20,x
    lda #$00
    sta $17,x
    lda #$00
    sta $13,x
    lda #$00
    sta $15,x
    lda $20,x
    and #$f7
    sta $20,x
    rep #$20
.a16
    lda #$a30b
    sta $19,x
    sep #$20
.a8
    lda #$03
    sta $1b,x
    lda #$40
    sta $0a,x
    lda $0a,x
    bne loc_03a313
    jml loc_03a316

loc_03a313:
    dec $0a,x
    rtl

loc_03a316:
    jml loc_03a31a

loc_03a31a:
    lda $23,x
    ora #$02
    sta $23,x
    lda $25,x
    ora #$08
    sta $25,x
    rtl

loc_03a327:
    lda $25,x
    and #$10
    beq loc_03a331
    jml loc_03a44c

loc_03a331:
    ldy $1e,x
    bne loc_03a339
    jml loc_03a44c

loc_03a339:
    sty $cf2d
    rep #$20
.a16
    lda $0004,y
    tay
    sep #$20
.a8
    bne loc_03a349
    brl loc_03a43c

loc_03a349:
    lda $24,x
    and #$08
    beq loc_03a353
    jml loc_03a359

loc_03a353:
    lda $20,x
    ora #$02
    sta $20,x

loc_03a359:
    lda $0031,y
    and #$80
    cmp #$80
    beq loc_03a366
    jml loc_03a398

loc_03a366:
    lda $0031,y
    and #$08
    cmp #$08
    beq loc_03a373
    jml loc_03a38c

loc_03a373:
    lda $0023,y
    and #$40
    beq loc_03a37e
    jml loc_03a386

loc_03a37e:
    lda $26,x
    ora #$02
    sta $26,x
    bra loc_03a38c

loc_03a386:
    lda $26,x
    ora #$04
    sta $26,x

loc_03a38c:
    lda $31,x
    and #$80
    cmp #$80
    bne loc_03a398
    jml loc_03a43c

loc_03a398:
    lda $002e,y
    sta $cf2f
    lda $0031,y
    and #$01
    cmp #$01
    beq loc_03a3ab
    jml loc_03a3ae

loc_03a3ab:
    stz $cf2f

loc_03a3ae:
    phy
    ldy $cf2d
    lda $0009,y
    and #$02
    beq loc_03a3fb
    lda $0009,y
    and #$fd
    sta $0009,y
    lda $26,x
    and #$01
    bne loc_03a3cb
    jml loc_03a3d1

loc_03a3cb:
    lda $22,x
    ora #$02
    sta $22,x

loc_03a3d1:
    lda #$06
    jsl sub_7f233b
    cpy #$0000
    bne loc_03a3e0
    jml loc_03a3fb

loc_03a3e0:
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
    lda #$03
    pha
    pea $a42c
    jml [$12cf]

loc_03a3fb:
    ply
    phy
    lda #$05
    jsl sub_7f233b
    cpy #$0000
    bne loc_03a40c
    jml loc_03a42d

loc_03a40c:
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
    lda $000a,y
    sta $cf30
    lda #$03
    pha
    pea $a42c
    jml [$12cf]

loc_03a42d:
    ply
    lda $2d,x
    sec
    sbc $cf2f
    sta $2d,x
    bpl loc_03a43c
    lda #$00
    sta $2d,x

loc_03a43c:
    ldy $cf2d
    rep #$20
.a16
    lda $0000,y
    tay
    sep #$20
.a8
    beq loc_03a44c
    brl loc_03a339

loc_03a44c:
    lda $26,x
    and #$08
    beq loc_03a456
    jml loc_03a466

loc_03a456:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    bne loc_03a465
    jmp loc_03a466

loc_03a465:
    rtl

loc_03a466:
    jml loc_7f2b8f
    .db $bd,$ca,$1c,$18,$69,$01,$30,$03,$18,$69,$08,$29,$7f,$c9,$08,$90
    .db $0b,$a9,$08,$3a,$09,$80,$9d,$ca,$1c,$4c,$8c,$a4,$09,$80,$9d,$ca
    .db $1c,$6b,$b5,$25,$09,$08,$95,$25,$6b,$8e,$97,$16,$8d,$2f,$19,$ae
    .db $9b,$16,$8e,$cc,$16,$ae,$cc,$18,$8e,$ce,$16,$8b,$a9,$7e,$48,$ab
    .db $ae,$8a,$16,$8e,$1e,$6a,$ae,$8c,$16,$8e,$20,$6a,$ae,$ad,$16,$8e
    .db $5f,$6a,$a2,$2c,$00,$bd,$5d,$16,$9d,$22,$6a,$ca,$10,$f7,$a2,$07
    .db $00,$bd,$a5,$16,$9d,$4f,$6a,$bd,$9d,$16,$9d,$57,$6a,$ca,$10,$f1
    .db $ab,$6b

sub_03a4dc:
    php
    phb
    sep #$20
    lda #$00
    pha
    plb
    sei
    sep #$20
    rep #$10
    lda $192f
    sta $192e
    ldx $1697
    stx $1657
    phb
    lda #$7e
    pha
    plb
    ldx $6a1e
    stx $168a
    ldx $6a20
    stx $168c
    ldx $6a5f
    stx $16ad
    ldx #$002c

loc_03a50f:
    lda $6a22,x
    sta $165d,x
    dex
    bpl loc_03a50f
    ldx #$0007

loc_03a51b:
    lda $6a4f,x
    sta $16a5,x
    lda $6a57,x
    sta $169d,x
    dex
    bpl loc_03a51b
    plb
    jsl sub_038325
    jsl sub_03dd6f
    jsl sub_7f1118
    jsl sub_03a627
    lda #$32
    sta $1524
    rep #$20
.a16
    lda $16cc
    jsl sub_039d4e
    jsl sub_039857
    sep #$20
.a8
    lda #$01
    sta $f3
    stz $f4
    plb
    plp
    lda $004211
    cli
    rtl

sub_03a55d:
    rep #$20
.a16
    stz $181f
    stz $1821
    stz $1823
    stz $18b0
    lda #$0000
    sta $7001ac
    sep #$20
.a8
    rep #$10
    phb
    lda #$7e
    pha
    plb
    ldx $12a8
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_03a591
    jml loc_03a5b3

loc_03a591:
    sty $14d6
    lda $0009,y
    and #$f7
    sta $0009,y
    lda $0022,y
    and #$fb
    sta $0022,y
    lda $0022,y
    ora #$40
    sta $0022,y
    lda #$ff
    sta $1cf0,y
    bra loc_03a5b7

loc_03a5b3:
    jsl sub_008006

loc_03a5b7:
    sty $12c3
    sty $12c5
    ldx $12a8

loc_03a5c0:
    stz $12d6
    jsl sub_7f3596
    lda $12d6
    bne loc_03a5d3
    ldy $00,x

loc_03a5ce:
    tyx
    bne loc_03a5c0
    bra loc_03a5db

loc_03a5d3:
    ldy $00,x
    jsl sub_7f3356
    bra loc_03a5ce

loc_03a5db:
    jsl sub_03a603
    ldx $12c3
    beq loc_03a5f0
    lda $22,x
    and #$fb
    sta $22,x
    lda $22,x
    ora #$40
    sta $22,x

loc_03a5f0:
    ldx $12c5
    beq loc_03a601
    lda $22,x
    and #$fb
    sta $22,x
    lda $22,x
    ora #$40
    sta $22,x

loc_03a601:
    plb
    rtl

sub_03a603:
    php
    phb
    sep #$20
    lda #$7e
    pha
    plb
    rep #$30
.a16
    lda #$319a
    sta $1281
    ldy #$003c

loc_03a616:
    tax
    clc
    adc #$000b
    sta $0000,x
    dey
    bne loc_03a616
    stz $0000,x
    plb
    plp
.a8
    rtl

sub_03a627:
    sep #$20
    rtl

sub_03a62a:
    phy
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_03a63e
    jml loc_03a6a3

loc_03a63e:
    lda $0020,y
    ora #$10
    sta $0020,y
    lda #$07
    sta $0017,y
    lda #$1e
    sta $0013,y
    lda #$1e
    sta $0015,y
    lda $0020,y
    and #$f7
    sta $0020,y
    lda $0026,y
    ora #$08
    sta $0026,y
    lda $0024,y
    ora #$04
    sta $0024,y
    lda $0026,y
    ora #$10
    sta $0026,y
    lda #$02
    sta $000b,y
    lda $0021,y
    ora #$01
    sta $0021,y
    rep #$20
.a16
    lda #$a279
    sta $0019,y
    sep #$20
.a8
    lda #$03
    sta $001b,y
    jsl sub_7f2baa
    rep #$20
.a16
    lda $000e,y
    sec
    sbc $1486
    sta $000e,y
    sep #$20

loc_03a6a3:
.a8
    ply
    rts

sub_03a6a5:
    php
    phy
    phx
    sep #$20
    rep #$10
    ldx $12a8
    beq loc_03a6de

loc_03a6b1:
    ldy $00,x
    lda $31,x
    and #$50
    cmp #$50
    bne loc_03a6bf
    jml loc_03a6cb

loc_03a6bf:
    lda $31,x
    and #$08
    cmp #$08
    beq loc_03a6cb
    jml loc_03a6db

loc_03a6cb:
    lda $26,x
    ora #$08
    sta $26,x
    lda $21,x
    ora #$01
    sta $21,x
    lda #$00
    sta $2d,x

loc_03a6db:
    tyx
    bne loc_03a6b1

loc_03a6de:
    plx
    ply
    plp
    rtl
    .db $85,$85,$86,$7d,$84,$7f,$64,$08,$64,$09,$38,$a9,$40,$f5,$14,$aa
    .db $e2,$10,$8b,$a9,$00,$48,$ab,$e8,$bd,$26,$8e,$85,$81,$bd,$66,$8e
    .db $85,$82,$a5,$85,$30,$15,$0a,$8d,$02,$42,$a5,$81,$30,$2f,$8d,$03
    .db $42,$ea,$ea,$ea,$ea,$ad,$17,$42,$4c,$4d,$a7,$49,$ff,$1a,$0a,$8d
    .db $02,$42,$a5,$81,$30,$07,$8d,$03,$42,$ea,$4c,$47,$a7,$49,$ff,$1a
    .db $8d,$03,$42,$ea,$ea,$ea,$ea,$ad,$17,$42,$4c,$4d,$a7,$49,$ff,$1a
    .db $8d,$03,$42,$ea,$ea,$a9,$00,$38,$ed,$17,$42,$aa,$a2,$00,$85,$02
    .db $c9,$00,$10,$01,$ca,$86,$03,$a5,$85,$30,$15,$0a,$8d,$02,$42,$a5
    .db $82,$30,$2f,$8d,$03,$42,$ea,$ea,$ea,$ea,$ad,$17,$42,$4c,$a2,$a7
    .db $49,$ff,$1a,$0a,$8d,$02,$42,$a5,$82,$30,$07,$8d,$03,$42,$ea,$4c
    .db $9c,$a7,$49,$ff,$1a,$8d,$03,$42,$ea,$ea,$ea,$ea,$ad,$17,$42,$4c
    .db $a2,$a7,$49,$ff,$1a,$8d,$03,$42,$ea,$ea,$a9,$00,$38,$ed,$17,$42
    .db $aa,$a2,$00,$85,$97,$c9,$00,$10,$01,$ca,$86,$98,$c2,$10,$a6,$7d
    .db $a4,$7f,$ab,$6b,$85,$85,$86,$7d,$84,$7f,$64,$08,$64,$09,$b5,$14
    .db $aa,$e2,$10,$8b,$a9,$00,$48,$ab,$e8,$bd,$26,$8e,$85,$81,$bd,$66
    .db $8e,$85,$82,$a5,$85,$30,$15,$0a,$8d,$02,$42,$a5,$81,$30,$2f,$8d
    .db $03,$42,$ea,$ea,$ea,$ea,$ad,$17,$42,$4c,$1e,$a8,$49,$ff,$1a,$0a
    .db $8d,$02,$42,$a5,$81,$30,$07,$8d,$03,$42,$ea,$4c,$18,$a8,$49,$ff
    .db $1a,$8d,$03,$42,$ea,$ea,$ea,$ea,$ad,$17,$42,$4c,$1e,$a8,$49,$ff
    .db $1a,$8d,$03,$42,$ea,$ea,$a9,$00,$38,$ed,$17,$42,$aa,$a2,$00,$85
    .db $02,$c9,$00,$10,$01,$ca,$86,$03,$a5,$85,$30,$15,$0a,$8d,$02,$42
    .db $a5,$82,$30,$2f,$8d,$03,$42,$ea,$ea,$ea,$ea,$ad,$17,$42,$4c,$73
    .db $a8,$49,$ff,$1a,$0a,$8d,$02,$42,$a5,$82,$30,$07,$8d,$03,$42,$ea
    .db $4c,$6d,$a8,$49,$ff,$1a,$8d,$03,$42,$ea,$ea,$ea,$ea,$ad,$17,$42
    .db $4c,$73,$a8,$49,$ff,$1a,$8d,$03,$42,$ea,$ea,$a9,$00,$38,$ed,$17
    .db $42,$aa,$a2,$00,$85,$97,$c9,$00,$10,$01,$ca,$86,$98,$c2,$10,$a6
    .db $7d,$a4,$7f,$ab,$6b,$08,$ac,$a8,$12,$64,$5f,$bb,$d5,$04,$d0,$02
    .db $e6,$5f,$b4,$00,$d0,$f5,$a5,$5f,$28,$6b

sub_03a89c:
    stx $3a
    sep #$30
.i8
    sta $5f
    asl a
    clc
    adc $5f
    tax
    lda $03a8c3,x
    pha
    rep #$20
.a16
    lda $03a8c1,x
    dec a
    pha
    sep #$20
.a8
    rep #$10
.i16
    ldx $3a
    rtl
    .incbin "data/01a8bb-01ab1d.bin"

sub_03ab1d:
    lda #$02
    sta $0009,y
    lda $0031,y
    ora #$02
    sta $0031,y
    jsl sub_7f2bd2
    lda #$00
    sta $0016,y
    lda $14b0
    sta $02
    sta $04
    bit #$80
    beq loc_03ab44
    lda #$ff
    sta $05
    bra loc_03ab46

loc_03ab44:
    stz $05

loc_03ab46:
    lda $14b2
    sta $08
    sta $0a
    bit #$80
    beq loc_03ab57
    lda #$ff
    sta $0b
    bra loc_03ab59

loc_03ab57:
    stz $0b

loc_03ab59:
    lda $14b4
    sta $97
    sta $e4
    bit #$80
    beq loc_03ab6a
    lda #$ff
    sta $e5
    bra loc_03ab6c

loc_03ab6a:
    stz $e5

loc_03ab6c:
    lda $16,x
    jsl sub_7f3bf0
    lda $04
    sta $02
    lda $0a
    sta $08
    lda $e4
    sta $97
    lda $12,x
    jsl Rotate2D
    lda $04
    sta $02
    lda $0a
    sta $08
    lda $e4
    sta $97
    lda $14,x
    jsl sub_7f38a9
    rep #$20
.a16
    lda $04
    asl a
    asl a
    sta $04
    lda $0a
    asl a
    asl a
    sta $0a
    lda $e4
    asl a
    asl a
    sta $e4
    lda $04
    clc
    adc $000c,x
    sta $000c,y
    lda $e4
    clc
    adc $0010,x
    sta $0010,y
    lda $0a
    clc
    adc $000e,x
    sta $000e,y
    sep #$20
.a8
    phx
    ldx $14b8
    beq loc_03abfc
    rep #$20
.a16
    lda $0c,x
    sta $04
    lda $0e,x
    sta $0a
    lda $10,x
    sta $e4
    sep #$20
.a8
    phx
    tyx
    ply
    jsl sub_7f21c3
    clc
    adc $14b7
    sta $12,x
    jsl sub_7f21eb
    eor #$ff
    inc a
    clc
    adc $14b6
    sta $14,x
    phx
    tyx
    ply
    bra loc_03ac10

loc_03abfc:
    lda $0012,y
    clc
    adc $14b7
    sta $0012,y
    lda $0014,y
    clc
    adc $14b6
    sta $0014,y

loc_03ac10:
    plx
    lda $0012,y
    sta $0013,y
    lda $0014,y
    sta $0015,y
    lda $18,x
    sta $0017,y
    stx $1c,y
    sty $1c,x
    rtl
    .db $c2,$20,$a9,$7c,$bd,$85,$5f,$e2,$20,$22,$17,$2a,$7f,$b0,$04,$5c
    .db $80,$ac,$03,$c2,$20,$a9,$6a,$a4,$99,$19,$00,$e2,$20,$a9,$03,$99
    .db $1b,$00,$b9,$24,$00,$09,$04,$99,$24,$00,$b9,$21,$00,$09,$01,$99
    .db $21,$00,$a9,$00,$09,$80,$99,$ca,$1c,$a9,$ff,$99,$2d,$00,$a9,$08
    .db $99,$2e,$00,$b9,$20,$00,$09,$20,$99,$20,$00,$a9,$00,$99,$c8,$1c
    .db $a9,$00,$99,$da,$1c,$22,$aa,$2b,$7f,$6b,$08,$ae,$a8,$12,$f0,$1a
    .db $bc,$00,$00,$b5,$22,$29,$04,$d0,$04,$5c,$9e,$ac,$03,$22,$d6,$33
    .db $7f,$b5,$25,$09,$08,$95,$25,$bb,$d0,$e6,$ae,$85,$12,$f0,$34,$c2
    .db $20,$bc,$02,$00,$d0,$0e,$bc,$00,$00,$8c,$85,$12,$a9,$00,$00,$99
    .db $02,$00,$80,$12,$da,$bd,$00,$00,$aa,$99,$00,$00,$c9,$00,$00,$f0
    .db $04,$98,$9d,$02,$00,$fa,$ad,$83,$12,$9d,$00,$00,$8e,$83,$12,$e2
    .db $20,$80,$c7,$28,$6b

CopyRamOverlays:
.a16
    php
    sep #$20
.a8
    rep #$10
    ldx #$004a

loc_03ace4:
    lda $03ad0d,x
    sta loc_000101,x
    dex
    bpl loc_03ace4
    ldx #$7dff

loc_03acf2:
    lda $028000,x
    sta $7f0000,x
    dex
    bpl loc_03acf2
    ldx #$4dff

loc_03ad00:
    lda $0a8000,x
    sta loc_7f7e00,x
    dex
    bpl loc_03ad00
    plp
.a16
    rtl

.base $000101

loc_000101:
    jsl sub_00801c
    jsl sub_00801c
    brl $0130

IrqHandler:
.a8
.i8
    nop
    rep #$30
.a16
.i16
    pha
    lda $003030
    bmi loc_00012e
    phb
    sei
    phx
    phy
    sep #$30
.a8
.i8
    lda #$00
    pha
    plb
    jsl sub_7f0098
    sep #$20
    inc $1291
    lda TIMEUP
    bra loc_000145

loc_00012e:
.a16
.i16
    pla
    rti

loc_000130:
    rep #$30
    pha
    phb
    phx
    phy
    sep #$20
.a8
    lda #$00
    pha
    plb
    jsl sub_03ebc6
    sep #$20
    lda RDNMI

loc_000145:
.i8
    rep #$30
.a16
.i16
    ply
    plx
    plb
    pla
    rti
.endbase

sub_03ad58:
.i8
    php
    sep #$20
.a8
    rep #$10
.i16
    sei
    stz NMITIMEN
    stz $00
    lda TIMEUP
    rep #$20
.a16
    lda $003030
    lda #$000e
    sta $1b4b
    sep #$20
.a8
    lda $1914
    cmp #$80
    beq loc_03ad87
    cmp #$c0
    beq loc_03ad83
    lda #$05
    bra loc_03ad89

loc_03ad83:
    lda #$21
    bra loc_03ad89

loc_03ad87:
    lda #$01

loc_03ad89:
    sta $5e
    jsl sub_0387ac
    stz CGADD
    stz VMADDL
    stz VMADDH
    lda #$80
    sta INIDISP
    sta VMAIN
    rep #$20
.a16
    lda #$0000
    ldx #$7f00

loc_03ada8:
    sta VMDATAL
    dex
    bne loc_03ada8
    sep #$20
.a8
    rep #$10
    jsl sub_03af8b
    ldx $1b34
    stx $4a
    ldx $1b36
    stx $4c
    ldx #$4000
    stx $44
    rep #$20
.a16
    txa
    sta $700014
    sep #$20
.a8
    ldx #$a000
    stx $46
    lda $45
    lsr a
    lsr a
    sta GSU_SCBR
    lda $1b3b
    and #$f0
    sta $02
    lda $4b
    lsr a
    lsr a
    lsr a
    lsr a
    ora $02
    sta BG12NBA
    lda $1aa7
    bit #$08
    beq loc_03ae06
    lda #$0d
    sta $02
    lda $1b39
    sta BG2SC
    lda $1b3d
    inc a
    sta BG1SC
    bra loc_03ae29

loc_03ae06:
    lda $1b68
    cmp #$02
    bne loc_03ae13
    lda #$0d
    sta $02
    bra loc_03ae17

loc_03ae13:
    lda #$0f
    sta $02

loc_03ae17:
    lda $1b39
    sta BG1SC
    lda $1b3d
    bra loc_03ae26
    .db $ad,$3d,$1b,$1a

loc_03ae26:
    sta BG2SC

loc_03ae29:
    lda $1b3f
    lsr a
    lsr a
    lsr a
    lsr a
    sta BG34NBA
    lda #$00
    sta $1a89
    lda $1b43
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    sta OBSEL
    lda $1b45
    and #$fc
    sta BG3SC
    sta $1c56
    lda $1b44
    lsr a
    lsr a
    and #$f8
    sta BG3VOFS
    stz BG3VOFS
    lda $1b44
    rol a
    rol a
    rol a
    and #$f8
    sta BG3HOFS
    stz BG3HOFS
    lda #$01
    jsl sub_038556
    stz W12SEL
    stz W34SEL
    stz WOBJSEL
    stz WBGLOG
    stz WOBJLOG
    stz TMW
    stz TSW
    stz WH0
    stz WH1
    stz TS
    jsl sub_038795
    lda #$42
    sta DMAP2
    lda $02
    inc a
    sta BBAD2
    ldx #$0033
    stx A1TL2
    lda #$7f
    sta A1B2
    sta DASB2
    lda #$42
    sta DMAP3
    lda $02
    sta BBAD3
    ldx #$004a
    stx A1TL3
    lda #$7f
    sta A1B3
    sta DASB3
    lda $1aa6
    bit #$02
    bne loc_03aed5
    ldx #$003d
    stx A1TL2
    ldx #$0054
    stx A1TL3

loc_03aed5:
    lda #$02
    sta DMAP4
    lda #$12
    sta BBAD4
    ldx #$0072
    stx A1TL4
    lda #$7f
    sta A1B4
    stz DASB4
    lda #$41
    sta DMAP5
    lda #$26
    sta BBAD5
    ldx #$0012
    stx A1TL5
    lda #$7f
    sta A1B5
    lda #$7e
    sta DASB5
    lda $1aa6
    bit #$02
    bne loc_03af14
    ldx #$001f
    stx A1TL5

loc_03af14:
    lda $1b68
    cmp #$00
    beq loc_03af38
    lda $1b68
    cmp #$07
    beq loc_03af3c
    lda $1b68
    cmp #$02
    beq loc_03af3c
    lda $1aa6
    bit #$20
    bne loc_03af40
    bit #$01
    bne loc_03af44
    lda #$3c
    bra loc_03af46

loc_03af38:
    lda #$2c
    bra loc_03af46

loc_03af3c:
    lda #$2c
    bra loc_03af46

loc_03af40:
    lda #$00
    bra loc_03af46

loc_03af44:
    lda #$3c

loc_03af46:
    sta $129b
    jsl sub_048001
    ldx #$00d0
    stx VTIMEL
    ldx #$0000
    stx HTIMEL
    lda #$80
    jsl sub_038784
    sta INIDISP
    lda #$be
    sta $163e
    jsl sub_038f57
    sep #$20
    rep #$10
    lda #$64
    sta $163e
    jsl sub_038f57
    sep #$20
    rep #$10
    lda RDNMI
    lda #$31
    sta NMITIMEN
    plp
.a16
.i8
    lda $004211
    cli
    rtl

sub_03af8b:
.a8
.i16
    php
    sep #$20
    rep #$10
    lda #$80
    sta VMAIN
    lda $1aa6
    bit #$04
    bne loc_03af9f
    brl loc_03b037

loc_03af9f:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda $1aa1
    and #$00ff
    sta $70006a
    lda $1a9f
    sta $700068
    sep #$20
.a8
    jsl sub_03d60a
    sep #$20
    rep #$10
    sep #$20
    lda #$01
    ldx #$d528
    jsl sub_7f787b
    sep #$20
    rep #$10
    ldx $1b38
    lda #$80
    sta VMAIN
    lda #$18
    sta BBAD0
    stx VMADDL
    ldx #$3b50
    stx A1TL0
    lda #$70
    sta A1B0
    ldx #$0800
    stx DASL0
    lda #$01
    sta DMAP0
    lda #$01
    sta MDMAEN
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda $1aa4
    and #$00ff
    sta $70006a
    lda $1aa2
    sta $700068
    sep #$20
.a8
    jsl sub_03d60a
    phy
    phx
    pha
    rep #$30
.a16
    ldx #$3b50
    ldy #$cc00
    lda #$27ff
    phb
    mvn $70,$7f
    plb
    sep #$20
.a8
    rep #$10
    pla
    plx
    ply

loc_03b037:
    sep #$20
    sep #$20
    lda #$01
    ldx #$d571
    jsl sub_7f787b
    sep #$20
    rep #$10
    rep #$20
.a16
    lda $1b38
    ldx #$3b50
    jsr sub_03b0a6
    lda $1aa7
    bit #$0004
    bne loc_03b0a4
    lda $1928
    asl a
    asl a
    asl a
    asl a
    sta $02
    lda $1aa6
    bit #$0001
    beq loc_03b06e
    asl $02

loc_03b06e:
    lda $02
    clc
    adc $1b34
    sta VMADDL
    lda $1aa7
    bit #$0020
    beq loc_03b084
    lda #$0000
    bra loc_03b087

loc_03b084:
    lda #$ffff

loc_03b087:
    ldx #$0010

loc_03b08a:
    sta VMDATAL
    dex
    bne loc_03b08a
    pha
    lda $02
    clc
    adc $1b36
    sta VMADDL
    pla
    ldx #$0010

loc_03b09e:
    sta VMDATAL
    dex
    bne loc_03b09e

loc_03b0a4:
    plp
.a8
    rtl

sub_03b0a6:
.a16
    sta VMADDL
    ldy #$0400

loc_03b0ac:
    lda $700000,x
    cmp #$ffff
    beq loc_03b0ba
    sta VMDATAL
    bra loc_03b0bd

loc_03b0ba:
    lda VMDATALREAD

loc_03b0bd:
    inx
    inx
    dey
    bne loc_03b0ac
    rts

sub_03b0c3:
.a8
    php
    sep #$20
    rep #$10
    ldx #$033f
    rep #$20
.a16
    lda #$0000
    sta $0a
    lda $14,x
    sta $08
    asl $08
    rol $0a
    asl $08
    rol $0a
    lda $09
    sta $193c
    lda $1e4e
    clc
    adc $193c
    sta $193c
    plp
.a8
    rtl

sub_03b0ef:
    php
    sep #$20
    lda $1aa6
    and #$04
    bne loc_03b0fc
    brl loc_03b19a

loc_03b0fc:
    lda $001a87
    beq loc_03b105
    brl loc_03b19a

loc_03b105:
    lda #$01
    sta $001a87
    lda $001aa6
    bit #$01
    bne loc_03b116
    brl loc_03b116

loc_03b116:
    rep #$30
.a16
    lda #$4000
    sta $e4

loc_03b11d:
    phb
    rep #$30
    ldx #$cc00
    lda $001916
    asl a
    asl a
    clc
    adc $e4
    tay
    lda $001916
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    sta $02
    lda $001914
    asl a
    asl a
    sta $0a
    lda $001914
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    sta $08
    sec
    sbc $02
    sta $04
    asl a
    asl a
    asl a
    asl a
    asl a
    sta $97
    lda #$0000

loc_03b168:
    pha
    phx
    phy
    lda $97
    mvn $7f,$70
    ply
    plx
    txa
    clc
    adc $97
    tax
    tya
    clc
    adc $0a
    tay
    pla
    clc
    adc $04
    cmp #$0140
    bcc loc_03b168
    plb
    lda $1aa6
    bit #$0001
    bne loc_03b19a
    lda #$a000
    cmp $e4
    beq loc_03b19a
    sta $e4
    brl loc_03b11d

loc_03b19a:
.a8
    plp
    rtl
    .db $60

sub_03b19d:
    php
    jsr sub_03b1a3
    plp
    rtl

sub_03b1a3:
    sep #$30
.i8
    ldx $1aa5
    jmp (tbl_03b1ab,x)

tbl_03b1ab:
    .db $db,$b2,$6a,$b3,$9a,$b4,$2f,$b5,$be,$b5,$4d,$b6,$bd,$b1,$4c,$b2
    .db $0b,$b4

loc_03b1bd:
    rep #$30
.a16
.i16
    lda #$00c0
    sta $1916
    dec a
    sta $30
    inc a
    cmp #$8000
    ror a
    sta $d2
    stz $2c
    stz $2a
    lda #$00c0
    sta $1914
    lda #$00e0
    sta $1918
    dec a
    sta $2e
    inc a
    cmp #$8000
    ror a
    sta $d0
    lda #$2492
    sta $18ea
    lda #$2aaa
    sta $18ec
    lda #$02a0
    sta $1928
    lda #$0002
    sta $191a
    lda #$0002
    sta $191e
    lda #$3c00
    sta $1922
    lda #$2000
    sta $1926
    lda #$0000
    sta $1b34
    lda #$3000
    sta $1b36
    lda #$2c00
    sta $1b38
    lda #$7000
    sta $1b3a
    lda #$5c00
    sta $1b3c
    lda #$6400
    sta $1b42
    lda #$2f80
    sta $1b44
    lda #$2fc0
    sta $1b46
    lda #$0802
    sta $1aa6
    jmp loc_03b6e5

loc_03b24c:
.a8
.i8
    rep #$30
.a16
.i16
    lda #$00c0
    sta $1916
    dec a
    sta $30
    inc a
    cmp #$8000
    ror a
    sta $d2
    stz $2c
    stz $2a
    lda #$00c0
    sta $1914
    lda #$00e0
    sta $1918
    dec a
    sta $2e
    inc a
    cmp #$8000
    ror a
    sta $d0
    lda #$2492
    sta $18ea
    lda #$2aaa
    sta $18ec
    lda #$02a0
    sta $1928
    lda #$0002
    sta $191a
    lda #$0002
    sta $191e
    lda #$3c00
    sta $1922
    lda #$2000
    sta $1926
    lda #$0000
    sta $1b34
    lda #$3000
    sta $1b36
    lda #$2c00
    sta $1b38
    lda #$7000
    sta $1b3a
    lda #$5c00
    sta $1b3c
    lda #$6400
    sta $1b42
    lda #$2f80
    sta $1b44
    lda #$2fc0
    sta $1b46
    lda #$044a
    sta $1aa6
    jmp loc_03b6e5

loc_03b2db:
.a8
.i8
    rep #$30
.a16
.i16
    lda #$00c0
    sta $1916
    dec a
    sta $30
    inc a
    cmp #$8000
    ror a
    sta $d2
    stz $2c
    stz $2a
    lda #$00c0
    sta $1914
    lda #$00e0
    sta $1918
    dec a
    sta $2e
    inc a
    cmp #$8000
    ror a
    sta $d0
    lda #$2492
    sta $18ea
    lda #$2aaa
    sta $18ec
    lda #$02a0
    sta $1928
    lda #$0002
    sta $191a
    lda #$0002
    sta $191e
    lda #$3c00
    sta $1922
    lda #$2000
    sta $1926
    lda #$0000
    sta $1b34
    lda #$3000
    sta $1b36
    lda #$2c00
    sta $1b38
    lda #$7000
    sta $1b3a
    lda #$5c00
    sta $1b3c
    lda #$6400
    sta $1b42
    lda #$2f80
    sta $1b44
    lda #$2fc0
    sta $1b46
    lda #$0802
    sta $1aa6
    jmp loc_03b6e5

loc_03b36a:
.a8
.i8
    rep #$30
.a16
.i16
    lda #$0060
    sta $1916
    dec a
    sta $30
    inc a
    cmp #$8000
    ror a
    sta $d2
    stz $2c
    stz $2a
    lda #$0080
    sta $1914
    lda #$00b0
    sta $1918
    dec a
    sta $2e
    inc a
    cmp #$8000
    ror a
    sta $d0
    lda #$2e8b
    sta $18ea
    lda #$5555
    sta $18ec
    lda #$0160
    sta $1928
    lda #$0002
    sta $191a
    lda #$0002
    sta $191e
    lda #$0008
    sta $191c
    lda #$000f
    sta $1920
    lda #$1c00
    sta $1922
    lda #$3c00
    sta $1926
    lda #$1c00
    sta $1924
    lda #$0000
    sta $1b34
    lda #$3000
    sta $1b36
    lda #$2c00
    sta $1b38
    lda #$7000
    sta $1b3a
    lda #$5c00
    sta $1b3c
    lda #$6400
    sta $1b42
    lda #$2f80
    sta $1b44
    lda #$2fc0
    sta $1b46
    lda #$0505
    sta $1aa6
    jmp loc_03b6e5

loc_03b40b:
.a8
.i8
    rep #$30
.a16
.i16
    lda #$00c0
    sta $1916
    dec a
    sta $30
    inc a
    cmp #$8000
    ror a
    sta $d2
    stz $2c
    stz $2a
    lda #$00c0
    sta $1914
    lda #$00e0
    sta $1918
    dec a
    sta $2e
    inc a
    cmp #$8000
    ror a
    sta $d0
    lda #$2492
    sta $18ea
    lda #$2aaa
    sta $18ec
    lda #$02a0
    sta $1928
    lda #$0002
    sta $191a
    lda #$0002
    sta $191e
    lda #$3c00
    sta $1922
    lda #$2000
    sta $1926
    lda #$0000
    sta $1b34
    lda #$3000
    sta $1b36
    lda #$2c00
    sta $1b38
    lda #$7000
    sta $1b3a
    lda #$5c00
    sta $1b3c
    lda #$6400
    sta $1b42
    lda #$2f80
    sta $1b44
    lda #$2fc0
    sta $1b46
    lda #$1882
    sta $1aa6
    jmp loc_03b6e5

loc_03b49a:
.a8
.i8
    rep #$30
.a16
.i16
    lda #$0080
    sta $1916
    dec a
    sta $30
    inc a
    cmp #$8000
    ror a
    sta $d2
    stz $2c
    stz $2a
    lda #$0080
    sta $1914
    lda #$00b0
    sta $1918
    dec a
    sta $2e
    inc a
    cmp #$8000
    ror a
    sta $d0
    lda #$2e8b
    sta $18ea
    lda #$4000
    sta $18ec
    lda #$0160
    sta $1928
    lda #$0005
    sta $191a
    lda #$0002
    sta $191e
    lda #$0400
    sta $1922
    lda #$3c00
    sta $1926
    lda #$0c00
    sta $1924
    lda #$0000
    sta $1b34
    lda #$3000
    sta $1b36
    lda #$2c00
    sta $1b38
    lda #$7000
    sta $1b3a
    lda #$5c00
    sta $1b3c
    lda #$6400
    sta $1b42
    lda #$2f80
    sta $1b44
    lda #$2fc0
    sta $1b46
    lda #$0020
    sta $1aa6
    jmp loc_03b6e5

loc_03b52f:
.a8
.i8
    rep #$30
.a16
.i16
    lda #$0060
    sta $1916
    dec a
    sta $30
    inc a
    cmp #$8000
    ror a
    sta $d2
    stz $2c
    stz $2a
    lda #$00c0
    sta $1914
    lda #$00e0
    sta $1918
    dec a
    sta $2e
    inc a
    cmp #$8000
    ror a
    sta $d0
    lda #$2492
    sta $18ea
    lda #$5555
    sta $18ec
    lda #$02a0
    sta $1928
    lda #$0002
    sta $191a
    lda #$0004
    sta $191e
    lda #$1c00
    sta $1922
    lda #$0000
    sta $1926
    lda #$0000
    sta $1b34
    lda #$3000
    sta $1b36
    lda #$2c00
    sta $1b38
    lda #$7000
    sta $1b3a
    lda #$5c00
    sta $1b3c
    lda #$6400
    sta $1b42
    lda #$2f80
    sta $1b44
    lda #$2fc0
    sta $1b46
    lda #$00ca
    sta $1aa6
    jmp loc_03b6e5

loc_03b5be:
.a8
.i8
    rep #$30
.a16
.i16
    lda #$00c0
    sta $1916
    dec a
    sta $30
    inc a
    cmp #$8000
    ror a
    sta $d2
    stz $2c
    stz $2a
    lda #$00c0
    sta $1914
    lda #$00e0
    sta $1918
    dec a
    sta $2e
    inc a
    cmp #$8000
    ror a
    sta $d0
    lda #$2492
    sta $18ea
    lda #$2aaa
    sta $18ec
    lda #$02a0
    sta $1928
    lda #$0002
    sta $191a
    lda #$0002
    sta $191e
    lda #$3c00
    sta $1922
    lda #$2000
    sta $1926
    lda #$0000
    sta $1b34
    lda #$3000
    sta $1b36
    lda #$2c00
    sta $1b38
    lda #$7000
    sta $1b3a
    lda #$5c00
    sta $1b3c
    lda #$6400
    sta $1b42
    lda #$2f80
    sta $1b44
    lda #$2fc0
    sta $1b46
    lda #$0a02
    sta $1aa6
    jmp loc_03b6e5

loc_03b64d:
.a8
.i8
    rep #$30
.a16
.i16
    lda #$00c0
    sta $1916
    dec a
    sta $30
    inc a
    cmp #$8000
    ror a
    sta $d2
    stz $2c
    stz $2a
    lda #$00c0
    sta $1914
    lda #$00e0
    sta $1918
    dec a
    sta $2e
    inc a
    cmp #$8000
    ror a
    sta $d0
    lda #$2492
    sta $18ea
    lda #$2aaa
    sta $18ec
    lda #$02a0
    sta $1928
    lda #$0002
    sta $191a
    lda #$0002
    sta $191e
    lda #$02a0
    sta $1928
    lda #$1c00
    sta $1922
    lda #$0000
    sta $1926
    lda #$0000
    sta $1b34
    lda #$3000
    sta $1b36
    lda #$2c00
    sta $1b38
    lda #$6000
    sta $1b3a
    lda #$5c00
    sta $1b3c
    lda #$7000
    sta $1b3e
    lda #$6400
    sta $1b42
    lda #$7800
    sta $1b44
    sta $1b40
    lda #$204a
    sta $1aa6
    jmp loc_03b6e5

loc_03b6e5:
    rep #$20
    lda $1914
    sta $7024c4
    lda $1916
    sta $7024c2
    lda $1918
    sta $7024c6
    lda $191a
    sta $7024ca
    lda $191c
    sta $7024cc
    lda $191e
    sta $7024ce
    lda $1920
    sta $7024d0
    lda $1922
    sta $7024d2
    lda $1924
    sta $7024d4
    lda $1926
    sta $7024d6
    lda $1928
    sta $7024d8
    lda $1aa6
    sta $7024c8
    sep #$20
.a8
    rts

MainLoop:    ; game mode loop: calls the handler ModeHandlerTable[$1b68 * 4] until the mode changes; entered from MainInit (code)
.i8
    pha
    phx
    phy
    phb
    php
    sep #$20
    rep #$10
.i16
    phb
    pha
    lda #$00
    pha
    plb
    stz HDMAEN
    stz $129b
    sei
    rep #$20
.a16
    lda #$0004
    trb $1b84
    sep #$20
.a8
    stz $00

loc_03b760:
    lda HVBJOY
    bit #$80
    bne loc_03b760

loc_03b767:
    lda HVBJOY
    bit #$80
    beq loc_03b767
    lda #$8f
    sta INIDISP
    sta $f4
    pla
    plb
    lda #$04
    sta $1b68
    lda #$04
    sta $1b76
    lda #$04
    sta $1b6a

loc_03b786:
    lda $1b68
    cmp #$10
    beq loc_03b7aa
    jsl sub_03b7bf
    jsr sub_03b841
    rep #$20
.a16
    lda $1b68
    asl a
    asl a
    tax
    lda $03b875,x
    sta $1b6e
    sep #$20
.a8
    jsr (ModeHandlerTable,x)
    bra loc_03b786

loc_03b7aa:
    plp
    plb
    ply
    plx
    pla
    rtl

loc_03b7b0:
    php
    sep #$20
    lda $5e
    bit #$18
    beq loc_03b7bd
    jsl sub_008027

loc_03b7bd:
    plp
    rtl

sub_03b7bf:
    php
    sep #$20
    rep #$10
    rep #$30
.a16
    stz $1bc0
    ldx #$1bc0
    ldy #$1bc1
    lda #$001d
    phb
    mvn $00,$00
    plb
    sep #$20
.a8
    rep #$10
    rep #$30
.a16
    stz $1be0
    ldx #$1be0
    ldy #$1be1
    lda #$001d
    phb
    mvn $00,$00
    plb
    sep #$20
.a8
    rep #$10
    rep #$30
.a16
    stz $1c1f
    ldx #$1c1f
    ldy #$1c20
    lda #$000f
    phb
    mvn $00,$00
    plb
    sep #$20
.a8
    rep #$10
    rep #$30
.a16
    lda #$0000
    sta $7ed978
    ldx #$d978
    ldy #$d979
    lda #$002d
    phb
    mvn $7e,$7e
    plb
    sep #$20
.a8
    rep #$10
    rep #$30
.a16
    lda #$0000
    sta $7ed9a8
    ldx #$d9a8
    ldy #$d9a9
    lda #$003d
    phb
    mvn $7e,$7e
    plb
    sep #$20
.a8
    rep #$10
    plp
    rtl

sub_03b841:
    rep #$20
.a16
    lda #$0004
    trb $1b96
    stz $1296
    stz $1298
    stz $1aa6
    lda #$0000
    sta $1b78
    rep #$20
    stz $142c
    stz $142e
    stz $1608
    stz $160a
    lda #$0004
    trb $1c67
    rep #$20
    rep #$10
    sep #$20
.a8
    rts

ModeHandlerTable:    ; 16 entries of 4 bytes indexed by the game mode $1b68, word 0 the handler: mode 1 (battle) 03b90e, 7 (map) 03be22 (code)
    .db $b7,$b8,$00,$00,$0e,$b9,$8d,$02,$2d,$bc,$54,$00,$d5,$bb,$84,$01
    .db $82,$bc,$8d,$02,$d5,$bb,$5a,$02,$4c,$be,$11,$00,$22,$be,$25,$00
    .db $51,$be,$92,$01,$65,$be,$b0,$01,$56,$be,$a5,$01,$51,$be,$9d,$01
    .db $27,$be,$43,$00,$11,$be,$8d,$02,$16,$be,$8d,$02,$1b,$be,$8d,$02
    .db $1c,$be,$8d,$02

loc_03b8b7:
    rep #$20
.a16
    lda #$0001
    trb $1b84
    lda #$0008
    trb $1b84
    lda #$0002
    tsb $1b9c
    sep #$20
.a8
    lda #$0c
    sta $1aa5
    lda #$01
    sta $1b9e
    lda #$01
    sta $1ba2
    lda #$05
    ldx #$0035
    sta $192e
    stx $1657
    lda $1d1e
    sta $1c1f
    lda #$02
    sta $1c23
    jsl sub_0b8c17
    jsl sub_0b8c3d
    rep #$20
.a16
    sta $1c6e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0002
    tsb $1c67
    sep #$20
.a8
    brl loc_03be74

loc_03b90e:
    lda #$00
    sta $1aa5
    lda #$04
    sta $1b9e
    lda #$02
    sta $1ba2
    rep #$20
.a16
    lda #$0001
    trb $1b84
    lda #$0010
    tsb $1b86
    lda #$0002
    tsb $1b9c
    lda #$0004
    tsb $1b9c
    lda #$0008
    tsb $1b9c
    sep #$20
.a8
    lda #$08
    tsb $1cb8
    rep #$20
.a16
    sep #$20
.a8
    lda #$00
    sta $7ed7d8
    jsl sub_0b8c17
    jsl sub_0b8c66
    rep #$20
.a16
    sta $1c6e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0002
    tsb $1c67
    sep #$20
.a8
    rep #$20
.a16
    lda $1b8a
    bit #$0080
    beq loc_03b977
    lda #$4000
    tsb $1b96

loc_03b977:
    lda $1b86
    bit #$0020
    beq loc_03b997
    lda #$4000
    tsb $1b96
    lda #$0001
    sta $7ed7f4
    lda $7ed7f2
    sta $1ba5
    jsl sub_04b1c0

loc_03b997:
    sep #$20
.a8
    lda $1bb5
    inc a
    sta $1bb7
    rep #$20
.a16
    lda $7eda5b
    sta $7eda5d
    lda #$0001
    trb $1b88
    lda $1bb5
    cmp #$0006
    bmi loc_03b9be
    lda #$0001
    tsb $1b88

loc_03b9be:
    sep #$20
.a8
    ldx $1bb5
    lda $03ba4f,x
    sta $1bb8
    rep #$20
.a16
    txa
    asl a
    asl a
    tax
    lda $03ba19,x
    sta $1b6e
    lda $1bb5
    cmp #$0007
    bne loc_03ba0e
    lda $1ba5
    cmp #$0008
    beq loc_03b9ff
    cmp #$000a
    beq loc_03b9f7
    cmp #$000b
    bne loc_03ba0e
    lda #$2000
    tsb $1b96

loc_03b9f7:
    lda #$0173
    sta $1b6e
    bra loc_03ba0e

loc_03b9ff:
    lda $7ee087
    bit #$0400
    beq loc_03ba0e
    lda #$0162
    sta $1b6e

loc_03ba0e:
    sep #$20
.a8
    jsl sub_03e312
    jmp (tbl_03ba17,x)

tbl_03ba17:
    .db $5d,$ba,$62,$00,$7b,$ba,$76,$00,$9f,$ba,$8a,$00,$bd,$ba,$9e,$00
    .db $e1,$ba,$b2,$00,$03,$bb,$c3,$00,$8d,$bb,$15,$01,$a5,$bb,$29,$01
    .db $bd,$bb,$3d,$01,$8d,$bb,$51,$01,$21,$bb,$d4,$00,$3f,$bb,$e2,$00
    .db $57,$bb,$f9,$00,$75,$bb,$07,$01,$03,$04,$05,$01,$00,$02,$00,$00
    .db $00,$00,$00,$00,$00,$00

loc_03ba5d:
    lda #$05
    ldx #$00e8
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    lda #$0008
    tsb $1b9c
    sep #$20
.a8
    jmp loc_03be74

loc_03ba7b:
    lda #$05
    ldx #$12a8
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    lda #$0200
    tsb $1b9c
    lda #$0008
    tsb $1b9c
    sep #$20
.a8
    jmp loc_03be74

loc_03ba9f:
    lda #$05
    ldx #$2213
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    lda #$0008
    tsb $1b9c
    sep #$20
.a8
    jmp loc_03be74

loc_03babd:
    lda #$05
    ldx #$2bc6
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    lda #$0008
    tsb $1b9c
    lda #$0200
    tsb $1b9c
    sep #$20
.a8
    jmp loc_03be74

loc_03bae1:
    lda #$05
    ldx #$3d99
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    sep #$20
.a8
    rep #$20
.a16
    lda #$0008
    tsb $1b9c
    sep #$20
.a8
    jmp loc_03be74

loc_03bb03:
    lda #$05
    ldx #$489e
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    lda #$0008
    tsb $1b9c
    sep #$20
.a8
    jmp loc_03be74

loc_03bb21:
    lda #$05
    ldx #$52ae
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    lda #$0200
    tsb $1b9c
    sep #$20
.a8
    jmp loc_03be74

loc_03bb3f:
    lda #$05
    ldx #$53bb
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    sep #$20
.a8
    jmp loc_03be74

loc_03bb57:
    lda #$05
    ldx #$5f69
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    lda #$0008
    tsb $1b9c
    sep #$20
.a8
    jmp loc_03be74
    .db $a9,$05,$a2,$69,$5f,$8d,$2e,$19,$8e,$57,$16,$c2,$20,$a9,$00,$02
    .db $1c,$84,$1b,$e2,$20,$4c,$74,$be

loc_03bb8d:
    lda #$05
    ldx #$5f69
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    sep #$20
.a8
    jmp loc_03be74

loc_03bba5:
    lda #$05
    ldx #$6995
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    sep #$20
.a8
    jmp loc_03be74

loc_03bbbd:
    lda #$05
    ldx #$6d62
    sta $192e
    stx $1657
    rep #$20
.a16
    lda #$0200
    trb $1b84
    sep #$20
.a8
    jmp loc_03be74

loc_03bbd5:
    lda #$05
    ldx #$00a7
    sta $192e
    stx $1657
    stz $1aa6
    lda #$00
    sta $1b78
    rep #$20
.a16
    lda #$0000
    sta $1b74
    sep #$20
.a8
    rep #$20
.a16
    lda #$0002
    tsb $1b9c
    lda #$0004
    tsb $1b9c
    sep #$20
.a8
    lda #$0c
    sta $1aa5
    lda #$07
    sta $1b9e
    lda #$06
    sta $1ba2
    jsl sub_0b8c17
    jsl sub_0b8c33
    rep #$20
.a16
    sta $1c6e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0002
    tsb $1c67
    sep #$20
.a8
    jmp loc_03be74

loc_03bc2d:
    lda #$0a
    sta $1aa5
    lda #$03
    sta $1b9e
    lda #$04
    sta $1ba2
    rep #$20
.a16
    lda #$0200
    tsb $1b84
    lda #$0002
    tsb $1b96
    lda #$0002
    tsb $1b9c
    sep #$20
.a8
    lda #$08
    tsb $1cb8
    rep #$20
.a16
    sep #$20
.a8
    lda #$05
    ldx #$0076
    sta $192e
    stx $1657
    jsl sub_0b8c17
    jsl sub_0b8c5c
    rep #$20
.a16
    sta $1c6e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0002
    tsb $1c67
    sep #$20
.a8
    jmp loc_03be74

loc_03bc82:
    ldx $1b76
    rep #$20
.a16
    lda $03bc95,x
    sta $1b6e
    sep #$20
.a8
    jmp (tbl_03bc93,x)

tbl_03bc93:
    .db $1c,$be,$8d,$02,$bf,$bc,$b5,$01,$d7,$bc,$c3,$01,$65,$bd,$c5,$01
    .db $ea,$bc,$c7,$01,$14,$bd,$cf,$01,$78,$bd,$da,$01,$fd,$bc,$dc,$01
    .db $3f,$bd,$fe,$01,$8b,$bd,$00,$02,$52,$bd,$02,$02

loc_03bcbf:
    lda #$00
    sta $1b6a
    lda #$20
    tsb $1cd3
    lda #$05
    ldx #$7be7
    sta $192e
    stx $1657
    brl loc_03bd9e

loc_03bcd7:
    lda #$07
    sta $1b6a
    lda #$05
    ldx #$7c2e
    sta $192e
    stx $1657
    brl loc_03bd9e

loc_03bcea:
    lda #$07
    sta $1b6a
    lda #$05
    ldx #$7cbd
    sta $192e
    stx $1657
    brl loc_03bd9e

loc_03bcfd:
    lda #$08
    sta $1b6a
    lda #$05
    ldx #$7d6b
    sta $192e
    stx $1657
    jsl sub_0df6a2
    brl loc_03bd9e

loc_03bd14:
    lda #$05
    ldx #$7cf7
    sta $192e
    stx $1657
    lda #$08
    sta $1b6a
    lda #$04
    sta $1b9e
    lda #$02
    sta $1ba2
    rep #$20
.a16
    lda #$0200
    tsb $1b84
    sep #$20
.a8
    jsl sub_0b8c17
    brl loc_03bd9e

loc_03bd3f:
    lda #$07
    sta $1b6a
    lda #$05
    ldx #$7dac
    sta $192e
    stx $1657
    brl loc_03bd9e

loc_03bd52:
    lda #$07
    sta $1b6a
    lda #$05
    ldx #$7e36
    sta $192e
    stx $1657
    brl loc_03bd9e
    .db $a9,$07,$8d,$6a,$1b,$a9,$05,$a2,$83,$7c,$8d,$2e,$19,$8e,$57,$16
    .db $82,$26,$00,$a9,$07,$8d,$6a,$1b,$a9,$05,$a2,$31,$7d,$8d,$2e,$19
    .db $8e,$57,$16,$82,$13,$00,$a9,$07,$8d,$6a,$1b,$a9,$05,$a2,$fc,$7d
    .db $8d,$2e,$19,$8e,$57,$16,$82,$00,$00

loc_03bd9e:
    lda #$10
    sta $1aa5
    lda #$00
    sta $1b9e
    lda #$00
    sta $1ba2
    lda $1b76
    cmp #$14
    bne loc_03bdb9
    lda #$07
    sta $1b9e

loc_03bdb9:
    rep #$20
.a16
    lda #$0002
    tsb $1b9c
    sep #$20
.a8
    lda #$08
    tsb $1cb8
    rep #$20
.a16
    lda #$0004
    tsb $1b9c
    sep #$20
.a8
    lda $1b76
    cmp #$1c
    beq loc_03bdf5
    jsl sub_0b8c17
    jsl sub_0b8c33
    rep #$20
.a16
    sta $1c6e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0002
    tsb $1c67
    sep #$20
.a8
    brl loc_03be74

loc_03bdf5:
    jsl sub_0b8c17
    jsl sub_0b8c7a
    rep #$20
.a16
    sta $1c6e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0002
    tsb $1c67
    sep #$20
.a8
    brl loc_03be74
    .db $22,$32,$f8,$0d,$60,$22,$c9,$f9,$0d,$60,$60

loc_03be1c:
    lda #$10
    sta $1b68
    rts

loc_03be22:
    jsl sub_04ae4f
    rts

loc_03be27:
    lda #$00
    sta $7ed7f2
    lda #$00
    sta $001ba3
    rep #$20
.a16
    lda #$0080
    trb $1b86
    sep #$20
.a8
    rep #$20
.a16
    lda #$0001
    tsb $1b86
    sep #$20
.a8
    jsl sub_04ae4f
    rts

loc_03be4c:
    jsl sub_04f937
    rts

loc_03be51:
    jsl sub_0df118
    rts

loc_03be56:
    rep #$20
.a16
    lda #$0002
    trb $1b82
    sep #$20
.a8
    jsl sub_0df2b4
    rts

loc_03be65:
    rep #$20
.a16
    lda #$0002
    tsb $1b82
    sep #$20
.a8
    jsl sub_0df2b4
    rts

loc_03be74:
    jsl sub_03e1e5
    jsl sub_04edb5
    ldx #$f40a
    stx $1cc7
    ldx #$f40e
    stx $1cca
    lda #$01
    tsb $1cc9
    lda #$01
    tsb $1ccc
    jsl sub_038325
    rep #$20
.a16
    lda #$0001
    trb $1c67
    sep #$20
.a8
    jsl sub_7f1118
    rep #$20
.a16
    lda $1c67
    eor #$0001
    sta $1c67
    sep #$20
.a8
    lda $004211
    cli

loc_03beb6:
    rep #$20
.a16
    lda $1b70
    and #$00ff
    asl a
    tax
    sep #$20
.a8
    jsr (tbl_03becb,x)

loc_03bec5:
    lda $00
    bne loc_03bec5
    bra loc_03beb6

tbl_03becb:
    .db $d3,$be,$82,$c1,$94,$bf,$78,$c1

loc_03bed3:
    lda $00
    bne loc_03bed3
    phb
    pha
    lda #$00
    pha
    plb
    stz HDMAEN
    stz $129b
    sei
    rep #$20
.a16
    lda #$0004
    trb $1b84
    sep #$20
.a8
    stz $00

loc_03bef0:
    lda HVBJOY
    bit #$80
    bne loc_03bef0

loc_03bef7:
    lda HVBJOY
    bit #$80
    beq loc_03bef7
    lda #$8f
    sta INIDISP
    sta $f4
    pla
    plb
    jsl sub_049cad
    jsr sub_03bf71
    rep #$20
.a16
    stz $142c
    stz $142e
    stz $1608
    stz $160a
    lda #$0004
    trb $1c67
    sep #$20
.a8
    rep #$10
    jsl sub_04edb5
    jsl sub_0babf5
    jsl sub_04fd8c
    jsl sub_04fd9f
    rep #$20
.a16
    lda #$0002
    trb $1b84
    lda #$ffff
    trb $1b9c
    sep #$20
.a8
    lda #$ff
    trb $1cb8
    rep #$20
.a16
    lda #$ffff
    trb $1c67
    sep #$20
.a8
    lda #$ff
    trb $1cd3
    rep #$20
.a16
    lda #$ffff
    trb $1b9a
    jsl sub_0bf02b
    lda $1b6a
    sta $1b68
    sep #$20
.a8
    pla
    pla
    rts

sub_03bf71:
    rep #$20
.a16
    ldx #$033f
    lda #$0000
    sta $00000c,x
    sta $00000e,x
    sta $000010,x
    sta $000012,x
    sta $000014,x
    sta $000016,x
    sep #$20
.a8
    rts

loc_03bf94:
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda #$0002
    jsl QueueSound
    sep #$20
.a8
    stz $1c20
    lda #$03
    sta $1c24
    lda $f542
    sta $1c1f
    lda #$02
    sta $1c23
    lda $1de1
    bit #$80
    beq loc_03bfc2
    jml loc_03bfc7

loc_03bfc2:
    lda #$02
    sta $1c24

loc_03bfc7:
    rep #$20
.a16
    ldy #$e83f
    jsl sub_049d3c
    ldy #$ea5f
    jsl sub_049d3c
    sep #$20
.a8
    rep #$20
.a16
    lda #$0400
    tsb $1b96
    sep #$20

loc_03bfe3:
.a8
    lda #$1e
    sta $00

loc_03bfe7:
    lda $00
    bne loc_03bfe7
    rep #$20
.a16
    lda $1b86
    bit #$0020
    sep #$20
.a8
    bne loc_03c043
    rep #$20
.a16
    lda $1b96
    bit #$2000
    sep #$20
.a8
    bne loc_03c043
    jsl sub_03ee04
    lda $1297
    bit #$90
    beq loc_03c011
    brl loc_03c0ad

loc_03c011:
    lda $1c20
    cmp #$02
    beq loc_03c01b
    brl loc_03c09e

loc_03c01b:
    jsl sub_03ee08
    lda $1c28
    bit #$01
    bne loc_03c060
    lda $1297
    bit #$80
    beq loc_03c060
    lda $1c1f
    inc a
    and #$01
    sta $1c1f
    rep #$20
.a16
    lda #$0003
    jsl QueueSound
    sep #$20
.a8
    bra loc_03c060

loc_03c043:
    lda $1297
    bit #$10
    bne loc_03c0ad
    lda $1de1
    bit #$80
    bne loc_03c055
    jml loc_03c09e

loc_03c055:
    jsl sub_03ee08
    lda $1c28
    bit #$01
    beq loc_03c09e

loc_03c060:
    lda $1c1f
    sta $f542
    bne loc_03c084
    lda $1dce
    and #$ff
    bne loc_03c078
    lda $1de0
    and #$7f
    ora #$20
    bra loc_03c07f

loc_03c078:
    lda $1de0
    and #$bf
    ora #$20

loc_03c07f:
    sta $1de0
    bra loc_03c09e

loc_03c084:
    lda $1dce
    and #$ff
    bne loc_03c094
    lda $1de0
    and #$7f
    ora #$a0
    bra loc_03c09b

loc_03c094:
    lda $1de0
    and #$bf
    ora #$60

loc_03c09b:
    sta $1de0

loc_03c09e:
    jsl sub_048301
    jsl sub_0b8c21
    jsl sub_7f1118
    brl loc_03bfe3

loc_03c0ad:
    rep #$20
.a16
    lda #$0020
    trb $1b84
    lda #$1000
    trb $1b96
    stz $d9b7
    jsl sub_0bf017
    lda $1b96
    bit #$0080
    beq loc_03c0cd
    brl loc_03c135

loc_03c0cd:
    lda #$0004
    jsl QueueSound
    lda $1c20
    and #$00ff
    beq loc_03c135
    dec a
    bne loc_03c135
    lda $1b84
    bit #$0008
    bne loc_03c0ef
    lda #$0007
    sta $1b6a
    bra loc_03c0f9

loc_03c0ef:
    jsl sub_06a3b0
    lda #$000d
    sta $1b6a

loc_03c0f9:
    lda #$4000
    trb $1b88
    lda #$0002
    trb $1b88
    lda #$ffff
    trb $1b96
    lda #$0000
    sta $1b70
    lda #$0000
    sta $1b78
    lda #$ffff
    trb $1c0e
    sep #$20
.a8
    lda #$0f
    sta $f4
    lda #$ff
    sta $f3

loc_03c127:
    lda #$18
    sta $00

loc_03c12b:
    lda $00
    bne loc_03c12b
    lda $f4
    bne loc_03c127
    plb
    rts

loc_03c135:
.a16
    lda $1b72
    sta $1b70
    lda $1ba0
    sta $1b9e
    sep #$20
.a8
    jsl sub_0b8c75
    rep #$20
.a16
    lda #$0001
    jsl QueueSound
    sep #$20
.a8
    rep #$20
.a16
    ldy #$e83f
    jsl sub_049d3c
    ldy #$ea5f
    jsl sub_049d3c
    sep #$20
.a8
    rep #$20
.a16
    lda #$0400
    tsb $1b96
    sep #$20
.a8
    lda #$1e
    sta $00

loc_03c172:
    lda $00
    bne loc_03c172
    plb
    rts

loc_03c178:
    jsr sub_03e394
    lda $1b72
    sta $1b70
    rts

loc_03c182:
    jsl sub_03dd81
    jsl sub_0b8c21
    jsl GameTick
    jsl sub_03c193
    rts

sub_03c193:
    ldx #$ffff
    stx $1cf4
    jsl sub_03c79d
    jsl sub_03c7a0
    rep #$20
.a16
    lda $1b68
    asl a
    tax
    sep #$20
.a8
    jsr (tbl_03c1ae,x)
    rtl

tbl_03c1ae:
    .db $8d,$c2,$00,$c5,$7d,$c4,$b9,$c1,$dc,$c1,$60

loc_03c1b9:
    jsl sub_03e0fc
    bcc loc_03c1db
    rep #$20
.a16
    lda #$ffff
    trb $1b96
    lda #$0000
    sta $1b70
    lda #$0000
    sta $1b78
    lda #$ffff
    trb $1c0e
    sep #$20

loc_03c1db:
.a8
    rts

loc_03c1dc:
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $1c67
    bit #$0020
    bne loc_03c26a
    lda $1c6e
    beq loc_03c1f6
    dec $1c6e
    brl loc_03c27e

loc_03c1f6:
    lda $1b96
    bit #$0010
    bne loc_03c246
    lda $1b76
    cmp #$0014
    beq loc_03c27e
    cmp #$0028
    beq loc_03c27e
    cmp #$001c
    bne loc_03c22f
    lda $1b96
    bit #$0020
    beq loc_03c27e
    lda $1296
    bit #$1000
    beq loc_03c27e
    lda #$0042
    jsl QueueSound
    lda #$0010
    tsb $1b96
    bra loc_03c27e

loc_03c22f:
    lda $1296
    bit #$9000
    beq loc_03c27e
    lda #$0010
    tsb $1b96
    lda #$000e
    jsl QueueSound
    bra loc_03c27e

loc_03c246:
    lda #$0020
    tsb $1c67
    lda $1b76
    lsr a
    lsr a
    tax
    sep #$20
.a8
    lda $03c282,x
    sta $f4
    rep #$20
.a16
    lda $1b84
    bit #$0008
    beq loc_03c26a
    lda #$000d
    sta $1b6a

loc_03c26a:
    jsl sub_03e0fc
.a8
    rep #$20
.a16
    bcc loc_03c27e
    lda #$ffff
    trb $1b96
    lda #$0000
    sta $1b70

loc_03c27e:
    sep #$20
.a8
    plb
    rts
    .db $0a,$08,$08,$08,$08,$0f,$08,$0f,$08,$08,$08

loc_03c28d:
    rep #$20
.a16
    lda $1c67
    bit #$0002
    sep #$20
.a8
    beq loc_03c29c
    brl loc_03c416

loc_03c29c:
    rep #$20
.a16
    lda $1c67
    bit #$0004
    sep #$20
.a8
    beq loc_03c2ab
    brl loc_03c41d

loc_03c2ab:
    jsr sub_03c470
    bcs loc_03c328
    lda $1be4
    bne loc_03c329
    lda $1be0
    beq loc_03c30f
    jsl sub_03ee04
    lda $1be0
    dec a
    bne loc_03c300
    lda $1c20
    cmp #$02
    bne loc_03c300
    jsl sub_03ee08
    lda $1c28
    bit #$01
    bne loc_03c2f6
    rep #$20
.a16
    lda $1296
    bit #$9000
    sep #$20
.a8
    beq loc_03c300
    rep #$20
.a16
    lda #$0003
    jsl QueueSound
    sep #$20
.a8
    lda $1c1f
    inc a
    and #$01
    sta $1c1f

loc_03c2f6:
    lda $1c1f
    sta $1d1e
    jsl sub_03e3ea

loc_03c300:
    rep #$20
.a16
    lda $1296
    bit #$4040
    sep #$20
.a8
    beq loc_03c30f
    brl loc_03c43f

loc_03c30f:
    lda $1be0
    dec a
    bne loc_03c31c
    lda $1c20
    cmp #$02
    beq loc_03c328

loc_03c31c:
    rep #$20
.a16
    lda $1296
    bit #$9000
    sep #$20
.a8
    bne loc_03c339

loc_03c328:
    rts

loc_03c329:
    stz $1be4
    lda #$04
    sta $1b76
    lda #$04
    sta $1b6a
    brl loc_03c3fa

loc_03c339:
    rep #$20
.a16
    lda #$0004
    jsl QueueSound
    sep #$20
.a8
    lda #$00
    xba
    lda $1be0
    asl a
    tax
    jmp (tbl_03c34f,x)

tbl_03c34f:
    .db $55,$c3,$71,$c3,$b8,$c3

loc_03c355:
    inc $1be0
    ldx #$0002
    stx $1faa
    ldx #$000f
    stx $1c0c
    lda #$03
    sta $1c24
    lda #$02
    sta $1c23
    brl loc_03c328

loc_03c371:
    sep #$10
.i8
    ldx $1c20
    lda $03c468,x
    rep #$10
.i16
    cmp #$ff
    bne loc_03c383
    brl loc_03c328

loc_03c383:
    sta $1b6a
    lda $1c20
    dec a
    beq loc_03c3fa
    rep #$20
.a16
    jsl sub_7f058c
    sta $1c02
    sep #$20
.a8
    lda $1c20
    sta $1be2
    stz $1c20
    lda #$02
    sta $1c24
    lda $703916
    bit #$10
    beq loc_03c3b2
    lda #$03
    sta $1c24

loc_03c3b2:
    inc $1be0
    brl loc_03c328

loc_03c3b8:
    lda $1be2
    bne loc_03c3e4
    rep #$20
.a16
    lda $1c20
    and #$00ff
    sta $7ed7f2
    asl a
    sta $001ba3
    lda #$0001
    trb $1b82
    lda #$0008
    sta $1b76
    lda #$0004
    sta $1b6a
    sep #$20
.a8
    bra loc_03c3fa

loc_03c3e4:
    rep #$20
.a16
    lda $1c20
    and #$00ff
    tax
    lda $03c46d,x
    and #$00ff
    sta $001bb5
    sep #$20

loc_03c3fa:
.a8
    jsl sub_0b8c17
    jsl sub_0b8c42
    rep #$20
.a16
    sta $1c6e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0004
    tsb $1c67
    sep #$20
.a8
    brl loc_03c328

loc_03c416:
    jsl sub_03e085
    brl loc_03c328

loc_03c41d:
    jsl sub_03e0bb
    rep #$20
.a16
    lda $1c67
    bit #$0004
    sep #$20
.a8
    bne loc_03c43c
    lda #$00
    sta $1b70
    rep #$20
.a16
    lda #$ffff
    trb $1b9c
    sep #$20

loc_03c43c:
.a8
    brl loc_03c328

loc_03c43f:
    lda $1be0
    bne loc_03c447
    brl loc_03c328

loc_03c447:
    dec a
    bne loc_03c44d
    brl loc_03c328

loc_03c44d:
    lda #$01
    sta $1be0
    stz $1c20
    lda #$03
    sta $1c24
    rep #$20
.a16
    lda #$0008
    jsl QueueSound
    sep #$20
.a8
    brl loc_03c328
    .db $04,$0a,$ff,$0d,$0c,$00,$01,$02

sub_03c470:
    ldx $1c0c
    beq loc_03c47b
    dex
    stx $1c0c
    sec
    rts

loc_03c47b:
    clc
    rts

loc_03c47d:
    php
    rep #$20
.a16
    lda $1c67
    bit #$0002
    sep #$20
.a8
    beq loc_03c48d
    brl loc_03c4d2

loc_03c48d:
    rep #$20
.a16
    lda $1c67
    bit #$0004
    sep #$20
.a8
    beq loc_03c49c
    brl loc_03c4d9

loc_03c49c:
    lda $1be0
    bne loc_03c4a4
    brl loc_03c4fe

loc_03c4a4:
    lda #$01
    sta $1b6a
    rep #$20
.a16
    lda #$0004
    tsb $1c67
    sep #$20
.a8
    jsl sub_0b8c17
    jsl sub_0b8c61
    rep #$20
.a16
    sta $1c6e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0004
    tsb $1c67
    sep #$20
.a8
    lda #$08
    sta $f4
    bra loc_03c4fe

loc_03c4d2:
    jsl sub_03e085
    brl loc_03c4fe

loc_03c4d9:
    jsl sub_03e0bb
    rep #$20
.a16
    lda $1c67
    bit #$0004
    sep #$20
.a8
    beq loc_03c4ec
    brl loc_03c4fe

loc_03c4ec:
    stz $1c14
    lda #$00
    sta $1b70
    rep #$20
.a16
    lda #$ffff
    trb $1b96
    sep #$20

loc_03c4fe:
.a8
    plp
    rts

loc_03c500:
    jsl CheckPause
    jsl sub_03c509
    rts

sub_03c509:
    phb
    lda #$7e
    pha
    plb
    jsr LoadPilotScore
    rep #$20
.a16
    lda $1c67
    bit #$0020
    beq loc_03c51e
    brl loc_03c6b2

loc_03c51e:
    lda $1c67
    bit #$0004
    beq loc_03c529
    brl loc_03c6a8

loc_03c529:
    lda $1b78
    asl a
    tax
    jmp (tbl_03c531,x)

tbl_03c531:
    .db $41,$c5,$e1,$c5,$1f,$c6,$50,$c6,$92,$c6,$78,$c6,$ef,$c5,$3c,$c6

loc_03c541:
    lda $1b84
    bit #$0012
    beq loc_03c54c
    brl loc_03c6e0

loc_03c54c:
    lda $1d72
    and #$00ff
    beq loc_03c557
    brl loc_03c6e0

loc_03c557:
    lda $d7f4
    and #$00ff
    bne loc_03c562
    brl loc_03c6e0

loc_03c562:
    lda $f532
    beq loc_03c56a
    brl loc_03c6e0

loc_03c56a:
    lda $1b88
    bit #$0100
    beq loc_03c584
    lda #$0003
    sta $1b78
    lda #$0030
    tsb $1b84
    lda #$0200
    tsb $1b8a

loc_03c584:
    lda #$0008
    trb $1b96
    dec $da67
    bne loc_03c59b
    lda #$0004
    sta $da67
    lda #$0008
    tsb $1b96

loc_03c59b:
    jsl DamageCorneria
    lda $1b96
    bit #$8000
    bne loc_03c5cf
    inc $da63
    dec $da61
    bne loc_03c5cf
    lda $1c0a
    cmp #$0063
    beq loc_03c5d2
    stz $da63
    lda #$00f0
    sta $da61
    inc $1c0a
    lda $da5b
    cmp #$03e7
    beq loc_03c5cf
    inc a
    sta $da5b

loc_03c5cf:
    brl loc_03c6e0

loc_03c5d2:
    lda #$00ef
    sta $da63
    lda #$8000
    tsb $1b96
    brl loc_03c6e0

loc_03c5e1:
    dec $1b7c
    bne loc_03c5ec
    lda $1b7a
    sta $1b78

loc_03c5ec:
    brl loc_03c6e0

loc_03c5ef:
    lda #$0800
    tsb $1b96
    lda #$0010
    tsb $1b84
    lda #$0007
    sta $1b7a
    lda #$003c
    sta $1b7c
    lda #$0004
    sta $1fd2
    lda #$0001
    sta $1b78
    sep #$20
.a8
    lda #$08
    tsb $1cd3
    rep #$20
.a16
    brl loc_03c6e0

loc_03c61f:
    lda #$0002
    trb $1b88
    lda #$0004
    tsb $1b86
    lda #$0003
    sta $1b6a
    sep #$20
.a8
    lda #$80
    tsb $d810
    rep #$20
.a16
    bra loc_03c6a0

loc_03c63c:
    lda #$4000
    tsb $1b88
    lda #$0002
    trb $1b88
    lda #$0007
    sta $1b6a
    bra loc_03c6a0

loc_03c650:
    lda #$0008
    jsl sub_7f6df8
    lda #$00f1
    jsl QueueSound
    lda #$0014
    sta $1b76
    lda #$0004
    sta $1b6a
    lda #$0008
    tsb $1b86
    lda #$0004
    tsb $1c67
    bra loc_03c6a8

loc_03c678:
    lda #$0200
    tsb $1b86
    lda #$2000
    tsb $1b86
    lda #$001c
    sta $1b76
    lda #$0004
    sta $1b6a
    bra loc_03c6a0

loc_03c692:
    lda #$0007
    sta $1b6a
    lda #$0002
    tsb $1b88
    bra loc_03c6a0

loc_03c6a0:
    lda #$0020
    tsb $1c67
    bra loc_03c6b2

loc_03c6a8:
    jsl sub_03e154
.a8
    rep #$20
.a16
    bcc loc_03c6e0
    bra loc_03c6ba

loc_03c6b2:
    jsl sub_03e0fc
.a8
    rep #$20
.a16
    bcc loc_03c6e0

loc_03c6ba:
    lda $1b84
    bit #$0008
    beq loc_03c6c8
    lda #$000d
    sta $1b6a

loc_03c6c8:
    lda #$ffff
    trb $1b96
    lda #$0000
    sta $1b70
    lda #$0000
    sta $1b78
    lda #$ffff
    trb $1c0e

loc_03c6e0:
    sep #$20
.a8
    plb
    rtl

LoadPilotScore:    ; copies the pilot record's score ($6c33,y) to $d816 (watch: $d816 written at 03:C6FC every tick; $d816 is the HUD score)
    php
    phb
    sep #$20
    lda #$7e
    pha
    plb
    ldy $12c3
    rep #$20
.a16
    lda $002b,y
    tay
    sep #$20
.a8
    rep #$20
.a16
    lda $6c33,y
    sta $d816
    sep #$20
.a8
    lda $6c35,y
    sta $d818
    plb
    plp
    rts

CheckPause:    ; Start press ($1296 bit $1000) while targets remain sets pause bit $20 of $1b84 (watch: written at 03:C735 on a Start tap in the first battle; screenshot: CONTINUE BATTLE / RETURN TO MAP menu)
    rep #$20
.a16
    lda $1b84
    bit #$0032
    beq loc_03c717
    brl loc_03c762

loc_03c717:
    lda $7ed7f4
    bne loc_03c720
    brl loc_03c762

loc_03c720:
    lda $1b84
    bit #$0001
    bne loc_03c765
    lda $1296
    bit #$1000
    beq loc_03c762
    bra loc_03c732

loc_03c732:
    lda #$0020
    tsb $1b84
    lda #$1000
    tsb $1b96
    jsl sub_0b8c70
.a8
    jsl sub_0bc05a
    sep #$20
    lda $1b70
    sta $1b72
    lda $1b9e
    sta $1ba0
    lda #$02
    sta $1b70
    lda #$06
    sta $1b9e

loc_03c75e:
    pla
    pla
    pla
    rts

loc_03c762:
.a16
    sep #$20
.a8
    rtl

loc_03c765:
.a16
    lda $1296
    bit #$1000
    beq loc_03c775
    lda #$0010
    tsb $1b98
    bra loc_03c783

loc_03c775:
    lda $1298
    bit #$1000
    beq loc_03c762
    lda #$0020
    tsb $1b98

loc_03c783:
    sep #$20
.a8
    lda $1b70
    sta $1b72
    lda $1b9e
    sta $1ba0
    lda #$02
    sta $1b70
    lda #$0f
    sta $1b9e
    bra loc_03c75e

sub_03c79d:
    rtl
    .db $60,$60

sub_03c7a0:
    pha
    phx
    phy
    phb
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    plp
    plb
    ply
    plx
    pla
    rtl
    lda #$00
    sta $17f1
    jsr sub_03d58e
    jsr sub_03d674
    .db $9c,$9f,$19,$00,$00,$00,$20
    jsr sub_03d6b1
    .db $b8,$ba,$19,$00,$00,$00,$10
    rep #$20
.a16
    lda #$0040
    tsb $1b9c
    sep #$20
.a8
    jsl sub_03d6e7
    lda #$04
    sta $00

loc_03c7e1:
    lda $00
    bne loc_03c7e1
    ldx #$8b58
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0200
    stx $17ef
    ldx #$0000
    stx $17f2

loc_03c7fc:
    lda $00
    bne loc_03c7fc
    lda #$1c
    sta $00

loc_03c804:
    lda $00
    bne loc_03c804
    brl loc_03d52c
    lda #$00
    sta $17f1
    jsr sub_03d5ca
    jsr sub_03d674
    .db $b8,$bf,$16,$00,$00,$00,$20
    jsr sub_03d6b1
    .db $e4,$c4,$16,$00,$00,$00,$10
    jsl sub_03d6e7
    ldx #$6e98
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0080
    stx $17ef
    ldx #$0000
    stx $17f2
    lda #$04
    sta $00

loc_03c846:
    lda $00
    bne loc_03c846
    rep #$20
.a16
    lda $1b86
    bit #$2000
    sep #$20
.a8
    beq loc_03c893
    lda $7ed7f2
    beq loc_03c893
    dec a
    beq loc_03c879
    ldx #$7578
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0060
    stx $17ef
    ldx #$0040
    stx $17f2
    jmp loc_03d4fd

loc_03c879:
    ldx #$75d8
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0060
    stx $17ef
    ldx #$0040
    stx $17f2
    jmp loc_03d4fd

loc_03c893:
    ldx #$7218
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0060
    stx $17ef
    ldx #$0040
    stx $17f2
    jmp loc_03d4fd
    .db $a9,$00,$8d,$f1,$17,$20,$ca,$d5,$20,$74,$d6,$b8,$bf,$16,$00,$00
    .db $00,$20,$20,$b1,$d6,$e4,$c4,$16,$00,$00,$00,$10,$22,$e7,$d6,$03
    .db $a2,$98,$6e,$8e,$ec,$17,$a9,$70,$8d,$ee,$17,$a2,$80,$00,$8e,$ef
    .db $17,$a2,$00,$00,$8e,$f2,$17,$a9,$04,$85,$00,$a5,$00,$d0,$fc,$a2
    .db $18,$72,$8e,$ec,$17,$a9,$70,$8d,$ee,$17,$a2,$60,$00,$8e,$ef,$17
    .db $a2,$40,$00,$8e,$f2,$17,$4c,$fd,$d4,$a9,$00,$8d,$f1,$17,$20,$ca
    .db $d5,$20,$74,$d6,$b8,$bf,$16,$00,$00,$00,$20,$20,$b1,$d6,$30,$d2
    .db $16,$00,$00,$00,$10,$22,$e7,$d6,$03,$a2,$98,$6e,$8e,$ec,$17,$a9
    .db $70,$8d,$ee,$17,$a2,$80,$00,$8e,$ef,$17,$a2,$00,$00,$8e,$f2,$17
    .db $a9,$04,$85,$00,$a5,$00,$d0,$fc,$a2,$18,$72,$8e,$ec,$17,$a9,$70
    .db $8d,$ee,$17,$a2,$60,$00,$8e,$ef,$17,$a2,$40,$00,$8e,$f2,$17,$4c
    .db $fd,$d4,$a9,$00,$8d,$f1,$17,$20,$ca,$d5,$20,$74,$d6,$b8,$bf,$16
    .db $00,$00,$00,$20,$20,$b1,$d6,$e4,$c4,$16,$00,$00,$00,$10,$22,$e7
    .db $d6,$03,$a2,$98,$6e,$8e,$ec,$17,$a9,$70,$8d,$ee,$17,$a2,$80,$00
    .db $8e,$ef,$17,$a2,$00,$00,$8e,$f2,$17,$a9,$04,$85,$00,$a5,$00,$d0
    .db $fc,$a2,$18,$72,$8e,$ec,$17,$a9,$70,$8d,$ee,$17,$a2,$60,$00,$8e
    .db $ef,$17,$a2,$40,$00,$8e,$f2,$17,$4c,$fd,$d4
    lda #$00
    sta $17f1
    jsr sub_03d5ca
    jsr sub_03d674
    .db $b8,$bf,$16,$00,$00,$00,$20
    jsr sub_03d6b1
    .db $30,$d2,$16,$00,$00,$00,$10
    jsl sub_03d6e7
    ldx #$6e98
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0080
    stx $17ef
    ldx #$0000
    stx $17f2
    lda #$04
    sta $00

loc_03c9f3:
    lda $00
    bne loc_03c9f3
    ldx #$7218
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0060
    stx $17ef
    ldx #$0040
    stx $17f2
    jmp loc_03d4fd
    lda #$00
    sta $17f1
    jsr sub_03d5ac
    jsr sub_03d674
    .db $9c,$93,$16,$00,$00,$00,$20
    jsr sub_03d6b1
    .db $8c,$cb,$16,$00,$00,$00,$10
    jsl sub_03d6e7
    ldx #$6e98
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0080
    stx $17ef
    ldx #$0000
    stx $17f2
    lda #$04
    sta $00

loc_03ca4c:
    lda $00
    bne loc_03ca4c
    ldx #$7358
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0060
    stx $17ef
    ldx #$0040
    stx $17f2
    jmp loc_03d4fd
    lda #$04
    sta $17f1
    jsr sub_03d5ca
    jsr sub_03d674
    .db $68,$89,$16,$00,$00,$00,$20
    jsr sub_03d6b1
    .db $9c,$a4,$16,$00,$00,$00,$10
    jsl sub_03d6e7
    ldx #$6e98
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0080
    stx $17ef
    ldx #$0000
    stx $17f2
    lda #$04
    sta $00

loc_03caa5:
    lda $00
    bne loc_03caa5
    ldx #$72b8
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0060
    stx $17ef
    ldx #$0040
    stx $17f2
    jmp loc_03d4fd
    lda #$00
    sta $17f1
    jsr sub_03d5ac
    jsr sub_03d674
    .db $e4,$d8,$15,$00,$00,$00,$20
    jsr sub_03d6b1
    .db $d4,$9f,$16,$00,$00,$00,$10
    jsl sub_03d6e7
    ldx #$6e98
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0080
    stx $17ef
    ldx #$0000
    stx $17f2
    lda #$04
    sta $00

loc_03cafe:
    lda $00
    bne loc_03cafe
    ldx #$70f8
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0060
    stx $17ef
    ldx #$0040
    stx $17f2
    jmp loc_03d4fd
    lda #$17
    sta $1c52
    lda #$40
    sta $1a89
    lda #$03
    sta $1a8a
    lda #$01
    sta $17f1
    jsr sub_03d570
    jsr sub_03d674
    .db $e4,$90,$19,$00,$00,$00,$08
    jsr sub_03d6b1
    .db $78,$b6,$19,$00,$00,$00,$08
    rep #$20
.a16
    lda #$0040
    tsb $1b9c
    sep #$20
.a8
    jsl sub_03d6e7
    lda #$04
    sta $00

loc_03cb59:
    lda $00
    bne loc_03cb59
    ldx #$7998
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0200
    stx $17ef
    ldx #$0000
    stx $17f2

loc_03cb74:
    lda $00
    bne loc_03cb74
    lda #$1c
    sta $00

loc_03cb7c:
    lda $00
    bne loc_03cb7c
    jsr sub_03d674
    .db $38,$92,$19,$00,$00,$00,$10
    jsr sub_03d6b1
    .db $74,$b7,$19,$00,$00,$00,$10
    lda #$08
    sta $00
    rep #$20
.a16
    lda #$8f4c
    sta $700050
    sep #$20
.a8
    rep #$10
    brl loc_03d49a
    lda #$13
    sta $1c52
    lda #$00
    sta $17f1
    jsr sub_03d58e
    rep #$20
.a16
    lda #$0080
    trb $1aa6
    sep #$20
.a8
    jsr sub_03d674
    .db $9c,$ff,$15,$00,$00,$00,$20
    jsr sub_03d6b1
    .db $40,$cd,$16,$00,$00,$00,$10
    jsl sub_03d6e7
    ldx #$7418
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0060
    stx $17ef
    ldx #$0040
    stx $17f2
    lda #$04
    sta $00

loc_03cbf2:
    lda $00
    bne loc_03cbf2
    ldx #$8a58
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0100
    stx $17ef
    ldx #$0080
    stx $17f2

loc_03cc0d:
    lda $00
    bne loc_03cc0d
    lda #$1c
    sta $00

loc_03cc15:
    lda $00
    bne loc_03cc15
    rep #$20
.a16
    lda #$8f4c
    sta $700050
    sep #$20
.a8
    rep #$10
    jmp loc_03d49a
    .incbin "data/01cc29-01d0ce.bin"
    lda #$00
    sta $17f1
    jsr sub_03d5ca
    lda $7edb5b
    cmp #$08
    beq loc_03d0e6
    cmp #$07
    bmi loc_03d0e6
    beq loc_03d0fc
    bra loc_03d112

loc_03d0e6:
    jsr sub_03d674
    .db $b8,$bf,$16,$00,$00,$00,$20
    jsr sub_03d6b1
    .db $30,$d2,$16,$00,$00,$00,$10
    bra loc_03d128

loc_03d0fc:
    jsr sub_03d674
    .db $bc,$c9,$15,$00,$00,$00,$20,$20,$b1,$d6,$30,$c9,$16,$00,$00,$00
    .db $10,$80,$16

loc_03d112:
    jsr sub_03d674
    .db $b8,$bf,$16,$00,$00,$00,$20
    jsr sub_03d6b1
    .db $e4,$c4,$16,$00,$00,$00,$10
    bra loc_03d128

loc_03d128:
    jsl sub_03d6e7
    ldx #$6e98
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0080
    stx $17ef
    ldx #$0000
    stx $17f2
    lda #$04
    sta $00

loc_03d147:
    lda $00
    bne loc_03d147
    rep #$20
.a16
    lda $7edb5b
    asl a
    tax
    lda $03d170,x
    sta $17ec
    sep #$20
.a8
    lda #$70
    sta $17ee
    ldx #$0060
    stx $17ef
    ldx #$0040
    stx $17f2
    jmp loc_03d4fd
    .incbin "data/01d170-01d49a.bin"

loc_03d49a:
    lda #$0a
    sta $1d67
    rep #$20
.a16
    lda #$0000
    sta $15fd
    sta $18a7
    sep #$20
.a8
    lda $1bb5
    cmp #$02
    beq loc_03d4d8
    stz $162c
    lda #$01
    sta $181c
    stz $18a9
    stz $18aa
    lda #$0c
    sta $70004e
    lda #$8b
    sta $70004f
    lda $129b
    sta HDMAEN

loc_03d4d3:
    lda $00
    bne loc_03d4d3
    rtl

loc_03d4d8:
    stz $162c
    lda #$01
    sta $181c
    stz $18a9
    stz $18aa
    lda #$0c
    sta $70004e
    lda #$8d
    sta $70004f
    lda $129b
    sta HDMAEN

loc_03d4f8:
    lda $00
    bne loc_03d4f8
    rtl

loc_03d4fd:
    lda $00
    bne loc_03d4fd
    lda #$1c
    sta $00

loc_03d505:
    lda $00
    bne loc_03d505
    ldx #$9158
    stx $17ec
    lda #$70
    sta $17ee
    ldx #$0100
    stx $17ef
    ldx #$0080
    stx $17f2

loc_03d520:
    lda $00
    bne loc_03d520
    lda #$1c
    sta $00

loc_03d528:
    lda $00
    bne loc_03d528

loc_03d52c:
    rep #$20
.a16
    lda #$8f40
    sta $700050
    sep #$20
.a8
    rep #$10
    lda #$0a
    sta $1d67
    rep #$20
.a16
    lda #$0000
    sta $15fd
    sta $18a7
    sep #$20
.a8
    stz $162c
    lda #$02
    sta $181c
    stz $18a9
    stz $18aa
    lda #$0c
    sta $70004e
    lda #$8b
    sta $70004f
    lda $129b
    sta HDMAEN

loc_03d56b:
    lda $00
    bne loc_03d56b
    rtl

sub_03d570:
    sep #$20
    lda $1aa6
    and #$ef
    sta $1aa6
    lda $1aa7
    bit #$08
    beq loc_03d585
    lda #$00
    bra loc_03d587

loc_03d585:
    lda #$00

loc_03d587:
    sta $1a88
    jsr sub_03d5e8
    rts

sub_03d58e:
    sep #$20
    lda $1aa6
    and #$ef
    sta $1aa6
    lda $1aa7
    bit #$08
    beq loc_03d5a3
    lda #$10
    bra loc_03d5a5

loc_03d5a3:
    lda #$20

loc_03d5a5:
    sta $1a88
    jsr sub_03d5e8
    rts

sub_03d5ac:
    sep #$20
    lda $1aa6
    and #$ef
    sta $1aa6
    lda $1aa7
    bit #$08
    beq loc_03d5c1
    lda #$10
    bra loc_03d5c3

loc_03d5c1:
    lda #$20

loc_03d5c3:
    sta $1a88
    jsr sub_03d5f9
    rts

sub_03d5ca:
    sep #$20
    lda $1aa6
    ora #$10
    sta $1aa6
    lda $1aa7
    bit #$08
    beq loc_03d5df
    lda #$10
    bra loc_03d5e1

loc_03d5df:
    lda #$20

loc_03d5e1:
    sta $1a88
    jsr sub_03d5f9
    rts

sub_03d5e8:
    sep #$20
    rep #$10

loc_03d5ec:
    lda $00
    bne loc_03d5ec
    lda #$0a
    sta $00

loc_03d5f4:
    lda $00
    bne loc_03d5f4
    rts

sub_03d5f9:
    sep #$20
    rep #$10

loc_03d5fd:
    lda $00
    bne loc_03d5fd
    lda #$0c
    sta $00

loc_03d605:
    lda $00
    bne loc_03d605
    rts

sub_03d60a:
    php
    rep #$20
.a16
    lda #$3b50
    sta $70002c
    sep #$20
.a8
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plp
    rtl

sub_03d621:
    php
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$5b50
    sta $70002c
    sep #$20
.a8
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plp
    rtl

loc_03d63f:
    php
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$5350
    sta $70002c
    sep #$20
.a8
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plp
    rtl

loc_03d65d:
    php
    rep #$20
.a16
    lda #$3b50
    sta $70002c
    sep #$20
.a8
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plp
    rtl

sub_03d674:
    rep #$20
.a16
    pla
    tax
    clc
    adc #$0007
    pha
    lda #$0000
    sta $7000a2
    lda $030003,x
    and #$00ff
    sta $70006a
    lda $030001,x
    sta $700068
    lda $030004,x
    bne loc_03d6a0
    lda $1b3a

loc_03d6a0:
    sta $17e4
    lda $030006,x
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    rts

sub_03d6b1:
    rep #$20
.a16
    pla
    tax
    clc
    adc #$0007
    pha
    lda $030001,x
    sta $700068
    lda $030003,x
    and #$00ff
    sta $70006a
    lda $030004,x
    bne loc_03d6d6
    lda $1b3c

loc_03d6d6:
    sta $17e8
    lda $030006,x
    sta $17ea
    sep #$20
.a8
    jsl sub_03d621
    rts

sub_03d6e7:
    rep #$30
.a16
    phx
    lda #$af24
    sta $700068
    lda #$6e18
    sta $70002c
    lda #$0000
    sta $7000a2
    sep #$20
.a8
    lda #$18
    sta $70006a
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plx
    sep #$20
    rep #$10
    rtl

loc_03d716:
    rep #$20
.a16
    pla
    tax
    clc
    adc #$0007
    pha
    lda $030001,x
    sta $17ec
    lda $030006,x
    sta $17f2
    sep #$20
.a8
    lda $030003,x
    sta $17ee
    rep #$20
.a16
    lda $030004,x
    sta $17ef
    rep #$30
    phx
    lda #$af24
    sta $700068
    lda #$6e18
    sta $70002c
    lda #$0000
    sta $7000a2
    sep #$20
.a8
    lda #$18
    sta $70006a
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plx
    rep #$20
.a16
    rep #$10
    sep #$20

loc_03d76f:
.a8
    lda $00
    bne loc_03d76f
    rts
    .db $00,$00,$00,$03,$b3,$c7,$00,$00,$00,$03,$1a,$d3,$00,$00,$00,$03
    .db $1a,$d3,$00,$00,$00,$03,$1c,$cb,$00,$00,$00,$03,$a8,$cb,$00,$00
    .db $00,$03,$29,$cc,$00,$00,$00,$03,$aa,$cc,$00,$00,$00,$03,$ce,$cd
    .db $00,$00,$00,$03,$41,$ce,$00,$00,$00,$03,$a4,$ce,$00,$00,$00,$03
    .db $23,$cf,$00,$00,$00,$03,$7c,$cf,$00,$00,$00,$03,$45,$d0,$00,$00
    .db $00,$03,$ce,$d0,$00,$00,$00,$03,$6a,$ca,$00,$00,$00,$03,$c3,$ca
    .db $00,$00,$00,$03,$92,$d1,$00,$00,$00,$03,$0f,$d2,$00,$00,$00,$03
    .db $68,$d2,$00,$00,$00,$03,$c1,$d2,$00,$00,$00,$03,$ce,$d0,$00,$00
    .db $00,$03,$ce,$d0,$00,$00,$00,$03,$ce,$d0,$00,$00,$00,$03,$0b,$c8
    .db $00,$00,$00,$03,$ad,$c8,$00,$00,$00,$03,$5f,$c9,$00,$00,$00,$03
    .db $06,$c9,$00,$00,$00,$03,$6a,$ca,$00,$00,$00,$03,$b8,$c9,$00,$00
    .db $00,$03,$11,$ca,$00,$00,$00,$03,$1a,$d3,$00,$00,$00,$03,$73,$d3
    .db $00,$00,$00,$03,$e6,$d3,$00,$00,$00,$03,$59,$d4,$00,$00,$00,$00
    .db $00,$00,$00

sub_03d847:
    php
    sep #$20
    rep #$10
    phb
    lda #$00
    pha
    plb
    jsl sub_03dd6f
    lda #$01
    sta $f3
    rep #$20
.a16
    lda #$0001
    trb $1c67
    sep #$20
.a8
    jsl sub_7f1118
    ldx #$0008
    stx A1TL5
    lda #$7f
    sta A1B5
    lda $129b
    ora #$20
    sta $129b
    plb
    plp
    rtl

sub_03d87d:
    pha
    phx
    phy
    phb
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    ldy $12c3
    rep #$20
.a16
    lda $002b,y
    tay
    sep #$20
.a8
    lda #$01
    lsr a
    sta $1baa
    jsr sub_03d8c4
    rep #$20
.a16
    lda $1b84
    bit #$0001
    sep #$20
.a8
    beq loc_03d8be
    ldy $12c5
    rep #$20
.a16
    lda $002b,y
    tay
    sep #$20
.a8
    lda #$02
    lsr a
    sta $1baa
    jsr sub_03d8c4

loc_03d8be:
    plp
    plb
    ply
    plx
    pla
    rtl

sub_03d8c4:
    rep #$20
.a16
    stz $02
    stz $04
    lda $1c67
    bit #$0001
    beq loc_03d8dc
    lda #$0004
    sta $02
    lda #$0180
    sta $04

loc_03d8dc:
    sep #$20
.a8
    lda #$7e
    sta $56
    jsr sub_03d8e9
    jsr sub_03d9ed
    rts

sub_03d8e9:
    sty $1bcc
    lda $6c11,y
    bne loc_03d8f5
    jml loc_03d9a0

loc_03d8f5:
    dec a
    sta $6c11,y
    rep #$20
.a16
    lda #$ef87
    clc
    adc $02
    sta $54
    rep #$30
    lda $142c
    ora #$0020
    sta $142c
    ldx #$1342
    rep #$20
    rep #$10
    lda $54
    sta $0d,x
    rep #$30
    lda $142e
    ora #$0020
    sta $142e
    ldx #$13e4
    rep #$20
    rep #$10
    lda $54
    inc a
    inc a
    sta $0d,x
    ldy #$0000
    rep #$20
    lda #$ef10
    sta [$54],y
    iny
    iny
    sta [$54],y
    rep #$20
    rep #$10
    rep #$30
    lda $142c
    ora #$0020
    sta $142c
    ldx #$1342
    rep #$20
    rep #$10
    bra loc_03d957

loc_03d957:
    sep #$20
.a8
    ldy $1bcc
    lda #$00
    sta $00,x
    sta $01,x
    lda #$03
    sta $05,x
    lda #$10
    sta $06,x
    lda #$23
    sta $07,x
    lda #$00
    sta $08,x
    lda $6c0b,y
    ora #$20
    sta $09,x
    lda $6c0c,y
    ora #$40
    sta $0a,x
    lda $6c0d,y
    ora #$80
    sta $0b,x
    lda $11,x
    ora #$01
    sta $11,x
    lda #$7e
    sta $0f,x
    lda #$20
    sta $02,x
    lda #$0c
    sta $04,x
    lda #$41
    sta $0c,x
    jmp loc_03d9ec

loc_03d9a0:
    lda $1aa6
    bit #$02
    beq loc_03d9c7
    rep #$20
.a16
    lda $142c
    and #$ffdf
    sta $142c
    sep #$20
.a8
    rep #$10
    rep #$20
.a16
    lda $142e
    and #$ffdf
    sta $142e
    sep #$20
.a8
    rep #$10
    bra loc_03d9ec

loc_03d9c7:
    lda $1baa
    bne loc_03d9dd
    rep #$20
.a16
    lda $142c
    and #$ffdf
    sta $142c
    sep #$20
.a8
    rep #$10
    bra loc_03d9ec

loc_03d9dd:
    rep #$20
.a16
    lda $142e
    and #$ffdf
    sta $142e
    sep #$20
.a8
    rep #$10

loc_03d9ec:
    rts

sub_03d9ed:
    lda #$00
    xba
    lda $6c1c,y
    tax
    jmp (tbl_03d9f7,x)

tbl_03d9f7:
    .db $01,$da,$02,$da,$5a,$da,$21,$da,$e7,$db

loc_03da01:
    rts

loc_03da02:
    rep #$20
.a16
    lda #$0000
    sta $6c22,y
    phx
    lda #$0001
    ldx #$0300

loc_03da11:
    sta $ec85,x
    dex
    dex
    bne loc_03da11
    plx
    sep #$20
.a8
    lda #$04
    sta $6c1c,y
    rts

loc_03da21:
    lda $6c2a,y
    jsr sub_03da4f
    sta $6c2a,y
    lda $6c2b,y
    jsr sub_03da4f
    sta $6c2b,y
    lda $6c2c,y
    jsr sub_03da4f
    sta $6c2c,y
    lda $6c2a,y
    ora $6c2b,y
    ora $6c2c,y
    bne loc_03da5a
    lda #$08
    sta $6c1c,y
    brl loc_03dbe7

sub_03da4f:
    beq loc_03da59
    sec
    sbc $6c28,y
    bpl loc_03da59
    lda #$00

loc_03da59:
    rts

loc_03da5a:
    lda $5e
    pha
    jsl sub_7f77fe
    rep #$20
.a16
    lda $6c1e,y
    sta $700026
    lda $6c20,y
    sta $700028
    lda $6c22,y
    sta $700020
    sep #$20
.a8
    lda #$01
    ldx #$cc2d
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $6c22,y
    cmp $6c24,y
    bcs loc_03da98
    clc
    adc $6c26,y
    sta $6c22,y
    bra loc_03da9e

loc_03da98:
    lda #$0006
    sta $6c1c,y

loc_03da9e:
    lda #$ec87
    clc
    adc $04
    sta $54
    sty $1bcc
    lda $1aa6
    bit #$0002
    bne loc_03dab4
    jmp loc_03db19

loc_03dab4:
    rep #$30
    lda $142c
    ora #$0040
    sta $142c
    ldx #$1354
    rep #$20
    rep #$10
    lda $54
    sta $0d,x
    rep #$30
    lda $142e
    ora #$0040
    sta $142e
    ldx #$13f6
    rep #$20
    rep #$10
    lda $54
    clc
    adc #$00c0
    sta $0d,x
    ldy #$0000
    phx
    ldx #$0020
    sep #$20
.a8
    lda #$c0
    sta $1bca
    lda #$10
    sta $d995
    lda #$ef
    sta $d997
    jsr sub_03dc3a
    plx
    rep #$20
.a16
    rep #$10
    rep #$30
    lda $142c
    ora #$0040
    sta $142c
    ldx #$1354
    rep #$20
    rep #$10
    jmp loc_03db96

loc_03db19:
    lda $1baa
    and #$00ff
    beq loc_03db24
    jmp loc_03db5c

loc_03db24:
    rep #$30
    lda $142c
    ora #$0040
    sta $142c
    ldx #$1354
    rep #$20
    rep #$10
    lda $54
    sta $0d,x
    ldy #$0000
    phx
    ldx #$0020
    sep #$20
.a8
    lda #$60
    sta $1bca
    lda #$10
    sta $d995
    lda #$bf
    sta $d997
    jsr sub_03dc3a
    plx
    rep #$20
.a16
    rep #$10
    bra loc_03db96

loc_03db5c:
    rep #$30
    lda $142e
    ora #$0040
    sta $142e
    ldx #$13f6
    rep #$20
    rep #$10
    lda $54
    clc
    adc #$00c0
    sta $0d,x
    ldy #$00c0
    phx
    ldx #$00f0
    sep #$20
.a8
    lda #$60
    sta $1bca
    lda #$40
    sta $d995
    lda #$ef
    sta $d997
    jsr sub_03dc3a
    plx
    rep #$20
.a16
    rep #$10

loc_03db96:
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    ldy $1bcc
    lda #$00
    sta $00,x
    sta $01,x
    lda #$03
    sta $05,x
    lda #$10
    sta $06,x
    lda $6c29,y
    sta $07,x
    lda $6c2a,y
    ora #$20
    sta $09,x
    lda $6c2b,y
    ora #$40
    sta $0a,x
    lda $6c2c,y
    ora #$80
    sta $0b,x
    lda #$7e
    sta $0f,x
    lda #$20
    sta $02,x
    lda #$0c
    sta $04,x
    lda #$41
    sta $0c,x
    lda $11,x
    and #$01
    sta $11,x
    jmp loc_03dc39

loc_03dbe7:
    tyx
    lda #$00
    sta $6c1c,y
    lda $1aa6
    bit #$02
    beq loc_03dc14
    rep #$20
.a16
    lda $142c
    and #$ffbf
    sta $142c
    sep #$20
.a8
    rep #$10
    rep #$20
.a16
    lda $142e
    and #$ffbf
    sta $142e
    sep #$20
.a8
    rep #$10
    bra loc_03dc39

loc_03dc14:
    lda $1baa
    bne loc_03dc2a
    rep #$20
.a16
    lda $142c
    and #$ffbf
    sta $142c
    sep #$20
.a8
    rep #$10
    bra loc_03dc39

loc_03dc2a:
    rep #$20
.a16
    lda $142e
    and #$ffbf
    sta $142e
    sep #$20
.a8
    rep #$10

loc_03dc39:
    rts

sub_03dc3a:
    lda $7004f0,x
    sec
    sbc $7006d0,x
    bcs loc_03dc55
    lda $7006d0,x
    sta [$54],y
    iny
    lda $7004f0,x
    sta [$54],y
    iny
    bra loc_03dc73

loc_03dc55:
    lda $7006d0,x
    cmp $d995
    bcs loc_03dc61
    lda $d995

loc_03dc61:
    sta [$54],y
    iny
    lda $7004f0,x
    cmp $d997
    bcc loc_03dc70
    lda $d997

loc_03dc70:
    sta [$54],y
    iny

loc_03dc73:
    inx
    inx
    dec $1bca
    bne sub_03dc3a
    rts
    .db $48,$da,$5a,$8b,$08,$a9,$7e,$48,$ab,$c2,$20,$ad,$84,$1b,$89,$20
    .db $00,$e2,$20,$d0,$03,$4c,$c0,$dc,$20,$e4,$dc,$a0,$00,$00,$c2,$20
    .db $a9,$10,$ef,$97,$54,$c8,$c8,$97,$54,$e2,$20,$c2,$10,$c2,$30,$ad
    .db $2c,$14,$09,$01,$00,$8d,$2c,$14,$a2,$e8,$12,$e2,$20,$c2,$10,$20
    .db $3a,$dd,$82,$1e,$00,$c2,$20,$ad,$2c,$14,$29,$fe,$ff,$8d,$2c,$14
    .db $e2,$20,$c2,$10,$c2,$20,$ad,$2e,$14,$29,$fe,$ff,$8d,$2e,$14,$e2
    .db $20,$c2,$10,$28,$ab,$7a,$fa,$68,$6b,$08,$64,$02,$c2,$20,$ad,$67
    .db $1c,$89,$01,$00,$e2,$20,$f0,$04,$a9,$04,$85,$02,$c2,$20,$a5,$02
    .db $29,$ff,$00,$18,$69,$8f,$ef,$85,$54,$e2,$20,$a9,$7e,$85,$56,$c2
    .db $30,$ad,$2c,$14,$09,$01,$00,$8d,$2c,$14,$a2,$e8,$12,$e2,$20,$c2
    .db $10,$a4,$54,$94,$0d,$c2,$30,$ad,$2e,$14,$09,$01,$00,$8d,$2e,$14
    .db $a2,$8a,$13,$e2,$20,$c2,$10,$a4,$54,$c8,$c8,$94,$0d,$28,$60,$a9
    .db $00,$95,$00,$95,$01,$a9,$03,$95,$05,$a9,$10,$95,$06,$a9,$c3,$95
    .db $07,$a9,$3f,$95,$09,$a9,$5f,$95,$0a,$a9,$9f,$95,$0b,$b5,$11,$09
    .db $01,$95,$11,$a9,$20,$95,$02,$a9,$0c,$95,$04,$a9,$41,$95,$0c,$a9
    .db $7e,$95,$0f,$60

sub_03dd6f:
    php
    sep #$20
    rep #$10
    lda #$02
    sta $f3
    stz $f4
    lda #$02
    sta $18bb
    plp
    rtl

sub_03dd81:
    php
    sep #$20
    rep #$10
    lda $18bb
    inc a
    beq loc_03dd8f
    dec $18bb

loc_03dd8f:
    plp
    rtl
    .db $20,$95,$dd,$6b,$08,$e2,$20,$c2,$10,$da,$c2,$30,$ad,$2c,$14,$09
    .db $08,$00,$8d,$2c,$14,$a2,$1e,$13,$e2,$20,$c2,$10,$74,$05,$a9,$02
    .db $95,$06,$a9,$07,$95,$07,$a9,$e0,$15,$10,$95,$08,$b5,$10,$c9,$1f
    .db $f0,$03,$1a,$95,$10,$fa,$28,$60,$08,$e2,$20,$c2,$10,$da,$c2,$30
    .db $ad,$2c,$14,$09,$20,$00,$8d,$2c,$14,$a2,$42,$13,$e2,$20,$c2,$10
    .db $74,$05,$a9,$02,$95,$06,$a9,$27,$95,$07,$74,$09,$a9,$1f,$95,$0a
    .db $95,$0b,$74,$08,$fa,$28,$6b,$08,$e2,$20,$c2,$10,$da,$c2,$30,$ad
    .db $2c,$14,$09,$20,$00,$8d,$2c,$14,$a2,$42,$13,$e2,$20,$c2,$10,$74
    .db $05,$a9,$02,$95,$06,$a9,$27,$95,$07,$74,$09,$a9,$07,$95,$0a,$95
    .db $0b,$74,$08,$fa,$28,$6b,$08,$e2,$20,$c2,$10,$da,$c2,$30,$ad,$2c
    .db $14,$09,$20,$00,$8d,$2c,$14,$a2,$42,$13,$e2,$20,$c2,$10,$74,$05
    .db $a9,$02,$95,$06,$a9,$27,$95,$07,$74,$08,$a9,$1f,$95,$09,$74,$0a
    .db $74,$0b,$fa,$28,$6b,$08,$e2,$20,$c2,$10,$da,$c2,$30,$ad,$2c,$14
    .db $09,$00,$01,$8d,$2c,$14,$a2,$78,$13,$e2,$20,$c2,$10,$74,$05,$a9
    .db $02,$95,$06,$a9,$27,$95,$07,$74,$08,$a9,$0a,$95,$09,$74,$0a,$74
    .db $0b,$fa,$28,$6b,$08,$e2,$20,$c2,$10,$da,$c2,$20,$ad,$2c,$14,$29
    .db $ff,$fe,$8d,$2c,$14,$e2,$20,$c2,$10,$fa,$28,$6b,$08,$e2,$20,$c2
    .db $10,$da,$c2,$30,$ad,$2c,$14,$09,$08,$00,$8d,$2c,$14,$a2,$1e,$13
    .db $e2,$20,$c2,$10,$a9,$1f,$95,$10,$fa,$28,$20,$c3,$de,$6b,$20,$c3
    .db $de,$6b,$08,$e2,$20,$c2,$10,$da,$c2,$30,$ad,$2c,$14,$09,$08,$00
    .db $8d,$2c,$14,$a2,$1e,$13,$e2,$20,$c2,$10,$74,$05,$a9,$02,$95,$06
    .db $a9,$07,$95,$07,$a9,$e0,$15,$10,$95,$08,$b5,$10,$f0,$06,$3a,$95
    .db $10,$fa,$28,$60,$c2,$20,$ad,$2c,$14,$29,$f7,$ff,$8d,$2c,$14,$e2
    .db $20,$c2,$10,$fa,$28,$60,$08,$e2,$20,$c2,$10,$da,$c2,$30,$ad,$2c
    .db $14,$09,$00,$01,$8d,$2c,$14,$a2,$78,$13,$e2,$20,$c2,$10,$74,$05
    .db $a9,$02,$95,$06,$a9,$27,$95,$07,$74,$09,$a9,$1f,$95,$0a,$95,$0b
    .db $74,$08,$fa,$28,$6b

sub_03df36:
    jsr sub_03df3a
    rtl

sub_03df3a:
    jsl sub_0b8c21
    jsl sub_7f1118
    jsl sub_048301
    lda #$18
    sta $00

loc_03df4a:
    lda $00
    bne loc_03df4a
    ldx $1c6e
    dex
    stx $1c6e
    bne sub_03df3a
    phb
    pha
    lda #$00
    pha
    plb
    stz HDMAEN
    stz $129b
    sei
    rep #$20
.a16
    lda #$0004
    trb $1b84
    sep #$20
.a8
    stz $00

loc_03df70:
    lda HVBJOY
    bit #$80
    bne loc_03df70

loc_03df77:
    lda HVBJOY
    bit #$80
    beq loc_03df77
    lda #$8f
    sta INIDISP
    sta $f4
    pla
    plb
    rep #$20
.a16
    stz $142c
    stz $142e
    stz $1608
    stz $160a
    lda #$0004
    trb $1c67
    sep #$20
.a8
    rep #$10
    rts

sub_03dfa0:
    jsr sub_03dfa4
    rtl

sub_03dfa4:
    ldx $1c6e
    dex
    stx $1c6e
    beq loc_03dfce
    cpx #$0010
    bpl loc_03dfb6
    lda #$ff
    sta $f3

loc_03dfb6:
    jsl sub_0b8c21
    jsl sub_7f1118
    jsl sub_048301
    lda #$18
    sta $00

loc_03dfc6:
    lda $00
    bne loc_03dfc6
    lda $f4
    bne sub_03dfa4

loc_03dfce:
    phb
    pha
    lda #$00
    pha
    plb
    stz HDMAEN
    stz $129b
    sei
    rep #$20
.a16
    lda #$0004
    trb $1b84
    sep #$20
.a8
    stz $00

loc_03dfe7:
    lda HVBJOY
    bit #$80
    bne loc_03dfe7

loc_03dfee:
    lda HVBJOY
    bit #$80
    beq loc_03dfee
    lda #$8f
    sta INIDISP
    sta $f4
    pla
    plb
    rep #$20
.a16
    stz $142c
    stz $142e
    stz $1608
    stz $160a
    lda #$0004
    trb $1c67
    sep #$20
.a8
    rep #$10
    rts

sub_03e017:
    stx $1c6e
    lda #$09
    jsl sub_7f6df8
    lda #$01
    tsb $1cd3
    lda #$ff
    sta $f3

loc_03e029:
    ldx $1c6e
    dex
    stx $1c6e
    beq loc_03e03c
    lda #$18
    sta $00

loc_03e036:
    lda $00
    bne loc_03e036
    bra loc_03e029

loc_03e03c:
    phb
    pha
    lda #$00
    pha
    plb
    stz HDMAEN
    stz $129b
    sei
    rep #$20
.a16
    lda #$0004
    trb $1b84
    sep #$20
.a8
    stz $00

loc_03e055:
    lda HVBJOY
    bit #$80
    bne loc_03e055

loc_03e05c:
    lda HVBJOY
    bit #$80
    beq loc_03e05c
    lda #$8f
    sta INIDISP
    sta $f4
    pla
    plb
    rep #$20
.a16
    stz $142c
    stz $142e
    stz $1608
    stz $160a
    lda #$0004
    trb $1c67
    sep #$20
.a8
    rep #$10
    rtl

sub_03e085:
    jsr sub_03e089
    rtl

sub_03e089:
    ldx $1c6e
    dex
    stx $1c6e
    bne loc_03e0ba
    rep #$20
.a16
    lda $142c
    and #$fffd
    sta $142c
    sep #$20
.a8
    rep #$10
    rep #$20
.a16
    lda $142e
    and #$fffd
    sta $142e
    sep #$20
.a8
    rep #$10
    rep #$20
.a16
    lda #$0002
    trb $1c67
    sep #$20

loc_03e0ba:
.a8
    rts

sub_03e0bb:
    jsr sub_03e0bf
    rtl

sub_03e0bf:
    lda #$09
    jsl sub_7f6df8
    lda #$01
    tsb $1cd3
    ldx $1c6e
    dex
    stx $1c6e
    beq loc_03e0e3
    cpx #$0010
    bpl loc_03e0dc
    lda #$fe
    sta $f3

loc_03e0dc:
    jsl sub_0b8c21
    brl loc_03e0fb

loc_03e0e3:
    rep #$20
.a16
    stz $142c
    stz $142e
    stz $1608
    stz $160a
    lda #$0004
    trb $1c67
    sep #$20
.a8
    rep #$10

loc_03e0fb:
    rts

sub_03e0fc:
    rep #$20
.a16
    lda $1c67
    bit #$0020
    beq loc_03e150
    lda $1c67
    bit #$0010
    bne loc_03e124
    lda #$0010
    tsb $1c67
    lda #$0009
    jsl sub_7f6df8
    sep #$20
.a8
    lda #$01
    tsb $1cd3
    rep #$20

loc_03e124:
.a16
    lda $1bbe
    dec a
    bpl loc_03e12d
    lda #$0000

loc_03e12d:
    sta $1bbe
    bne loc_03e150
    sep #$20
.a8
    lda $f4
    beq loc_03e13e
    lda #$fe
    sta $f3
    bra loc_03e150

loc_03e13e:
    rep #$20
.a16
    lda #$0020
    trb $1c67
    lda #$0010
    trb $1c67
    sep #$20
.a8
    sec
    rtl

loc_03e150:
    sep #$20
    clc
    rtl

sub_03e154:
.a16
    rep #$20
    lda $1c67
    bit #$0004
    beq loc_03e1d0
    lda $1c67
    bit #$0010
    bne loc_03e18e
    lda #$0010
    tsb $1c67
    sep #$20
.a8
    lda #$01
    tsb $1cd3
    rep #$20
.a16
    jsl sub_0b8c17
    jsl sub_0b8c6b
.a8
    rep #$20
.a16
    sta $1c6e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0004
    tsb $1c67
    sep #$20

loc_03e18e:
.a8
    ldx $1c6e
    dex
    stx $1c6e
    beq loc_03e1a6
    dex
    bne loc_03e1d0
.a16
    sep #$20
.a8
    lda #$ff
    sta $f3
    lda #$00
    sta $f4
    bra loc_03e1d0

loc_03e1a6:
.a16
    rep #$20
    lda #$0004
    trb $1c67
    lda #$0010
    trb $1c67
    rep #$20
    stz $142c
    stz $142e
    stz $1608
    stz $160a
    lda #$0004
    trb $1c67
    rep #$20
    rep #$10
    sep #$20
.a8
    sec
    rtl

loc_03e1d0:
    sep #$20
    clc
    rtl

sub_03e1d4:
    phb
    phx
    php
    pha
    lda #$00
    pha
    plb
    pla
    jsl SpcUpload
    plp
    plx
    plb
    rtl

sub_03e1e5:
    pha
    phx
    phy
    phb
    php
    lda #$00
    pha
    plb
    stz APUIO0
    stz APUIO1
    stz APUIO2
    stz APUIO3
    stz $1cdf
    stz $1ce0
    stz $1cd9
    rep #$20
.a16
    stz $1ce8
    stz $1cee
    stz $1cf2
    stz $1d18
    stz $1d16
    sep #$20
.a8
    stz $1ce5
    stz $1ce6
    stz $1cec
    stz $1cf0
    stz $1ce7
    stz $1ced
    sta $1cf1
    stz $1d1a
    lda $1cd3
    bit #$20
    beq loc_03e243
    lda #$20
    trb $1cd3
    lda $1d1e
    beq loc_03e243
    jsl sub_03e3ea

loc_03e243:
    lda $1b68
    cmp #$04
    bne loc_03e25c
    lda $1b76
    cmp #$1c
    bne loc_03e25c
    rep #$20
.a16
    lda #$00f0
    jsl QueueSound
    sep #$20

loc_03e25c:
.a8
    sep #$20
    ldx $1b6e
    lda $03e496,x
    and #$0f
    beq loc_03e26d
    jsl sub_7f6df8

loc_03e26d:
    lda $1b68
    cmp #$06
    bne loc_03e295
    rep #$20
.a16
    lda $703916
    and #$3f00
    cmp #$3f00
    sep #$20
.a8
    bne loc_03e28a
    lda #$08
    jsl sub_7f6df8

loc_03e28a:
    rep #$20
.a16
    lda #$00fe
    jsl QueueSound
    sep #$20

loc_03e295:
.a8
    lda $03e496,x
    lsr a
    lsr a
    lsr a
    lsr a
    clc
    adc #$f9
    rep #$20
.a16
    and #$00ff
    sta $1ce1
    and #$00ff
    jsl QueueSound
    lda $03e495,x
    and #$00ff
    bne loc_03e2bb
    brl loc_03e30c

loc_03e2bb:
    tay
    sep #$20

loc_03e2be:
.a8
    phy
    rep #$20
.a16
    lda $03e497,x
    tay
    sep #$20
.a8
    lda $03e499,x
    jsl sub_03e3c7
    ply
    inx
    inx
    inx
    dey
    bne loc_03e2be
    rep #$20
.a16
    lda $1bbb
    and #$00ff
    asl a
    tax
    lda $03e724,x
    tax
    lda $03e738,x
    and #$00ff
    beq loc_03e30c
    tay

loc_03e2f0:
    phy
    rep #$20
    lda $03e739,x
    tay
    sep #$20
.a8
    lda $03e73b,x
    jsl sub_03e3c7
    ply
    inx
    inx
    inx
    dey
    bne loc_03e2f0
    stz $1bbb

loc_03e30c:
.a16
    plp
.a8
    plb
    ply
    plx
    pla
    rtl

sub_03e312:
    pha
    phx
    phy
    phb
    php
    lda #$00
    pha
    plb
    lda $1e14
    sta $1bab
    jsr sub_03e35b
    ldx #$2ee0
    stx $1cd4
    lda $1e15
    sta $1bab
    lda #$02
    tsb $1cd3
    jsr sub_03e35b
    lda #$02
    trb $1cd3
    rep #$20
.a16
    lda $7ed812
    asl a
    tax
    lda $03e388,x
    tay
    sep #$20
.a8
    lda $03e38a,x
    tyx
    jsl sub_03e3c7
    plp
    plb
    ply
    plx
    pla
    rtl

sub_03e35b:
    rep #$20
.a16
    lda $1bab
    asl a
    clc
    adc $1bab
    tax
    lda $03e376,x
    tay
    sep #$20
.a8
    lda $03e378,x
    jsl sub_03e3c7
    rts
    .db $b1,$8d,$1b,$f3,$8d,$1b,$2c,$8e,$1b,$6f,$8e,$1b,$f6,$8e,$1b,$32
    .db $8f,$1b,$cf,$8c,$1b,$00,$11,$8d,$1b,$00,$5f,$8d,$1b,$00

sub_03e394:
    php
    sep #$20
    rep #$10

loc_03e399:
    lda $00
    bne loc_03e399
    lda #$04
    tsb $1cd3
    lda #$2e
    sta $00
    ldy $1cd6
    lda $1cd8
    jsl sub_03e3c7
    ldy #$0000
    sty $1d18
    sty $1d16
    stz $1d1a
    lda #$04
    trb $1cd3

loc_03e3c1:
    lda $00
    bne loc_03e3c1
    plp
    rts

sub_03e3c7:
    phb
    phx
    php
    pha
    lda #$00
    pha
    plb
    lda #$0f
    sta APUIO0
    pla
    jsl SpcUpload
    ldx #$0000

loc_03e3dc:
    cpx APUIO0
    bne loc_03e3dc

loc_03e3e1:
    cpx APUIO2
    bne loc_03e3e1
    plp
    plx
    plb
    rtl

sub_03e3ea:
    bne loc_03e3f9
    rep #$20
.a16
    lda #$00f5
    jsl QueueSound
    sep #$20
.a8
    bra loc_03e404

loc_03e3f9:
    rep #$20
.a16
    lda #$00f6
    jsl QueueSound
    sep #$20

loc_03e404:
.a8
    jsl sub_0befef
    rtl

SpcUpload:    ; SPC700 boot-ROM block transfer: waits for $BBAA on APUIO0, answers $CC, streams the blocks; MainInit uploads the SPC700 program with it (code)
    sta $fe
    ldx #$0000
    stx $fc
    ldx #$bbaa

loc_03e413:
    cpx APUIO0
    bne loc_03e413
    lda #$cc
    bra loc_03e442

loc_03e41c:
    jsr sub_03e48a
    xba
    lda #$00
    bra loc_03e42f

loc_03e424:
    xba
    jsr sub_03e48a
    xba

loc_03e429:
    cmp APUIO0
    bne loc_03e429
    inc a

loc_03e42f:
    rep #$20
.a16
    sta APUIO0
    sep #$20
.a8
    dex
    bne loc_03e424

loc_03e439:
    cmp APUIO0
    bne loc_03e439

loc_03e43e:
    adc #$03
    beq loc_03e43e

loc_03e442:
    pha
    jsr sub_03e48a
    xba
    jsr sub_03e48a
    xba
    tax
    lda $1cd3
    bit #$02
    bne loc_03e461
    jsr sub_03e48a
    sta APUIO2
    jsr sub_03e48a
    sta APUIO3
    bra loc_03e473

loc_03e461:
    jsr sub_03e48a
    jsr sub_03e48a
    lda $1cd4
    sta APUIO2
    lda $1cd5
    sta APUIO3

loc_03e473:
    cpx #$0001
    lda #$00
    rol a
    sta APUIO1
    adc #$7f
    pla
    sta APUIO0

loc_03e482:
    cmp APUIO0
    bne loc_03e482
    bvs loc_03e41c
    rtl

sub_03e48a:
    lda [$fc],y
    iny
    bne loc_03e494
    inc $fe
    ldy #$8000

loc_03e494:
    rts
    .incbin "data/01e495-01e78d.bin"

sub_03e78d:
    phb
    phx
    phy
    pha
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda #$e0f4
    sta $7000ba
    lda #$0011
    sta $70002c
    lda #$0004
    sta $700068
    ldx #$0000
    ldy $6868

loc_03e7b7:
    sep #$20
.a8
    lda $670f,x
    bne loc_03e7c1
    brl loc_03e8a2

loc_03e7c1:
    dey
    rep #$20
.a16
    lda $1b84
    bit #$0080
    sep #$20
.a8
    bne loc_03e7da
    stz $6710,x
    stz $670f,x
    dec $6868
    brl loc_03e8a2

loc_03e7da:
    rep #$20
.a16
    lda #$090e
    sta $700206
    lda $670a,x
    sta $7000b8
    sep #$20
.a8
    lda $670c,x
    sta $7000a6
    phx
    sep #$20
    lda #$01
    ldx #$ee49
    jsl sub_7f787b
    sep #$20
    rep #$10
    plx
    dec $6710,x
    bne loc_03e80f
    stz $670f,x
    dec $6868

loc_03e80f:
    rep #$20
.a16
    lda $700068
    clc
    adc #$0004
    sta $700068
    lda #$0409
    sta $700206
    lda $670d,x
    sta $7000b8
    sep #$20
.a8
    lda $670f,x
    cmp #$03
    beq loc_03e873
    cmp #$04
    bne loc_03e84b
    phx
    sep #$20
    lda #$01
    ldx #$ecc9
    jsl sub_7f787b
    sep #$20
    rep #$10
    plx
    bra loc_03e873

loc_03e84b:
    cmp #$01
    bne loc_03e862
    phx
    sep #$20
    lda #$01
    ldx #$ec13
    jsl sub_7f787b
    sep #$20
    rep #$10
    plx
    bra loc_03e873

loc_03e862:
    phx
    sep #$20
    lda #$01
    ldx #$ed31
    jsl sub_7f787b
    sep #$20
    rep #$10
    plx

loc_03e873:
    rep #$20
.a16
    lda $700068
    clc
    adc #$0004
    sta $700068
    cmp #$0040
    bcc loc_03e8a2
    lda #$0004
    sta $700068
    lda $70002c
    clc
    adc #$000a
    sta $70002c
    clc
    adc #$001a
    cmp $1916
    bcs loc_03e8b2

loc_03e8a2:
.a8
    rep #$20
.a16
    txa
    clc
    adc #$0007
    tax
    cpy #$0000
    beq loc_03e8b2
    brl loc_03e7b7

loc_03e8b2:
    plp
.a8
    pla
    ply
    plx
    plb
    rtl
    .db $8b,$da,$5a,$48,$08,$e2,$10,$a2,$7e,$da,$ab,$e2,$20,$c2,$10,$48
    .db $20,$21,$e9,$68,$e0,$ff,$ff,$d0,$0d,$48,$20,$02,$e9,$68,$e0,$ff
    .db $ff,$f0,$21,$ee,$68,$68,$9d,$0f,$67,$af,$52,$00,$00,$9f,$0c,$67
    .db $7e,$a9,$64,$9d,$10,$67,$c2,$20,$a5,$42,$9d,$0d,$67,$af,$50,$00
    .db $00,$9d,$0a,$67,$28,$68,$7a,$fa,$ab,$6b,$08,$c2,$20,$a2,$00,$00
    .db $a0,$32,$00,$bd,$0f,$67,$29,$ff,$00,$f0,$0c,$8a,$18,$69,$07,$00
    .db $aa,$88,$d0,$ef,$a2,$ff,$ff,$28,$60,$08,$c2,$20,$a2,$00,$00,$ac
    .db $68,$68,$f0,$2e,$e2,$20,$bd,$0f,$67,$f0,$1a,$88,$bd,$10,$67,$c9
    .db $64,$f0,$12,$c2,$20,$a5,$50,$dd,$0a,$67,$d0,$09,$e2,$20,$a5,$52
    .db $dd,$0c,$67,$f0,$10,$c2,$20,$8a,$18,$69,$07,$00,$aa,$c0,$00,$00
    .db $d0,$d2,$a2,$ff,$ff,$28,$60,$08,$c2,$20,$ad,$a6,$1a,$89,$02,$00
    .db $f0,$0a,$a9,$00,$54,$85,$3a,$a9,$00,$03,$80,$08,$a9,$00,$38,$85
    .db $3a,$a9,$00,$02,$85,$5f,$28,$60,$60,$60,$6b,$60,$6b

MainInit:
.i8
    sei
    clc
    xce
    stz NMITIMEN
    stz MDMAEN
    stz HDMAEN
    lda #$80
    sta INIDISP
    stz SETINI
    rep #$30
.a16
.i16
    lda #$0000
    tcd
    sep #$20
.a8
    lda #$00
    pha
    plb
    ldx #$02ff
    txs
    sep #$10
.i8
    jsl InitHardwareRegisters
    jsr ClearMemory
    jsr CheckVideoRegion
    jsr CheckControllers
    jsl sub_0bf03f
    rep #$20
.a16
    lda #$0000
    sta $7ef59c
    sep #$20
.a8
    sep #$20
    rep #$10
.i16
    ldy #$8000
    lda #$1a
    jsl sub_03e1d4
    ldx #$3000

loc_03e9d7:
    dex
    bne loc_03e9d7
    lda #$02
    trb $1cd3
    ldy #$8ccf
    lda #$1b
    jsl sub_03e3c7
    lda #$02
    trb $1cd3
    ldy #$8cf0
    lda #$1b
    jsl sub_03e3c7
    sep #$30
.i8
    jsl sub_0bf021
    jsl sub_0befe5
    sep #$30
    jsl sub_0382bb
    jsl MainLoop
    sep #$20
    lda #$00
    pha
    plb
    rep #$30
.a16
.i16
    clc
    xce
.a8
.i8
    lda #$00
    .db $00,$5b,$a2,$ff,$02,$9a,$e2,$30,$78,$22,$bc,$ea,$03,$20,$28,$ea
    .db $80,$d0

ClearMemory:    ; zero-fills most of WRAM and SuperFX RAM; MainInit calls it right after InitHardwareRegisters (code)
    php
    sep #$20
    lda #$7e
    pha
    plb
    rep #$30
.a16
.i16
    ldx #$2000

loc_03ea34:
    stz $0000,x
    stz $0002,x
    stz $0004,x
    stz $0006,x
    txa
    clc
    adc #$0008
    tax
    bne loc_03ea34
    sep #$20
.a8
    lda #$7f
    pha
    plb
    rep #$20

loc_03ea50:
.a16
    stz $0000,x
    stz $0002,x
    stz $0004,x
    stz $0006,x
    txa
    clc
    adc #$0008
    tax
    bne loc_03ea50
    sep #$20
.a8
    lda #$70
    pha
    plb
    rep #$30
.a16
    ldx #$3912

loc_03ea6f:
    dex
    dex
    stz $0000,x
    bne loc_03ea6f
    ldx #$3a48

loc_03ea79:
    stz $0000,x
    inx
    inx
    bne loc_03ea79
    jsl sub_0bf03f
    sep #$20
.a8
    lda #$00
    pha
    plb
    rep #$20
.a16
    ldx #$1cf8

loc_03ea8f:
    stz $0300,x
    stz $0302,x
    stz $0304,x
    stz $0306,x
    txa
    sec
    sbc #$0008
    tax
    bpl loc_03ea8f
    ldx #$00fe

loc_03eaa6:
    stz $00,x
    dex
    dex
    bpl loc_03eaa6
    jsl CopyRamOverlays
    sep #$20
.a8
    lda STAT78
    and #$10
    sta $1650
    plp
.i8
    rts

InitHardwareRegisters:    ; writes the PPU, IRQ, math and DMA-enable registers once; first call of MainInit (code)
    sei
    lda #$01
    sta $163e
    jsl sub_038f57
    sep #$30
    lda #$00
    sta $163e
    jsl sub_038f57
    sep #$30
    lda #$8f
    sta INIDISP
    lda #$00
    sta OBSEL
    sta OAMADDL
    sta OAMADDH
    sta BGMODE
    sta MOSAIC
    sta BG1SC
    sta BG2SC
    sta BG3SC
    sta BG4SC
    sta BG12NBA
    sta BG34NBA
    sta BG1HOFS
    sta BG1HOFS
    sta BG1VOFS
    sta BG1VOFS
    sta BG2HOFS
    sta BG2HOFS
    sta BG2VOFS
    sta BG2VOFS
    sta BG3HOFS
    sta BG3VOFS
    sta BG3VOFS
    sta BG4HOFS
    sta BG4HOFS
    sta BG4VOFS
    sta BG4VOFS
    ldx #$80
    stx VMAIN
    sta VMADDL
    sta VMADDH
    sta M7SEL
    ldx #$01
    sta M7A
    stx M7A
    sta M7B
    sta M7B
    sta M7C
    sta M7C
    sta M7D
    stx M7D
    sta M7X
    sta M7X
    sta M7Y
    sta M7Y
    sta CGADD
    sta CGDATA
    sta W12SEL
    sta W34SEL
    sta WOBJSEL
    sta WH0
    sta WH1
    sta WH2
    sta WH3
    sta WBGLOG
    sta WOBJLOG
    sta TM
    sta TS
    sta TMW
    ldy #$30
    sty CGWSEL
    sta CGADSUB
    ldx #$e0
    stx COLDATA
    sta SETINI
    sta NMITIMEN
    ldx #$ff
    stx WRIO
    sta WRMPYA
    sta WRMPYB
    sta WRDIVL
    sta WRDIVH
    sta WRDIVB
    sta HTIMEL
    sta HTIMEH
    sta VTIMEL
    sta VTIMEH
    sta MDMAEN
    sta HDMAEN
    sta MEMSEL
    lda STAT78
    rtl

sub_03ebc6:
.i16
    rtl

CheckVideoRegion:    ; tests STAT78 bit 4 (PAL) and goes to the error screen at loc_03ecaf on PAL (code)
.i8
    php
    phb
    sep #$30
    lda #$00
    pha
    plb
    stz $02
    lda STAT78
    bit #$10
    bne loc_03ebdf
    lda $02
    beq loc_03ebe6
    brl loc_03ecaf

loc_03ebdf:
    lda $02
    bne loc_03ebe6
    brl loc_03ecaf

loc_03ebe6:
    plb
    plp
    rts

CheckControllers:    ; strobes JOYSER0 and reads 16 bits per port; anything but a standard pad goes to the error screen at loc_03ece6 (code)
    php
    phb
    sep #$30
    lda #$00
    pha
    plb
    stz NMITIMEN
    stz JOYSER0
    jsr sub_03ec98
    stz $02
    stz $08
    lda #$01
    sta JOYSER0
    stz JOYSER0
    ldx #$10

loc_03ec08:
    lda JOYSER0
    lsr a
    rol $02
    lda JOYSER1
    lsr a
    rol $08
    dex
    bne loc_03ec08
    lda JOYSER0
    sta $04
    lda JOYSER1
    sta $0a
    lda $02
    and #$0f
    bne loc_03ec3d
    jsr sub_03ec40
    bcs loc_03ec3d
    lda $08
    and #$0f
    bne loc_03ec3d
    jsr sub_03ec6c
    bcs loc_03ec3d
    stz JOYSER0
    plb
    plp
    rts

loc_03ec3d:
    jmp loc_03ece6

sub_03ec40:
    lda JOYSER0
    ora #$01
    sta JOYSER0
    ldx #$08

loc_03ec4a:
    lda JOYSER0
    and #$02
    beq loc_03ec68
    dex
    bne loc_03ec4a
    lda JOYSER0
    and #$fe
    sta JOYSER0
    ldx #$08

loc_03ec5e:
    lda JOYSER0
    and #$02
    beq loc_03ec6a
    dex
    bne loc_03ec5e

loc_03ec68:
    clc
    rts

loc_03ec6a:
    sec
    rts

sub_03ec6c:
    lda JOYSER0
    ora #$01
    sta JOYSER0
    ldx #$08

loc_03ec76:
    lda JOYSER1
    and #$02
    beq loc_03ec94
    dex
    bne loc_03ec76
    lda JOYSER0
    and #$fe
    sta JOYSER0
    ldx #$08

loc_03ec8a:
    lda JOYSER1
    and #$02
    beq loc_03ec96
    dex
    bne loc_03ec8a

loc_03ec94:
    clc
    rts

loc_03ec96:
    sec
    rts

sub_03ec98:
    lda RDNMI
    bit #$80
    beq sub_03ec98
    lda RDNMI
    ldx #$96

loc_03eca4:
    dex
    bne loc_03eca4

loc_03eca7:
    lda HVBJOY
    bit #$01
    bne loc_03eca7
    rts

loc_03ecaf:
    sep #$20
    rep #$10
.i16
    lda #$00
    pha
    plb
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$b55c
    sta $700068
    lda #$4000
    sta $17e4
    lda #$0800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    bra loc_03ed1b

loc_03ece6:
.i8
    sep #$20
    rep #$10
.i16
    lda #$00
    pha
    plb
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$b424
    sta $700068
    lda #$4000
    sta $17e4
    lda #$0800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3

loc_03ed1b:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0018
    sta $70006a
    lda #$f9f5
    sta $700068
    lda #$0000
    sta $17e4
    lda #$2000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rep #$30
.a16
    phx
    lda #$af24
    sta $700068
    lda #$6e18
    sta $70002c
    lda #$0000
    sta $7000a2
    sep #$20
.a8
    lda #$18
    sta $70006a
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plx
    sep #$20
    rep #$10
    lda #$22
    sta BBAD0
    lda #$00
    sta CGADD
    ldx #$7998
    stx A1TL0
    lda #$70
    sta A1B0
    ldx #$0200
    stx DASL0
    lda #$00
    sta DMAP0
    lda #$01
    sta MDMAEN
    stz BGMODE
    lda #$40
    sta BG1SC
    lda #$00
    sta BG12NBA
    lda #$01
    sta TM
    lda #$0f
    sta INIDISP

loc_03edb2:
    bra loc_03edb2

sub_03edb4:
.a16
    php
    sep #$20
.a8
    sta $004202
    txa
    sta $004203
    nop
    nop
    nop
    nop
    rep #$20
.a16
    lda $004216
    plp
    rts

sub_03edcc:
    php
    rep #$20
    bit #$ff00
    beq loc_03edf4
    pha
    and #$00ff
    jsr sub_03edb4
    sta $5f
    pla
    and #$ff00
    xba
    jsr sub_03edb4
    xba
    pha
    and #$00ff
    tax
    pla
    and #$ff00
    clc
    adc $5f
    plp
    rtl

loc_03edf4:
    jsr sub_03edb4
    ldx #$0000
    plp
    rtl
    .db $20,$2c,$ee,$6b

sub_03ee00:
.a8
    jsr sub_03ee73
    rtl

sub_03ee04:
    jsr sub_03f079
    rtl

sub_03ee08:
    jsr sub_03f0cc
    rtl
    .db $20,$51,$ef,$6b,$20,$a1,$ee,$6b,$20,$87,$ef,$6b,$20,$00,$f0,$6b
    .db $20,$24,$f1,$6b,$20,$6c,$f1,$6b,$20,$b4,$f1,$6b,$20,$0f,$f2,$6b
    .db $8b,$48,$a9,$7e,$48,$ab,$68,$8d,$c0,$1b,$a9,$08,$8d,$c1,$1b,$c2
    .db $20,$8a,$99,$3f,$e8,$c8,$c8,$e2,$20,$0e,$c0,$1b,$b0,$04,$a9,$00
    .db $80,$02,$a9,$01,$c2,$20,$29,$ff,$00,$18,$69,$40,$30,$99,$3f,$e8
    .db $c8,$c8,$e2,$20,$ce,$c1,$1b,$f0,$0c,$c2,$20,$8a,$18,$69,$08,$00
    .db $aa,$e2,$20,$80,$ca,$ab,$60

sub_03ee73:
    lda #$80
    sta VMAIN
    ldx #$0000
    stx VMADDL
    lda #$09
    sta DMAP0
    lda #$18
    sta BBAD0
    ldx #$ee9f
    stx A1TL0
    lda #$03
    sta A1B0
    ldx #$0000
    stx DASL0
    lda #$01
    sta MDMAEN
    rts
    .db $00,$00,$8b,$a9,$7e,$48,$ab,$ad,$93,$12,$8d,$29,$1c,$ad,$2e,$1c
    .db $8d,$2c,$1c,$ad,$2d,$1c,$8d,$2b,$1c,$22,$0c,$ee,$03,$ad,$2c,$1c
    .db $8d,$2e,$1c,$ad,$2b,$1c,$8d,$2d,$1c,$ad,$2d,$1c,$89,$80,$f0,$05
    .db $ad,$2d,$1c,$89,$08,$d0,$2d,$ad,$2d,$1c,$89,$80,$f0,$05,$ad,$2d
    .db $1c,$89,$04,$d0,$2e,$ad,$2d,$1c,$89,$80,$f0,$05,$ad,$2d,$1c,$89
    .db $02,$d0,$30,$ad,$2d,$1c,$89,$80,$f0,$05,$ad,$2d,$1c,$89,$01,$d0
    .db $31,$82,$4c,$00,$ad,$20,$1c,$3a,$10,$04,$ad,$24,$1c,$3a,$8d,$20
    .db $1c,$80,$2d,$ad,$20,$1c,$1a,$cd,$24,$1c,$d0,$02,$a9,$00,$8d,$20
    .db $1c,$80,$1d,$ad,$1f,$1c,$3a,$10,$04,$ad,$23,$1c,$3a,$8d,$1f,$1c
    .db $80,$0e,$ad,$1f,$1c,$1a,$cd,$23,$1c,$d0,$02,$a9,$00,$8d,$1f,$1c
    .db $a9,$01,$0c,$28,$1c,$c2,$20,$a9,$03,$00,$22,$09,$6e,$7f,$e2,$20
    .db $ab,$60,$ad,$2c,$1c,$3a,$10,$02,$a9,$00,$8d,$2c,$1c,$a9,$80,$1c
    .db $2b,$1c,$ad,$29,$1c,$89,$0f,$d0,$07,$8d,$2b,$1c,$9c,$2c,$1c,$60
    .db $2c,$2b,$1c,$8d,$2b,$1c,$f0,$05,$ad,$2c,$1c,$d0,$0a,$a9,$80,$0c
    .db $2b,$1c,$a9,$0a,$8d,$2c,$1c,$60,$8b,$a9,$7e,$48,$ab,$ad,$93,$12
    .db $8d,$29,$1c,$ad,$2e,$1c,$8d,$2c,$1c,$ad,$2d,$1c,$8d,$2b,$1c,$22
    .db $0c,$ee,$03,$ad,$2c,$1c,$8d,$2e,$1c,$ad,$2b,$1c,$8d,$2d,$1c,$ad
    .db $2d,$1c,$89,$80,$f0,$05,$ad,$2d,$1c,$89,$08,$d0,$10,$ad,$2d,$1c
    .db $89,$80,$f0,$05,$ad,$2d,$1c,$89,$04,$d0,$16,$80,$32,$ad,$20,$1c
    .db $3a,$10,$04,$ad,$24,$1c,$3a,$8d,$20,$1c,$a9,$01,$0c,$28,$1c,$80
    .db $13,$ad,$20,$1c,$1a,$cd,$24,$1c,$d0,$02,$a9,$00,$8d,$20,$1c,$a9
    .db $01,$0c,$28,$1c,$c2,$20,$a9,$03,$00,$22,$09,$6e,$7f,$e2,$20,$ab
    .db $60,$8b,$a9,$7e,$48,$ab,$ad,$93,$12,$8d,$29,$1c,$ad,$2e,$1c,$8d
    .db $2c,$1c,$ad,$2d,$1c,$8d,$2b,$1c,$22,$0c,$ee,$03,$ad,$2c,$1c,$8d
    .db $2e,$1c,$ad,$2b,$1c,$8d,$2d,$1c,$ad,$2d,$1c,$89,$80,$f0,$05,$ad
    .db $2d,$1c,$89,$02,$d0,$10,$ad,$2d,$1c,$89,$80,$f0,$05,$ad,$2d,$1c
    .db $89,$01,$d0,$16,$80,$32,$ad,$1f,$1c,$3a,$10,$04,$ad,$23,$1c,$3a
    .db $8d,$1f,$1c,$a9,$01,$0c,$28,$1c,$80,$13,$ad,$1f,$1c,$1a,$cd,$23
    .db $1c,$d0,$02,$a9,$00,$8d,$1f,$1c,$a9,$01,$0c,$28,$1c,$c2,$20,$a9
    .db $03,$00,$22,$09,$6e,$7f,$e2,$20,$ab,$60

sub_03f079:
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $1296
    bit #$0800
    sep #$20
.a8
    bne loc_03f098
    rep #$20
.a16
    lda $1296
    bit #$2400
    sep #$20
.a8
    bne loc_03f0ac
    bra loc_03f0ca

loc_03f098:
    lda $1c20
    dec a
    bpl loc_03f0a2
    lda $1c24
    dec a

loc_03f0a2:
    sta $1c20
    lda #$01
    tsb $1c28
    bra loc_03f0bf

loc_03f0ac:
    lda $1c20
    inc a
    cmp $1c24
    bne loc_03f0b7
    lda #$00

loc_03f0b7:
    sta $1c20
    lda #$01
    tsb $1c28

loc_03f0bf:
    rep #$20
.a16
    lda #$0003
    jsl QueueSound
    sep #$20

loc_03f0ca:
.a8
    plb
    rts

sub_03f0cc:
    phb
    lda #$7e
    pha
    plb
    lda #$01
    trb $1c28
    rep #$20
.a16
    lda $1296
    bit #$0200
    sep #$20
.a8
    bne loc_03f0f0
    rep #$20
.a16
    lda $1296
    bit #$0100
    sep #$20
.a8
    bne loc_03f104
    bra loc_03f122

loc_03f0f0:
    lda $1c1f
    dec a
    bpl loc_03f0fa
    lda $1c23
    dec a

loc_03f0fa:
    sta $1c1f
    lda #$01
    tsb $1c28
    bra loc_03f117

loc_03f104:
    lda $1c1f
    inc a
    cmp $1c23
    bne loc_03f10f
    lda #$00

loc_03f10f:
    sta $1c1f
    lda #$01
    tsb $1c28

loc_03f117:
    rep #$20
.a16
    lda #$0003
    jsl QueueSound
    sep #$20

loc_03f122:
.a8
    plb
    rts

loc_03f124:
.a16
    lda #$1c01
    plp
    trb $97ad
    ora ($89)
    php
    bne $f139
    lda $1297
    bit #$d004
    asl $80,x
    and ($ad)
    and $1c
    dec a
    bpl loc_03f143
    lda $1c27
    dec a

loc_03f143:
    sta $1c25
    lda #$0c01
    plp
    trb $1380
    lda $1c25
    inc a
    cmp $1c27
    bne $f158
    lda #$8d00
    and $1c
    lda #$0c01
    plp
    trb $20c2
    lda #$0003
    jsl QueueSound
    sep #$20
.a8
    rts
    .db $a9,$01,$1c,$28,$1c,$ad,$97,$12,$89,$02,$d0,$09,$ad,$97,$12,$89
    .db $01,$d0,$16,$80,$32,$ad,$25,$1c,$3a,$10,$04,$ad,$27,$1c,$3a,$8d
    .db $25,$1c,$a9,$01,$0c,$28,$1c,$80,$13,$ad,$25,$1c,$1a,$cd,$27,$1c
    .db $d0,$02,$a9,$00,$8d,$25,$1c,$a9,$01,$0c,$28,$1c,$c2,$20,$a9,$03
    .db $00,$22,$09,$6e,$7f,$e2,$20,$60,$08,$8b,$a9,$7e,$48,$ab,$e2,$20
    .db $c2,$10,$a9,$87,$8d,$5b,$1c,$a9,$00,$8d,$5c,$1c,$ad,$53,$1c,$29
    .db $0f,$8d,$51,$1c,$a9,$18,$85,$00,$a5,$00,$d0,$fc,$ad,$85,$ec,$3a
    .db $8d,$85,$ec,$10,$ef,$a9,$01,$8d,$85,$ec,$ad,$5c,$1c,$18,$69,$10
    .db $8d,$5c,$1c,$c9,$f0,$d0,$dd,$a9,$80,$8d,$5b,$1c,$9c,$5c,$1c,$ad
    .db $53,$1c,$8d,$51,$1c,$a9,$18,$85,$00,$a5,$00,$d0,$fc,$9c,$5b,$1c
    .db $ab,$28,$60,$08,$8b,$a9,$7e,$48,$ab,$e2,$20,$c2,$10,$a9,$87,$8d
    .db $5b,$1c,$a9,$f0,$8d,$5c,$1c,$ad,$53,$1c,$29,$0f,$8d,$51,$1c,$a9
    .db $18,$85,$00,$a5,$00,$d0,$fc,$ad,$85,$ec,$3a,$8d,$85,$ec,$10,$ef
    .db $a9,$01,$8d,$85,$ec,$ad,$5c,$1c,$38,$e9,$10,$8d,$5c,$1c,$c9,$00
    .db $d0,$dd,$a9,$80,$8d,$5b,$1c,$9c,$5c,$1c,$ad,$53,$1c,$8d,$51,$1c
    .db $a9,$18,$85,$00,$a5,$00,$d0,$fc,$9c,$5b,$1c,$ab,$28,$60

sub_03f26a:
    phb
    lda #$00
    pha
    plb
    jsl sub_0387ac
    sei
    jsr sub_03f28e
    jsr sub_03f2e7
    jsr sub_03f315
    jsr sub_03f343
    jsr sub_03f344
    jsr sub_03f45d
    jsr sub_03f48b
    jsr sub_03f4e7
    plb
    rtl

sub_03f28e:
    lda #$09
    sta BGMODE
    lda #$41
    sta BG1SC
    lda #$48
    sta BG2SC
    lda #$50
    sta BG3SC
    lda #$00
    sta BG12NBA
    lda #$02
    sta BG34NBA
    lda #$03
    sta OBSEL
    lda #$17
    sta TM
    sta $1c51
    sta $1c53
    rep #$30
.a16
    lda $142c
    ora #$0020
    sta $142c
    ldx #$1342
    sep #$20
.a8
    rep #$10
    lda #$06
    sta $0005,x
    lda #$02
    sta $0006,x
    lda #$10
    sta $0007,x
    jsl sub_04edb5
    lda #$00
    sta $129b
    rts

sub_03f2e7:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0018
    sta $70006a
    lda #$f499
    sta $700068
    lda #$0000
    sta $17e4
    lda #$4000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_03f315:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$abac
    sta $700068
    lda #$4000
    sta $17e4
    lda #$1000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_03f343:
    rts

sub_03f344:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$a1d4
    sta $700068
    lda #$4800
    sta $17e4
    lda #$0800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rep #$20
.a16
    ldx #$0000
    ldy #$0000
    lda #$0740
    sta $02
    jsl sub_04ac5b
    lda #$0010
    sta $02
    lda #$000f
    sta $08
    lda #$006d
    sta $97
    lda $7eda35
    sta $00005f
    jsl sub_04ac79
    lda #$0010
    sta $02
    lda #$0011
    sta $08
    lda #$007d
    sta $97
    lda $7eda31
    sta $00005f
    jsl sub_04ac79
    lda $1b86
    bit #$0002
    beq loc_03f3d8
    lda #$0010
    sta $02
    lda #$0017
    sta $08
    lda #$00fa
    sta $97
    lda #$0006
    sta $5f
    jsl sub_04ac90

loc_03f3d8:
    lda $7eda27
    cmp #$0002
    beq loc_03f408
    lda #$0002
    sta $02
    lda #$0012
    sta $08
    lda #$0131
    sta $97
    lda #$001c
    sta $5f
    lda #$0006
    sta $1bca

loc_03f3fb:
    jsl sub_04ac79
    inc $08
    dec $1bca
    bne loc_03f3fb
    bra loc_03f45a

loc_03f408:
    phb
    lda #$7e7e
    pha
    plb
    plb
    lda #$000a
    sta $02
    lda #$0013
    sta $08
    lda #$0093
    sta $97
    lda $d7f2
    asl a
    tax
    lda $0df81b,x
    sta $1bc0
    ldx #$0003
    jsl sub_04acb2
    lda #$0012
    sta $02
    lda $1bc0
    ldx #$0003
    jsl sub_04acb2
    lda #$0010
    sta $02
    lda #$0015
    sta $08
    lda #$0093
    sta $97
    lda #$0064
    ldx #$0003
    jsl sub_04acb2
    plb

loc_03f45a:
    sep #$20
.a8
    rts

sub_03f45d:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$8ef8
    sta $700068
    lda #$2000
    sta $17e4
    lda #$1000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_03f48b:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$a88c
    sta $700068
    lda #$5000
    sta $17e4
    lda #$0800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

loc_03f4b9:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0017
    sta $70006a
    lda #$9bf8
    sta $700068
    lda #$6000
    sta $17e4
    lda #$4000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_03f4e7:
    rep #$30
.a16
    phx
    lda #$af24
    sta $700068
    lda #$6e18
    sta $70002c
    lda #$0000
    sta $7000a2
    sep #$20
.a8
    lda #$18
    sta $70006a
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plx
    sep #$20
    rep #$10
    lda #$22
    sta BBAD0
    lda #$00
    sta CGADD
    ldx #$7998
    stx A1TL0
    lda #$70
    sta A1B0
    ldx #$0200
    stx DASL0
    lda #$00
    sta DMAP0
    lda #$01
    sta MDMAEN
    lda #$70
    sta $17ee
    ldx #$7998
    stx $17ec
    ldx #$0200
    stx $17ef
    lda #$00
    ldx #$efe5
    jsl sub_7f0a6e
    lda #$70
    sta $17ee
    ldx #$8658
    stx $17ec
    ldx #$0100
    stx $17ef
    lda #$00
    ldx #$f3e5
    jsl sub_7f0a6e
    rts

sub_03f56f:
    phb
    lda #$00
    pha
    plb
    jsl sub_0387ac
    sei
    jsr sub_03f587
    jsr sub_03f5ba
    jsr sub_03f5bb
    jsr sub_03f62c
    plb
    rtl

sub_03f587:
    jsr sub_03f28e
    rts

loc_03f58b:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0018
    sta $70006a
    lda #$f499
    sta $700068
    lda #$0000
    sta $17e4
    lda #$4000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts
    .db $60

sub_03f5ba:
    rts

sub_03f5bb:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$ab0c
    sta $700068
    lda #$4800
    sta $17e4
    lda #$0800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rep #$20
.a16
    ldx #$0000
    ldy #$0000
    lda #$0740
    sta $02
    jsl sub_04ac5b
    sep #$20
.a8
    rts
    .db $60,$60,$c2,$20,$a9,$00,$00,$8f,$a2,$00,$70,$a9,$18,$00,$8f,$6a
    .db $00,$70,$a9,$b1,$d5,$8f,$68,$00,$70,$a9,$00,$60,$8d,$e4,$17,$a9
    .db $00,$20,$8d,$e6,$17,$e2,$20,$22,$0a,$d6,$03,$22,$a3,$0d,$7f,$60

sub_03f62c:
    rep #$30
.a16
    phx
    lda #$af24
    sta $700068
    lda #$6e18
    sta $70002c
    lda #$0000
    sta $7000a2
    sep #$20
.a8
    lda #$18
    sta $70006a
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plx
    sep #$20
    rep #$10
    lda #$22
    sta BBAD0
    lda #$00
    sta CGADD
    ldx #$7998
    stx A1TL0
    lda #$70
    sta A1B0
    ldx #$0200
    stx DASL0
    lda #$00
    sta DMAP0
    lda #$01
    sta MDMAEN
    rts

sub_03f680:
    phb
    lda #$00
    pha
    plb
    jsl sub_0387ac
    sei
    jsr sub_03f69e
    jsr sub_03f6e7
    jsr sub_03f715
    jsr sub_03f45d
    jsr sub_03f48b
    jsr sub_03f784
    plb
    rtl

sub_03f69e:
    lda #$09
    sta BGMODE
    lda #$40
    sta BG1SC
    lda #$48
    sta BG2SC
    lda #$50
    sta BG3SC
    lda #$00
    sta BG12NBA
    lda #$02
    sta BG34NBA
    lda #$03
    sta OBSEL
    lda #$16
    sta TM
    sta $1c51
    sta $1c53
    lda #$02
    sta TS
    lda #$02
    sta CGWSEL
    lda #$10
    sta CGADSUB
    jsl sub_04edb5
    lda #$00
    sta $129b
    rts
    .db $60,$60

sub_03f6e7:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0018
    sta $70006a
    lda #$f499
    sta $700068
    lda #$0000
    sta $17e4
    lda #$4000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_03f715:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$a4c0
    sta $700068
    lda #$4800
    sta $17e4
    lda #$0800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rep #$20
.a16
    ldx #$0000
    ldy #$0000
    lda #$0740
    sta $02
    jsl sub_04ac5b
    sep #$20
.a8
    rts

loc_03f756:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0018
    sta $70006a
    lda #$d5b1
    sta $700068
    lda #$6000
    sta $17e4
    lda #$2000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_03f784:
    rep #$30
.a16
    phx
    lda #$af24
    sta $700068
    lda #$6e18
    sta $70002c
    lda #$0000
    sta $7000a2
    sep #$20
.a8
    lda #$18
    sta $70006a
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plx
    sep #$20
    rep #$10
    lda #$22
    sta BBAD0
    lda #$00
    sta CGADD
    ldx #$7998
    stx A1TL0
    lda #$70
    sta A1B0
    ldx #$0200
    stx DASL0
    lda #$00
    sta DMAP0
    lda #$01
    sta MDMAEN
    rts
    .incbin "data/01f7d8-020000.bin"
