.rombank $07

sub_078000:
.cpu
.a8
.i16
    phy
    php
    sep #$20
    rep #$10
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_078015
    jmp loc_078038

loc_078015:
    lda $1d72
    bne loc_07803e
    rep #$30
.a16
    ldy $2b,x
    lda $6a9a,y
    beq loc_07803b
    lda #$803b
    dec a
    pha
    sep #$20
.a8
    lda $6a9c,y
    pha
    rep #$20
.a16
    lda $6a9a,y
    dec a
    pha
    sep #$20
.a8
    rtl

loc_078038:
    jsr sub_0796dc

loc_07803b:
    plp
    ply
    rtl

loc_07803e:
    jsr sub_0796dc
    jsl sub_079df6
    plp
    ply
    rtl
    .db $08,$e2,$20,$c2,$10,$b4,$2b,$5a,$b4,$2b,$b9,$64,$6b,$7a,$89,$04
    .db $d0,$04,$5c,$68,$80,$07,$ad,$9d,$1d,$09,$80,$8d,$9d,$1d,$80,$06
    .db $ad,$9d,$1d,$8d,$9d,$1d,$20,$ec,$84,$22,$ab,$9a,$07,$20,$8b,$96
    .db $20,$f0,$96,$22,$ef,$9a,$07,$22,$88,$94,$07,$22,$f6,$9d,$07,$28
    .db $60
    php
    sep #$20
    rep #$10
    lda $1d9d
    sta $1d9d
    jsr sub_0784ec
    jsl sub_079aab
    jsr sub_07968b
    jsr sub_0796f0
    jsl sub_079aef
    jsl sub_079488
    jsl sub_079489
    jsl sub_079df6
    plp
    rts
    .db $08,$e2,$20,$c2,$10,$ad,$13,$1e,$c9,$01,$f0,$04,$5c,$d7,$80,$07
    .db $b5,$21,$29,$20,$d0,$04,$5c,$d7,$80,$07,$ad,$9d,$1d,$09,$80,$8d
    .db $9d,$1d,$80,$06,$ad,$9d,$1d,$8d,$9d,$1d,$22,$ef,$9a,$07,$20,$2c
    .db $81,$22,$ab,$9a,$07,$da,$b4,$2b,$b9,$eb,$6b,$89,$80,$f0,$04,$5c
    .db $17,$81,$07,$a2,$3f,$03,$c2,$20,$b5,$0c,$85,$02,$b5,$10,$85,$97
    .db $22,$71,$db,$0d,$e2,$20,$a5,$02,$f0,$03,$82,$07,$00,$b9,$63,$6b
    .db $09,$02,$80,$05,$b9,$63,$6b,$29,$fd,$99,$63,$6b,$fa,$20,$8b,$96
    .db $20,$f0,$96,$22,$f6,$9d,$07,$28,$60,$da,$5a,$08,$e2,$20,$c2,$10
    .db $b4,$2b,$5a,$c2,$20,$b9,$bb,$6a,$8d,$ae,$1d,$e2,$20,$c2,$20,$ad
    .db $ae,$1d,$49,$ff,$ff,$1a,$8d,$ae,$1d,$e2,$20,$c2,$20,$ad,$ae,$1d
    .db $99,$33,$6b,$e2,$20,$c2,$20,$b9,$33,$6b,$38,$f9,$39,$6b,$99,$33
    .db $6b,$e2,$20,$c2,$20,$b9,$39,$6b,$c9,$00,$00,$f0,$1c,$30,$0e,$38
    .db $e9,$00,$01,$c9,$00,$00,$10,$11,$a9,$00,$00,$80,$0c,$18,$69,$00
    .db $01,$c9,$00,$00,$30,$03,$a9,$00,$00,$99,$39,$6b,$e2,$20,$c2,$20
    .db $b9,$3d,$6b,$85,$3a,$a9,$00,$00,$22,$a3,$25,$7f,$99,$3d,$6b,$e2
    .db $20,$c2,$20,$b9,$35,$6b,$85,$3a,$a9,$00,$00,$22,$34,$25,$7f,$99
    .db $35,$6b,$e2,$20,$7a,$c2,$20,$b9,$ed,$6b,$8d,$c2,$1d,$b9,$ef,$6b
    .db $8d,$c4,$1d,$b9,$f1,$6b,$8d,$c6,$1d,$a9,$00,$00,$8d,$b0,$1d,$e2
    .db $20,$20,$7a,$8a,$20,$bf,$88,$c2,$20,$ad,$c2,$1d,$99,$c1,$6a,$ad
    .db $c6,$1d,$99,$c5,$6a,$e2,$20,$20,$a3,$90,$28,$7a,$fa,$60

sub_0781f1:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda #$0000
    sta $1dae
    sep #$20
.a8
    lda $6b7d,y
    bit #$80
    beq loc_07820e
    jml loc_078286

loc_07820e:
    lda $6b7d,y
    bit #$10
    beq loc_078219
    jml loc_078286

loc_078219:
    lda $6b7d,y
    bit #$08
    beq loc_078224
    jml loc_07825e

loc_078224:
    lda $6b7d,y
    bit #$40
    beq loc_07822f
    jml loc_07825e

loc_07822f:
    lda $6b7d,y
    bit #$80
    bne loc_07823a
    jml loc_07829d

loc_07823a:
    rep #$20
.a16
    lda #$0010
    clc
    adc $1e0f
    sec
    sbc $0e,x
    php
    sta $3c
    plp
    sep #$20
.a8
    bpl loc_078252
    jml loc_078320

loc_078252:
    rep #$20
.a16
    lda $3c
    sta $1dae
    sep #$20
.a8
    jmp loc_078320

loc_07825e:
    rep #$20
.a16
    lda #$fff0
    clc
    adc $1e0f
    sec
    sbc $0e,x
    clc
    adc $6b5a,y
    php
    sta $3c
    plp
    sep #$20
.a8
    bmi loc_07827a
    jml loc_078320

loc_07827a:
    rep #$20
.a16
    lda $3c
    sta $1dae
    sep #$20
.a8
    jmp loc_078320

loc_078286:
    rep #$20
.a16
    lda #$0000
    sta $6b37,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $6b31,y
    sep #$20
.a8
    jmp loc_0784d9

loc_07829d:
    rep #$20
.a16
    lda #$0003
    sta $1db0
    sep #$20
.a8
    rep #$20
.a16
    lda #$ffe2
    sta $1dae
    sep #$20
.a8
    rep #$20
.a16
    lda $1dae
    clc
    adc $6b5c,y
    sta $1dae
    sep #$20
.a8
    rep #$20
.a16
    lda $6b5a,y
    cmp $1dae
    sep #$20
.a8
    bne loc_0782cf
    jml loc_0782f2

loc_0782cf:
    rep #$20
.a16
    beq loc_0782ef
    bmi loc_0782e3
    sec
    sbc $1db0
    cmp $1dae
    bpl loc_0782ef
    lda $1dae
    bra loc_0782ef

loc_0782e3:
    clc
    adc $1db0
    cmp $1dae
    bmi loc_0782ef
    lda $1dae

loc_0782ef:
    sta $6b5a,y

loc_0782f2:
.a8
    sep #$20
    bra loc_0782fe
    .db $b9,$63,$6b,$29,$e7,$99,$63,$6b

loc_0782fe:
    rep #$20
.a16
    lda $6b5a,y
    sta $1dae
    sep #$20
.a8
    rep #$20
.a16
    lda $1dae
    sec
    sbc $6b75,y
    sta $1dae
    sep #$20
.a8
    rep #$20
.a16
    lda #$0064
    sta $1db0
    sep #$20

loc_078320:
.a8
    lda $6aa0,y
    and #$f0
    cmp #$10
    bne loc_07832d
    jml loc_078356

loc_07832d:
    lda $1e13
    cmp #$01
    beq loc_078338
    jml loc_078356

loc_078338:
    lda $21,x
    and #$20
    bne loc_078342
    jml loc_078356

loc_078342:
    rep #$20
.a16
    lda $6ac3,y
    sec
    sbc $6bf3,y
    bmi loc_078354
    clc
    adc $1dae
    sta $1dae

loc_078354:
    sep #$20

loc_078356:
.a8
    phy
    ldy $2b,x
    lda $6b63,y
    ply
    and #$80
    bne loc_078365
    jml loc_078375

loc_078365:
    rep #$20
.a16
    lda $1dae
    clc
    adc #$fff1
    sta $1dae
    sep #$20
.a8
    bra loc_078375

loc_078375:
    lda #$00
    sta $02
    lda $1dae
    sta $08
    lda #$64
    sta $97
    phy
    ldy #$033f
    jsl sub_079721
    ply
    rep #$20
.a16
    lda $04
    sta $1dae
    lda $0a
    sta $1db0
    sep #$20
.a8
    lda $1daf
    bmi loc_0783a6
    cmp #$28
    bmi loc_0783af
    lda #$28
    bra loc_0783ac

loc_0783a6:
    cmp #$d8
    bpl loc_0783af
    lda #$d8

loc_0783ac:
    sta $1daf

loc_0783af:
    lda $1b4d
    and #$07
    cmp #$02
    bne loc_0783fa
    phy
    ldy $2b,x
    lda $6a82,y
    ply
    cmp #$01
    beq loc_0783c7
    jml loc_0783fa

loc_0783c7:
    sep #$20
    phy
    ldy $2b,x
    lda $6b7d,y
    ply
    bit #$40
    bne loc_0783d8
    jml loc_0783e5

loc_0783d8:
    rep #$20
.a16
    lda $1dae
    sep #$20
.a8
    bmi loc_0783e5
    jml loc_07842e

loc_0783e5:
    rep #$20
.a16
    lda $6b31,y
    sta $3a
    lda $1dae
    jsl sub_7f2534
    sta $6b31,y
    sep #$20
.a8
    bra loc_07842e

loc_0783fa:
    lda $6b94,y
    bit #$08
    beq loc_078405
    jml loc_078419

loc_078405:
    lda $24,x
    and #$02
    beq loc_07840f
    jml loc_078419

loc_07840f:
    rep #$20
.a16
    lda $6ac3,y
    sec
    sbc $0e,x
    bra loc_07842e

loc_078419:
.a8
    sep #$20
    rep #$20
.a16
    lda $6b31,y
    sta $3a
    lda $1dae
    jsl sub_7f2534
    sta $6b31,y
    sep #$20

loc_07842e:
.a8
    sep #$20
    phy
    ldy $2b,x
    lda $6b94,y
    ply
    and #$07
    cmp #$02
    bcc loc_078441
    jml loc_07844b

loc_078441:
    lda $24,x
    and #$02
    beq loc_07844b
    jml loc_078457

loc_07844b:
    rep #$20
.a16
    lda #$0000
    sta $1dae
    sep #$20
.a8
    bra loc_0784c1

loc_078457:
    phx
    lda #$00
    xba
    lda $1ccb,x
    and #$7f
    tax
    lda $0784dc,x
    plx
    sta $1dae
    lda #$00
    sta $1daf
    rep #$20
.a16
    lda $6b37,y
    sta $1db0
    sep #$20
.a8
    rep #$20
.a16
    lda $1db0
    cmp $1dae
    beq loc_0784bc
    sec
    sbc $1dae
    cmp #$0000
    bmi loc_078495
    cmp #$0008
    bpl loc_07849d
    lda #$0008
    bra loc_07849d

loc_078495:
    cmp #$fff8
    bmi loc_07849d
    lda #$fff8

loc_07849d:
    cmp #$8000
    ror a
    bpl loc_0784a6
    adc #$0000

loc_0784a6:
    cmp #$8000
    ror a
    bpl loc_0784af
    adc #$0000

loc_0784af:
    cmp #$8000
    ror a
    bpl loc_0784b8
    adc #$0000

loc_0784b8:
    clc
    adc $1dae

loc_0784bc:
    sta $1dae
    sep #$20

loc_0784c1:
.a8
    rep #$20
.a16
    lda $1dae
    sta $6b37,y
    sep #$20
.a8
    rep #$20
.a16
    lda $6b31,y
    clc
    adc $6b37,y
    sta $6b31,y
    sep #$20

loc_0784d9:
.a8
    plp
    ply
    rtl
    .db $80,$80,$00,$00,$00,$00,$80,$80,$80,$80,$00,$00,$00,$00,$80,$80

sub_0784ec:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda $0c,x
    sta $1dc2
    lda $0e,x
    sta $1dc4
    lda $10,x
    sta $1dc6
    sep #$20
.a8
    jsr sub_078d66
    jsr sub_078a7a
    jsr sub_0788bf
    rep #$20
.a16
    lda $1dc4
    clc
    adc $6ae2,y
    sta $1dc4
    sta $6ac3,y
    lda $1dc2
    sta $6ac1,y
    lda $1dc6
    sta $6ac5,y
    sep #$20
.a8
    jsr sub_078bd3
    lda $6aa0,y
    and #$f0
    cmp #$30
    bne loc_07853d
    jml loc_078542

loc_07853d:
    jsr sub_0786b7
    bra loc_078546

loc_078542:
    jsl sub_0781f1

loc_078546:
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    bit #$04
    bne loc_078555
    jml loc_07861e

loc_078555:
    rep #$20
.a16
    lda #$0000
    sta $1dae
    sep #$20
.a8
    lda $6b63,y
    and #$80
    bne loc_07856a
    jml loc_078592

loc_07856a:
    rep #$20
.a16
    lda $6ad0,y
    bpl loc_078575
    eor #$ffff
    inc a

loc_078575:
    cmp #$1000
    sep #$20
.a8
    beq loc_078582
    bpl loc_078582
    jml loc_0785ef

loc_078582:
    rep #$20
.a16
    lda $6ad0,y
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    jmp loc_0785e8

loc_078592:
.a8
    lda $6b77,y
    bit #$04
    bne loc_07859d
    jml loc_0785a4

loc_07859d:
    rep #$20
.a16
    lda #$005a
    bra loc_0785a9

loc_0785a4:
.a8
    rep #$20
.a16
    lda #$005a

loc_0785a9:
    sta $02
    eor #$ffff
    inc a
    sta $04
    lda $6b4a,y
    bmi loc_0785c5
    cmp $02
    bcc loc_0785ef
    sep #$20
.a8
    lda $1939
    bit #$02
    beq loc_0785ef
    bra loc_0785d2

loc_0785c5:
.a16
    cmp $04
    bcs loc_0785ef
    sep #$20
.a8
    lda $1939
    bit #$01
    beq loc_0785ef

loc_0785d2:
    rep #$20
.a16
    lda $6ad0,y
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    sta $3c
    cmp #$8000
    ror a
    clc
    adc $3c

loc_0785e8:
    eor #$ffff
    inc a
    sta $1dae

loc_0785ef:
    sep #$20
.a8
    rep #$20
.a16
    lda $6b3d,y
    cmp $1dae
    beq loc_078617
    bmi loc_07860b
    sec
    sbc #$0100
    cmp $1dae
    bpl loc_078617
    lda $1dae
    bra loc_078617

loc_07860b:
    clc
    adc #$0100
    cmp $1dae
    bmi loc_078617
    lda $1dae

loc_078617:
    sta $6b3d,y
    sep #$20
.a8
    bra loc_078631

loc_07861e:
    rep #$20
.a16
    lda $6b3d,y
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $6b3d,y
    sep #$20

loc_078631:
.a8
    rep #$20
.a16
    lda $6abb,y
    eor #$ffff
    inc a
    sta $1dae
    sep #$20
.a8
    rep #$20
.a16
    lda $1dae
    sta $6b33,y
    sep #$20
.a8
    rep #$20
.a16
    lda $1dae
    sec
    sbc $6b33,y
    sta $6b39,y
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    bne loc_078666
    jml loc_07867c

loc_078666:
    rep #$20
.a16
    lda $6b35,y
    cmp #$8000
    ror a
    bpl loc_078674
    adc #$0000

loc_078674:
    sta $6b35,y
    sep #$20
.a8
    jmp loc_0786b4

loc_07867c:
    lda $6ac0,y
    sta $1daf
    lda #$00
    sta $1dae
    rep #$20
.a16
    lda $6b35,y
    cmp $1dae
    beq loc_0786ad
    bmi loc_0786a1
    sec
    sbc #$0100
    cmp $1dae
    bpl loc_0786ad
    lda $1dae
    bra loc_0786ad

loc_0786a1:
    clc
    adc #$0100
    cmp $1dae
    bmi loc_0786ad
    lda $1dae

loc_0786ad:
    sta $6b35,y
    sep #$20
.a8
    bra loc_0786b4

loc_0786b4:
    plp
    ply
    rts

sub_0786b7:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6b63,y
    bit #$40
    beq loc_0786cb
    jml loc_0786d3

loc_0786cb:
    and #$80
    beq loc_0786d3
    jml loc_0787a7

loc_0786d3:
    rep #$20
.a16
    lda #$0000
    sta $1dae
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $6b3f,y
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6b81,y
    ply
    bit #$04
    bne loc_0786f6
    jml loc_078708

loc_0786f6:
    lda $6b30,y
    bit #$01
    beq loc_078734
    lda $6bfd,y
    cmp #$80
    ror a
    sta $1daf
    bra loc_07875f

loc_078708:
    lda $6b30,y
    and #$80
    beq loc_078713
    jml loc_078734

loc_078713:
    phy
    ldy $2b,x
    lda $6b81,y
    ply
    bit #$08
    bne loc_078722
    jml loc_078734

loc_078722:
    lda $6b30,y
    bit #$08
    beq loc_078734
    lda $6bfe,y
    cmp #$80
    ror a
    sta $1daf
    bra loc_078743

loc_078734:
    lda $6b30,y
    and #$18
    cmp #$18
    bne loc_078750
    lda $6bfe,y
    sta $1daf

loc_078743:
    rep #$20
.a16
    lda #$fe40
    sta $6b3f,y
    sep #$20
.a8
    jmp loc_078880

loc_078750:
    lda $6b30,y
    and #$03
    cmp #$03
    bne loc_07876c
    lda $6bfd,y
    sta $1daf

loc_07875f:
    rep #$20
.a16
    lda #$01c0
    sta $6b3f,y
    sep #$20
.a8
    jmp loc_078880

loc_07876c:
    lda $6b30,y
    bit #$01
    bne loc_078787
    bit #$08
    bne loc_07877b
    jml loc_078853

loc_07877b:
    rep #$20
.a16
    lda #$ff80
    sta $6b3f,y
    sep #$20
.a8
    bra loc_078791

loc_078787:
    rep #$20
.a16
    lda #$0080
    sta $6b3f,y
    sep #$20

loc_078791:
.a8
    rep #$20
.a16
    lda $6b31,y
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $6b31,y
    sep #$20
.a8
    jmp loc_0788bb

loc_0787a7:
    rep #$20
.a16
    lda #$0000
    sta $1dae
    sep #$20
.a8
    lda $1939
    bit #$08
    bne loc_0787cb
    lda $1939
    bit #$04
    bne loc_0787f5
    rep #$20
.a16
    lda #$0000
    sta $02
    sep #$20
.a8
    jmp loc_078853

loc_0787cb:
    rep #$20
.a16
    lda #$fe00
    sta $02
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $1dae
    sep #$20
.a8
    lda $6bfe,y
    sta $1daf
    phy
    ldy $2b,x
    lda $6b81,y
    ply
    bit #$08
    beq loc_0787f3
    jml loc_07881d

loc_0787f3:
    bra loc_07882b

loc_0787f5:
    rep #$20
.a16
    lda #$0200
    sta $02
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $1dae
    sep #$20
.a8
    lda $6bfd,y
    sta $1daf
    phy
    ldy $2b,x
    lda $6b81,y
    ply
    bit #$04
    bne loc_07881d
    jml loc_07882b

loc_07881d:
    rep #$20
.a16
    lda $1dae
    cmp #$8000
    ror a
    sta $1dae
    sep #$20

loc_07882b:
.a8
    rep #$20
.a16
    lda $6b3f,y
    cmp $02
    beq loc_07884c
    bmi loc_078842
    sec
    sbc #$0080
    cmp $02
    bpl loc_07884c
    lda $02
    bra loc_07884c

loc_078842:
    clc
    adc #$0080
    cmp $02
    bmi loc_07884c
    lda $02

loc_07884c:
    sta $6b3f,y
    sep #$20
.a8
    bra loc_078880

loc_078853:
    rep #$20
.a16
    lda $6b3f,y
    cmp #$0000
    beq loc_078879
    bmi loc_07886d
    sec
    sbc #$0080
    cmp #$0000
    bpl loc_078879
    lda #$0000
    bra loc_078879

loc_07886d:
    clc
    adc #$0080
    cmp #$0000
    bmi loc_078879
    lda #$0000

loc_078879:
    sta $6b3f,y
    sep #$20
.a8
    bra loc_0788bb

loc_078880:
    rep #$20
.a16
    lda $6b31,y
    clc
    adc $6b3f,y
    sta $02
    bmi loc_078894
    cmp $1dae
    bcc loc_0788b0
    bra loc_078899

loc_078894:
    cmp $1dae
    bcs loc_0788b0

loc_078899:
    sep #$20
.a8
    rep #$20
.a16
    lda $6b31,y
    sta $3a
    lda $1dae
    jsl sub_7f25a3
    sta $6b31,y
    sep #$20
.a8
    bra loc_0788bb

loc_0788b0:
.a16
    sep #$20
.a8
    rep #$20
.a16
    lda $02
    sta $6b31,y
    sep #$20

loc_0788bb:
.a8
    plp
    ply
    plx
    rts

sub_0788bf:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6b63,y
    bit #$40
    beq loc_0788d2
    jml loc_0789f9

loc_0788d2:
    lda $6b63,y
    bit #$40
    beq loc_0788dd
    jml loc_0788e5

loc_0788dd:
    and #$80
    beq loc_0788e5
    jml loc_0789f9

loc_0788e5:
    lda $6b77,y
    bit #$01
    bne loc_0788f0
    jml loc_0789f9

loc_0788f0:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    bne loc_078901
    jml loc_078914

loc_078901:
    rep #$20
.a16
    lda #$0000
    sta $6b4a,y
    sta $6b4c,y
    sta $6ae7,y
    sep #$20
.a8
    jmp loc_078a19

loc_078914:
    lda $6b77,y
    bit #$04
    beq loc_07891f
    jml loc_078982

loc_07891f:
    lda $6be6,y
    and #$c0
    bne loc_07892a
    jml loc_078949

loc_07892a:
    rep #$20
.a16
    lda $6ae7,y
    cmp #$8000
    ror a
    bpl loc_078938
    adc #$0000

loc_078938:
    cmp #$8000
    ror a
    bpl loc_078941
    adc #$0000

loc_078941:
    sta $6ae7,y
    sep #$20
.a8
    jmp loc_0789e4

loc_078949:
    lda $1938
    and #$30
    bne loc_078954
    jml loc_078982

loc_078954:
    rep #$20
.a16
    lda $6ae7,y
    cmp #$0000
    beq loc_07897a
    bmi loc_07896e
    sec
    sbc #$000a
    cmp #$0000
    bpl loc_07897a
    lda #$0000
    bra loc_07897a

loc_07896e:
    clc
    adc #$000a
    cmp #$0000
    bmi loc_07897a
    lda #$0000

loc_07897a:
    sta $6ae7,y
    sep #$20
.a8
    jmp loc_0789e4

loc_078982:
    rep #$20
.a16
    lda $6b15,y
    sta $3a
    sep #$20
.a8
    rep #$20
.a16
    lda $6aad,y
    bit #$0080
    beq loc_07899a
    ora #$ff00
    bra loc_07899d

loc_07899a:
    and #$00ff

loc_07899d:
    clc
    adc $3a
    sta $3a
    sep #$20
.a8
    lda $6aa0,y
    and #$f0
    cmp #$20
    bne loc_0789b1
    jml loc_0789bd

loc_0789b1:
    rep #$20
.a16
    lda #$0064
    sta $02
    lda #$ff9c
    bra loc_0789c7

loc_0789bd:
.a8
    rep #$20
.a16
    lda #$0050
    sta $02
    lda #$ffb0

loc_0789c7:
    sta $04
    lda $3a
    clc
    adc $6ae7,y
    bmi loc_0789d9
    cmp $02
    bcc loc_0789df
    lda $02
    bra loc_0789df

loc_0789d9:
    cmp $04
    bcs loc_0789df
    lda $04

loc_0789df:
    sta $6ae7,y
    sep #$20

loc_0789e4:
.a8
    rep #$20
.a16
    lda $6b4a,y
    sta $3a
    lda $6ae7,y
    jsl sub_7f2567
    sta $6b4a,y
    sep #$20
.a8
    bra loc_078a19

loc_0789f9:
    rep #$20
.a16
    lda #$0000
    sta $6b4a,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $6b4c,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $6ae7,y
    sep #$20
.a8
    bra loc_078a77

loc_078a19:
    rep #$20
.a16
    lda $6b4a,y
    sta $1dae
    sep #$20
.a8
    lda $6b34,y
    eor #$ff
    inc a
    sta $1db4
    rep #$20
.a16
    lda $1dae
    sta $02
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $97
    sep #$20
.a8
    lda $1db4
    jsl sub_7f378a
    rep #$20
.a16
    lda $04
    cmp #$8000
    ror a
    sta $1db0
    lda $e4
    cmp #$8000
    ror a
    sta $1db2
    sep #$20
.a8
    rep #$20
.a16
    lda $1dc2
    clc
    adc $1db0
    sta $1dc2
    sep #$20
.a8
    rep #$20
.a16
    lda $1dc6
    clc
    adc $1db2
    sta $1dc6
    sep #$20

loc_078a77:
.a8
    plp
    ply
    rts

sub_078a7a:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6a9c,y
    sta $02
    rep #$20
.a16
    lda $6a9a,y
    sta $04
    sep #$20
.a8
    lda $02
    cmp #$07
    beq loc_078a9a
    jml loc_078aa9

loc_078a9a:
    rep #$20
.a16
    lda $04
    cmp #$80b3
    sep #$20
.a8
    bne loc_078aa9
    jml loc_078aac

loc_078aa9:
    jmp loc_078b91

loc_078aac:
    lda $6b7d,y
    bit #$80
    bne loc_078ab7
    jml loc_078acd

loc_078ab7:
    rep #$20
.a16
    lda $6b67,y
    sta $3a
    lda #$fe70
    jsl sub_7f2567
    sta $6b67,y
    sep #$20
.a8
    jmp loc_078b82

loc_078acd:
    lda $6beb,y
    bit #$80
    beq loc_078ad8
    jml loc_078b0f

loc_078ad8:
    phy
    ldy $2b,x
    lda $6b63,y
    ply
    bit #$40
    beq loc_078ae7
    jml loc_078aef

loc_078ae7:
    and #$80
    beq loc_078aef
    jml loc_078b0f

loc_078aef:
    lda $6be6,y
    and #$80
    bne loc_078afa
    jml loc_078b0f

loc_078afa:
    rep #$20
.a16
    lda $6b52,y
    sta $3a
    lda #$0064
    jsl sub_7f2567
    sta $6b52,y
    sep #$20
.a8
    bra loc_078b82

loc_078b0f:
    rep #$20
.a16
    lda #$0000
    sta $97
    sep #$20
.a8
    lda $1e13
    cmp #$01
    beq loc_078b23
    jml loc_078b38

loc_078b23:
    lda $21,x
    and #$20
    bne loc_078b2d
    jml loc_078b38

loc_078b2d:
    rep #$20
.a16
    lda #$ff9c
    sta $97
    sep #$20
.a8
    bra loc_078b70

loc_078b38:
    lda $6b63,y
    bit #$40
    beq loc_078b43
    jml loc_078b4b

loc_078b43:
    and #$80
    beq loc_078b4b
    jml loc_078b70

loc_078b4b:
    rep #$20
.a16
    lda $1ce8,x
    sep #$20
.a8
    bne loc_078b58
    jml loc_078b70

loc_078b58:
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_078b67
    jml loc_078b70

loc_078b67:
    rep #$20
.a16
    lda #$ff38
    sta $97
    sep #$20

loc_078b70:
.a8
    rep #$20
.a16
    lda $6b52,y
    sta $3a
    lda $97
    jsl sub_7f2636
    sta $6b52,y
    sep #$20

loc_078b82:
.a8
    rep #$20
.a16
    lda $6b67,y
    clc
    adc $6b52,y
    sta $97
    sep #$20
.a8
    bra loc_078b9a

loc_078b91:
    rep #$20
.a16
    lda $6b67,y
    sta $97
    sep #$20

loc_078b9a:
.a8
    lda #$00
    sta $1dae
    lda $6b34,y
    sta $1daf
    jsl sub_078cfe
    rep #$20
.a16
    lda $1dc2
    clc
    adc $04
    sta $1dc2
    sep #$20
.a8
    rep #$20
.a16
    lda $1dc6
    clc
    adc $e4
    sta $1dc6
    sep #$20
.a8
    rep #$20
.a16
    lda $1dc4
    clc
    adc $0a
    sta $1dc4
    sep #$20
.a8
    plp
    ply
    rts

sub_078bd3:
    phy
    php
    sep #$20
    rep #$10
    ldy #$0000
    sty $1dc0
    ldy $2b,x
    lda $6b63,y
    and #$80
    bne loc_078bec
    jml loc_078c02

loc_078bec:
    rep #$20
.a16
    lda $6b52,y
    sta $3a
    lda $1dc0
    jsl sub_7f25a3
    sta $6b52,y
    sep #$20
.a8
    jmp loc_078c9c

loc_078c02:
    rep #$20
