.rombank $0d

    .incbin "data/068000-06aed4.bin"

sub_0daed4:
.cpu
.a16
.i16
    php
    phy
    phx
    tyx
    rep #$20
    lda $02
    sta $700026
    lda $97
    sta $70002a
    txa
    sta $700016
    lda $ef
    sta $700030
    sep #$20
.a8
    sep #$20
    lda #$01
    ldx #$fcd7
    jsl sub_7f787b
    sep #$20
    rep #$10
    rep #$20
.a16
    lda $700016
    plx
    ply
    plp
    rtl

sub_0daf0c:
    pha
    php
    sep #$20
.a8
    lda $7ed738
    bne loc_0daf20
    lda #$01
    sta $7ed738
    jsl sub_7f77fe

loc_0daf20:
    plp
    pla
    rts

sub_0daf23:
    pha
    php
    sep #$20
    lda $7ed738
    beq loc_0daf37
    jsl sub_7f784b
    lda #$00
    sta $7ed738

loc_0daf37:
    plp
    pla
    rts

sub_0daf3a:
    php
    phb
    phy
    sep #$20
    rep #$10
    lda #$00
    pha
    plb
    lda #$00
    sta $7ed738
    phx
    rep #$20
.a16
    jsl sub_7f1b68
    ldx $12a8
    bne loc_0daf5a
    brl loc_0db1f5

loc_0daf5a:
    jsl sub_7f1bf0
    rep #$20
    txa
    bne loc_0daf66
    brl loc_0db1f5

loc_0daf66:
    stx $1949
    lda $0c,x
    sta $04
    lda $0e,x
    sta $0a
    lda $10,x
    sta $e4
    sep #$20
.a8
    lda $14,x
    sta $a0
    lda $12,x
    sta $9f
    lda $16,x
    sta $a1
    jsr sub_0daf0c
    lda $7e1ccb,x
    bpl loc_0daf90
    and #$7f
    bra loc_0daf94

loc_0daf90:
    lda $c4
    and #$ff

loc_0daf94:
    sta $3e
    stz $3f
    rep #$20
.a16
    lda #$0000
    sta $001959
    sty $5f
    ldx $0016,y
    cpx $5f
    bne loc_0db002
    stz $5f
    lda $000c,y
    eor #$ffff
    inc a
    clc
    adc $0a
    sta $08
    lda #$8000
    sta $7000ac
    lda #$0000
    sta $7000aa
    sta $7000ae
    lda #$0000
    sta $001a8b
    lda $000a,y
    sec
    adc $04
    sec
    sbc $02
    sta $1a91
    clc
    sbc $000a,y
    sec
    sbc $000a,y
    sta $1a8f
    lda $000e,y
    sec
    adc $e4
    sec
    sbc $97
    sta $1a95
    clc
    sbc $000e,y
    sec
    sbc $000e,y
    sta $1a93
    brl loc_0db146

loc_0db002:
    sep #$20
.a8
    lda #$0a
    pha
    plb
    rep #$20
.a16
    lda $02
    sec
    sbc $04
    sta $02
    lda $97
    sec
    sbc $e4
    sta $97
    phx
    lda $02
    sta $700068
    lda $97
    sta $70002e
    lda $a0
    and #$00ff
    beq loc_0db04f
    eor #$ffff
    inc a
    sta $700022
    sep #$20
.a8
    lda #$01
    ldx #$fd62
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $700068
    sta $02
    lda $70002e
    sta $97

loc_0db04f:
    plx
    lda $0000,x
    and #$00ff
    sta $5f
    inx

loc_0db059:
    txa
    clc
    adc #$0012
    sta $3c
    lda $0000,x
    and #$00ff
    beq loc_0db07e
    sta $08
    ldy #$0000
    txa

loc_0db06e:
    cpy $3e
    bne loc_0db073
    tax

loc_0db073:
    clc
    adc #$0012
    iny
    cpy $08
    bne loc_0db06e
    sta $3c

loc_0db07e:
    lda $0005,x
    lsr a
    clc
    adc $0001,x
    sec
    sbc $02
    cmp $0005,x
    bcs loc_0db09e
    lda $0007,x
    lsr a
    clc
    adc $0003,x
    sec
    sbc $97
    cmp $0007,x
    bcc loc_0db0a7

loc_0db09e:
    ldx $3c
    dec $5f
    bne loc_0db059
    brl loc_0db1d2

loc_0db0a7:
    ldy $000e,x
    beq loc_0db0c2
    tya
    sta $001959
    lda $0011,x
    and #$00ff
    sta $ef
    jsl sub_0daed4
    cmp #$0000
    bne loc_0db09e

loc_0db0c2:
    lda $0005,x
    lsr a
    sec
    adc $0001,x
    sec
    sbc $02
    sta $001a91
    clc
    sbc $0005,x
    sta $001a8f
    lda $0007,x
    lsr a
    sec
    adc $0003,x
    sec
    sbc $97
    sta $001a95
    clc
    sbc $0007,x
    sta $001a93
    lda $0009,x
    and #$00ff
    xba
    sta $7000aa
    lda $000a,x
    and #$00ff
    xba
    sta $7000ac
    lda $000b,x
    and #$00ff
    xba
    sta $7000ae
    lda $02
    sta $700026
    lda $97
    sta $70002a
    lda $000c,x
    sta $700028
    lda $0010,x
    and #$00ff
    sta $001a8b
    sep #$20
.a8
    lda #$01
    ldx #$fa31
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $700028
    clc
    adc $0a
    sta $08

loc_0db146:
    sep #$20
.a8
    lda #$00
    pha
    plb
    rep #$20
.a16
    ldx $3a
    ldy $1949
    lda $0004,y
    tay
    lda $08
    sec
    adc $000c,y
    inc a
    cmp $0e,x
    bpl loc_0db165
    brl loc_0db1d2

loc_0db165:
    lda $08
    cmp $195d
    bmi loc_0db16f
    brl loc_0db1d2

loc_0db16f:
    lda $5f
    sta $1961
    lda $08
    sta $195d
    lda $1949
    sta $195f
    lda $7000aa
    sta $1963
    lda $7000ac
    sta $1965
    lda $7000ae
    sta $1967
    lda $7000b0
    sta $1969
    lda $700020
    sta $196b
    lda $700024
    sta $196d
    lda $1a8b
    sta $1a8d
    lda $1a8f
    sta $1a97
    lda $1a91
    sta $1a99
    lda $1a93
    sta $1a9b
    lda $1a95
    sta $1a9d
    lda $1959
    sta $1957
    lda $ef
    sta $195b

loc_0db1d2:
    sep #$20
.a8
    lda #$00
    pha
    plb
    rep #$20
.a16
    ldy $1949
    ldx $00,y
    beq loc_0db1f5
    ldy $3a
    lda $0004,y
    sta $5f
    lda $000c,y
    sta $02
    lda $0010,y
    sta $97
    brl loc_0daf5a

loc_0db1f5:
    plx
    sep #$20
.a8
    lda #$00
    pha
    plb
    rep #$20
.a16
    lda $195d
    cmp #$2000
    bne loc_0db209
    lda #$0000

loc_0db209:
    sta $08
    lda $195f
    sta $7e1ce8,x
    beq loc_0db26a
    jsr sub_0daf0c
    tay
    lda $0014,y
    beq loc_0db26a
    sta $700022
    lda $1963
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    sta $700068
    lda $1967
    cmp #$8000
    ror a
    cmp #$8000
    ror a
    sta $70002e
    phx
    sep #$20
.a8
    lda #$01
    ldx #$fd62
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    lda $700068
    asl a
    asl a
    sta $7000aa
    sta $1963
    lda $70002e
    asl a
    asl a
    sta $7000ae
    sta $1967

loc_0db26a:
    sep #$20
.a8
    lda $1961
    sta $7e1cea,x
    lda $001a8d
    sta $7e1ceb,x
    jsr sub_0daf23
    ply
    plb
    plp
    rtl

sub_0db282:
    php
    phb
    sep #$20
    sta $1dad
    lda $5e
    pha
    jsl sub_7f77fe
    lda #$7e
    pha
    plb
    rep #$20
.a16
    stz $1955
    lda $10,x
    sta $1953
    lda $0e,x
    sta $1951
    lda $0c,x
    sta $194f
    lda $1ce8,x
    sta $194b
    lda $1cea,x
    and #$00ff
    sta $194d
    lda $32,x
    clc
    adc #$0003
    cmp #$0006
    bcs loc_0db2c5
    lda #$0003

loc_0db2c5:
    sec
    sbc #$0003
    clc
    adc $0c,x
    sta $0c,x
    lda $34,x
    clc
    adc #$0003
    cmp #$0006
    bcs loc_0db2dc
    lda #$0003

loc_0db2dc:
    sec
    sbc #$0003
    clc
    adc $0e,x
    sta $0e,x
    lda $36,x
    clc
    adc #$0003
    cmp #$0006
    bcs loc_0db2f3
    lda #$0003

loc_0db2f3:
    sec
    sbc #$0003
    clc
    adc $10,x
    sta $10,x
    lda $0c,x
    clc
    adc $39,x
    sta $0c,x
    lda $0e,x
    clc
    adc $3b,x
    sta $0e,x
    lda $10,x
    clc
    adc $3d,x
    sta $10,x
    lda $1dad
    and #$00ff
    bne loc_0db321
    lda $34,x
    clc
    adc $1dab
    sta $34,x

loc_0db321:
    lda $32,x
    asl a
    asl a
    asl a
    sta $32,x
    lda $34,x
    asl a
    asl a
    asl a
    sta $34,x
    lda $36,x
    asl a
    asl a
    asl a
    sta $36,x
    lda $1cc1,x
    asl a
    asl a
    asl a
    sta $1cc1,x
    lda $1cc3,x
    asl a
    asl a
    asl a
    sta $1cc3,x
    lda $1cc5,x
    asl a
    asl a
    asl a
    sta $1cc5,x

loc_0db351:
    jsl sub_0daf3a
    rep #$20
    lda $1963
    sta $7000aa
    lda $1965
    sta $7000ac
    lda $1967
    sta $7000ae
    lda $1969
    sta $7000b0
    lda $196b
    sta $700020
    lda $196d
    sta $700024
    lda $1ce8,x
    cmp $194b
    bne loc_0db3b4
    lda $1cea,x
    and #$00ff
    cmp $194d
    bne loc_0db3b4
    ldy $1ce8,x
    beq loc_0db3b4
    lda $0034,y
    clc
    adc $0e,x
    sta $0a
    clc
    adc #$0003
    sec
    sbc $08
    bpl loc_0db3ad
    brl loc_0db592

loc_0db3ad:
    lda $0a
    sta $0e,x
    jmp loc_0db424

loc_0db3b4:
    lda $0e,x
    clc
    adc #$0003
    sec
    sbc $08
    bpl loc_0db3c2
    brl loc_0db592

loc_0db3c2:
    lda $0e,x
    sec
    sbc $08
    bpl loc_0db3cc
    brl loc_0db424

loc_0db3cc:
    cmp #$001e
    bcs loc_0db3d4
    brl loc_0db424

loc_0db3d4:
    lda $1955
    bit #$0002
    beq loc_0db3df
    brl loc_0db43f

loc_0db3df:
    ora #$0004
    sta $1955
    lda $1955
    bit #$0001
    beq loc_0db402
    lda $194f
    sta $0c,x
    lda $1953
    sta $10,x
    lda $1955
    ora #$0002
    sta $1955
    bra loc_0db413

loc_0db402:
    jsr sub_0db8b9
    lda $0c,x
    clc
    adc $02
    sta $0c,x
    lda $10,x
    clc
    adc $97
    sta $10,x

loc_0db413:
    ldy $1ce8,x
    beq loc_0db418

loc_0db418:
    lda $1955
    ora #$0001
    sta $1955
    brl loc_0db351

loc_0db424:
    lda $24,x
    and #$0002
    bne loc_0db42f
    jml loc_0db43f

loc_0db42f:
    lda $0e,x
    sec
    sbc $08
    asl a
    sta $02
    asl a
    clc
    adc $02
    sta $7000d6

loc_0db43f:
    sep #$20
.a8
    lda $24,x
    ora #$02
    sta $24,x
    rep #$20
.a16
    lda $08
    pha
    phx
    lda $700020
    and #$00ff
    xba
    eor #$ffff
    inc a
    sta $158e
    lda $700024
    and #$00ff
    xba
    eor #$ffff
    inc a
    sta $1592
    stz $1590
    sep #$20
.a8
    jsl sub_038bbf
    rep #$30
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
    plx
    phx
    lda $1cc1,x
    sta $02
    lda $1cc5,x
    sta $97
    stz $08
    sep #$20
.a8
    jsl sub_038b85
    rep #$30
.a16
    plx
    lda $b7
    cmp #$8000
    ror a
    bpl loc_0db4ce
    adc #$0000

loc_0db4ce:
    cmp #$8000
    ror a
    bpl loc_0db4d7
    adc #$0000

loc_0db4d7:
    cmp #$8000
    ror a
    bpl loc_0db4e0
    adc #$0000

loc_0db4e0:
    sta $39,x
    lda $b9
    cmp #$8000
    ror a
    bpl loc_0db4ed
    adc #$0000

loc_0db4ed:
    cmp #$8000
    ror a
    bpl loc_0db4f6
    adc #$0000

loc_0db4f6:
    cmp #$8000
    ror a
    bpl loc_0db4ff
    adc #$0000

loc_0db4ff:
    clc
    adc $1cc3,x
    sta $3b,x
    lda $bb
    cmp #$8000
    ror a
    bpl loc_0db510
    adc #$0000

loc_0db510:
    cmp #$8000
    ror a
    bpl loc_0db519
    adc #$0000

loc_0db519:
    cmp #$8000
    ror a
    bpl loc_0db522
    adc #$0000

loc_0db522:
    sta $3d,x
    pla
    sta $08
    lda $32,x
    sta $700026
    lda $34,x
    sta $700028
    lda $36,x
    sta $70002a
    lda #$4000
    sta $7000b0
    phx
    sep #$20
.a8
    lda #$01
    ldx #$fae4
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    lda $700026
    sta $32,x
    lda $700028
    sta $34,x
    lda $70002a
    sta $36,x
    lda $08
    sta $0e,x
    lda $32,x
    sta $700026
    lda $36,x
    sta $70002a
    phx
    sep #$20
