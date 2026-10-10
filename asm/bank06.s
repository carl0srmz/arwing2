.rombank $06

sub_068000:
.cpu
.a8
.i16
    phy
    php
    ldy #$033f
    bra loc_06800c

sub_068007:
    phy
    php
    ldy #$037e

loc_06800c:
    rep #$20
.a16
    jsl sub_7f249f
.a8
    rep #$20
.a16
    lda $12de
    cmp #$0514
    sep #$20
.a8
    bmi loc_068022
    jml loc_068052

loc_068022:
    rep #$20
.a16
    jsl sub_7f249f
.a8
    rep #$20
.a16
    lda $12de
    cmp #$0320
    sep #$20
.a8
    bmi loc_068038
    jml loc_068045

loc_068038:
    rep #$20
.a16
    lda #$0070
    jsl sub_7f6e09
    sep #$20
.a8
    bra loc_06805d

loc_068045:
    rep #$20
.a16
    lda #$3070
    jsl sub_7f6e09
    sep #$20
.a8
    bra loc_06805d

loc_068052:
    rep #$20
.a16
    lda #$6070
    jsl sub_7f6e09
    sep #$20

loc_06805d:
.a8
    plp
    ply
    rtl

sub_068060:
    lda $0024,y
    ora #$04
    sta $0024,y
    lda $0021,y
    ora #$01
    sta $0021,y
    lda #$00
    ora #$80
    sta $1cca,y
    lda #$01
    sta $002d,y
    lda #$01
    sta $002e,y
    stx $06,y
    lda $0020,y
    ora #$20
    sta $0020,y
    lda #$00
    sta $1cc8,y
    lda #$00
    sta $1cda,y
    jsl sub_7f2baa
    jsl sub_7f2bd2
    lda $0020,y
    and #$f7
    sta $0020,y
    lda $0022,y
    and #$fb
    sta $0022,y
    rtl

sub_0680ae:
    lda $12,x
    bmi loc_0680b9
    cmp #$1e
    bmi loc_0680c0
    dec a
    bra loc_0680be

loc_0680b9:
    cmp #$e2
    bpl loc_0680c0
    inc a

loc_0680be:
    sta $12,x

loc_0680c0:
    rtl

loc_0680c1:
    lda $22,x
    ora #$08
    sta $22,x
    lda #$00
    sta $0a,x
    rep #$20
.a16
    lda #$80d8
    sta $19,x
    sep #$20
.a8
    lda #$06
    sta $1b,x

loc_0680d8:
    lda $0a,x
    cmp #$64
    bpl loc_0680e2
    jml loc_0680f5

loc_0680e2:
    rep #$20
.a16
    lda #$80f5
    sta $19,x
    sep #$20
.a8
    lda #$06
    sta $1b,x
    lda #$00
    sta $17,x
    bra loc_0680f5

loc_0680f5:
    inc $0a,x
    ldy $12c3
    jsl sub_7f2bbe
    lda $0a,x
    cmp #$7f
    bpl loc_068108
    jml loc_06810e

loc_068108:
    lda $25,x
    ora #$08
    sta $25,x

loc_06810e:
    rtl

sub_06810f:
    phx
    phy
    php
    rep #$30
.a16
    txy
    and #$000f
    cmp #$0006
    bcc loc_068120
    lda #$0005

loc_068120:
    asl a
    asl a
    tax
    lda $068135,x
    sta $0004,y
    lda $068137,x
    sta $1ccd,y
    plp
.a8
    ply
    plx
    rtl
    .db $4c,$c2,$f4,$81,$4c,$c2,$fe,$82,$68,$c2,$f4,$81,$68,$c2,$fe,$82
    .db $e8,$c5,$f4,$81,$e8,$c5,$fe,$82,$da,$5a,$08,$e2,$20,$c2,$10,$da
    .db $bc,$d8,$1c,$bb,$ac,$c3,$12,$b9,$14,$00,$38,$f5,$14,$8d,$ae,$1d
    .db $c2,$20,$b9,$0c,$00,$38,$f5,$0c,$85,$02,$85,$04,$a9,$00,$00,$85
    .db $08,$85,$0a,$b9,$10,$00,$38,$f5,$10,$85,$97,$85,$e4,$e2,$20,$b5
    .db $14,$49,$ff,$1a,$22,$8a,$37,$7f,$fa,$c2,$20,$a5,$04,$9d,$cf,$1c
    .db $a5,$e4,$9d,$d3,$1c,$e2,$20,$ad,$ae,$1d,$9d,$d6,$1c,$28,$7a,$fa
    .db $6b

sub_0681a6:
    phy
    php
    ldy $14d6
    rep #$20
.a16
    lda $1d88
    sta $000c,y
    lda $1d8c
    sta $0010,y
    sep #$20
.a8
    lda $1ba9
    sta $0014,y
    lda #$00
    sta $02
    sta $04
    bit #$80
    beq loc_0681d1
    lda #$ff
    sta $05
    bra loc_0681d3

loc_0681d1:
    stz $05

loc_0681d3:
    lda #$00
    sta $08
    sta $0a
    bit #$80
    beq loc_0681e3
    lda #$ff
    sta $0b
    bra loc_0681e5

loc_0681e3:
    stz $0b

loc_0681e5:
    lda #$78
    sta $97
    sta $e4
    bit #$80
    beq loc_0681f5
    lda #$ff
    sta $e5
    bra loc_0681f7

loc_0681f5:
    stz $e5

loc_0681f7:
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
    sta $04
    lda $0a
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
    sta $e4
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
    tyx
    ply
    jsl sub_7f2188
    sep #$20
    xba
    eor #$ff
    inc a
    cmp $14,x
    beq loc_068249

loc_068249:
    sta $14,x
    phx
    tyx
    ply
    lda $0014,y
    sec
    sbc $1ba9
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    sta $1d8f
    plp
    ply
    rtl

sub_068260:
    jsl sub_7f19a7
    rep #$20
.a16
    lda #$01d8
    jsl sub_7f194e
    tay
    sep #$20
.a8
    sty $2b,x
    ldy $2b,x
    jsr sub_06d9ce
    lda #$ff
    sta $1cf0,x
    phy
    ldy $2b,x
    lda $6a72,y
    and #$ef
    sta $6a72,y
    ply
    stx $12c3
    sty $1e24
    lda $1e14
    sta $6bff,y
    lda #$01
    sta $2d,x
    lda $1dd1
    sta $6c00,y
    lda $1dd1
    sta $6c38,y
    rep #$20
.a16
    lda $d816
    sta $6c33,y
    lda $d817
    sta $6c34,y
    sep #$20
.a8
    jmp loc_0682b7

loc_0682b7:
    stx $150d
    stx $12c1
    stx $1509
    lda #$00
    ora #$80
    sta $1ccb,x
    lda #$00
    sta $2e,x
    lda $09,x
    and #$f7
    sta $09,x
    lda $22,x
    ora #$20
    sta $22,x
    lda $20,x
    ora #$08
    sta $20,x
    lda $24,x
    ora #$04
    sta $24,x
    lda $26,x
    ora #$10
    sta $26,x
    rts
    .db $23,$1e,$28,$e2,$20,$c2,$10,$b5,$23,$09,$40,$95,$23,$80,$0a

loc_0682f9:
    sep #$20
    rep #$10
    lda $23,x
    and #$bf
    sta $23,x
    lda $26,x
    ora #$08
    sta $26,x
    lda #$00
    sta $1de2
    lda #$01
    sta $1cda,x
    jsr sub_06832c
    jsl sub_06958c
    jsl sub_07b0ce
    rep #$20
.a16
    lda #$845c
    sta $19,x
    sep #$20
.a8
    lda #$06
    sta $1b,x
    rtl

sub_06832c:
    lda $21,x
    ora #$01
    sta $21,x
    lda #$ff
    sta $2d,x
    lda #$01
    sta $2e,x
    rep #$20
.a16
    lda #$845c
    sta $19,x
    sep #$20
.a8
    lda #$06
    sta $1b,x
    phy
    lda #$0c
    jsl sub_7f2360
    rep #$20
.a16
    lda #$f3a4
    sta $6a62,y
    sep #$20
.a8
    lda #$06
    sta $6a64,y
    ply
    jsr sub_068260
    rts
    .db $e2,$20,$c2,$10,$a9,$04,$8d,$e5,$1c,$ad,$74,$1d,$29,$af,$8d,$74
    .db $1d,$b5,$21,$09,$01,$95,$21,$20,$7f,$de,$4c,$be,$84,$e2,$20,$c2
    .db $10,$c2,$20,$a9,$9c,$bc,$95,$04,$e2,$20,$20,$7f,$de,$b4,$2b,$c2
    .db $20,$a9,$00,$00,$99,$16,$6c,$e2,$20,$c2,$20,$a9,$9c,$bc,$95,$04
    .db $e2,$20,$a9,$04,$8d,$e5,$1c,$a9,$00,$8d,$e6,$1c,$a9,$00,$8d,$74
    .db $1d,$c2,$20,$a9,$c0,$83,$95,$19,$e2,$20,$a9,$06,$95,$1b,$b5,$21
    .db $09,$01,$95,$21,$5a,$b5,$23,$29,$40,$f0,$04,$5c,$db,$83,$06,$c2
    .db $20,$ad,$96,$12,$ac,$92,$12,$80,$08,$c2,$20,$ad,$98,$12,$ac,$94
    .db $12,$8d,$36,$19,$8c,$38,$19,$e2,$20,$7a,$22,$cf,$bc,$0d,$6b,$e2
    .db $20,$c2,$10,$da,$5a,$08,$22,$81,$ac,$03,$a9,$00,$8d,$10,$19,$a9
    .db $ff,$8d,$0e,$19,$8d,$0f,$19,$22,$5f,$da,$0d,$28,$7a,$fa,$20,$7f
    .db $de,$5a,$b4,$2b,$c2,$20,$a9,$00,$00,$99,$13,$6c,$99,$16,$6c,$99
    .db $18,$6c,$e2,$20,$99,$15,$6c,$7a,$c2,$20,$a9,$9c,$bc,$95,$04,$e2
    .db $20,$a9,$04,$8d,$e5,$1c,$a9,$00,$8d,$e6,$1c,$ad,$74,$1d,$29,$af
    .db $8d,$74,$1d,$b5,$21,$09,$01,$95,$21,$5a,$b4,$2b,$c2,$20,$a9,$00
    .db $00,$99,$9a,$6a,$e2,$20,$99,$9c,$6a,$7a

loc_06845c:
    rep #$20
.a16
    lda #$0000
    sta $1d69
    sta $1d6b
    sta $1d6d
    sep #$20
.a8
    lda $1d72
    bne loc_068481
    phy
    ldy #$033f
    lda $0021,y
    ora #$20
    sta $0021,y
    ply
    jmp loc_068525

loc_068481:
    lda $1d73
    cmp #$ff
    bne loc_068489
    rtl

loc_068489:
    jsl sub_06a8d2
    rep #$20
.a16
    lda #$84a2
    sta $19,x
    sep #$20
.a8
    lda #$06
    sta $1b,x
    ldy $2b,x
    lda $1ce1
    sta $1ce3

loc_0684a2:
    ldy #$033f
    ldy $2b,x
    jsl sub_079489
    rep #$20
.a16
    lda #$0010
    trb $1b84
    sep #$20
.a8
    lda $1d72
    bne loc_0684be
    jml loc_0684ef

loc_0684be:
    ldy $2b,x
    phy
    lda $23,x
    and #$40
    beq loc_0684cb
    jml loc_0684d5

loc_0684cb:
    rep #$20
.a16
    lda $1296
    ldy $1292
    bra loc_0684dd

loc_0684d5:
.a8
    rep #$20
.a16
    lda $1298
    ldy $1294

loc_0684dd:
    sta $1936
    sty $1938
    sep #$20
.a8
    ply
    jsl sub_0dbccf
    jsl sub_07ea67
    rtl

loc_0684ef:
    ldy $2b,x
    lda $6b77,y
    ora #$01
    sta $6b77,y
    lda $1d73
    cmp #$1d
    bne loc_06850d
    phy
    ldy #$033f
    lda $0021,y
    ora #$20
    sta $0021,y
    ply

loc_06850d:
    rep #$20
.a16
    lda $0e,x
    sta $6b45,y
    sep #$20
.a8
    jsl sub_0797fb
    rep #$20
.a16
    lda $1ce3
    jsl sub_7f6e09
    sep #$20

loc_068525:
.a8
    sep #$20
    rep #$10
    lda $1e2f
    ora #$80
    sta $1e2f
    lda #$80
    sta $1e30
    sta $1e31
    jsr sub_06d9ff
    ldy $2b,x
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
    lda $6b77,y
    ora #$01
    sta $6b77,y
    lda $23,x
    and #$fd
    sta $23,x
    lda $26,x
    ora #$08
    sta $26,x
    phy
    lda #$0c
    jsl sub_7f2360
    rep #$20
.a16
    lda #$f3a4
    sta $6a62,y
    sep #$20
.a8
    lda #$06
    sta $6a64,y
    ply
    lda $21,x
    and #$fe
    sta $21,x
    lda $22,x
    and #$fb
    sta $22,x
    rep #$20
.a16
    lda #$9c27
    sta $19,x
    sep #$20
.a8
    lda #$06
    sta $1b,x
    phy
    lda #$06
    jsl sub_7f2360
    rep #$20
.a16
    lda #$9707
    sta $6a62,y
    sep #$20
.a8
    lda #$06
    sta $6a64,y
    lda #$05
    jsl sub_7f2360
    rep #$20
.a16
    lda #$9707
    sta $6a62,y
    sep #$20
.a8
    lda #$06
    sta $6a64,y
    lda #$07
    jsl sub_7f2360
    rep #$20
.a16
    lda #$9707
    sta $6a62,y
    sep #$20
.a8
    lda #$06
    sta $6a64,y
    ply
    rep #$20
.a16
    lda #$0000
    sta $6a9d,y
    sep #$20
.a8
    sta $6a9f,y
    phx
    rep #$30
.a16
    lda $1de2
    cmp #$000a
    bcc loc_0685f2
    lda #$0000

loc_0685f2:
    asl a
    tax
    lda $069d5e,x
    tax
    lda $1de3
    bit #$0080
    bne loc_068607
    lda $060000,x
    bra loc_06860b

loc_068607:
    lda $060002,x

loc_06860b:
    sta $6b7b,y
    sta $02
    lda $060004,x
    sta $1e56
    lda $060006,x
    sta $1e54
    sep #$20
.a8
    plx
    jsl sub_069586
    jmp loc_069c27
    .db $b5,$24,$29,$fd,$95,$24,$b4,$2b,$b9,$7d,$6b,$29,$a7,$99,$7d,$6b
    .db $ad,$4d,$1b,$29,$f8,$09,$01,$8d,$4d,$1b,$c2,$20,$ad,$0f,$1e,$e2
    .db $20,$d0,$04,$5c,$60,$86,$06,$ad,$13,$1e,$c9,$04,$f0,$0a,$ad,$4d
    .db $1b,$29,$f8,$09,$02,$8d,$4d,$1b,$b4,$2b,$5a,$b4,$2b,$a9,$00,$8d
    .db $ce,$1d,$a9,$11,$99,$a0,$6a,$7a,$ad,$e0,$1d,$09,$20,$8d,$e0,$1d
    .db $ad,$e1,$1d,$29,$7f,$8d,$e1,$1d,$20,$23,$db,$c2,$20,$a9,$06,$00
    .db $85,$02,$e2,$20,$22,$86,$95,$06,$b5,$24,$29,$fd,$95,$24,$b5,$20
    .db $09,$08,$95,$20,$e2,$20,$c2,$10,$b4,$2b,$b9,$9c,$6a,$85,$02,$c2
    .db $20,$b9,$9a,$6a,$85,$04,$e2,$20,$a5,$02,$c9,$07,$f0,$04,$5c,$c9
    .db $86,$06,$c2,$20,$a5,$04,$c9,$48,$80,$e2,$20,$d0,$04,$5c,$1a,$87
    .db $06,$c2,$20,$b9,$9d,$6a,$c9,$00,$00,$e2,$20,$f0,$04,$5c,$1a,$87
    .db $06,$b9,$7d,$6b,$89,$80,$f0,$04,$5c,$1a,$87,$06,$5a,$a0,$3f,$03
    .db $b9,$21,$00,$09,$08,$99,$21,$00,$b9,$21,$00,$09,$10,$99,$21,$00
    .db $7a,$22,$ca,$9c,$07,$5a,$b4,$2b,$e2,$20,$a9,$07,$99,$9c,$6a,$b9
    .db $64,$6b,$29,$f7,$99,$64,$6b,$c2,$20,$a9,$48,$80,$99,$9a,$6a,$e2
    .db $20,$7a,$5a,$b4,$2b,$b9,$72,$6a,$29,$ef,$99,$72,$6a,$7a,$b5,$23
    .db $09,$08,$95,$23,$22,$57,$94,$06,$22,$75,$90,$06,$b9,$9c,$6a,$85
    .db $02,$c2,$20,$b9,$9a,$6a,$85,$04,$e2,$20,$a5,$02,$c9,$07,$f0,$04
    .db $5c,$5b,$87,$06,$c2,$20,$a5,$04,$c9,$48,$80,$e2,$20,$d0,$04,$5c
    .db $5f,$87,$06,$22,$f1,$81,$07,$22,$2c,$e3,$06,$20,$26,$9a,$22,$36
    .db $9d,$07,$22,$42,$bf,$07,$da,$22,$f8,$90,$06,$c2,$20,$bf,$92,$96
    .db $06,$fa,$9d,$04,$00,$e2,$20

loc_06877f:
    ldy $2b,x
    lda $6a72,y
    ora #$80
    sta $6a72,y
    jsl sub_07af5b
    jsl sub_069195
    jsl sub_069236
    jsl sub_068fe2
    jsl sub_07b038
    jsl sub_07d6cc
    jsl sub_07dab2
    jml loc_069dba
    ldy $2b,x
    phy
    ldy $2b,x
    lda #$00
    sta $1dce
    lda #$12
    sta $6aa0,y
    ply
    lda $1de0
    ora #$20
    sta $1de0
    lda $1de1
    ora #$80
    sta $1de1
    jsr sub_06db23
    lda $1b4d
    and #$f8
    ora #$00
    sta $1b4d
    rep #$20
.a16
    lda #$0008
    sta $02
    sep #$20
.a8
    jsl sub_069586
    phy
    ldy #$033f
    lda $0021,y
    ora #$08
    sta $0021,y
    lda $0021,y
    ora #$10
    sta $0021,y
    ply
    jsr sub_06883c
    lda $20,x
    ora #$08
    sta $20,x
    lda $24,x
    and #$fd
    sta $24,x
    phy
    ldy $2b,x
    lda $6a72,y
    and #$ef
    sta $6a72,y
    ply
    lda $23,x
    ora #$08
    sta $23,x
    jsl sub_069457
    jsl sub_069075
    jsl sub_06e2ee
    jsr sub_069a26
    phx
    jsl sub_0690f8
    rep #$20
.a16
    lda $069692,x
    plx
    sta $0004,x
    sep #$20
.a8
    jmp loc_06877f

sub_06883c:
    lda $6b77,y
    bit #$04
    beq loc_068847
    jml loc_06886a

loc_068847:
    jsl sub_079cca
    phy
    ldy $2b,x
    sep #$20
    lda #$07
    sta $6a9c,y
    lda $6b64,y
    and #$f7
    sta $6b64,y
    rep #$20