.a16
    lda #$0046
    sta $1db8
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    bit #$40
    beq loc_078c1b
    jml loc_078c39

loc_078c1b:
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    bit #$20
    beq loc_078c2a
    jml loc_078c2c

loc_078c2a:
    bra loc_078c47

loc_078c2c:
    rep #$20
.a16
    lda #$0014
    sta $1db8
    lda $6b6b,y
    bra loc_078c3e

loc_078c39:
.a8
    rep #$20
.a16
    lda $6b69,y

loc_078c3e:
    clc
    adc $6b56,y
    sta $1dc0
    sep #$20

loc_078c47:
.a8
    lda $6b58,y
    beq loc_078c65
    dec a
    sta $6b58,y
    rep #$20
.a16
    lda $6b56,y
    sta $3a
    lda $1db8
    jsl sub_7f2534
    sta $6b56,y
    sep #$20
.a8
    bra loc_078c78

loc_078c65:
    rep #$20
.a16
    lda $6b56,y
    sta $3a
    lda #$0000
    jsl sub_7f25e8
    sta $6b56,y
    sep #$20

loc_078c78:
.a8
    sep #$20
    rep #$20
.a16
    lda $6b52,y
    sta $3a
    lda $1dc0
    jsl sub_7f25a3
    sta $6b52,y
    sep #$20
.a8
    rep #$20
.a16
    lda $6b52,y
    asl a
    clc
    adc $6b56,y
    sta $1dc0
    sep #$20

loc_078c9c:
.a8
    jsr sub_079d7a
    phy
    ldy $14d6
    rep #$20
.a16
    lda #$0000
    sta $02
    sta $04
    lda #$0000
    sta $08
    sta $0a
    lda $1dc0
    sta $97
    sta $e4
    sep #$20
.a8
    lda $12,x
    jsl sub_7f3818
    rep #$20
.a16
    lda $04
    sta $02
    lda $0a
    sta $08
    lda $e4
    sta $97
    sep #$20
.a8
    lda $14,x
    jsl sub_7f378a
    rep #$20
.a16
    lda $04
    clc
    adc $000c,y
    sta $000c,y
    lda $e4
    clc
    adc $0010,y
    sta $0010,y
    lda $0a
    clc
    adc $000e,y
    sta $000e,y
    sep #$20
.a8
    ply
    jsr sub_079d9b
    plp
    ply
    rts

sub_078cfe:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $1daf
    eor #$ff
    inc a
    sta $1daf
    rep #$20
.a16
    lda #$0000
    sta $02
    sta $04
    lda $6b4e,y
    asl a
    sta $08
    sta $0a
    lda $97
    sta $e4
    sep #$20
.a8
    lda $6b32,y
    eor #$ff
    inc a
    jsl sub_7f3818
    rep #$20
.a16
    lda $04
    sta $02
    lda $0a
    sta $08
    lda $e4
    sta $97
    sep #$20
.a8
    lda $1daf
    jsl sub_7f378a
    rep #$20
.a16
    lda $04
    cmp #$8000
    ror a
    sta $04
    lda $e4
    cmp #$8000
    ror a
    sta $e4
    lda $0a
    cmp #$8000
    ror a
    sta $0a
    sep #$20
.a8
    plp
    ply
    rtl

sub_078d66:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6aa0,y
    and #$f0
    cmp #$30
    bne loc_078d7c
    jml loc_07909f

loc_078d7c:
    lda $6b77,y
    bit #$01
    beq loc_078d87
    jml loc_078d9d

loc_078d87:
    rep #$20
.a16
    lda $6b4e,y
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $6b4e,y
    sep #$20
.a8
    jmp loc_07909f

loc_078d9d:
    lda $d7f4
    bne loc_078da6
    jml loc_078dc7

loc_078da6:
    lda $6b63,y
    and #$40
    beq loc_078db1
    jml loc_078dc7

loc_078db1:
    lda $6b63,y
    bit #$40
    beq loc_078dbc
    jml loc_078dc4

loc_078dbc:
    and #$80
    beq loc_078dc4
    jml loc_078dc7

loc_078dc4:
    jmp loc_078e01

loc_078dc7:
    rep #$20
.a16
    lda #$0000
    sta $6b47,y
    lda #$ffec
    sta $6b4e,y
    lda $0e,x
    sta $6ac3,y
    sta $6b45,y
    sep #$20
.a8
    lda $6b30,y
    and #$c0
    sta $6b30,y
    lda $12,x
    bpl loc_078df6
    lda $6b30,y
    ora #$05
    sta $6b30,y
    jmp loc_07909f

loc_078df6:
    lda $6b30,y
    ora #$28
    sta $6b30,y
    jmp loc_07909f

loc_078e01:
    lda $6aa0,y
    and #$f0
    cmp #$20
    bne loc_078e0e
    jml loc_078e11

loc_078e0e:
    jmp loc_078e7e

loc_078e11:
    lda $1e13
    cmp #$01
    beq loc_078e1c
    jml loc_07909f

loc_078e1c:
    lda $21,x
    and #$20
    bne loc_078e26
    jml loc_07909f

loc_078e26:
    rep #$20
.a16
    lda $1dc4
    sta $08
    sep #$20
.a8
    lda #$7e
    sta $0a
    phx
    phy
    sep #$10
.i8
    phb
    lda #$00
    pha
    plb
    lda $08
    sta $6a
    lda $09
    sta $6b
    lda $0a
    sta $6c
    jsl sub_0389e1
    plb
    rep #$10
.i16
    ply
    plx
    lda $6d
    sta $08
    lda $6e
    sta $09
    rep #$20
.a16
    lda $08
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    clc
    eor #$ffff
    inc a
    adc $08
    sta $1dc4
    jmp loc_07909f

loc_078e7e:
.a8
    sep #$20
    rep #$20
.a16
    lda $6a9d,y
    cmp #$0000
    sep #$20
.a8
    bne loc_078e90
    jml loc_078ea8

loc_078e90:
    rep #$20
.a16
    lda #$0000
    sta $6b47,y
    sta $6b4e,y
    lda $0e,x
    sta $6ac3,y
    sta $6b45,y
    sep #$20
.a8
    jmp loc_07909f

loc_078ea8:
    lda $6b49,y
    rep #$20
.a16
    lda #$001e
    sta $1db8
    lda #$ffe2
    sta $1dba
    sep #$20
.a8
    sep #$20
    lda $1939
    bit #$08
    bne loc_078ee9
    lda $1939
    bit #$04
    beq loc_078f07
    lda $12,x
    bmi loc_078edc
    rep #$20
.a16
    lda $6b47,y
    clc
    adc #$ffe2
    sep #$20
.a8
    bpl loc_078f07

loc_078edc:
    lda $6b30,y
    bit #$01
    bne loc_078ee5
    and #$c5

loc_078ee5:
    ora #$05
    bra loc_078f0c

loc_078ee9:
    lda $12,x
    bpl loc_078efa
    rep #$20
.a16
    lda $6b47,y
    clc
    adc #$001e
    sep #$20
.a8
    bmi loc_078f07

loc_078efa:
    lda $6b30,y
    bit #$08
    bne loc_078f03
    and #$e8

loc_078f03:
    ora #$28
    bra loc_078f0c

loc_078f07:
    lda $6b30,y
    and #$e4

loc_078f0c:
    sta $6b30,y
    lda $6a9c,y
    sta $02
    rep #$20
.a16
    lda $6a9a,y
    sta $04
    sep #$20
.a8
    lda $02
    cmp #$07
    beq loc_078f27
    jml loc_078f36

loc_078f27:
    rep #$20
.a16
    lda $04
    cmp #$8089
    sep #$20
.a8
    bne loc_078f36
    jml loc_078fa8

loc_078f36:
    lda $6b30,y
    bit #$01
    bne loc_078fa8
    rep #$20
.a16
    lda $1dc4
    clc
    adc $6bf7,y
    clc
    adc #$0064
    sep #$20
.a8
    bmi loc_078fa0
    lda $6b30,y
    and #$ed
    sta $6b30,y
    rep #$20
.a16
    lda $6b47,y
    cmp #$0000
    beq loc_078f7c
    bmi loc_078f70
    sec
    sbc #$0005
    cmp #$0000
    bpl loc_078f7c
    lda #$0000
    bra loc_078f7c

loc_078f70:
    clc
    adc #$0005
    cmp #$0000
    bmi loc_078f7c
    lda #$0000

loc_078f7c:
    sta $6b47,y
    sep #$20
.a8
    rep #$20
.a16
    lda $1dc4
    sec
    sbc $6b47,y
    sta $6b45,y
    lda $6b47,y
    sta $1dae
    sep #$20
.a8
    lda $6b30,y
    ora #$80
    sta $6b30,y
    jmp loc_079078

loc_078fa0:
    lda $6b30,y
    and #$7f
    sta $6b30,y

loc_078fa8:
    lda $6b30,y
    bit #$12
    bne loc_078fb3
    jml loc_078fc8

loc_078fb3:
    rep #$20
.a16
    lda $1dc4
    sec
    sbc $6b47,y
    sta $6b45,y
    lda $6b47,y
    sta $1dae
    jmp loc_079078

loc_078fc8:
.a8
    rep #$20
.a16
    lda $1dc4
    sec
    sbc $6b45,y
    sta $6b47,y
    sta $1dae
    lda $6b30,y
    bit #$0028
    bne loc_07902f
    bit #$0005
    bne loc_078fe4

loc_078fe4:
    lda $1dae
    bmi loc_078fed
    jml loc_079078

loc_078fed:
    cmp $1dba
    bcc loc_078ff6
    jml loc_079078

loc_078ff6:
    pha
    lda $1dc4
    clc
    adc $1db8
    sta $1db4
    sep #$20
.a8
    rep #$20
.a16
    lda $6b45,y
    sta $3a
    lda $1db4
    jsl sub_7f2534
    sta $6b45,y
    sep #$20
.a8
    lda $6b30,y
    and #$01
    bne loc_079021
    jml loc_079072

loc_079021:
    lda $6b30,y
    ora #$02
    sta $6b30,y
    rep #$20
.a16
    pla
    jmp loc_079075

loc_07902f:
    lda $1dae
    bmi loc_079078
    cmp $1db8
    bcc loc_079078
    pha
    lda $1dc4
    clc
    adc $1dba
    sta $1db4
    sep #$20
.a8
    rep #$20
.a16
    lda $6b45,y
    sta $3a
    lda $1db4
    jsl sub_7f2534
    sta $6b45,y
    sep #$20
.a8
    lda $6b30,y
    and #$08
    bne loc_079064
    jml loc_079072

loc_079064:
    lda $6b30,y
    ora #$10
    sta $6b30,y
    rep #$20
.a16
    pla
    jmp loc_079075

loc_079072:
.a8
    rep #$20
.a16
    pla

loc_079075:
    sta $1dae

loc_079078:
    sep #$20
.a8
    rep #$20
.a16
    lda $1dae
    cmp #$8000
    ror a
    sta $3a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    eor #$ffff
    inc a
    clc
    adc $3a
    eor #$ffff
    inc a
    sta $6b4e,y

loc_07909f:
.a8
    plp
    ply
    plx
    rts
    .incbin "data/0390a3-039488.bin"

sub_079488:
    rtl

sub_079489:
    phy
    php
    sep #$20
    rep #$10
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07949e
    jmp loc_07950b

loc_07949e:
    phy
    ldy $2b,x
    lda $6b65,y
    ply
    bit #$40
    beq loc_0794ad
    jml loc_07950b

loc_0794ad:
    ldy #$033f
    rep #$20
.a16
    lda $1e32
    clc
    adc $1e34
    cmp #$8000
    ror a
    bpl loc_0794c2
    adc #$0000

loc_0794c2:
    eor #$ffff
    inc a
    clc
    adc $000e,y
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    sta $1dae
    bit #$8000
    bne loc_0794ec
    cmp #$00a0
    bcc loc_0794ff
    lda #$00a0
    bra loc_0794fc

loc_0794ec:
    eor #$ffff
    inc a
    cmp #$00a0
    bcc loc_0794ff
    lda #$00a0
    eor #$ffff
    inc a

loc_0794fc:
    sta $1dae

loc_0794ff:
    sep #$20
.a8
    rep #$20
.a16
    lda $1dae
    sta $1e52
    sep #$20

loc_07950b:
.a8
    plp
    ply
    rtl

sub_07950e:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    ldx $12c3
    rep #$20
.a16
    ldy $2b,x
    lda $1e48
    jsr sub_0795f9
    lda $08
    clc
    adc $1e52
    clc
    adc $1e44
    sta $1e3c
    jsr sub_079546
    sta $1e48
    lda $0a
    sta $1e40
    sep #$20
.a8
    plp
    ply
    plx
    plb
    rtl

sub_079546:
.a16
    sep #$20
.a8
    rep #$10
    phy
    ldy #$033f
    rep #$20
.a16
    lda $0012,y
    clc
    ply
    pha
    sep #$20
.a8
    lda $1d72
    beq loc_079566
    lda $1d73
    cmp #$1d
    bne loc_079573
    bra loc_079581

loc_079566:
    lda $1b4d
    and #$07
    cmp #$00
    bne loc_079573
    jml loc_079581

loc_079573:
    rep #$20
.a16
    pla
    cmp #$8000
    ror a
    bpl loc_07957f
    adc #$0000

loc_07957f:
    bra loc_07958c

loc_079581:
.a8
    rep #$20
.a16
    lda $1e32
    cmp #$f254
    bne loc_079573
    pla

loc_07958c:
    cmp #$8000
    ror a
    bpl loc_079595
    adc #$0000

loc_079595:
    cmp #$8000
    ror a
    bpl loc_07959e
    adc #$0000

loc_07959e:
    cmp #$8000
    ror a
    bpl loc_0795a7
    adc #$0000

loc_0795a7:
    cmp #$8000
    ror a
    bpl loc_0795b0
    adc #$0000

loc_0795b0:
    cmp #$8000
    ror a
    bpl loc_0795b9
    adc #$0000

loc_0795b9:
    sta $3a
    cmp #$8000
    ror a
    bpl loc_0795c4
    adc #$0000

loc_0795c4:
    cmp #$8000
    ror a
    bpl loc_0795cd
    adc #$0000

loc_0795cd:
    cmp #$8000
    ror a
    bpl loc_0795d6
    adc #$0000

loc_0795d6:
    sta $3c
    cmp #$8000
    ror a
    bpl loc_0795e1
    adc #$0000

loc_0795e1:
    clc
    adc $3c
    eor #$ffff
    inc a
    clc
    adc $3a
    sta $1dc4
    eor #$ffff
    inc a
    sta $08
    rep #$20
    lda $08
    rts

sub_0795f9:
    sta $08
    lda #$0000
    sta $0a
    sep #$20
.a8
    lda $1b4d
    and #$07
    cmp #$02
    beq loc_07960f
    jml loc_079688

loc_07960f:
    phy
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07961f
    jmp loc_07962a

loc_07961f:
    lda $6b7d,y
    bit #$40
    beq loc_07962a
    jml loc_079644

loc_07962a:
    lda $6b64,y
    bit #$04
    bne loc_079635
    jml loc_079644

loc_079635:
    rep #$20
.a16
    lda $08
    clc
    adc #$0200
    sta $08
    sep #$20
.a8
    jmp loc_079644

loc_079644:
    ply
    lda $6b7d,y
    bit #$20
    beq loc_079650
    jml loc_07965b

loc_079650:
    lda $6b7d,y
    bit #$10
    bne loc_07965b
    jml loc_079688

loc_07965b:
    rep #$20
.a16
    lda $6ac3,y
    sta $3c
    sep #$20
.a8
    phy
    ldy #$033f
    rep #$20
.a16
    lda $000e,y
    sta $3c
    lda $3c
    sec
    sbc #$fff0
    sec
    sbc $1e0f
    bit #$ffe0
    beq loc_079681
    lda #$001f

loc_079681:
    asl a
    asl a
    asl a
    ply
    sta $0a
    rts

loc_079688:
.a8
    rep #$20
.a16
    rts

sub_07968b:
.a8
    phx
    phy
    php
    sep #$20
    rep #$10
    stx $1dae
    ldy $2b,x
    ldx #$033f
    rep #$20
.a16
    lda $6b31,y
    sta $12,x
    sep #$20
.a8
    rep #$20
.a16
    lda $6b3b,y
    asl a
    clc
    adc $12,x
    sta $12,x
    sep #$20
.a8
    rep #$20
.a16
    lda $6b33,y
    sta $14,x
    sep #$20
.a8
    rep #$20
.a16
    lda $14,x
    clc
    adc $6b3d,y
    sta $14,x
    sep #$20
.a8
    phx
    ldx $1dae
    plx
    rep #$20
.a16
    lda $6b35,y
    sta $16,x
    sta $1e0b
    sep #$20
.a8
    bra loc_0796d8

loc_0796d8:
    plp
    ply
    plx
    rts

sub_0796dc:
    phy
    php
    sep #$20
    rep #$10
    ldy #$033f
    rep #$20
.a16
    lda $0016,y
    sta $1e0b
    plp
.a8
    ply
    rts

sub_0796f0:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy #$033f
    rep #$20
.a16
    lda #$0000
    sta $0029,y
    sep #$20
.a8
    phy
    ldy $2b,x
    tyx
    ply
    rep #$20
.a16
    lda $6ac1,x
    sta $000c,y
    lda $6ac3,x
    sta $000e,y
    lda $6ac5,x
    sta $0010,y
    plp
.a8
    ply
    plx
    rts

sub_079721:
    phy
    php
    sep #$20
    rep #$10
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    bne loc_079738
    jml loc_07974e

loc_079738:
    ldy $14d6
    jsl sub_7f2baa
    jsl sub_7f2bd2
    rep #$20
.a16
    lda #$0000
    sta $97
    sep #$20
.a8
    bra loc_079773

loc_07974e:
    phx
    ldy $2b,x
    ldx $14d6
    rep #$20
.a16
    lda $6bed,y
    sta $0c,x
    lda $6bf3,y
    sta $0e,x
    lda $6bf1,y
    sta $10,x
    sep #$20
.a8
    lda $6abc,y
    sta $0a
    txy
    plx
    lda $0a
    sta $0014,y

loc_079773:
    lda $02
    sta $02
    sta $04
    bit #$80
    beq loc_079783
    lda #$ff
    sta $05
    bra loc_079785

loc_079783:
    stz $05

loc_079785:
    lda $08
    sta $08
    sta $0a
    bit #$80
    beq loc_079795
    lda #$ff
    sta $0b
    bra loc_079797

loc_079795:
    stz $0b

loc_079797:
    lda $97
    sta $97
    sta $e4
    bit #$80
    beq loc_0797a7
    lda #$ff
    sta $e5
    bra loc_0797a9

loc_0797a7:
    stz $e5

loc_0797a9:
    lda $0014,y
    jsl sub_7f38a9
    rep #$20
.a16
    lda $04
    clc
    adc $000c,y
    sta $000c,y
    lda $e4
    clc
    adc $0010,y
    sta $0010,y
    lda $0a
    clc
    adc $000e,y
    sta $000e,y
    sep #$20
.a8
    phx
    ldx #$033f
    ldy $14d6
    stz $149d
    jsl sub_7f21a5
    rep #$20
.a16
    eor #$ffff
    inc a
    sta $04
    sep #$20
.a8
    jsl sub_7f2188
    rep #$20
.a16
    sta $0a
    sep #$20
.a8
    plx
    plp
    ply
    rtl
    .db $da,$5a,$08,$bb,$80,$06

sub_0797fb:
    phx
    phy
    php
    ldx #$033f
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    bne loc_079810
    jmp loc_079820

loc_079810:
    rep #$20
.a16
    lda #$0000
    sta $1ccf,x
    sta $1cd1,x
    sta $1cd3,x
    sep #$20

loc_079820:
.a8
    lda $21,x
    and #$08
    beq loc_07982a
    jml loc_079837

loc_07982a:
    lda $21,x
    and #$10
    beq loc_079834
    jml loc_079837

loc_079834:
    jmp loc_0798bf

loc_079837:
    lda $21,x
    and #$20
    bne loc_079841
    jml loc_079856

loc_079841:
    lda $21,x
    and #$df
    sta $21,x
    lda $21,x
    and #$f7
    sta $21,x
    lda $21,x
    and #$ef
    sta $21,x
    jmp loc_0798bf

loc_079856:
    lda $21,x
    and #$08
    bne loc_079860
    jml loc_079888

loc_079860:
    lda $21,x
    and #$f7
    sta $21,x
    lda $21,x
    ora #$40
    sta $21,x
    rep #$20
.a16
    lda $39,x
    sec
    sbc $0c,x
    sta $1ccf,x
    lda $3b,x
    sec
    sbc $0e,x
    sta $1cd1,x
    lda $3d,x
    sec
    sbc $10,x
    sta $1cd3,x
    sep #$20

loc_079888:
.a8
    lda $21,x
    and #$10
    bne loc_079892
    jml loc_0798bf

loc_079892:
    lda $21,x
    and #$ef
    sta $21,x
    lda $21,x
    ora #$80
    sta $21,x
    lda $1cc2,x
    sec
    sbc $13,x
    sta $1cd5,x
    lda $1cc4,x
    sec
    sbc $15,x
    sta $1cd6,x
    lda $1cc6,x
    sec
    sbc $17,x
    sta $1cd7,x
    lda $15,x
    sta $0a,x
    sep #$20

loc_0798bf:
    jsr sub_0799a3
    jsr sub_079a39
    jsr sub_079960
    jsr sub_0798d2
    jsr sub_079983
    plp
    ply
    plx
    rtl

sub_0798d2:
    lda $21,x
    and #$40
    bne loc_0798dc
    jml loc_07993f

loc_0798dc:
    phy
    ldy $14d6
    lda $13,x
    sta $0012,y
    lda $17,x
    sta $0016,y
    rep #$20
.a16
    lda $1ccf,x
    sta $02
    lda $1cd1,x
    sta $08
    lda $1cd3,x
    sta $97
    sep #$20
.a8
    lda $0a,x
    sec
    sbc $15,x
    sta $0014,y
    rep #$20
.a16
    lda $02
    sta $02
    sta $04
    lda $08
    sta $08
    sta $0a
    lda $97
    sta $97
    sta $e4
    sep #$20
.a8
    lda $0014,y
    jsl sub_7f378a
    rep #$20
.a16
    lda $04
    clc
    adc $000c,x
    sta $0c,x
    lda $e4
    clc
    adc $0010,x
    sta $10,x
    lda $0a
    clc
    adc $000e,x
    sta $0e,x
    sep #$20
.a8
    ply

loc_07993f:
    rts
    .db $c2,$20,$b5,$39,$38,$fd,$0c,$00,$9d,$cf,$1c,$b5,$3b,$38,$fd,$0e
    .db $00,$9d,$d1,$1c,$b5,$3d,$38,$fd,$10,$00,$9d,$d3,$1c,$e2,$20,$60

sub_079960:
    lda $21,x
    and #$80
    bne loc_07996a
    jml loc_079982

loc_07996a:
    lda $13,x
    clc
    adc $1cd5,x
    sta $13,x
    lda $15,x
    clc
    adc $1cd6,x
    sta $15,x
    lda $17,x
    clc
    adc $1cd7,x
    sta $17,x

loc_079982:
    rts

sub_079983:
    rep #$20
.a16
    lda $0c,x
    sta $39,x
    lda $0e,x
    sta $3b,x
    lda $10,x
    sta $3d,x
    lda $12,x
    sta $1cc1,x
    lda $14,x
    sta $1cc3,x
    lda $16,x
    sta $1cc5,x
    sep #$20
.a8
    rts

sub_0799a3:
    lda $22,x
    and #$01
    beq loc_0799ad
    jml loc_0799fc

loc_0799ad:
    rep #$20
.a16
    lda $1ccf,x
    sta $3a
    lda #$0000
    jsl sub_7f25e8
    sta $1ccf,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd1,x
    sta $3a
    lda #$0000
    jsl sub_7f25e8
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd3,x
    sta $3a
    lda #$0000
    jsl sub_7f25e8
    sta $1cd3,x
    sep #$20

loc_0799e6:
.a8
    rep #$20
.a16
    lda $1ccf,x
    ora $1cd1,x
    ora $1cd3,x
    sep #$20
.a8
    bne loc_0799fb
    lda $21,x
    and #$bf
    sta $21,x

loc_0799fb:
    rts

loc_0799fc:
    sep #$20
    rep #$20
.a16
    lda $1ccf,x
    sta $3a
    lda #$0000
    jsl sub_7f2534
    sta $1ccf,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd1,x
    sta $3a
    lda #$0000
    jsl sub_7f2534
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd3,x
    sta $3a
    lda #$0000
    jsl sub_7f2534
    sta $1cd3,x
    sep #$20
.a8
    bra loc_0799e6

sub_079a39:
    lda $1cd5,x
    cmp #$00
    beq loc_079a56
    bmi loc_079a4d
    sec
    sbc #$01
    cmp #$00
    bpl loc_079a56
    lda #$00
    bra loc_079a56

loc_079a4d:
    clc
    adc #$01
    cmp #$00
    bmi loc_079a56
    lda #$00

loc_079a56:
    sta $1cd5,x
    lda $1cd6,x
    cmp #$00
    beq loc_079a76
    bmi loc_079a6d
    sec
    sbc #$01
    cmp #$00
    bpl loc_079a76
    lda #$00
    bra loc_079a76

loc_079a6d:
    clc
    adc #$01
    cmp #$00
    bmi loc_079a76
    lda #$00

loc_079a76:
    sta $1cd6,x
    lda $1cd7,x
    cmp #$00
    beq loc_079a96
    bmi loc_079a8d
    sec
    sbc #$01
    cmp #$00
    bpl loc_079a96
    lda #$00
    bra loc_079a96

loc_079a8d:
    clc
    adc #$01
    cmp #$00
    bmi loc_079a96
    lda #$00

loc_079a96:
    sta $1cd7,x
    lda $1cd5,x
    ora $1cd6,x
    ora $1cd7,x
    bne loc_079aaa
    lda $21,x
    and #$7f
    sta $21,x

loc_079aaa:
    rts

sub_079aab:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda $6b3b,y
    eor #$ffff
    inc a
    sta $6b3b,y
    sep #$20
.a8
    rep #$20
.a16
    lda $6b3b,y
    cmp #$0000
    beq loc_079ae7
    bmi loc_079adb
    sec
    sbc #$0010
    cmp #$0000
    bpl loc_079ae7
    lda #$0000
    bra loc_079ae7

loc_079adb:
    clc
    adc #$0010
    cmp #$0000
    bmi loc_079ae7
    lda #$0000

loc_079ae7:
    sta $6b3b,y
    sep #$20
.a8
    plp
    ply
    rtl

sub_079aef:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6aa0,y
    and #$f0
    cmp #$20
    beq loc_079b04
    jml loc_079b34

loc_079b04:
    lda $1e13
    cmp #$01
    beq loc_079b0f
    jml loc_079b34

loc_079b0f:
    lda $21,x
    and #$20
    bne loc_079b19
    jml loc_079b34

loc_079b19:
    lda $24,x
    and #$02
    beq loc_079b23
    jml loc_079b34

loc_079b23:
    phy
    ldy $2b,x
    lda $6b94,y
    ply
    and #$07
    cmp #$03
    bcs loc_079b34
    jml loc_079b34

loc_079b34:
    lda $6b63,y
    and #$20
    bne loc_079b3f
    jml loc_079b5c

loc_079b3f:
    lda $6b63,y
    and #$df
    sta $6b63,y
    phy
    ldy #$033f
    lda $0021,y
    ora #$08
    sta $0021,y
    lda $0021,y
    ora #$10
    sta $0021,y
    ply

loc_079b5c:
    rep #$20
.a16
    lda $6b67,y
    sep #$20
.a8
    bmi loc_079b69
    jml loc_079b79

loc_079b69:
    rep #$20
.a16
    lda $6b67,y
    cmp #$ffd8
    sep #$20
.a8
    bpl loc_079b79
    jml loc_079b81

loc_079b79:
    lda $25,x
    ora #$20
    sta $25,x
    bra loc_079b87

loc_079b81:
    lda $25,x
    and #$df
    sta $25,x

loc_079b87:
    lda $1de1
    bit #$80
    bne loc_079b92
    jml loc_079ba5

loc_079b92:
    lda $1de0
    bit #$20
    beq loc_079bbd
    and #$df
    sta $1de0
    lda $1de0
    bit #$80
    bne loc_079bb2

loc_079ba5:
    lda $6b63,y
    and #$80
    bne loc_079bb0
    jml loc_079bbd

loc_079bb0:
    bra loc_079bbf

loc_079bb2:
    lda $6b63,y
    and #$80
    bne loc_079bbd
    jml loc_079bbf

loc_079bbd:
    bra loc_079bc7

loc_079bbf:
    lda $6b63,y
    ora #$04
    sta $6b63,y

loc_079bc7:
    lda $6b63,y
    and #$40
    beq loc_079bd2
    jml loc_079c1f

loc_079bd2:
    lda $6b63,y
    and #$04
    bne loc_079bdd
    jml loc_079c1f

loc_079bdd:
    lda $6b63,y
    and #$fb
    sta $6b63,y
    lda $2d,x
    bne loc_079bed
    jml loc_079bed