.a8
    lda #$01
    ldx #$fac6
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    lda $700026
    sta $32,x
    lda $70002a
    sta $36,x
    bra loc_0db60a

loc_0db592:
    sep #$20
.a8
    lda $24,x
    and #$fd
    sta $24,x
    rep #$20
.a16
    lda $1cc1,x
    cmp #$8000
    ror a
    bpl loc_0db5a8
    adc #$0000

loc_0db5a8:
    cmp #$8000
    ror a
    bpl loc_0db5b1
    adc #$0000

loc_0db5b1:
    cmp #$8000
    ror a
    bpl loc_0db5ba
    adc #$0000

loc_0db5ba:
    sta $39,x
    lda $1cc3,x
    sta $3b,x
    lda $1cc5,x
    cmp #$8000
    ror a
    bpl loc_0db5cd
    adc #$0000

loc_0db5cd:
    cmp #$8000
    ror a
    bpl loc_0db5d6
    adc #$0000

loc_0db5d6:
    cmp #$8000
    ror a
    bpl loc_0db5df
    adc #$0000

loc_0db5df:
    sta $3d,x
    lda $32,x
    sta $700026
    lda $36,x
    sta $70002a
    phx
    sep #$20
.a8
    lda #$01
    ldx #$fac0
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    lda $700026
    sta $32,x
    lda $70002a
    sta $36,x

loc_0db60a:
    stz $1cc1,x
    stz $1cc5,x
    stz $1cc3,x
    lda $32,x
    cmp #$8000
    ror a
    bpl loc_0db61e
    adc #$0000

loc_0db61e:
    cmp #$8000
    ror a
    bpl loc_0db627
    adc #$0000

loc_0db627:
    cmp #$8000
    ror a
    bpl loc_0db630
    adc #$0000

loc_0db630:
    sta $32,x
    lda $34,x
    cmp #$8000
    ror a
    bpl loc_0db63d
    adc #$0000

loc_0db63d:
    cmp #$8000
    ror a
    bpl loc_0db646
    adc #$0000

loc_0db646:
    cmp #$8000
    ror a
    bpl loc_0db64f
    adc #$0000

loc_0db64f:
    sta $34,x
    lda $36,x
    cmp #$8000
    ror a
    bpl loc_0db65c
    adc #$0000

loc_0db65c:
    cmp #$8000
    ror a
    bpl loc_0db665
    adc #$0000

loc_0db665:
    cmp #$8000
    ror a
    bpl loc_0db66e
    adc #$0000

loc_0db66e:
    sta $36,x
    lda $194f
    eor #$ffff
    clc
    adc $0c,x
    sta $700026
    lda $1951
    eor #$ffff
    clc
    adc $0e,x
    sta $700028
    lda $1953
    eor #$ffff
    clc
    adc $10,x
    sta $70002a
    phx
    sep #$20
.a8
    lda #$01
    ldx #$fb72
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    plb
    plp
    rtl
    .db $08,$8b,$e2,$20,$a9,$7e,$48,$ab,$da,$c2,$20,$b5,$0c,$85,$02,$b5
    .db $0e,$85,$08,$b5,$10,$85,$97,$86,$3a,$ae,$a8,$12,$d0,$03,$82,$74
    .db $00,$e4,$3a,$d0,$03,$82,$68,$00,$a5,$02,$38,$f5,$0c,$8f,$26,$00
    .db $70,$a5,$08,$38,$f5,$0e,$8f,$28,$00,$70,$a5,$97,$38,$f5,$10,$8f
    .db $2a,$00,$70,$da,$e2,$20,$a9,$01,$a2,$72,$fb,$22,$7b,$78,$7f,$c2
    .db $20,$c2,$10,$fa,$af,$2e,$00,$70,$c9,$f4,$01,$b0,$33,$a9,$0a,$00
    .db $8f,$68,$00,$70,$da,$e2,$20,$a9,$01,$a2,$5a,$fc,$22,$7b,$78,$7f
    .db $c2,$20,$c2,$10,$fa,$af,$26,$00,$70,$18,$75,$32,$95,$32,$af,$28
    .db $00,$70,$18,$75,$34,$95,$34,$af,$2a,$00,$70,$18,$75,$36,$95,$36
    .db $b5,$00,$aa,$d0,$8c,$fa,$ab,$28,$6b

sub_0db751:
    sep #$20
    stz $02
    stz $08
    lda #$7f
    sta $97

sub_0db75b:
    php
    sep #$20
    rep #$10
    phb
    lda #$7e
    pha
    plb
    phy
    phx
    sty $7f
    ldy $14d6
    rep #$20
.a16
    lda #$0000
    sta $000c,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $000e,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $0010,y
    sep #$20
.a8
    lda $02
    sta $02
    sta $04
    bit #$80
    beq loc_0db79a
    lda #$ff
    sta $05
    bra loc_0db79c

loc_0db79a:
    stz $05

loc_0db79c:
    lda $08
    sta $08
    sta $0a
    bit #$80
    beq loc_0db7ac
    lda #$ff
    sta $0b
    bra loc_0db7ae

loc_0db7ac:
    stz $0b

loc_0db7ae:
    lda $97
    sta $97
    sta $e4
    bit #$80
    beq loc_0db7be
    lda #$ff
    sta $e5
    bra loc_0db7c0

loc_0db7be:
    stz $e5

loc_0db7c0:
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
    lda $5e
    pha
    jsl sub_7f77fe
    rep #$20
.a16
    lda $000c,y
    xba
    and #$ff00
    sta $700068
    sep #$20
.a8
    rep #$20
.a16
    lda $000e,y
    xba
    and #$ff00
    sta $70002c
    sep #$20
.a8
    rep #$20
.a16
    lda $0010,y
    xba
    and #$ff00
    sta $70002e
    sep #$20
.a8
    ldy $7f
    rep #$20
.a16
    lda $000c,y
    sec
    sbc $0c,x
    sta $700026
    lda $000e,y
    sec
    sbc $0e,x
    sta $700028
    lda $0010,y
    sec
    sbc $10,x
    sta $70002a
    sep #$20
.a8
    sep #$20
    lda #$01
    ldx #$fc86
    jsl sub_7f787b
    sep #$20
    rep #$10
    rep #$20
.a16
    lda $7000aa
    xba
    sep #$20
.a8
    sta $02
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    lda $02
    plx
    ply
    plb
    plp
    rtl

loc_0db88d:
    php
    sep #$20
    rep #$10
    phb
    lda #$7e
    pha
    plb
    stz $02
    lda #$7f
    sta $08
    stz $97
    jsl sub_0db75b
    sep #$20
    lda #$01
    ldx #$fcac
    jsl sub_7f787b
    sep #$20
    rep #$10
    plb
    plp
    rtl
    .db $20,$b9,$b8,$6b

sub_0db8b9:
.a16
    php
    phy
    rep #$20
    lda $1957
    bne loc_0db8c5
    brl loc_0db983

loc_0db8c5:
    sta $02
    sep #$20
.a8
    lda $5e
    pha
    jsl sub_7f77fe
    rep #$20
.a16
    lda $195b
    sta $700030
    lda $02
    sta $700016
    ldy $195f
    lda $000c,x
    sec
    sbc $000c,y
    sta $700068
    lda $0010,x
    sec
    sbc $0010,y
    sta $70002e
    phx
    lda $0014,y
    and #$00ff
    pha
    beq loc_0db919
    eor #$ffff
    inc a
    sta $700022
    sep #$20
.a8
    lda #$01
    ldx #$fd62
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10

loc_0db919:
    lda $700068
    sta $700026
    lda $70002e
    sta $70002a
    sep #$20
.a8
    lda #$01
    ldx #$fd8b
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $700026
    eor #$ffff
    inc a
    sta $700068
    lda $70002a
    eor #$ffff
    inc a
    sta $70002e
    pla
    beq loc_0db966
    sta $700022
    sep #$20
.a8
    lda #$01
    ldx #$fd62
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10

loc_0db966:
    lda $700068
    sta $02
    lda $70002e
    sta $97
    plx
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    ply
    plp
    rts

loc_0db983:
.a16
    lda #$ffff
    sta $5f
    stz $02
    stz $97
    lda $1a97
    bpl loc_0db995
    eor #$ffff
    inc a

loc_0db995:
    cmp $5f
    bcs loc_0db9a2
    sta $5f
    lda $1a97
    sta $02
    stz $97

loc_0db9a2:
    lda $1a9b
    bpl loc_0db9ab
    eor #$ffff
    inc a

loc_0db9ab:
    cmp $5f
    bcs loc_0db9b8
    sta $5f
    lda $1a9b
    sta $97
    stz $02

loc_0db9b8:
    lda $1a99
    bpl loc_0db9c1
    eor #$ffff
    inc a

loc_0db9c1:
    cmp $5f
    bcs loc_0db9ce
    sta $5f
    lda $1a99
    sta $02
    stz $97

loc_0db9ce:
    lda $1a9d
    bpl loc_0db9d7
    eor #$ffff
    inc a

loc_0db9d7:
    cmp $5f
    bcs loc_0db9e4
    sta $5f
    lda $1a9d
    sta $97
    stz $02

loc_0db9e4:
    ply
    plp
    rts

loc_0db9e7:
    php
    sep #$20
.a8
    rep #$10
    lda $5e
    pha
    jsl sub_7f77fe
    phb
    lda #$70
    pha
    plb
    rep #$20
.a16
    lda #$fe0c
    sta $02
    stz $08
    sep #$20
.a8
    ldx #$0000
    ldy #$0000

loc_0dba09:
    sep #$20
    lda $0dba76,x
    cmp #$20
    beq loc_0dba3f
    lda #$02
    sta $13b8,y
    lda #$7c
    sta $13b9,y
    rep #$20
.a16
    lda $7ed7ec
    clc
    adc $02
    sta $13ba,y
    lda $08
    sta $13bc,y
    lda $7ed7f0
    clc
    adc #$07d0
    sta $13be,y
    tya
    clc
    adc #$000e
    tay

loc_0dba3f:
    rep #$20
    lda $02
    clc
    adc #$0020
    sta $02
    inx
    txa
    and #$003f
    bne loc_0dba09
    lda $02
    sec
    sbc #$0800
    sta $02
    lda $08
    clc
    adc #$0020
    sta $08
    txa
    cmp #$0140
    bne loc_0dba09
    sep #$20
.a8
    plb
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    plp
    rtl
    .db $30,$30,$20,$20,$30,$20,$20,$20,$30,$20,$30,$20,$20,$20,$20,$20
    .db $30,$30,$20,$20,$30,$20,$20,$30,$20,$20,$20,$20,$20,$30,$30,$20
    .db $30,$20,$20,$30,$20,$30,$30,$30,$20,$30,$20,$20,$30,$20,$30,$30
    .db $30,$20,$20,$30,$30,$30,$20,$30,$30,$30,$20,$20,$30,$30,$30,$20
    .db $30,$20,$30,$20,$20,$30,$20,$30,$20,$20,$30,$20,$20,$20,$20,$30
    .db $20,$20,$30,$20,$30,$30,$20,$30,$20,$20,$20,$20,$30,$20,$20,$20
    .db $30,$20,$20,$30,$20,$20,$30,$20,$20,$30,$20,$20,$30,$20,$30,$20
    .db $20,$30,$20,$30,$20,$20,$20,$30,$20,$20,$30,$20,$20,$30,$20,$20
    .db $30,$20,$20,$30,$20,$20,$30,$20,$20,$20,$30,$20,$20,$20,$20,$30
    .db $30,$30,$30,$20,$30,$20,$30,$30,$20,$20,$20,$20,$30,$20,$20,$20
    .db $30,$20,$20,$30,$20,$20,$30,$20,$20,$30,$30,$30,$30,$20,$30,$30
    .db $30,$20,$20,$30,$30,$20,$20,$30,$30,$30,$20,$20,$20,$30,$20,$20
    .db $30,$20,$30,$20,$20,$20,$30,$20,$20,$20,$30,$20,$20,$20,$20,$30
    .db $20,$20,$30,$20,$30,$20,$20,$30,$20,$20,$20,$20,$30,$20,$20,$20
    .db $30,$20,$20,$30,$20,$20,$30,$20,$20,$30,$20,$20,$30,$20,$30,$20
    .db $20,$30,$20,$30,$20,$20,$20,$30,$20,$30,$20,$20,$20,$30,$20,$20
    .db $30,$30,$20,$20,$20,$20,$30,$20,$20,$20,$30,$30,$30,$30,$20,$30
    .db $20,$20,$30,$20,$30,$20,$20,$30,$20,$20,$20,$20,$20,$30,$30,$20
    .db $20,$30,$30,$20,$20,$20,$30,$20,$20,$30,$20,$20,$30,$20,$30,$30
    .db $30,$20,$20,$30,$30,$30,$20,$30,$20,$20,$30,$20,$20,$30,$20,$20

sub_0dbbb6:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda #$ff
    sta $1ba5
    lda $1e17
    cmp #$01
    bne loc_0dbbce
    jml loc_0dbc4c

loc_0dbbce:
    lda $1e17
    cmp #$ff
    bne loc_0dbbd9
    jml loc_0dbc4c

loc_0dbbd9:
    lda $1b4d
    and #$07
    cmp #$00
    bne loc_0dbbe6
    jml loc_0dbc75

loc_0dbbe6:
    lda $1d76
    cmp #$fe
    bne loc_0dbbf1
    jml loc_0dbc75

loc_0dbbf1:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    beq loc_0dbc02
    jml loc_0dbc27

loc_0dbc02:
    lda #$0d
    cmp $6c15,y
    beq loc_0dbc0c
    sta $6c15,y

loc_0dbc0c:
    rep #$20
.a16
    lda #$c643
    cmp $6c13,y
    beq loc_0dbc22
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_0dbc22:
    sep #$20
.a8
    jmp loc_0dbccc

loc_0dbc27:
    lda #$0d
    cmp $6c15,y
    beq loc_0dbc31
    sta $6c15,y

loc_0dbc31:
    rep #$20
.a16
    lda #$c61e
    cmp $6c13,y
    beq loc_0dbc47
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_0dbc47:
    sep #$20