.a16
    lda #$8089
    sta $6a9a,y
    sep #$20
.a8
    ply
    bra loc_06888b

loc_06886a:
    jsl sub_079cca
    phy
    ldy $2b,x
    sep #$20
    lda #$07
    sta $6a9c,y
    lda $6b64,y
    and #$f7
    sta $6b64,y
    rep #$20
.a16
    lda #$8048
    sta $6a9a,y
    sep #$20
.a8
    ply

loc_06888b:
    rts
    .incbin "data/03088c-030fe2.bin"

sub_068fe2:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6b9b,y
    bit #$3f
    bne loc_068ff5
    jml loc_069072

loc_068ff5:
    dec a
    sta $6b9b,y
    bit #$80
    bne loc_069020
    and #$3f
    cmp #$3d
    bne loc_069072
    lda $6b9b,y
    and #$bf
    sta $6b9b,y
    rep #$20
.a16
    lda #$001e
    cpx $12c3
    beq loc_069018
    ora #$8000

loc_069018:
    jsl sub_7f6e09
    sep #$20
.a8
    bra loc_069072

loc_069020:
    and #$3f
    cmp #$3d
    bne loc_069041
    rep #$20
.a16
    lda #$001f
    cpx $12c3
    beq loc_069033
    ora #$8000

loc_069033:
    jsl sub_7f6e09
    sep #$20
.a8
    lda $6b9b,y
    and #$bf
    sta $6b9b,y

loc_069041:
    lda $1e13
    cmp #$01
    beq loc_06904c
    jml loc_069072

loc_06904c:
    lda $21,x
    and #$20
    bne loc_069056
    jml loc_069072

loc_069056:
    lda $6b9b,y
    and #$3f
    cmp #$37
    bne loc_069072
    rep #$20
.a16
    lda #$00a9
    cpx $12c3
    beq loc_06906c
    ora #$8000

loc_06906c:
    jsl sub_7f6e09
    sep #$20

loc_069072:
.a8
    plp
    ply
    rtl

sub_069075:
    phy
    ldy $2b,x
    lda $1936
    bit #$10
    beq loc_069086
    lda $6b7e,y
    ora #$80
    bra loc_069092

loc_069086:
    lda $1936
    bit #$20
    beq loc_069095
    lda $6b7e,y
    and #$7f

loc_069092:
    sta $6b7e,y

loc_069095:
    lda $6b7e,y
    and #$9f
    sta $6b7e,y
    lda $1938
    and #$30
    beq loc_0690d2
    cmp #$30
    beq loc_0690ae
    bit #$20
    bne loc_0690bc
    bra loc_0690ca

loc_0690ae:
    lda $6b7e,y
    bit #$80
    bne loc_0690c3
    lda $1938
    bit #$20
    beq loc_0690d2

loc_0690bc:
    lda $6b7e,y
    ora #$40
    bra loc_0690cf

loc_0690c3:
    lda $1938
    bit #$10
    beq loc_0690d2

loc_0690ca:
    lda $6b7e,y
    ora #$20

loc_0690cf:
    sta $6b7e,y

loc_0690d2:
    ply
    rtl

sub_0690d4:
    php
    rep #$30
.a16
    phy
    ldy $2b,x
    lda $6bff,y
    and #$00ff
    cmp #$0006
    bcc loc_0690e8
    lda #$0000

loc_0690e8:
    ply
    tax
    plp
.a8
    rtl

sub_0690ec:
    php
    rep #$30
.a16
    jsl sub_0690d4
    txa
    asl a
    tax
    plp
.a8
    rtl

sub_0690f8:
    php
    rep #$30
.a16
    jsl sub_0690d4
    txa
    and #$fffe
    tax
    plp
.a8
    rtl

sub_069106:
    php
    rep #$30
.a16
    jsl sub_0690d4
    txa
    lsr a
    tax
    plp
    rtl
    .db $da,$5a,$08,$e2,$20,$c2,$10,$b4,$2b,$b9,$04,$6c,$29,$0f,$c9,$09
    .db $b0,$1c,$18,$65,$02,$c9,$09,$90,$02,$a9,$09,$29,$0f,$85,$04,$b9
    .db $04,$6c,$29,$f0,$05,$04,$99,$04,$6c,$28,$7a,$fa,$18,$6b,$28,$7a
    .db $fa,$38,$6b,$da,$5a,$08,$e2,$20,$c2,$10,$b4,$2b,$b9,$04,$6c,$20
    .db $5e,$91,$20,$69,$91,$99,$04,$6c,$28,$7a,$fa,$6b,$48,$4a,$4a,$4a
    .db $4a,$29,$0f,$85,$02,$68,$60,$48,$29,$0f,$85,$04,$68,$29,$f0,$18
    .db $69,$10,$c9,$40,$90,$02,$a9,$00,$05,$04,$60,$da,$5a,$08,$e2,$20
    .db $c2,$10,$b4,$2b,$b9,$04,$6c,$4a,$4a,$4a,$4a,$29,$0f,$85,$02,$28
    .db $7a,$fa,$6b

sub_069195:
.a8
    phy
    ldy $2b,x
    jsl sub_0691ac
    lda $6ada,y
    sta $3a
    lda #$00
    jsl sub_7f27b5
    sta $6ada,y
    ply
    rtl

sub_0691ac:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6be3,y
    and #$3f
    beq loc_0691ec
    lda $c4
    and #$03
    bne loc_0691c5
    jml loc_0691cb

loc_0691c5:
    lda $20,x
    ora #$02
    sta $20,x

loc_0691cb:
    lda $6be3,y
    pha
    and #$c0
    sta $6be3,y
    pla
    dec a
    ora $6be3,y
    sta $6be3,y
    beq loc_0691ec
    lda $22,x
    ora #$08
    sta $22,x
    lda $21,x
    ora #$01
    sta $21,x
    bra loc_0691f8

loc_0691ec:
    lda $22,x
    and #$f7
    sta $22,x
    lda $21,x
    and #$fe
    sta $21,x

loc_0691f8:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_069207
    jmp loc_06922d

loc_069207:
    lda $6be2,y
    and #$3f
    beq loc_06921d
    dec a
    sta $3a
    lda $6be2,y
    and #$c0
    ora $3a
    sta $6be2,y
    bra loc_06922d

loc_06921d:
    lda $6b7d,y
    bit #$80
    bne loc_069228
    jml loc_069233

loc_069228:
    lda #$3f
    sta $6be2,y

loc_06922d:
    lda $22,x
    ora #$08
    sta $22,x

loc_069233:
    plp
    ply
    rtl

sub_069236:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda $6c13,y
    cmp #$c1c9
    sep #$20
.a8
    bne loc_06924f
    jml loc_069263

loc_06924f:
    lda $d7f4
    beq loc_069263
    lda $1ce5
    sta $1dae
    jsr sub_069267
    lda $1dae
    sta $1ce5

loc_069263:
    plp
    ply
    plx
    rtl

sub_069267:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$30
    bne loc_069278
    jml loc_06940a

loc_069278:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    bne loc_069289
    jml loc_0693e1

loc_069289:
    phy
    ldy $2b,x
    lda $6b7d,y
    ply
    bit #$80
    beq loc_069298
    jml loc_0692a7

loc_069298:
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    bne loc_0692a7
    jml loc_0692b2

loc_0692a7:
    lda $1dae
    and #$80
    sta $1dae
    jmp loc_0693cb

loc_0692b2:
    ldy $2b,x
    lda $1dae
    and #$93
    sta $1dae
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    bit #$40
    beq loc_0692cb
    jml loc_0692e0

loc_0692cb:
    lda $6b77,y
    bit #$20
    beq loc_0692d6
    jml loc_0692ea

loc_0692d6:
    lda $1dae
    ora #$04
    sta $1dae
    bra loc_0692f2

loc_0692e0:
    lda $1dae
    ora #$08
    sta $1dae
    bra loc_0692f2

loc_0692ea:
    lda $1dae
    ora #$0c
    sta $1dae

loc_0692f2:
    lda $1dae
    and #$ec
    sta $1dae
    rep #$20
.a16
    lda $34,x
    sta $08
    sep #$20
.a8
    rep #$20
.a16
    lda $08
    bpl loc_06930e
    eor #$ffff
    inc a
    sta $08

loc_06930e:
    sep #$20
.a8
    lda #$00
    sta $03
    phx
    jsl sub_0690d4
    lda $06dbc0,x
    sta $02
    plx
    lsr $02
    lsr $02
    lsr $02
    rep #$20
.a16
    lda $08
    cmp $02
    sep #$20
.a8
    bpl loc_069334
    jml loc_06933c

loc_069334:
    lda $1dae
    ora #$10
    sta $1dae

loc_06933c:
    rep #$20
.a16
    lda $6acd,y
    sta $1db0
    sep #$20
.a8
    rep #$20
.a16
    lda $1db0
    sep #$20
.a8
    bmi loc_069353
    jml loc_069361

loc_069353:
    rep #$20
.a16
    lda $1db0
    eor #$ffff
    inc a
    sta $1db0
    sep #$20

loc_069361:
.a8
    phy
    ldy $2b,x
    lda $6add,y
    bpl loc_06936c
    eor #$ff
    inc a

loc_06936c:
    ply
    cmp #$0a
    bmi loc_069375
    jml loc_0693c1

loc_069375:
    rep #$20
.a16
    lda $1db0
    cmp #$03c0
    sep #$20
.a8
    beq loc_069387
    bmi loc_069387
    jml loc_0693c1

loc_069387:
    rep #$20
.a16
    lda $1db0
    cmp #$0300
    sep #$20
.a8
    beq loc_069399
    bmi loc_069399
    jml loc_0693b7

loc_069399:
    rep #$20
.a16
    lda $1db0
    cmp #$0200
    sep #$20
.a8
    beq loc_0693ab
    bmi loc_0693ab
    jml loc_0693ad

loc_0693ab:
    bra loc_0693cb

loc_0693ad:
    lda $1dae
    ora #$01
    sta $1dae
    bra loc_0693cb

loc_0693b7:
    lda $1dae
    ora #$02
    sta $1dae
    bra loc_0693cb

loc_0693c1:
    lda $1dae
    ora #$03
    sta $1dae
    bra loc_0693cb

loc_0693cb:
    lda $6b7d,y
    bit #$80
    bne loc_0693d6
    jml loc_069456

loc_0693d6:
    lda $1dae
    ora #$40
    sta $1dae
    jmp loc_069456

loc_0693e1:
    ldy $2b,x
    lda $1dae
    and #$80
    sta $1dae
    lda $1e13
    cmp #$01
    beq loc_0693f6
    jml loc_069456

loc_0693f6:
    lda $21,x
    and #$20
    bne loc_069400
    jml loc_069456

loc_069400:
    lda $1dae
    ora #$40
    sta $1dae
    bra loc_069456

loc_06940a:
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    bne loc_069419
    jml loc_069424

loc_069419:
    lda $1dae
    and #$00
    sta $1dae
    jmp loc_069456

loc_069424:
    lda $1dae
    and #$c3
    sta $1dae
    phy
    ldy $2b,x
    lda $6aea,y
    ply
    bit #$80
    bne loc_06943e
    lda #$00
    sta $1dae
    bra loc_069443

loc_06943e:
    lda #$2c
    sta $1dae

loc_069443:
    lda $6ae9,y
    bit #$08
    bne loc_06944e
    jml loc_069456

loc_06944e:
    lda $1dae
    ora #$34
    sta $1dae

loc_069456:
    rts

sub_069457:
    phy
    php
    sep #$20
    rep #$10
    ldy #$0000
    sty $1938
    sty $1936
    ldy $2b,x
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_069477
    jmp loc_06953b

loc_069477:
    lda $6b7d,y
    bit #$80
    beq loc_069482
    jml loc_06953b

loc_069482:
    phy
    lda $23,x
    and #$40
    beq loc_06948d
    jml loc_069497

loc_06948d:
    rep #$20
.a16
    lda $1296
    ldy $1292
    bra loc_06949f

loc_069497:
.a8
    rep #$20
.a16
    lda $1298
    ldy $1294

loc_06949f:
    sta $1936
    sty $1938
    sep #$20
.a8
    ply
    lda $6aa0,y
    and #$f0
    cmp #$10
    beq loc_0694b5
    jml loc_0694d2

loc_0694b5:
    lda #$80
    and $1dcf
    beq loc_0694d2
    rep #$20
.a16
    lda $1938
    jsr sub_06953e
    sta $1938
    lda $1936
    jsr sub_06953e
    sta $1936
    sep #$20

loc_0694d2:
.a8
    lda $1dd0
    beq loc_0694ed
    rep #$20
.a16
    lda $1938
    jsr sub_069556
    sta $1938
    lda $1936
    jsr sub_069556
    sta $1936
    sep #$20

loc_0694ed:
.a8
    rep #$20
.a16
    lda $1938
    sta $1da7
    lda $1936
    sta $1da9
    sep #$20
.a8
    lda $6b77,y
    and #$01
    beq loc_069508
    jml loc_06951c

loc_069508:
    rep #$20
.a16
    lda $1938
    and #$1000
    sta $1938
    lda $1936
    and #$1000
    sta $1936

loc_06951c:
.a8
    rep #$20
.a16
    lda $6a88,y
    ora $1936
    sta $1936
    lda $6a8a,y
    ora $1938
    sta $1938
    lda #$0000
    sta $6a8a,y
    sta $6a88,y
    sep #$20

loc_06953b:
.a8
    plp
    ply
    rtl

sub_06953e:
.a16
    pha
    and #$f3ff
    sta $02
    pla
    pha
    and #$0400
    asl a
    sta $04
    pla
    and #$0800
    lsr a
    ora $04
    ora $02
    rts

sub_069556:
    sta $02
    stz $04
    and #$0080
    lsr a
    sta $04
    lda $02
    and #$8000
    xba
    ora $04
    sta $04
    lda $02
    and #$0040
    xba
    ora $04
    sta $04
    lda $02
    and #$4000
    asl a
    ora $04
    sta $04
    lda $02
    and #$3f3f
    ora $04
    rts

sub_069586:
.a8
    lda $02
    sta $1cc7,x
    rtl

sub_06958c:
    phx
    phy
    php
    sep #$20
    rep #$10
    phy
    lda $23,x
    and #$40
    beq loc_06959e
    jml loc_0695a8

loc_06959e:
    rep #$20
.a16
    lda $1296
    ldy $1292
    bra loc_0695b0

loc_0695a8:
.a8
    rep #$20
.a16
    lda $1298
    ldy $1294

loc_0695b0:
    sta $1936
    sty $1938
    sep #$20
.a8
    ply
    rep #$20
.a16
    lda #$0000
    sta $1938
    sta $1936
    sep #$20
.a8
    lda #$00
    sta $1de2
    stz $1dce
    stz $1dde
    stz $1ddf
    lda $1dd5
    cmp $1dd1
    bpl loc_0695df
    sta $1dd1

loc_0695df:
    stz $1df2
    ldy #$0320
    sty $1df9
    ldy #$fff6
    sty $1dfb
    stz $1de1
    stz $1e08
    stz $1b4d
    stz $1e2f
    stz $d7d5
    stz $1d99
    stz $1d72
    lda #$fe
    sta $1d73
    sta $1d75
    sta $1d76
    stz $1d74
    stz $1d7a
    ldy #$0000
    sty $1d7b
    stz $1e16
    stz $1e17
    stz $1e0a
    stz $1d9d
    stz $1e1b
    stz $1e1b
    stz $1e0d
    stz $1e0e
    stz $1ce5
    stz $1ce6
    lda #$64
    sta $1e30
    sta $1e30
    rep #$20
.a16
    stz $1dff
    stz $1e01
    stz $1e03
    stz $1e05
    stz $1d92
    stz $1d94
    stz $1d96
    stz $1e18
    stz $1d9b
    stz $d7ec
    stz $d7ee
    stz $d7f0
    stz $1e1c
    stz $1e1e
    stz $1e20
    stz $1e4e
    stz $1e52
    stz $1e3c
    stz $1e40
    stz $1e48
    stz $1e0b
    stz $1e0f
    rep #$20
    stz $1d6f
    sep #$20
.a8
    stz $1d71
    plp
    ply
    plx
    rtl
    .db $4c,$c2,$68,$c2,$e8,$c5,$14,$c9,$4c,$c9,$30,$c9,$14,$c9,$4c,$c9
    .db $30,$c9,$08,$e2,$20,$c2,$10,$b9,$24,$00,$09,$04,$99,$24,$00,$b9
    .db $21,$00,$09,$01,$99,$21,$00,$a9,$01,$99,$2d,$00,$a9,$01,$99,$2e
    .db $00,$96,$06,$22,$aa,$2b,$7f,$22,$d2,$2b,$7f,$b9,$20,$00,$29,$f7
    .db $99,$20,$00,$28,$6b

sub_0696d7:
    phy
    php
    rep #$30
.a16
    ldy $2b,x
    lda $6bed,y
    sta $0c,x
    lda $6bef,y
    sta $0e,x
    lda $6bf1,y
    sta $10,x
    plp
    ply
    rts

sub_0696ef:
.a8
    phy
    php
    rep #$30
.a16
    ldy $2b,x
    lda $0c,x
    sta $6bed,y
    lda $0e,x
    sta $6bef,y
    lda $10,x
    sta $6bf1,y
    plp
    ply
    rts

loc_069707:
.a8
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6be3,y
    beq loc_069719
    jml loc_06979c

loc_069719:
    lda $6b77,y
    bit #$01
    bne loc_069724
    jml loc_06979c

loc_069724:
    lda $cf2f
    sta $cf2f
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_069739
    jml loc_06979c

loc_069739:
    ldy $cf2d
    rep #$20
.a16
    lda $0004,y
    tay
    sep #$20
.a8
    lda $d7f4
    bne loc_06974d
    jml loc_06979c

loc_06974d:
    lda $1d72
    beq loc_069756
    jml loc_06979c

loc_069756:
    phy
    ldy $2b,x
    lda $6c02,y
    ply
    and #$1f
    beq loc_069765
    jml loc_069783

loc_069765:
    phy
    ldy $2b,x
    lda $6c02,y
    ply
    and #$40
    bne loc_069774
    jml loc_0697aa

loc_069774:
    lda $0031,y
    and #$08
    cmp #$08
    beq loc_069781
    jml loc_0697aa

loc_069781:
    bra loc_069794

loc_069783:
    phy
    ldy $2b,x
    lda #$01
    sta $6c11,y
    lda $6c12,y
    ora #$08
    sta $6c12,y
    ply

loc_069794:
    jsl sub_06ab05
    jsl sub_07f1ae

loc_06979c:
    lda #$00
    sta $cf2f
    lda $20,x
    and #$fd
    sta $20,x
    jmp loc_069824

loc_0697aa:
    lda $0025,y
    and #$80
    bne loc_0697b5
    jml loc_0697e3

loc_0697b5:
    phy
    ldy $2b,x
    lda $38,x
    bit #$02
    beq loc_0697c6
    lda $6be4,y
    ora #$80
    sta $6be4,y

loc_0697c6:
    lda $38,x
    bit #$04
    beq loc_0697d4
    lda $6be4,y
    ora #$40
    sta $6be4,y

loc_0697d4:
    lda $38,x
    bit #$01
    beq loc_0697e2
    lda $6be4,y
    ora #$20
    sta $6be4,y

loc_0697e2:
    ply

loc_0697e3:
    lda $38,x
    and #$f8
    sta $38,x
    jsl sub_069842
    jsl sub_06aaae
    lda $cf2f
    cmp #$04
    bpl loc_0697fc
    jml loc_069811