loc_079bed:
    phy
    ldy #$033f
    lda $0021,y
    ora #$08
    sta $0021,y
    lda $0021,y
    ora #$10
    sta $0021,y
    ply
    lda $6b63,y
    eor #$80
    sta $6b63,y
    lda $6b63,y
    ora #$40
    sta $6b63,y
    stz $f542
    lda $6b63,y
    bit #$80
    beq loc_079c1f
    inc $f542

loc_079c1f:
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_079c2e
    jml loc_079c45

loc_079c2e:
    lda $6b63,y
    and #$80
    bne loc_079c39
    jml loc_079c45

loc_079c39:
    rep #$20
.a16
    lda $6b6d,y
    sta $1dae
    sep #$20
.a8
    bra loc_079c4f

loc_079c45:
    rep #$20
.a16
    lda $6b6f,y
    sta $1dae
    sep #$20

loc_079c4f:
.a8
    rep #$20
.a16
    lda $6b67,y
    cmp $1dae
    beq loc_079c75
    bmi loc_079c69
    sec
    sbc #$001e
    cmp $1dae
    bpl loc_079c75
    lda $1dae
    bra loc_079c75

loc_079c69:
    clc
    adc #$001e
    cmp $1dae
    bmi loc_079c75
    lda $1dae

loc_079c75:
    sta $6b67,y
    sep #$20
.a8
    bra loc_079c7c

loc_079c7c:
    rep #$20
.a16
    lda $1dae
    sec
    sbc $6b67,y
    sta $1dae
    sep #$20
.a8
    rep #$20
.a16
    lda $1dae
    bpl loc_079c98
    eor #$ffff
    inc a
    sta $1dae

loc_079c98:
    sep #$20
.a8
    rep #$20
.a16
    lda $1dae
    cmp #$0032
    sep #$20
.a8
    beq loc_079cac
    bmi loc_079cac
    jml loc_079cc7

loc_079cac:
    lda $6b63,y
    and #$40
    bne loc_079cb7
    jml loc_079cc7

loc_079cb7:
    lda $6b63,y
    and #$bf
    sta $6b63,y
    lda $6b63,y
    ora #$20
    sta $6b63,y

loc_079cc7:
    plp
    ply
    rtl

sub_079cca:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6aa0,y
    and #$f0
    cmp #$30
    bne loc_079ce0
    jml loc_079cf2

loc_079ce0:
    lda $6aa0,y
    and #$f0
    cmp #$10
    bne loc_079ced
    jml loc_079cf7

loc_079ced:
    ldx #$9dc0
    bra loc_079cfc

loc_079cf2:
    ldx #$9ddc
    bra loc_079cfc

loc_079cf7:
    ldx #$9dce
    bra loc_079cfc

loc_079cfc:
    rep #$20
.a16
    lda $070000,x
    sta $6b67,y
    sta $6b6f,y
    lda $070002,x
    sta $6b69,y
    lda $070004,x
    sta $6b6b,y
    lda $070006,x
    sta $6b6d,y
    lda $070008,x
    sta $6b71,y
    lda $07000a,x
    sta $6b73,y
    lda $07000c,x
    sta $6b75,y
    plp
.a8
    ply
    plx
    rtl
    .db $5a,$b4,$2b,$b9,$9c,$6a,$85,$02,$c2,$20,$b9,$9a,$6a,$85,$04,$e2
    .db $20,$a5,$02,$c9,$07,$f0,$04,$5c,$78,$9d,$07,$c2,$20,$a5,$04,$c9
    .db $48,$80,$e2,$20,$f0,$04,$5c,$78,$9d,$07,$5a,$a0,$3f,$03,$c2,$20
    .db $a9,$f6,$ff,$18,$6d,$0f,$1e,$d9,$0e,$00,$10,$03,$99,$0e,$00,$7a
    .db $e2,$20,$7a,$6b

sub_079d7a:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    ldx $14d6
    rep #$20
.a16
    lda $6ac1,y
    sta $0c,x
    lda $6ac3,y
    sta $0e,x
    lda $6ac5,y
    sta $10,x
    plp
.a8
    ply
    plx
    rts

sub_079d9b:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    ldx $14d6
    rep #$20
.a16
    lda $0c,x
    sta $6ac1,y
    lda $0e,x
    sta $6ac3,y
    lda $10,x
    sta $6ac5,y
    plp
.a8
    ply
    plx
    rts
    .db $00,$00,$6a,$ff,$2e,$ff,$ec,$ff,$14,$00,$14,$00,$00,$00,$00,$00
    .db $00,$00,$10,$ff,$ce,$ff,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00
    .db $60,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
    .db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00

sub_079df6:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy #$033f
    rep #$20
.a16
    lda $1ce4,y
    inc a
    sta $1ce4,y
    sep #$20
.a8
    ldy $2b,x
    rep #$20
.a16
    lda $6a9d,y
    beq loc_079e30
    sep #$20
.a8
    lda #$07
    pha
    rep #$20
.a16
    lda #$9e30
    dec a
    pha
    sep #$20
.a8
    lda $6a9f,y
    pha
    rep #$20
.a16
    lda $6a9d,y
    dec a
    pha
    sep #$20
.a8
    rtl

loc_079e30:
    plp
    ply
    plx
    rtl
    .db $ac,$d6,$14,$c2,$20,$ad,$88,$1d,$99,$0c,$00,$a9,$ce,$ff,$99,$0e
    .db $00,$ad,$8c,$1d,$99,$10,$00,$ad,$8e,$1d,$99,$14,$00,$e2,$20,$a9
    .db $00,$85,$02,$85,$04,$89,$80,$f0,$06,$a9,$ff,$85,$05,$80,$02,$64
    .db $05,$a9,$00,$85,$08,$85,$0a,$89,$80,$f0,$06,$a9,$ff,$85,$0b,$80
    .db $02,$64,$0b,$a9,$3c,$85,$97,$85,$e4,$89,$80,$f0,$06,$a9,$ff,$85
    .db $e5,$80,$02,$64,$e5,$b9,$14,$00,$22,$a9,$38,$7f,$c2,$20,$a5,$04
    .db $18,$79,$0c,$00,$99,$0c,$00,$a5,$e4,$18,$79,$10,$00,$99,$10,$00
    .db $a5,$0a,$18,$79,$0e,$00,$99,$0e,$00,$e2,$20,$8c,$ff,$1d,$20,$72
    .db $9f,$20,$2f,$a2,$a0,$3f,$03,$c2,$20,$b9,$12,$00,$c9,$00,$80,$6a
    .db $99,$12,$00,$e2,$20,$6b
    jsr sub_07a10d
    phy
    ldy $2b,x
    lda #$07
    sta $6a9f,y
    rep #$20
.a16
    lda #$9ee0
    sta $6a9d,y
    sep #$20
.a8
    ply
    jsr sub_07a12b
    jsr sub_07a14a
    jsr sub_079f72
    ldy $2b,x
    lda $6beb,y
    bit #$80
    beq loc_079ef6
    jml loc_079ef6

loc_079ef6:
    rtl

loc_079ef7:
    jsr sub_07a10d
    phy
    ldy $2b,x
    lda #$07
    sta $6a9f,y
    rep #$20
.a16
    lda #$9f0d
    sta $6a9d,y
    sep #$20
.a8
    ply
    jsr sub_079fe2
    jsr sub_079f72
    jsr sub_07a12b
    rtl
    jsr sub_07a10d
    phy
    ldy $2b,x
    lda #$07
    sta $6a9f,y
    rep #$20
.a16
    lda #$9f2d
    sta $6a9d,y
    sep #$20
.a8
    ply
    jsr sub_07a028
    jsr sub_079f72
    jsr sub_07a12b
    ldy $2b,x
    lda $6beb,y
    bit #$80
    beq loc_079f43
    jml loc_079f43

loc_079f43:
    rtl
    phy
    ldy $2b,x
    rep #$20
.a16
    lda #$ffb0
    sta $6b54,y
    sep #$20
.a8
    ply
    jsr sub_07a10d
    phy
    ldy $2b,x
    lda #$07
    sta $6a9f,y
    rep #$20
.a16
    lda #$9f68
    sta $6a9d,y
    sep #$20
.a8
    ply
    jsr sub_07a012
    jsr sub_079f72
    jsr sub_07a12b
    rtl

sub_079f72:
    phy
    php
    phx
    ldx #$033f
    rep #$20
.a16
    lda $1cc1,x
    sta $12,x
    lda $1cc3,x
    sta $14,x
    lda $1cc5,x
    sta $16,x
    sep #$20
.a8
    ldy $1dff
    stz $149d
    jsl sub_7f21a5
.a16
    rep #$20
    eor #$ffff
    inc a
    sta $04
    sep #$20
.a8
    jsl sub_7f2188
.a16
    rep #$20
    sta $0a
    sep #$20
.a8
    rep #$20
.a16
    lda $04
    cmp #$8000
    ror a
    sta $04
    sep #$20
.a8
    rep #$20
.a16
    lda $12,x
    sta $3a
    lda $04
    jsl sub_7f2534
    sta $12,x
    sep #$20
.a8
    rep #$20
.a16
    lda $14,x
    sta $3a
    lda $0a
    jsl sub_7f2534
    sta $14,x
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $16,x
    sep #$20
.a8
    plx
    plp
    ply
    rts

sub_079fe2:
    ldy $2b,x
    rep #$20
.a16
    lda $6ae2,y
    sta $08
    sep #$20
.a8
    ldy #$033f
    rep #$20
.a16
    lda #$0000
    sta $02
    sep #$20
.a8
    rep #$20
.a16
    lda #$ffce
    sta $08
    sep #$20
.a8
    rep #$20
.a16
    lda #$ff38
    sta $97
    sep #$20
.a8
    lda $14,x
    sta $3c
    jmp loc_07a069

sub_07a012:
    phy
    ldy $2b,x
    rep #$20
.a16
    lda $6b54,y
    clc
    adc #$fffb
    sta $97
    sta $6b54,y
    sep #$20
.a8
    ply
    bra loc_07a031

sub_07a028:
    rep #$20
.a16
    lda #$ff38
    sta $97
    sep #$20

loc_07a031:
.a8
    rep #$20
.a16
    lda #$0000
    sta $02
    sep #$20
.a8
    rep #$20
.a16
    lda #$ffce
    sta $08
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    bne loc_07a054
    jml loc_07a066

loc_07a054:
    rep #$20
.a16
    lda #$ff60
    sta $97
    sep #$20
.a8
    rep #$20
.a16
    lda #$ffd8
    sta $08
    sep #$20

loc_07a066:
.a8
    jmp loc_07a069

loc_07a069:
    phy
    phx
    ldy $14d6
    lda $14,x
    sta $3c
    ldx #$033f
    lda $1de2
    cmp #$09
    beq loc_07a085
    lda $1ce2,x
    sec
    sbc #$01
    sta $1ce2,x

loc_07a085:
    lda $1ce2,x
    sta $0014,y
    lda #$00
    sta $0012,y
    plx
    rep #$20
.a16
    lda $02
    sta $02
    sta $04
    lda $08
    sta $08
    sta $0a
    lda $97
    sta $97
    sta $e4
    sep #$20
.a8
    lda $0014,y
    jsl sub_7f378a
    rep #$20
.a16
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
    ldx #$033f
    jsl sub_7f2bbe
    rep #$20
.a16
    lda #$f600
    sta $12,x
    sep #$20
.a8
    bra loc_07a0e9
    .db $c2,$20,$a9,$00,$00,$95,$12,$e2,$20

loc_07a0e9:
    lda $1b4d
    and #$07
    cmp #$00
    beq loc_07a10a
    rep #$20
.a16
    lda $0e,x
    cmp #$fff0
    sep #$20
.a8
    bpl loc_07a101
    jml loc_07a10a

loc_07a101:
    rep #$20
.a16
    lda #$fff0
    sta $0e,x
    sep #$20

loc_07a10a:
.a8
    plx
    ply
    rts

sub_07a10d:
    phy
    stx $1dff
    ldy $2b,x
    ldy #$033f
    lda $0015,y
    eor #$ff
    inc a
    sta $1ce2,y
    rep #$20
.a16
    lda #$0000
    sta $1ce4,y
    sep #$20
.a8
    ply
    rts

sub_07a12b:
    phx
    phy
    php
    ldy $2b,x
    ldx #$033f
    rep #$20
.a16
    lda $6b0b,y
    sta $32,x
    lda $6b0d,y
    sta $34,x
    lda $6b0f,y
    sta $36,x
    sep #$20
.a8
    plp
    ply
    plx
    rts

sub_07a14a:
    phy
    phx
    ldy $14d6
    rep #$20
.a16
    lda $1e01
    sta $000c,y
    lda $1e03
    sta $000e,y
    lda $1e05
    sta $0010,y
    sep #$20
.a8
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    sta $0014,y
    sta $3c
    ldx #$033f
    lda $1ce4,x
    cmp #$0f
    bmi loc_07a1a8
    lda #$01
    sta $08
    lda $1ce2,x
    cmp $3c
    bne loc_07a18d
    jml loc_07a1a8

loc_07a18d:
    beq loc_07a1a5
    bmi loc_07a19c
    sec
    sbc $08
    cmp $3c
    bpl loc_07a1a5
    lda $3c
    bra loc_07a1a5

loc_07a19c:
    clc
    adc $08
    cmp $3c
    bmi loc_07a1a5
    lda $3c

loc_07a1a5:
    sta $1ce2,x

loc_07a1a8:
    lda $1ce2,x
    sta $0014,y
    lda #$00
    sta $0012,y
    lda #$00
    sta $0016,y
    rep #$20
.a16
    lda $d7ec
    sta $000c,y
    lda $d7ee
    sta $000e,y
    lda $d7f0
    sta $0010,y
    phx
    ldx #$0000
    lda $1c0a
    bit #$fffe
    beq loc_07a1db
    ldx #$0004

loc_07a1db:
    lda $07a227,x
    sta $08
    lda $07a229,x
    sta $97
    plx
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $02
    sta $04
    lda $08
    sta $08
    sta $0a
    lda $97
    sta $97
    sta $e4
    sep #$20
.a8
    lda $0014,y
    jsl sub_7f378a
    rep #$20
.a16
    lda $04
    clc
    adc $000c,y
    sta $0c,x
    lda $e4
    clc
    adc $0010,y
    sta $10,x
    lda $0a
    clc
    adc $000e,y
    sta $0e,x
    sep #$20
.a8
    plx
    ply
    rts
    .db $14,$00,$88,$ff,$ce,$ff,$6a,$ff,$da,$5a,$08,$ae,$d6,$14,$c2,$20
    .db $ad,$88,$1d,$95,$0c,$ad,$8c,$1d,$95,$10,$a9,$00,$00,$95,$0e,$e2
    .db $20,$ad,$8e,$1d,$95,$14,$a9,$00,$95,$12,$95,$16,$a0,$3f,$03,$a9
    .db $00,$85,$02,$85,$04,$89,$80,$f0,$06,$a9,$ff,$85,$05,$80,$02,$64
    .db $05,$a9,$c4,$85,$08,$85,$0a,$89,$80,$f0,$06,$a9,$ff,$85,$0b,$80
    .db $02,$64,$0b,$a9,$3c,$85,$97,$85,$e4,$89,$80,$f0,$06,$a9,$ff,$85
    .db $e5,$80,$02,$64,$e5,$b5,$14,$22,$a9,$38,$7f,$c2,$20,$a5,$04,$0a
    .db $0a,$0a,$0a,$85,$04,$a5,$0a,$0a,$0a,$85,$0a,$a5,$e4,$0a,$0a,$0a
    .db $0a,$85,$e4,$a5,$04,$18,$7d,$0c,$00,$99,$0c,$00,$a5,$e4,$18,$7d
    .db $10,$00,$99,$10,$00,$a5,$0a,$18,$7d,$0e,$00,$99,$0e,$00,$e2,$20
    .db $c2,$20,$b9,$0c,$00,$85,$02,$b9,$0e,$00,$85,$08,$b9,$10,$00,$85
    .db $97,$b9,$39,$00,$99,$0c,$00,$b9,$3b,$00,$99,$0e,$00,$b9,$3d,$00
    .db $99,$10,$00,$e2,$20,$c2,$20,$b9,$0c,$00,$85,$3a,$a5,$02,$22,$e8
    .db $25,$7f,$99,$0c,$00,$e2,$20,$c2,$20,$b9,$0e,$00,$85,$3a,$a5,$08
    .db $22,$e8,$25,$7f,$99,$0e,$00,$e2,$20,$c2,$20,$b9,$10,$00,$85,$3a
    .db $a5,$97,$22,$e8,$25,$7f,$99,$10,$00,$e2,$20,$28,$7a,$fa,$60

sub_07a326:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    ldx $12c3
    bra loc_07a338

sub_07a337:
    rtl

loc_07a338:
    ldy $2b,x
    lda $6bf9,y
    sta $1dae
    jsr sub_07a870
    lda $1dae
    sta $6baa,y
    lda $1db0
    sta $6bac,y
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    beq loc_07a360
    jml loc_07a367

loc_07a360:
    rep #$20
.a16
    lda $6bef,y
    bra loc_07a36b

loc_07a367:
.a8
    rep #$20
.a16
    lda $0e,x

loc_07a36b:
    sta $08
    sep #$20
.a8
    jsr sub_07aa2c
    lda #$00
    sta $3e
    lda $3c
    bpl loc_07a38e
    cmp #$ec
    bcc loc_07a384
    lda #$21
    sta $3e
    lda $3c

loc_07a384:
    cmp #$e4
    bcs loc_07a3a0
    lda #$e4
    sta $3c
    bra loc_07a3a0

loc_07a38e:
    cmp #$14
    bcs loc_07a398
    lda #$21
    sta $3e
    lda $3c

loc_07a398:
    cmp #$1c
    bcc loc_07a3a0
    lda #$1c
    sta $3c

loc_07a3a0:
    rep #$20
.a16
    lda $7024c2
    cmp #$8000
    ror a
    clc
    adc $3c
    sec
    sbc #$0004
    and #$00ff
    sep #$20
.a8
    sta $6ba5,y
    rep #$20
.a16
    lda $1e0f
    beq loc_07a3d9
    eor #$ffff
    inc a
    sta $08
    sep #$20
.a8
    jsr sub_07aa2c
    rep #$20
.a16
    lda #$ffec
    clc
    adc $3c
    sta $3c
    lda $3c
    bpl loc_07a3dc

loc_07a3d9:
    lda #$0000

loc_07a3dc:
    sta $6ba6,y
    sep #$20
.a8
    lda $3e
    bne loc_07a3f3
    lda $c4
    and #$01
    bne loc_07a3ef
    lda #$06
    bra loc_07a3f5

loc_07a3ef:
    lda #$03
    bra loc_07a3f5

loc_07a3f3:
    lda #$08

loc_07a3f5:
    sta $6ba7,y
    jsr sub_07b3af
    bcc loc_07a402
    jsr sub_07b4fd
    bcs loc_07a415

loc_07a402:
    rep #$20
.a16
    lda #$0008
    sta $6c1c,y
    lda #$0000
    sta $6c22,y
    sep #$20
.a8
    sta $6a8c,y

loc_07a415:
    jsr sub_07b548
    lda $1e2f
    bit #$80
    bne loc_07a423
    jml loc_07a42e

loc_07a423:
    lda $6ba3,y
    bit #$40
    beq loc_07a42e
    jml loc_07a439

loc_07a42e:
    lda #$64
    sta $1e30
    sta $1e31
    jmp loc_07a505

loc_07a439:
    ldy #$033f
    sty $1db0
    ldy $14d6
    jsl sub_7f2bd2
    phx
    phy
    ldy $2b,x
    tyx
    ply
    rep #$20
.a16
    lda $6b9c,x
    sta $000c,y
    lda $6b9e,x
    sta $000e,y
    lda $6ba0,x
    sta $0010,y
    sep #$20
.a8
    plx
    phx
    tyx
    ldy $1db0
    jsr sub_07afe8
    plx
    lda #$08
    sta $1dae
    rep #$20
.a16
    lda #$fff0
    clc
    adc $79
    bpl loc_07a480
    lda #$0010
    bra loc_07a487

loc_07a480:
    lda #$00d0
    cmp $79
    bcs loc_07a489

loc_07a487:
    sta $79

loc_07a489:
    lda #$ffe0
    clc
    adc $7b
    bpl loc_07a496
    lda #$0010
    bra loc_07a49d

loc_07a496:
    lda #$00b0
    cmp $7b
    bcs loc_07a49f

loc_07a49d:
    sta $7b

loc_07a49f:
    sep #$20
.a8
    lda $79
    clc
    adc #$18
    sta $02
    lda $02
    cmp $1e30
    beq loc_07a4d0
    sec
    sbc $1e30
    cmp #$00
    bmi loc_07a4bf
    cmp #$02
    bpl loc_07a4c5
    lda #$02
    bra loc_07a4c5

loc_07a4bf:
    cmp #$fe
    bmi loc_07a4c5
    lda #$fe

loc_07a4c5:
    cmp #$80
    ror a
    bpl loc_07a4cc
    adc #$00

loc_07a4cc:
    clc
    adc $1e30

loc_07a4d0:
    sta $1e30
    lda $7b
    clc
    adc #$18
    sta $08
    lda $08
    cmp $1e31
    beq loc_07a502
    sec
    sbc $1e31
    cmp #$00
    bmi loc_07a4f1
    cmp #$02
    bpl loc_07a4f7
    lda #$02
    bra loc_07a4f7

loc_07a4f1:
    cmp #$fe
    bmi loc_07a4f7
    lda #$fe

loc_07a4f7:
    cmp #$80
    ror a
    bpl loc_07a4fe
    adc #$00

loc_07a4fe:
    clc
    adc $1e31

loc_07a502:
    sta $1e31

loc_07a505:
    ldx $12c3
    ldy $2b,x
    lda $1ddd
    bit #$80
    bne loc_07a515
    jml loc_07a5f9

loc_07a515:
    rep #$20
.a16
    lda $6bb8,y
    sep #$20
.a8
    bne loc_07a522
    jml loc_07a5ff

loc_07a522:
    lda $d7f4
    bne loc_07a52b
    jml loc_07a5ff

loc_07a52b:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07a53a
    jmp loc_07a5ff

loc_07a53a:
    lda $6b77,y
    bit #$01
    bne loc_07a545
    jml loc_07a5ff

loc_07a545:
    lda $6bc2,y
    bit #$08
    bne loc_07a550
    jml loc_07a55d

loc_07a550:
    rep #$20
.a16
    lda #$0000
    sta $1d90
    sep #$20
.a8
    jmp loc_07a5ff

loc_07a55d:
    rep #$20
.a16
    lda $6bc8,y
    cmp $6bb8,y
    sep #$20
.a8
    beq loc_07a56d
    jml loc_07a5ff

loc_07a56d:
    rep #$20
.a16
    lda #$0000
    sta $6bc8,y
    stz $1d90
    sep #$20
.a8
    lda $6bc2,y
    and #$20
    bit #$20
    beq loc_07a587
    jml loc_07a5ff

loc_07a587:
    lda $6bad,y
    sta $3a
    lda $1e30
    sec
    sbc #$18
    sec
    sbc $3a
    clc
    adc #$20
    bmi loc_07a5cd
    cmp #$40
    bpl loc_07a5cd
    lda $6baf,y
    sta $3c
    lda $1e31
    sec
    sbc #$18
    sec
    sbc $3c
    clc
    adc #$20
    bmi loc_07a5cd
    cmp #$40
    bpl loc_07a5cd
    rep #$20
.a16
    lda $6bb8,y
    sta $6bc8,y
    sep #$20
.a8
    lda $6bc6,y
    cmp #$00
    beq loc_07a61f
    inc a
    sta $6bc6,y
    jmp loc_07a662

loc_07a5cd:
    rep #$20
.a16
    lda $6bca,y
    sep #$20
.a8
    bne loc_07a5da
    jml loc_07a5ff

loc_07a5da:
    lda $6bc7,y
    beq loc_07a5ff
    dec a
    sta $6bc7,y
    rep #$20
.a16
    lda $6bca,y
    sta $1d90
    sep #$20
.a8
    rep #$20
.a16
    lda $6bca,y
    sta $6bc8,y
    sep #$20
.a8
    bne loc_07a662

loc_07a5f9:
    stz $1d90
    stz $1d91

loc_07a5ff:
    rep #$20
.a16
    lda $6bb8,y
    sta $6bc8,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $6bca,y
    sep #$20
.a8
    lda #$00
    sta $6bc6,y
    lda #$00
    sta $6bc7,y
    bra loc_07a662

loc_07a61f:
    rep #$20
.a16
    lda $6bca,y
    sep #$20
.a8
    beq loc_07a62c
    jml loc_07a63f

loc_07a62c:
    lda $6bb7,y
    and #$f0
    sta $6bb7,y
    rep #$20
.a16
    lda #$003b
    jsl QueueSound
    sep #$20

loc_07a63f:
.a8
    rep #$20
.a16
    lda $6bb8,y
    sta $6bca,y
    sep #$20
.a8
    rep #$20
.a16
    lda $6bb8,y
    sta $6bc8,y
    sep #$20
.a8
    rep #$20
.a16
    lda $6bca,y
    sta $1d90
    sep #$20
.a8
    lda #$0a
    sta $6bc7,y

loc_07a662:
    lda $6bc2,y
    and #$ef
    and #$f7
    sta $6bc2,y
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    lda $1aa6
    bit #$08
    bne loc_07a688
    lda $1e2f
    bit #$80
    beq loc_07a688
    jml loc_07a6a3

loc_07a688:
    rep #$20
.a16
    lda #$0000
    sta $702880
    sta $7001f2
    sta $7003ac
    lda #$ffff
    sta $7003c6
    jmp loc_07a843

loc_07a6a3:
.a8
    rep #$30
.a16
    lda #$00d8
    sta $7003c6
    lda #$00d0
    sta $7003c0
    lda $6bdc,y
    bit #$0080
    beq loc_07a6c0
    ora #$ff00
    bra loc_07a6c3

loc_07a6c0:
    and #$00ff

loc_07a6c3:
    sta $7003d4
    lda $6bdd,y
    bit #$0080
    beq loc_07a6d4
    ora #$ff00
    bra loc_07a6d7

loc_07a6d4:
    and #$00ff

loc_07a6d7:
    sta $7003d6
    lda $6bda,y
    sta $7003d2
    phx
    lda $6baa,y
    and #$00ff
    tax
    lda #$0007
    sta $7003be
    lda $07bbba,x
    sta $7003bc
    plx
    lda $6bab,y
    sta $7003c8
    lda $6ba5,y
    sec
    sbc #$0003
    and #$00ff
    sta $7003c2
    lda $6ba7,y
    and #$00ff
    sta $7003c4
    lda $6ba6,y
    and #$00ff
    sta $7003ca
    lda $6bb5,y
    bpl loc_07a72c
    jml loc_07a78a

loc_07a72c:
    lda $6bad,y
    sta $7003b0
    lda $6baf,y
    sta $7003b2
    lda $6bb7,y
    sta $1dae
    lda $6bb6,y
    and #$000f
    asl a
    phx
    tax
    lda #$0007
    sta $7003ae
    lda $07b918,x
    sta $1db0
    lda $1dae
    and #$000f
    asl a
    asl a
    clc
    adc $1db0
    tax
    lda $070000,x
    sta $7003ac
    lda $070002,x
    and #$03ff
    sta $7003b4
    lda $070002,x
    xba
    lsr a
    lsr a
    lsr a
    lsr a
    and #$000f
    sta $7003b6
    plx
    bra loc_07a791

loc_07a78a:
    lda #$0000
    sta $7003ac

loc_07a791:
    rep #$20
    lda #$0000
    sta $7001f2
    sep #$20
.a8
    ldy $2b,x
    lda $6c08,y
    and #$3f
    sta $7001f4
    lda $1dd6
    cmp $7001f4
    bne loc_07a7be
    lda $c4
    and #$01
    bne loc_07a7ba
    jml loc_07a7be

loc_07a7ba:
    lda #$02
    bra loc_07a7c0

loc_07a7be:
    lda #$07

loc_07a7c0:
    sta $7001f5
    rep #$20
.a16
    lda #$0001
    sta $7001f2
    rep #$20
    lda $1dd6
    and #$00ff
    clc
    adc #$0003
    sta $7001f6
    lda $1dd6
    and #$00ff
    eor #$ffff
    inc a
    clc
    adc #$00db
    sta $7001f8
    lda #$0007
    sta $7003d0
    lda $6bde,y
    sta $7003cc
    lda $6be0,y
    sta $7003ce
    rep #$20
    lda $6ba4,y
    and #$00ff
    sta $702884
    lda $6ba2,y
    sta $702880
    lda #$000f
    sta $702882
    lda $1dd1
    and #$00ff
    cmp #$000d
    bcs loc_07a843
    lda #$0002
    sta $702882
    lda $c4
    bit #$0004
    bne loc_07a843
    bit #$0001
    bne loc_07a843
    lda #$000e
    sta $702882

loc_07a843:
    sep #$20
.a8
    lda $5e
    ora #$08
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda #$0000
    sta $6bb8,y
    sta $6bc3,y
    lda #$ffff
    sta $6bba,y
    sta $6bbc,y
    lda #$8000
    sta $6bbe,y
    sep #$20
.a8
    plp
    ply
    plx
    plb
    rtl

sub_07a870:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    bne loc_07a88a
    jml loc_07a89e

loc_07a88a:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$30
    bne loc_07a89b
    jml loc_07a8e5

loc_07a89b:
    jmp loc_07a913

loc_07a89e:
    lda #$00
    sta $1dae
    lda #$00
    sta $1db0
    rep #$20