.a8
    jmp loc_0dbccc

loc_0dbc4c:
    lda #$18
    sta $1d76
    lda #$0d
    cmp $6c15,y
    beq loc_0dbc5b
    sta $6c15,y

loc_0dbc5b:
    rep #$20
.a16
    lda #$c21d
    cmp $6c13,y
    beq loc_0dbc71
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_0dbc71:
    sep #$20
.a8
    bra loc_0dbccc

loc_0dbc75:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    beq loc_0dbc86
    jml loc_0dbcaa

loc_0dbc86:
    lda #$0d
    cmp $6c15,y
    beq loc_0dbc90
    sta $6c15,y

loc_0dbc90:
    rep #$20
.a16
    lda #$c5b1
    cmp $6c13,y
    beq loc_0dbca6
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_0dbca6:
    sep #$20
.a8
    bra loc_0dbccc

loc_0dbcaa:
    lda #$0d
    cmp $6c15,y
    beq loc_0dbcb4
    sta $6c15,y

loc_0dbcb4:
    rep #$20
.a16
    lda #$c5f9
    cmp $6c13,y
    beq loc_0dbcca
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_0dbcca:
    sep #$20

loc_0dbccc:
.a8
    plp
    ply
    rtl

sub_0dbccf:
    phb
    phx
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
    beq loc_0dbce6
    jmp loc_0dbdd3

loc_0dbce6:
    sep #$20
    rep #$10
    ldy $2b,x
    sty $1da3
    rep #$20
.a16
    lda $6c16,y
    sta $1da5
    lda $6c13,y
    sta $1d9e
    sep #$20
.a8
    bne loc_0dbd05
    jml loc_0dbdd3

loc_0dbd05:
    lda $6c15,y
    sta $1da0

loc_0dbd0b:
    ldy $1da3
    lda $1da0
    sta $04
    rep #$20
.a16
    lda $1d9e
    sta $02
    lda [$02]
    cmp #$3fff
    bne loc_0dbd25
    jml loc_0dbdc1

loc_0dbd25:
    cmp #$7fff
    bne loc_0dbd2e
    jml loc_0dbdc1

loc_0dbd2e:
    inc $02
    and #$00ff
    cmp #$0004
    beq loc_0dbd4f
    cmp #$0003
    beq loc_0dbd88
    cmp #$0001
    beq loc_0dbd68
    cmp #$0002
    beq loc_0dbd78
    cmp #$0000
    beq loc_0dbd58
    jmp loc_0dbdc1

loc_0dbd4f:
    lda #$0005
    sta $1da1
    jmp loc_0dbda0

loc_0dbd58:
    lda #$0005
    sta $1da1
    lda $1da5
    cmp [$02]
    bne loc_0dbdb4
    jmp loc_0dbda0

loc_0dbd68:
    lda #$0005
    sta $1da1
    lda $1da5
    cmp [$02]
    bcc loc_0dbdb4
    jmp loc_0dbda0

loc_0dbd78:
    lda #$0005
    sta $1da1
    lda $1da5
    cmp [$02]
    bcs loc_0dbdb4
    jmp loc_0dbda0

loc_0dbd88:
    lda #$0007
    sta $1da1
    lda $1da5
    cmp [$02]
    bcc loc_0dbdb4
    inc $02
    inc $02
    cmp [$02]
    bcs loc_0dbdb4
    jmp loc_0dbda0

loc_0dbda0:
    inc $02
    inc $02
    lda [$02]
    sta $3a
    lda #$bdb2
    dec a
    pha
    sep #$20
.a8
    jmp ($003a)
    rep #$20

loc_0dbdb4:
.a16
    lda $1d9e
    clc
    adc $1da1
    sta $1d9e
    jmp loc_0dbd0b

loc_0dbdc1:
    rep #$20
    lda $6c16,y
    inc a
    beq loc_0dbdd3
    sta $6c16,y
    lda $6c1a,y
    inc a
    sta $6c1a,y

loc_0dbdd3:
.a8
    sep #$20
    plp
    ply
    plx
    plb
    rtl
    .incbin "data/06bdda-06c663.bin"

loc_0dc663:
    php
    rep #$20
.a16
    lda #$0000
    sta $6c13,y
    sta $6c16,y
    sta $6c18,y
    sep #$20
.a8
    sta $6c15,y
    plp
    rts

loc_0dc679:
    php
    lda $1e59
    bne loc_0dc686
    lda $1936
    bit #$40
    beq loc_0dc691

loc_0dc686:
    rep #$20
.a16
    lda #$000c
    sta $6c16,y
    sta $1da5

loc_0dc691:
.a8
    sep #$20
    plp
    rts

loc_0dc695:
    php
    lda #$01
    sta $f532
    plp
    rts

loc_0dc69d:
    php
    lda #$01
    sta $1e59
    plp
    rts
    .db $08,$a9,$0d,$d9,$15,$6c,$f0,$03,$99,$15,$6c,$c2,$20,$a9,$b1,$c5
    .db $d9,$13,$6c,$f0,$0c,$99,$13,$6c,$a9,$00,$00,$99,$16,$6c,$99,$18
    .db $6c,$e2,$20,$28,$60,$08,$a9,$04,$8d,$bb,$18,$a9,$02,$85,$f3,$a9
    .db $06,$85,$f4,$28,$60,$08,$a9,$fe,$85,$f3,$28,$60

loc_0dc6e1:
    php
    lda $6b65,y
    ora #$40
    sta $6b65,y
    plp
    rts
    .db $08,$ad,$9d,$1d,$09,$80,$8d,$9d,$1d,$28,$60,$08,$c2,$20,$a9,$90
    .db $01,$8d,$44,$1e,$e2,$20,$28,$60,$08,$c2,$20,$a9,$90,$02,$8d,$44
    .db $1e,$e2,$20,$28,$60,$08,$c2,$20,$a9,$90,$01,$8d,$44,$1e,$e2,$20
    .db $28,$60,$08,$c2,$20,$ad,$80,$1d,$80,$26,$08,$c2,$20,$a9,$8d,$00
    .db $80,$1e,$08,$c2,$20,$a9,$69,$00,$80,$16,$08,$ad,$9d,$1d,$29,$7f
    .db $8d,$9d,$1d,$c2,$20,$a9,$57,$00,$80,$06

loc_0dc746:
    php
    rep #$20
.a16
    lda #$001b
    sta $169b
    lda $1d27
    ora #$0004
    sta $1d27
    sep #$20
.a8
    plp
    rts

loc_0dc75c:
    php
    lda #$07
    sta $6a9f,y
    rep #$20
.a16
    lda #$9f17
    sta $6a9d,y
    sep #$20
.a8
    phy
    ldy #$033f
    lda $0021,y
    ora #$08
    sta $0021,y
    lda $0021,y
    ora #$10
    sta $0021,y
    ply
    plp
    rts
    .db $08,$a9,$07,$99,$9f,$6a,$c2,$20,$a9,$34,$9e,$99,$9d,$6a,$e2,$20
    .db $28,$60

loc_0dc795:
    php
    lda #$07
    sta $6a9f,y
    rep #$20
.a16
    lda #$9f44
    sta $6a9d,y
    sep #$20
.a8
    phy
    ldy #$033f
    lda $0021,y
    ora #$08
    sta $0021,y
    lda $0021,y
    ora #$10
    sta $0021,y
    ply
    plp
    rts
    .db $08,$a9,$07,$99,$9f,$6a,$c2,$20,$a9,$f7,$9e,$99,$9d,$6a,$e2,$20
    .db $5a,$a0,$3f,$03,$b9,$21,$00,$09,$08,$99,$21,$00,$b9,$21,$00,$09
    .db $10,$99,$21,$00,$7a,$28,$60

loc_0dc7e3:
    php
    lda #$07
    sta $6a9f,y
    rep #$20
.a16
    lda #$9eca
    sta $6a9d,y
    sep #$20
.a8
    phy
    ldy #$033f
    lda $0021,y
    ora #$08
    sta $0021,y
    lda $0021,y
    ora #$10
    sta $0021,y
    ply
    plp
    rts
    .db $08,$c2,$20,$a9,$00,$00,$99,$9d,$6a,$e2,$20,$99,$9f,$6a,$5a,$a0
    .db $3f,$03,$b9,$21,$00,$09,$08,$99,$21,$00,$b9,$21,$00,$09,$10,$99
    .db $21,$00,$7a,$28,$60

loc_0dc82f:
    php
    inc $1d72
    rep #$20
.a16
    lda #$0000
    sta $6c1a,y
    sep #$20
.a8
    plp
    rts

loc_0dc83f:
    php
    stz $1d72
    plp
    rts

loc_0dc845:
    php
    lda #$01
    sta $1e66
    plp
    rts
    .db $08,$b4,$2b,$c2,$20,$b5,$0e,$c9,$9c,$ff,$30,$19,$a9,$00,$08,$19
    .db $8a,$6a,$99,$8a,$6a,$a5,$c4,$29,$0f,$00,$d0,$09,$a9,$00,$40,$19
    .db $88,$6a,$99,$88,$6a,$e2,$20,$28,$60

loc_0dc876:
    php
    lda $6b77,y
    and #$fe
    sta $6b77,y
    plp
    rts

loc_0dc881:
    php
    lda $6b77,y
    ora #$01
    sta $6b77,y
    plp
    rts

loc_0dc88c:
    php
    lda $1de1
    and #$7f
    sta $1de1
    plp
    rts
    .db $08,$b9,$a1,$6a,$29,$f0,$09,$01,$99,$a1,$6a,$28,$60,$08,$b9,$a1
    .db $6a,$29,$f0,$09,$02,$99,$a1,$6a,$28,$60,$08,$b9,$a1,$6a,$29,$f0
    .db $09,$04,$99,$a1,$6a,$28,$60,$08,$a9,$3f,$99,$e3,$6b,$28,$60

loc_0dc8c6:
    php
    lda #$3f
    sta $6be2,y
    plp
    rts
    .db $08,$28,$60,$08,$b9,$e2,$6b,$09,$3f,$99,$e2,$6b,$28,$60

loc_0dc8dc:
    php
    lda $6bec,y
    and #$e7
    sta $6bec,y
    plp
    rts
    .db $08,$b9,$ec,$6b,$09,$10,$99,$ec,$6b,$28,$60

loc_0dc8f2:
    php
    ldy $2b,x
    lda $23,x
    ora #$02
    sta $23,x
    rep #$20
.a16
    lda #$bc9c
    sta $04,x
    sep #$20
.a8
    lda $6aa0,y
    and #$f0
    cmp #$10
    bne loc_0dc911
    jml loc_0dc929

loc_0dc911:
    phx
    ldx $6af1,y
    beq loc_0dc91d
    lda $23,x
    ora #$02
    sta $23,x

loc_0dc91d:
    ldx $6aef,y
    beq loc_0dc928
    lda $23,x
    ora #$02
    sta $23,x

loc_0dc928:
    plx

loc_0dc929:
    plp
    rts

loc_0dc92b:
    php
    phx
    jsl sub_0690f8
    rep #$20
.a16
    lda $069692,x
    plx
    sta $0004,x
    sep #$20
.a8
    plp
    rts

loc_0dc93f:
    php
    jsl sub_07af5b
    plp
    rts

loc_0dc946:
    php
    rep #$20
.a16
    lda $6b7b,y
    sta $02
    sep #$20
.a8
    jsl sub_069586
    plp
    rts
    .db $08,$da,$5a,$08,$22,$81,$ac,$03,$a9,$00,$8d,$10,$19,$22,$5f,$da
    .db $0d,$28,$7a,$fa,$28,$60,$08,$28,$60,$08,$a9,$05,$8d,$78,$1b,$28
    .db $60

loc_0dc977:
    php
    plp
    rts

loc_0dc97a:
    php
    lda $1aa6
    bit #$02
    bne loc_0dc986
    jml loc_0dc98b

loc_0dc986:
    lda #$02
    sta $1b78

loc_0dc98b:
    plp
    rts
    .db $08,$ad,$f2,$d7,$f0,$16,$28,$60,$08,$ad,$f2,$d7,$c9,$01,$f0,$0c
    .db $28,$60,$08,$ad,$f2,$d7,$c9,$02,$f0,$02,$28,$60,$c2,$20,$a9,$20
    .db $00,$0c,$96,$1b,$e2,$20,$c2,$20,$a9,$f7,$00,$22,$09,$6e,$7f,$e2
    .db $20,$28,$60

loc_0dc9c0:
    php
    rep #$20
.a16
    lda #$0010
    tsb $1b84
    sep #$20
.a8
    rep #$20
.a16
    lda #$0004
    trb $1b96
    sep #$20
.a8
    plp
    rts
    .db $08,$c2,$20,$a9,$00,$01,$1c,$84,$1b,$e2,$20,$80,$01

loc_0dc9e4:
    php
    rep #$20
.a16
    lda #$0010
    trb $1b84
    sep #$20
.a8
    rep #$20
.a16
    lda #$0004
    tsb $1b96
    sep #$20
.a8
    plp
    rts
    .db $08,$c2,$20,$a9,$00,$01,$1c,$84,$1b,$e2,$20,$28,$60

loc_0dca08:
    php
    lda #$06
    sta $1b78
    plp
    rts

loc_0dca10:
    php
    lda #$01
    sta $1e86
    plp
    rts

loc_0dca18:
    php
    rep #$20
.a16
    lda #$0010
    tsb $1b96
    sep #$20
.a8
    plp
    rts

loc_0dca25:
    php
    lda #$04
    sta $1b78
    plp
    rts
    .db $08,$a9,$01,$8d,$8a,$1e,$28,$60,$08,$a9,$00,$8d,$68,$1e,$28,$60
    .db $08,$a9,$0b,$8d,$68,$1e,$28,$60,$08,$c2,$20,$ad,$b5,$1b,$c9,$05
    .db $00,$e2,$20,$d0,$05,$a9,$01,$8d,$68,$1e,$28,$60,$08,$c2,$20,$a9
    .db $40,$00,$1c,$96,$1b,$a9,$01,$00,$1c,$88,$1b,$a9,$08,$00,$0c,$9c
    .db $1b,$a9,$ff,$ff,$8d,$2e,$e8,$e2,$20,$ad,$2f,$1e,$09,$80,$8d,$2f
    .db $1e,$28,$60