loc_0697fc:
    rep #$20
.a16
    lda #$0012
    cpx $12c3
    beq loc_069809
    ora #$8000

loc_069809:
    jsl sub_7f6e09
    sep #$20
.a8
    bra loc_069824

loc_069811:
    rep #$20
.a16
    lda #$0013
    cpx $12c3
    beq loc_06981e
    ora #$8000

loc_06981e:
    jsl sub_7f6e09
    sep #$20

loc_069824:
.a8
    ldy $2b,x
    lda $6c00,y
    beq loc_06983e
    sec
    sbc $cf2f
    sta $6c00,y
    bpl loc_069839
    lda #$00
    sta $6c00,y

loc_069839:
    lda #$00
    sta $cf2f

loc_06983e:
    plp
    ply
    plx
    rtl

sub_069842:
    php
    sep #$20
    rep #$10
    lda $1de2
    cmp #$09
    beq loc_06989f
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    bne loc_06985f
    jml loc_06989f

loc_06985f:
    lda $0031,y
    and #$08
    cmp #$08
    bne loc_06986c
    jml loc_06989f

loc_06986c:
    phy
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $1ce2,x
    beq loc_06987c

loc_06987c:
    sta $1ce2,x
    lda $14,x
    cmp $1ce2,x
    bmi loc_06988a
    lda #$40
    bra loc_06988c

loc_06988a:
    lda #$c0

loc_06988c:
    ldy $14d6
    ldy $2b,x
    sta $6ad4,y
    cmp #$80
    ror a
    bpl loc_06989b
    adc #$00

loc_06989b:
    sta $6aad,y
    ply

loc_06989f:
    plp
    rtl
    .db $5a,$b4,$1e,$d0,$04,$5c,$cb,$98,$06,$c2,$20,$b9,$04,$00,$a8,$e2
    .db $20,$b9,$25,$00,$29,$80,$d0,$04,$5c,$bd,$98,$06,$c2,$20,$b9,$00
    .db $00,$a8,$e2,$20,$f0,$04,$5c,$aa,$98,$06,$7a,$60,$5a,$08,$e2,$20
    .db $c2,$10,$b4,$2b,$b9,$9b,$6b,$89,$40,$f0,$04,$5c,$36,$99,$06,$ad
    .db $13,$1e,$c9,$01,$f0,$04,$5c,$00,$99,$06,$b5,$21,$29,$20,$d0,$04
    .db $5c,$00,$99,$06,$b9,$64,$6b,$89,$02,$d0,$04,$5c,$36,$99,$06,$ad
    .db $13,$1e,$c9,$01,$d0,$0a,$b5,$21,$29,$20,$f0,$04,$5c,$1c,$99,$06
    .db $b9,$64,$6b,$89,$02,$f0,$04,$5c,$36,$99,$06,$ad,$37,$19,$89,$20
    .db $f0,$13,$b9,$ec,$6b,$29,$18,$d0,$0c,$b9,$a1,$6a,$29,$f0,$05,$02
    .db $99,$a1,$6a,$80,$00,$c2,$20,$b9,$a1,$6a,$29,$0f,$00,$29,$0f,$00
    .db $d0,$04,$5c,$a6,$99,$06,$48,$b9,$a0,$6a,$29,$0f,$00,$85,$3a,$68
    .db $c5,$3a,$f0,$51,$20,$ac,$99,$b9,$a0,$6a,$29,$f0,$00,$c5,$02,$f0
    .db $1f,$b9,$ec,$6b,$89,$08,$00,$d0,$3c,$89,$10,$00,$f0,$09,$29,$ef
    .db $ff,$09,$08,$00,$99,$ec,$6b,$20,$cc,$99,$a5,$97,$f0,$27,$80,$18
    .db $b9,$a1,$6a,$29,$f0,$ff,$99,$a1,$6a,$a5,$08,$85,$02,$e2,$20,$a5
    .db $02,$9d,$c7,$1c,$28,$7a,$18,$6b,$85,$02,$e2,$20,$a5,$02,$9d,$c7
    .db $1c,$28,$7a,$38,$6b,$e2,$20,$28,$7a,$18,$6b,$da,$5a,$08,$c2,$30
    .db $b4,$2b,$b9,$a1,$6a,$29,$0f,$00,$0a,$0a,$aa,$bf,$10,$9a,$06,$85
    .db $02,$bf,$12,$9a,$06,$85,$08,$28,$7a,$fa,$60,$da,$5a,$08,$e2,$20
    .db $c2,$10,$b4,$2b,$b9,$a0,$6a,$29,$f0,$c9,$20,$d0,$04,$5c,$07,$9a
    .db $06,$b9,$a0,$6a,$29,$f0,$c9,$30,$d0,$04,$5c,$02,$9a,$06,$b9,$a1
    .db $6a,$29,$0f,$c9,$04,$f0,$05,$a0,$0d,$00,$80,$0d,$a0,$09,$00,$80
    .db $08,$a0,$0f,$00,$80,$03,$a0,$0b,$00,$84,$97,$28,$7a,$fa,$60,$00
    .db $00,$00,$00,$10,$00,$05,$00,$10,$00,$07,$00,$30,$00,$03,$00,$20
    .db $00,$00,$00,$00,$00

sub_069a26:
    jsl sub_078000
    jsl sub_0797fb
    rts

sub_069a2f:
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
    jsr sub_069a44
    jmp loc_069c22

sub_069a44:
    ldy $2b,x
    rep #$20
.a16
    lda $08
    sta $6bf5,y
    lda $0a
    sta $6bf7,y
    sep #$20
.a8
    lda $02
    sta $6bf9,y
    lda $04
    sta $6bfa,y
    rts

sub_069a5f:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    ldx $12c3
    beq loc_069a8f
    ldy $2b,x
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $08
    sta $6bfb,y
    sep #$20
.a8
    lda $0a
    sta $6b49,y
    lda $02
    sta $6bfd,y
    lda $04
    sta $6bfe,y
    lda $a7
    sta $6b59,y

loc_069a8f:
    jmp loc_069c22

loc_069a92:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    ldx $12c3
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $1de4
    sta $0c,x
    lda $1de6
    sta $0e,x
    lda $1de8
    sta $10,x
    sep #$20
.a8
    ldy $2b,x
    lda $1dea
    sta $6abc,y
    sta $14,x
    eor #$ff
    inc a
    sta $6b34,y
    ldy #$033f
    sta $0015,y
    jmp loc_069c22
    .db $8b,$da,$5a,$08,$e2,$20,$c2,$10,$a9,$7e,$48,$ab,$ae,$c3,$12,$20
    .db $f6,$9a,$c2,$20,$ad,$16,$19,$c9,$c0,$00,$e2,$20,$f0,$08,$ae,$c5
    .db $12,$20,$f6,$9a,$80,$00,$4c,$22,$9c,$b4,$2b,$b9,$65,$6b,$09,$40
    .db $99,$65,$6b,$60,$4c,$22,$9c

sub_069b04:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    ldx $12c3
    lda #$7e
    pha
    plb
    ldy $2b,x
    lda $6beb,y
    ora #$80
    sta $6beb,y
    jmp loc_069c22

loc_069b20:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    ldx $12c3
    lda #$7e
    pha
    plb
    ldy $2b,x
    lda $6beb,y
    and #$7f
    sta $6beb,y
    jmp loc_069c22

sub_069b3c:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy #$4650
    sty $1dc0
    bra loc_069b5a

sub_069b4c:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy #$0000
    sty $1dc0

loc_069b5a:
    ldx $12c3
    bne loc_069b63
    jml loc_069c1f

loc_069b63:
    lda #$7e
    pha
    plb
    lda $1d98
    clc
    adc #$01
    and #$07
    sta $1d98
    rep #$20
.a16
    lda $1de4
    sta $0c,x
    lda #$0000
    sta $0e,x
    lda $1de8
    sta $10,x
    ldy $14d6
    lda $1df3
    sta $000c,y
    lda #$0000
    sta $000e,y
    lda $1df5
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
    cmp $14,x
    beq loc_069ba8

loc_069ba8:
    sta $14,x
    rep #$20
.a16
    lda $1dc0
    beq loc_069bf3
    eor #$ffff
    inc a
    sta $97
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $02
    sta $04
    lda #$0000
    sta $08
    sta $0a
    lda $97
    sta $97
    sta $e4
    sep #$20
.a8
    lda $14,x
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

loc_069bf3:
.a8
    sep #$20
    ldy $2b,x
    lda $1dea
    sec
    sbc $14,x
    clc
    adc #$40
    bmi loc_069c06
    lda #$16
    bra loc_069c08

loc_069c06:
    lda #$16

loc_069c08:
    sta $6ae6,y
    lda $1dea
    sta $6abc,y
    sta $14,x
    eor #$ff
    inc a
    sta $6b34,y
    ldy #$033f
    sta $0015,y

loc_069c1f:
    jmp loc_069c22

loc_069c22:
    plp
    ply
    plx
    plb
    rtl

loc_069c27:
    ldy $2b,x
    sep #$20
    phx
    jsl sub_0690d4
    lda $06a474,x
    sta $1dd6
    plx
    phx
    jsl sub_0690d4
    lda $06a46e,x
    sta $1dd5
    plx
    lda $1dd5
    cmp $6c00,y
    bpl loc_069c50
    sta $6c00,y

loc_069c50:
    jsl sub_06a647
    sep #$20
    rep #$10
    lda $25,x
    and #$df
    sta $25,x
    rep #$20
.a16
    stz $1e1c
    stz $1e1e
    stz $1e20
    sep #$20
.a8
    lda $6be8,y
    cmp #$0a
    beq loc_069cad
    inc a
    sta $6be8,y
    cmp #$0a
    bne loc_069cad
    lda $6c00,y
    cmp #$0d
    bpl loc_069cad
    cmp #$05
    bmi loc_069c9a
    rep #$20
.a16
    lda #$0016
    cpx $12c3
    beq loc_069c92
    ora #$8000

loc_069c92:
    jsl sub_7f6e09
    sep #$20
.a8
    bra loc_069cad

loc_069c9a:
    rep #$20
.a16
    lda #$0017
    cpx $12c3
    beq loc_069ca7
    ora #$8000

loc_069ca7:
    jsl sub_7f6e09
    sep #$20

loc_069cad:
.a8
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    bne loc_069cbc
    jmp loc_069cc1

loc_069cbc:
    lda #$00
    sta $6c03,y

loc_069cc1:
    ldy $2b,x
    ldy $2b,x
    sep #$20
    jsl sub_0dbccf
    ldy $2b,x
    sep #$20
    lda $6c00,y
    sta $1dd1
    lda $6c05,y
    sta $1dd3
    lda $6c04,y
    sta $1dd2
    lda $6c06,y
    sta $1dd4
    jsl sub_07ea15
    rep #$20
.a16
    lda $1ce4,x
    cmp #$ffff
    sep #$20
.a8
    bne loc_069cfb
    jml loc_069d09

loc_069cfb:
    rep #$20
.a16
    lda $1ce4,x
    clc
    adc #$0001
    sta $1ce4,x
    sep #$20

loc_069d09:
.a8
    rep #$20
.a16
    lda #$9d1a
    sta $54
    sep #$20
.a8
    lda #$06
    sta $56
    jml loc_7f3282
    .db $06,$d5,$88,$00,$06,$76,$89,$00,$06,$45,$8a,$00,$06,$8b,$88,$00
    .db $06,$8b,$88,$00,$06,$27,$86,$00,$06,$9b,$86,$00,$06,$a8,$87,$00
    .db $06,$06,$88,$00,$06,$e8,$8b,$00,$06,$71,$8c,$00,$06,$97,$8c,$00
    .db $06,$fb,$8c,$00,$06,$2b,$8d,$00,$06,$56,$8d,$00,$06,$72,$8d,$00
    .db $06,$a0,$8d,$00,$72,$9d,$7a,$9d,$82,$9d,$8a,$9d,$92,$9d,$9a,$9d
    .db $a2,$9d,$aa,$9d,$72,$9d,$b2,$9d,$05,$00,$00,$00,$00,$00,$00,$00
    .db $05,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00
    .db $07,$00,$03,$00,$00,$01,$07,$00,$07,$00,$03,$00,$00,$01,$07,$00
    .db $07,$00,$03,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00
    .db $07,$00,$03,$00,$fa,$00,$08,$00,$05,$00,$00,$00,$00,$00,$00,$00

loc_069dba:
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6be7,y
    beq loc_069dcb
    dec a
    and #$07
    sta $6be7,y

loc_069dcb:
    ldy $2b,x
    lda $6abc,y
    sta $08
    lda #$16
    jsl sub_7f2a7b
    cpy #$0000
    beq loc_069dee
    jsl sub_7f2baa
    lda #$00
    sta $0012,y
    sta $0016,y
    lda $08
    sta $0014,y

loc_069dee:
    ldy $2b,x
    lda $1de2
    cmp #$09
    bne loc_069e25
    rep #$20
.a16
    lda $1bb5
    cmp #$000b
    sep #$20
.a8
    bne loc_069e0c
    lda $d787
    cmp #$ff
    beq loc_069e19
    bra loc_069e25

loc_069e0c:
    lda $d787
    cmp #$fe
    beq loc_069e19
    cmp #$ff
    bne loc_069e25
    bra loc_069e25

loc_069e19:
    lda $6be9,y
    bit #$80
    bne loc_069e22
    ora #$e0

loc_069e22:
    sta $6be9,y

loc_069e25:
    rep #$30
.a16
    lda $0c,x
    sta $6ac7,y
    lda $0e,x
    sta $6ac9,y
    lda $10,x
    sta $6acb,y
    sep #$20
.a8
    lda $d7f4
    beq loc_069e60
    rep #$20
.a16
    lda $1b8a
    bit #$0020
    sep #$20
.a8
    beq loc_069e60
    lda $1dde
    beq loc_069e60
    lda $6a71,y
    bit #$20
    bne loc_069e60
    ora #$20
    sta $6a71,y
    lda #$01
    jsl sub_7f6df8

loc_069e60:
    lda $6be6,y
    bit #$10
    beq loc_069ee3
    and #$ef
    sta $6be6,y
    bit #$08
    bne loc_069ee8
    ora #$08
    sta $6be6,y
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    bne loc_069e86
    jml loc_069ee8

loc_069e86:
    rep #$20
.a16
    lda #$00a7
    cpx $12c3
    beq loc_069e93
    ora #$8000

loc_069e93:
    jsl sub_7f6e09
    sep #$20
.a8
    lda #$02
    sta $6c11,y
    lda $6c12,y
    ora #$68
    sta $6c12,y
    rep #$20
.a16
    lda $6b3b,y
    cmp #$0000
    sep #$20
.a8
    beq loc_069eb6
    jml loc_069ec0

loc_069eb6:
    rep #$20
.a16
    lda #$0080
    sta $6b3b,y
    sep #$20

loc_069ec0:
.a8
    lda $6b77,y
    bit #$20
    beq loc_069ecb
    jml loc_069ed7

loc_069ecb:
    rep #$20
.a16
    lda #$0046
    sta $6b56,y
    sep #$20
.a8
    bra loc_069ee8

loc_069ed7:
    rep #$20
.a16
    lda #$000a
    sta $6b56,y
    sep #$20
.a8
    bra loc_069ee8

loc_069ee3:
    and #$e7
    sta $6be6,y

loc_069ee8:
    jsl sub_06aa1a
    jsl sub_07d1a8
    lda $1d72
    bne loc_069f21
    lda $d7f4
    beq loc_069f0d
    jsl sub_07cd70
    phy
    ldy $2b,x
    lda $6c02,y
    ply
    and #$5f
    bne loc_069f0d
    jml loc_069f0d

loc_069f0d:
    lda $6c02,y
    bit #$1f
    beq loc_069f21
    lda $c4
    and #$07
    bne loc_069f21
    lda $6c02,y
    dec a
    sta $6c02,y

loc_069f21:
    phx
    rep #$20
.a16
    lda $6aa2,y
    and #$0003
    asl a
    tax
    lda $06a31d,x
    plx
    sta $1cc8,x
    sep #$20
.a8
    lda $1e1b
    stz $1e1b
    sta $1dae
    beq loc_069f54
    clc
    adc $6c00,y
    cmp $1dd5
    bcc loc_069f4d
    lda $1dd5

loc_069f4d:
    sta $6c00,y
    jsl sub_07d0c6

loc_069f54:
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_069f63
    jml loc_069f74

loc_069f63:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    bne loc_069f74
    jml loc_069f7a

loc_069f74:
    jsl sub_7f2319
    bra loc_069fad

loc_069f7a:
    ldy $2b,x
    rep #$20
.a16
    lda $0e,x
    sta $1dae
    sep #$20
.a8
    lda $14,x
    sta $1db1
    rep #$20
.a16
    lda $6bf3,y
    sta $0e,x
    sep #$20
.a8
    lda $14,x
    clc
    adc $6aee,y
    sta $14,x
    jsl sub_7f2319
    rep #$20
.a16
    lda $1dae
    sta $0e,x
    sep #$20
.a8
    lda $1db1
    sta $14,x

loc_069fad:
    ldy $2b,x
    lda $1de2
    cmp #$09
    bne loc_069ff6
    rep #$20
.a16
    lda $1bb5
    cmp #$000b
    sep #$20
.a8
    beq loc_069fc9
    lda $d787
    cmp #$fe
    beq loc_069fe4

loc_069fc9:
    lda $d787
    cmp #$ff
    bne loc_069ff6
    lda $6a71,y
    bit #$40
    bne loc_069ff6
    ora #$40
    sta $6a71,y
    lda #$03
    jsl sub_7f6df8
    bra loc_069ff6

loc_069fe4:
    lda $6a71,y
    bit #$80
    bne loc_069ff6
    ora #$80
    sta $6a71,y
    lda #$07
    jsl sub_7f6df8

loc_069ff6:
    lda $d7f4
    beq loc_06a045
    rep #$20
.a16
    lda $1b96
    bit #$0100
    sep #$20
.a8
    beq loc_06a045
    rep #$20
.a16
    lda $6c13,y
    sep #$20
.a8
    beq loc_06a014
    jml loc_06a045

loc_06a014:
    phy
    ldy $2b,x
    lda #$0d
    cmp $6c15,y
    beq loc_06a021
    sta $6c15,y

loc_06a021:
    rep #$20
.a16
    lda #$bf63
    cmp $6c13,y
    beq loc_06a037
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_06a037:
    sep #$20
.a8
    ply
    lda $6b77,y
    and #$fe
    sta $6b77,y
    jmp loc_06a316

loc_06a045:
    lda $d7f4
    beq loc_06a09b
    lda $1e08
    bit #$80
    beq loc_06a09b
    bit #$40
    bne loc_06a09b
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_06a068
    jml loc_06a09b

loc_06a068:
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
    rep #$20
.a16
    lda #$b8c5
    sta $002b,y
    sep #$20
.a8
    lda $1e08
    ora #$40
    sta $1e08

loc_06a09b:
    lda $1e17
    cmp #$01
    bne loc_06a0a5
    stz $d7f4

loc_06a0a5:
    lda $d7f4
    beq loc_06a0ae
    jml loc_06a0f9

loc_06a0ae:
    lda $1e0d
    and #$01
    beq loc_06a0b9
    jml loc_06a0f9

loc_06a0b9:
    lda $1d72
    bne loc_06a0f9
    lda $2d,x
    beq loc_06a0f9
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_06a0d1
    jmp loc_06a0f9