.a16
    lda $6aef,y
    pha
    lda $6af1,y
    tay
    sep #$20
.a8
    lda $0028,y
    sta $02
    ply
    lda $0028,y
    sta $03
    lda $02
    cmp $03
    bne loc_07a8c9
    jml loc_07a8dd

loc_07a8c9:
    inc $1dae
    lda $02
    clc
    adc #$04
    bit #$08
    bne loc_07a8d9
    lda #$1a
    bra loc_07a8df

loc_07a8d9:
    lda #$18
    bra loc_07a8df

loc_07a8dd:
    lda #$16

loc_07a8df:
    sta $1dae
    jmp loc_07a93d

loc_07a8e5:
    lda #$00
    sta $1db0
    ldy $2b,x
    lda $6aeb,y
    clc
    adc #$10
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    phx
    rep #$20
.a16
    and #$0007
    tax
    sep #$20
.a8
    lda $07a90b,x
    plx
    sta $1dae
    jmp loc_07a93d
    .db $10,$12,$14,$12,$10,$0e,$0c,$0e

loc_07a913:
    lda #$00
    sta $1db0
    lsr $1dae
    ldy #$0000
    lda $12,x
    bpl loc_07a928
    ldy #$0006
    eor #$ff
    inc a

loc_07a928:
    sec
    sbc $1dae
    bcc loc_07a93a
    iny
    iny
    sec
    sbc $1dae
    bcc loc_07a93a
    iny
    iny
    bra loc_07a93a

loc_07a93a:
    sty $1dae

loc_07a93d:
    plp
    ply
    plx
    rts

sub_07a941:
    phy
    php
    ldy #$033f
    sty $1db0
    ldy $14d6
    lda $14,x
    sta $0014,y
    lda $1df2
    sta $0012,y
    phy
    ldy $2b,x
    lda $6ace,y
    clc
    adc $6ace,y
    ply
    clc
    adc $0014,y
    sta $0014,y
    lda #$00
    sta $02
    sta $04
    bit #$80
    beq loc_07a979
    lda #$ff
    sta $05
    bra loc_07a97b

loc_07a979:
    stz $05

loc_07a97b:
    lda #$00
    sta $08
    sta $0a
    bit #$80
    beq loc_07a98b
    lda #$ff
    sta $0b
    bra loc_07a98d

loc_07a98b:
    stz $0b

loc_07a98d:
    lda #$4b
    sta $97
    sta $e4
    bit #$80
    beq loc_07a99d
    lda #$ff
    sta $e5
    bra loc_07a99f

loc_07a99d:
    stz $e5

loc_07a99f:
    lda $0016,y
    jsl sub_7f3bf0
    lda $04
    sta $02
    lda $0a
    sta $08
    lda $e4
    sta $97
    lda $0012,y
    jsl Rotate2D
    lda $04
    sta $02
    lda $0a
    sta $08
    lda $e4
    sta $97
    lda $0014,y
    jsl sub_7f38a9
    rep #$20
.a16
    lda $04
    asl a
    asl a
    asl a
    asl a
    asl a
    asl a
    asl a
    sta $04
    lda $0a
    asl a
    asl a
    asl a
    asl a
    asl a
    asl a
    asl a
    sta $0a
    lda $e4
    asl a
    asl a
    asl a
    asl a
    asl a
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
    phy
    ldy $2b,x
    tyx
    ply
    rep #$20
.a16
    lda $000c,y
    sta $6b9c,x
    lda $000e,y
    sta $6b9e,x
    lda $0010,y
    sta $6ba0,x
    sep #$20
.a8
    plx
    plp
    ply
    rtl

sub_07aa2c:
    php
    rep #$20
.a16
    lda #$0000
    sta $3a
    lda $1e34
    clc
    adc $1e32
    eor #$ffff
    inc a
    cmp #$8000
    ror a
    clc
    adc $08
    clc
    adc #$fff5
    bpl loc_07aa57
    eor #$ffff
    inc a
    pha
    lda #$ffff
    sta $3a
    pla

loc_07aa57:
    sta $3c
    lda $1e5a
    sta $3e

loc_07aa5e:
    bit #$ff00
    beq loc_07aa6a
    lsr $3e
    lsr $3c
    lsr a
    bra loc_07aa5e

loc_07aa6a:
    lda $3c
    sta $004204
    sep #$20
.a8
    lda $3e
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
    eor $3a
    sta $3c
    plp
.a8
    rts

sub_07aa8c:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    ldx $12c3
    ldy $2b,x
    lda $d7f4
    bne loc_07aaa6
    jml loc_07aaed

loc_07aaa6:
    lda $1d72
    beq loc_07aaaf
    jml loc_07aaed

loc_07aaaf:
    lda $1e0d
    and #$01
    bne loc_07aaed
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07aac5
    jmp loc_07aaed

loc_07aac5:
    rep #$20
.a16
    lda $1b96
    bit #$0100
    sep #$20
.a8
    bne loc_07aaed
    jsl sub_07b117
    rep #$20
.a16
    lda $6bb8,y
    sep #$20
.a8
    bne loc_07aae2
    jml loc_07aaed

loc_07aae2:
    lda $1e2f
    bit #$80
    beq loc_07aaed
    jml loc_07aaf8

loc_07aaed:
    lda $6bb6,y
    ora #$80
    sta $6bb6,y
    jmp loc_07ac71

loc_07aaf8:
    lda #$00
    sta $1db0
    phy
    ldy #$033f
    jsr sub_07acd8
    ply
    lda #$00
    sta $3a
    sep #$20
    lda $1db0
    bit #$80
    beq loc_07ab27
    lda $6bb6,y
    bmi loc_07ab37
    lda #$10
    clc
    adc $6bb7,y
    sta $6bb7,y
    and #$1f
    sta $6bb7,y
    bra loc_07ab37

loc_07ab27:
    lda $6bb7,y
    and #$0f
    sta $6bb7,y
    lda $6bb6,y
    and #$7f
    sta $6bb6,y

loc_07ab37:
    lda $6bb6,y
    and #$e0
    sta $6bb6,y
    lda $1db0
    and #$1f
    ora $6bb6,y
    sta $6bb6,y
    rep #$20
.a16
    lda $6bca,y
    sep #$20
.a8
    bne loc_07ab57
    jml loc_07ab7a

loc_07ab57:
    lda $6bb6,y
    and #$f0
    ora #$0a
    sta $6bb6,y
    lda $6bb7,y
    inc a
    sta $6bb7,y
    and #$0f
    cmp #$05
    bcc loc_07ab8f
    lda $6bb7,y
    and #$f0
    ora #$03
    sta $6bb7,y
    bra loc_07ab8f

loc_07ab7a:
    lda $6bb7,y
    inc a
    sta $6bb7,y
    and #$0f
    cmp #$06
    bcc loc_07ab8f
    lda $6bb7,y
    and #$f0
    sta $6bb7,y

loc_07ab8f:
    phx
    rep #$20
.a16
    lda $6bb6,y
    and #$000f
    cmp #$0009
    bcc loc_07aba0
    lda #$0000

loc_07aba0:
    asl a
    tax
    sep #$20
.a8
    lda $07ac78,x
    sta $02
    lda $07ac79,x
    sta $08
    lda $6bad,y
    cmp #$c0
    bcc loc_07abbb
    lda #$e0
    sta $02

loc_07abbb:
    plx
    lda $6bdc,y
    sta $3a
    lda $02
    jsl sub_7f2782
    sta $6bdc,y
    lda $6bdd,y
    sta $3a
    lda $08
    jsl sub_7f2782
    sta $6bdd,y
    rep #$20
.a16
    lda $6bb8,y
    beq loc_07abe3
    jml loc_07abec

loc_07abe3:
    lda $6c30,y
    bpl loc_07abec
    jml loc_07ac48

loc_07abec:
    lda $6bca,y
    beq loc_07ac13
    lda #$0409
    sta $6bda,y
    lda $6bb7,y
    bit #$0001
    beq loc_07ac05
    lda #$0209
    sta $6bda,y

loc_07ac05:
    lda #$ac8a
    sta $6bde,y
    lda #$aca9
    sta $6be0,y
    bra loc_07ac32

loc_07ac13:
    lda $6bb7,y
    bit #$0010
    beq loc_07ac20
    lda #$0209
    bra loc_07ac23

loc_07ac20:
    lda #$0809

loc_07ac23:
    sta $6bda,y
    lda #$ac92
    sta $6bde,y
    lda #$acb3
    sta $6be0,y

loc_07ac32:
    lda $6bb6,y
    and #$000f
    cmp #$0009
    bne loc_07ac46
    lda #$accf
    sta $6bde,y
    sta $6be0,y

loc_07ac46:
    bra loc_07ac71

loc_07ac48:
    phx
    lda $c4
    and #$0003
    asl a
    tax
    lda $07acd0,x
    sta $6bda,y
    plx
    lda $6bb6,y
    and #$000f
    bne loc_07ac67
    rep #$20
    lda #$aca0
    bra loc_07ac6c

loc_07ac67:
    rep #$20
    lda #$ac9a

loc_07ac6c:
    sta $6bde,y
    sep #$20

loc_07ac71:
.a8
    sep #$20
    plp
    ply
    plx
    plb
    rtl
    .db $08,$08,$08,$08,$e0,$08,$08,$08,$08,$ec,$08,$08,$e0,$08,$08,$ec
    .db $e0,$ec,$23,$4c,$4f,$43,$4b,$45,$44,$00,$23,$54,$41,$52,$47,$45
    .db $54,$00,$23,$54,$55,$52,$4e,$00,$23,$46,$4f,$52,$57,$41,$52,$44
    .db $00,$23,$28,$4c,$4f,$43,$4b,$45,$44,$29,$00,$23,$28,$54,$41,$52
    .db $47,$45,$54,$29,$00,$23,$28,$54,$55,$52,$4e,$29,$00,$23,$28,$46
    .db $4f,$57,$41,$52,$44,$29,$00,$00,$09,$04,$09,$02,$09,$03,$09,$04

sub_07acd8:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldx #$0000
    stx $1dba
    ldx $12c3
    ldy $2b,x
    lda $6bc5,y
    and #$0f
    sta $1db0
    beq loc_07ad3a
    stz $3a
    lda $6bbf,y
    bpl loc_07ad04
    pha
    lda #$04
    sta $3a
    pla
    eor #$ff
    inc a

loc_07ad04:
    cmp #$0a
    bcc loc_07ad0a
    inc $3a

loc_07ad0a:
    cmp #$40
    bcc loc_07ad10
    inc $3a

loc_07ad10:
    lda $6bc1,y
    bpl loc_07ad1d
    cmp #$f8
    bcs loc_07ad27
    lda #$08
    bra loc_07ad23

loc_07ad1d:
    cmp #$08
    bcc loc_07ad27
    lda #$10

loc_07ad23:
    ora $3a
    sta $3a

loc_07ad27:
    rep #$20
.a16
    phx
    lda $3a
    and #$00ff
    tax
    lda $07b4a5,x
    sep #$20
.a8
    sta $1db0
    plx

loc_07ad3a:
    lda $1db0
    and #$0f
    cmp #$00
    beq loc_07ad4d
    lda $6bc2,y
    ora #$20
    sta $6bc2,y
    bra loc_07ad85

loc_07ad4d:
    lda $1db0
    ora $1dba
    sta $1db0
    lda $6bc2,y
    and #$df
    sta $6bc2,y
    lda $1e17
    beq loc_07ad6c
    lda $1db0
    and #$0f
    cmp #$00
    beq loc_07ad7b

loc_07ad6c:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    bne loc_07ad7b
    jmp loc_07ad85

loc_07ad7b:
    lda $1db0
    and #$f0
    ora #$09
    sta $1db0

loc_07ad85:
    phx
    phy
    php
    lda $6bc5,y
    and #$0f
    cmp #$00
    beq loc_07ad95
    jml loc_07ae48

loc_07ad95:
    rep #$20
.a16
    lda $6bb8,y
    bne loc_07ada0
    jml loc_07ae48

loc_07ada0:
    ldx #$033f
    lda $6bcc,y
    sec
    sbc $0c,x
    sta $04
    bpl loc_07adb1
    eor #$ffff
    inc a

loc_07adb1:
    sta $3e
    lda $6bce,y
    sec
    sbc $0e,x
    sta $0a
    bpl loc_07adc1
    eor #$ffff
    inc a

loc_07adc1:
    cmp $3e
    bmi loc_07adc7
    sta $3e

loc_07adc7:
    lda $6bd0,y
    sec
    sbc $10,x
    sta $e4
    bpl loc_07add5
    eor #$ffff
    inc a

loc_07add5:
    cmp $3e
    bmi loc_07addb
    sta $3e

loc_07addb:
    stz $3a
    lda $3e

loc_07addf:
    bit #$f000
    beq loc_07ade9
    lsr a
    inc $3a
    bra loc_07addf

loc_07ade9:
    lda $3a

loc_07adeb:
    dec $3a
    bmi loc_07ae09
    lda $04
    cmp #$8000
    ror a
    sta $04
    lda $0a
    cmp #$8000
    ror a
    sta $0a
    lda $e4
    cmp #$8000
    ror a
    sta $e4
    bra loc_07adeb

loc_07ae09:
    ldy $14d6
    lda $0c,x
    clc
    adc $04
    sta $000c,y
    lda $0e,x
    clc
    adc $0a
    sta $000e,y
    lda $10,x
    clc
    adc $e4
    sta $0010,y
    ldy #$033f
    ldx $14d6
    jsr sub_07affa
    ldx $12c3
    ldy $2b,x
    rep #$20
    lda $79
    bpl loc_07ae3b
    lda #$0000

loc_07ae3b:
    sta $6bad,y
    lda $7b
    bpl loc_07ae45
    lda #$0000

loc_07ae45:
    sta $6baf,y

loc_07ae48:
.a8
    sep #$20
    plp
    ply
    plx
    plp
    ply
    plx
    rts

sub_07ae51:
    php
    rep #$30
.a16
    lda $0c,x
    sec
    sbc $000c,y
    bpl loc_07ae60
    eor #$ffff
    inc a

loc_07ae60:
    bit #$f000
    beq loc_07ae68
    lda #$0fff

loc_07ae68:
    sta $12de
    lda $10,x
    sec
    sbc $0010,y
    bpl loc_07ae77
    eor #$ffff
    inc a

loc_07ae77:
    bit #$f000
    beq loc_07ae7f
    lda #$0fff

loc_07ae7f:
    clc
    adc $12de
    bit #$f000
    beq loc_07ae8b
    lda #$0fff

loc_07ae8b:
    sta $12de
    plp
.a8
    rts

sub_07ae90:
    php
    rep #$30
.a16
    lda $000c,y
    cmp #$8000
    ror a
    sta $3a
    lda $0c,x
    cmp #$8000
    ror a
    sec
    sbc $3a
    bpl loc_07aeab
    eor #$ffff
    inc a

loc_07aeab:
    sta $12de
    lda $0010,y
    cmp #$8000
    ror a
    sta $3e
    lda $10,x
    cmp #$8000
    ror a
    sec
    sbc $3e
    bpl loc_07aec6
    eor #$ffff
    inc a

loc_07aec6:
    clc
    adc $12de
    sta $12de
    stz $3a

loc_07aecf:
    bit #$f000
    beq loc_07aed9
    lsr a
    inc $3a
    bra loc_07aecf

loc_07aed9:
    sta $12de
    phx
    tyx
    ply
    phx
    phy
    rep #$20
    stz $149d
    lda $12de
    sta $08
    lda $0e,x
    cmp #$8000
    ror a
    sta $3c
    lda $000e,y
    cmp #$8000
    ror a
    sec
    sbc $3c

loc_07aefd:
    dec $3a
    bmi loc_07af07
    cmp #$8000
    ror a
    bra loc_07aefd

loc_07af07:
    sta $02
    jsl sub_7f1d58
    rep #$30
    ply
    plx
    clc
    adc $12,x
    sta $1dae
    sep #$20
.a8
    jsl sub_7f2188
.a16
    rep #$20
    eor #$ffff
    inc a
    clc
    adc $14,x
    sta $1db0
    sep #$20
.a8
    lda $000c,y
    sec
    sbc $0c,x
    bpl loc_07af36
    eor #$ff
    inc a

loc_07af36:
    sta $12de
    lda $0010,y
    sec
    sbc $10,x
    bpl loc_07af44
    eor #$ff
    inc a

loc_07af44:
    clc
    adc $12de
    sta $12de
    phx
    tyx
    ply
    plp
    rts

sub_07af50:
.a16
    php
    rep #$20
    jsl sub_7f1d58
    sta $02
    plp
    rtl

sub_07af5b:
.a8
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6c38,y
    bmi loc_07af91
    lda $6c00,y
    cmp $6c38,y
    beq loc_07af91
    bcs loc_07af7d
    lda $6c38,y
    dec a
    bpl loc_07af8c
    lda #$00
    bra loc_07af8c

loc_07af7d:
    lda $1dd5
    sta $3a
    lda $6c38,y
    inc a
    cmp $3a
    bcc loc_07af8c
    lda $3a

loc_07af8c:
    ora #$80
    sta $6c38,y

loc_07af91:
    lda $6c38,y
    jsr LowShieldAlert
    plp
    ply
    plx
    rtl

LowShieldAlert:    ; shield fell below the saved $6c0a,y and is under 13: queues sound $16 (5-12) or $17 (under 5); then saves the shield to $6c0a,y, the $07:AFE3 copy (code)
    php
    sep #$20
    rep #$10
    lda $2d,x
    beq loc_07afe6
    lda $6c00,y
    cmp #$28
    beq loc_07afe0
    cmp $6c0a,y
    bcs loc_07afe0
    cmp #$0d
    bcs loc_07afe0
    cmp #$05
    bcc loc_07afcd
    rep #$20
.a16
    lda #$0016
    cpx $12c3
    beq loc_07afc5
    ora #$8000

loc_07afc5:
    jsl QueueSound
    sep #$20
.a8
    bra loc_07afe0

loc_07afcd:
    rep #$20
.a16
    lda #$0017
    cpx $12c3
    beq loc_07afda
    ora #$8000

loc_07afda:
    jsl QueueSound
    sep #$20

loc_07afe0:
.a8
    lda $6c00,y
    sta $6c0a,y

loc_07afe6:
    plp
    rts

sub_07afe8:
    php
    rep #$30
.a16
    lda $0039,y
    sta $c7
    lda $003b,y
    sta $c9
    lda $003d,y
    bra loc_07b00a

sub_07affa:
.a8
    php
    rep #$30
.a16
    lda $000c,y
    sta $c7
    lda $000e,y
    sta $c9
    lda $0010,y

loc_07b00a:
    sta $cb
    lda $0012,y
    sta $1595
    lda $0014,y
    sta $1597
    lda $0016,y
    sta $1599
    sep #$20
.a8
    lda $5e
    pha
    jsl sub_7f77fe
    jsl sub_038e7e
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    plp
    rts

sub_07b038:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda #$00
    sta $6ba4,y
    rep #$20
.a16
    lda $1b96
    bit #$0100
    sep #$20
.a8
    bne loc_07b0a1
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07b061
    jmp loc_07b0a1

loc_07b061:
    lda $d7f4
    bne loc_07b06a
    jml loc_07b0a1

loc_07b06a:
    lda $1e0d
    and #$01
    bne loc_07b0a1
    lda $1e2f
    bit #$80
    bne loc_07b07c
    jml loc_07b0a1

loc_07b07c:
    lda $6b7d,y
    bit #$80
    beq loc_07b087
    jml loc_07b0a1

loc_07b087:
    lda $6b63,y
    bit #$40
    beq loc_07b092
    jml loc_07b09a

loc_07b092:
    and #$80
    beq loc_07b09a
    jml loc_07b0a8

loc_07b09a:
    lda #$40
    sta $6ba3,y
    bra loc_07b0b7

loc_07b0a1:
    lda #$00
    sta $6ba3,y
    bra loc_07b0b7

loc_07b0a8:
    lda #$c0
    sta $6ba3,y
    lda #$00
    sta $6ba4,y
    lda $16,x
    sta $6ba2,y

loc_07b0b7:
    lda $1aa6
    bit #$02
    beq loc_07b0c2
    jml loc_07b0ca

loc_07b0c2:
    lda $6ba4,y
    ora #$04
    sta $6ba4,y

loc_07b0ca:
    plp
    ply
    plx
    rtl

sub_07b0ce:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda #$0000
    sta $6bb8,y
    sta $6bcc,y
    sta $6bce,y
    sta $6bd0,y
    lda #$ffff
    sta $6bba,y
    sep #$20
.a8
    lda $1aa6
    bit #$02
    beq loc_07b0fb
    jml loc_07b107

loc_07b0fb:
    phy
    ldy $2b,x
    lda $6bc2,y
    ora #$80
    sta $6bc2,y
    ply

loc_07b107:
    phy
    ldy $2b,x
    lda $6bc2,y
    ora #$40
    sta $6bc2,y
    ply
    plp
    ply
    plx
    rtl

sub_07b117:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda $6bb8,y
    sep #$20
.a8
    beq loc_07b12d
    jml loc_07b1e6

loc_07b12d:
    lda $c4
    bit #$1f
    beq loc_07b137
    jml loc_07b1b6

loc_07b137:
    phx
    phy
    rep #$20
.a16
    lda #$ffff
    sta $1dc0
    ldx $14d6
    ldy $1285
    bne loc_07b14d
    jml loc_07b19c

loc_07b14d:
    lda $0012,y
    bit #$0020
    beq loc_07b196
    bit #$0001
    bne loc_07b196
    lda $0004,y
    sta $0c,x
    lda $0006,y
    sta $0e,x
    lda $0008,y
    sta $10,x
    phy
    ldy #$033f
    jsl DistanceXZ
    rep #$20
    ply
    lda $12de
    cmp #$07d0
    bcc loc_07b196
    lda $12de
    cmp $1dc0
    bcs loc_07b196
    sta $1dc0
    lda $0c,x
    sta $1dbe
    lda $0e,x
    sta $1dbc
    lda $10,x
    sta $1dba

loc_07b196:
    lda $0000,y
    tay
    bne loc_07b14d

loc_07b19c:
    ply
    plx
    lda $1dc0
    sta $6bd8,y
    lda $1dbe
    sta $6bd2,y
    lda $1dbc
    sta $6bd4,y
    lda $1dba
    sta $6bd6,y

loc_07b1b6:
.a8
    ldy $2b,x
    ldx $14d6
    rep #$20
.a16
    lda $6bd8,y
    cmp #$ffff
    beq loc_07b1e6
    lda $6bd2,y
    sta $0c,x
    lda $6bd4,y
    sta $0e,x
    lda $6bd6,y
    sta $10,x
    sep #$20
.a8
    rep #$20
.a16
    lda $6bd8,y
    cmp #$07d0
    sep #$20
.a8
    bcc loc_07b1e6
    jsl sub_07b1ea

loc_07b1e6:
    plp
    ply
    plx
    rtl

sub_07b1ea:
    phb
    phx
    phy
    php
    lda #$7e
    pha
    plb
    sep #$20
    rep #$10
    lda #$08
    sta $1db2
    bra loc_07b20c

sub_07b1fd:
    phb
    phx
    phy
    php
    lda #$7e
    pha
    plb
    sep #$20
    rep #$10
    stz $1db2

loc_07b20c:
    stx $1dc0
    ldy $12c3
    phx
    ldx $2b,y
    txy
    plx
    lda $6bc2,y
    bit #$10
    beq loc_07b222
    jml loc_07b3aa

loc_07b222:
    lda $6bb6,y
    and #$7f
    sta $6bb6,y
    rep #$20
.a16
    lda $6bba,y
    sta $12de
    sep #$20
.a8
    ldy #$033f
    jsl DistanceXZ
    rep #$20
.a16
    lda $12de
    sta $1db4
    sep #$20
.a8
    jsr sub_07ae90
    rep #$20
.a16
    lda $1db0
    sta $1dba
    lda $1dae
    sta $1db8
    sep #$20
.a8
    phx
    rep #$20
.a16
    ldx #$0000
    lda $1dba
    sta $1dba
    bmi loc_07b275
    cmp $07b481,x
    bcc loc_07b284
    inc $1db0
    lda $07b47d,x
    bra loc_07b2a5

loc_07b275:
    cmp $07b483,x
    bcs loc_07b284
    inc $1db0
    lda $07b47f,x
    bra loc_07b2a5

loc_07b284:
    lda $1db9
    sta $3c
    lda $1dbb
    bit #$0080
    beq loc_07b298
    rol $3c
    jsr sub_07b461
    bra loc_07b2a1

loc_07b298:
    rol $3c
    jsr sub_07b456
    eor #$ffff
    inc a

loc_07b2a1:
    clc
    adc #$0070

loc_07b2a5:
    sta $79
    ldx #$0000
    lda $1dba
    bpl loc_07b2b9
    cmp #$ee00
    bpl loc_07b2c1
    ldx #$0010
    bra loc_07b2c1

loc_07b2b9:
    cmp #$1500
    bcc loc_07b2c1
    ldx #$0008

loc_07b2c1:
    lda $1db8
    bmi loc_07b2d5
    cmp $07b489,x
    bcc loc_07b2e4
    inc $1db0
    lda $07b485,x
    bra loc_07b32c

loc_07b2d5:
    cmp $07b48b,x
    bcs loc_07b2e4
    inc $1db0
    lda $07b487,x
    bra loc_07b32c

loc_07b2e4:
    lda $1db9
    sta $3a
    lda $1db9
    bit #$0080
    beq loc_07b2fc
    rol $3a
    jsr sub_07b461
    eor #$ffff
    inc a
    bra loc_07b301

loc_07b2fc:
    rol $3a
    jsr sub_07b456

loc_07b301:
    sta $3a
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    pha
    clc
    adc $3a
    sta $3a
    pla
    cmp #$8000
    ror a
    eor #$ffff
    inc a
    pha
    clc
    adc $3a
    sta $3a
    pla
    cmp #$8000
    ror a
    clc
    adc $3a
    clc
    adc #$0060

loc_07b32c:
    sta $7b
    plx
    ldx $12c3
    rep #$20
    ldy $2b,x
    lda $6bca,y
    beq loc_07b34e
    cmp $1dc0
    bne loc_07b34e
    sep #$20
.a8
    lda $6bc2,y
    ora #$10
    sta $6bc2,y
    rep #$20
.a16
    bra loc_07b35c

loc_07b34e:
    lda $1db4
    bpl loc_07b357
    eor #$ffff
    inc a

loc_07b357:
    cmp $6bbc,y
    bcs loc_07b3aa

loc_07b35c:
    lda $1db4
    sta $6bbc,y
    lda $12de
    sta $6bba,y
    phx
    ldx $1dc0
    txa
    sta $6bb8,y
    lda $000c,x
    sta $6bcc,y
    lda $000e,x
    sta $6bce,y
    lda $0010,x
    sta $6bd0,y
    plx
    lda $1dba
    sta $6bbe,y
    lda $1db8
    sta $6bc0,y
    sep #$20
.a8
    lda $79
    sta $6bad,y
    lda $7b
    sta $6baf,y
    lda $1db0
    sta $6bc5,y
    lda $6bc2,y
    ora $1db2
    sta $6bc2,y

loc_07b3aa:
    plp
    ply
    plx
    plb
    rtl

sub_07b3af:
    phy
    php
    sep #$20
    rep #$10
    stz $3a
    rep #$20
.a16
    lda $6c1c,y
    cmp #$0000
    sep #$20
.a8
    bne loc_07b3c7
    jml loc_07b452

loc_07b3c7:
    lda $6a8c,y
    and #$40
    beq loc_07b3d2
    jml loc_07b44e

loc_07b3d2:
    rep #$20
.a16
    lda $6a92,y
    sta $3a
    lda $6a94,y
    sta $3c
    lda $6a96,y
    sta $3e
    sep #$20
.a8
    jsr sub_07b8ca
    bcs loc_07b3ee
    jml loc_07b452

loc_07b3ee:
    ldy #$033f
    phx
    ldx $14d6
    jsr sub_07affa
    jsr sub_07b77b
    plx
    ldy $2b,x
    rep #$20
.a16
    lda $6a90,y
    clc
    adc $3a
    bpl loc_07b40b
    lda #$0001

loc_07b40b:
    sta $6c26,y
    sep #$20
.a8
    lda $23,x
    and #$40
    beq loc_07b41a
    jml loc_07b42e

loc_07b41a:
    rep #$20
.a16
    lda $79
    clc
    adc #$0010
    sta $79
    lda $7b
    clc
    adc #$0010
    sta $7b
    bra loc_07b440

loc_07b42e:
.a8
    rep #$20
.a16
    lda $79
    clc
    adc #$0040
    sta $79
    lda $7b
    clc
    adc #$0078
    sta $7b

loc_07b440:
    rep #$20
    lda $79
    sta $6c1e,y
    lda $7b
    sta $6c20,y
    sep #$20

loc_07b44e:
.a8
    plp
    ply
    sec
    rts

loc_07b452:
    plp
    ply
    clc
    rts

sub_07b456:
.a16
    phx
    php
    and #$001f
    tax
    plp
    bcs loc_07b474
    bra loc_07b46e

sub_07b461:
    phx
    php
    eor #$ffff
    inc a
    and #$001f
    tax
    plp
    bcc loc_07b474

loc_07b46e:
    lda $07b4bd,x
    bra loc_07b478

loc_07b474:
    lda $07b4dd,x