loc_0dca80:
    php
    rep #$20
.a16
    lda #$0040
    trb $1b96
    lda #$0008
    tsb $1b9c
    sep #$20
.a8
    lda $1e2f
    ora #$80
    sta $1e2f
    plp
    rts
    .db $08,$c2,$20,$a9,$01,$00,$0c,$88,$1b,$e2,$20,$28,$60

loc_0dcaa8:
    php
    rep #$20
.a16
    lda #$0040
    tsb $1b96
    sep #$20
.a8
    lda $1e2f
    and #$7f
    sta $1e2f
    plp
    rts

loc_0dcabd:
    php
    lda $1e2f
    ora #$80
    sta $1e2f
    plp
    rts

loc_0dcac8:
    php
    lda $1e2f
    and #$7f
    sta $1e2f
    plp
    rts

loc_0dcad3:
    php
    lda $1d74
    ora #$80
    sta $1d74
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    lda #$00
    sta $7001bc
    pla
    sta $5e
    sta $00303a
    plp
    rts
    .db $08,$ad,$74,$1d,$29,$7f,$8d,$74,$1d,$28,$60,$08,$a5,$5e,$48,$a5
    .db $5e,$29,$f7,$85,$5e,$8f,$3a,$30,$00,$c2,$20,$ad,$82,$1d,$8f,$5c
    .db $28,$70,$ad,$86,$1d,$8f,$bc,$01,$70,$e2,$20,$ad,$84,$1d,$8f,$5e
    .db $28,$70,$68,$85,$5e,$8f,$3a,$30,$00,$28,$60,$08,$a0,$56,$a4,$8c
    .db $d6,$1c,$a9,$1d,$8d,$d8,$1c,$ad,$70,$1b,$8d,$72,$1b,$a9,$03,$8d
    .db $70,$1b,$28,$60,$08,$a0,$52,$82,$8c,$d6,$1c,$a9,$1f,$8d,$d8,$1c
    .db $ad,$70,$1b,$8d,$72,$1b,$a9,$03,$8d,$70,$1b,$28,$60,$08,$a0,$5f
    .db $e8,$8c,$d6,$1c,$a9,$1c,$8d,$d8,$1c,$ad,$70,$1b,$8d,$72,$1b,$a9
    .db $03,$8d,$70,$1b,$28,$60,$08,$a0,$50,$f9,$8c,$d6,$1c,$a9,$1c,$8d
    .db $d8,$1c,$ad,$70,$1b,$8d,$72,$1b,$a9,$03,$8d,$70,$1b,$28,$60,$08
    .db $a9,$03,$22,$f8,$6d,$7f,$28,$60

loc_0dcba0:
    php
    lda #$04
    jsl sub_7f6df8
    plp
    rts

loc_0dcba9:
    php
    lda #$02
    jsl sub_7f6df8
    plp
    rts

loc_0dcbb2:
    php
    lda #$03
    jsl sub_7f6df8
    plp
    rts

loc_0dcbbb:
    php
    lda #$05
    jsl sub_7f6df8
    plp
    rts

loc_0dcbc4:
    php
    lda #$02
    jsl sub_7f6df8
    plp
    rts

loc_0dcbcd:
    php
    lda $1aa6
    bit #$02
    bne loc_0dcbd9
    jml loc_0dcbdf

loc_0dcbd9:
    lda #$04
    jsl sub_7f6df8

loc_0dcbdf:
    plp
    rts

loc_0dcbe1:
    php
    lda #$03
    jsl sub_7f6df8
    plp
    rts

loc_0dcbea:
    php
    lda #$0e
    jsl sub_7f6df8
    plp
    rts

loc_0dcbf3:
    php
    lda #$0a
    jsl sub_7f6df8
    plp
    rts

loc_0dcbfc:
    php
    lda $1be0
    and #$ff
    cmp #$01
    bpl loc_0dcc0c
    lda #$0a
    jsl sub_7f6df8

loc_0dcc0c:
    plp
    rts

loc_0dcc0e:
    php
    lda #$02
    jsl sub_7f6df8
    plp
    rts

loc_0dcc17:
    php
    lda #$0a
    jsl sub_7f6df8
    plp
    rts

loc_0dcc20:
    php
    lda #$06
    jsl sub_7f6df8
    plp
    rts

loc_0dcc29:
    php
    lda #$02
    jsl sub_7f6df8
    plp
    rts

loc_0dcc32:
    php
    lda #$01
    jsl sub_7f6df8
    plp
    rts

loc_0dcc3b:
    php
    rep #$20
.a16
    lda #$00b1
    jsl QueueSound
    sep #$20
.a8
    plp
    rts

loc_0dcc49:
    php
    rep #$20
.a16
    lda #$00cd
    jsl QueueSound
    sep #$20
.a8
    plp
    rts

loc_0dcc57:
    php
    rep #$20
.a16
    lda #$00b8
    jsl QueueSound
    sep #$20
.a8
    plp
    rts

loc_0dcc65:
    php
    rep #$20
.a16
    lda #$005b
    jsl QueueSound
    sep #$20
.a8
    plp
    rts

loc_0dcc73:
    php
    rep #$20
.a16
    lda #$005a
    cpx $12c3
    beq loc_0dcc81
    ora #$8000

loc_0dcc81:
    jsl QueueSound
    sep #$20
.a8
    plp
    rts

loc_0dcc89:
    php
    rep #$20
.a16
    lda #$002a
    cpx $12c3
    beq loc_0dcc97
    ora #$8000

loc_0dcc97:
    jsl QueueSound
    sep #$20
.a8
    plp
    rts

loc_0dcc9f:
    php
    rep #$20
.a16
    lda #$002b
    cpx $12c3
    beq loc_0dccad
    ora #$8000

loc_0dccad:
    jsl QueueSound
    sep #$20
.a8
    plp
    rts

loc_0dccb5:
    php
    lda #$18
    sta $1ce5
    plp
    rts

loc_0dccbd:
    php
    lda #$04
    sta $1ce5
    plp
    rts

loc_0dccc5:
    php
    lda #$06
    jsl sub_7f6df8
    plp
    rts

loc_0dccce:
    php
    rep #$20
.a16
    lda #$005a
    jsl QueueSound
    sep #$20
.a8
    plp
    rts

loc_0dccdc:
    php
    rep #$20
.a16
    lda #$00fa
    sta $1ce1
    jsl QueueSound
    sep #$20
.a8
    plp
    rts

loc_0dcced:
    php
    rep #$20
.a16
    lda #$00f9
    sta $1ce1
    jsl QueueSound
    sep #$20
.a8
    lda $1ce1
    sta $1ce3
    plp
    rts

loc_0dcd04:
    php
    lda $1b4d
    and #$f8
    ora #$00
    sta $1b4d
    plp
    rts
    .db $08,$ad,$75,$1d,$8d,$73,$1d,$80,$09,$08,$ad,$76,$1d,$8d,$73,$1d
    .db $80,$00,$a9,$00,$8d,$75,$1d,$a9,$01,$8d,$72,$1d,$c2,$20,$a9,$f1
    .db $83,$95,$19,$e2,$20,$a9,$06,$95,$1b,$c2,$20,$a9,$9c,$bc,$95,$04
    .db $e2,$20,$28,$60,$08,$ad,$4d,$1b,$29,$07,$c9,$00,$f0,$15,$ad,$4d
    .db $1b,$29,$07,$c9,$02,$d0,$18,$b9,$a1,$6a,$29,$f0,$09,$04,$99,$a1
    .db $6a,$80,$16,$b9,$a1,$6a,$29,$f0,$09,$02,$99,$a1,$6a,$80,$0a,$b9
    .db $a1,$6a,$29,$f0,$09,$01,$99,$a1,$6a,$28,$60,$08,$ad,$74,$1d,$29
    .db $08,$f0,$04,$5c,$8b,$cd,$0d,$28,$60,$08,$ad,$75,$1d,$8d,$73,$1d
    .db $a9,$01,$8d,$72,$1d,$c2,$20,$a9,$f1,$83,$95,$19,$e2,$20,$a9,$06
    .db $95,$1b,$4c,$64,$c6,$28,$60,$08,$a9,$ff,$8d,$73,$1d,$a9,$01,$8d
    .db $72,$1d,$c2,$20,$a9,$f1,$83,$95,$19,$e2,$20,$a9,$06,$95,$1b,$c2
    .db $20,$ad,$7b,$1d,$8d,$57,$16,$e2,$20,$ad,$7a,$1d,$8d,$2e,$19,$c2
    .db $20,$a9,$00,$00,$8d,$7b,$1d,$e2,$20,$a9,$00,$8d,$7a,$1d,$28,$60
    .db $08,$a9,$0f,$8d,$73,$1d,$22,$d2,$a8,$06,$a9,$01,$8d,$72,$1d,$c2
    .db $20,$a9,$62,$83,$95,$19,$e2,$20,$a9,$06,$95,$1b,$c2,$20,$a9,$9c
    .db $bc,$95,$04,$e2,$20,$28,$60

loc_0dce08:
    php
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_0dce1c
    jml loc_0dce54

loc_0dce1c:
    rep #$20
.a16
    lda #$dc42
    sta $002b,y
    sep #$20
.a8
    jsl sub_7f2baa
    jsl sub_7f2bd2
    lda $18,x
    sta $0018,y
    rep #$20
.a16
    lda #$7e1e
    sta $0019,y
    sep #$20
.a8
    lda #$7f
    sta $001b,y
    lda #$01
    sta $002d,y
    lda #$01
    sta $002e,y
    lda $0021,y
    ora #$01
    sta $0021,y

loc_0dce54:
    plp
    rts
    .db $08,$c2,$20,$a9,$5a,$00,$85,$97,$e2,$20,$20,$71,$ce,$c2,$20,$a9
    .db $1e,$00,$85,$97,$e2,$20,$20,$71,$ce,$28,$60,$c2,$20,$a9,$24,$e8
    .db $85,$5f,$e2,$20,$22,$17,$2a,$7f,$b0,$04,$5c,$29,$cf,$0d,$c2,$20
    .db $a9,$65,$be,$99,$2b,$00,$e2,$20,$c2,$20,$a9,$1e,$7e,$99,$19,$00
    .db $e2,$20,$a9,$7f,$99,$1b,$00,$a9,$00,$85,$02,$85,$04,$89,$80,$f0
    .db $06,$a9,$ff,$85,$05,$80,$02,$64,$05,$a9,$00,$85,$08,$85,$0a,$89
    .db $80,$f0,$06,$a9,$ff,$85,$0b,$80,$02,$64,$0b,$a5,$97,$85,$97,$85
    .db $e4,$89,$80,$f0,$06,$a9,$ff,$85,$e5,$80,$02,$64,$e5,$b5,$14,$22
    .db $a9,$38,$7f,$c2,$20,$a5,$04,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$85,$04
    .db $a5,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$85,$0a,$a5,$e4,$0a,$0a,$0a
    .db $0a,$0a,$0a,$0a,$85,$e4,$a5,$04,$18,$7d,$0c,$00,$99,$0c,$00,$a5
    .db $e4,$18,$7d,$10,$00,$99,$10,$00,$a5,$0a,$18,$7d,$0e,$00,$99,$0e
    .db $00,$e2,$20,$a9,$01,$99,$2e,$00,$99,$2d,$00,$b9,$21,$00,$09,$01
    .db $99,$21,$00,$60

loc_0dcf2a:
    php
    jsl sub_07ebb8
    jsl sub_07ef8d
    plp
    rts

loc_0dcf35:
    php
    jsl sub_07efb0
    plp
    rts
    .db $08,$22,$78,$eb,$07,$28,$60,$08,$22,$52,$ed,$07,$28,$60,$08,$22
    .db $97,$ed,$07,$28,$60

loc_0dcf51:
    php
    jsl sub_07edaf
    plp
    rts

loc_0dcf58:
    php
    jsl sub_07ede9
    plp
    rts

loc_0dcf5f:
    php
    lda $c4
    and #$01
    bne loc_0dcf6a
    jsl sub_07eeb2

loc_0dcf6a:
    plp
    rts

loc_0dcf6c:
    php
    jsl sub_07eeb2
    plp
    rts

loc_0dcf73:
    php
    jsl sub_07eeb2
    jsl sub_07eeb2
    plp
    rts

loc_0dcf7e:
    php
    jsl sub_07ec9a
    jsl sub_07ec9a
    plp
    rts

loc_0dcf89:
    php
    jsl sub_07ec9a
    plp
    rts
    .db $08,$22,$d3,$ef,$07,$28,$60,$08,$22,$2a,$ec,$07,$28,$60,$08,$22
    .db $4c,$ec,$07,$28,$60,$08,$22,$7f,$ec,$07,$28,$60

loc_0dcfac:
    php
    jsl sub_07ee2f
    plp
    rts
    .db $08,$22,$48,$ee,$07,$28,$60,$08,$22,$23,$ee,$07,$28,$60

loc_0dcfc1:
    php
    jsl sub_07ebb8
    plp
    rts

loc_0dcfc8:
    php
    lda $1de2
    cmp #$09
    beq loc_0dcfd4
    jsl sub_07ebb8

loc_0dcfd4:
    plp
    rts
    .db $08,$b9,$e9,$6b,$29,$df,$99,$e9,$6b,$28,$60,$08,$ad,$58,$1e,$09
    .db $80,$8d,$58,$1e,$28,$60,$08,$ad,$58,$1e,$09,$80,$8d,$58,$1e,$28
    .db $60,$08,$c2,$20,$a9,$00,$02,$1c,$9c,$1b,$e2,$20,$28,$60,$08,$28
    .db $60

loc_0dd007:
    php
    lda $6a8c,y
    and #$7f
    sta $6a8c,y
    rep #$20
.a16
    lda #$0008
    sta $6c1c,y
    sep #$20
.a8
    plp
    rts

loc_0dd01c:
    php
    rep #$20
.a16
    lda #$0006
    sta $3a
    sep #$20
.a8
    lda #$21
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b79f
    rep #$20
.a16
    lda #$0090
    sta $3a
    lda #$00a0
    sta $3c
    sep #$20