loc_06a0d1:
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_06a0e0
    jml loc_06a0f9

loc_06a0e0:
    lda $6bec,y
    ora #$10
    sta $6bec,y
    rep #$20
.a16
    lda $6c13,y
    sep #$20
.a8
    beq loc_06a0f5
    jml loc_06a0f9

loc_06a0f5:
    jsl sub_0dbbb6

loc_06a0f9:
    lda $1d74
    bit #$01
    beq loc_06a108
    and #$fe
    sta $1d74
    inc $1ba5

loc_06a108:
    ldy $2b,x
    lda $6a72,y
    and #$10
    beq loc_06a115
    jml loc_06a316

loc_06a115:
    lda $6b7d,y
    bit #$80
    beq loc_06a120
    jml loc_06a316

loc_06a120:
    lda $d7f4
    bne loc_06a129
    jml loc_06a316

loc_06a129:
    lda $1d74
    bit #$10
    bne loc_06a13d
    bit #$40
    bne loc_06a138
    jml loc_06a316

loc_06a138:
    ora #$10
    sta $1d74

loc_06a13d:
    bit #$20
    beq loc_06a145
    jml loc_06a221

loc_06a145:
    phy
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_06a159
    jml loc_06a219

loc_06a159:
    lda $1de2
    cmp #$09
    beq loc_06a1bc
    lda $1b4d
    and #$07
    cmp #$02
    beq loc_06a1a4
    lda $1b4d
    and #$07
    cmp #$00
    bne loc_06a1b0
    rep #$20
.a16
    lda #$cf18
    sta $002b,y
    sep #$20
.a8
    phy
    ldy $2b,x
    lda #$0d
    cmp $6c15,y
    beq loc_06a189
    sta $6c15,y

loc_06a189:
    rep #$20
.a16
    lda #$c193
    cmp $6c13,y
    beq loc_06a19f
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_06a19f:
    sep #$20
.a8
    ply
    bra loc_06a1ec

loc_06a1a4:
    rep #$20
.a16
    lda #$d1cb
    sta $002b,y
    sep #$20
.a8
    bra loc_06a1ec

loc_06a1b0:
    rep #$20
.a16
    lda #$d207
    sta $002b,y
    sep #$20
.a8
    bra loc_06a1ec

loc_06a1bc:
    rep #$20
.a16
    lda #$d27b
    sta $002b,y
    sep #$20
.a8
    phy
    ldy $2b,x
    lda #$0d
    cmp $6c15,y
    beq loc_06a1d3
    sta $6c15,y

loc_06a1d3:
    rep #$20
.a16
    lda #$c1c9
    cmp $6c13,y
    beq loc_06a1e9
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_06a1e9:
    sep #$20
.a8
    ply

loc_06a1ec:
    jsl sub_7f2baa
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
    lda $1d74
    ora #$20
    sta $1d74

loc_06a219:
    ply
    jsl sub_0681a6
    jmp loc_06a316

loc_06a221:
    bit #$04
    bne loc_06a229
    jml loc_06a316

loc_06a229:
    bit #$02
    beq loc_06a231
    jml loc_06a316

loc_06a231:
    ora #$02
    sta $1d74
    lda $1de2
    cmp #$09
    bne loc_06a241
    jml loc_06a2c3

loc_06a241:
    lda $1de2
    cmp #$09
    beq loc_06a254
    cmp #$03
    beq loc_06a254
    lda $d7f6
    ora #$20
    sta $d7f6

loc_06a254:
    lda $1b4d
    and #$07
    cmp #$02
    bne loc_06a261
    jml loc_06a29f

loc_06a261:
    lda $1b4d
    and #$07
    cmp #$00
    beq loc_06a26e
    jml loc_06a2f4

loc_06a26e:
    lda #$0d
    cmp $6c15,y
    beq loc_06a278
    sta $6c15,y

loc_06a278:
    rep #$20
.a16
    lda #$c2ca
    cmp $6c13,y
    beq loc_06a28e
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_06a28e:
    sep #$20
.a8
    rep #$20
.a16
    lda #$837f
    sta $19,x
    sep #$20
.a8
    lda #$06
    sta $1b,x
    bra loc_06a316

loc_06a29f:
    lda #$0d
    cmp $6c15,y
    beq loc_06a2a9
    sta $6c15,y

loc_06a2a9:
    rep #$20
.a16
    lda #$c2e2
    cmp $6c13,y
    beq loc_06a2bf
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_06a2bf:
    sep #$20
.a8
    bra loc_06a316

loc_06a2c3:
    lda #$0d
    cmp $6c15,y
    beq loc_06a2cd
    sta $6c15,y

loc_06a2cd:
    rep #$20
.a16
    lda #$c2bc
    cmp $6c13,y
    beq loc_06a2e3
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_06a2e3:
    sep #$20
.a8
    rep #$20
.a16
    lda #$837f
    sta $19,x
    sep #$20
.a8
    lda #$06
    sta $1b,x
    bra loc_06a316

loc_06a2f4:
    lda #$0d
    cmp $6c15,y
    beq loc_06a2fe
    sta $6c15,y

loc_06a2fe:
    rep #$20
.a16
    lda #$c30e
    cmp $6c13,y
    beq loc_06a314
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_06a314:
    sep #$20

loc_06a316:
.a8
    ldy $2b,x
    jsl sub_07a941
    rtl
    .db $00,$00,$01,$00,$02,$00,$03,$00

sub_06a325:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    lda #$7e
    pha
    plb
    lda $1e14
    sta $1e70
    lda $1e14
    pha
    lda $1e15
    sta $1e14
    pla
    sta $1e15
    lda $1dd5
    pha
    lda $1ddb
    sta $1dd5
    pla
    sta $1ddb
    lda $1dd6
    pha
    lda $1ddc
    sta $1dd6
    pla
    sta $1ddc
    lda $1dd1
    pha
    lda $1dd7
    sta $1dd1
    pla
    sta $1dd7
    lda $1dd3
    pha
    lda $1dd9
    sta $1dd3
    pla
    sta $1dd9
    lda $1dd2
    pha
    lda $1dd8
    sta $1dd2
    pla
    sta $1dd8
    lda $1dd4
    pha
    lda $1dda
    sta $1dd4
    pla
    sta $1dda
    lda $1ddd
    pha
    and #$80
    lsr a
    sta $3a
    pla
    and #$40
    asl a
    ora $3a
    sta $1ddd
    plp
    ply
    plx
    plb
    rtl

sub_06a3b0:
    phb
    phx
    phy
    php
    sep #$20
    rep #$10
    jsl sub_7f7bd0
    and #$ff
    sta $1d98
    stz $1ddd
    stz $1e0d
    stz $1d9a
    jsl sub_0bf00d
    rep #$20
.a16
    lda $1e14
    and #$0007
    tax
    sep #$20
.a8
    lda $06a46e,x
    sta $1dd5
    sta $1dd1
    lda $06a474,x
    sta $1dd6
    lda $06a462,x
    sta $1dd3
    lda $06a468,x
    sta $001dd2
    rep #$20
.a16
    lda $1e15
    and #$0007
    tax
    sep #$20
.a8
    lda $06a46e,x
    sta $1ddb
    sta $1dd7
    lda $06a474,x
    sta $1ddc
    lda $06a462,x
    sta $1dd9
    lda $06a468,x
    sta $001dd8
    sep #$20
    lda $1e14
    jsr sub_06a43d
    sta $1dd4
    lda $1e15
    jsr sub_06a43d
    sta $1dda
    plp
    ply
    plx
    plb
    rtl

sub_06a43d:
    phx
    rep #$20
.a16
    and #$0007
    tax
    lda $06a45a,x
    sep #$20
.a8
    plx
    sta $3a
    lda $f52c
    and $3a
    bne loc_06a457
    lda #$01
    rts

loc_06a457:
    lda #$02
    rts
    .db $01,$02,$04,$08,$10,$20,$01,$01,$01,$01,$00,$00,$03,$03,$03,$03
    .db $03,$03,$03,$03,$20,$20,$28,$28,$18,$18,$19,$19,$23,$23,$0a,$0a
    .db $60

sub_06a47b:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda #$00
    sta $6b7f,y
    jsl sub_07ce31
    lda $6b77,y
    bit #$40
    bne loc_06a4a6
    rep #$20
.a16
    lda #$001a
    cpx $12c3
    beq loc_06a4a0
    ora #$8000

loc_06a4a0:
    jsl sub_7f6e09
    sep #$20

loc_06a4a6:
.a8
    lda $6b77,y
    and #$df
    ora #$40
    sta $6b77,y
    lda $6b79,y
    ora #$c0
    sta $6b79,y

loc_06a4b8:
    lda $6b7a,y
    and #$f0
    ora #$0f
    sta $6b7a,y
    plp
    ply
    rtl

sub_06a4c5:
    phy
    php
    sep #$20
    rep #$10
    jsl sub_07cead
    bcs loc_06a4d5
    jml loc_06a4d5

loc_06a4d5:
    jsl sub_07ced7
    bcs loc_06a4df
    jml loc_06a4df

loc_06a4df:
    ldy $2b,x
    lda $6b77,y
    and #$20
    beq loc_06a4ec
    jml loc_06a504

loc_06a4ec:
    lda #$00
    sta $6b7f,y
    rep #$20
.a16
    lda #$001b
    cpx $12c3
    beq loc_06a4fe
    ora #$8000

loc_06a4fe:
    jsl sub_7f6e09
    sep #$20

loc_06a504:
.a8
    lda $6b77,y
    and #$bf
    bit #$20
    bne loc_06a512
    ora #$20
    sta $6b77,y

loc_06a512:
    lda $6b79,y
    ora #$c0
    sta $6b79,y
    jmp loc_06a4b8

sub_06a51d:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6b79,y
    and #$bf
    sta $6b79,y
    lda $6b77,y
    and #$9f
    sta $6b77,y
    lda $6b7a,y
    and #$3f
    sta $6b7a,y
    lda $6b79,y
    and #$3f
    bne loc_06a558
    lda $6b7a,y
    bit #$0f
    beq loc_06a558
    lda $c4
    and #$01
    bne loc_06a558
    lda $6b7a,y
    dec a
    sta $6b7a,y

loc_06a558:
    plp
    ply
    rtl
    .db $5a,$08,$e2,$20,$c2,$10,$b4,$2b,$b9,$79,$6b,$29,$7f,$99,$79,$6b
    .db $80,$c0

sub_06a56d:
.a16
    phx
    phy
    php
    sep #$20
.a8
    rep #$10
    ldx #$033f
    rep #$20
.a16
    lda $3a
    sec
    sbc $0c,x
    sta $02
    sta $04
    lda $3e
    sec
    sbc $10,x
    sta $97
    sta $e4
    sep #$20
.a8
    lda $15,x
    jsl sub_7f378a
    plp
    ply
    plx
    rtl

sub_06a597:
    phx
    phy
    php
    rep #$30
.a16
    phx
    lda #$7fff
    sta $1dbe
    stz $1dbc
    stz $1dba
    stz $02
    ldy $14d6
    lda #$0000
    sta $000c,y
    sta $000e,y
    sta $0010,y
    ldy $12a8

loc_06a5bd:
    sep #$20
.a8
    tyx
    ldy $14d6
    jsl sub_7f249f
    rep #$20
.a16
    lda $12de
    bmi loc_06a610
    cmp $1dbe
    bcs loc_06a610
    lda $04,x
    sta $3a
    phx
    ldx #$0000

loc_06a5db:
    lda $06fb82,x
    beq loc_06a60f
    cmp $3a
    beq loc_06a5ea
    inx
    inx
    inx
    bra loc_06a5db

loc_06a5ea:
    lda $06fb84,x
    and #$00ff
    sta $1dba
    plx
    lda $12de
    sta $1dbe
    stx $1dbc
    lda $0c,x
    sta $1db8
    lda $0e,x
    sta $1db6
    lda $10,x
    sta $1db4
    bra loc_06a610

loc_06a60f:
    plx

loc_06a610:
    ldy $00,x
    beq loc_06a618
    jml loc_06a5bd

loc_06a618:
    plx
    lda $1dbc
    beq loc_06a639
    sep #$20
.a8
    lda $1dba
    beq loc_06a639
    sta $1ccc,x
    rep #$20
.a16
    lda $1db8
    sta $0c,x
    lda $1db6
    sta $0e,x
    lda $1db4
    sta $10,x

loc_06a639:
    rep #$20
    plp
.a8
    ply
    plx
    rtl
    .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea

sub_06a647:
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
    beq loc_06a65c
    jmp loc_06a834

loc_06a65c:
    ldy $2b,x
    lda $6aa0,y
    and #$f0
    cmp #$10
    beq loc_06a66b
    jml loc_06a834

loc_06a66b:
    lda $6b77,y
    bit #$20
    beq loc_06a676
    jml loc_06a834

loc_06a676:
    lda $6bff,y
    and #$fe
    cmp #$02
    bne loc_06a68a
    lda $6b77,y
    bit #$40
    bne loc_06a68a
    jml loc_06a834

loc_06a68a:
    phx
    rep #$20
.a16
    ldy #$7fff
    sty $1db6
    sty $1db4
    ldy #$0000
    sty $1db2
    sty $1db0
    ldy $12a8
    stx $1db8

loc_06a6a5:
    tyx
    sep #$20
.a8
    lda $26,x
    and #$20
    bne loc_06a6b2
    jml loc_06a756

loc_06a6b2:
    rep #$20
.a16
    ldy $1db8
    lda $000e,y
    sec
    sbc $0e,x
    bpl loc_06a6c3
    eor #$ffff
    inc a

loc_06a6c3:
    cmp #$012c
    bcc loc_06a6cc
    jml loc_06a74e

loc_06a6cc:
    jsl sub_7f249f
    rep #$20
    lda $12de
    cmp #$01f4
    bcc loc_06a6de
    jml loc_06a74e

loc_06a6de:
    lda $0c,x
    sta $3a
    lda $10,x
    sta $3e
    jsl sub_06a56d
    lda $e4
    bmi loc_06a74e
    cmp #$0096
    bpl loc_06a74e
    sep #$20
.a8
    lda $22,x
    and #$10
    beq loc_06a6ff
    jml loc_06a756

loc_06a6ff:
    rep #$20
.a16
    lda $e4
    clc
    adc $04
    cmp $1db4
    bcs loc_06a74e
    cmp $1db6
    bcs loc_06a73c
    pha
    lda $1db2
    sta $1db0
    lda $1db6
    sta $1db4
    lda $1dc0
    sta $1dbc
    lda $1dbe
    sta $1dba
    pla
    stx $1db2
    sta $1db6
    lda $04
    sta $1dc0
    lda $e4
    sta $1dbe
    bra loc_06a756

loc_06a73c:
    stx $1db0
    sta $1db4
    lda $04
    sta $1dbc
    lda $e4
    sta $1dba
    bra loc_06a756

loc_06a74e:
    sep #$20
.a8
    lda $22,x
    and #$ef
    sta $22,x

loc_06a756:
    rep #$20
.a16
    ldy $00,x
    beq loc_06a760
    jml loc_06a6a5

loc_06a760:
    ldx #$0000
    plx
    stz $02
    ldy $1db2
    bne loc_06a76f
    jml loc_06a7e0

loc_06a76f:
    lda $1dc0
    bpl loc_06a778
    eor #$ffff
    inc a

loc_06a778:
    cmp #$0032
    bcc loc_06a791
    cmp #$0082
    bcs loc_06a7a5
    lda $1dc0
    bmi loc_06a78c
    lda #$0001
    bra loc_06a794

loc_06a78c:
    lda #$0004
    bra loc_06a794

loc_06a791:
    lda #$0002

loc_06a794:
    sta $02
    jsr sub_06a837
    sep #$20
.a8
    lda $0022,y
    ora #$10
    sta $0022,y
    rep #$20

loc_06a7a5:
.a16
    ldy $1db0
    beq loc_06a7e0
    lda $1dbc
    bpl loc_06a7b3
    eor #$ffff
    inc a

loc_06a7b3:
    cmp #$0032
    bcc loc_06a7cc
    cmp #$0082
    bcs loc_06a7e0
    lda $1dc0
    bmi loc_06a7c7
    lda #$0001
    bra loc_06a7cf

loc_06a7c7:
    lda #$0004
    bra loc_06a7cf

loc_06a7cc:
    lda #$0002

loc_06a7cf:
    ora $02
    sta $02
    jsr sub_06a837
    sep #$20
.a8
    lda $0022,y
    ora #$10
    sta $0022,y

loc_06a7e0:
.a16
    sep #$20
.a8
    lda $02
    beq loc_06a834
    bit #$02
    bne loc_06a81e
    bit #$04
    bne loc_06a806
    rep #$20
.a16
    lda #$00ab
    cpx $12c3
    beq loc_06a7fb
    ora #$8000

loc_06a7fb:
    ora #$2000
    jsl sub_7f6e09
    sep #$20
.a8
    bra loc_06a834

loc_06a806:
    rep #$20
.a16
    lda #$00ab
    cpx $12c3
    beq loc_06a813
    ora #$8000

loc_06a813:
    ora #$1000
    jsl sub_7f6e09
    sep #$20
.a8
    bra loc_06a834

loc_06a81e:
    rep #$20
.a16
    lda #$00ab
    cpx $12c3
    beq loc_06a82b
    ora #$8000

loc_06a82b:
    ora #$0000
    jsl sub_7f6e09
    sep #$20

loc_06a834:
.a8
    plp
    ply
    rtl

sub_06a837:
.a16
    phx
    phy
    tyx
    ldy $04,x
    tyx
    lda $000010,x
    bit #$ff00
    beq loc_06a84b
    lda #$0002
    sta $02

loc_06a84b:
    ply
    plx
    rts
    .db $08,$e2,$20,$c2,$10,$ad,$70,$1e,$30,$23,$ad,$9a,$1d,$45,$3a,$8d
    .db $9a,$1d,$24,$3a,$f0,$17,$5a,$c2,$20,$ad,$70,$1e,$29,$07,$00,$a8
    .db $e2,$20,$a5,$02,$88,$30,$03,$1a,$80,$fa,$7a,$80,$02,$a5,$04,$da
    .db $22,$04,$cf,$0a,$fa,$28,$6b,$5a,$08,$ac,$c3,$12,$80,$04,$5a,$08
    .db $b4,$06,$da,$bb,$7a,$5a,$b4,$2b,$b9,$a0,$6a,$7a,$da,$bb,$7a,$29
    .db $f0,$c9,$10,$f0,$04,$5c,$bb,$a8,$06,$c2,$20,$b9,$32,$00,$18,$75
    .db $32,$95,$32,$b9,$36,$00,$18,$75,$36,$95,$36,$80,$12,$c2,$20,$b9
    .db $c1,$1c,$18,$75,$32,$95,$32,$b9,$c5,$1c,$18,$75,$36,$95,$36,$e2
    .db $20,$28,$7a,$6b

sub_06a8d2:
.a8
    sep #$20
    rep #$10
    phy
    php
    lda $1d73
    cmp #$fe
    bne loc_06a8e3
    jml loc_06a985

loc_06a8e3:
    cmp #$ff
    bne loc_06a8eb
    jml loc_06a985

loc_06a8eb:
    cmp #$16
    bne loc_06a8f7
    ldy $2b,x
    lda $6ae6,y
    sta $1d73

loc_06a8f7:
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_06a90a
    jml loc_06a985

loc_06a90a:
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
    lda #$0000
    sta $000c,y
    sta $000e,y
    sta $0010,y
    sep #$20