loc_07b478:
    and #$00ff
    plx
    rts
    .db $10,$00,$d0,$00,$00,$18,$00,$e8,$b0,$00,$20,$00,$00,$14,$00,$ee
    .db $9a,$00,$20,$00,$00,$0e,$00,$ec,$84,$00,$3c,$00,$00,$0d,$00,$f3
    .db $70,$00,$60,$00,$58,$00,$30,$00,$00,$01,$01,$00,$00,$02,$02,$00
    .db $03,$05,$05,$00,$03,$06,$06,$00,$04,$07,$07,$00,$04,$08,$08,$00
    .db $00,$03,$06,$09,$0c,$10,$13,$16,$19,$1c,$20,$23,$27,$2a,$2e,$31
    .db $35,$38,$3c,$40,$44,$48,$4c,$51,$55,$5a,$5e,$64,$69,$6e,$74,$79
    .db $01,$04,$08,$0b,$0e,$11,$14,$18,$1b,$1e,$21,$25,$28,$2c,$2f,$33
    .db $36,$3a,$3e,$42,$46,$4a,$4f,$53,$58,$5c,$61,$66,$6b,$71,$77,$7c

sub_07b4fd:
.a8
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6c2a,y
    beq loc_07b515
    sec
    sbc $6a8d,y
    bpl loc_07b512
    lda #$00

loc_07b512:
    sta $6c2a,y

loc_07b515:
    lda $6c2b,y
    beq loc_07b525
    sec
    sbc $6a8e,y
    bpl loc_07b522
    lda #$00

loc_07b522:
    sta $6c2b,y

loc_07b525:
    lda $6c2c,y
    beq loc_07b535
    sec
    sbc $6a8f,y
    bpl loc_07b532
    lda #$00

loc_07b532:
    sta $6c2c,y

loc_07b535:
    lda $6c2a,y
    ora $6c2b,y
    ora $6c2c,y
    beq loc_07b544
    plp
    ply
    sec
    rts

loc_07b544:
    plp
    ply
    clc
    rts

sub_07b548:
    phy
    php
    ldy $2b,x
    sep #$20
    rep #$10
    lda $6c11,y
    bne loc_07b559
    jml loc_07b5fa

loc_07b559:
    lda $6c12,y
    bit #$20
    bne loc_07b564
    jml loc_07b608

loc_07b564:
    lda $6c12,y
    bit #$02
    beq loc_07b5a1
    pha
    bit #$01
    beq loc_07b574
    lda #$04
    bra loc_07b576

loc_07b574:
    lda #$02

loc_07b576:
    sta $3a
    pla
    and #$dc
    sta $6c12,y
    lda $6c0b,y
    clc
    adc $3a
    bit #$e0
    beq loc_07b58a
    lda #$1f

loc_07b58a:
    sta $6c0b,y
    sta $6c0c,y
    sta $6c0d,y
    lda #$04
    sta $6c0e,y
    sta $6c0f,y
    sta $6c10,y
    jmp loc_07b638

loc_07b5a1:
    bit #$40
    bne loc_07b5a9
    bit #$80
    bne loc_07b608

loc_07b5a9:
    bit #$08
    bne loc_07b5d3
    bit #$10
    bne loc_07b5c2
    lda #$16
    sta $6c0b,y
    lda #$12
    sta $6c0c,y
    lda #$12
    sta $6c0d,y
    bra loc_07b5e2

loc_07b5c2:
    lda #$1f
    sta $6c0b,y
    lda #$00
    sta $6c0c,y
    lda #$04
    sta $6c0d,y
    bra loc_07b5e2

loc_07b5d3:
    lda #$00
    sta $6c0b,y
    lda #$00
    sta $6c0c,y
    lda #$0c
    sta $6c0d,y

loc_07b5e2:
    lda #$04
    sta $6c0e,y
    sta $6c0f,y
    sta $6c10,y
    lda $6c12,y
    and #$df
    bit #$40
    beq loc_07b605
    ora #$80
    bra loc_07b605

loc_07b5fa:
    lda #$00
    sta $6c0b,y
    sta $6c0c,y
    sta $6c0d,y

loc_07b605:
    sta $6c12,y

loc_07b608:
    lda $6c0b,y
    beq loc_07b618
    sec
    sbc $6c0e,y
    bpl loc_07b615
    lda #$00

loc_07b615:
    sta $6c0b,y

loc_07b618:
    lda $6c0c,y
    beq loc_07b628
    sec
    sbc $6c0f,y
    bpl loc_07b625
    lda #$00

loc_07b625:
    sta $6c0c,y

loc_07b628:
    lda $6c0d,y
    beq loc_07b638
    sec
    sbc $6c10,y
    bpl loc_07b635
    lda #$00

loc_07b635:
    sta $6c0d,y

loc_07b638:
    lda $6c0b,y
    ora $6c0c,y
    ora $6c0d,y
    bne loc_07b648
    lda #$00
    sta $6c11,y

loc_07b648:
    plp
    ply
    rts

sub_07b64b:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldx $12c3
    ldy $2b,x
    rep #$20
.a16
    lda $6c1c,y
    cmp #$0008
    sep #$20
.a8
    bne loc_07b679
    lda $6c00,y
    bne loc_07b66c
    jml loc_07b679

loc_07b66c:
    lda #$04
    sta $6c11,y
    lda $6c12,y
    ora #$24
    sta $6c12,y

loc_07b679:
    plp
    ply
    plx
    rtl

sub_07b67d:
    phx
    php
    sep #$20
    rep #$10
    ldy #$0000
    sty $3a
    ldy $12c3
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6a8c,y
    and #$7f
    sta $6a8c,y
    ply
    phx
    tyx
    ply
    phy
    phx
    ldx $2b,y
    txy
    plx
    lda #$0a
    sta $6bea,y
    ply
    lda #$03
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b79f
    lda #$03
    sta $3a
    lda #$03
    sta $3c
    lda #$02
    sta $3e
    jsl sub_07b89b
    lda #$19
    sta $3a
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b861
    jsl sub_07b833
    ldy $12c3
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6a8c,y
    ora #$80
    sta $6a8c,y
    ply
    phx
    tyx
    ply
    plp
    plx
    rtl

sub_07b6ef:
    phx
    php
    sep #$20
    rep #$10
    asl $3a
    lda #$03
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b79f
    lda #$01
    sta $3a
    lda #$02
    sta $3c
    lda #$02
    sta $3e
    jsl sub_07b89b
    lda #$1f
    sta $3a
    sta $3c
    sta $3e
    jsl sub_07b861
    jsl sub_07b833
    plp
    plx
    rtl

sub_07b726:
    phx
    php
    sep #$20
    rep #$10
    lda #$03
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b79f
    lda #$06
    sta $3a
    lda #$06
    sta $3c
    lda #$03
    sta $3e
    bra loc_07b764

sub_07b746:
    phx
    php
    sep #$20
    rep #$10
    lda #$03
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b79f
    lda #$04
    sta $3a
    lda #$08
    sta $3c
    lda #$08
    sta $3e

loc_07b764:
    jsl sub_07b89b
    lda #$1f
    sta $3a
    sta $3c
    sta $3e
    jsl sub_07b861
    jsl sub_07b833
    plp
    plx
    rtl

sub_07b77b:
    jsr sub_07ae51
    rep #$20
.a16
    lda $12de
    xba
    and #$00ff
    bit #$fff0
    beq loc_07b78f
    lda #$000f

loc_07b78f:
    eor #$ffff
    and #$000f
    bne loc_07b79a
    lda #$0001

loc_07b79a:
    sta $3a
    sep #$20
.a8
    rts

sub_07b79f:
    phy
    php
    sep #$20
    rep #$10
    ldy $12c3
    phx
    ldx $2b,y
    txy
    plx
    lda $6a8c,y
    and #$bf
    sta $6a8c,y
    lda $6a8c,y
    and #$80
    beq loc_07b7c0
    jml loc_07b7fa

loc_07b7c0:
    rep #$20
.a16
    lda #$0002
    sta $6c1c,y
    lda $0c,x
    sta $6a92,y
    lda $0e,x
    sta $6a94,y
    lda $10,x
    sta $6a96,y
    lda #$00ff
    sta $6c24,y
    lda $3a
    sta $6a90,y
    bpl loc_07b7e7
    lda #$0001

loc_07b7e7:
    sta $6c26,y
    txa
    sta $6a98,y
    sep #$20
.a8
    lda $3c
    sta $6c29,y
    lda $3e
    sta $6c28,y

loc_07b7fa:
    plp
    ply
    rtl

sub_07b7fd:
    phy
    php
    sep #$20
    rep #$10
    ldy $12c3
    jsr sub_07b80c
    plp
    ply
    rtl

sub_07b80c:
    phx
    ldx $2b,y
    txy
    plx
    lda $6a8c,y
    and #$80
    beq loc_07b81c
    jml loc_07b832

loc_07b81c:
    lda $6a8c,y
    ora #$40
    sta $6a8c,y
    rep #$20
.a16
    lda $3a
    sta $6c1e,y
    lda $3c
    sta $6c20,y
    sep #$20

loc_07b832:
.a8
    rts

sub_07b833:
    phy
    php
    sep #$20
    rep #$10
    ldy $12c3
    jsr sub_07b842
    plp
    ply
    rtl

sub_07b842:
    phx
    ldx $2b,y
    txy
    plx
    rep #$20
.a16
    txa
    cmp $6a98,y
    bne loc_07b85e
    lda $0c,x
    sta $6a92,y
    lda $0e,x
    sta $6a94,y
    lda $10,x
    sta $6a96,y

loc_07b85e:
    sep #$20
.a8
    rts

sub_07b861:
    phy
    php
    sep #$20
    rep #$10
    ldy $12c3
    jsr sub_07b87b
    lda $1aa6
    bit #$02
    beq loc_07b878
    jml loc_07b878

loc_07b878:
    plp
    ply
    rtl

sub_07b87b:
    phx
    ldx $2b,y
    txy
    plx
    lda $6a8c,y
    and #$80
    beq loc_07b88b
    jml loc_07b89a

loc_07b88b:
    lda $3a
    sta $6c2a,y
    lda $3c
    sta $6c2b,y
    lda $3e
    sta $6c2c,y

loc_07b89a:
    rts

sub_07b89b:
    phy
    php
    sep #$20
    rep #$10
    ldy $12c3
    jsr sub_07b8aa
    plp
    ply
    rtl

sub_07b8aa:
    phx
    ldx $2b,y
    txy
    plx
    lda $6a8c,y
    and #$80
    beq loc_07b8ba
    jml loc_07b8c9

loc_07b8ba:
    lda $3a
    sta $6a8d,y
    lda $3c
    sta $6a8e,y
    lda $3e
    sta $6a8f,y

loc_07b8c9:
    rts

sub_07b8ca:
    phy
    php
    sep #$20
    rep #$10
    phx
    ldx $14d6
    rep #$20
.a16
    lda $3a
    sta $0c,x
    lda $3c
    sta $0e,x
    lda $3e
    sta $10,x
    sep #$20
.a8
    plx
    ldy #$033f
    phx
    ldx $14d6
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    beq loc_07b8fa

loc_07b8fa:
    sta $14,x
    lda $0015,y
    eor #$ff
    inc a
    sec
    sbc $14,x
    clc
    adc #$40
    bpl loc_07b90e
    jml loc_07b913

loc_07b90e:
    plx
    plp
    ply
    clc
    rts

loc_07b913:
    plx
    plp
    ply
    sec
    rts
    .incbin "data/03b918-03bd46.bin"

sub_07bd46:
    phx
    phy
    php
    lda $1aa6
    bit #$40
    bne loc_07bd5a
    rep #$30
.a16
    lda $1aa6
    bit #$0008
    beq loc_07bd5e

loc_07bd5a:
.a8
    plp
    ply
    plx
    rtl

loc_07bd5e:
.a16
    ldx #$dfff
    ldy #$c000
    lda $1aa7
    bit #$0008
    beq loc_07bd72
    ldx #$bfff
    ldy #$a000

loc_07bd72:
    stx $1dc0
    sty $1dc2
    lda $1d9d
    and #$0080
    beq loc_07bd88
    ldx #$19af
    jsr sub_07be7f
    bra loc_07bdb4

loc_07bd88:
    lda #$bec1
    sta $1dbe
    lda $1aa6
    bit #$0002
    beq loc_07bda2
    lda #$bec1
    sta $1dbe
    lda #$bee1
    sta $1dbe

loc_07bda2:
    lda $001e3c
    tay
    lda $001e0b
    sta $1dcc
    lda #$19af
    jsr sub_07bdba

loc_07bdb4:
    jmp loc_07bdb7

loc_07bdb7:
    jmp loc_07bd5a

sub_07bdba:
    sty $1db2
    sta $1db0
    lda $1dcc
    tay
    bpl loc_07bdca
    eor #$ffff
    inc a

loc_07bdca:
    xba
    and #$00ff
    bit #$00f8
    beq loc_07bdd6
    lda #$0007

loc_07bdd6:
    asl a
    tax
    tya
    bmi loc_07be2c
    lda $07be9b,x
    sta $1db6
    txa
    clc
    adc $1dbe
    tax
    lda $1db2
    sec
    sbc $070000,x
    sta $1dba
    ora $1dc2
    ldx $1db0
    and $1dc0
    sta $000000,x
    ldy #$0000
    sty $1db8

loc_07be06:
    lda $1db8
    clc
    adc $1db6
    sta $1db8
    lda $1dba
    adc #$0000
    sta $1dba
    and $1dc0
    ora $1dc2
    sta $000002,x
    inx
    inx
    iny
    cpy #$0020
    bne loc_07be06
    rts

loc_07be2c:
    lda $07be9b,x
    sta $1db4
    sta $1db6
    txa
    clc
    adc $1dbe
    tax
    lda $1db2
    clc
    adc $070000,x
    sta $1dba
    ora $1dc2
    ldx $1db0
    and #$c3ff
    sta $0000,x
    ldy #$0000
    sty $1db8

loc_07be59:
    lda $1db8
    sec
    sbc $1db6
    sta $1db8
    lda $1dba
    sbc #$0000
    sta $1dba
    and $1dc0
    ora $1dc2
    sta $000002,x
    inx
    inx
    iny
    cpy #$0020
    bne loc_07be59
    rts

sub_07be7f:
    rep #$30
    ldy #$0020
    lda $1dc2
    and $1dc0

loc_07be8a:
    lda #$0000
    sta $000000,x
    sta $000000,x
    inx
    inx
    dey
    bne loc_07be8a
    rts
    .db $00,$00,$4b,$32,$9c,$64,$11,$97,$b5,$c9,$98,$fc,$ff,$ff,$ff,$ff
    .db $6b,$19,$d8,$32,$4a,$4c,$c1,$65,$41,$7f,$ca,$98,$60,$b2,$04,$cc
    .db $b8,$e5,$7e,$ff,$ff,$ff,$00,$00,$02,$00,$05,$00,$07,$00,$0a,$00
    .db $0c,$00,$0c,$00,$0c,$00,$00,$00,$03,$00,$07,$00,$0b,$00,$0e,$00
    .db $12,$00,$12,$00,$12,$00,$00,$00,$03,$00,$06,$00,$09,$00,$0c,$00
    .db $0f,$00,$0f,$00,$0f,$00,$20,$f5,$be,$6b

sub_07bef5:
.a8
    php
    sep #$20
    rep #$10
    rep #$20
.a16
    lda #$7e1e
    sta $0019,y
    sep #$20
.a8
    lda #$7f
    sta $001b,y
    lda #$ff
    sta $1cf0,y
    lda #$01
    sta $002d,y
    lda #$01
    sta $002e,y
    lda $0022,y
    ora #$04
    sta $0022,y
    jsl sub_7f2baa
    jsl sub_7f2bd2
    lda $0026,y
    ora #$08
    sta $0026,y
    lda $0031,y
    and #$ef
    sta $0031,y
    lda $0021,y
    ora #$01
    sta $0021,y
    plp
    rts
    .incbin "data/03bf42-03c6e8.bin"

sub_07c6e8:
    phx
    phy
    php
    sep #$20
    rep #$10
    rep #$20
.a16
    lda #$c054
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07c702
    jml loc_07c823

loc_07c702:
    rep #$20
.a16
    lda #$c714
    sta $0019,y
    sep #$20
.a8
    lda #$07
    sta $001b,y
    jmp loc_07c761
    .db $bd,$ca,$1c,$18,$69,$01,$30,$03,$18,$69,$04,$29,$7f,$c9,$04,$90
    .db $0b,$a9,$04,$3a,$09,$80,$9d,$ca,$1c,$4c,$61,$c8,$09,$80,$9d,$ca
    .db $1c,$4c,$48,$c8

sub_07c738:
    phx
    phy
    php
    sep #$20
    rep #$10
    rep #$20
.a16
    lda #$bf04
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07c752
    jml loc_07c823

loc_07c752:
    rep #$20
.a16
    lda #$c827
    sta $0019,y
    sep #$20
.a8
    lda #$07
    sta $001b,y

loc_07c761:
    lda #$10
    jsl sub_7f2a3d
    rep #$20
.a16
    tya
    sta $1cd8,y
    sep #$20
.a8
    lda $0026,y
    ora #$08
    sta $0026,y
    jsl sub_068060
    lda $0020,y
    ora #$20
    sta $0020,y
    lda #$00
    sta $1cc8,y
    lda $0a
    sta $1cda,y
    lda $08
    ora #$80
    sta $1cca,y
    lda $02
    sta $02
    sta $04
    bit #$80
    beq loc_07c7a4
    lda #$ff
    sta $05
    bra loc_07c7a6

loc_07c7a4:
    stz $05

loc_07c7a6:
    lda #$00
    sta $08
    sta $0a
    bit #$80
    beq loc_07c7b6
    lda #$ff
    sta $0b
    bra loc_07c7b8

loc_07c7b6:
    stz $0b

loc_07c7b8:
    lda $97
    sta $97
    sta $e4
    bit #$80
    beq loc_07c7c8
    lda #$ff
    sta $e5
    bra loc_07c7ca

loc_07c7c8:
    stz $e5

loc_07c7ca:
    lda $16,x
    jsl sub_7f3bf0
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
    rep #$20
.a16
    phx
    phy
    ldy $2b,x
    tyx
    ply
    lda $6b0b,x
    sta $0032,y
    lda #$0000
    sta $0034,y
    lda $6b0f,x
    sta $0036,y
    sep #$20
.a8
    plx
    lda #$04
    sta $1cda,x

loc_07c823:
    plp
    ply
    plx
    rtl
    .incbin "data/03c827-03cd70.bin"

sub_07cd70:
    phy
    php
    sep #$20
    rep #$10
    lda $d7f4
    bne loc_07cd7f
    jml loc_07cdc1

loc_07cd7f:
    ldy $2b,x
    lda $6c02,y
    bit #$1f
    beq loc_07cdc1
    lda #$12
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07cd97
    jml loc_07cdc1

loc_07cd97:
    rep #$20
.a16
    lda #$c5cc
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07cdaa
    jml loc_07cdc1

loc_07cdaa:
    lda #$12
    jsl sub_7f2a3d
    jsr sub_07bef5
    rep #$20
.a16
    lda #$f2b9
    sta $002b,y
    sep #$20
.a8
    plp
    ply
    sec
    rtl

loc_07cdc1:
    plp
    ply
    clc
    rtl

sub_07cdc5:
    phy
    php
    sep #$20
    rep #$10
    lda #$27
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07cdda
    jml loc_07ce2e

loc_07cdda:
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07cded
    jml loc_07ce2e

loc_07cded:
    lda #$27
    jsl sub_7f2a3d
    rep #$20
.a16
    lda #$7e1e
    sta $0019,y
    sep #$20
.a8
    lda #$7f
    sta $001b,y
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    bne loc_07ce13
    jml loc_07ce17

loc_07ce13:
    lda #$14
    bra loc_07ce19

loc_07ce17:
    lda #$46

loc_07ce19:
    sta $1ce4,y
    lda #$00
    sta $1ce5,y
    rep #$20
.a16
    lda #$f04f
    sta $002b,y
    sep #$20
.a8
    jsr sub_07bef5

loc_07ce2e:
    plp
    ply
    rtl

sub_07ce31:
    phy
    php
    sep #$20
    rep #$10
    phy
    ldy $2b,x
    lda $6b63,y
    ply
    bit #$40
    beq loc_07ce46
    jml loc_07ce4e

loc_07ce46:
    and #$80
    beq loc_07ce4e
    jml loc_07cea9

loc_07ce4e:
    lda #$0c
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07ce5d
    jml loc_07cea9

loc_07ce5d:
    rep #$20
.a16
    lda #$beb0
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07ce70
    jml loc_07ce93

loc_07ce70:
    lda #$0c
    jsl sub_7f2a3d
    phx
    tyx
    ply
    rep #$20
.a16
    lda #$7e1e
    sta $19,x
    sep #$20
.a8
    lda #$7f
    sta $1b,x
    rep #$20
.a16
    lda #$ffec
    sta $1cd3,x
    sep #$20
.a8
    phx
    tyx
    ply

loc_07ce93:
    cpy #$0000
    beq loc_07cea9
    rep #$20
.a16
    lda #$f32c
    sta $002b,y
    sep #$20
.a8
    jsr sub_07bef5
    plp
    ply
    sec
    rtl

loc_07cea9:
    plp
    ply
    clc
    rtl

sub_07cead:
    phy
    php
    sep #$20
    rep #$10
    lda #$0d
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07cec2
    jml loc_07cf13

loc_07cec2:
    jsr sub_07cf17
    rep #$20
.a16
    lda $02
    eor #$ffff
    inc a
    sta $02
    sep #$20
.a8
    lda #$0d
    sta $97
    bra loc_07cef3

sub_07ced7:
    phy
    php
    sep #$20
    rep #$10
    lda #$0e
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07ceec
    jml loc_07cf13

loc_07ceec:
    jsr sub_07cf17
    lda #$0e
    sta $97

loc_07cef3:
    phy
    ldy $2b,x
    lda $6b63,y
    ply
    bit #$40
    beq loc_07cf02
    jml loc_07cf0a

loc_07cf02:
    and #$80
    beq loc_07cf0a
    jml loc_07cf13

loc_07cf0a:
    jsr sub_07cf38
    bcc loc_07cf13
    plp
    ply
    sec
    rtl

loc_07cf13:
    plp
    ply
    clc
    rtl

sub_07cf17:
    phx
    jsl sub_0690f8
    rep #$20
.a16
    lda $07cfa5,x
    sta $02
    sep #$20
.a8
    plx
    phx
    jsl sub_0690f8
    rep #$20
.a16
    lda $07cfab,x
    sta $08
    sep #$20
.a8
    plx
    rts

sub_07cf38:
    lda $97
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07cf47
    jml loc_07cfa3

loc_07cf47:
    rep #$20
.a16
    lda #$beb0
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07cf5a
    jml loc_07cf8f

loc_07cf5a:
    lda $97
    jsl sub_7f2a3d
    phx
    tyx
    ply
    rep #$20
.a16
    lda #$7e1e
    sta $19,x
    sep #$20
.a8
    lda #$7f
    sta $1b,x
    rep #$20
.a16
    lda $02
    sta $1ccf,x
    sep #$20
.a8
    rep #$20
.a16
    lda $08
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda #$000f
    sta $1cd3,x
    sep #$20
.a8
    phx
    tyx
    ply

loc_07cf8f:
    cpy #$0000
    beq loc_07cfa3
    rep #$20
.a16
    lda #$f36f
    sta $002b,y
    sep #$20
.a8
    jsr sub_07bef5
    sec
    rts

loc_07cfa3:
    clc
    rts
    .db $0f,$00,$19,$00,$0f,$00,$00,$00,$0a,$00,$0a,$00

sub_07cfb1:
    phy
    php
    rep #$20
.a16
    lda $04,x
    cmp #$bc9c
    sep #$20
.a8
    bne loc_07cfc2
    jml loc_07d045

loc_07cfc2:
    lda $23,x
    and #$02
    beq loc_07cfcc
    jml loc_07d045

loc_07cfcc:
    lda $2d,x
    bne loc_07cfd4
    jml loc_07d045

loc_07cfd4:
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_07cfe3
    jml loc_07d045

loc_07cfe3:
    phy
    ldy $2b,x
    lda $6b63,y
    ply
    bit #$40
    beq loc_07cff2
    jml loc_07cffa

loc_07cff2:
    and #$80
    beq loc_07cffa
    jml loc_07d045

loc_07cffa:
    lda $c4
    and #$01
    beq loc_07d004
    jml loc_07d045

loc_07d004:
    rep #$20
.a16
    lda #$c08c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07d017
    jml loc_07d02f

loc_07d017:
    lda $00
    jsl sub_7f2a3d
    rep #$20
.a16
    lda #$7e1e
    sta $0019,y
    sep #$20
.a8
    lda #$7f
    sta $001b,y
    brl loc_07d033

loc_07d02f:
    jsl sub_008006

loc_07d033:
    cpy #$0000
    beq loc_07d045
    jsr sub_07bef5
    rep #$20
.a16
    lda #$f521
    sta $002b,y
    sep #$20

loc_07d045:
.a8
    plp
    ply
    rtl

sub_07d048:
    phx
    phy
    php
    sep #$20
    rep #$10
    stz $3a
    phy
    phx

loc_07d053:
    ldy $29,x
    beq loc_07d05c
    inc $3a
    tyx
    bra loc_07d053

loc_07d05c:
    plx
    ply
    lda $3a
    cmp #$05
    bcc loc_07d068
    jml loc_07d0c2

loc_07d068:
    phy
    ldy $2b,x
    lda $6b94,y
    ply
    and #$07
    cmp #$05
    bcc loc_07d079
    jml loc_07d0c2

loc_07d079:
    rep #$20
.a16
    lda #$bd7c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07d08c
    jml loc_07d0c2

loc_07d08c:
    lda #$13
    jsl sub_7f2a3d
    rep #$20
.a16
    tya
    sta $1cd8,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$f294
    sta $002b,y
    sep #$20
.a8
    jsr sub_07bef5
    lda $18,x
    cmp #$80
    ror a
    sta $3a
    cmp #$80
    ror a
    clc
    adc $3a
    sta $0018,y
    rep #$20
.a16
    lda #$006d
    jsl QueueSound
    sep #$20

loc_07d0c2:
.a8
    plp
    ply
    plx
    rtl

sub_07d0c6:
    phy
    php
    sep #$20
    rep #$10
    lda #$18
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07d0db
    jml loc_07d119

loc_07d0db:
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07d0ee
    jml loc_07d107

loc_07d0ee:
    lda #$18
    jsl sub_7f2a3d
    phx
    tyx
    ply
    rep #$20
.a16
    lda #$7e1e
    sta $19,x
    sep #$20
.a8
    lda #$7f
    sta $1b,x
    phx
    tyx
    ply

loc_07d107:
    cpy #$0000
    beq loc_07d119
    rep #$20
.a16
    lda #$f38a
    sta $002b,y
    sep #$20
.a8
    jsr sub_07bef5

loc_07d119:
    plp
    ply
    sec
    rtl

sub_07d11d:
    phy
    php
    sep #$20
    rep #$10
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07d136
    jml loc_07d15a

loc_07d136:
    rep #$20
.a16
    lda #$7e1e
    sta $0019,y
    sep #$20
.a8
    lda #$7f
    sta $001b,y
    rep #$20
.a16
    lda #$f48b
    sta $002b,y
    sep #$20
.a8
    jsr sub_07bef5
    lda $0026,y
    and #$f7
    sta $0026,y

loc_07d15a:
    plp
    ply
    rtl

sub_07d15d:
    phy
    php
    sep #$20
    rep #$10
    lda #$16
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07d172
    jml loc_07d1a4

loc_07d172:
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07d185
    jml loc_07d1a4

loc_07d185:
    lda #$16
    jsl sub_7f2a3d
    rep #$20
.a16
    lda #$f3ad
    sta $002b,y
    sep #$20
.a8
    jsr sub_07bef5
    rep #$20
.a16
    tya
    sta $1cd8,y
    sep #$20
.a8
    plp
    ply
    sec
    rtl

loc_07d1a4:
    plp
    ply
    clc
    rtl

sub_07d1a8:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07d1bf
    jmp loc_07d2d9

loc_07d1bf:
    lda $d7f4
    bne loc_07d1c8
    jml loc_07d2d9

loc_07d1c8:
    lda $2d,x
    bne loc_07d1d0
    jml loc_07d2d9

loc_07d1d0:
    lda $6be4,y
    bit #$e0
    beq loc_07d1eb
    lda $6be5,y
    inc a
    sta $6be5,y
    cmp #$64
    beq loc_07d232
    lda $6add,y
    beq loc_07d1eb
    bit #$1f
    beq loc_07d232

loc_07d1eb:
    lda $6be4,y
    bit #$e0
    beq loc_07d241
    lda $c4
    and #$1f
    bne loc_07d210
    lda $6be3,y
    and #$3f
    bne loc_07d210
    jsl sub_06aa6f
    lda $6c00,y
    bne loc_07d20c
    sta $2d,x
    bra loc_07d20d

loc_07d20c:
    dec a

loc_07d20d:
    sta $6c00,y

loc_07d210:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    beq loc_07d221
    jml loc_07d241

loc_07d221:
    phy
    ldy $2b,x
    lda $6b94,y
    ply
    and #$07
    cmp #$03
    bcs loc_07d232
    jml loc_07d241

loc_07d232:
    lda $6be4,y
    and #$1f
    ora #$0f
    sta $6be4,y
    lda #$00
    sta $6be5,y