.a8
    jsl sub_07b7fd
    lda #$1f
    sta $3a
    lda #$1f
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b861
    lda #$00
    sta $3a
    lda #$00
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b89b
    lda $6a8c,y
    ora #$80
    sta $6a8c,y
    plp
    rts

loc_0dd06e:
    php
    rep #$20
.a16
    lda #$0002
    sta $3a
    sep #$20
.a8
    lda #$23
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b79f
    rep #$20
.a16
    lda #$006e
    sta $3a
    lda #$0062
    sta $3c
    sep #$20
.a8
    jsl sub_07b7fd
    lda #$1f
    sta $3a
    lda #$10
    sta $3c
    lda #$10
    sta $3e
    jsl sub_07b861
    lda #$00
    sta $3a
    lda #$00
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b89b
    plp
    rts

loc_0dd0b8:
    php
    lda #$01
    sta $3a
    lda #$01
    sta $3c
    lda #$01
    sta $3e
    jsl sub_07b89b
    plp
    rts

loc_0dd0cb:
    php
    rep #$20
.a16
    lda #$0030
    sta $1e44
    sep #$20
.a8
    rep #$20
.a16
    lda #$0080
    sta $1e4e
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $1e52
    sep #$20
.a8
    plp
    rts

loc_0dd0ec:
    php
    rep #$20
.a16
    lda #$0008
    sta $3a
    sep #$20
.a8
    lda #$23
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b79f
    rep #$20
.a16
    lda #$0088
    sta $3a
    lda #$0070
    sta $3c
    sep #$20
.a8
    jsl sub_07b7fd
    lda #$1f
    sta $3a
    lda #$1f
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b861
    lda #$01
    sta $3a
    lda #$02
    sta $3c
    lda #$02
    sta $3e
    jsl sub_07b89b
    plp
    rts

loc_0dd136:
    php
    rep #$20
.a16
    lda #$0001
    sta $3a
    sep #$20
.a8
    lda #$23
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b79f
    rep #$20
.a16
    lda #$0088
    sta $3a
    lda #$0070
    sta $3c
    sep #$20
.a8
    jsl sub_07b7fd
    lda #$1f
    sta $3a
    lda #$1f
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b861
    lda #$01
    sta $3a
    lda #$02
    sta $3c
    lda #$02
    sta $3e
    jsl sub_07b89b
    plp
    rts

loc_0dd180:
    php
    rep #$20
.a16
    lda #$0002
    sta $3a
    sep #$20
.a8
    lda #$23
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b79f
    rep #$20
.a16
    lda #$0090
    sta $3a
    lda #$0060
    sta $3c
    sep #$20
.a8
    jsl sub_07b7fd
    lda #$1f
    sta $3a
    lda #$1f
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b861
    lda #$01
    sta $3a
    lda #$02
    sta $3c
    lda #$02
    sta $3e
    jsl sub_07b89b
    plp
    rts

loc_0dd1ca:
    php
    rep #$20
.a16
    lda #$0002
    sta $3a
    sep #$20
.a8
    lda #$21
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b79f
    rep #$20
.a16
    lda #$0078
    sta $3a
    lda #$0068
    sta $3c
    sep #$20
.a8
    jsl sub_07b7fd
    lda #$1f
    sta $3a
    lda #$1f
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b861
    lda #$00
    sta $3a
    lda #$00
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b89b
    plp
    rts

loc_0dd214:
    php
    rep #$20
.a16
    lda #$0006
    sta $3a
    sep #$20
.a8
    lda #$21
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b79f
    rep #$20
.a16
    lda #$0080
    sta $3a
    lda #$0060
    sta $3c
    sep #$20
.a8
    jsl sub_07b7fd
    bra loc_0dd266
    .db $08,$c2,$20,$a9,$06,$00,$85,$3a,$e2,$20,$a9,$23,$85,$3c,$a9,$00
    .db $85,$3e,$22,$9f,$b7,$07,$c2,$20,$a9,$7e,$00,$85,$3a,$a9,$3c,$00
    .db $85,$3c,$e2,$20,$22,$fd,$b7,$07

loc_0dd266:
    lda #$0a
    sta $3a
    lda #$0a
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b861
    lda #$00
    sta $3a
    lda #$00
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b89b
    lda $6a8c,y
    ora #$80
    sta $6a8c,y
    plp
    rts

loc_0dd290:
    php
    lda #$33
    sta $6c29,y
    plp
    rts
    .db $08,$b9,$2b,$6c,$f0,$01,$3a,$99,$2b,$6c,$b9,$2c,$6c,$f0,$01,$3a
    .db $99,$2c,$6c,$b9,$2a,$6c,$f0,$01,$3a,$99,$2a,$6c,$28,$60

loc_0dd2b6:
    php
    lda #$00
    sta $6a90,y
    plp
    rts
    .db $08,$a9,$08,$99,$90,$6a,$a9,$02,$99,$28,$6c,$28,$60

loc_0dd2cb:
    php
    jsl sub_07eacb
    plp
    rts
    .db $08,$b9,$2b,$6c,$1a,$1a,$89,$e0,$f0,$02,$a9,$1f,$99,$2b,$6c,$b9
    .db $2c,$6c,$1a,$89,$e0,$f0,$02,$a9,$1f,$99,$2c,$6c,$28,$60

loc_0dd2f0:
    php
    lda #$04
    sta $6c11,y
    lda #$08
    sta $6c0e,y
    sta $6c0f,y
    sta $6c10,y
    lda #$1f
    sta $6c0d,y
    sta $6c0c,y
    sta $6c0b,y
    jmp loc_0dd391

loc_0dd30f:
    php
    lda #$0a
    sta $6c11,y
    lda #$1f
    sta $6c0d,y
    sta $6c0c,y
    sta $6c0b,y
    jmp loc_0dd391

loc_0dd323:
    php
    lda #$00
    sta $6c0b,y
    lda #$1f
    sta $6c0c,y
    lda #$1f
    sta $6c0d,y
    jmp loc_0dd391

loc_0dd336:
    php
    lda #$1f
    sta $6c0b,y
    lda #$00
    sta $6c0c,y
    lda #$1f
    sta $6c0d,y
    jmp loc_0dd391

loc_0dd349:
    php
    lda #$1f
    sta $6c0b,y
    lda #$1f
    sta $6c0c,y
    lda #$00
    sta $6c0d,y
    jmp loc_0dd391
    .db $08,$a9,$1f,$99,$11,$6c,$80,$01,$08,$a9,$00,$99,$0e,$6c,$99,$0f
    .db $6c,$99,$10,$6c,$a9,$1f,$99,$0b,$6c,$99,$0c,$6c,$99,$0d,$6c,$28
    .db $60

loc_0dd37d:
    php
    lda #$1f
    sta $6c0b,y
    lda #$1f
    sta $6c0c,y
    lda #$1f
    sta $6c0d,y
    jmp loc_0dd391
    .db $08

loc_0dd391:
    lda #$04
    sta $6c0e,y
    sta $6c0f,y
    sta $6c10,y
    plp
    rts
    .db $08,$a9,$01,$99,$0e,$6c,$99,$0f,$6c,$99,$10,$6c,$28,$60,$08,$a9
    .db $0a,$99,$11,$6c,$a9,$12,$99,$0b,$6c,$a9,$00,$99,$0d,$6c,$99,$0c
    .db $6c,$4c,$91,$d3,$08,$b9,$8c,$6a,$29,$7f,$99,$8c,$6a,$c2,$20,$a9
    .db $10,$00,$85,$3a,$e2,$20,$a9,$23,$85,$3c,$a9,$01,$85,$3e,$22,$9f
    .db $b7,$07,$a9,$1c,$85,$3a,$a9,$1f,$85,$3c,$a9,$1c,$85,$3e,$22,$61
    .db $b8,$07,$a9,$02,$85,$3a,$a9,$01,$85,$3c,$a9,$01,$85,$3e,$22,$9b
    .db $b8,$07,$b9,$8c,$6a,$09,$80,$99,$8c,$6a,$c2,$20,$b9,$3b,$6b,$c9
    .db $00,$00,$e2,$20,$f0,$04,$5c,$22,$d4,$0d,$c2,$20,$a9,$80,$00,$99
    .db $3b,$6b,$e2,$20,$28,$60

loc_0dd424:
    php
    lda $1e0d
    ora #$10
    sta $1e0d
    plp
    rts
    .db $08,$a9,$64,$99,$11,$6c,$a9,$23,$99,$12,$6c,$28,$60,$08,$a9,$40
    .db $85,$3a,$a9,$9e,$85,$02,$a9,$59,$85,$04,$22,$4e,$a8,$06,$28,$60
    .db $08,$a9,$80,$85,$3a,$a9,$98,$85,$02,$a9,$56,$85,$04,$22,$4e,$a8
    .db $06,$28,$60,$08,$ad,$f2,$d7,$f0,$0b,$3a,$f0,$04,$a9,$8e,$80,$1d
    .db $a9,$8d,$80,$19,$a9,$8c,$80,$15,$08,$ad,$f2,$d7,$f0,$0b,$3a,$f0
    .db $04,$a9,$91,$80,$08,$a9,$90,$80,$04,$a9,$8f,$80,$00,$85,$3a,$08
    .db $da,$22,$04,$cf,$0a,$fa,$28,$28,$60,$08,$ad,$70,$1e,$30,$27,$c2
    .db $20,$29,$07,$00,$18,$69,$b7,$00,$e2,$20,$80,$12,$08,$ad,$70,$1e
    .db $30,$14,$ad,$14,$1e,$c2,$20,$29,$07,$00,$18,$69,$bd,$00,$e2,$20
    .db $da,$22,$04,$cf,$0a,$fa,$28,$60,$64,$e0,$a4,$c4,$0d,$00,$00,$00
    .db $d2,$dc,$fa,$c4,$0d,$00,$00,$00,$d2,$dc,$fa,$c4,$0d,$00,$00,$00
    .db $d6,$d9,$f3,$c4,$0d,$00,$00,$00,$8c,$d4,$b4,$be,$0d,$00,$00,$00
    .db $5b,$b6,$d3,$be,$0d,$00,$00,$00,$11,$fa,$df,$be,$0d,$00,$00,$00
    .db $5b,$b6,$c2,$be,$0d,$00,$00,$00,$8d,$d9,$35,$bf,$0d,$00,$00,$00
    .db $0e,$d4,$91,$c1,$0d,$00,$10,$00,$0e,$d4,$84,$c3,$0d,$00,$00,$00
    .db $0e,$d4,$55,$c3,$0d,$00,$10,$00,$4c,$c9,$55,$c3,$0d,$00,$10,$00
    .db $42,$c4,$83,$bf,$0d,$00,$00,$00,$3a,$c4,$e3,$bf,$0d,$00,$00,$00
    .db $e8,$c2,$2d,$c0,$0d,$00,$00,$00,$fe,$c9,$a9,$c3,$0d,$00,$10,$00
    .db $fe,$c9,$a9,$c3,$0d,$00,$00,$00,$15,$cd,$d5,$c3,$0d,$00,$00,$00
    .db $c2,$cd,$fa,$c3,$0d,$00,$00,$00,$21,$cd,$d5,$c3,$0d,$00,$00,$00
    .db $44,$cb,$1f,$c4,$0d,$00,$00,$00,$c6,$cb,$6c,$c4,$0d,$00,$00,$00
    .db $15,$cd,$93,$c4,$0d,$00,$00,$00,$c6,$bb,$57,$c0,$0d,$00,$00,$00
    .db $90,$d4,$bb,$be,$0d,$00,$00,$00,$da,$b9,$4a,$be,$0d,$00,$00,$00
    .db $2e,$c4,$de,$bf,$0d,$00,$00,$00,$c5,$b9,$34,$be,$0d,$00,$00,$00
    .db $d2,$b8,$f9,$bd,$0d,$00,$00,$00

sub_0dd5b7:
    php
    phb
    sep #$20
    lda #$7e
    pha
    plb
    rep #$30
.a16
    stz $1285
    lda #$342e
    sta $1283
    ldy #$0200

loc_0dd5cd:
    tax
    clc
    adc #$0019
    sta $0000,x
    dey
    bne loc_0dd5cd
    stz $0000,x
    lda #$0320
    sta $001a83
    asl a
    sta $001a85
    lda #$0190
    sta $001a7f
    asl a
    sta $001a81
    jsl sub_0dda5f
    plb
    plp
.a8
    rtl

sub_0dd5fa:
    php
    phb
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    lda $1e16
    bit #$80
    beq loc_0dd60f
    jml loc_0dd637

loc_0dd60f:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_0dd61e
    jmp loc_0dd8da

loc_0dd61e:
    lda $190e
    pha
    jsl sub_0dd95b
    lda $190e
    sta $02
    pla
    cmp $02
    beq loc_0dd637
    lda #$01
    sta $cf35
    bra loc_0dd670

loc_0dd637:
    lda $cf35
    beq loc_0dd641
    dec $cf35
    bra loc_0dd670

loc_0dd641:
    ldx #$033f
    lda $cf22
    cmp $0d,x
    bne loc_0dd670
    lda $cf24
    cmp $11,x
    bne loc_0dd670
    lda $1aa6
    bit #$02
    beq loc_0dd65c
    brl loc_0dd8da

loc_0dd65c:
    ldx #$033f
    lda $cf26
    cmp $0d,x
    bne loc_0dd670
    lda $cf28
    cmp $11,x
    bne loc_0dd670
    brl loc_0dd8da

loc_0dd670:
    rep #$20
.a16
    ldx #$033f
    lda $0c,x
    sta $cf21
    lda $10,x
    sta $cf23
    ldx #$037e
    lda $0c,x
    sta $cf25
    lda $10,x
    sta $cf27
    sep #$20
.a8
    phx
    rep #$20
.a16
    ldx #$033f
    lda $0c,x
    sta $1a6f
    lda $10,x
    sta $1a71
    ldx #$037e
    lda $0c,x
    sta $1a73
    lda $10,x
    sta $1a75
    plx
    sep #$20
.a8
    ldy $1285
    bne loc_0dd6b6
    brl loc_0dd8da

loc_0dd6b6:
    tyx
    phx
    rep #$20
.a16
    txy
    lda $0012,y
    bit #$0008
    bne loc_0dd6d6
    lda $000d,y
    tax
    lda $000010,x
    asl a
    asl a
    clc
    adc $1a83
    cmp $d739
    bcc loc_0dd6d9