.a8
    sta $0012,y
    sta $0014,y
    sta $0016,y
    phy
    phx
    ldy $2b,x
    rep #$20
.a16
    lda $1d73
    and #$00ff
    cmp #$001e
    bmi loc_06a946
    lda #$0000

loc_06a946:
    asl a
    asl a
    asl a
    tax
    lda $0dd4c9,x
    sta $6c13,y
    lda $0dd4ca,x
    sta $6c14,y
    lda $0dd4cc,x
    sta $6c18,y
    lda #$0000
    sta $6c16,y
    sta $1da5
    lda $0dd4c7,x
    plx
    ply
    sta $002b,y
    sep #$20
.a8
    lda #$01
    sta $002d,y
    lda #$01
    sta $002e,y
    lda $0021,y
    ora #$01
    sta $0021,y

loc_06a985:
    plp
    ply
    rtl
    .db $5a,$b4,$06,$da,$bb,$7a,$22,$7d,$91,$06,$a5,$02,$8d,$ae,$1d,$da
    .db $bb,$7a,$bd,$e2,$1c,$cd,$ae,$1d,$d0,$04,$5c,$af,$a9,$06,$b5,$22
    .db $09,$01,$95,$22,$7a,$18,$6b,$a9,$00,$95,$2d,$7a,$38,$6b,$ad,$a6
    .db $1a,$89,$02,$d0,$28,$c2,$20,$b5,$06,$cd,$c3,$12,$e2,$20,$d0,$04
    .db $5c,$e1,$a9,$06,$c2,$20,$b5,$06,$cd,$c5,$12,$e2,$20,$f0,$04,$5c
    .db $e5,$a9,$06,$22,$fd,$b1,$07,$80,$04,$22,$ea,$b1,$07,$6b

sub_06a9e6:
    php
    phy
    ldy $2b,x
    lda $6c03,y
    ply
    cmp #$08
    bpl loc_06a9f5
    plp
    sec
    rtl

loc_06a9f5:
    plp
    clc
    rtl
    .db $da,$5a,$08,$e2,$20,$c2,$10,$b4,$06,$bb,$b4,$2b,$b9,$03,$6c,$c9
    .db $00,$d0,$04,$5c,$16,$aa,$06,$b9,$03,$6c,$3a,$99,$03,$6c,$28,$7a
    .db $fa,$6b

sub_06aa1a:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6bff,y
    and #$01
    bne loc_06aa35
    rep #$20
.a16
    lda #$81f4
    sta $1ccd,x
    sep #$20
.a8
    bra loc_06aa3f

loc_06aa35:
    rep #$20
.a16
    lda #$82fe
    sta $1ccd,x
    sep #$20

loc_06aa3f:
.a8
    lda $6c00,y
    cmp #$0d
    bcs loc_06aa60
    jsl sub_07cfb1
    lda #$80
    sta $6aa2,y
    lda $c4
    bit #$04
    bne loc_06aa6c
    bit #$01
    bne loc_06aa6c
    lda #$83
    sta $6aa2,y
    bra loc_06aa6c

loc_06aa60:
    lda $6aa2,y
    bit #$80
    beq loc_06aa6c
    lda #$00
    sta $6aa2,y

loc_06aa6c:
    plp
    ply
    rtl

sub_06aa6f:
    phy
    php
    ldy $2b,x
    lda $6be3,y
    cmp #$00
    beq loc_06aa7e
    jml loc_06ab02

loc_06aa7e:
    lda #$04
    and #$3f
    sta $6be3,y
    lda #$02
    sta $6c11,y
    lda $6c12,y
    ora #$70
    sta $6c12,y
    rep #$20
.a16
    lda $6b3b,y
    cmp #$0000
    sep #$20
.a8
    beq loc_06aaa2
    jml loc_06aaac

loc_06aaa2:
    rep #$20
.a16
    lda #$0060
    sta $6b3b,y
    sep #$20

loc_06aaac:
.a8
    bra loc_06aae0

sub_06aaae:
    phy
    php
    ldy $2b,x
    lda #$0a
    and #$3f
    sta $6be3,y
    lda #$08
    sta $6c11,y
    lda $6c12,y
    ora #$70
    sta $6c12,y
    rep #$20
.a16
    lda $6b3b,y
    cmp #$0000
    sep #$20
.a8
    beq loc_06aad6
    jml loc_06aae0

loc_06aad6:
    rep #$20
.a16
    lda #$0080
    sta $6b3b,y
    sep #$20

loc_06aae0:
.a8
    lda $6c09,y
    ora #$40
    and #$7f
    sta $6c09,y
    lda #$1e
    sta $6ada,y
    lda $c4
    and #$01
    bne loc_06aaf9
    jml loc_06ab02

loc_06aaf9:
    lda $6ada,y
    eor #$ff
    inc a
    sta $6ada,y

loc_06ab02:
    plp
    ply
    rtl

sub_06ab05:
    phy
    php
    ldy $2b,x
    lda $6be7,y
    bne loc_06ab2a
    rep #$20
.a16
    lda #$0018
    cpx $12c3
    beq loc_06ab1b
    ora #$8000

loc_06ab1b:
    jsl sub_7f6e09
    sep #$20
.a8
    jsl sub_7f7bd0
    and #$07
    sta $6be7,y

loc_06ab2a:
    plp
    ply
    rtl
    .incbin "data/032b2d-035355.bin"

sub_06d355:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    phy
    ldy $2b,x
    lda $6b94,y
    ply
    and #$07
    cmp #$03
    bcs loc_06d36f
    jml loc_06d3e1

loc_06d36f:
    lda $6a82,y
    cmp #$05
    beq loc_06d37a
    jml loc_06d381

loc_06d37a:
    rep #$20
.a16
    lda #$0000
    bra loc_06d3a9

loc_06d381:
.a8
    sep #$20
    phx
    phy
    ldy $2b,x
    lda $6b94,y
    ply
    and #$07
    cmp #$05
    bcs loc_06d395
    jml loc_06d39c

loc_06d395:
    rep #$20
.a16
    lda $c4
    lsr a
    bra loc_06d3a0

loc_06d39c:
.a8
    rep #$20
.a16
    lda $c4

loc_06d3a0:
    and #$000f
    tax
    lda $06d3d1,x
    plx

loc_06d3a9:
    bit #$0080
    beq loc_06d3b3
    ora #$ff00
    bra loc_06d3b6

loc_06d3b3:
    and #$00ff

loc_06d3b6:
    sta $6a73,y
    sep #$20
.a8
    rep #$20
.a16
    lda $6a77,y
    sta $3a
    lda #$0000
    jsl sub_7f2567
    sta $6a77,y
    sep #$20
.a8
    jmp loc_06d4b5
    .db $00,$01,$02,$03,$04,$03,$02,$01,$00,$ff,$fe,$fd,$fc,$fd,$fe,$ff

loc_06d3e1:
    rep #$20
.a16
    lda $6a75,y
    sec
    sbc $34,x
    pha
    xba
    and #$ff00
    sta $0a
    pla
    bpl loc_06d3f7
    eor #$ffff
    inc a

loc_06d3f7:
    xba
    and #$ff00
    sta $08
    lda $6a77,y
    bpl loc_06d406
    eor #$ffff
    inc a

loc_06d406:
    cmp $08
    bcs loc_06d421
    lda $0a
    sta $6a77,y
    sep #$20
.a8
    lda $6a78,y
    bpl loc_06d41a
    lda #$40
    bra loc_06d41c

loc_06d41a:
    lda #$c0

loc_06d41c:
    sta $6a79,y
    rep #$20

loc_06d421:
.a16
    lda $34,x
    sta $6a75,y
    sep #$20
.a8
    lda #$00
    sta $02
    phx
    jsl sub_069106
    lda $06d4b9,x
    sta $03
    plx
    rep #$20
.a16
    lda $02
    eor #$ffff
    inc a
    sta $04
    lda $6a77,y
    bmi loc_06d44f
    cmp $02
    bcc loc_06d458
    lda $02
    bra loc_06d455

loc_06d44f:
    cmp $04
    bcs loc_06d458
    lda $04

loc_06d455:
    sta $6a77,y

loc_06d458:
    sep #$20
.a8
    lda $6a79,y
    clc
    adc #$1e
    sta $6a79,y
    rep #$20
.a16
    lda $6a77,y
    cmp #$0000
    beq loc_06d489
    bmi loc_06d47d
    sec
    sbc #$00a0
    cmp #$0000
    bpl loc_06d489
    lda #$0000
    bra loc_06d489

loc_06d47d:
    clc
    adc #$00a0
    cmp #$0000
    bmi loc_06d489
    lda #$0000

loc_06d489:
    sta $6a77,y
    sep #$20
.a8
    lda $6a78,y
    sta $08
    lda #$00
    sta $97
    lda $6a79,y
    jsl sub_7f3a4e
    rep #$20
.a16
    lda $0a
    sta $6a73,y
    sep #$20
.a8
    lda $6a7f,y
    sta $3a
    lda #$00
    jsl sub_7f2782
    sta $6a7f,y

loc_06d4b5:
    plp
    ply
    plx
    rts
    .incbin "data/0354b9-035781.bin"

sub_06d781:
    phy
    php
    sep #$20
    rep #$10
    lda $1d72
    bne loc_06d79d
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_06d79b
    jmp loc_06d79d

loc_06d79b:
    bra loc_06d7b1

loc_06d79d:
    rep #$20
.a16
    lda #$0000
    sta $1cc1,x
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $1cc5,x
    sep #$20

loc_06d7b1:
.a8
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$30
    bne loc_06d7c2
    jml loc_06d802

loc_06d7c2:
    lda $1e13
    cmp #$01
    beq loc_06d7cd
    jml loc_06d802

loc_06d7cd:
    lda $21,x
    and #$20
    bne loc_06d7d7
    jml loc_06d802

loc_06d7d7:
    lda $6b7d,y
    bit #$40
    bne loc_06d7e2
    jml loc_06d802

loc_06d7e2:
    rep #$20
.a16
    lda $1e0f
    clc
    adc #$00c8
    cmp $0e,x
    sep #$20
.a8
    bpl loc_06d802
    rep #$20
.a16
    sta $0e,x
    sta $6bef,y
    lda #$0000
    sta $34,x
    sta $1cc3,x
    sep #$20

loc_06d802:
.a8
    lda $6ae9,y
    and #$03
    cmp #$03
    beq loc_06d80f
    jml loc_06d87d

loc_06d80f:
    ldy $2b,x
    rep #$20
.a16
    lda $6af5,y
    sec
    sbc $6af3,y
    bpl loc_06d820
    eor #$ffff
    inc a

loc_06d820:
    sec
    sbc #$0030
    bit #$8000
    bne loc_06d82d
    jml loc_06d839

loc_06d82d:
    lda #$0000
    sta $1dc8
    sta $1dca
    jmp loc_06d87d

loc_06d839:
    phx
    rep #$20
    ldy $2b,x
    ldx $6af1,y
    lda $0c,x
    sta $02
    lda $10,x
    sta $97
    ldx $6aef,y
    lda $0c,x
    clc
    adc $02
    cmp #$8000
    ror a
    bpl loc_06d85a
    adc #$0000

loc_06d85a:
    sta $02
    lda $10,x
    clc
    adc $97
    cmp #$8000
    ror a
    bpl loc_06d86a
    adc #$0000

loc_06d86a:
    sta $97
    plx
    lda $02
    sec
    sbc $0c,x
    sta $1dc8
    lda $97
    sec
    sbc $10,x
    sta $1dca

loc_06d87d:
.a8
    rep #$20
.a16
    lda $6af9,y
    clc
    adc $1dc8
    sta $1dc8
    lda $6afb,y
    clc
    adc $1dca
    sta $1dca
    lda #$0000
    sta $6af9,y
    sta $6afb,y
    sep #$20
.a8
    ldy $2b,x
    jsr sub_0696d7
    lda $1e13
    cmp #$01
    beq loc_06d8ae
    jml loc_06d8e2

loc_06d8ae:
    lda $21,x
    and #$20
    bne loc_06d8b8
    jml loc_06d8e2

loc_06d8b8:
    rep #$20
.a16
    lda #$0001
    sta $1dab
    sep #$20
.a8
    lda $6b8c,y
    phy
    and #$02
    jsl sub_0db282
    ply
    rep #$20
.a16
    lda $08
    sta $6af7,y
    sep #$20
.a8
    rep #$20
.a16
    lda $1961
    sta $6b05,y
    sep #$20
.a8
    bra loc_06d908

loc_06d8e2:
    sep #$20
    lda $6b91,y
    sta $1dab
    lda $6b8c,y
    and #$02
    phy
    jsl sub_0db282
    ply
    rep #$20
.a16
    lda $08
    sta $6af7,y
    sep #$20
.a8
    rep #$20
.a16
    lda $1961
    sta $6b05,y
    sep #$20

loc_06d908:
.a8
    rep #$20
.a16
    lda $1ce8,x
    sta $1d6f
    sep #$20
.a8
    lda $1cea,x
    sta $1d71
    jsr sub_0696ef
    sep #$20
    lda $1955
    bit #$04
    beq loc_06d92c
    lda $6be6,y
    ora #$10
    sta $6be6,y

loc_06d92c:
    jsl sub_06d991
    jsr sub_06d355
    rep #$20
.a16
    lda $0e,x
    clc
    adc $6a73,y
    sta $0e,x
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6b94,y
    ply
    and #$07
    cmp #$03
    bcc loc_06d950
    jml loc_06d95c

loc_06d950:
    rep #$20
.a16
    lda $0e,x
    clc
    adc $6ae2,y
    sta $0e,x
    sep #$20

loc_06d95c:
.a8
    rep #$20
.a16
    lda $6a7a,y
    bit #$0080
    beq loc_06d96b
    ora #$ff00
    bra loc_06d96e

loc_06d96b:
    and #$00ff

loc_06d96e:
    eor #$ffff
    inc a
    clc
    adc $0e,x
    sta $0e,x
    lda $6a7b,y
    bit #$0080
    beq loc_06d984
    ora #$ff00
    bra loc_06d987

loc_06d984:
    and #$00ff

loc_06d987:
    clc
    adc $0e,x
    sta $0e,x
    sep #$20
.a8
    plp
    ply
    rtl

sub_06d991:
    phy
    php
    ldy $2b,x
    rep #$20
.a16
    lda $6a7a,y
    bit #$0080
    beq loc_06d9a4
    ora #$ff00
    bra loc_06d9a7

loc_06d9a4:
    and #$00ff

loc_06d9a7:
    eor #$ffff
    inc a
    clc
    adc $6bef,y
    sta $6bf3,y
    lda $6a7b,y
    bit #$0080
    beq loc_06d9bf
    ora #$ff00
    bra loc_06d9c2

loc_06d9bf:
    and #$00ff

loc_06d9c2:
    clc
    adc $6bf3,y
    sta $6bf3,y
    sep #$20
.a8
    plp
    ply
    rtl

sub_06d9ce:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    jsr sub_06da1c
    lda #$00
    sta $6b79,y
    lda #$00
    sta $6b7a,y
    rep #$20
.a16
    lda #$0000
    sta $6bb8,y
    sep #$20
.a8
    lda $12,x
    sta $6aba,y
    lda $14,x
    sta $6abc,y
    lda $16,x
    sta $6abd,y
    plp
    ply
    rts

sub_06d9ff:
    phy
    php
    ldy $2b,x
    sep #$20
    rep #$10
    lda $1dd4
    sta $6c06,y
    lda $1dd3
    sta $6c05,y
    lda $1dd2
    sta $6c04,y
    plp
    ply
    rts

sub_06da1c:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    ldx #$0000
    lda #$00

loc_06da2a:
    sta $6a61,y
    iny
    inx
    cpx #$01d8
    bne loc_06da2a
    plp
    ply
    plx
    rts
    .db $da,$5a,$08,$e2,$20,$c2,$10,$b4,$2b,$a9,$00,$a2,$00,$00,$99,$61
    .db $6a,$c8,$e8,$e0,$87,$01,$d0,$f6,$28,$7a,$fa,$60,$5a,$08,$e2,$20
    .db $c2,$10,$b4,$2b,$c2,$20,$a9,$00,$00,$99,$4a,$6b,$99,$e7,$6a,$99
    .db $15,$6b,$e2,$20,$a9,$00,$99,$e4,$6b,$99,$06,$6c,$99,$80,$6b,$b9
    .db $ec,$6b,$29,$e7,$99,$ec,$6b,$4c,$d9,$d9,$5a,$08,$e2,$20,$c2,$10
    .db $b4,$2b,$c2,$20,$a9,$00,$00,$99,$d0,$6a,$e2,$20,$20,$23,$db,$b9
    .db $ec,$6b,$09,$80,$99,$ec,$6b,$28,$7a,$60,$5a,$08,$e2,$20,$c2,$10
    .db $a9,$00,$9d,$e2,$1c,$b4,$2b,$c2,$20,$b5,$0e,$99,$f3,$6b,$e2,$20
    .db $c2,$20,$a9,$00,$00,$99,$8d,$6b,$99,$d0,$6a,$e2,$20,$99,$d5,$6a
    .db $99,$d6,$6a,$99,$db,$6a,$99,$cd,$6a,$99,$94,$6b,$99,$95,$6b,$99
    .db $96,$6b,$99,$8b,$6b,$99,$8c,$6b,$99,$8f,$6b,$99,$92,$6b,$99,$97
    .db $6b,$b9,$77,$6b,$29,$07,$99,$77,$6b,$c2,$20,$a9,$00,$00,$99,$cd
    .db $6a,$e2,$20,$c2,$20,$a9,$00,$04,$99,$90,$6b,$e2,$20,$c2,$20,$a9
    .db $e2,$ff,$99,$5a,$6b,$e2,$20,$c2,$20,$b9,$5a,$6b,$18,$79,$5c,$6b
    .db $99,$5a,$6b,$e2,$20,$20,$23,$db,$28,$7a,$60

sub_06db23:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda $0c,x
    sta $6bed,y
    lda $0e,x
    sta $6bef,y
    lda $10,x
    sta $6bf1,y
    sep #$20
.a8
    lda #$00
    sta $6b60,y
    lda #$00
    sta $6b61,y
    lda #$00
    sta $6adc,y
    lda #$00
    sta $6ade,y
    sta $6aad,y
    sta $6c03,y
    sta $6aab,y
    sta $6aac,y
    sta $6aeb,y
    sta $6aed,y
    sta $6aee,y
    sta $6aec,y
    sta $6aa3,y
    sta $6aa4,y
    sta $6b30,y
    sta $6b62,y
    sta $6a70,y
    sta $6a7a,y
    sta $6a7b,y
    sta $6a7c,y
    sta $6ae9,y
    sta $6aea,y
    sta $6a7f,y
    sta $6b17,y
    rep #$20
.a16
    lda #$0000
    sta $6a75,y
    sta $6b0b,y
    sta $6b0d,y
    sta $6b0f,y
    sta $6af1,y
    sta $6aef,y
    sta $6a7d,y
    sta $6b05,y
    sta $6b07,y
    sta $6b09,y
    sta $6ae0,y
    sta $6ae2,y
    sta $6ae4,y
    sta $6b56,y
    plp
.a8
    ply
    rts
    .incbin "data/035bc0-036258.bin"

sub_06e258:
    php
    sep #$20
    rep #$10
    jsr sub_06e7ff
    jsr sub_06f2f7
    jsr sub_06f010
    jsl sub_07dd6f
    jsr sub_06f05d
    jsr sub_06ecb0
    jsr sub_06ee0a
    phy
    ldy $2b,x
    lda $6aad,y
    bne loc_06e27f
    jml loc_06e2d0