loc_07d241:
    lda $6be4,y
    bit #$0f
    beq loc_07d25a
    dec a
    sta $6be4,y
    lda $c4
    and #$01
    bne loc_07d256
    jml loc_07d25a

loc_07d256:
    jsl sub_07d048

loc_07d25a:
    lda $6be4,y
    and #$e0
    bne loc_07d265
    jml loc_07d2d9

loc_07d265:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    bne loc_07d276
    jml loc_07d2cd

loc_07d276:
    lda $c4
    and #$01
    bne loc_07d280
    jml loc_07d297

loc_07d280:
    lda $6be4,y
    and #$40
    bne loc_07d28b
    jml loc_07d297

loc_07d28b:
    rep #$20
.a16
    lda #$0019
    sta $3a
    sep #$20
.a8
    jsr sub_07d2dd

loc_07d297:
    lda $c4
    and #$01
    beq loc_07d2a1
    jml loc_07d2b8

loc_07d2a1:
    lda $6be4,y
    and #$80
    bne loc_07d2ac
    jml loc_07d2b8

loc_07d2ac:
    rep #$20
.a16
    lda #$ffe7
    sta $3a
    sep #$20
.a8
    jsr sub_07d2dd

loc_07d2b8:
    lda $c4
    and #$01
    beq loc_07d2c2
    jml loc_07d2d9

loc_07d2c2:
    lda $6be4,y
    and #$20
    bne loc_07d2cd
    jml loc_07d2d9

loc_07d2cd:
    rep #$20
.a16
    lda #$0000
    sta $3a
    sep #$20
.a8
    jsr sub_07d2dd

loc_07d2d9:
    plp
    ply
    sec
    rtl

sub_07d2dd:
    phy
    lda #$00
    sta $03
    jsl sub_7f7bd0
    and #$0f
    sta $02
    rep #$20
.a16
    lda #$0000
    sta $08
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    beq loc_07d304
    jml loc_07d30d

loc_07d304:
    rep #$20
.a16
    lda #$fff6
    sta $08
    sep #$20

loc_07d30d:
.a8
    rep #$20
.a16
    lda $02
    cmp #$8000
    ror a
    clc
    adc $08
    sta $08
    lda $02
    clc
    adc #$fff6
    sta $97
    lda $02
    clc
    adc #$fff9
    clc
    adc $3a
    sta $02
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6b63,y
    ply
    and #$80
    bne loc_07d33e
    jml loc_07d353

loc_07d33e:
    rep #$20
.a16
    lda $08
    clc
    adc #$fff6
    sta $08
    sep #$20
.a8
    rep #$20
.a16
    lda #$001e
    sta $97
    sep #$20

loc_07d353:
.a8
    rep #$20
.a16
    lda #$c0c4
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07d366
    jml loc_07d39a

loc_07d366:
    lda #$25
    jsl sub_7f2a3d
    phx
    tyx
    ply
    rep #$20
.a16
    lda #$7e1e
    sta $19,x
    sep #$20
.a8
    lda #$7f
    sta $1b,x
    rep #$20
.a16
    lda $02
    sta $1ccf,x
    sep #$20
.a8
    rep #$20
.a16
    lda $08
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda $97
    sta $1cd3,x
    sep #$20
.a8
    phx
    tyx
    ply

loc_07d39a:
    cpy #$0000
    bne loc_07d3a3
    jml loc_07d3b0

loc_07d3a3:
    jsr sub_07bef5
    rep #$20
.a16
    lda #$f540
    sta $002b,y
    sep #$20

loc_07d3b0:
.a8
    ply
    rts
    .db $5a,$08,$e2,$20,$c2,$10,$b4,$2b,$da,$be,$f1,$6a,$80,$0c,$5a,$08
    .db $e2,$20,$c2,$10,$b4,$2b,$da,$be,$ef,$6a,$a9,$00,$85,$02,$a9,$00
    .db $85,$08,$20,$3d,$d4,$fa,$28,$7a,$6b,$da,$5a,$08,$e2,$20,$c2,$10
    .db $86,$04,$b4,$2b,$a9,$00,$85,$02,$a9,$00,$85,$08,$da,$22,$06,$91
    .db $06,$bf,$d5,$d4,$07,$85,$97,$fa,$20,$3d,$d4,$90,$00,$28,$7a,$fa
    .db $6b

sub_07d403:
    phx
    phy
    php
    sep #$20
    rep #$10
    stx $04
    ldy $2b,x
    jsr sub_07d49a
    rep #$20
.a16
    lda $02
    eor #$ffff
    inc a
    sta $02
    sep #$20
.a8
    jsr sub_07d43d
    bcc loc_07d422

loc_07d422:
    plp
    ply
    plx
    rtl

sub_07d426:
    phx
    phy
    php
    sep #$20
    rep #$10
    stx $04
    ldy $2b,x
    jsr sub_07d49a
    jsr sub_07d43d
    bcc loc_07d439

loc_07d439:
    plp
    ply
    plx
    rtl

sub_07d43d:
    rep #$20
.a16
    lda #$c08c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_07d450
    jml loc_07d484

loc_07d450:
    lda $00
    jsl sub_7f2a3d
    phx
    tyx
    ply
    rep #$20
.a16
    lda #$7e1e
    sta $19,x
    sep #$20
.a8
    lda #$7f
    sta $1b,x
    rep #$20
.a16
    lda $02
    sta $1ccf,x
    sep #$20
.a8
    rep #$20
.a16
    lda $08
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda $97
    sta $1cd3,x
    sep #$20
.a8
    phx
    tyx
    ply

loc_07d484:
    cpy #$0000
    beq loc_07d498
    rep #$20
.a16
    lda #$f536
    sta $002b,y
    sep #$20
.a8
    jsr sub_07bef5
    sec
    rts

loc_07d498:
    clc
    rts

sub_07d49a:
    sep #$20
    rep #$10
    phx
    jsl sub_0690f8
    rep #$20
.a16
    lda $07d4c3,x
    sta $02
    sep #$20
.a8
    rep #$20
.a16
    lda $07d4c9,x
    sta $08
    sep #$20
.a8
    rep #$20
.a16
    lda $07d4cf,x
    sta $97
    sep #$20
.a8
    plx
    rts
    .incbin "data/03d4c3-03d6cc.bin"

ShipWeapons:    ; weapon buttons each tick: X press ($1936 bit $40) calls FireSpecialItem, the B paths reach FireLaser (code; coverage: FireLaser only in B runs, FireSpecialItem only in the X run)
    phx
    phy
    php
    sep #$20
    rep #$10
    stz $1df2
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    bne loc_07d6e7
    jml loc_07d6ef

loc_07d6e7:
    lda $12,x
    sta $1df2
    jmp loc_07d78b

loc_07d6ef:
    phx
    ldy #$0000
    sty $3c
    lda #$32
    sta $e4
    lda #$0a
    sta $97
    rep #$20
.a16
    lda #$0000
    sta $3e
    lda #$1b58
    sta $3a
    jsl sub_7f1feb
    cpy #$0000
    sep #$20
.a8
    bne loc_07d718
    jml loc_07d748

loc_07d718:
    sty $02
    ldx $14d6
    rep #$20
.a16
    lda $0032,y
    asl a
    asl a
    clc
    adc $000c,y
    sta $0c,x
    lda $0034,y
    asl a
    asl a
    clc
    adc $000e,y
    sta $0e,x
    lda $0036,y
    asl a
    asl a
    clc
    adc $0010,y
    sta $10,x
    sep #$20
.a8
    jsl sub_7f2bbe
    sty $3c

loc_07d748:
    plx
    ldy $3c
    beq loc_07d776
    ldy $14d6
    stz $149d
    jsl sub_7f21a5
    rep #$20
.a16
    cmp #$8000
    ror a
    bpl loc_07d762
    adc #$0000

loc_07d762:
    sta $3a
    cmp #$8000
    ror a
    bpl loc_07d76d
    adc #$0000

loc_07d76d:
    clc
    adc $3a
    sep #$20
.a8
    xba
    sta $1df2

loc_07d776:
    lda $1df2
    clc
    adc #$19
    bmi loc_07d786
    cmp #$32
    bmi loc_07d78b
    lda #$19
    bra loc_07d788

loc_07d786:
    lda #$e7

loc_07d788:
    sta $1df2

loc_07d78b:
    lda #$12
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07d79a
    jml loc_07d7e4

loc_07d79a:
    lda #$16
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_07d7a9
    jml loc_07d7e4

loc_07d7a9:
    ldy $2b,x
    rep #$20
.a16
    lda $6c13,y
    sep #$20
.a8
    beq loc_07d7b8
    jml loc_07d7e4

loc_07d7b8:
    lda $6b61,y
    and #$0f
    beq loc_07d7c3
    jml loc_07d7db

loc_07d7c3:
    lda $1936
    bit #$40
    beq loc_07d7e4
    phy
    jsr FireSpecialItem
    ply
    lda $6b61,y
    and #$f0
    ora #$05
    sta $6b61,y
    bra loc_07d7e4

loc_07d7db:
    phx
    tyx
    ply
    dec $6b61,x
    phx
    tyx
    ply

loc_07d7e4:
    ldy $2b,x
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    bne loc_07d7f7
    jml loc_07d863

loc_07d7f7:
    lda $1937
    bit #$80
    bne loc_07d802
    jml loc_07d85f

loc_07d802:
    lda $1d72
    beq loc_07d80b
    jml loc_07d85f

loc_07d80b:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07d81a
    jmp loc_07d85f

loc_07d81a:
    ldy #$033f
    stz $02
    lda $02
    eor #$ff
    inc a
    sta $02
    lda $02
    clc
    adc #$fc
    sta $02
    lda #$00
    sta $97
    lda #$00
    sta $14b0
    lda #$00
    sta $14b2
    lda $97
    sta $14b4
    lda $02
    sta $14b7
    lda #$00
    sta $14b6
    stz $14b8
    stz $14b9
    lda #$04
    jsl sub_03a89c
    cpy #$0000
    bne loc_07d85f
    jml loc_07d85f

loc_07d85f:
    plp
    ply
    plx
    rtl

loc_07d863:
    lda $1937
    bit #$80
    beq loc_07d877
    lda $6b60,y
    cmp #$40
    bpl loc_07d877
    clc
    adc #$10
    sta $6b60,y

loc_07d877:
    lda $6b60,y
    bit #$0f
    bne loc_07d896
    bit #$f0
    beq loc_07d89f
    jsr FireLaser
    bcc loc_07d89f
    lda $6b60,y
    and #$f0
    sec
    sbc #$10
    ora #$01
    sta $6b60,y
    bra loc_07d89f

loc_07d896:
    phx
    tyx
    ply
    dec $6b60,x
    phx
    tyx
    ply

loc_07d89f:
    plp
    ply
    plx
    rtl

FireSpecialItem:    ; X press: computes the launch position from the ship's angles and calls ConsumeItem (coverage: entered only in the X run; the HUD bomb count drops 3 to 2)
    phx
    phy
    php
    phx
    phy
    ldy #$033f
    tyx
    ply
    rep #$20
.a16
    lda $12,x
    xba
    sta $12,x
    lda $14,x
    xba
    sta $14,x
    lda $16,x
    xba
    sta $16,x
    sep #$20
.a8
    lda #$00
    sta $02
    sta $04
    bit #$80
    beq loc_07d8d0
    lda #$ff
    sta $05
    bra loc_07d8d2

loc_07d8d0:
    stz $05

loc_07d8d2:
    lda #$00
    sta $08
    sta $0a
    bit #$80
    beq loc_07d8e2
    lda #$ff
    sta $0b
    bra loc_07d8e4

loc_07d8e2:
    stz $0b

loc_07d8e4:
    lda #$64
    sta $97
    sta $e4
    bit #$80
    beq loc_07d8f4
    lda #$ff
    sta $e5
    bra loc_07d8f6

loc_07d8f4:
    stz $e5

loc_07d8f6:
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
    rep #$20
.a16
    lda $12,x
    xba
    sta $12,x
    lda $14,x
    xba
    sta $14,x
    lda $16,x
    xba
    sta $16,x
    sep #$20
.a8
    plx
    lda #$00
    sta $14b7
    lda #$00
    sta $14b6
    stz $14b8
    stz $14b9
    lda #$00
    sta $14b0
    lda #$00
    sta $14b2
    lda #$00
    sta $14b4
    jsl ConsumeItem
    bcs loc_07d96a
    jml loc_07d984

loc_07d96a:
    phy
    ldy $2b,x
    lda $6ace,y
    clc
    adc $6ace,y
    clc
    adc $6ace,y
    clc
    adc $6ace,y
    ply
    clc
    adc $0014,y
    sta $0014,y

loc_07d984:
    plp
    ply
    plx
    rts

FireLaser:    ; fires the laser: picks the shot by weapon level $6c06,y and spawns it with SpawnLaserShot (coverage: entered only in the runs that pressed B)
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda #$00
    sta $1dbc
    lda $6c06,y
    sta $1db6
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07d9ab
    jmp loc_07da19

loc_07d9ab:
    phy
    ldy $2b,x
    lda $6b63,y
    ply
    bit #$40
    beq loc_07d9ba
    jml loc_07d9c2

loc_07d9ba:
    and #$80
    beq loc_07d9c2
    jml loc_07d9d1

loc_07d9c2:
    jsr SpawnLaserShot
    cpy #$0000
    bne loc_07d9ce
    jml loc_07da19

loc_07d9ce:
    jmp loc_07da14

loc_07d9d1:
    lda $1db6
    dec a
    beq loc_07d9de
    dec a
    beq loc_07d9de
    lda #$14
    bra loc_07d9e0

loc_07d9de:
    lda #$ec

loc_07d9e0:
    sta $1dbc
    ldy #$033f
    rep #$20
.a16
    lda $0c,x
    sta $1dba
    lda $10,x
    sta $1db8
    lda $000c,y
    sta $0c,x
    lda $0010,y
    sta $10,x
    sep #$20
.a8
    jsr SpawnLaserShot
    rep #$20
.a16
    lda $1dba
    sta $0c,x
    lda $1db8
    sta $10,x
    sep #$20
.a8
    cpy #$0000
    beq loc_07da19

loc_07da14:
    plp
    ply
    plx
    sec
    rts

loc_07da19:
    plp
    ply
    plx
    clc
    rts

SpawnLaserShot:    ; calls sub_03a89c with 6, 8 or $0a by the weapon level $1db6 to create the shot object (coverage: only in the B runs)
    lda #$00
    sta $14b7
    lda #$00
    sta $14b6
    stz $14b8
    stz $14b9
    lda $1db6
    dec a
    bpl loc_07da38
    jml loc_07dab0

loc_07da38:
    bne loc_07da3e
    jml loc_07da4c

loc_07da3e:
    dec a
    bne loc_07da45
    jml loc_07da6e

loc_07da45:
    dec a
    bne loc_07da4c
    jml loc_07da8f

loc_07da4c:
    lda #$00
    sta $14b0
    lda #$00
    sta $14b2
    lda $1dbc
    sta $14b4
    lda #$06
    jsl sub_03a89c
    cpy #$0000
    bne loc_07da6b
    jml loc_07dab0

loc_07da6b:
    jmp loc_07daae

loc_07da6e:
    lda #$00
    sta $14b0
    lda #$00
    sta $14b2
    lda $1dbc
    sta $14b4
    lda #$08
    jsl sub_03a89c
    cpy #$0000
    bne loc_07da8d
    jml loc_07dab0

loc_07da8d:
    bra loc_07daae

loc_07da8f:
    lda #$00
    sta $14b0
    lda #$00
    sta $14b2
    lda $1dbc
    sta $14b4
    lda #$0a
    jsl sub_03a89c
    cpy #$0000
    bne loc_07daae
    jml loc_07dab0

loc_07daae:
    sec
    rts

loc_07dab0:
    clc
    rts

ChargeShot:    ; hold-B charge: level $6c08,y rises to the maximum $1dd6; at full charge spawns kind $10 via sub_03a89c (watch: $B230 climbs written at 07:DC77 while B is held; coverage: loc_07db19 only in the hold-B run)
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    bne loc_07dac9
    jml loc_07dad3

loc_07dac9:
    lda $6c09,y
    ora #$40
    and #$7f
    sta $6c09,y

loc_07dad3:
    lda $1d72
    beq loc_07dadc
    jml loc_07db7a

loc_07dadc:
    lda $1939
    bit #$80
    beq loc_07daf4
    lda $1937
    bit #$80
    bne loc_07daf4
    lda $6c09,y
    ora #$80
    sta $6c09,y
    bra loc_07dafc

loc_07daf4:
    lda $6c09,y
    and #$ef
    sta $6c09,y

loc_07dafc:
    lda $6c09,y
    bit #$10
    beq loc_07db07
    jml loc_07db84

loc_07db07:
    lda $1937
    bit #$80
    bne loc_07db19
    lda $1939
    bit #$80
    beq loc_07db19
    jml loc_07db84

loc_07db19:
    lda $6c08,y
    cmp $1dd6
    bne loc_07db7a
    phy
    lda #$00
    sta $14b7
    lda #$00
    sta $14b6
    stz $14b8
    stz $14b9
    lda #$00
    sta $14b0
    lda #$00
    sta $14b2
    lda #$00
    sta $14b4
    lda #$10
    jsl sub_03a89c
    cpy #$0000
    bne loc_07db50
    jml loc_07db50

loc_07db50:
    ply
    lda $6c09,y
    ora #$10
    sta $6c09,y
    lda #$05
    sta $6b60,y
    lda $6aa0,y
    and #$f0
    cmp #$20
    bne loc_07db6b
    jml loc_07db7a

loc_07db6b:
    lda #$05
    sta $6b58,y
    rep #$20
.a16
    lda #$001e
    sta $6b56,y
    sep #$20

loc_07db7a:
.a8
    lda $6c09,y
    ora #$40
    and #$7f
    sta $6c09,y

loc_07db84:
    lda $6c09,y
    bit #$40
    bne loc_07db8f
    jml loc_07dbf0

loc_07db8f:
    bit #$20
    beq loc_07dbab
    and #$df
    sta $6c09,y
    rep #$20
.a16
    lda #$00f4
    cpx $12c3
    beq loc_07dba5
    ora #$8000

loc_07dba5:
    jsl QueueSound
    sep #$20

loc_07dbab:
.a8
    phy
    sep #$20
    lda #$27
    jsl sub_7f2a7b
    cpy #$0000
    bne loc_07dbbd
    jml loc_07dbcb

loc_07dbbd:
    lda #$27
    jsl sub_7f2a7b
    lda $0025,y
    ora #$08
    sta $0025,y

loc_07dbcb:
    ply
    ldy $2b,x
    lda #$00
    sta $6c07,y
    lda $6c08,y
    cmp #$80
    ror a
    bpl loc_07dbdd
    adc #$00

loc_07dbdd:
    sta $6c08,y
    lda $6c08,y
    bne loc_07dbf0
    lda $6c09,y
    and #$bf
    sta $6c09,y
    jmp loc_07dc7c

loc_07dbf0:
    lda $6c09,y
    bit #$40
    beq loc_07dbfb
    jml loc_07dc7c

loc_07dbfb:
    bit #$80
    bne loc_07dc03
    jml loc_07dc7c

loc_07dc03:
    lda $6c08,y
    cmp #$08
    bcc loc_07dc2d
    jsl sub_07cdc5
    lda $6c09,y
    bit #$20
    bne loc_07dc2d
    ora #$20
    sta $6c09,y
    rep #$20
.a16
    lda #$0031
    cpx $12c3
    beq loc_07dc27
    ora #$8000

loc_07dc27:
    jsl QueueSound
    sep #$20

loc_07dc2d:
.a8
    lda $6c08,y
    cmp $1dd6
    beq loc_07dc7c
    phx
    jsl sub_0690ec
    rep #$20
.a16
    lda $07dc7f,x
    sta $02
    sep #$20
.a8
    plx
    rep #$20
.a16
    lda $1dd6
    and #$00ff
    xba
    sta $3a
    lda $02
    clc
    adc $6c07,y
    cmp $3a
    bcc loc_07dc77
    sep #$20
.a8
    rep #$20
.a16
    lda #$0035
    cpx $12c3
    beq loc_07dc69
    ora #$8000

loc_07dc69:
    jsl QueueSound
    sep #$20
.a8
    rep #$20
.a16
    lda $1dd5
    and #$ff00

loc_07dc77:
    sta $6c07,y
    sep #$20

loc_07dc7c:
.a8
    plp
    ply
    rtl
    .db $80,$01,$80,$01,$80,$01,$80,$01,$80,$01,$80,$01

ConsumeItem:    ; carry set when an item was used: checks count $6c04,y and type $6c05,y, then decrements the count (watch: $B22C 3 -> 2 written at 07:DD64 in this routine when X is pressed)
    phx
    phy
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07dc9c
    jmp loc_07dd6b

loc_07dc9c:
    ldy $2b,x
    lda $6c04,y
    bit #$0f
    bne loc_07dca9
    jml loc_07dd6b

loc_07dca9:
    lda $6c05,y
    asl a
    cmp #$0a
    bcc loc_07dcb5
    jml loc_07dd16

loc_07dcb5:
    phx
    rep #$20
.a16
    and #$00ff
    tax
    lda $07dcc8,x
    sta $02
    sep #$20
.a8
    plx
    jmp ($0002)
    .db $3d,$dd,$d2,$dc,$19,$dd,$1e,$dd,$16,$dd

loc_07dcd2:
    rep #$20
.a16
    lda $6c13,y
    sep #$20
.a8
    beq loc_07dcdf
    jml loc_07dd6b

loc_07dcdf:
    lda $6be9,y
    bit #$18
    beq loc_07dcea
    jml loc_07dd6b

loc_07dcea:
    lda #$0d
    cmp $6c15,y
    beq loc_07dcf4
    sta $6c15,y

loc_07dcf4:
    rep #$20
.a16
    lda #$bdda
    cmp $6c13,y
    beq loc_07dd0a
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_07dd0a:
    sep #$20
.a8
    jsl sub_07d11d
    stz $1e59
    jmp loc_07dd5e

loc_07dd16:
    jmp loc_07dd5e
    .db $4c,$5e,$dd,$80,$40

loc_07dd1e:
    lda $6c02,y
    and #$5f
    beq loc_07dd29
    jml loc_07dd6b

loc_07dd29:
    lda $6c02,y
    and #$e0
    sta $6c02,y
    lda #$1f
    and #$1f
    ora $6c02,y
    sta $6c02,y
    bra loc_07dd5e

loc_07dd3d:
    lda $6b7d,y
    bit #$40
    beq loc_07dd48
    jml loc_07dd6b

loc_07dd48:
    phy
    ldy $2b,x
    lda $6c00,y
    ply
    cmp $1dd5
    bne loc_07dd58
    jml loc_07dd6b

loc_07dd58:
    jsl sub_07d15d
    bcc loc_07dd6b

loc_07dd5e:
    ldy $2b,x
    lda $6c04,y
    dec a
    sta $6c04,y
    ply
    plx
    sec
    rtl

loc_07dd6b:
    ply
    plx
    clc
    rtl

sub_07dd6f:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda #$00
    sta $1dba
    lda #$00
    sta $1cef,x
    lda $1b4d
    and #$07
    cmp #$00
    bne loc_07dd8f
    jml loc_07df3e

loc_07dd8f:
    lda $6b7d,y
    bit #$80
    beq loc_07dd9a
    jml loc_07df3e

loc_07dd9a:
    rep #$20
.a16
    lda $6a7d,y
    eor #$ffff
    inc a
    sta $1dc0
    lda $6bf5,y
    sta $1db8
    sep #$20
.a8
    lda #$00
    sta $1db0
    ldy $14d6
    lda #$23
    sta $1dbe
    lda #$05
    sta $1dbc
    jsr sub_07df46
    lda $1de2
    cmp #$09
    beq loc_07ddce
    jml loc_07dde5

loc_07ddce:
    rep #$20
.a16
    lda $000e,y
    clc
    adc $1db8
    sep #$20
.a8
    bpl loc_07dde5
    lda $1db0
    ora #$08
    sta $1db0
    bra loc_07de2e

loc_07dde5:
    rep #$20
.a16
    lda $1dc0
    clc
    adc $000e,y
    sep #$20
.a8
    bmi loc_07de4d
    lda #$02
    sta $1cef,x
    lda $1db0
    ora #$02
    sta $1db0
    lda $1e13
    cmp #$01
    bne loc_07de10
    lda $21,x
    and #$20
    beq loc_07de10
    jml loc_07de4d

loc_07de10:
    phy
    ldy $2b,x
    lda $6a82,y
    ply
    cmp #$05
    bne loc_07de1f
    jml loc_07de34

loc_07de1f:
    phy
    ldy $2b,x
    lda $6a82,y
    ply
    cmp #$00
    beq loc_07de2e
    jml loc_07de42

loc_07de2e:
    jsl sub_07d426
    bra loc_07de38

loc_07de34:
    jsl sub_07d426

loc_07de38:
    lda $1dba
    ora #$01
    sta $1dba
    bra loc_07de4d

loc_07de42:
    jsr sub_07dfc8
    lda $1dba
    ora #$05
    sta $1dba

loc_07de4d:
    sep #$20
    lda #$dd
    sta $1dbe
    lda #$05
    sta $1dbc
    jsr sub_07df46
    lda $1de2
    cmp #$09
    beq loc_07de67
    jml loc_07de7e

loc_07de67:
    rep #$20
.a16
    lda $000e,y
    clc
    adc $1db8
    sep #$20
.a8
    bpl loc_07de7e
    lda $1db0
    ora #$04
    sta $1db0
    bra loc_07dec7

loc_07de7e:
    rep #$20
.a16
    lda $1dc0
    clc
    adc $000e,y
    sep #$20
.a8
    bmi loc_07dee6
    lda #$02
    sta $1cef,x
    lda $1db0
    ora #$01
    sta $1db0
    lda $1e13
    cmp #$01
    bne loc_07dea9
    lda $21,x
    and #$20
    beq loc_07dea9
    jml loc_07dee6

loc_07dea9:
    phy
    ldy $2b,x
    lda $6a82,y
    ply
    cmp #$05
    bne loc_07deb8
    jml loc_07decd

loc_07deb8:
    phy
    ldy $2b,x
    lda $6a82,y
    ply
    cmp #$00
    beq loc_07dec7
    jml loc_07dedb

loc_07dec7:
    jsl sub_07d403
    bra loc_07ded1

loc_07decd:
    jsl sub_07d403

loc_07ded1:
    lda $1dba
    ora #$02
    sta $1dba
    bra loc_07dee6

loc_07dedb:
    jsr sub_07dfce
    lda $1dba
    ora #$06
    sta $1dba

loc_07dee6:
    sep #$20
    lda $1db0
    bit #$0f
    beq loc_07df3e
    ldy $2b,x
    bit #$0c
    beq loc_07def9
    lda #$18
    bra loc_07defb

loc_07def9:
    lda #$e8

loc_07defb:
    clc
    sta $6aba,y
    lda $6ad8,y
    cmp #$80
    ror a
    cmp #$80
    ror a
    sta $6ad8,y
    lda $1e13
    cmp #$01
    bne loc_07df1c
    lda $21,x
    and #$20
    beq loc_07df1c
    jml loc_07df3e

loc_07df1c:
    rep #$20
.a16
    lda $6b3b,y
    cmp #$0000
    sep #$20
.a8
    beq loc_07df2c
    jml loc_07df36

loc_07df2c:
    rep #$20
.a16
    lda #$0040
    sta $6b3b,y
    sep #$20

loc_07df36:
.a8
    jsr sub_07e009
    plp
    ply
    plx
    sec
    rtl

loc_07df3e:
    jsr sub_07e009
    plp
    ply
    plx
    clc
    rtl

sub_07df46:
    lda $1dbe
    sta $02
    sta $04
    bit #$80
    beq loc_07df57
    lda #$ff
    sta $05
    bra loc_07df59

loc_07df57:
    stz $05

loc_07df59:
    lda $1dbc
    sta $08
    sta $0a
    bit #$80
    beq loc_07df6a
    lda #$ff
    sta $0b
    bra loc_07df6c

loc_07df6a:
    stz $0b

loc_07df6c:
    lda #$00
    sta $97
    sta $e4
    bit #$80
    beq loc_07df7c
    lda #$ff
    sta $e5
    bra loc_07df7e

loc_07df7c:
    stz $e5

loc_07df7e:
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
    rts

sub_07dfc8:
    lda #$14
    sta $02
    bra loc_07dfd2

sub_07dfce:
    lda #$ec
    sta $02

loc_07dfd2:
    lda #$00
    sta $97
    rep #$20
.a16
    lda $1dc0
    eor #$ffff
    inc a
    sta $e4
    sep #$20
.a8
    lda #$02
    sta $0a
    phy
    ldy $2b,x
    lda $6a82,y
    ply
    cmp #$04
    bne loc_07dff6
    jml loc_07e000

loc_07dff6:
    lda #$03
    sta $08
    jsl sub_07c738
    bra loc_07e008

loc_07e000:
    lda #$00
    sta $08
    jsl sub_07c6e8

loc_07e008:
    rts

sub_07e009:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_07e018
    jmp loc_07e0c8

loc_07e018:
    rep #$20
.a16
    phx
    lda $1dba
    and #$0007
    asl a
    tax
    lda loc_07e02f,x
    sta $3a
    sep #$20
.a8
    plx
    jmp ($003a)