loc_0dd6d6:
    lda $d739

loc_0dd6d9:
    sta $3e
    asl a
    sta $3a
    lda $0012,y
    bit #$0001
    beq loc_0dd711
    lda $0013,y
    tax
    lda $3e
    clc
    adc #$01f4
    sta $3e
    asl a
    sta $3a
    lda $0c,x
    sec
    sbc $1a6f
    clc
    adc $3e
    cmp $3a
    bcs loc_0dd733
    lda $10,x
    sec
    sbc $1a71
    clc
    adc $3e
    cmp $3a
    bcc loc_0dd72e
    bra loc_0dd733

loc_0dd711:
    tyx
    lda $0004,x
    sec
    sbc $1a6f
    clc
    adc $3e
    cmp $3a
    bcs loc_0dd733
    lda $0008,x
    sec
    sbc $1a71
    clc
    adc $3e
    cmp $3a
    bcs loc_0dd733

loc_0dd72e:
    sep #$20
.a8
    sec
    bra loc_0dd736

loc_0dd733:
.a16
    sep #$20
.a8
    clc

loc_0dd736:
    plx
    bcc loc_0dd73c
    brl loc_0dd7ee

loc_0dd73c:
    lda $1aa6
    bit #$01
    bne loc_0dd746
    brl loc_0dd7c8

loc_0dd746:
    phx
    rep #$20
.a16
    txy
    lda $0012,y
    bit #$0008
    bne loc_0dd765
    lda $000d,y
    tax
    lda $000010,x
    asl a
    asl a
    clc
    adc $1a83
    cmp $d739
    bcc loc_0dd768

loc_0dd765:
    lda $d739

loc_0dd768:
    sta $3e
    asl a
    sta $3a
    lda $0012,y
    bit #$0001
    beq loc_0dd7a0
    lda $0013,y
    tax
    lda $3e
    clc
    adc #$01f4
    sta $3e
    asl a
    sta $3a
    lda $0c,x
    sec
    sbc $1a73
    clc
    adc $3e
    cmp $3a
    bcs loc_0dd7c2
    lda $10,x
    sec
    sbc $1a75
    clc
    adc $3e
    cmp $3a
    bcc loc_0dd7bd
    bra loc_0dd7c2

loc_0dd7a0:
    tyx
    lda $0004,x
    sec
    sbc $1a73
    clc
    adc $3e
    cmp $3a
    bcs loc_0dd7c2
    lda $0008,x
    sec
    sbc $1a75
    clc
    adc $3e
    cmp $3a
    bcs loc_0dd7c2

loc_0dd7bd:
    sep #$20
.a8
    sec
    bra loc_0dd7c5

loc_0dd7c2:
.a16
    sep #$20
.a8
    clc

loc_0dd7c5:
    plx
    bcs loc_0dd7ee

loc_0dd7c8:
    lda $0012,x
    bit #$01
    bne loc_0dd7d7
    and #$ef
    sta $0012,x
    brl loc_0dd8d2

loc_0dd7d7:
    phx
    txy
    ldx $0013,y
    lda $25,x
    ora #$08
    sta $25,x
    plx
    lda $0012,x
    and #$fe
    sta $0012,x
    brl loc_0dd8d2

loc_0dd7ee:
    lda $0012,x
    bit #$01
    beq loc_0dd7f8
    brl loc_0dd8d2

loc_0dd7f8:
    bit #$10
    beq loc_0dd7ff
    brl loc_0dd8d2

loc_0dd7ff:
    phx
    rep #$20
.a16
    ldx $12a8
    txy
    ldx $12aa
    bne loc_0dd80f
    tyx
    jmp loc_0dd8d1

loc_0dd80f:
    lda $00,x
    sta $12aa
    tya
    bne loc_0dd823
    lda $12a8
    sta $00,x
    stz $02,x
    stx $12a8
    bra loc_0dd82f

loc_0dd823:
    lda $0000,y
    sta $00,x
    txa
    sta $0000,y
    tya
    sta $02,x

loc_0dd82f:
    ldy $00,x
    beq loc_0dd837
    txa
    sta $0002,y

loc_0dd837:
    sep #$20
.a8
    txy
    jsl sub_7f29bc
    rep #$20
.a16
    ply
    phy
    lda $0004,y
    sta $0c,x
    lda $0006,y
    sta $0e,x
    lda $0008,y
    sta $10,x
    lda $000d,y
    sta $04,x
    lda $0012,y
    bit #$0002
    beq loc_0dd86f
    lda $000f,y
    sta $2b,x
    lda #$7e1e
    sta $19,x
    lda #$7f7e
    sta $1a,x
    bra loc_0dd87d

loc_0dd86f:
    lda $000f,y
    sta $19,x
    sep #$20
.a8
    lda $0011,y
    sta $1b,x
    rep #$20

loc_0dd87d:
.a16
    tya
    sta $1ce6,x
    txa
    sta $0013,y
    sep #$20
.a8
    lda $000a,y
    sta $12,x
    lda $000b,y
    sta $14,x
    lda $000c,y
    sta $16,x
    lda $0018,y
    sta $1cf0,x
    lda $0012,y
    ora #$01
    sta $0012,y
    bit #$04
    beq loc_0dd8d1
    lda $25,x
    ora #$40
    sta $25,x
    lda $0015,y
    sta $54
    lda $0016,y
    sta $55
    lda $0017,y
    sta $56
    lda #$04
    jsl sub_7f2360
    rep #$20
.a16
    lda $54
    sta $6a62,y
    sep #$20
.a8
    lda $56
    sta $6a64,y

loc_0dd8d1:
.a16
    plx

loc_0dd8d2:
.a8
    ldy $0000,x
    beq loc_0dd8da
    brl loc_0dd6b6

loc_0dd8da:
    plb
    plp
    rtl

sub_0dd8dd:
    php
    phb
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    ldx $12a8
    beq loc_0dd906

loc_0dd8ec:
    ldy $00,x
    lda $1cf0,x
    cmp $5f
    bne loc_0dd903
    lda #$00
    sta $1ce6,x
    sta $1ce7,x
    lda $25,x
    ora #$08
    sta $25,x

loc_0dd903:
    tyx
    bne loc_0dd8ec

loc_0dd906:
    ldx $1285
    bne loc_0dd90e
    brl loc_0dd94f

loc_0dd90e:
    ldy $0000,x
    lda $0018,x
    cmp $5f
    bne loc_0dd94c
    phy
    rep #$20
.a16
    ldy $0002,x
    bne loc_0dd92e
    ldy $0000,x
    sty $1285
    lda #$0000
    sta $0002,y
    bra loc_0dd940

loc_0dd92e:
    phx
    lda $0000,x
    tax
    sta $0000,y
    cmp #$0000
    beq loc_0dd93f
    tya
    sta $0002,x

loc_0dd93f:
    plx

loc_0dd940:
    lda $1283
    sta $0000,x
    stx $1283
    sep #$20
.a8
    ply

loc_0dd94c:
    tyx
    bne loc_0dd90e

loc_0dd94f:
    stz $1b32
    stz $1aca
    stz $1acc
    plb
    plp
    rtl

sub_0dd95b:
    php
    phb
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    rep #$20
.a16
    ldx $12c3
    lda $0c,x
    sta $02
    lda $10,x
    sta $97
    sep #$20
.a8
    lda $190e
    sta $04
    lda $190f
    sta $0a
    lda #$ff
    sta $190e
    sta $190f
    lda $1910
    and #$ff
    bne loc_0dd990
    brl loc_0dda16

loc_0dd990:
    sta $5f
    stz $60
    stz $3a
    ldx #$686a

loc_0dd999:
    rep #$20
.a16
    lda $000f,x
    bit #$0002
    bne loc_0dd9a6
    brl loc_0dda08

loc_0dd9a6:
    lda $02
    sec
    sbc $0000,x
    cmp $0006,x
    bcc loc_0dd9b4
    brl loc_0dda08

loc_0dd9b4:
    lda $97
    sec
    sbc $0004,x
    cmp $000a,x
    bcs loc_0dda08
    sep #$20
.a8
    lda $3a
    cmp $04
    beq loc_0dd9db
    cmp $0a
    beq loc_0dd9db
    rep #$20
.a16
    lda $000c,x
    sta $1657
    sep #$20
.a8
    lda $000e,x
    sta $192e

loc_0dd9db:
    lda $190e
    inc a
    beq loc_0dd9e5
    dec a
    sta $190f

loc_0dd9e5:
    lda $3a
    sta $190e
    cmp $0a
    beq loc_0dd9f2
    cmp $04
    bne loc_0dda08

loc_0dd9f2:
    lda $190f
    cmp #$ff
    beq loc_0dda08
    cmp $0a
    beq loc_0dda08
    lda $190f
    sta $190e
    lda $3a
    sta $190f

loc_0dda08:
.a16
    rep #$20
    txa
    clc
    adc #$0010
    tax
    inc $3a
    dec $5f
    bne loc_0dd999

loc_0dda16:
.a8
    sep #$20
    lda $190e
    cmp $190f
    beq loc_0dda23
    brl loc_0dda30

loc_0dda23:
    lda $04
    sta $190e
    lda $0a
    sta $190f
    brl loc_0dda5c

loc_0dda30:
    lda $04
    cmp #$ff
    beq loc_0dda46
    cmp $190e
    beq loc_0dda46
    cmp $190f
    beq loc_0dda46
    sta $5f
    jsl sub_0dd8dd

loc_0dda46:
    lda $0a
    cmp #$ff
    beq loc_0dda5c
    cmp $190e
    beq loc_0dda5c
    cmp $190f
    beq loc_0dda5c
    sta $5f
    jsl sub_0dd8dd

loc_0dda5c:
    plb
    plp
    rtl

sub_0dda5f:
.a16
    php
    phb
    sep #$20
.a8
    rep #$10
    lda #$7e
    pha
    plb
    lda #$ff
    ldx #$0000

loc_0dda6e:
    sta $cf36,x
    inx
    cpx #$0800
    bne loc_0dda6e
    plb
    plp
.a16
    rtl
    .db $08,$8b,$e2,$20,$c2,$10,$85,$02,$a9,$7e,$48,$ab,$c2,$20,$a5,$02
    .db $29,$7f,$00,$aa,$f0,$0c,$a9,$00,$00,$18,$69,$10,$00,$ca,$d0,$fa
    .db $18,$aa,$e2,$20,$a9,$ff,$26,$02,$e9,$ff,$49,$ff,$85,$08,$c2,$20
    .db $bd,$6a,$68,$85,$02,$bd,$6e,$68,$85,$97,$bd,$70,$68,$85,$04,$bd
    .db $74,$68,$85,$e4,$22,$c5,$da,$0d,$ab,$28,$6b,$08,$8b,$e2,$20,$c2
    .db $10,$a9,$7e,$48,$ab,$c2,$20,$a5,$02,$eb,$4a,$29,$7f,$00,$85,$5f
    .db $da,$29,$07,$00,$0a,$aa,$bf,$63,$b0,$00,$fa,$85,$0a,$46,$5f,$46
    .db $5f,$46,$5f,$a5,$97,$29,$00,$fe,$eb,$0a,$0a,$0a,$18,$65,$5f,$85
    .db $5f,$a5,$04,$18,$69,$ff,$01,$eb,$4a,$29,$7f,$00,$85,$04,$a5,$e4
    .db $18,$69,$ff,$01,$eb,$4a,$29,$7f,$00,$85,$e4,$a5,$5f,$aa,$a5,$04
    .db $48,$e2,$20,$a5,$0a,$48,$bd,$36,$cf,$85,$3a,$a5,$0a,$29,$ff,$14
    .db $3a,$a5,$08,$25,$0a,$04,$3a,$a5,$3a,$9d,$36,$cf,$18,$26,$0a,$90
    .db $10,$26,$0a,$e8,$c2,$20,$8a,$89,$07,$00,$d0,$05,$38,$e9,$10,$00
    .db $aa,$e2,$20,$c6,$04,$d0,$cf,$68,$85,$0a,$c2,$20,$68,$85,$04,$a5
    .db $5f,$18,$69,$10,$00,$c9,$00,$08,$90,$04,$38,$e9,$00,$08,$85,$5f
    .db $c6,$e4,$d0,$a7,$ab,$28,$6b

sub_0ddb71:
    php
    rep #$30
    phx
    lda $02
    xba
    lsr a
    and #$007f
    sta $5f
    phx
    and #$0007
    asl a
    tax
    lda $00b063,x
    plx
    sta $0a
    lsr $5f
    lsr $5f
    lsr $5f
    lda $97
    and #$fe00
    xba
    asl a
    asl a
    asl a
    clc
    adc $5f
    tax
    sep #$20
.a8
    lda $cf36,x
    and $0a
    sta $02
    plx
    plp
.a16
    rtl

loc_0ddbaa:
    jsr sub_0de017
    bcs loc_0ddbb3
    jml loc_0de0ce

loc_0ddbb3:
    rep #$20
    lda #$ee2d
    sta $002b,y
    sep #$20
.a8
    jsr sub_0dde38
    rtl

loc_0ddbc1:
    jsr sub_0de017
    bcs loc_0ddbca
    jml loc_0de0ce

loc_0ddbca:
    rep #$20
.a16
    lda #$ee3b
    sta $002b,y
    sep #$20
.a8
    jsr sub_0dde38
    rtl
    jsr sub_0de017
    bcs loc_0ddbe1
    jml loc_0de0ce

loc_0ddbe1:
    rep #$20
.a16
    lda #$ee4c
    sta $002b,y
    sep #$20
.a8
    lda #$28
    sta $3a
    lda #$46
    sta $3c
    jsr sub_0ddfd9
    jsr sub_0dde38
    rtl

loc_0ddbfa:
    jsr sub_0de017
    bcs loc_0ddc03
    jml loc_0de0ce

loc_0ddc03:
    rep #$20
.a16
    lda #$ec98
    sta $002b,y
    sep #$20
.a8
    lda #$28
    sta $3a
    lda #$3c
    sta $3c
    jsr sub_0ddfd9
    jsr sub_0dde38
    rtl

loc_0ddc1c:
    jsr sub_0de017
    bcs loc_0ddc25
    jml loc_0de0ce