loc_06e27f:
    lda #$40
    sta $1ce2,x
    lda $1ce2,x
    clc
    adc $0014,x
    sta $1ce2,x
    lda $6aad,y
    sta $1ce3,x
    lda $1ce3,x
    sta $85
    lda $1ce2,x
    jsl sub_7f2d8b
    rep #$20
.a16
    lda $02
    sta $32,x
    lda $97
    sta $36,x
    sep #$20
.a8
    jsl sub_7f2c24
    lda $6aad,y
    cmp #$00
    beq loc_06e2cd
    bmi loc_06e2c4
    sec
    sbc #$14
    cmp #$00
    bpl loc_06e2cd
    lda #$00
    bra loc_06e2cd

loc_06e2c4:
    clc
    adc #$14
    cmp #$00
    bmi loc_06e2cd
    lda #$00

loc_06e2cd:
    sta $6aad,y

loc_06e2d0:
    ply
    jsl sub_07e18e
    lda $1aa6
    bit #$02
    bne loc_06e2e0
    jml loc_06e2ec

loc_06e2e0:
    jsl sub_07e2f3
    jsl sub_07e685
    jsl sub_07e2f2

loc_06e2ec:
    plp
    rts

sub_06e2ee:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    jsl sub_06f2d9
    lda #$00
    sta $6ac0,y
    ldy #$0000
    sty $1e36
    sty $1e38
    sty $1e3a
    jsr sub_06e4b1
    jsr sub_06e39a
    jsr sub_06ea10
    jsr sub_06e258
    lda $1937
    bit #$20
    beq loc_06e329
    rep #$20
.a16
    lda #$0036
    jsl sub_7f6e09
    sep #$20

loc_06e329:
.a8
    plp
    ply
    rtl
    .db $5a,$08,$e2,$20,$c2,$10,$b4,$2b,$22,$c8,$e5,$07,$b9,$7d,$6b,$89
    .db $80,$d0,$04,$5c,$47,$e3,$06,$22,$75,$c4,$07,$22,$d9,$f2,$06,$a9
    .db $00,$99,$c0,$6a,$c2,$20,$a9,$00,$00,$8d,$36,$1e,$e2,$20,$c2,$20
    .db $a9,$00,$00,$8d,$38,$1e,$e2,$20,$c2,$20,$a9,$00,$00,$8d,$3a,$1e
    .db $e2,$20,$20,$b1,$e4,$20,$f7,$e3,$20,$f6,$e9,$20,$58,$e2,$a9,$04
    .db $85,$02,$22,$cd,$98,$06,$90,$13,$c2,$20,$a9,$1c,$00,$ec,$c3,$12
    .db $f0,$03,$09,$00,$80,$22,$09,$6e,$7f,$e2,$20,$28,$7a,$6b

sub_06e39a:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    rep #$20
.a16
    lda #$0000
    sta $1e36
    sep #$20
.a8
    lda $6b77,y
    bit #$01
    bne loc_06e3b7
    jml loc_06e3f4

loc_06e3b7:
    lda $6b82,y
    ora #$80
    sta $6b82,y
    lda #$00
    sta $6abf,y
    lda $1939
    bit #$08
    bne loc_06e3cf
    jml loc_06e3d7

loc_06e3cf:
    lda $6bf9,y
    sta $1e37
    bra loc_06e3f4

loc_06e3d7:
    lda $1939
    bit #$04
    bne loc_06e3e2
    jml loc_06e3ea

loc_06e3e2:
    lda $6bfa,y
    sta $1e37
    bra loc_06e3f4

loc_06e3ea:
    rep #$20
.a16
    lda $6ab9,y
    sta $1e36
    sep #$20

loc_06e3f4:
.a8
    plp
    ply
    rts
    .db $5a,$08,$e2,$20,$c2,$10,$b4,$2b,$a9,$00,$99,$bf,$6a,$c2,$20,$a9
    .db $00,$00,$8d,$36,$1e,$e2,$20,$ad,$37,$19,$89,$08,$d0,$07,$ad,$37
    .db $19,$89,$04,$f0,$08,$b9,$82,$6b,$09,$80,$99,$82,$6b,$ad,$39,$19
    .db $89,$08,$d0,$04,$5c,$40,$e4,$06,$b9,$82,$6b,$29,$7f,$99,$82,$6b
    .db $b9,$f9,$6b,$8d,$37,$1e,$4c,$7e,$e4,$5a,$b4,$2b,$b9,$88,$6b,$7a
    .db $89,$04,$d0,$04,$5c,$67,$e4,$06,$b9,$82,$6b,$29,$7f,$99,$82,$6b
    .db $b9,$82,$6b,$29,$7f,$99,$82,$6b,$b9,$fa,$6b,$8d,$37,$1e,$80,$17
    .db $b9,$82,$6b,$29,$7f,$99,$82,$6b,$a9,$00,$99,$bf,$6a,$c2,$20,$a9
    .db $00,$00,$8d,$36,$1e,$e2,$20,$b9,$7d,$6b,$89,$80,$d0,$04,$5c,$ae
    .db $e4,$06,$c2,$20,$a9,$ce,$ff,$18,$6d,$0f,$1e,$85,$3c,$e2,$20,$c2
    .db $20,$b5,$0e,$c5,$3c,$e2,$20,$10,$04,$5c,$ae,$e4,$06,$c2,$20,$a9
    .db $00,$c0,$8d,$36,$1e,$e2,$20,$28,$7a,$60

sub_06e4b1:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    jsl sub_06e8f5
    rep #$20
.a16
    lda #$0300
    bit $1936
    sep #$20
.a8
    beq loc_06e4d7
    rep #$20
.a16
    lda $1936
    and #$0300
    lsr a
    lsr a
    sep #$20
.a8
    bra loc_06e4ec

loc_06e4d7:
    rep #$20
.a16
    and $1938
    sep #$20
.a8
    beq loc_06e4ef
    lda $6b17,y
    clc
    adc #$01
    bit #$20
    beq loc_06e4ec
    lda #$1f

loc_06e4ec:
    sta $6b17,y

loc_06e4ef:
    lda $1939
    bit #$02
    bne loc_06e4fa
    jml loc_06e571

loc_06e4fa:
    phx
    tyx
    ply
    inc $6b17,x
    phx
    tyx
    ply
    lda #$fa
    sta $6ac0,y
    lda $1938
    bit #$20
    beq loc_06e513
    jml loc_06e520

loc_06e513:
    lda $1938
    bit #$10
    beq loc_06e51e
    jml loc_06e520

loc_06e51e:
    bra loc_06e55d

loc_06e520:
    ldy $2b,x
    lda $6b77,y
    and #$20
    bne loc_06e52d
    jml loc_06e549

loc_06e52d:
    phx
    jsl sub_0690ec
    rep #$20
.a16
    lda $06e7ed,x
    sta $1e38
    sep #$20
.a8
    plx
    lda $6b77,y
    ora #$08
    sta $6b77,y
    jmp loc_06e619

loc_06e549:
    phx
    jsl sub_0690ec
    rep #$20
.a16
    lda $06e7e1,x
    sta $1e38
    sep #$20
.a8
    plx
    jmp loc_06e619

loc_06e55d:
    phx
    jsl sub_0690ec
    rep #$20
.a16
    lda $06e7d5,x
    sta $1e38
    sep #$20
.a8
    plx
    jmp loc_06e611

loc_06e571:
    lda $1939
    bit #$01
    bne loc_06e57c
    jml loc_06e614

loc_06e57c:
    lda #$06
    sta $6ac0,y
    lda $1938
    bit #$20
    beq loc_06e58c
    jml loc_06e599

loc_06e58c:
    lda $1938
    bit #$10
    beq loc_06e597
    jml loc_06e599

loc_06e597:
    bra loc_06e5f2

loc_06e599:
    ldy $2b,x
    lda $6b77,y
    and #$20
    bne loc_06e5a6
    jml loc_06e5d0

loc_06e5a6:
    phx
    jsl sub_0690ec
    rep #$20
.a16
    lda $06e7ed,x
    sta $1e38
    sep #$20
.a8
    plx
    rep #$20
.a16
    lda $1e38
    eor #$ffff
    inc a
    sta $1e38
    sep #$20
.a8
    lda $6b77,y
    ora #$08
    sta $6b77,y
    jmp loc_06e619

loc_06e5d0:
    phx
    jsl sub_0690ec
    rep #$20
.a16
    lda $06e7e1,x
    sta $1e38
    sep #$20
.a8
    plx
    rep #$20
.a16
    lda $1e38
    eor #$ffff
    inc a
    sta $1e38
    sep #$20
.a8
    jmp loc_06e619

loc_06e5f2:
    phx
    jsl sub_0690ec
    rep #$20
.a16
    lda $06e7d5,x
    sta $1e38
    sep #$20
.a8
    plx
    rep #$20
.a16
    lda $1e38
    eor #$ffff
    inc a
    sta $1e38
    sep #$20

loc_06e611:
.a8
    jmp loc_06e619

loc_06e614:
    lda #$00
    sta $6ac0,y

loc_06e619:
    ldy $2b,x
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_06e62a
    jml loc_06e650

loc_06e62a:
    lda $1938
    and #$30
    beq loc_06e635
    jml loc_06e650

loc_06e635:
    rep #$20
.a16
    lda $1938
    bit #$0300
    beq loc_06e650
    bit #$0200
    bne loc_06e64a
    sep #$20
.a8
    lda #$e2
    bra loc_06e654

loc_06e64a:
.a16
    sep #$20
.a8
    lda #$1e
    bra loc_06e654

loc_06e650:
    sep #$20
    lda #$00

loc_06e654:
    sta $97
    lda $6ad7,y
    sta $3a
    lda $97
    jsl sub_7f27b5
    sta $6ad7,y
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_06e673
    jml loc_06e6a0

loc_06e673:
    lda $6b7e,y
    bit #$40
    beq loc_06e67e
    jml loc_06e689

loc_06e67e:
    bit #$20
    beq loc_06e686
    jml loc_06e690

loc_06e686:
    jmp loc_06e6b3

loc_06e689:
    rep #$20
.a16
    lda #$000a
    bra loc_06e695

loc_06e690:
.a8
    rep #$20
.a16
    lda #$fff6

loc_06e695:
    clc
    adc $6ad8,y
    sta $6ad8,y
    sep #$20
.a8
    bra loc_06e6c6

loc_06e6a0:
    rep #$20
.a16
    lda $6ad8,y
    sta $3a
    lda #$0000
    jsl sub_7f2534
    sta $6ad8,y
    sep #$20

loc_06e6b3:
.a8
    rep #$20
.a16
    lda $6ad8,y
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $6ad8,y
    sep #$20

loc_06e6c6:
.a8
    rep #$20
.a16
    lda $6ad8,y
    cmp #$0000
    bmi loc_06e6da
    cmp #$0040
    bmi loc_06e6e2
    lda #$0040
    bra loc_06e6e2

loc_06e6da:
    cmp #$ffc0
    bpl loc_06e6e2
    lda #$ffc0

loc_06e6e2:
    sta $6ad8,y
    sep #$20
.a8
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    bne loc_06e6f6
    jml loc_06e6fb

loc_06e6f6:
    lda #$00
    sta $6ac0,y

loc_06e6fb:
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    bit #$04
    bne loc_06e70a
    jml loc_06e70d

loc_06e70a:
    jsr sub_06e779

loc_06e70d:
    rep #$20
.a16
    lda $1938
    bit #$0300
    sep #$20
.a8
    bne loc_06e72e
    rep #$20
.a16
    lda $6b15,y
    sta $3a
    lda #$0000
    jsl sub_7f2534
    sta $6b15,y
    sep #$20
.a8
    bra loc_06e776

loc_06e72e:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    beq loc_06e73f
    jml loc_06e776

loc_06e73f:
    lda $6ad1,y
    asl a
    asl a
    sta $02
    phx
    jsl sub_0690d4
    lda $06e7f9,x
    sta $1dae
    plx
    rep #$20
.a16
    lda $1dae
    bit #$0080
    beq loc_06e762
    ora #$ff00
    bra loc_06e765

loc_06e762:
    and #$00ff

loc_06e765:
    sta $04
    sep #$20
.a8
    jsl sub_07e0da
    rep #$20
.a16
    lda $09
    sta $6b15,y
    sep #$20

loc_06e776:
.a8
    plp
    ply
    rts

sub_06e779:
    rep #$20
.a16
    lda $6aae,y
    and #$00ff
    xba
    sta $08
    lda $6abb,y
    sta $0a
    sep #$20
.a8
    lda $6aae,y
    sec
    sbc $6abc,y
    asl a
    sta $97
    lda $6ada,y
    sta $3a
    lda $97
    jsl sub_7f2782
    sta $6ada,y
    rep #$20
.a16
    lda $6abb,y
    sta $3a
    lda $08
    jsl sub_7f2534
    sta $6abb,y
    sep #$20
.a8
    rep #$20
.a16
    lda $6ad0,y
    sta $3a
    lda #$0000
    jsl sub_7f2534
    sta $6ad0,y
    sep #$20
.a8
    rts
    .db $00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$02,$90,$01
    .db $20,$02,$20,$02,$80,$01,$80,$01,$00,$03,$90,$02,$20,$03,$20,$03
    .db $00,$03,$80,$02,$c0,$03,$c0,$03,$c0,$03,$c0,$03,$c0,$03,$c0,$03
    .db $28,$28,$28,$28,$28,$28

sub_06e7ff:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6add,y
    beq loc_06e816
    lda $6c02,y
    ora #$40
    sta $6c02,y
    bra loc_06e81e

loc_06e816:
    lda $6c02,y
    and #$bf
    sta $6c02,y

loc_06e81e:
    lda $6add,y
    cmp #$00
    beq loc_06e829
    jml loc_06e8c9

loc_06e829:
    lda $6b77,y
    and #$ef
    sta $6b77,y
    lda $1936
    and #$30
    bne loc_06e83c
    jml loc_06e8b6

loc_06e83c:
    lda $1936
    sta $3a
    lda $3a
    and #$30
    sta $3a
    lda $1938
    and #$30
    cmp #$30
    bne loc_06e854
    jml loc_06e8b6

loc_06e854:
    lda $6adc,y
    and #$30
    cmp $3a
    beq loc_06e861
    jml loc_06e899

loc_06e861:
    lda $6adc,y
    and #$0f
    cmp #$07
    bcc loc_06e86e
    jml loc_06e899

loc_06e86e:
    lda $6b7e,y
    bit #$40
    beq loc_06e879
    jml loc_06e880

loc_06e879:
    lda #$e0
    sta $6add,y
    bra loc_06e885

loc_06e880:
    lda #$20
    sta $6add,y

loc_06e885:
    sep #$20
    lda $6b77,y
    ora #$10
    sta $6b77,y
    lda $6adc,y
    and #$f0
    sta $6adc,y
    bra loc_06e8b6

loc_06e899:
    lda $1936
    and #$30
    sta $3a
    lda $6adc,y
    and #$cf
    ora $3a
    and #$f0
    sta $6adc,y
    lda $6b77,y
    and #$ef
    sta $6b77,y
    bra loc_06e8c6

loc_06e8b6:
    lda $6adc,y
    and #$0f
    cmp #$0f
    beq loc_06e8c6
    lda $6adc,y
    inc a
    sta $6adc,y

loc_06e8c6:
    plp
    ply
    rts

loc_06e8c9:
    sep #$20
    lda $6add,y
    bmi loc_06e8d4
    jml loc_06e8df

loc_06e8d4:
    lda $6add,y
    clc
    adc #$02
    sta $6add,y
    bra loc_06e8e8

loc_06e8df:
    lda $6add,y
    sec
    sbc #$02
    sta $6add,y

loc_06e8e8:
    lda $6adc,y
    and #$f0
    ora #$0f
    sta $6adc,y
    plp
    ply
    rts

sub_06e8f5:
    phy
    php
    ldy $2b,x
    lda #$00
    sta $08
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$30
    bne loc_06e90e
    jml loc_06e93e

loc_06e90e:
    lda $6b77,y
    bit #$04
    beq loc_06e919
    jml loc_06e930

loc_06e919:
    rep #$20
.a16
    lda #$0280
    sta $0a
    sep #$20
.a8
    phx
    jsl sub_0690d4
    lda $06e9ea,x
    sta $09
    plx
    bra loc_06e942

loc_06e930:
    phx
    jsl sub_0690d4
    lda $06e9f0,x
    sta $09
    plx
    bra loc_06e942

loc_06e93e:
    lda #$08
    sta $09

loc_06e942:
    rep #$20
.a16
    lda $08
    sep #$20
.a8
    bne loc_06e94e
    jml loc_06e993

loc_06e94e:
    lda $1939
    bit #$02
    bne loc_06e959
    jml loc_06e95b

loc_06e959:
    bra loc_06e993

loc_06e95b:
    lda $1939
    bit #$01
    bne loc_06e966
    jml loc_06e974

loc_06e966:
    rep #$20
.a16
    lda $08
    eor #$ffff
    inc a
    sta $08
    sep #$20
.a8
    bra loc_06e993

loc_06e974:
    rep #$20
.a16
    lda #$0000
    sta $08
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $0a
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $6ad2,y
    sep #$20
.a8
    jmp loc_06e9e7

loc_06e993:
    lda $6b77,y
    bit #$04
    bne loc_06e99e
    jml loc_06e99e

loc_06e99e:
    rep #$20
.a16
    lda $6ad2,y
    sta $3a
    lda $0a
    jsl sub_7f2567
    sta $6ad2,y
    sep #$20
.a8
    rep #$20
.a16
    lda $6ad2,y
    sta $0a
    sep #$20
.a8
    rep #$20
.a16
    lda $6ad0,y
    cmp $08
    sep #$20
.a8
    bne loc_06e9c8
    jml loc_06e9e5

loc_06e9c8:
    rep #$20
.a16
    beq loc_06e9e2
    bmi loc_06e9d9
    sec
    sbc $0a
    cmp $08
    bpl loc_06e9e2
    lda $08
    bra loc_06e9e2

loc_06e9d9:
    clc
    adc $0a
    cmp $08
    bmi loc_06e9e2
    lda $08

loc_06e9e2:
    sta $6ad0,y

loc_06e9e5:
.a8
    sep #$20

loc_06e9e7:
    plp
    ply
    rtl
    .db $18,$10,$08,$08,$18,$18,$18,$18,$18,$18,$18,$18,$5a,$08,$e2,$20
    .db $c2,$10,$b4,$2b,$a9,$e0,$99,$84,$6b,$a9,$e2,$20,$44,$ea,$a9,$00
    .db $20,$fd,$ea,$28,$7a,$60

sub_06ea10:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda #$e0
    sta $6b84,y
    lda #$f6
    jsr sub_06ebff
    lda #$0a
    jsr sub_06ec46
    rep #$20
.a16
    lda $1938
    bit #$0c00
    sep #$20
.a8
    bne loc_06ea41
    lda $6acf,y
    sta $3a
    lda #$00
    jsl sub_7f2782
    sta $6acf,y