loc_07e02f:
    iny
    cpx #$e06d
    lsr $e0,x
    and $e0c8e0,x
    lda ($e0)
    txy
    cpx #$e084
    rep #$20
.a16
    lda #$0013
    cpx $12c3
    beq loc_07e04c
    ora #$8000

loc_07e04c:
    ora #$0000
    jsl QueueSound
    sep #$20
.a8
    rts

loc_07e056:
    rep #$20
.a16
    lda #$0013
    cpx $12c3
    beq loc_07e063
    ora #$8000

loc_07e063:
    ora #$1000
    jsl QueueSound
    sep #$20
.a8
    rts

loc_07e06d:
    rep #$20
.a16
    lda #$0013
    cpx $12c3
    beq loc_07e07a
    ora #$8000

loc_07e07a:
    ora #$2000
    jsl QueueSound
    sep #$20
.a8
    rts

loc_07e084:
    rep #$20
.a16
    lda #$003c
    cpx $12c3
    beq loc_07e091
    ora #$8000

loc_07e091:
    ora #$0000
    jsl QueueSound
    sep #$20
.a8
    rts

loc_07e09b:
    rep #$20
.a16
    lda #$003c
    cpx $12c3
    beq loc_07e0a8
    ora #$8000

loc_07e0a8:
    ora #$1000
    jsl QueueSound
    sep #$20
.a8
    rts
    .db $c2,$20,$a9,$3c,$00,$ec,$c3,$12,$f0,$03,$09,$00,$80,$09,$00,$20
    .db $22,$09,$6e,$7f,$e2,$20

loc_07e0c8:
    rts

loc_07e0c9:
    php
    rep #$20
.a16
    lda $02
    and #$00ff
    phx
    tax
    lda $008e66,x
    jmp loc_07e0e8

sub_07e0da:
.a8
    php
    rep #$20
.a16
    lda $02
    and #$00ff
    phx
    tax
    lda $008e26,x

loc_07e0e8:
    plx
    bit #$0080
    beq loc_07e0f3
    ora #$ff00
    bra loc_07e0f6

loc_07e0f3:
    and #$00ff

loc_07e0f6:
    sta $02
    plp
.a8
    jmp sub_07e0fc

sub_07e0fc:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    lda #$00
    pha
    plb
    sep #$10
.i8
    rep #$20
.a16
    stz $08
    stz $0a
    lda $02
    eor $04
    php
    lda $02
    bpl loc_07e11d
    eor #$ffff
    inc a

loc_07e11d:
    sta $3a
    lda $04
    bpl loc_07e127
    eor #$ffff
    inc a

loc_07e127:
    sta $3c
    ldx $3c
    stx WRMPYA
    ldx $3a
    stx WRMPYB
    ldx $3b
    lda $08
    clc
    adc RDMPYL
    sta $08
    stx WRMPYB
    ldx $3d
    lda $09
    clc
    adc RDMPYL
    sta $09
    bcc loc_07e152
    sep #$20
.a8
    inc $0b
    rep #$20

loc_07e152:
.a16
    stx WRMPYA
    ldx $3a
    stx WRMPYB
    ldx $3b
    lda $09
    clc
    adc RDMPYL
    sta $09
    bcc loc_07e16c
    sep #$20
.a8
    inc $0b
    rep #$20

loc_07e16c:
.a16
    stx WRMPYB
    lda $0a
    clc
    adc RDMPYL
    sta $0a
    plp
    bpl loc_07e189
    lda #$0000
    sec
    sbc $08
    sta $08
    lda #$0000
    sbc $0a
    sta $0a

loc_07e189:
    plp
.a8
.i16
    ply
    plx
    plb
    rtl

sub_07e18e:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $1cea,x
    pha
    jsl sub_0daf3a
    pla
    sta $1cea,x
    rep #$20
.a16
    lda $08
    sta $1dae
    sep #$20
.a8
    lda $1ceb,x
    cmp #$06
    bne loc_07e1b7
    jml loc_07e1c7

loc_07e1b7:
    rep #$20
.a16
    lda $0e,x
    cmp $08
    sep #$20
.a8
    beq loc_07e1c7
    bmi loc_07e1c7
    jml loc_07e248

loc_07e1c7:
    lda $1de2
    cmp #$09
    beq loc_07e1d2
    jml loc_07e2ee

loc_07e1d2:
    phx
    rep #$20
.a16
    ldx $14d6
    lda $6b0b,y
    clc
    adc $6ac7,y
    sta $0c,x
    lda $6b0d,y
    clc
    adc $6ac9,y
    sta $0e,x
    lda $6b0f,y
    clc
    adc $6acb,y
    sta $10,x
    sep #$20
.a8
    jsl sub_0daf3a
    rep #$20
.a16
    lda $1ce8,x
    sta $02
    lda $1ceb,x
    and #$00ff
    sta $04
    sep #$20
.a8
    txy
    plx
    ldy $2b,x
    rep #$20
.a16
    lda $0e,x
    cmp $08
    sep #$20
.a8
    bpl loc_07e21c
    jml loc_07e2ee

loc_07e21c:
    lda $04
    cmp #$06
    bne loc_07e226
    jml loc_07e2ee

loc_07e226:
    lda $6be6,y
    and #$ef
    sta $6be6,y
    rep #$20
.a16
    lda $02
    sep #$20
.a8
    bne loc_07e23a
    jml loc_07e2ee

loc_07e23a:
    rep #$20
.a16
    lda $02
    sta $1ce8,x
    sep #$20
.a8
    lda $04
    sta $1ceb,x

loc_07e248:
    phy
    ldy $2b,x
    lda $6c02,y
    ply
    and #$1f
    bne loc_07e257
    jml loc_07e267

loc_07e257:
    jsl sub_06ab05
    lda $6be2,y
    beq loc_07e264
    jml loc_07e2ee

loc_07e264:
    jmp loc_07e2ee

loc_07e267:
    ldy $1ce8,x
    cpy #$0000
    bne loc_07e273
    jml loc_07e2ee

loc_07e273:
    lda $25,x
    and #$10
    beq loc_07e27d
    jml loc_07e2ee

loc_07e27d:
    jsl sub_069842
    ldy $2b,x
    lda $1de2
    and #$ff
    cmp #$09
    beq loc_07e29a
    rep #$20
.a16
    lda $6ab9,y
    clc
    adc #$e800
    sta $6ab9,y
    sep #$20

loc_07e29a:
.a8
    jsl sub_06aaae
    ldy $1ce8,x
    lda $002e,y
    sta $3a
    phy
    ldy $2b,x
    lda $6c00,y
    beq loc_07e2ba
    sec
    sbc $3a
    bpl loc_07e2b5
    lda #$00

loc_07e2b5:
    sta $6c00,y
    bra loc_07e2be

loc_07e2ba:
    lda #$00
    sta $2d,x

loc_07e2be:
    ply
    lda $002e,y
    cmp #$04
    bcc loc_07e2db
    rep #$20
.a16
    lda #$0012
    cpx $12c3
    beq loc_07e2d3
    ora #$8000

loc_07e2d3:
    jsl QueueSound
    sep #$20
.a8
    bra loc_07e2ee

loc_07e2db:
    rep #$20
.a16
    lda #$0013
    cpx $12c3
    beq loc_07e2e8
    ora #$8000

loc_07e2e8:
    jsl QueueSound
    sep #$20

loc_07e2ee:
.a8
    plp
    ply
    plx
    rtl

sub_07e2f2:
    rtl

sub_07e2f3:
    phy
    php
    sep #$20
    rep #$10
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    bit #$04
    bne loc_07e308
    jml loc_07e381

loc_07e308:
    ldy $2b,x
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    beq loc_07e31b
    jml loc_07e342

loc_07e31b:
    rep #$20
.a16
    lda #$ffd8
    sta $08
    jsl sub_06f25b
    sep #$20
.a8
    rep #$20
.a16
    lda $02
    sta $6ab9,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0e,x
    sta $3a
    lda #$ffd8
    jsl sub_7f25a3
    sta $0e,x
    sep #$20

loc_07e342:
.a8
    rep #$20
.a16
    lda $6aaf,y
    sta $1dbc
    lda $6ab3,y
    sta $1db8
    lda $6ab5,y
    sta $1db6
    lda $6aae,y
    and #$00ff
    sta $1db2
    sep #$20
.a8
    ldy $14d6
    jsl sub_7f2baa
    jsr sub_07e3d6
    bcc loc_07e381
    jsl sub_7f2bbe
    ldy $2b,x
    rep #$20
.a16
    lda $0c,x
    sta $6bed,y
    lda $10,x
    sta $6bf1,y
    sep #$20

loc_07e381:
.a8
    plp
    ply
    rtl

loc_07e384:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda $0a
    bmi loc_07e3a5
    lda $08
    sec
    sbc $0a
    cmp $0e,x
    bpl loc_07e3d1
    lda $08
    clc
    adc $0a
    cmp $0e,x
    bmi loc_07e3d1

loc_07e3a5:
    rep #$20
    lda $02
    sta $1dbc
    lda $97
    sta $1db8
    lda $a7
    and #$00ff
    sta $1db2
    lda $04
    sta $1db6
    sep #$20
.a8
    ldy $14d6
    jsl sub_7f2baa
    jsr sub_07e3d6
    bcs loc_07e3d1
    plp
    ply
    plx
    sec
    rtl

loc_07e3d1:
    plp
    ply
    plx
    clc
    rtl

sub_07e3d6:
    phx
    phy
    php
    rep #$30
.a16
    ldx $14d6
    lda $1db6
    asl a
    sta $02
    lda #$016a
    sta $04
    jsl sub_07e0fc
    sep #$20
.a8
    rep #$10
    lda $20,x
    and #$fd
    sta $20,x
    rep #$20
.a16
    lda $0c,x
    sta $02
    sta $04
    lda $10,x
    sta $97
    sta $e4
    lda $1db2
    bne loc_07e40e
    jml loc_07e44d

loc_07e40e:
    cmp #$0080
    bne loc_07e417
    jml loc_07e44d

loc_07e417:
    cmp #$0040
    bne loc_07e420
    jml loc_07e46f

loc_07e420:
    cmp #$00c0
    bne loc_07e429
    jml loc_07e46f

loc_07e429:
    cmp #$0020
    bne loc_07e432
    jml loc_07e491

loc_07e432:
    cmp #$0060
    bne loc_07e43b
    jml loc_07e4fa

loc_07e43b:
    cmp #$00a0
    bne loc_07e444
    jml loc_07e4b4

loc_07e444:
    cmp #$00e0
    bne loc_07e44d
    jml loc_07e4d7

loc_07e44d:
    lda $1dbc
    clc
    adc $1db6
    sec
    sbc $0c,x
    bpl loc_07e45c
    jmp loc_07e567

loc_07e45c:
    lda $1dbc
    sec
    sbc $1db6
    sec
    sbc $0c,x
    bpl loc_07e46c
    jml loc_07e578

loc_07e46c:
    jmp loc_07e567

loc_07e46f:
    lda $1db8
    clc
    adc $1db6
    sec
    sbc $10,x
    bpl loc_07e47e
    jmp loc_07e56e

loc_07e47e:
    lda $1db8
    sec
    sbc $1db6
    sec
    sbc $10,x
    bpl loc_07e48e
    jml loc_07e578

loc_07e48e:
    jmp loc_07e56e

loc_07e491:
    jsr sub_07e57d
    lda $0c,x
    clc
    adc $10,x
    sec
    sbc $1dbe
    bmi loc_07e4a2
    jmp loc_07e51d

loc_07e4a2:
    lda $0c,x
    clc
    adc $10,x
    sec
    sbc $1dc0
    bmi loc_07e4b1
    jml loc_07e578

loc_07e4b1:
    jmp loc_07e52e

loc_07e4b4:
    jsr sub_07e57d
    lda $0c,x
    clc
    adc $10,x
    sec
    sbc $1dc0
    bpl loc_07e4c5
    jmp loc_07e51d

loc_07e4c5:
    lda $0c,x
    clc
    adc $10,x
    sec
    sbc $1dbe
    bpl loc_07e4d4
    jml loc_07e578

loc_07e4d4:
    jmp loc_07e52e

loc_07e4d7:
    jsr sub_07e59b
    lda $0c,x
    sec
    sbc $10,x
    sec
    sbc $1dc0
    bmi loc_07e4e8
    jmp loc_07e558

loc_07e4e8:
    lda $10,x
    sec
    sbc $0c,x
    sec
    sbc $1dbe
    bpl loc_07e4f7
    jml loc_07e578

loc_07e4f7:
    jmp loc_07e543

loc_07e4fa:
    jsr sub_07e59b
    lda $0c,x
    sec
    sbc $10,x
    clc
    adc $1dbe
    bmi loc_07e50c
    jml loc_07e50f

loc_07e50c:
    jmp loc_07e558

loc_07e50f:
    lda $10,x
    sec
    sbc $0c,x
    clc
    adc $1dc0
    bpl loc_07e578
    jmp loc_07e543

loc_07e51d:
    eor #$ffff
    inc a
    cmp #$8000
    ror a
    pha
    clc
    adc $0c,x
    sta $0c,x
    pla
    bra loc_07e56e

loc_07e52e:
    eor #$ffff
    inc a
    cmp #$8000
    ror a
    pha
    clc
    adc $10,x
    sta $10,x
    pla
    bra loc_07e567
    .db $49,$ff,$ff,$1a

loc_07e543:
    cmp #$8000
    ror a
    pha
    clc
    adc $0c,x
    sta $0c,x
    pla
    eor #$ffff
    inc a
    bra loc_07e56e
    .db $49,$ff,$ff,$1a

loc_07e558:
    cmp #$8000
    ror a
    pha
    clc
    adc $10,x
    sta $10,x
    pla
    eor #$ffff
    inc a

loc_07e567:
    clc
    adc $0c,x
    sta $0c,x
    bra loc_07e573

loc_07e56e:
    clc
    adc $10,x
    sta $10,x

loc_07e573:
    plp
    ply
    plx
    sec
    rts

loc_07e578:
    plp
    ply
    plx
    clc
    rts

sub_07e57d:
    jsr sub_07e5b9
    lda $1db8
    clc
    adc $1dbc
    clc
    adc $09
    sta $1dbe
    lda $1db8
    clc
    adc $1dbc
    sec
    sbc $09
    sta $1dc0
    rts

sub_07e59b:
    jsr sub_07e5b9
    lda $1dbc
    sec
    sbc $1db8
    clc
    adc $09
    sta $1dc0
    lda $1db8
    sec
    sbc $1dbc
    clc
    adc $09
    sta $1dbe
    rts

sub_07e5b9:
    lda $1db6
    sta $02
    lda #$016a
    sta $04
    jsl sub_07e0fc
    rts
    .db $da,$5a,$08,$e2,$20,$c2,$10,$bc,$e8,$1c,$d0,$04,$5c,$ff,$e5,$07
    .db $bd,$eb,$1c,$c9,$00,$f0,$04,$5c,$1f,$e6,$07,$b4,$2b,$c2,$20,$b9
    .db $f7,$6a,$38,$ed,$0f,$1e,$e2,$20,$30,$04,$5c,$ff,$e5,$07,$bd,$eb
    .db $1c,$99,$82,$6a,$4c,$74,$e6,$b4,$2b,$ad,$13,$1e,$99,$82,$6a,$c2
    .db $20,$ad,$0f,$1e,$e2,$20,$d0,$04,$5c,$74,$e6,$07,$c2,$20,$ad,$0f
    .db $1e,$85,$08,$e2,$20,$80,$27,$e2,$20,$5a,$b4,$2b,$bd,$eb,$1c,$99
    .db $82,$6a,$7a,$c9,$01,$d0,$04,$5c,$3b,$e6,$07,$c9,$04,$f0,$04,$5c
    .db $74,$e6,$07,$c2,$20,$b9,$e4,$1c,$18,$79,$0e,$00,$85,$08,$e2,$20
    .db $a5,$5e,$48,$22,$fe,$77,$7f,$c2,$20,$a5,$08,$8f,$e0,$24,$70,$e2
    .db $20,$68,$85,$5e,$8f,$3a,$30,$00,$22,$4b,$78,$7f,$b4,$2b,$c2,$20
    .db $a5,$08,$99,$7d,$6a,$e2,$20,$28,$7a,$fa,$38,$6b,$b4,$2b,$c2,$20
    .db $a9,$00,$00,$99,$7d,$6a,$e2,$20,$28,$7a,$fa,$18,$6b

sub_07e685:
.a8
    phx
    phy
    php
    sep #$20
    rep #$10
    lda $1d72
    beq loc_07e695
    jml loc_07e776

loc_07e695:
    ldy $2b,x
    lda $6be6,y
    and #$7f
    sta $6be6,y
    lda $6beb,y
    bit #$80
    beq loc_07e6aa
    jml loc_07e776

loc_07e6aa:
    rep #$20
.a16
    lda $6a9d,y
    cmp #$0000
    sep #$20
.a8
    beq loc_07e6ba
    jml loc_07e776

loc_07e6ba:
    phy
    ldy #$033f
    rep #$20
.a16
    lda $000c,y
    sta $02
    lda $0010,y
    sta $97
    jsl sub_0ddb71
    sep #$20
.a8
    lda $02
    bne loc_07e6d7
    brl loc_07e6e2

loc_07e6d7:
    ply
    lda $6be6,y
    ora #$80
    sta $6be6,y
    bra loc_07e6e3

loc_07e6e2:
    ply

loc_07e6e3:
    rep #$20
.a16
    lda $0c,x
    sta $02
    lda $10,x
    sta $97
    jsl sub_0ddb71
    sep #$20
.a8
    lda $02
    beq loc_07e6fa
    brl loc_07e737

loc_07e6fa:
    lda $0d,x
    cmp #$80
    ror a
    sta $1dbe
    lda $11,x
    cmp #$80
    ror a
    sta $1dba
    lda $6b29,y
    cmp $1dbe
    beq loc_07e715
    sta $6b2c,y

loc_07e715:
    lda $6b2a,y
    cmp $1dba
    beq loc_07e720
    sta $6b2d,y

loc_07e720:
    lda $1dbe
    sta $6b29,y
    lda $1dba
    sta $6b2a,y
    lda $6be6,y
    and #$bf
    sta $6be6,y
    jmp loc_07e776

loc_07e737:
    lda $6be6,y
    bit #$40
    bne loc_07e740
    ora #$10

loc_07e740:
    ora #$40
    sta $6be6,y
    lda $0d,x
    cmp #$80
    ror a
    sta $1dc0
    lda $11,x
    cmp #$80
    ror a
    sta $1dbc
    lda $6b29,y
    sta $1dbe
    lda $6b2a,y
    sta $1dba
    jsr sub_07e77a
    lda $1dbe
    sta $6b29,y
    lda $1dba
    sta $6b2a,y
    jsr sub_07e845
    jsr sub_07e8cf

loc_07e776:
    plp
    ply
    plx
    rtl

sub_07e77a:
    phy
    lda $1dc0
    cmp $1dbe
    bne loc_07e787
    jml loc_07e806

loc_07e787:
    lda $1dbc
    cmp $1dba
    bne loc_07e793
    jml loc_07e806

loc_07e793:
    lda #$00
    sta $1db8
    lda $1dc0
    sta $3a
    lda $1dba
    sta $3e
    jsr sub_07e808
    bcs loc_07e7af
    lda $1db8
    ora #$01
    sta $1db8

loc_07e7af:
    lda $1dbe
    sta $3a
    lda $1dbc
    sta $3e
    jsr sub_07e808
    bcs loc_07e7c6
    lda $1db8
    ora #$02
    sta $1db8

loc_07e7c6:
    lda $1db8
    beq loc_07e806
    cmp #$01
    beq loc_07e7f8
    cmp #$02
    beq loc_07e800
    rep #$20
.a16
    lda $1dc0
    jsr sub_07e83c
    sec
    sbc $0c,x
    bpl loc_07e7e4
    eor #$ffff
    inc a

loc_07e7e4:
    sta $3a
    lda $1dbc
    jsr sub_07e83c
    bpl loc_07e7f2
    eor #$ffff
    inc a

loc_07e7f2:
    cmp $3e
    sep #$20
.a8
    bcc loc_07e800

loc_07e7f8:
    lda $1dc0
    sta $1dbe
    bra loc_07e806

loc_07e800:
    lda $1dbc
    sta $1dba

loc_07e806:
    ply
    rts

sub_07e808:
    ldy $14d6
    rep #$20
.a16
    lda $3a
    jsr sub_07e83c
    sta $000c,y
    lda $3e
    jsr sub_07e83c
    sta $0010,y
    sep #$20
.a8
    rep #$20
.a16
    lda $000c,y
    sta $02
    lda $0010,y
    sta $97
    jsl sub_0ddb71
    sep #$20
.a8
    lda $02
    beq loc_07e838
    brl loc_07e83a

loc_07e838:
    clc
    rts

loc_07e83a:
    sec
    rts

sub_07e83c:
.a16
    xba
    and #$ff00
    asl a
    ora #$0100
    rts

sub_07e845:
.a8
    lda #$00
    sta $1db8
    lda $1dc0
    sec
    sbc $1dbe
    inc a
    and #$03
    sta $1db9
    lda $1dbc
    sec
    sbc $1dba
    inc a
    and #$03
    asl a
    asl a
    ora $1db9
    sta $1db9
    phx
    rep #$20
.a16
    lda $1db9
    and #$000f
    tax
    sep #$20
.a8
    lda $07e8af,x
    sta $1db6
    lda $1db6
    lsr a
    lsr a
    lsr a
    lsr a
    and #$0f
    sta $3a
    lda $1db6
    sec
    sbc $6abc,y
    sec
    sbc $6ad1,y
    rol a
    rol a
    phx
    rep #$20
.a16
    and #$0001
    ora $3a
    and #$000f
    tax
    lda $07e8be,x
    and #$ff00
    sta $1db4
    plx
    sep #$20
.a8
    plx
    rts
    .db $e0,$00,$20,$00,$c0,$ff,$40,$00,$a0,$80,$60,$00,$00,$00,$00,$00
    .db $c0,$40,$e0,$60,$00,$80,$20,$a0,$40,$c0,$60,$e0,$80,$00,$a0,$20

sub_07e8cf:
    phy
    php
    sep #$20
    rep #$10
    ldy #$0000
    sty $02
    sty $97
    ldy $2b,x
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    beq loc_07e8ef
    jml loc_07e953

loc_07e8ef:
    lda $6ace,y
    bne loc_07e953
    lda #$00
    sta $1e38
    lda $6abc,y
    pha
    rep #$20
.a16
    lda $6abb,y
    sta $3a
    lda $1db4
    jsl sub_7f25a3
    sta $6abb,y
    sep #$20
.a8
    pla
    sec
    sbc $6abc,y
    asl a
    asl a
    asl a
    eor #$ff
    inc a
    sta $97
    lda $6ada,y
    sta $3a
    lda $97
    jsl sub_7f2782
    sta $6ada,y
    rep #$20
.a16
    lda $1db4
    sec
    sbc $6abb,y
    cmp #$8000
    ror a
    bpl loc_07e93d
    adc #$0000

loc_07e93d:
    sta $08
    sep #$20
.a8
    rep #$20
.a16
    lda $6ad0,y
    sta $3a
    lda $08
    jsl sub_7f25a3
    sta $6ad0,y
    sep #$20

loc_07e953:
.a8
    ldy $2b,x
    rep #$20
.a16
    lda #$0000
    sta $02
    sta $97
    lda $6b28,y
    and #$ff00
    asl a
    sta $04
    lda $6b29,y
    and #$ff00
    asl a
    sta $e4
    phx
    lda $1db6
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    and #$0007
    tax
    lda $07ea0d,x
    sta $3a
    plx
    lda $3a
    bit #$0001
    bne loc_07e997
    bit #$0002
    beq loc_07e99e
    lda $04
    ora #$01ff
    bra loc_07e999

loc_07e997:
    lda $04

loc_07e999:
    sec
    sbc $0c,x
    sta $02

loc_07e99e:
    lda $3a
    bit #$0004
    bne loc_07e9b1
    bit #$0008
    beq loc_07e9b8
    lda $e4
    ora #$01ff
    bra loc_07e9b3

loc_07e9b1:
    lda $e4

loc_07e9b3:
    sec
    sbc $10,x
    sta $97

loc_07e9b8:
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_07e9c9
    jml loc_07e9ec

loc_07e9c9:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    bne loc_07e9da
    jml loc_07e9ec

loc_07e9da:
    rep #$20
.a16
    lda $02
    sta $6af9,y
    sta $02
    lda $97
    sta $6afb,y
    sta $97
    bra loc_07e9f6

loc_07e9ec:
.a8
    rep #$20
.a16
    lda $02
    sta $02
    lda $97
    sta $97

loc_07e9f6:
    lda $02
    clc
    adc $0c,x
    sta $0c,x
    sta $6bed,y
    lda $97
    clc
    adc $10,x
    sta $10,x
    sta $6bf1,y
    plp
    ply
    rts
    .db $04,$06,$02,$0a,$08,$09,$01,$05

sub_07ea15:
.a8
    php
    sep #$20
    rep #$10
    rep #$20
.a16
    lda $0c,x
    sta $d7ec
    lda $0e,x
    sta $d7ee
    lda $10,x
    sta $d7f0
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    beq loc_07ea3e
    jml loc_07ea51

loc_07ea3e:
    rep #$20
.a16
    lda $32,x
    sta $1e1c
    lda $34,x
    sta $1e1e
    lda $36,x
    sta $1e20
    bra loc_07ea65

loc_07ea51:
.a8
    rep #$20
.a16
    lda $1cc1,x
    sta $1e1c
    lda $1cc3,x
    sta $1e1e
    lda $1cc5,x
    sta $1e20

loc_07ea65:
    plp
.a8
    rtl

sub_07ea67:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    ldx $12c3
    ldy $2b,x
    lda $6bea,y
    beq loc_07ea92
    dec a
    sta $6bea,y
    beq loc_07ea8a
    lda $6be9,y
    ora #$18
    bra loc_07ea8f

loc_07ea8a:
    lda $6be9,y
    and #$f7

loc_07ea8f:
    sta $6be9,y

loc_07ea92:
    lda $6be9,y
    bit #$08
    bne loc_07eab3
    bit #$10
    bne loc_07eab9
    bit #$20
    bne loc_07eaa7
    bit #$40
    bne loc_07eac2
    bra loc_07eac6

loc_07eaa7:
    lda $c4
    bit #$18
    bne loc_07eac2
    jsl sub_07ebd6
    bra loc_07eac6

loc_07eab3:
    jsl sub_07ec9a
    bra loc_07eac6

loc_07eab9:
    jsl sub_07eeb2
    plp
    ply
    plx
    plb
    rtl

loc_07eac2:
    jsl sub_07eeb2

loc_07eac6:
    plp
    ply
    plx
    plb
    rtl

sub_07eacb:
    phx
    phy
    php
    sep #$20
    lda $1e58
    ora #$80
    sta $1e58
    rep #$30
.a16
    ldx #$005e
    lda #$000a
    sta $02
    lda #$0140
    sta $08
    lda #$2800
    sta $97

loc_07eaec:
    dex
    dex
    bpl loc_07eaec
    ldx #$001e
    lda #$0009
    sta $02
    lda #$0120
    sta $08
    lda #$2400
    sta $97

loc_07eb02:
    lda $f0c5,x
    jsr sub_07eb4a
    sta $f0c5,x
    dex
    dex
    bpl loc_07eb02
    plp
.a8
    ply
    plx
    rtl
    .db $48,$29,$1f,$00,$18,$65,$02,$89,$e0,$ff,$f0,$03,$a9,$1f,$00,$85
    .db $3a,$68,$48,$29,$e0,$03,$18,$65,$08,$89,$00,$fc,$f0,$03,$a9,$e0
    .db $03,$85,$3c,$68,$29,$00,$7c,$18,$65,$97,$89,$00,$80,$f0,$03,$a9
    .db $00,$7c,$05,$3a,$05,$3c,$60

sub_07eb4a:
.a16
    pha
    and #$001f
    sec
    sbc $02
    bpl loc_07eb56
    lda #$0000

loc_07eb56:
    sta $3a
    pla
    pha
    and #$03e0
    sec
    sbc $08
    bpl loc_07eb65
    lda #$0000

loc_07eb65:
    sta $3c
    pla
    and #$7c00
    sec
    sbc $97
    bpl loc_07eb73
    lda #$0000

loc_07eb73:
    ora $3a
    ora $3c
    rts
    .db $da,$08,$c2,$30,$a2,$1e,$00,$bf,$2c,$8a,$01,$9d,$c5,$f0,$bf,$2c
    .db $8a,$01,$9d,$c5,$f3,$ca,$ca,$10,$ee,$28,$fa,$6b,$da,$5a,$08,$e2
    .db $20,$ad,$58,$1e,$09,$80,$8d,$58,$1e,$c2,$30,$a2,$1e,$00,$bf,$6c
    .db $8a,$01,$9d,$c5,$f0,$9d,$c5,$f3,$ca,$ca,$10,$f2,$28,$7a,$fa,$6b

sub_07ebb8:
.a8
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    ldx #$00fe

loc_07ebc6:
    lda $7eefe5,x
    sta $7ef2e5,x
    dex
    dex
    bpl loc_07ebc6
    plp
.a8
    ply
    plx
    rtl

sub_07ebd6:
    phx
    phy
    php
    ldy $2b,x
    sep #$20
    rep #$10
    lda $1e58
    ora #$80
    sta $1e58
    rep #$30
.a16
    ldx #$00de