loc_0ddc25:
    rep #$20
.a16
    lda #$ec98
    sta $002b,y
    sep #$20
.a8
    jsr sub_0dde38
    rtl

loc_0ddc33:
    jsr sub_0de017
    bcs loc_0ddc3c
    jml loc_0de0ce

loc_0ddc3c:
    rep #$20
.a16
    lda #$ecf7
    sta $002b,y
    sep #$20
.a8
    jsr sub_0dde38
    rtl

loc_0ddc4a:
    jsr sub_0de017
    bcs loc_0ddc53
    jml loc_0de0ce

loc_0ddc53:
    rep #$20
.a16
    lda #$ee10
    sta $002b,y
    sep #$20
.a8
    jsr sub_0dde38
    rtl

loc_0ddc61:
    jsr sub_0de017
    bcs loc_0ddc6a
    jml loc_0de0ce

loc_0ddc6a:
    rep #$20
.a16
    lda #$ef2d
    sta $002b,y
    sep #$20
.a8
    lda $0025,y
    and #$fd
    sta $0025,y
    rtl
    jsr sub_0de017
    bcs loc_0ddc86
    jml loc_0de0ce

loc_0ddc86:
    cpx $12c3
    beq loc_0ddcaa
    cpx $12c5
    beq loc_0ddcaa
    jsr sub_0dde38
    rep #$20
.a16
    lda #$eeed
    sta $002b,y
    sep #$20
.a8
    lda #$78
    sta $002d,y
    lda #$02
    sta $002e,y
    jmp loc_0ddcbe

loc_0ddcaa:
    rep #$20
.a16
    lda #$f029
    sta $002b,y
    sep #$20
.a8
    lda #$78
    sta $002d,y
    lda #$02
    sta $002e,y

loc_0ddcbe:
    rtl
    .db $ac,$d6,$14,$6b
    sep #$20
    rep #$10
    jsr sub_0de0a4
    bcs loc_0ddcd0
    jml loc_0de0ce

loc_0ddcd0:
    rep #$20
.a16
    lda #$ca64
    sta $0004,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$f084
    sta $002b,y
    sep #$20
.a8
    lda $16,x
    sta $0016,y
    lda $1df2
    sta $0012,y
    jsr sub_0de0cf
    lda #$78
    sta $002d,y
    lda #$0a
    sta $002e,y
    rtl

loc_0ddcfd:
    sep #$20
    rep #$10
    jsl sub_06a9e6
    bcs loc_0ddd0b
    jml loc_0de0ce

loc_0ddd0b:
    jsr sub_0de0a4
    bcs loc_0ddd14
    jml loc_0de0ce

loc_0ddd14:
    rep #$20
.a16
    lda #$e450
    sta $0004,y
    sep #$20
.a8
    bra loc_0ddd41

loc_0ddd20:
    sep #$20
    rep #$10
    jsl sub_06a9e6
    bcs loc_0ddd2e
    jml loc_0de0ce

loc_0ddd2e:
    jsr sub_0de0a4
    bcs loc_0ddd37
    jml loc_0de0ce

loc_0ddd37:
    rep #$20
.a16
    lda #$e3fc
    sta $0004,y
    sep #$20

loc_0ddd41:
.a8
    phy
    ldy $2b,x
    lda $6add,y
    ply
    sta $1cd7,y
    jmp loc_0ddd74
    sep #$20
    rep #$10
    jsl sub_06a9e6
    bcs loc_0ddd5c
    jml loc_0de0ce

loc_0ddd5c:
    jsr sub_0de0a4
    bcs loc_0ddd65
    jml loc_0de0ce

loc_0ddd65:
    rep #$20
.a16
    lda #$e3c4
    sta $0004,y
    sep #$20
.a8
    lda #$00
    sta $1cd7,y

loc_0ddd74:
    rep #$20
.a16
    lda #$e973
    sta $002b,y
    sep #$20
.a8
    lda $16,x
    sta $0016,y
    lda #$03
    ora #$80
    sta $1ccb,y
    phy
    phx
    phy
    ldy $2b,x
    tyx
    rep #$20
.a16
    ldy $14d6
    lda $6b9c,x
    sta $000c,y
    lda $6b9e,x
    sta $000e,y
    lda $6ba0,x
    sta $0010,y
    sep #$20
.a8
    plx
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    beq loc_0dddb8

loc_0dddb8:
    sta $14,x
    plx
    ply
    jsr sub_0de0cf
    rtl

loc_0dddc0:
    ldy $2b,x
    lda $6c06,y
    and #$03
    bne loc_0dddcd
    jml loc_0de0ce

loc_0dddcd:
    jsl sub_06a9e6
    bcs loc_0dddd7
    jml loc_0de0ce

loc_0dddd7:
    jsr sub_0de0a4
    bcs loc_0ddde0
    jml loc_0de0ce

loc_0ddde0:
    phy
    ldy $2b,x
    lda $6c06,y
    ply
    and #$03
    dec a
    beq loc_0dde03
    pha
    rep #$20
.a16
    lda #$e450
    sta $0004,y
    sep #$20
.a8
    pla
    dec a
    beq loc_0dddff
    lda #$04
    bra loc_0dde21

loc_0dddff:
    lda #$04
    bra loc_0dde21

loc_0dde03:
    rep #$20
.a16
    lda #$bf58
    sta $0004,y
    sep #$20
.a8
    lda $0020,y
    ora #$20
    sta $0020,y
    lda #$00
    sta $1cc8,y
    lda #$00
    sta $1cda,y
    lda #$02

loc_0dde21:
    sta $002e,y
    rep #$20
.a16
    lda #$eb1a
    sta $002b,y
    sep #$20
.a8
    lda $1df2
    sta $0012,y
    jsr sub_0de0cf
    rtl

sub_0dde38:
    phx
    ldx $12c3
    lda $14,x
    plx
    clc
    adc #$80
    sec
    sbc $0014,y
    clc
    adc #$40
    cmp #$80
    bcc loc_0dde67
    jsl sub_7f7bd0
    and #$03
    sta $3a
    lda $3a
    beq loc_0dde64
    lda $0021,y
    ora #$01
    sta $0021,y
    inc $1d69

loc_0dde64:
    inc $1d6b

loc_0dde67:
    lda $0031,y
    ora #$50
    sta $0031,y
    lda $0031,y
    ora #$10
    sta $0031,y
    rts

sub_0dde78:
    phx
    phy
    lda $20,x
    and #$80
    beq loc_0dde84
    jml loc_0ddf1a

loc_0dde84:
    lda $21,x
    and #$02
    beq loc_0dde8e
    jml loc_0ddf1a

loc_0dde8e:
    lda $1b4d
    and #$07
    cmp #$00
    beq loc_0ddea7
    rep #$20
.a16
    lda $0e,x
    clc
    adc #$0014
    sep #$20
.a8
    bmi loc_0ddea7
    jml loc_0ddf3a

loc_0ddea7:
    lda $1cea,x
    pha
    jsl sub_0daf3a
    pla
    sta $1cea,x
    ldy $1ce8,x
    beq loc_0ddf0f
    rep #$20
.a16
    lda $0e,x
    cmp $08
    sep #$20
.a8
    bpl loc_0ddec6
    jml loc_0ddf0f

loc_0ddec6:
    lda $31,x
    and #$80
    cmp #$80
    beq loc_0dded2
    jml loc_0ddefa

loc_0dded2:
    lda $31,x
    and #$08
    cmp #$08
    beq loc_0ddede
    jml loc_0ddefa

loc_0ddede:
    lda $24,x
    and #$80
    beq loc_0ddee8
    jml loc_0ddef2

loc_0ddee8:
    lda $0026,y
    ora #$02
    sta $0026,y
    bra loc_0ddefa

loc_0ddef2:
    lda $0026,y
    ora #$04
    sta $0026,y

loc_0ddefa:
    lda $0026,y
    and #$01
    bne loc_0ddf05
    jml loc_0ddf1a

loc_0ddf05:
    lda $0022,y
    ora #$02
    sta $0022,y
    bra loc_0ddf13

loc_0ddf0f:
    ply
    plx
    clc
    rtl

loc_0ddf13:
    ldy $1ce8,x
    sty $08
    bra loc_0ddf43

loc_0ddf1a:
    ldy $1e,x
    rep #$20
.a16
    lda $0004,y
    sta $08
    sep #$20
.a8
    phy
    ldy $08
    stz $d746
    lda $0022,y
    and #$08
    beq loc_0ddf37
    lda #$01
    sta $d746

loc_0ddf37:
    ply
    bra loc_0ddf43

loc_0ddf3a:
    rep #$20
.a16
    lda #$0000
    sta $08
    sep #$20

loc_0ddf43:
.a8
    ply
    plx
    sec
    rtl

sub_0ddf47:
    jsl sub_0dde78
    bcs loc_0ddf51
    stz $02
    clc
    rtl

loc_0ddf51:
    phx
    phy
    php
    stz $03
    stz $02
    rep #$20
.a16
    lda $08
    sep #$20
.a8
    bne loc_0ddf64
    jml loc_0ddfd2

loc_0ddf64:
    ldy $08
    cpy $12c3
    bne loc_0ddf6f
    jml loc_0ddfd4

loc_0ddf6f:
    cpy $12c5
    bne loc_0ddf78
    jml loc_0ddfd4

loc_0ddf78:
    lda $002d,y
    bne loc_0ddf81
    jml loc_0ddfd4

loc_0ddf81:
    lda $0022,y
    and #$08
    beq loc_0ddf8c
    jml loc_0ddfaf

loc_0ddf8c:
    phy
    phx
    tyx
    ply
    lda #$0b
    jsl sub_7f233b
    cpy #$0000
    bne loc_0ddfa2
    phx
    tyx
    ply
    jml loc_0ddfaa

loc_0ddfa2:
    lda $6a62,y
    phx
    tyx
    ply
    sta $02

loc_0ddfaa:
    ply
    lda #$01
    bra loc_0ddfd4

loc_0ddfaf:
    phy
    phx
    tyx
    ply
    lda #$0d
    jsl sub_7f233b
    cpy #$0000
    bne loc_0ddfc5
    phx
    tyx
    ply
    jml loc_0ddfcd

loc_0ddfc5:
    lda $6a62,y
    phx
    tyx
    ply
    sta $02

loc_0ddfcd:
    ply
    lda #$02
    bra loc_0ddfd4

loc_0ddfd2:
    lda #$00

loc_0ddfd4:
    plp
    ply
    plx
    sec
    rtl

sub_0ddfd9:
    phy
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
    beq loc_0ddff4
    jml loc_0ddff8

loc_0ddff4:
    lda $3a
    bra loc_0ddffa

loc_0ddff8:
    lda $3c

loc_0ddffa:
    ply
    sta $0018,y
    phx
    tyx
    ply
    lda $18,x
    sta $85
    lda $14,x
    sta $1512
    lda $12,x
    sta $1511
    jsl sub_7f2d1f
    phx
    tyx
    ply
    rts

sub_0de017:
    rep #$20
.a16
    lda $12a8
    pha
    sep #$20
.a8
    stx $12a8
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_0de035
    jml loc_0de09a

loc_0de035:
    rep #$20
.a16
    pla
    sta $12a8
    sep #$20
.a8
    rep #$20
.a16
    lda #$7e1e
    sta $0019,y
    sep #$20
.a8
    lda #$7f
    sta $001b,y
    lda #$01
    sta $002d,y
    lda #$01
    sta $002e,y
    jsl sub_03ab1d
    lda $0022,y
    ora #$04
    sta $0022,y
    lda $0024,y
    ora #$04
    sta $0024,y
    lda $0025,y
    ora #$02
    sta $0025,y
    lda $0031,y
    ora #$02
    sta $0031,y
    lda #$00
    ora #$80
    sta $1ccb,y
    lda $0026,y
    ora #$10
    sta $0026,y
    rep #$20
.a16
    lda #$7e1e
    sta $0019,y
    sep #$20
.a8
    lda #$7f
    sta $001b,y
    sec
    rts

loc_0de09a:
    rep #$20
.a16
    pla
    sta $12a8
    sep #$20
.a8
    clc
    rts

sub_0de0a4:
    jsr sub_0de017
    bcc loc_0de0cc
    lda #$ff
    sta $1cf0,y
    lda $0031,y
    ora #$80
    sta $0031,y
    stx $06,y
    lda $23,x
    and #$40
    bne loc_0de0c2
    jml loc_0de0ca

loc_0de0c2:
    lda $0024,y
    ora #$80
    sta $0024,y

loc_0de0ca:
    sec
    rts

loc_0de0cc:
    clc
    rts

loc_0de0ce:
    rtl

sub_0de0cf:
    phx
    phy
    php
    rep #$20
.a16
    lda $0004,y
    sta $02
    sep #$20
.a8
    phx
    tyx
    ply
    lda #$0a
    jsl sub_7f2360
    rep #$20
.a16
    lda $02
    sta $6a62,y
    sep #$20
.a8
    phx
    tyx
    ply
    plp
    ply
    plx
    rts
    .incbin "data/06e0f4-06f118.bin"

sub_0df118:
    phb
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    stz $1bea
    rep #$20
.a16
    lda $1b84
    bit #$0800
    sep #$20
.a8
    beq loc_0df14b
    lda #$02
    sta $1bea
    lda #$2a
    sta $d97a
    rep #$20
.a16
    lda $d830
    sta $1b86
    sep #$20
.a8
    jsl sub_0df6a2
    bra loc_0df15a

loc_0df14b:
    jsl sub_0df6a2
    jsl sub_0bf290
    bcc loc_0df15a
    lda #$01
    sta $1bea

loc_0df15a:
    rep #$20
.a16
    lda #$0010
    tsb $1b84
    lda #$0010
    tsb $1b9c
    lda #$0100
    tsb $1b9c
    lda #$0080
    tsb $1b9c
    lda #$0008
    tsb $1c67
    sep #$20
.a8
    ldx #$003c
    stx $1c0c
    lda #$04
    sta $7ef4f3
    lda #$04
    sta $7ef4f4
    stz $1c20
    lda #$02
    sta $1c24
    ldx #$0000
    stx $ec81
    ldx #$0004
    stx $ec7f
    ldx #$0000
    stx $d9c2
    ldx #$000c
    stx $d9c0
    ldx #$0000
    stx $d9c6
    ldx #$000e
    stx $d9c4
    rep #$20