loc_06ea41:
    plp
    ply
    rts
    .db $08,$8d,$b0,$1d,$b9,$81,$6b,$29,$fb,$99,$81,$6b,$c2,$20,$b9,$f5
    .db $6b,$38,$e9,$20,$00,$18,$75,$0e,$85,$08,$30,$04,$5c,$6f,$ea,$06
    .db $ad,$36,$1e,$d0,$06,$a9,$00,$05,$8d,$36,$1e,$ad,$36,$1e,$10,$5c
    .db $f0,$5a,$b9,$f5,$6b,$8d,$be,$1d,$38,$e9,$40,$00,$18,$75,$0e,$10
    .db $4b,$49,$ff,$ff,$1a,$8d,$be,$1d,$e2,$20,$b9,$81,$6b,$09,$04,$99
    .db $81,$6b,$c2,$20,$ad,$36,$1e,$8d,$ae,$1d,$e2,$20,$20,$a3,$eb,$a5
    .db $c4,$29,$01,$f0,$52,$b9,$cf,$6a,$cd,$b0,$1d,$f0,$1a,$30,$0d,$38
    .db $e9,$01,$cd,$b0,$1d,$10,$10,$ad,$b0,$1d,$80,$0b,$18,$69,$01,$cd
    .db $b0,$1d,$30,$03,$ad,$b0,$1d,$99,$cf,$6a,$80,$2b,$e2,$20,$b9,$cf
    .db $6a,$30,$04,$5c,$fb,$ea,$06,$b9,$cf,$6a,$c9,$00,$f0,$16,$30,$0b
    .db $38,$e9,$02,$c9,$00,$10,$0d,$a9,$00,$80,$09,$18,$69,$02,$c9,$00
    .db $30,$02,$a9,$00,$99,$cf,$6a,$28,$60,$08,$8d,$b0,$1d,$b9,$81,$6b
    .db $29,$f7,$99,$81,$6b,$c2,$30,$b9,$f7,$6b,$18,$69,$20,$00,$18,$75
    .db $0e,$30,$0b,$ad,$36,$1e,$d0,$06,$a9,$00,$fb,$8d,$36,$1e,$c2,$20
    .db $ad,$36,$1e,$30,$24,$f0,$22,$b9,$f7,$6b,$18,$69,$6e,$00,$18,$75
    .db $0e,$30,$16,$4a,$8d,$be,$1d,$e2,$20,$b9,$81,$6b,$09,$08,$99,$81
    .db $6b,$20,$a3,$eb,$20,$7a,$eb,$80,$2b,$e2,$20,$b9,$cf,$6a,$10,$04
    .db $5c,$78,$eb,$06,$b9,$cf,$6a,$c9,$00,$f0,$16,$30,$0b,$38,$e9,$02
    .db $c9,$00,$10,$0d,$a9,$00,$80,$09,$18,$69,$02,$c9,$00,$30,$02,$a9
    .db $00,$99,$cf,$6a,$28,$60,$c2,$20,$ad,$be,$1d,$85,$08,$e2,$20,$c2
    .db $20,$b9,$d7,$6a,$89,$80,$00,$f0,$05,$09,$00,$ff,$80,$03,$29,$ff
    .db $00,$85,$04,$e2,$20,$20,$c7,$eb,$a5,$09,$0a,$99,$d7,$6a,$60,$c2
    .db $20,$ad,$be,$1d,$85,$08,$e2,$20,$c2,$20,$ad,$36,$1e,$85,$04,$e2
    .db $20,$20,$c7,$eb,$c2,$20,$a5,$09,$8d,$36,$1e,$e2,$20,$a9,$03,$99
    .db $bf,$6a,$60,$c2,$20,$a5,$08,$29,$80,$ff,$e2,$20,$d0,$04,$5c,$df
    .db $eb,$06,$c2,$20,$a9,$7f,$00,$85,$08,$e2,$20,$da,$a6,$08,$c2,$20
    .db $bf,$66,$8e,$00,$89,$80,$00,$f0,$05,$09,$00,$ff,$80,$03,$29,$ff
    .db $00,$85,$02,$e2,$20,$fa,$22,$fc,$e0,$07,$60

sub_06ebff:
    php
    sta $1db0
    lda $6b81,y
    and #$fb
    sta $6b81,y
    rep #$20
.a16
    lda $6bf5,y
    clc
    adc $0e,x
    bmi loc_06ec19
    jml loc_06ec44

loc_06ec19:
    lda $1e36
    bmi loc_06ec22
    jml loc_06ec44

loc_06ec22:
    sep #$20
.a8
    lda $6b84,y
    and #$bf
    sta $6b84,y
    rep #$20
.a16
    lda $1e36
    cmp #$8000
    ror a
    sta $1e36
    sep #$20
.a8
    lda $6b81,y
    ora #$04
    sta $6b81,y
    bra loc_06ec81

loc_06ec44:
.a16
    plp
.a8
    rts

sub_06ec46:
    php
    sta $1db0
    lda $6b81,y
    and #$f7
    sta $6b81,y
    rep #$20
.a16
    lda $6bf7,y
    clc
    adc $0e,x
    bmi loc_06ecae
    lda $1e36
    bmi loc_06ecae
    sep #$20
.a8
    lda $6b84,y
    and #$bf
    sta $6b84,y
    rep #$20
.a16
    lda $1e36
    cmp #$8000
    ror a
    sta $1e36
    sep #$20
.a8
    lda $6b81,y
    ora #$08
    sta $6b81,y

loc_06ec81:
    lda $c4
    and #$01
    beq loc_06ecae
    lda $6acf,y
    cmp $1db0
    beq loc_06eca9
    bmi loc_06ec9e
    sec
    sbc #$01
    cmp $1db0
    bpl loc_06eca9
    lda $1db0
    bra loc_06eca9

loc_06ec9e:
    clc
    adc #$01
    cmp $1db0
    bmi loc_06eca9
    lda $1db0

loc_06eca9:
    sta $6acf,y
    bra loc_06ecae

loc_06ecae:
    plp
    rts

sub_06ecb0:
    phx
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6ad4,y
    sta $3a
    lda #$00
    jsl sub_7f2782
    sta $6ad4,y
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$0f
    cmp #$01
    bne loc_06ecd8
    jml loc_06eced

loc_06ecd8:
    rep #$20
.a16
    lda $6ab9,y
    sta $3a
    lda $1e36
    jsl sub_7f25a3
    sta $6ab9,y
    sep #$20
.a8
    bra loc_06ed00

loc_06eced:
    rep #$20
.a16
    lda $6ab9,y
    sta $3a
    lda $1e36
    jsl sub_7f2567
    sta $6ab9,y
    sep #$20

loc_06ed00:
.a8
    lda $6b77,y
    bit #$01
    bne loc_06ed0b
    jml loc_06ed31

loc_06ed0b:
    lda $6b63,y
    and #$80
    bne loc_06ed16
    jml loc_06ed31

loc_06ed16:
    lda $6b32,y
    sta $12,x
    lda $12,x
    eor #$ff
    inc a
    sta $12,x
    lda $12,x
    cmp #$80
    ror a
    cmp #$80
    ror a
    clc
    adc $12,x
    sta $12,x
    bra loc_06ed3e

loc_06ed31:
    lda $6aba,y
    sta $12,x
    lda $12,x
    clc
    adc $6acf,y
    sta $12,x

loc_06ed3e:
    lda $6b77,y
    bit #$04
    bne loc_06ed49
    jml loc_06ed61

loc_06ed49:
    lda $6abc,y
    sta $14,x
    lda $14,x
    clc
    adc $6ad1,y
    sta $14,x
    lda $14,x
    clc
    adc $6ad4,y
    sta $14,x
    jmp loc_06ed96

loc_06ed61:
    rep #$20
.a16
    lda $1e38
    sta $6acd,y
    sep #$20
.a8
    rep #$20
.a16
    lda $6abb,y
    clc
    adc $1e38
    sta $6abb,y
    sep #$20
.a8
    lda $6abc,y
    sta $14,x
    lda $14,x
    clc
    adc $6ad1,y
    sta $14,x
    lda $14,x
    clc
    adc $6ad4,y
    sta $14,x
    lda $14,x
    clc
    adc $6ade,y
    sta $14,x

loc_06ed96:
    phy
    ldy $2b,x
    lda $6a72,y
    ply
    and #$10
    beq loc_06eda5
    jml loc_06edb6

loc_06eda5:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    bne loc_06edb6
    jml loc_06edc3

loc_06edb6:
    lda $16,x
    cmp #$80
    ror a
    bpl loc_06edbf
    adc #$00

loc_06edbf:
    sta $16,x
    bra loc_06ee06

loc_06edc3:
    lda $6add,y
    cmp #$00
    beq loc_06edce
    jml loc_06ede7

loc_06edce:
    lda $6abd,y
    cmp #$80
    ror a
    bpl loc_06edd8
    adc #$00

loc_06edd8:
    sta $3a
    cmp #$80
    ror a
    bpl loc_06ede1
    adc #$00

loc_06ede1:
    clc
    adc $3a
    sta $6abd,y

loc_06ede7:
    lda $6abd,y
    clc
    adc $6add,y
    sta $6abd,y
    lda $6abd,y
    clc
    adc $6ad5,y
    clc
    adc $6ad8,y
    clc
    adc $6ad7,y
    clc
    adc $6ada,y
    sta $16,x

loc_06ee06:
    plp
    ply
    plx
    rts

sub_06ee0a:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $6b7d,y
    bit #$80
    bne loc_06ee1d
    jml loc_06ee55

loc_06ee1d:
    lda $1e13
    cmp #$01
    bne loc_06ee2e
    lda $21,x
    and #$20
    beq loc_06ee2e
    jml loc_06ee32

loc_06ee2e:
    lda #$14
    sta $18,x

loc_06ee32:
    lda $6b84,y
    and #$5f
    sta $6b84,y
    lda #$00
    sta $6b62,y
    rep #$20
.a16
    lda #$012c
    clc
    adc $1e0f
    sta $3c
    cmp $0e,x
    sep #$20
.a8
    bpl loc_06ee55
    lda #$64
    sta $6b62,y

loc_06ee55:
    rep #$20
.a16
    lda $1b84
    bit #$0002
    sep #$20
.a8
    beq loc_06ee64
    jmp loc_06eeec

loc_06ee64:
    lda $6b62,y
    sta $02
    jsr sub_06eeef
    rep #$20
.a16
    lda $32,x
    sta $6b0b,y
    lda $6b61,y
    bpl loc_06ee7d
    lda #$0000
    bra loc_06ee7f

loc_06ee7d:
    lda $34,x

loc_06ee7f:
    sta $6b0d,y
    lda $36,x
    sta $6b0f,y
    sep #$20
.a8
    lda $18,x
    sta $02
    jsr sub_06eeef
    rep #$20
.a16
    lda $32,x
    clc
    adc $6b0b,y
    sta $6b0b,y
    lda $34,x
    clc
    adc $6b0d,y
    sta $6b0d,y
    lda $36,x
    clc
    adc $6b0f,y
    sta $6b0f,y
    lda $1de2
    and #$00ff
    cmp #$0009
    bne loc_06eebc
    jml loc_06ef73

loc_06eebc:
    lda $6b0b,y
    clc
    adc $0c,x
    sta $0c,x
    lda $6b0d,y
    clc
    adc $0e,x
    sta $0e,x
    lda $6b0f,y
    clc
    adc $10,x
    sta $10,x
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $1cc1,x
    sta $1cc3,x
    sta $1cc5,x
    sta $39,x
    sta $3b,x
    sta $3d,x
    sep #$20

loc_06eeec:
.a8
    plp
    ply
    rts

sub_06eeef:
    ldy $14d6
    lda $02
    sta $0018,y
    jsl sub_7f2bd2
    phy
    ldy $2b,x
    lda $6aba,y
    sta $02
    ply
    lda $02
    sta $0012,y
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
    rep #$20
.a16
    lda $0032,y
    sta $32,x
    lda $0034,y
    sta $34,x
    lda $0036,y
    sta $36,x
    sep #$20
.a8
    ldy $2b,x
    lda $6b84,y
    and #$80
    beq loc_06ef41
    jml loc_06ef4a

loc_06ef41:
    rep #$20
.a16
    lda #$0000
    sta $32,x
    sep #$20

loc_06ef4a:
.a8
    lda $6b84,y
    and #$40
    beq loc_06ef55
    jml loc_06ef5e

loc_06ef55:
    rep #$20
.a16
    lda #$0000
    sta $34,x
    sep #$20

loc_06ef5e:
.a8
    lda $6b84,y
    and #$20
    beq loc_06ef69
    jml loc_06ef72

loc_06ef69:
    rep #$20
.a16
    lda #$0000
    sta $36,x
    sep #$20

loc_06ef72:
.a8
    rts

loc_06ef73:
.a16
    rep #$20
    lda $32,x
    sta $1dc0
    lda $34,x
    sta $1dbe
    lda $36,x
    sta $1dbc
    lda $6b0d,y
    clc
    adc $0e,x
    sta $0e,x
    lda $6b0b,y
    sta $1cc1,x
    clc
    adc $0c,x
    sta $1dba
    lda $6b0f,y
    sta $1cc5,x
    clc
    adc $10,x
    sta $1db6
    lda $6b11,y
    sta $32,x
    lda $6b13,y
    sta $36,x
    lda #$0000
    sta $34,x
    lda #$0000
    sta $1dab
    rep #$20
    lda $1d6f
    sta $1ce8,x
    sep #$20
.a8
    lda $1d71
    sta $1cea,x
    phy
    lda #$01
    jsl sub_0db282
    ply
    rep #$20
.a16
    lda $1ce8,x
    sta $1d6f
    sep #$20
.a8
    lda $1cea,x
    sta $1d71
    rep #$20
.a16
    lda $32,x
    sta $6b11,y
    lda $36,x
    sta $6b13,y
    lda $1dc0
    sta $32,x
    lda $1dbe
    sta $34,x
    lda $1dbc
    sta $36,x
    sep #$20
.a8
    lda $1955
    bit #$04
    beq loc_06f00d
    lda $6be6,y
    ora #$10
    sta $6be6,y

loc_06f00d:
    plp
    ply
    rts

sub_06f010:
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $d7f4
    beq loc_06f057
    lda $1936
    bit #$80
    bne loc_06f02e
    lda $1937
    bit #$40
    beq loc_06f033
    lda #$00
    bra loc_06f030

loc_06f02e:
    lda #$01

loc_06f030:
    sta $6b78,y

loc_06f033:
    lda $6b78,y
    bne loc_06f045
    lda $1939
    bit #$40
    beq loc_06f045
    jsl sub_06a47b
    bra loc_06f05b

loc_06f045:
    lda $1938
    bit #$80
    beq loc_06f052
    jsl sub_06a4c5
    bra loc_06f05b

loc_06f052:
    lda #$00
    sta $6b78,y

loc_06f057:
    jsl sub_06a51d

loc_06f05b:
    plp
    rts

sub_06f05d:
    phy
    php
    sep #$20
    rep #$10
    ldy $2b,x
    lda $1d72
    beq loc_06f077
    lda #$26
    sta $1dc1
    lda #$00
    sta $1dba
    jmp loc_06f17b

loc_06f077:
    lda $6a72,y
    and #$10
    bne loc_06f082
    jml loc_06f08f

loc_06f082:
    lda #$00
    sta $1dc1
    lda #$00
    sta $1dba
    jmp loc_06f17b

loc_06f08f:
    phx
    jsl sub_0690d4
    lda $06dbc0,x
    sta $1dc1
    lda $06dbc6,x
    sta $1dc0
    lda $06dbcc,x
    sta $1dbd
    lda $06dbd8,x
    sta $1dbc
    lda $06dbe4,x
    sta $1db8
    lda $06dbd2,x
    sta $1db7
    lda $06dbde,x
    sta $1dbb
    plx
    lda $6b77,y
    bit #$40
    bne loc_06f0d1
    jml loc_06f0f0

loc_06f0d1:
    lda $1db8
    sta $1db9
    lda $1de2
    cmp #$09
    beq loc_06f0e7
    lda $1dbd
    sta $1dba
    jmp loc_06f162

loc_06f0e7:
    lda $1db7
    sta $1dba
    jmp loc_06f162

loc_06f0f0:
    lda $6b77,y
    bit #$20
    bne loc_06f0fb
    jml loc_06f107

loc_06f0fb:
    lda $1dbc
    sta $1dba
    sta $1db9
    jmp loc_06f162

loc_06f107:
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    bit #$04
    beq loc_06f116
    jml loc_06f162

loc_06f116:
    lda $1939
    bit #$02
    bne loc_06f12e
    lda $1939
    bit #$01
    bne loc_06f12e
    lda #$00
    sta $1dba
    sta $1db9
    bra loc_06f162

loc_06f12e:
    lda $c4
    and #$01
    bne loc_06f138
    jml loc_06f188

loc_06f138:
    lda $18,x
    cmp $1dbb
    beq loc_06f159
    bmi loc_06f14e
    sec
    sbc #$01
    cmp $1dbb
    bpl loc_06f159
    lda $1dbb
    bra loc_06f159

loc_06f14e:
    clc
    adc #$01
    cmp $1dbb
    bmi loc_06f159
    lda $1dbb

loc_06f159:
    sta $18,x
    lda #$00
    sta $1dba
    bra loc_06f188

loc_06f162:
    lda $6aa0,y
    and #$0f
    cmp #$01
    bne loc_06f16f
    jml loc_06f17b

loc_06f16f:
    lda $1dc0
    sta $1dc1
    lda $1db9
    sta $1dba

loc_06f17b:
    lda $18,x
    sta $3a
    lda $1dc1
    jsl sub_7f27b5
    sta $18,x

loc_06f188:
    rep #$20
.a16
    lda $6b62,y
    bit #$0080
    beq loc_06f197
    ora #$ff00
    bra loc_06f19a

loc_06f197:
    and #$00ff

loc_06f19a:
    sta $97
    lda $1dba
    bit #$0080
    beq loc_06f1a9
    ora #$ff00
    bra loc_06f1ac

loc_06f1a9:
    and #$00ff

loc_06f1ac:
    sta $e4
    sep #$20
.a8
    rep #$20
.a16
    lda $e4
    cmp $97
    beq loc_06f1f0
    sec
    sbc $97
    cmp #$0000
    bmi loc_06f1ca
    cmp #$0008
    bpl loc_06f1d2
    lda #$0008
    bra loc_06f1d2

loc_06f1ca:
    cmp #$fff8
    bmi loc_06f1d2
    lda #$fff8

loc_06f1d2:
    cmp #$8000
    ror a
    bpl loc_06f1db
    adc #$0000

loc_06f1db:
    cmp #$8000
    ror a
    bpl loc_06f1e4
    adc #$0000

loc_06f1e4:
    cmp #$8000
    ror a
    bpl loc_06f1ed
    adc #$0000

loc_06f1ed:
    clc
    adc $97

loc_06f1f0:
    sta $97
    sep #$20
.a8
    lda $97
    sta $6b62,y
    plp
    ply
    rts

loc_06f1fc:
    phx
    phy
    php
    jsl sub_06f2d9
    rep #$20
.a16
    lda #$0000
    sta $1e38
    sep #$20
.a8
    jsr sub_06e4b1
    plp
    ply
    plx
    rts
    .db $da,$5a,$08,$22,$d9,$f2,$06,$c2,$20,$a9,$00,$00,$8d,$38,$1e,$e2
    .db $20,$ad,$38,$19,$89,$10,$d0,$0c,$ad,$38,$19,$89,$20,$f0,$16,$20
    .db $4d,$f2,$80,$11,$20,$4d,$f2,$c2,$20,$ad,$38,$1e,$49,$ff,$ff,$1a
    .db $8d,$38,$1e,$e2,$20,$28,$7a,$fa,$60,$da,$22,$d4,$90,$06,$bf,$d7
    .db $d2,$06,$8d,$39,$1e,$fa,$60