loc_07ebec:
    lda $f005,x
    pha
    and #$001f
    bpl loc_07ebf8
    lda #$0000

loc_07ebf8:
    sta $04
    pla
    pha
    and #$03e0
    sec
    sbc #$0020
    bpl loc_07ec08
    lda #$0000

loc_07ec08:
    ora $04
    sta $04
    pla
    and #$7c00
    sec
    sbc #$0400
    sec
    sbc #$0400
    bpl loc_07ec1d
    lda #$0000

loc_07ec1d:
    ora $04
    sta $f005,x
    dex
    dex
    bpl loc_07ebec
    plp
    ply
    plx
    rtl
    .db $da,$5a,$08,$c2,$30,$ad,$58,$1e,$09,$80,$00,$8d,$58,$1e,$b4,$2b
    .db $a2,$07,$00,$86,$3e,$a2,$20,$00,$a9,$e0,$03,$85,$0a,$a9,$00,$7c
    .db $80,$6f,$da,$5a,$08,$c2,$30,$ad,$58,$1e,$09,$80,$00,$8d,$58,$1e
    .db $b4,$2b,$a2,$07,$00,$86,$3e,$a2,$20,$00,$a9,$e0,$03,$85,$0a,$a9
    .db $00,$7c,$85,$a7,$a9,$1f,$00,$85,$08,$a9,$01,$00,$85,$97,$a9,$00
    .db $0c,$85,$e4,$80,$4d,$da,$5a,$08,$e2,$20,$ad,$58,$1e,$09,$80,$8d
    .db $58,$1e,$c2,$30,$b4,$2b,$a2,$07,$00,$86,$3e,$a2,$20,$00,$80,$19

sub_07ec9a:
.a8
    phx
    phy
    php
    sep #$20
    lda $1e58
    ora #$80
    sta $1e58
    rep #$30
.a16
    ldy $2b,x
    ldx #$0004
    stx $3e
    ldx #$0080
    lda #$0380
    sta $0a
    lda #$7000
    sta $a7
    lda #$001f
    sta $08
    lda #$0003
    sta $97
    lda #$0400
    sta $e4
    sep #$20
.a8
    lda $1e58
    ora #$80
    sta $1e58
    rep #$20
.a16
    stz $1dae
    stx $1db0

loc_07ecde:
    ldy $3e

loc_07ece0:
    sep #$20
.a8
    lda $1e58
    ora #$80
    sta $1e58
    rep #$20
.a16
    txa
    and #$001f
    beq loc_07ed2d
    lda $efe5,x
    pha
    and #$001f
    clc
    adc $97
    cmp $08
    bcc loc_07ed02
    lda $08

loc_07ed02:
    sta $04
    pla
    pha
    and #$03e0
    clc
    adc #$0020
    cmp $0a
    bcc loc_07ed13
    lda $0a

loc_07ed13:
    ora $04
    sta $04
    pla
    and #$7c00
    clc
    adc $e4
    cmp $a7
    bcc loc_07ed24
    lda $a7

loc_07ed24:
    ora $04
    sta $04
    ora $04
    sta $efe5,x

loc_07ed2d:
    dey
    beq loc_07ed39
    txa
    clc
    adc #$0020
    tax
    jmp loc_07ece0

loc_07ed39:
    lda $1dae
    inc a
    inc a
    sta $1dae
    cmp #$0020
    beq loc_07ed4e
    clc
    adc $1db0
    tax
    jmp loc_07ecde

loc_07ed4e:
    plp
.a8
    ply
    plx
    rtl
    .db $da,$5a,$08,$b4,$2b,$e2,$20,$ad,$58,$1e,$09,$80,$8d,$58,$1e,$c2
    .db $30,$a2,$1e,$00,$a9,$00,$00,$e0,$04,$00,$f0,$21,$e0,$06,$00,$f0
    .db $1c,$e0,$08,$00,$f0,$17,$e0,$0c,$00,$f0,$12,$e0,$0e,$00,$f0,$0d
    .db $e0,$10,$00,$f0,$08,$e0,$1c,$00,$f0,$03,$9d,$c5,$f3,$ca,$ca,$10
    .db $d6,$28,$7a,$fa,$6b,$da,$5a,$08,$b4,$2b,$c2,$30,$a2,$de,$00,$a9
    .db $27,$1d,$9d,$e5,$f2,$ca,$ca,$10,$f9,$28,$7a,$fa,$6b

sub_07edaf:
    phx
    phy
    php
    ldy $2b,x
    rep #$30
.a16
    ldx #$0002

loc_07edb9:
    lda $07edc9,x
    sta $f365,x
    inx
    inx
    cpx #$0020
    bne loc_07edb9
    plp
.a8
    ply
    plx
    rtl
    .db $de,$7b,$5e,$7b,$de,$7a,$5e,$7a,$da,$71,$56,$65,$d2,$58,$4e,$4c
    .db $4b,$3c,$27,$2c,$24,$1c,$00,$08,$da,$71,$56,$65,$00,$00

sub_07ede9:
    phx
    phy
    php
    ldy $2b,x
    rep #$30
.a16
    ldx #$0002

loc_07edf3:
    lda $07ee03,x
    sta $f365,x
    inx
    inx
    cpx #$0020
    bne loc_07edf3
    plp
.a8
    ply
    plx
    rtl
    .db $f9,$7f,$eb,$7f,$e3,$7f,$43,$7f,$a3,$7e,$e3,$7d,$e3,$7c,$63,$74
    .db $63,$5c,$63,$44,$63,$2c,$21,$0c,$63,$5b,$03,$4f,$00,$00,$da,$5a
    .db $08,$b4,$2b,$c2,$30,$a9,$27,$1d,$80,$2d

sub_07ee2f:
    phx
    phy
    php
    ldy $2b,x
    sep #$20
    lda $1e58
    ora #$80
    sta $1e58
    rep #$30
.a16
    lda #$7fff
    ldx #$007e
    bra loc_07ee5f
    .db $da,$5a,$08,$b4,$2b,$e2,$20,$ad,$58,$1e,$09,$80,$8d,$58,$1e,$c2
    .db $30,$a9,$ff,$7f,$a2,$5e,$00

loc_07ee5f:
    sta $f065,x
    dex
    dex
    bpl loc_07ee5f
    plp
.a8
    ply
    plx
    rtl
    .db $da,$5a,$08,$e2,$20,$ad,$58,$1e,$09,$80,$8d,$58,$1e,$c2,$30,$a2
    .db $1e,$00,$a9,$00,$00,$9d,$c5,$f0,$ca,$ca,$10,$f6,$a9,$00,$3c,$85
    .db $3a,$a2,$1e,$00,$a5,$3a,$38,$e9,$00,$04,$85,$3a,$9d,$c5,$f0,$ca
    .db $ca,$10,$f1,$28,$7a,$fa,$6b,$da,$5a,$08,$c2,$30,$b4,$2b,$a2,$08
    .db $00,$86,$3e,$a2,$00,$00,$80,$0f

sub_07eeb2:
    phx
    phy
    php
    rep #$30
.a16
    ldy $2b,x
    ldx #$0004
    stx $3e
    ldx #$0080
    sep #$20
.a8
    lda $1e58
    ora #$80
    sta $1e58
    rep #$30
.a16
    stz $3a
    stz $1dae
    stx $1db0

loc_07eed5:
    ldy $3e

loc_07eed7:
    lda $efe5,x
    cmp $f2e5,x
    bne loc_07eee3
    jml loc_07ef45

loc_07eee3:
    pha
    and #$001f
    sta $02
    pla
    pha
    and #$03e0
    sta $08
    pla
    and #$7c00
    sta $97
    lda $f2e5,x
    pha
    and #$001f
    cmp $02
    beq loc_07ef09
    bmi loc_07ef07
    inc $02
    bra loc_07ef09

loc_07ef07:
    dec $02

loc_07ef09:
    pla
    pha
    and #$03e0
    cmp $08
    beq loc_07ef24
    bmi loc_07ef19
    lda #$0020
    bra loc_07ef1c

loc_07ef19:
    lda #$ffe0

loc_07ef1c:
    clc
    adc $08
    and #$03e0
    sta $08

loc_07ef24:
    pla
    and #$7c00
    cmp $97
    beq loc_07ef3c
    bmi loc_07ef33
    lda #$0400
    bra loc_07ef36

loc_07ef33:
    lda #$fc00

loc_07ef36:
    clc
    adc $97
    and #$7c00

loc_07ef3c:
    ora $08
    ora $02
    sta $efe5,x
    inc $3a

loc_07ef45:
    dey
    beq loc_07ef51
    txa
    clc
    adc #$0020
    tax
    jmp loc_07eed7

loc_07ef51:
    lda $1dae
    inc a
    inc a
    sta $1dae
    cmp #$0020
    beq loc_07ef66
    clc
    adc $1db0
    tax
    jmp loc_07eed5

loc_07ef66:
    plp
.a8
    ply
    plx
    phy
    php
    rep #$20
.a16
    lda $3a
    sep #$20
.a8
    bne loc_07ef86
    ldy $2b,x
    lda $6be9,y
    and #$ef
    sta $6be9,y
    bit #$20
    bne loc_07ef86
    and #$bf
    sta $6be9,y

loc_07ef86:
    plp
    ply
    rtl
    .db $28,$7a,$fa,$6b

sub_07ef8d:
    phx
    phy
    php
    ldy $2b,x
    rep #$30
.a16
    lda #$177f
    sta $f0c7
    lda #$0eff
    sta $f0c9
    lda #$0a7e
    sta $f0cb
    lda #$061b
    sta $f0cd
    plp
.a8
    ply
    plx
    rtl

sub_07efb0:
    phx
    phy
    php
    ldy $2b,x
    rep #$30
.a16
    lda #$177f
    sta $f3c7
    lda #$0eff
    sta $f3c9
    lda #$0a7e
    sta $f3cb
    lda #$061b
    sta $f3cd
    plp
.a8
    ply
    plx
    rtl
    .db $da,$5a,$08,$e2,$20,$ad,$58,$1e,$09,$80,$8d,$58,$1e,$c2,$30,$b4
    .db $2b,$a2,$40,$00,$86,$3e,$a2,$80,$00,$a9,$80,$03,$85,$0a,$a9,$00
    .db $70,$85,$a7,$a9,$1f,$00,$85,$08,$a9,$03,$00,$85,$97,$a9,$00,$04
    .db $85,$e4,$e2,$20,$ad,$58,$1e,$09,$80,$8d,$58,$1e,$c2,$20,$8a,$29
    .db $1f,$00,$f0,$3b,$bd,$e5,$ef,$48,$29,$1f,$00,$18,$65,$97,$c5,$08
    .db $90,$02,$a5,$08,$85,$04,$68,$48,$29,$e0,$03,$18,$69,$20,$00,$c5
    .db $0a,$90,$02,$a5,$0a,$05,$04,$85,$04,$68,$29,$00,$7c,$18,$65,$e4
    .db $c5,$a7,$90,$02,$a5,$a7,$05,$04,$85,$04,$05,$04,$9d,$e5,$ef,$e8
    .db $e8,$c6,$3e,$10,$b9,$28,$7a,$fa,$6b

sub_07f05c:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    ldx $12c3
    ldy $2b,x
    lda $6b61,y
    and #$0f
    bne loc_07f079
    lda #$05
    sta $6b61,y

loc_07f079:
    cmp #$05
    beq loc_07f081
    jml loc_07f1a8

loc_07f081:
    ldy $12a8
    rep #$20
.a16
    lda #$7fff
    sta $a5
    lda $14d6
    sta $a7

loc_07f090:
.a8
    sep #$20
    tyx
    lda $23,x
    and #$01
    beq loc_07f09d
    jml loc_07f133

loc_07f09d:
    lda $31,x
    and #$04
    beq loc_07f0a7
    jml loc_07f133

loc_07f0a7:
    lda $21,x
    and #$01
    beq loc_07f0b1
    jml loc_07f133

loc_07f0b1:
    rep #$20
.a16
    lda $04,x
    cmp #$e62c
    beq loc_07f0bf
    cmp #$c348
    bne loc_07f0cb

loc_07f0bf:
    sep #$20
.a8
    rep #$20
.a16
    stz $a5
    stx $a7
    sep #$20
.a8
    bra loc_07f13d

loc_07f0cb:
.a16
    sep #$20
.a8
    lda $31,x
    and #$02
    beq loc_07f0d7
    jml loc_07f133

loc_07f0d7:
    lda $31,x
    and #$10
    cmp #$10
    beq loc_07f0e3
    jml loc_07f133

loc_07f0e3:
    lda $31,x
    and #$80
    cmp #$80
    bne loc_07f0ef
    jml loc_07f133

loc_07f0ef:
    lda $31,x
    and #$08
    cmp #$08
    bne loc_07f0fb
    jml loc_07f133

loc_07f0fb:
    lda $22,x
    and #$08
    beq loc_07f105
    jml loc_07f133

loc_07f105:
    ldy $12c3
    jsl DistanceXZ
    lda $1b4d
    and #$07
    cmp #$00
    rep #$20
.a16
    beq loc_07f121
    lda $12de
    bmi loc_07f133
    cmp #$0bb8
    bra loc_07f129

loc_07f121:
    lda $12de
    bmi loc_07f133
    cmp #$1f40

loc_07f129:
    bcs loc_07f133
    cmp $a5
    bcs loc_07f133
    sta $a5
    stx $a7

loc_07f133:
.a8
    sep #$20
    ldy $00,x
    beq loc_07f13d
    jml loc_07f090

loc_07f13d:
    ldx $a7
    cpx $14d6
    beq loc_07f18c
    lda $2d,x
    sec
    sbc #$14
    beq loc_07f14d
    bpl loc_07f166

loc_07f14d:
    phy
    lda #$0c
    jsl sub_7f2360
    rep #$20
.a16
    lda #$c499
    sta $6a62,y
    sep #$20
.a8
    lda #$7f
    sta $6a64,y
    ply
    lda #$00

loc_07f166:
    sta $2d,x
    lda $23,x
    ora #$01
    sta $23,x
    lda $26,x
    ora #$02
    sta $26,x
    lda $20,x
    ora #$02
    sta $20,x
    lda $26,x
    and #$01
    bne loc_07f184
    jml loc_07f133

loc_07f184:
    lda $22,x
    ora #$02
    sta $22,x
    bra loc_07f1a8

loc_07f18c:
    sep #$20
    lda $1e0d
    and #$ef
    sta $1e0d
    ldy $12a8

loc_07f199:
    tyx
    lda $23,x
    and #$fe
    sta $23,x
    ldy $00,x
    beq loc_07f1a8
    jml loc_07f199

loc_07f1a8:
    plp
    ply
    plx
    plb
    rtl
    .db $6b

sub_07f1ae:
    phx
    phy
    php
    stx $04
    stz $e4
    lda $25,x
    and #$10
    bne loc_07f1bf
    jml loc_07f2ea

loc_07f1bf:
    ldy $1e,x
    bne loc_07f1c7
    jml loc_07f2ea

loc_07f1c7:
    ldx $0004,y
    phy
    lda $31,x
    and #$08
    cmp #$08
    beq loc_07f1d7
    jml loc_07f2cc

loc_07f1d7:
    lda $21,x
    and #$01
    beq loc_07f1e1
    jml loc_07f2cc

loc_07f1e1:
    lda $21,x
    ora #$01
    sta $21,x
    lda $14,x
    clc
    adc #$80
    sta $08
    lda $12,x
    eor #$ff
    inc a
    sta $02
    phx
    ldx $04
    lda $08
    sec
    sbc $14,x
    sta $08
    cpx $12c3
    beq loc_07f209
    cpx $12c5
    bne loc_07f218

loc_07f209:
    phy
    ldy $2b,x
    lda $6c02,y
    ply
    and #$40
    bne loc_07f218
    jml loc_07f23e

loc_07f218:
    jsl sub_7f7bd0
    and #$3f
    clc
    adc $0002
    sta $02
    jsl sub_7f7bd0
    and #$3f
    clc
    adc $0008
    sta $08
    lda $02
    clc
    adc #$e0
    sta $02
    lda $08
    clc
    adc #$e0
    sta $08

loc_07f23e:
    lda $02
    sta $14b7
    lda $08
    sta $14b6
    stz $14b8
    stz $14b9
    lda #$00
    sta $14b0
    lda #$00
    sta $14b2
    lda #$00
    sta $14b4
    lda #$02
    jsl sub_03a89c
    cpy #$0000
    bne loc_07f26b
    ldy $14d6

loc_07f26b:
    plx
    phy
    lda #$0a
    jsl sub_7f233b
    cpy #$0000
    bne loc_07f27c
    jml loc_07f28b

loc_07f27c:
    rep #$20
.a16
    lda $6a62,y
    sta $02
    sep #$20
.a8
    rep #$20
.a16
    lda $02
    bra loc_07f28f

loc_07f28b:
.a8
    rep #$20
.a16
    lda $04,x

loc_07f28f:
    ply
    sta $0004,y
    sep #$20
.a8
    rep #$20
.a16
    lda $1ccd,x
    sta $1ccd,y
    sep #$20
.a8
    jsl sub_7f2baa
    lda $20,x
    and #$20
    bne loc_07f2ad
    jml loc_07f2c5

loc_07f2ad:
    lda $0020,y
    ora #$20
    sta $0020,y
    lda $1cc8,x
    sta $1cc8,y
    lda $1cda,x
    sta $1cda,y
    lda #$3c
    sta $18,x

loc_07f2c5:
    lda $e4
    clc
    adc #$01
    sta $e4

loc_07f2cc:
    ply
    lda $1aa6
    bit #$02
    bne loc_07f2dc
    lda $e4
    beq loc_07f2dc
    jml loc_07f2ea

loc_07f2dc:
    rep #$20
.a16
    lda $0000,y
    tay
    sep #$20
.a8
    beq loc_07f2ea
    jml loc_07f1c7

loc_07f2ea:
    plp
    ply
    plx
    rtl
    .db $da,$5a,$08,$c2,$30,$9b,$a5,$3a,$29,$03,$00,$aa,$e2,$20,$a9,$00
    .db $64,$02,$cd,$14,$1e,$d0,$01,$1a,$cd,$15,$1e,$d0,$03,$1a,$80,$f2
    .db $ca,$30,$03,$1a,$80,$ec,$c2,$20,$0a,$29,$0f,$00,$c9,$0c,$00,$90
    .db $03,$a9,$00,$00,$aa,$bf,$2d,$ab,$06,$99,$04,$00,$bf,$87,$f9,$07
    .db $99,$cd,$1c,$28,$7a,$fa,$6b,$5a,$08,$e2,$20,$c2,$10,$64,$02,$b4
    .db $1e,$d0,$04,$5c,$62,$f3,$07,$da,$be,$04,$00,$9b,$cc,$c3,$12,$d0
    .db $04,$e6,$02,$80,$0e,$c2,$20,$b9,$00,$00,$a8,$e2,$20,$f0,$04,$5c
    .db $46,$f3,$07,$fa,$28,$7a,$6b,$bd,$d6,$1c,$38,$f5,$14,$30,$12,$b5
    .db $14,$18,$69,$e2,$95,$14,$bd,$d6,$1c,$18,$69,$1e,$9d,$d6,$1c,$80
    .db $10,$b5,$14,$18,$69,$1e,$95,$14,$bd,$d6,$1c,$18,$69,$e2,$9d,$d6
    .db $1c,$6b

sub_07f390:
    lda $27,x
    sec
    sbc $2d,x
    sta $3a
    lda $27,x
    sta $2d,x
    lda $3a
    cmp #$03
    bmi loc_07f3a5
    lda #$04
    sta $3a

loc_07f3a5:
    lda $2d,x
    sec
    sbc $3a
    bpl loc_07f3ae
    lda #$00

loc_07f3ae:
    sta $2d,x
    sta $27,x
    sta $d773
    rtl

sub_07f3b6:
    ldy #$033f
    lda $0015,y
    eor #$ff
    inc a
    sec
    sbc $14,x
    cmp #$80
    ror a
    cmp #$80
    ror a
    cmp #$80
    ror a
    clc
    adc $14,x
    sta $14,x
    rtl

sub_07f3d1:
    lda $1e14
    inc a
    and #$07
    cmp #$06
    bmi loc_07f3dd
    lda #$00

loc_07f3dd:
    sta $1e14
    rtl
    .db $ac,$71,$d7,$a9,$00,$85,$02,$85,$04,$89,$80,$f0,$06,$a9,$ff,$85
    .db $05,$80,$02,$64,$05,$a9,$0a,$85,$08,$85,$0a,$89,$80,$f0,$06,$a9
    .db $ff,$85,$0b,$80,$02,$64,$0b,$a9,$50,$85,$97,$85,$e4,$89,$80,$f0
    .db $06,$a9,$ff,$85,$e5,$80,$02,$64,$e5,$b5,$14,$22,$a9,$38,$7f,$c2
    .db $20,$a5,$04,$0a,$0a,$0a,$0a,$0a,$0a,$85,$04,$a5,$0a,$0a,$0a,$0a
    .db $0a,$0a,$0a,$85,$0a,$a5,$e4,$0a,$0a,$0a,$0a,$0a,$0a,$85,$e4,$a5
    .db $04,$18,$7d,$0c,$00,$99,$0c,$00,$a5,$e4,$18,$7d,$10,$00,$99,$10
    .db $00,$a5,$0a,$18,$7d,$0e,$00,$99,$0e,$00,$e2,$20,$da,$ad,$8f,$1d
    .db $c2,$20,$29,$07,$00,$aa,$bf,$f9,$f4,$07,$e2,$20,$fa,$85,$97,$ad
    .db $a9,$1b,$99,$14,$00,$a9,$00,$99,$12,$00,$99,$16,$00,$a9,$00,$85
    .db $02,$85,$04,$89,$80,$f0,$06,$a9,$ff,$85,$05,$80,$02,$64,$05,$a9
    .db $00,$85,$08,$85,$0a,$89,$80,$f0,$06,$a9,$ff,$85,$0b,$80,$02,$64
    .db $0b,$a5,$97,$85,$97,$85,$e4,$89,$80,$f0,$06,$a9,$ff,$85,$e5,$80
    .db $02,$64,$e5,$b9,$14,$00,$22,$a9,$38,$7f,$c2,$20,$a5,$04,$0a,$0a
    .db $0a,$0a,$0a,$0a,$85,$04,$a5,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$85,$0a
    .db $a5,$e4,$0a,$0a,$0a,$0a,$0a,$0a,$85,$e4,$a5,$04,$18,$79,$0c,$00
    .db $99,$0c,$00,$a5,$e4,$18,$79,$10,$00,$99,$10,$00,$a5,$0a,$18,$79
    .db $0e,$00,$99,$0e,$00,$e2,$20,$6b,$f1,$f6,$00,$0a,$14,$0a,$00,$f6

sub_07f501:
    rep #$20
.a16
    lda $1e52
    bpl loc_07f50b
    stz $1e52

loc_07f50b:
    stz $1e52
    ldy #$033f
    lda $0014,y
    cmp #$8000
    ror a
    sta $3c
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    clc
    adc $3c
    sta $0014,y
    sep #$20
.a8
    rtl

sub_07f52b:
    rep #$20
.a16
    ldy #$033f
    lda $0014,y
    sec
    sbc #$c000
    cmp #$8000
    ror a
    sta $3c
    cmp #$8000
    ror a
    clc
    adc $3c
    clc
    adc #$c000
    sta $0014,y
    sep #$20
.a8
    rtl

sub_07f54e:
    phy
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b63,y
    ply
    phx
    tyx
    ply
    and #$80
    bne loc_07f567
    jml loc_07f56c

loc_07f567:
    lda #$ff
    sta $1cda,x

loc_07f56c:
    rep #$20
.a16
    tya
    sta $1cd8,x
    lda $1ce4,x
    sta $1cd3,x
    lda #$0000
    sta $1cd1,x
    sep #$20
.a8
    phx
    ldx $2b,y
    txy
    plx
    lda $6c08,y
    sta $1ce2,x
    ply
    rtl

sub_07f58d:
    lda $1cd5,x
    clc
    adc #$08
    sta $1cd5,x
    lda $1cd7,x
    clc
    adc #$06
    sta $1cd7,x
    lda $1de2
    cmp #$09
    beq loc_07f5af
    lda $1b4d
    and #$07
    cmp #$00
    bne loc_07f5b4

loc_07f5af:
    lda $1d72
    bne loc_07f5e6

loc_07f5b4:
    ldy $06,x
    phx
    ldx $2b,y
    txy
    plx
    lda $1e0d
    and #$01
    bne loc_07f5c7
    lda $d7f4
    bne loc_07f5d3

loc_07f5c7:
    lda $6c02,y
    bit #$fe
    beq loc_07f5d3
    lda #$01
    sta $6c02,y

loc_07f5d3:
    lda $6c02,y
    and #$1f
    sta $1ce2,x
    bne loc_07f5e5
    lda $6c02,y
    and #$df
    sta $6c02,y

loc_07f5e5:
    rtl

loc_07f5e6:
    lda #$00
    sta $1ce2,x
    rtl

sub_07f5ec:
    phx
    ldx $12c3
    ldy $2b,x
    lda $6a8c,y
    ora #$80
    sta $6a8c,y
    lda #$10
    sta $6c2a,y
    lda #$10
    sta $6c2b,y
    lda #$1f
    sta $6c2c,y
    lda #$03
    sta $6a8d,y
    lda #$03
    sta $6a8e,y
    lda #$04
    sta $6a8f,y
    lda $6b63,y
    and #$80
    bne loc_07f623
    jml loc_07f632

loc_07f623:
    rep #$20
.a16
    lda #$0008
    sta $6a90,y
    sta $6c26,y
    sep #$20
.a8
    plx
    rtl

loc_07f632:
    plx
    rtl

sub_07f634:
    phy
    ldy $12c3
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b63,y
    ply
    phx
    tyx
    ply
    and #$80
    bne loc_07f64d
    jml loc_07f6bb

loc_07f64d:
    lda #$00
    sta $02
    sta $04
    bit #$80
    beq loc_07f65d
    lda #$ff
    sta $05
    bra loc_07f65f

loc_07f65d:
    stz $05

loc_07f65f:
    lda #$00
    sta $08
    sta $0a
    bit #$80
    beq loc_07f66f
    lda #$ff
    sta $0b
    bra loc_07f671

loc_07f66f:
    stz $0b

loc_07f671:
    lda #$50
    sta $97
    sta $e4
    bit #$80
    beq loc_07f681
    lda #$ff
    sta $e5
    bra loc_07f683

loc_07f681:
    stz $e5

loc_07f683:
    lda $0012,y
    jsl Rotate2D
    lda $04
    sta $02
    lda $0a
    sta $08
    lda $e4
    sta $97
    lda $0014,y
    jsl sub_7f38a9
    rep #$20
.a16
    lda $04
    clc
    adc $000c,y
    sta $0c,x
    lda $e4
    clc
    adc $0010,y
    sta $10,x
    lda $0a
    clc
    adc $000e,y
    sta $0e,x
    sep #$20
.a8
    ply
    rtl

loc_07f6bb:
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
    ply
    rtl
    .db $ad,$d7,$1d,$48,$80,$04

sub_07f6d6:
    lda $1dd1
    pha
    lda #$00
    sta $1ce2,x
    rep #$20
.a16
    lda #$0000
    sta $1cc8,x
    sep #$20
.a8
    pla
    cmp #$0d
    bcs loc_07f707
    lda #$01
    sta $1ce2,x
    lda $c4
    bit #$04
    bne loc_07f707
    bit #$01
    bne loc_07f707
    rep #$20
.a16
    lda #$0003
    sta $1cc8,x
    sep #$20

loc_07f707:
.a8
    rtl
    .db $c2,$20,$ad,$14,$1e,$29,$07,$00,$0a,$da,$aa,$bf,$9f,$f9,$07,$80
    .db $16,$c2,$20,$ad,$14,$1e,$80,$05,$c2,$20,$ad,$70,$1e,$29,$07,$00
    .db $0a,$da,$aa,$bf,$b7,$f9,$07,$85,$3a,$bf,$db,$f9,$07,$49,$ff,$ff
    .db $1a,$80,$2d,$c2,$20,$ad,$14,$1e,$29,$07,$00,$0a,$da,$aa,$bf,$ab
    .db $f9,$07,$80,$16,$c2,$20,$ad,$14,$1e,$80,$05,$c2,$20,$ad,$70,$1e
    .db $29,$07,$00,$0a,$da,$aa,$bf,$c3,$f9,$07,$85,$3a,$bf,$db,$f9,$07
    .db $85,$02,$bf,$87,$f9,$07,$85,$04,$fa,$a5,$3a,$95,$04,$a5,$02,$9d
    .db $cf,$1c,$a5,$04,$9d,$cd,$1c,$6b

sub_07f780:
    phy
    php
    rep #$20
.a16
    ldy $12c3
    lda $0e,x
    clc
    adc #$05dc
    bmi loc_07f7a2
    cmp #$0bb8
    bpl loc_07f79c
    lda $000e,y
    sec
    sbc $0e,x
    bpl loc_07f7a2

loc_07f79c:
    lda $34,x
    bpl loc_07f7a6
    bra loc_07f7aa

loc_07f7a2:
    lda $34,x
    bpl loc_07f7aa

loc_07f7a6:
    eor #$ffff
    inc a

loc_07f7aa:
    asl a
    clc
    adc $0e,x
    sta $0e,x
    plp
.a8
    ply
    rtl
    .incbin "data/03f7b3-040000.bin"