.a16
    ldx $d7f2
    lda $04e079,x
    and #$00ff
    sta $da31
    sec
    sbc $da33
    sta $da2d
    lda $04e07c,x
    and #$00ff
    sta $da35
    sec
    sbc $da3d
    sta $da37
    sep #$20
.a8
    lda #$08
    sta $1b9e
    lda #$08
    sta $1ba2
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
    ldx $1b6e
    jsl sub_03e1e5
    rep #$20
.a16
    lda $1b84
    bit #$0800
    sep #$20
.a8
    beq loc_0df217
    lda #$01
    jsl sub_7f6df8

loc_0df217:
    rep #$20
.a16
    lda #$00f4
    jsl QueueSound
    sep #$20
.a8
    jsl sub_03f26a
    jsl sub_048001
    jsl sub_0bef7a
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
    jsl sub_03d847
    lda #$02
    sta $f3
    lda #$18
    sta $00
    ldx #$00e2
    stx VTIMEL
    stx $1c4b
    lda #$31
    sta NMITIMEN
    rep #$20
.a16
    lda #$0004
    tsb $1b84
    sep #$20
.a8
    lda $129b
    sta HDMAEN
    lda $004211
    cli

loc_0df276:
    jsl sub_03dd81
    jsl sub_0b8c21
    jsl sub_7f1118
    jsl sub_048301
    jsl sub_04a3ed
    lda $7eefd5
    bne loc_0df296
    dec $1cc3
    dec $1cc5

loc_0df296:
    lda $1bec
    bne loc_0df2a3
    jsr sub_0df654
    bcc loc_0df2a9
    inc $1bec

loc_0df2a3:
    ldx $1be0
    jsr (tbl_0df3d9,x)

loc_0df2a9:
    lda #$18
    sta $00

loc_0df2ad:
    lda $00
    bne loc_0df2ad
    brl loc_0df276

sub_0df2b4:
    phb
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda #$0010
    tsb $1b9c
    sep #$20
.a8
    lda #$02
    trb $1cb8
    rep #$20
.a16
    lda #$1000
    tsb $1b9c
    lda #$0008
    tsb $1c67
    lda #$0002
    trb $1b9c
    lda $1b82
    bit #$0002
    bne loc_0df2fa
    sep #$20
.a8
    lda #$09
    sta $1b9e
    jsl sub_03f680
    jsl sub_0bf58a
    bra loc_0df311

loc_0df2fa:
.a16
    sep #$20
.a8
    stz $1c20
    lda #$02
    sta $1c24
    lda #$0a
    sta $1b9e
    jsl sub_03f56f
    jsl sub_0be655

loc_0df311:
    jsl sub_048001
    lda #$00
    sta $1ba2
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
    ldx $1b6e
    jsl sub_03e1e5
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
    jsl sub_03d847
    lda #$02
    sta $f3
    lda #$18
    sta $00
    ldx #$00e2
    stx VTIMEL
    stx $1c4b
    lda #$31
    sta NMITIMEN
    rep #$20
.a16
    lda #$0004
    tsb $1b84
    sep #$20
.a8
    lda $129b
    sta HDMAEN
    lda $004211
    cli

loc_0df37a:
    jsl sub_03dd81
    jsl sub_0b8c21
    jsl sub_7f1118
    jsl sub_048301
    lda $7eefd5
    bne loc_0df396
    dec $1cc3
    dec $1cc5

loc_0df396:
    rep #$20
.a16
    lda $1b82
    bit #$0002
    sep #$20
.a8
    bne loc_0df3b9
    jsl sub_0bf5ca
    cmp #$00
    beq loc_0df3cf
    lda $1bee
    bne loc_0df3b7
    inc $1bee
    lda #$10
    sta $1be0

loc_0df3b7:
    bra loc_0df3c9

loc_0df3b9:
    jsl sub_0be68d
    cmp #$00
    beq loc_0df3cf
    lda $1bec
    bne loc_0df3c9
    inc $1bec

loc_0df3c9:
    ldx $1be0
    jsr (tbl_0df3d9,x)

loc_0df3cf:
    lda #$18
    sta $00

loc_0df3d3:
    lda $00
    bne loc_0df3d3
    bra loc_0df37a

tbl_0df3d9:
    .db $eb,$f3,$6f,$f4,$95,$f4,$b1,$f4,$b7,$f4,$d7,$f4,$0a,$f5,$1a,$f5
    .db $a9,$f5

loc_0df3eb:
    lda $1bea
    beq loc_0df40a
    dec a
    beq loc_0df3fd
    jsr sub_0df631
    lda #$0a
    sta $1b6a
    bra loc_0df407

loc_0df3fd:
    lda #$09
    sta $1b6a
    lda $d9f3
    bne loc_0df423

loc_0df407:
    brl loc_0df50a

loc_0df40a:
    rep #$20
.a16
    lda $1b86
    bit #$2000
    sep #$20
.a8
    beq loc_0df42f
    lda $d9f3
    bne loc_0df41e
    brl loc_0df4fb

loc_0df41e:
    lda #$10
    sta $1b6a

loc_0df423:
    lda #$0a
    sta $1be0
    jsr sub_0df434
    inc $d9c8
    rts

loc_0df42f:
    jsr sub_0df434
    bra loc_0df468

sub_0df434:
    rep #$20
.a16
    lda #$0010
    tsb $1b84
    sep #$20
.a8
    rep #$30
.a16
    lda $142c
    ora #$0020
    sta $142c
    ldx #$1342
    sep #$20
.a8
    rep #$10
    lda #$00
    sta $0005,x
    lda #$02
    sta $0006,x
    lda #$86
    sta $0007,x
    lda #$f0
    sta $0008,x
    inc $1be2
    rts

loc_0df468:
    inc $1be0
    inc $1be0
    rts

loc_0df46f:
    rep #$20
.a16
    lda $1cbb
    clc
    adc #$0010
    sta $1cbb
    cmp #$0100
    sep #$20
.a8
    beq loc_0df483
    rts

loc_0df483:
    rep #$20
.a16
    lda #$0010
    trb $1b84
    sep #$20
.a8
    inc $1be4
    stz $1be6
    bra loc_0df468

loc_0df495:
    jsr sub_0df654
    bcs loc_0df49f
    jsl sub_03ee04
    rts

loc_0df49f:
    inc $1be6
    ldx #$003c
    stx $1be8
    lda #$0a
    jsl sub_7f6df8
    brl loc_0df468

loc_0df4b1:
    dec $1be8
    beq loc_0df4b7
    rts

loc_0df4b7:
    jsr sub_0df5d2
    lda $1c20
    bne loc_0df4d0
    rep #$20
.a16
    lda #$0001
    tsb $1b86
    sep #$20
.a8
    lda #$06
    sta $1b6a
    bra loc_0df4d5

loc_0df4d0:
    lda #$10
    sta $1b6a

loc_0df4d5:
    bra loc_0df50a

loc_0df4d7:
    lda $d9c6
    cmp #$fd
    beq loc_0df4df
    rts

loc_0df4df:
    rep #$20
.a16
    lda #$0010
    trb $1b84
    sep #$20
.a8
    jsr sub_0df654
    bcs loc_0df4ef
    rts

loc_0df4ef:
    rep #$20
.a16
    lda #$000e
    sta $1b4b
    sep #$20
.a8
    bra loc_0df50a

loc_0df4fb:
    rep #$20
.a16
    lda #$000e
    sta $1b4b
    sep #$20
.a8
    lda #$10
    sta $1b6a

loc_0df50a:
    lda #$09
    jsl sub_7f6df8

loc_0df510:
    lda #$3c
    sta $1be8
    lda #$0e
    sta $1be0

loc_0df51a:
    dec $1be8
    beq loc_0df520
    rts

loc_0df520:
    lda #$0f
    sta $f4
    lda #$fe
    sta $f3

loc_0df528:
    lda #$18
    sta $00

loc_0df52c:
    lda $00
    bne loc_0df52c
    lda $f4
    bne loc_0df528
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

loc_0df54d:
    lda HVBJOY
    bit #$80
    bne loc_0df54d

loc_0df554:
    lda HVBJOY
    bit #$80
    beq loc_0df554
    lda #$8f
    sta INIDISP
    sta $f4
    pla
    plb
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
    lda #$ffff
    trb $1b9c
    lda #$ffff
    trb $1c67
    sep #$20
.a8
    lda #$ff
    trb $1cb8
    rep #$20
.a16
    lda #$0004
    trb $1b84
    sep #$20
.a8
    lda #$01
    trb $1cd3
    rep #$20
.a16
    lda $1b6a
    sta $1b68
    stz $d9f3
    sep #$20
.a8
    pla
    pla
    plp
    plb
    rtl

loc_0df5a9:
    rep #$20
.a16
    lda $1b84
    bit #$0800
    sep #$20
.a8
    beq loc_0df5bd
    lda #$0b
    sta $1b6a
    brl loc_0df510

loc_0df5bd:
    jsr sub_0df5d2
    rep #$20
.a16
    lda #$0080
    tsb $1b86
    sep #$20
.a8
    lda #$00
    sta $1b6a
    brl loc_0df510

sub_0df5d2:
    rep #$20
.a16
    lda #$ffff
    trb $1b86
    lda #$ffff
    trb $1b88
    lda #$ffff
    trb $1b8a
    lda #$ffff
    trb $1b8c
    lda #$ffff
    trb $d7fa
    lda #$ffff
    trb $1b94
    lda #$ffff
    trb $1b92
    lda #$ffff
    trb $d7f8
    lda #$ffff
    trb $1b90
    lda #$1000
    trb $1b9c
    lda #$0000
    sta $1b78
    lda #$0000
    sta $da21
    stz $db49
    stz $da5b
    sep #$20
.a8
    jsr sub_0df631
    stz $d7e8
    stz $d7e9
    stz $d7ea
    rts

sub_0df631:
    php
    rep #$20
.a16
    stz $d816
    stz $d818
    stz $d81a
    stz $d81c
    stz $d81e
    stz $d820
    stz $d826
    stz $d828
    stz $d82a
    stz $d82c
    plp
.a8
    rts

sub_0df654:
    lda $1bea
    cmp #$02
    beq loc_0df664
    lda $d97a
    cmp #$ff
    beq loc_0df66f
    bra loc_0df679

loc_0df664:
    ldx $1c0c
    beq loc_0df679
    dex
    stx $1c0c
    bne loc_0df679

loc_0df66f:
    rep #$20
.a16
    lda #$0010
    trb $1b84
    sep #$20

loc_0df679:
.a8
    rep #$20
.a16
    lda $1b84
    bit #$0010
    sep #$20
.a8
    bne loc_0df691
    rep #$20
.a16
    lda $1296
    bit #$9000
    sep #$20
.a8
    bne loc_0df693

loc_0df691:
    clc
    rts

loc_0df693:
    lda #$04
    rep #$20
.a16
    and #$00ff
    jsl QueueSound
    sep #$20
.a8
    sec
    rts

sub_0df6a2:
    php
    phb
    sep #$20
    lda #$7e
    pha
    plb
    rep #$20
.a16
    stz $1bb1
    stz $1bb3
    lda $1b86
    sta $d830
    lda $da33
    asl a
    tax
    lda $0df824,x
    sta $d826
    tay
    lda #$0000
    jsr sub_0df7f0
    lda $da3d
    asl a
    tax
    lda $0df824,x
    sta $d822
    tay
    lda #$0000
    jsr sub_0df7f0
    lda $1b86
    bit #$0200
    bne loc_0df6e9
    brl loc_0df792

loc_0df6e9:
    lda $d7f2
    asl a
    tax
    lda $0df81b,x
    sta $d9f1
    sec
    sbc $da5b
    bcc loc_0df71e
    tax
    jsl sub_03edcc
    sta $d81a
    ldx $d7f2
    lda $0df821,x
    and #$00ff
    tay
    lda $d81a
    jsl sub_7f7715
    sty $d81a
    sta $d81c
    jsr sub_0df7f0

loc_0df71e:
    lda #$0064
    sec
    sbc $db49
    tax
    jsl sub_03edcc
    ldy #$0005
    jsl sub_7f7715
    sta $d820
    sty $d81e
    jsr sub_0df7f0
    lda $db49
    bne loc_0df75b
    lda #$2710
    clc
    adc $d81e
    sta $d81e
    lda #$0000
    adc $d820
    sta $d820
    ldy #$2710
    lda #$0000
    jsr sub_0df7f0

loc_0df75b:
    lda $1b86
    bit #$0002
    bne loc_0df76f
    ldy #$2710
    sty $d82a
    lda #$0000
    jsr sub_0df7f0

loc_0df76f:
    lda $1b84
    bit #$0800
    bne loc_0df792
    lda $d7f2
    dec a
    bne loc_0df792
    lda $db49
    bne loc_0df792
    lda $703916
    bit #$0010
    bne loc_0df792
    inc $d9f3
    jsl sub_0befdb

loc_0df792:
    lda $d816
    clc
    adc $1bb1
    sta $1bad
    lda $d818
    adc $1bb3
    sta $1baf
    lda $1b84
    bit #$0800
    bne loc_0df7ed
    ldx #$0000
    ldy #$0000

loc_0df7b3:
    lda $1baf
    cmp $0df805,x
    beq loc_0df7c5
    bcs loc_0df7ce

loc_0df7be:
    iny
    inx
    inx
    inx
    inx
    bra loc_0df7b3

loc_0df7c5:
    lda $1bad
    cmp $0df803,x
    bcc loc_0df7be

loc_0df7ce:
    sty $d82e
    ldx #$0000
    lda $1b86
    bit #$0008
    bne loc_0df7e6
    inx
    lda $1b86
    bit #$0004
    bne loc_0df7e6
    inx

loc_0df7e6:
    stx $da27
    jsl sub_0bf035

loc_0df7ed:
    plb
    plp
.a8
    rtl

sub_0df7f0:
.a16
    sta $02
    tya
    clc
    adc $1bb1
    sta $1bb1
    lda $1bb3
    adc $02
    sta $1bb3
    rts
    .incbin "data/06f803-070000.bin"