sub_06f25b:
.a16
    phx
    phy
    php
    sep #$20
.a8
    rep #$10
    rep #$20
.a16
    lda $08
    sec
    sbc $000e,x
    sta $02
    lda #$0190
    sta $08
    jsl sub_07af50
    sep #$20
.a8
    plp
    ply
    plx
    rtl

loc_06f27b:
    phx
    phy
    php
    rep #$20
.a16
    lda $0c,x
    sec
    sbc $02
    sta $02
    lda $97
    sta $08
    jsl sub_07af50
    sep #$20
.a8
    plp
    ply
    plx
    rtl
    .db $ad,$4d,$1b,$29,$07,$c9,$00,$f0,$38,$ad,$4d,$1b,$29,$07,$c9,$02
    .db $d0,$1c,$ad,$13,$1e,$c9,$01,$d0,$0a,$b5,$21,$29,$20,$f0,$04,$5c
    .db $c3,$f2,$06,$c2,$20,$ad,$0f,$1e,$18,$69,$b0,$ff,$80,$05,$c2,$20
    .db $a9,$b0,$ff,$d5,$0e,$10,$0a,$c2,$20,$a9,$f8,$ff,$18,$75,$0e,$95
    .db $0e,$e2,$20,$60

sub_06f2d9:
    phy
    php
    rep #$30
.a16
    ldy $2b,x
    lda $6b89,y
    eor $1938
    ora $6b87,y
    and $1938
    sta $6b87,y
    lda $1938
    sta $6b89,y
    plp
.a8
    ply
    rtl

sub_06f2f7:
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
    beq loc_06f30d
    jmp loc_06f362

loc_06f30d:
    lda #$00
    xba
    ldy $2b,x
    lda $6aa0,y
    and #$f0
    cmp #$30
    bne loc_06f31f
    jml loc_06f336

loc_06f31f:
    lda $6ad6,y
    inc a
    cmp #$1e
    bcc loc_06f329
    lda #$00

loc_06f329:
    sta $6ad6,y
    phx
    tax
    lda $06f366,x
    plx
    sta $6ad5,y

loc_06f336:
    lda $6adb,y
    inc a
    cmp #$20
    bcc loc_06f340
    lda #$00

loc_06f340:
    sta $6adb,y
    phx
    tax
    rep #$20
.a16
    lda $06f384,x
    bit #$0080
    beq loc_06f355
    ora #$ff00
    bra loc_06f358

loc_06f355:
    and #$00ff

loc_06f358:
    clc
    adc $6ae2,y
    sta $6ae2,y
    sep #$20
.a8
    plx

loc_06f362:
    plp
    ply
    plx
    rts
    .db $00,$01,$02,$02,$03,$03,$04,$04,$04,$04,$03,$03,$02,$02,$01,$00
    .db $ff,$fe,$fe,$fd,$fd,$fc,$fc,$fc,$fc,$fd,$fd,$fe,$fe,$ff,$01,$00
    .db $01,$00,$00,$01,$00,$00,$00,$00,$ff,$00,$00,$ff,$00,$ff,$ff,$00
    .db $ff,$00,$00,$ff,$00,$00,$00,$00,$01,$00,$00,$01,$00,$01

loc_06f3a4:
    sep #$20
    rep #$10
    jsl sub_06a51d
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_06f3bf
    jml loc_06f3d8

loc_06f3bf:
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
    phx
    tyx
    ply

loc_06f3d8:
    cpy #$0000
    beq loc_06f405
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
    lda #$f561
    sta $002b,y
    sep #$20
.a8
    lda #$01
    sta $002d,y
    lda #$01
    sta $002e,y
    lda #$32
    sta $000a,y

loc_06f405:
    ldy $2b,x
    lda #$01
    sta $3a
    lda #$01
    sta $3c
    lda #$01
    sta $3e
    jsl sub_07b89b
    lda $1e0d
    ora #$01
    sta $1e0d
    lda #$00
    sta $1ce5
    phy
    ldy $2b,x
    lda #$0d
    cmp $6c15,y
    beq loc_06f431
    sta $6c15,y

loc_06f431:
    rep #$20
.a16
    lda #$c585
    cmp $6c13,y
    beq loc_06f447
    sta $6c13,y
    lda #$0000
    sta $6c16,y
    sta $6c18,y

loc_06f447:
    sep #$20
.a8
    ply
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$10
    beq loc_06f45b
    jml loc_06f470

loc_06f45b:
    rep #$20
.a16
    lda #$0011
    cpx $12c3
    beq loc_06f468
    ora #$8000

loc_06f468:
    jsl sub_7f6e09
    sep #$20
.a8
    bra loc_06f483

loc_06f470:
    rep #$20
.a16
    lda #$0015
    cpx $12c3
    beq loc_06f47d
    ora #$8000

loc_06f47d:
    jsl sub_7f6e09
    sep #$20

loc_06f483:
.a8
    lda #$1e
    sta $18,x
    lda #$00
    sta $13,x
    lda $18,x
    sta $85
    lda $14,x
    sta $1512
    lda $13,x
    sta $1511
    jsl sub_7f2d1f
    jsl sub_069195
    rep #$20
.a16
    lda #$0000
    sta $1ce4,x
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $1ce4,x
    sep #$20
.a8
    lda $1aa6
    bit #$02
    beq loc_06f4c0
    jml loc_06f4ca

loc_06f4c0:
    rep #$20
.a16
    lda #$001e
    sta $1ce4,x
    sep #$20

loc_06f4ca:
.a8
    phy
    lda #$0c
    jsl sub_7f2360
    rep #$20
.a16
    lda #$f512
    sta $6a62,y
    sep #$20
.a8
    lda #$06
    sta $6a64,y
    ply
    lda $6aea,y
    and #$1f
    sta $6aea,y
    phy
    ldy #$033f
    lda $0021,y
    ora #$08
    sta $0021,y
    lda $0021,y
    ora #$10
    sta $0021,y
    ply
    jsl sub_7f2319
    rep #$20
.a16
    lda #$0001
    sta $1cc8,x
    sep #$20
.a8
    lda #$00
    sta $6c00,y
    rtl

loc_06f512:
    sep #$20
    rep #$10
    ldy $2b,x
    lda #$00
    sta $6c00,y
    rep #$20
.a16
    lda $1ce4,x
    cmp #$ffff
    sep #$20
.a8
    bne loc_06f52d
    jml loc_06f53b

loc_06f52d:
    rep #$20
.a16
    lda $1ce4,x
    clc
    adc #$0001
    sta $1ce4,x
    sep #$20

loc_06f53b:
.a8
    jsl sub_0dbccf
    lda $25,x
    and #$df
    sta $25,x
    lda $6beb,y
    bit #$80
    beq loc_06f550
    jml loc_06f583

loc_06f550:
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
    bne loc_06f567
    brl loc_06f583

loc_06f567:
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0032
    sep #$20
.a8
    beq loc_06f579
    bmi loc_06f579
    jml loc_06f583

loc_06f579:
    rep #$20
.a16
    lda #$0032
    sta $1ce4,x
    sep #$20

loc_06f583:
.a8
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0025
    sep #$20
.a8
    bne loc_06f593
    jml loc_06f5ca

loc_06f593:
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0032
    sep #$20
.a8
    bne loc_06f5a3
    jml loc_06f609

loc_06f5a3:
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0026
    sep #$20
.a8
    bne loc_06f5b3
    jml loc_06f64e

loc_06f5b3:
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0032
    sep #$20
.a8
    bpl loc_06f5c3
    jml loc_06f652

loc_06f5c3:
    jsl sub_07ec9a
    jmp loc_06f64e

loc_06f5ca:
    rep #$20
.a16
    lda #$0000
    sta $3a
    sep #$20
.a8
    lda #$03
    sta $3c
    lda #$01
    sta $3e
    jsl sub_07b79f
    lda #$1f
    sta $3a
    lda #$1f
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b861
    lda #$04
    sta $3a
    lda #$08
    sta $3c
    lda #$08
    sta $3e
    jsl sub_07b89b
    lda $6a8c,y
    ora #$80
    sta $6a8c,y
    bra loc_06f64e

loc_06f609:
    lda $6a8c,y
    and #$7f
    sta $6a8c,y
    rep #$20
.a16
    lda #$0002
    sta $3a
    sep #$20
.a8
    lda #$03
    sta $3c
    lda #$00
    sta $3e
    jsl sub_07b79f
    lda #$1f
    sta $3a
    lda #$1f
    sta $3c
    lda #$1f
    sta $3e
    jsl sub_07b861
    lda #$00
    sta $3a
    lda #$02
    sta $3c
    lda #$02
    sta $3e
    jsl sub_07b89b
    lda $6a8c,y
    ora #$80
    sta $6a8c,y

loc_06f64e:
    jsl sub_07b833

loc_06f652:
    lda #$16
    jsl sub_7f2a7b
    cpy #$0000
    bne loc_06f661
    jml loc_06f671

loc_06f661:
    phy
    lda #$16
    jsl sub_7f2a7b
    lda $0025,y
    ora #$08
    sta $0025,y
    ply

loc_06f671:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    beq loc_06f682
    jml loc_06f697

loc_06f682:
    rep #$20
.a16
    lda #$0000
    sta $1cc1,x
    sta $1cc5,x
    sta $32,x
    sta $36,x
    sep #$20
.a8
    jsl sub_06d781

loc_06f697:
    lda $12,x
    sta $3a
    lda #$00
    jsl sub_7f27b5
    sta $12,x
    jsl sub_07b038
    jsl sub_068fe2
    jsl sub_078000
    jsl sub_0797fb
    jsl sub_07af5b
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0032
    sep #$20
.a8
    beq loc_06f6c9
    bmi loc_06f6c9
    jml loc_06f769

loc_06f6c9:
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0028
    sep #$20
.a8
    bpl loc_06f6d9
    jml loc_06f6fb

loc_06f6d9:
    rep #$20
.a16
    lda $1ce4,x
    cmp #$002e
    sep #$20
.a8
    bpl loc_06f6e9
    jml loc_06f6fb

loc_06f6e9:
    lda $c4
    and #$01
    beq loc_06f6f3
    jml loc_06f6fb

loc_06f6f3:
    lda $20,x
    ora #$02
    sta $20,x
    bra loc_06f6fb

loc_06f6fb:
    phy
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0032
    sep #$20
.a8
    beq loc_06f70c
    jml loc_06f768

loc_06f70c:
    rep #$20
.a16
    lda #$bc9c
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_06f71f
    jml loc_06f768

loc_06f71f:
    cpy #$0000
    beq loc_06f768
    rep #$20
.a16
    lda #$80c1
    sta $0019,y
    sep #$20
.a8
    lda #$06
    sta $001b,y
    lda #$01
    sta $002d,y
    lda #$01
    sta $002e,y
    lda $0021,y
    ora #$01
    sta $0021,y
    jsl sub_7f2baa
    lda $0020,y
    ora #$10
    sta $0020,y
    lda #$06
    sta $0017,y
    lda #$3c
    sta $0013,y
    lda #$7f
    sta $0015,y
    lda $0020,y
    and #$f7
    sta $0020,y

loc_06f768:
    ply

loc_06f769:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$20
    bne loc_06f77a
    jml loc_06f796

loc_06f77a:
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    and #$f0
    cmp #$30
    bne loc_06f78b
    jml loc_06f796

loc_06f78b:
    lda $16,x
    clc
    adc #$05
    sta $16,x
    jsl sub_7f2c24

loc_06f796:
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0032
    sep #$20
.a8
    beq loc_06f7a6
    jml loc_06f80e

loc_06f7a6:
    rep #$20
.a16
    lda #$0000
    sta $32,x
    sta $34,x
    sta $36,x
    sep #$20
.a8
    phy
    rep #$20
.a16
    lda #$be08
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_06f7c7
    jml loc_06f7ee

loc_06f7c7:
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
    lda #$f593
    sta $002b,y
    sep #$20
.a8
    lda #$0a
    sta $002d,y
    lda #$0a
    sta $002e,y
    jsl sub_7f2baa

loc_06f7ee:
    ply
    rep #$20
.a16
    lda #$0010
    cpx $12c3
    beq loc_06f7fc
    ora #$8000

loc_06f7fc:
    jsl sub_7f6e09
    sep #$20
.a8
    jsr sub_06f825
    rep #$20
.a16
    lda #$bc9c
    sta $04,x
    sep #$20

loc_06f80e:
.a8
    rep #$20
.a16
    lda $1ce4,x
    cmp #$0031
    sep #$20
.a8
    beq loc_06f820
    bmi loc_06f820
    jml loc_06f824

loc_06f820:
    jsl sub_7f2319

loc_06f824:
    rtl

sub_06f825:
    ldy #$033f
    lda $0015,y
    clc
    adc #$14
    eor #$ff
    inc a
    sta $1dae
    ldy $2b,x
    rep #$20
.a16
    lda $6af1,y
    sep #$20
.a8
    bne loc_06f843
    jml loc_06f869

loc_06f843:
    phx
    ldx $6af1,y
    rep #$20
.a16
    lda #$d60b
    sta $19,x
    sep #$20
.a8
    lda #$07
    sta $1b,x
    lda $1dae
    sta $14,x
    lda $14,x
    clc
    adc #$80
    sta $14,x
    lda #$d8
    sta $12,x
    lda #$0c
    sta $18,x
    plx

loc_06f869:
    rep #$20
.a16
    lda $6aef,y
    sep #$20
.a8
    bne loc_06f876
    jml loc_06f895

loc_06f876:
    phx
    ldx $6aef,y
    rep #$20
.a16
    lda #$d60b
    sta $19,x
    sep #$20
.a8
    lda #$07
    sta $1b,x
    lda $1dae
    sta $14,x
    lda #$c4
    sta $12,x
    lda #$0a
    sta $18,x
    plx

loc_06f895:
    rts
    .db $da,$5a,$08,$86,$04,$a9,$48,$80,$13,$da,$5a,$08,$86,$04,$a9,$1b
    .db $80,$0a,$da,$5a,$08,$ac,$c3,$12,$84,$04,$a9,$11,$85,$02,$ac,$c3
    .db $12,$da,$b6,$2b,$9b,$fa,$b9,$02,$6c,$29,$1f,$f0,$4e,$c2,$20,$a9
    .db $cc,$c5,$85,$5f,$e2,$20,$22,$17,$2a,$7f,$b0,$04,$5c,$11,$f9,$06
    .db $22,$f1,$be,$07,$c2,$20,$a9,$15,$f9,$99,$19,$00,$e2,$20,$a9,$06
    .db $99,$1b,$00,$a9,$00,$99,$0a,$00,$b9,$21,$00,$09,$01,$99,$21,$00
    .db $b9,$24,$00,$09,$04,$99,$24,$00,$a5,$02,$99,$e2,$1c,$c2,$20,$a5
    .db $04,$99,$06,$00,$e2,$20,$a9,$01,$8d,$df,$1d,$28,$7a,$fa,$6b,$b5
    .db $26,$09,$10,$95,$26,$b5,$21,$09,$01,$95,$21,$b5,$24,$09,$04,$95
    .db $24,$b5,$12,$18,$69,$08,$95,$12,$b5,$16,$18,$69,$06,$95,$16,$b4
    .db $06,$22,$be,$2b,$7f,$a9,$09,$09,$80,$9d,$cb,$1c,$b5,$0a,$1a,$95
    .db $0a,$dd,$e2,$1c,$30,$06,$b5,$25,$09,$08,$95,$25,$6b,$da,$5a,$08
    .db $ac,$c3,$12,$da,$b6,$2b,$9b,$fa,$b9,$02,$6c,$29,$1f,$f0,$51,$c2
    .db $20,$a9,$cc,$c5,$85,$5f,$e2,$20,$22,$17,$2a,$7f,$b0,$04,$5c,$91
    .db $f9,$06,$a9,$0c,$22,$3d,$2a,$7f,$da,$bb,$7a,$c2,$20,$a9,$ba,$f9
    .db $95,$19,$e2,$20,$a9,$06,$95,$1b,$da,$bb,$7a,$c0,$00,$00,$f0,$20
    .db $22,$f1,$be,$07,$c2,$20,$a9,$ba,$f9,$99,$19,$00,$e2,$20,$a9,$06
    .db $99,$1b,$00,$a9,$01,$8d,$df,$1d,$b9,$21,$00,$09,$01,$99,$21,$00
    .db $28,$7a,$fa,$6b,$b5,$26,$09,$10,$95,$26,$b5,$21,$09,$01,$95,$21
    .db $bd,$d5,$1c,$18,$69,$08,$9d,$d5,$1c,$bd,$d7,$1c,$18,$69,$06,$9d
    .db $d7,$1c,$b4,$06,$b9,$23,$00,$29,$02,$f0,$04,$5c,$fd,$f9,$06,$c2
    .db $20,$b9,$04,$00,$c9,$9c,$bc,$e2,$20,$f0,$0c,$a9,$09,$09,$80,$9d
    .db $cb,$1c,$ad,$72,$1d,$d0,$06,$b5,$25,$09,$08,$95,$25,$6b

sub_06fa04:
    lda $16,x
    sta $3a
    lda #$00
    jsl sub_7f27b5
    sta $16,x
    rep #$20
.a16
    lda $0c,x
    clc
    adc $1ccf,x
    sta $0c,x
    lda $0e,x
    clc
    adc $1cd1,x
    sta $0e,x
    lda $10,x
    clc
    adc $1cd3,x
    sta $10,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1ccf,x
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $1ccf,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd1,x
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd3,x
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $1cd3,x
    sep #$20
.a8
    rtl

sub_06fa66:
    rep #$20
.a16
    lda #$8000
    clc
    adc $0c,x
    sta $0c,x
    lda #$8000
    clc
    adc $0e,x
    sta $0e,x
    lda #$8000
    clc
    adc $10,x
    sta $10,x
    sep #$20
.a8
    lda #$1a
    sta $12,x
    lda #$40
    sta $14,x
    lda #$00
    sta $16,x
    rtl

sub_06fa8f:
    rep #$20
.a16
    lda #$0000
    sta $0c,x
    sta $0e,x
    sta $10,x
    sta $32,x
    sta $34,x
    lda #$000a
    sta $36,x
    sep #$20
.a8
    lda #$10
    sta $12,x
    lda #$62
    sta $14,x
    rtl

sub_06faae:
    rep #$20
.a16
    lda $1cd3,x
    sta $3a
    lda #$00c8
    jsl sub_7f25a3
    sta $1cd3,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd3,x
    sta $3a
    lda #$00c8
    jsl sub_7f25a3
    sta $1cd3,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd1,x
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd1,x
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $1cd1,x
    sep #$20
.a8
    rtl

sub_06fafb:
    rep #$20
.a16
    lda $1ccf,x
    sta $3a
    lda $1ce4,x
    jsl sub_7f25a3
    sta $1ccf,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd3,x
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $1cd3,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd3,x
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $1cd3,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd1,x
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $1cd1,x
    sep #$20
.a8
    rtl

sub_06fb48:
    lda $1cd5,x
    clc
    adc #$f8
    sta $1cd5,x
    rep #$20
.a16
    lda $1cd1,x
    clc
    adc #$000a
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd3,x
    clc
    adc #$fff6
    sta $1cd3,x
    sep #$20
.a8
    lda $1cd7,x
    clc
    adc $1ce2,x
    sta $1cd7,x
    lda $1cd6,x
    clc
    adc $1ce2,x
    sta $1cd6,x
    rtl
    .incbin "data/037b82-038000.bin"
