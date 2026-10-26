.rombank $04

    .db $6b

sub_048001:
.cpu
.a8
.i16
    php
    sep #$20
    rep #$10
    phb
    lda #$00
    pha
    plb
    rep #$20
.a16
    ldy #$e83f
    jsl sub_049d3c
    ldy #$ea5f
    jsl sub_049d3c
    sep #$20
.a8
    jsl sub_04a109
    lda #$04
    sta BBAD0
    ldx #$0000
    stx OAMADDL
    ldx #$e83f
    stx A1TL0
    lda #$7e
    sta A1B0
    ldx #$0220
    stx DASL0
    lda #$00
    sta DMAP0
    lda #$01
    sta MDMAEN
    rep #$20
.a16
    lda $1b9e
    and #$00ff
    asl a
    tax
    sep #$20
.a8
    jsr (tbl_048059,x)
    plb
    plp
    rtl

tbl_048059:
    .db $7b,$80,$7c,$80,$16,$81,$44,$81,$76,$81,$02,$82,$7b,$80,$5f,$82
    .db $a2,$82,$d0,$82,$d0,$82,$9d,$82,$fe,$82,$ff,$82,$7b,$80,$7b,$80
    .db $00,$83

loc_04807b:
    rts

loc_04807c:
    ldx $1b42
    lda $7ef530
    beq loc_0480b1
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0016
    sta $70006a
    lda #$f810
    sta $700068
    stx $17e4
    lda #$1000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    bra loc_0480db

loc_0480b1:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0016
    sta $70006a
    lda #$ef70
    sta $700068
    stx $17e4
    lda #$1000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3

loc_0480db:
    rep #$20
.a16
    lda $1b42
    clc
    adc #$0800
    tax
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0016
    sta $70006a
    lda #$fd7c
    sta $700068
    stx $17e4
    lda #$0800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    jsl sub_0be0db
    rts

loc_048116:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0017
    sta $70006a
    lda #$e5b0
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

loc_048144:
    jsl sub_0b9ca1
    ldx $1b42
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0016
    sta $70006a
    lda #$dbe8
    sta $700068
    stx $17e4
    lda #$1800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

loc_048176:
    ldx $1b42
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0016
    sta $70006a
    lda #$dbe8
    sta $700068
    stx $17e4
    lda #$1800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rep #$30
.a16
    phx
    lda #$e400
    sta $700068
    lda #$3b50
    sta $70002c
    lda #$0000
    sta $7000a2
    sep #$20
.a8
    lda #$16
    sta $70006a
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plx
    sep #$20
    rep #$10
    lda #$70
    sta $17ee
    ldx #$3b50
    stx $17ec
    ldx #$1000
    stx $17ef
    lda #$01
    ldx #$dc00
    jsl sub_7f0a6e
    ldx #$6c00
    stx VMADDL
    ldx #$3b50
    lda #$70
    ldy #$0800
    jsl DmaToVram
    jsl sub_0ba81e
    rts

loc_048202:
    rep #$30
.a16
    phx
    lda #$c324
    sta $700068
    lda #$3b50
    sta $70002c
    lda #$0000
    sta $7000a2
    sep #$20
.a8
    lda #$17
    sta $70006a
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plx
    sep #$20
    rep #$10
    rep #$30
.a16
    phx
    lda #$d5b1
    sta $700068
    lda #$9b50
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
    rts

loc_04825f:
    jsl sub_0b898f
    ldx $1b42
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0016
    sta $70006a
    lda #$e640
    sta $700068
    stx $17e4
    lda #$1800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    ldx #$0006
    stx $1be0
    ldx #$0000
    stx $1be2
    rts

loc_04829d:
    jsl sub_0b8c15
    rts

loc_0482a2:
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

loc_0482d0:
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

loc_0482fe:
    rts

loc_0482ff:
    rts

loc_048300:
    rts

sub_048301:
    sep #$20
    rep #$10
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $efd3
    and #$000f
    sta $efdb
    and #$0007
    sta $efd9
    and #$0003
    sta $efd7
    and #$0001
    sta $efd5
    lda $efdb
    bne loc_04832f
    inc $efe3

loc_04832f:
    lda $efd9
    bne loc_048337
    inc $efe1

loc_048337:
    lda $efd7
    bne loc_04833f
    inc $efdf

loc_04833f:
    lda $efd5
    bne loc_048347
    inc $efdd

loc_048347:
    sep #$20
.a8
    lda $1aa6
    bit #$80
    beq loc_048352
    plb
    rtl

loc_048352:
    rep #$20
.a16
    lda $1b9c
    bit #$0002
    sep #$20
.a8
    bne loc_048374
    jsl sub_049c66
    ldy #$0000
    sty $1c49
    rep #$20
.a16
    lda #$0001
    trb $1b9c
    sep #$20
.a8
    bra loc_04838d

loc_048374:
    ldy #$0000
    rep #$20
.a16
    lda $1b9c
    bit #$0001
    sep #$20
.a8
    bne loc_048386
    ldy #$0220

loc_048386:
    sty $1c49
    jsl sub_049cfd

loc_04838d:
    rep #$20
.a16
    lda $1b9e
    and #$00ff
    asl a
    tax
    sep #$20
.a8
    jsr (tbl_0483b3,x)
    rep #$20
.a16
    lda $1b9c
    bit #$0002
    beq loc_0483af
    lda $1b9c
    eor #$0001
    sta $1b9c

loc_0483af:
    sep #$20
.a8
    plb
    rtl

tbl_0483b3:
    .db $d5,$83,$a4,$87,$a9,$87,$89,$93,$8e,$93,$f8,$99,$3a,$87,$ff,$86
    .db $df,$83,$d6,$83,$d7,$83,$2f,$87,$8e,$98,$72,$9a,$00,$9a,$8c,$98
    .db $8d,$98

loc_0483d5:
    rts

loc_0483d6:
    rts

loc_0483d7:
    php
    rep #$20
.a16
    jsr sub_0484ba
    plp
.a8
    rts

loc_0483df:
    php
    rep #$20
.a16
    lda $1be2
    bne loc_0483f8
    jsr sub_04844c
    jsr sub_048400
    jsr sub_0485f4
    jsr sub_04856f
    jsr sub_048507
    plp
.a8
    rts

loc_0483f8:
.a16
    jsr sub_0484ba
    jsr sub_0484e0
    plp
    rts

sub_048400:
    lda $d9bc
    beq loc_04843f
    dec a
    beq loc_048429
    lda #$0080
    sta $3a
    lda #$0034
    sta $3c
    ldx $d9c0
    stx $04
    ldx $d9c2
    stx $0a
    jsr sub_049fd5
    ldx $04
    stx $d9c0
    ldx $0a
    stx $d9c2

loc_048429:
    lda #$0080
    sta $3a
    lda #$0034
    sta $3c
    ldx $d9ba
    lda $048440,x
    sta $5f
    jsr sub_049f6f

loc_04843f:
    rts
    .db $38,$00,$36,$00,$34,$00,$32,$00,$30,$00,$2e,$00

sub_04844c:
    lda $d9b8
    beq loc_048498
    lda $d9a8
    sta $d9ac
    lda #$0024
    sta $d9b0
    sta $d9b4
    lda #$0050
    sta $d9b2

loc_048466:
    lda $d9ac
    beq loc_048498
    cmp #$0004
    bcc loc_04848e
    beq loc_04848e
    sec
    sbc #$0004
    sta $d9ac
    lda #$0008
    sta $d9ae
    jsr sub_048499
    lda $d9b4
    clc
    adc #$0010
    sta $d9b4
    bra loc_048466

loc_04848e:
    lda $d9ac
    asl a
    sta $d9ae
    jsr sub_048499

loc_048498:
    rts

sub_048499:
    lda $d9b4
    sta $3a
    lda $d9b2
    sta $3c
    ldx $d9ae
    lda $0484b0,x
    sta $5f
    jsr sub_049efe
    rts
    .db $0f,$20,$e8,$20,$ea,$20,$ec,$20,$ee,$20

sub_0484ba:
    lda $1be4
    beq loc_0484dd
    lda #$0068
    sta $3a
    lda $1c20
    and #$00ff
    tax
    lda $0484de,x
    and #$00ff
    sta $3c
    lda $1be6
    sta $5f
    jsl sub_0befa5

loc_0484dd:
    rts
    .db $77,$8f

sub_0484e0:
    lda $d9c8
    beq loc_048506
    lda #$0080
    sta $3a
    lda #$0080
    sta $3c
    ldx $d9c4
    stx $04
    ldx $d9c6
    stx $0a
    jsr sub_049fd5
    ldx $04
    stx $d9c4
    ldx $0a
    stx $d9c6

loc_048506:
    rts

sub_048507:
    lda $d9be
    beq loc_048532
    lda $1bea
    beq loc_048532
    lda #$005c
    sta $3a
    lda #$00c8
    sta $3c
    ldx $ec7f
    stx $04
    ldx $ec81
    stx $0a
    jsr sub_049fd5
    ldx $04
    stx $ec7f
    ldx $0a
    stx $ec81

loc_048532:
    rts
    .db $a9,$bc,$00,$85,$3a,$a9,$44,$00,$85,$3c,$ad,$49,$db,$c9,$32,$00
    .db $30,$21,$c9,$50,$00,$30,$0a,$ad,$e1,$ef,$89,$01,$00,$d0,$0f,$80
    .db $12,$ad,$df,$ef,$29,$07,$00,$c9,$04,$00,$10,$02,$80,$05,$a9,$06
    .db $00,$80,$03,$a9,$04,$00,$85,$5f,$20,$6f,$9f,$60

sub_04856f:
    lda $efdf
    bit #$0001
    bne loc_04857c
    lda #$002a
    bra loc_04857f

loc_04857c:
    lda #$002c

loc_04857f:
    sta $5f
    sta $1bc0
    lda $d810
    bit #$0080
    beq loc_048599
    lda #$002a
    sta $3a
    lda #$0037
    sta $3c
    jsr sub_049f6f

loc_048599:
    lda #$002a
    sta $3a
    lda #$0037
    sta $3c
    lda $d810
    and #$007f
    tax
    lda $0485ee,x
    and #$00ff
    sta $5f
    jsr sub_049f6f
    lda $d811
    bit #$0080
    beq loc_0485d0
    lda #$004a
    sta $3a
    lda #$0037
    sta $3c
    lda $1bc0
    sta $5f
    jsr sub_049f6f

loc_0485d0:
    lda #$004a
    sta $3a
    lda #$0037
    sta $3c
    lda $d811
    and #$007f
    tax
    lda $0485ee,x
    and #$00ff
    sta $5f
    jsr sub_049f6f
    rts
    .db $1e,$20,$22,$24,$26,$28

sub_0485f4:
    ldx $da27
    lda $048604,x
    and #$00ff
    sta $5f
    jsr sub_04a039
    rts
    .db $00,$02,$04,$a2,$00,$00,$ad,$df,$ef,$89,$01,$00,$d0,$05,$a9,$44
    .db $24,$80,$03,$a9,$44,$26,$85,$5f,$ad,$35,$da,$38,$ed,$37,$da,$f0
    .db $06,$8d,$ca,$1b,$20,$3c,$86,$ad,$37,$da,$f0,$0b,$8d,$ca,$1b,$a9
    .db $4c,$24,$85,$5f,$20,$3c,$86,$60,$bf,$58,$86,$04,$29,$ff,$00,$85
    .db $3a,$bf,$5c,$86,$04,$29,$ff,$00,$85,$3c,$20,$30,$9f,$e8,$ce,$ca
    .db $1b,$d0,$e5,$60,$1c,$32,$4a,$62,$9f,$9f,$9f,$9f,$9f,$9f,$a2,$00
    .db $00,$ad,$e1,$ef,$89,$01,$00,$d0,$05,$a9,$40,$26,$80,$03,$a9,$40
    .db $24,$85,$5f,$ad,$31,$da,$38,$ed,$2d,$da,$f0,$06,$8d,$ca,$1b,$20
    .db $97,$86,$ad,$2d,$da,$f0,$0b,$8d,$ca,$1b,$a9,$48,$2e,$85,$5f,$20
    .db $97,$86,$60,$bf,$b3,$86,$04,$29,$ff,$00,$85,$3a,$bf,$b9,$86,$04
    .db $29,$ff,$00,$85,$3c,$20,$30,$9f,$e8,$ce,$ca,$1b,$d0,$e5,$60,$1c
    .db $38,$54,$70,$8c,$a8,$78,$78,$78,$78,$78,$78,$a9,$ce,$00,$85,$3a
    .db $a9,$a0,$00,$85,$3c,$ad,$df,$ef,$89,$01,$00,$d0,$05,$a9,$2a,$24
    .db $80,$03,$a9,$2a,$26,$85,$5f,$20,$fe,$9e,$60,$a9,$9e,$00,$85,$3a
    .db $a9,$a0,$00,$85,$3c,$ad,$df,$ef,$89,$01,$00,$d0,$05,$a9,$0a,$2a
    .db $80,$03,$a9,$0a,$2c,$85,$5f,$20,$fe,$9e,$60

loc_0486ff:
.a8
    ldy $1c49
    jsl sub_0b89cb
    rep #$30
.a16
    lda #$0084
    sta $3a
    lda #$0052
    sta $3c
    ldx $1be0
    stx $04
    ldx $1be2
    stx $0a
    jsr sub_049fd5
    ldx $04
    stx $1be0
    ldx $0a
    stx $1be2
    sep #$20
.a8
    sty $1c49
    rts

loc_04872f:
    ldy $1c49
    jsl sub_0b8c15
    sty $1c49
    rts

loc_04873a:
    ldy $1c49
    jsl sub_0bc05b
    rep #$20
.a16
    lda $1b86
    bit #$0020
    sep #$20
.a8
    bne loc_04879d
    rep #$20
.a16
    lda $1b96
    bit #$2000
    sep #$20
.a8
    bne loc_04879d
    lda #$50
    sta $02
    lda #$00
    xba
    lda $1c20
    tax
    lda $0487a1,x
    sta $03
    rep #$20
.a16
    lda $02
    sec
    sbc #$0100
    sta $e83f,y
    iny
    iny
    lda #$3048
    sta $e83f,y
    iny
    iny
    lda $02
    clc
    adc #$0800
    sta $02
    lda $02
    sec
    sbc #$0100
    sta $e83f,y
    iny
    iny
    lda #$b048
    sta $e83f,y
    iny
    iny
    jsr sub_049754

loc_04879d:
.a8
    sty $1c49
    rts
    .db $98,$a4,$b0

loc_0487a4:
    jsl sub_0be129
    rts

loc_0487a9:
    ldy $1c49
    lda $efd5
    bne loc_0487c9
    lda $d994
    inc a
    inc a
    cmp #$06
    bne loc_0487bc
    lda #$00

loc_0487bc:
    sta $d994
    lda $d996
    inc a
    inc a
    and #$07
    sta $d996

loc_0487c9:
    lda $efd7
    bne loc_0487db
    lda $1bee
    inc a
    cmp #$03
    bne loc_0487d8
    lda #$00

loc_0487d8:
    sta $1bee

loc_0487db:
    rep #$20
.a16
    lda $1b8c
    bit #$0001
    sep #$20
.a8
    bne loc_0487f6
    lda $efd9
    bne loc_0487f6
    lda $d991
    inc a
    inc a
    and #$07
    sta $d991

loc_0487f6:
    rep #$20
.a16
    lda $1b92
    bit #$0008
    sep #$20
.a8
    bne loc_048807
    ldx #$0001
    bra loc_04880a

loc_048807:
    ldx #$0008

loc_04880a:
    stx $da7b
    rep #$20
.a16
    lda $1b84
    bit #$0040
    sep #$20
.a8
    beq loc_048838
    lda #$70
    sta $3a
    lda #$60
    sta $3c
    ldx $ec7f
    stx $04
    ldx $ec81
    stx $0a
    jsr sub_049fd5
    ldx $04
    stx $ec7f
    ldx $0a
    stx $ec81

loc_048838:
    jsr sub_04f431
    lda $d9c4
    beq loc_048867
    lda $1bee
    beq loc_048867
    rep #$20
.a16
    lda #$c498
    ldx $d9c2
    beq loc_048852
    lda #$d098

loc_048852:
    sta $e83f,y
    iny
    iny
    lda $1bee
    asl a
    tax
    lda $18bdff,x
    sta $e83f,y
    iny
    iny
    sep #$20

loc_048867:
.a8
    jsr sub_048bef
    rep #$20
.a16
    lda $1b86
    bit #$0080
    bne loc_0488ab
    jsr sub_048aa3
    lda $1dd1
    and #$003f
    sta $02
    ldx $d812
    lda $18bda5,x
    sta $04
    sep #$20
.a8
    jsl sub_0495da
    rep #$20
.a16
    lda #$00a5
    sta $3a
    lda #$00ce
    sta $3c
    lda $1dd3
    and #$00ff
    asl a
    tax
    lda $18bddf,x
    sta $5f
    jsr sub_049efe

loc_0488ab:
    ldx $d991
    lda #$b7f0
    sta $e83f,y
    iny
    iny
    lda $048b1c,x
    sta $e83f,y
    iny
    iny
    lda #$bff0
    sta $e83f,y
    iny
    iny
    lda $048b24,x
    sta $e83f,y
    iny
    iny
    sep #$20
.a8
    rep #$20
.a16
    lda $1b88
    bit #$0020
    beq loc_0488df
    brl loc_048a2e

loc_0488df:
    lda $da8b
    bit #$0400
    beq loc_0488ea
    brl loc_04892c

loc_0488ea:
    lda $da8b
    bit #$0100
    beq loc_0488f5
    brl loc_04899b

loc_0488f5:
    lda $1b8c
    bit #$0008
    beq loc_048900
    brl loc_0489e0

loc_048900:
    lda $da8d
    bit #$0001
    bne loc_04892c
    sep #$20
.a8
    lda $da91
    sta $1e78
    lda $da92
    dec a
    sta $1e7a
    lda #$06
    sta $1e7c
    lda $d97f
    sta $1e7e
    rep #$20
.a16
    jsr sub_04f688
    sep #$20
.a8
    brl loc_0489d7

loc_04892c:
.a16
    sep #$20
.a8
    lda $da93
    sta $1e78
    lda $da94
    dec a
    sta $1e7a
    lda #$05
    sta $1e7c
    lda $d97f
    sta $1e7e
    rep #$20
.a16
    jsr sub_04f688
    lda $db2f
    asl a
    asl a
    asl a
    asl a
    clc
    adc #$016a
    sta $02
    sep #$20
.a8
    lda $da94
    cmp #$80
    bcs loc_048966
    clc
    adc #$10
    bra loc_048969

loc_048966:
    sec
    sbc #$19

loc_048969:
    sta $60
    lda $da93
    clc
    adc #$e4
    sta $5f
    rep #$20
.a16
    ldx #$0005

loc_048978:
    lda #$0008
    clc
    adc $5f
    sta $5f
    lda $5f
    sta $e83f,y
    iny
    iny
    lda $02
    clc
    adc #$2000
    sta $e83f,y
    iny
    iny
    inc $02
    dex
    bne loc_048978
    sep #$20
.a8
    bra loc_0489d7

loc_04899b:
.a16
    ldx #$0000
    lda #$0004
    sta $1bca

loc_0489a4:
    lda $da98,x
    cmp #$0008
    bmi loc_0489ca
    cmp #$00f8
    bpl loc_0489ca
    sta $3a
    lda $da9b,x
    cmp #$0008
    bmi loc_0489ca
    cmp #$00f8
    bpl loc_0489ca
    sta $3c
    lda $daa3,x
    sta $5f
    jsr sub_049efe

loc_0489ca:
    txa
    clc
    adc #$000e
    tax
    dec $1bca
    bne loc_0489a4
    sep #$20

loc_0489d7:
.a8
    lda $d97f
    inc a
    and #$0f
    sta $d97f

loc_0489e0:
    rep #$20
.a16
    lda $da8b
    bit #$0004
    sep #$20
.a8
    bne loc_0489ef
    brl loc_048a2e

loc_0489ef:
    dec $d981
    bne loc_048a01
    lda $d982
    eor #$01
    sta $d982
    lda #$04
    sta $d981

loc_048a01:
    jsr sub_04a12e
    rep #$20
.a16
    sep #$20
.a8
    lda $db11
    sec
    sbc #$08
    sta $e83f,y
    iny
    lda $db12
    sec
    sbc #$09
    sta $e83f,y
    iny
    rep #$20
.a16
    lda $d982
    xba
    asl a
    clc
    adc #$204c
    sta $e83f,y
    iny
    iny
    sep #$20

loc_048a2e:
.a8
    rep #$20
.a16
    lda $db01
    bit #$0200
    sep #$20
.a8
    bne loc_048a82
    lda $db09
    sec
    sbc #$05
    cmp #$07
    bcs loc_048a4c
    jsr sub_048e12
    jsr sub_048e40
    bra loc_048a52

loc_048a4c:
    jsr sub_048e40
    jsr sub_048e12

loc_048a52:
    rep #$20
.a16
    lda $1b86
    bit #$0002
    sep #$20
.a8
    bne loc_048a82
    rep #$20
.a16
    lda $db23
    bit #$0200
    sep #$20
.a8
    bne loc_048a82
    lda $db21
    sec
    sbc #$05
    cmp #$07
    bcs loc_048a7c
    jsr sub_048e76
    jsr sub_048ea4
    bra loc_048a82

loc_048a7c:
    jsr sub_048ea4
    jsr sub_048e76

loc_048a82:
    jsr sub_048eda
    rep #$20
.a16
    lda $1b88
    bit #$0020
    bne loc_048a95
    jsr sub_048b2c
    jsr sub_048de1

loc_048a95:
.a8
    rep #$20
.a16
    tya
    lsr a
    lsr a
    sta $e834
    sep #$20
.a8
    sty $1c49
    rts

sub_048aa3:
.a16
    lda #$0052
    sta $3a
    lda #$00ce
    sta $3c
    lda $1dd1
    and #$00ff
    cmp #$000d
    bcs loc_048ad1
    lda $1bf0
    inc a
    sta $1bf0
    cmp #$0010
    bcc loc_048ad1
    beq loc_048ac9
    stz $1bf0

loc_048ac9:
    lda #$2664
    sta $5f
    jsr sub_049efe

loc_048ad1:
    lda $1e14
    and #$007f
    asl a
    clc
    adc #$2020
    sta $5f
    jsr sub_049efe
    lda #$0065
    sta $3a
    lda #$00ce
    sta $3c
    lda $1b86
    bit #$0002
    beq loc_048b03
    lda $efd9
    lsr a
    asl a
    tax
    lda $048b14,x
    clc
    adc #$2080
    bra loc_048b0e

loc_048b03:
    lda $1e15
    and #$007f
    asl a
    clc
    adc #$2020

loc_048b0e:
    sta $5f
    jsr sub_049efe
    rts
    .db $00,$00,$00,$c0,$00,$80,$00,$40,$6f,$31,$7f,$31,$9f,$31,$8f,$b1
    .db $6f,$b1,$8f,$31,$9f,$b1,$7f,$b1

sub_048b2c:
    php
    rep #$30
    lda $1b9c
    bit #$0080
    beq loc_048ba3
    ldx $db67

loc_048b3a:
    lda $001c,x
    bit #$0001
    beq loc_048b9d
    lda $001c,x
    bit #$4000
    bne loc_048b79
    lda $001c,x
    bit #$1000
    bne loc_048b9d
    lda $001c,x
    bit #$2000
    beq loc_048b9d
    lda $000c,x
    sta $3a
    lda $000e,x
    sta $3c
    jsr sub_048bb1
    phx
    lda $0004,x
    asl a
    tax
    lda $048ba5,x
    sta $5f
    jsr sub_049f6f
    plx
    bra loc_048b9d

loc_048b79:
    lda $000c,x
    and #$00ff
    sta $1e78
    lda $000e,x
    and #$00ff
    sta $1e7a
    lda $0020,x
    sta $1e7c
    lda $0022,x
    sta $1e7e
    inc $0022,x
    jsr sub_04f688

loc_048b9d:
    lda $0000,x
    tax
    bne loc_048b3a

loc_048ba3:
    plp
    rts
    .db $0c,$00,$08,$00,$0c,$00,$0a,$00,$0c,$00,$08,$00

sub_048bb1:
    lda $0036,x
    cmp #$0002
    bne loc_048bee
    lda $003e,x
    cmp #$0168
    bcs loc_048bee
    cmp #$000a
    bcc loc_048be6
    sta $02
    lda #$003c
    sta $08
    jsl sub_7f6da0
    clc
    adc #$20e0
    sta $5f
    lda $3c
    pha
    clc
    adc #$0008
    sta $3c
    jsr sub_049ede
    pla
    sta $3c

loc_048be6:
    lda #$20b0
    sta $5f
    jsr sub_049ede

loc_048bee:
    rts

sub_048bef:
.a8
    php
    rep #$20
.a16
    lda $f556
    beq loc_048c07
    lda $1b8c
    bit #$0008
    bne loc_048c07
    lda $da8b
    bit #$0100
    beq loc_048c09

loc_048c07:
    plp
.a8
    rts

loc_048c09:
.a16
    ldx $e09f
    lda $003a,x
    tax
    sep #$20
.a8
    lda $d7c2,x
    pha
    and #$0f
    sta $e827
    pla
    lsr a
    lsr a
    lsr a
    lsr a
    sta $e82b
    lda $e805,x
    sta $e825
    lda $e815,x
    sta $e829
    lda $e827
    bne loc_048c43
    lda $e82b
    sta $e827
    lda $e829
    sta $e825
    stz $e82b

loc_048c43:
    ldx $e09f
    lda $001f,x
    sta $3c
    lda $001c,x
    cmp #$80
    bcc loc_048c77
    sec
    sbc #$10
    sta $3a
    rep #$20
.a16
    lda $0038,x
    clc
    adc #$26e0
    sta $5f
    jsr sub_049ede
    lda $3a
    clc
    adc #$0004
    sta $3a
    lda #$6082
    sta $5f
    jsr sub_049efe
    bra loc_048c9a

loc_048c77:
.a8
    clc
    adc #$10
    sta $3a
    rep #$20
.a16
    lda $0038,x
    clc
    adc #$26e0
    sta $5f
    jsr sub_049ede
    lda $3a
    sec
    sbc #$0004
    sta $3a
    lda #$2082
    sta $5f
    jsr sub_049efe

loc_048c9a:
    lda $e827
    bne loc_048ca2
    brl loc_048d3d

loc_048ca2:
    lda $e825
    asl a
    tax
    lda $18be05,x
    and #$7fff
    clc
    adc #$3000
    sta $5f
    lda #$005c
    sta $3a
    lda #$00cb
    sta $3c
    jsr sub_049efe
    lda $18be05,x
    and #$8000
    beq loc_048ce2
    ldx $d996
    beq loc_048ce2
    lda $18be35,x
    sta $5f
    lda #$0060
    sta $3a
    lda #$00c7
    sta $3c
    jsr sub_049efe

loc_048ce2:
    lda #$005c
    sta $3a
    lda #$00cb
    sta $3c
    ldx $e09f
    lda $0036,x
    asl a
    sta $1bcc
    lda $efe1
    and #$0001
    adc $1bcc
    asl a
    tax
    lda $18be4b,x
    sta $5f
    sta $1bd0
    jsr sub_049f6f
    lda #$004c
    sta $3a
    lda #$00b3
    sta $3c
    ldx $1bcc
    lda $18be3d,x
    sta $5f
    sta $1bce
    ldx #$0004
    jsr sub_048dbf
    lda #$ce6c
    sta $e83f,y
    iny
    iny
    lda $e827
    clc
    adc #$30f0
    sta $e83f,y
    iny
    iny

loc_048d3d:
    lda $e82b
    beq loc_048dbd
    lda $e829
    asl a
    tax
    lda $18be05,x
    and #$7fff
    clc
    adc #$3000
    sta $5f
    lda #$008c
    sta $3a
    lda #$00cb
    sta $3c
    jsr sub_049efe
    lda $18be05,x
    and #$8000
    beq loc_048d82
    ldx $d996
    beq loc_048d82
    lda $18be35,x
    sta $5f
    lda #$0090
    sta $3a
    lda #$00c7
    sta $3c
    jsr sub_049efe

loc_048d82:
    lda #$008c
    sta $3a
    lda #$00cb
    sta $3c
    lda $1bd0
    sta $5f
    jsr sub_049f6f
    lda #$007c
    sta $3a
    lda #$00b3
    sta $3c
    lda $1bce
    sta $5f
    ldx #$0004
    jsr sub_048dbf
    lda #$ce9c
    sta $e83f,y
    iny
    iny
    lda $e82b
    clc
    adc #$30f0
    sta $e83f,y
    iny
    iny

loc_048dbd:
    plp
.a8
    rts

sub_048dbf:
.a16
    sep #$20
.a8
    lda $3a
    sta $e83f,y
    iny
    clc
    adc #$08
    sta $3a
    lda $3c
    sta $e83f,y
    iny
    rep #$20
.a16
    lda $5f
    sta $e83f,y
    iny
    iny
    inc $5f
    dex
    bne sub_048dbf
    rts

sub_048de1:
    rep #$20
    ldx $da39
    beq loc_048e07
    stx $02
    ldx #$0000

loc_048ded:
    jsr sub_04a12e
    lda $048e0a,x
    sta $e83f,y
    iny
    iny
    lda #$2640
    sta $e83f,y
    iny
    iny
    inx
    inx
    dec $02
    bne loc_048ded

loc_048e07:
    sep #$20
.a8
    rts
    .db $da,$1f,$d4,$19,$e4,$21,$d2,$0f

sub_048e12:
    sep #$20
    lda $daf3
    sta $3a
    lda $daf6
    sta $3c
    ldx #$0000
    stx $5f
    lda $db09
    bit #$08
    bne loc_048e2b
    inx

loc_048e2b:
    lda $1e14
    and #$01
    asl a
    dex
    bne loc_048e37
    clc
    adc #$40

loc_048e37:
    clc
    adc #$20
    sta $60
    jsr sub_049efe
    rts

sub_048e40:
    rep #$20
.a16
    lda $db01
    bit #$0002
    sep #$20
.a8
    beq loc_048e75
    ldx $d994
    beq loc_048e75
    rep #$20
.a16
    lda $18bdd1,x
    sta $5f
    sep #$20
.a8
    ldx $db09
    lda $18bdb1,x
    clc
    adc $daf3
    sta $3a
    lda $18bdc1,x
    clc
    adc $daf6
    sta $3c
    jsr sub_049efe

loc_048e75:
    rts

sub_048e76:
    sep #$20
    lda $db15
    sta $3a
    lda $db18
    sta $3c
    ldx #$0002
    stx $5f
    lda $db21
    bit #$08
    bne loc_048e8f
    dex

loc_048e8f:
    lda $1e15
    and #$01
    asl a
    dex
    bne loc_048e9b
    clc
    adc #$40

loc_048e9b:
    clc
    adc #$20
    sta $60
    jsr sub_049efe
    rts

sub_048ea4:
    rep #$20
.a16
    lda $db23
    bit #$0002
    sep #$20
.a8
    beq loc_048ed9
    ldx $d994
    beq loc_048ed9
    rep #$20
.a16
    lda $18bdd1,x
    sta $5f
    sep #$20
.a8
    ldx $db21
    lda $18bdb1,x
    clc
    adc $db15
    sta $3a
    lda $18bdc1,x
    clc
    adc $db18
    sta $3c
    jsr sub_049efe

loc_048ed9:
    rts

sub_048eda:
    rep #$20
.a16
    stz $f5a2
    inc $f5a0
    ldx $e0a3
    bne loc_048eea
    brl loc_048fb4

loc_048eea:
    lda $1b88
    bit #$0020
    beq loc_048f05
    lda $002e,x
    bit #$8400
    bne loc_048f05
    lda $002e,x
    bit #$0001
    bne loc_048f05
    brl loc_048fab

loc_048f05:
    lda $002e,x
    bit #$1000
    beq loc_048f10
    brl loc_048fab

loc_048f10:
    sep #$20
.a8
    lda $001c,x
    sta $3a
    lda $001f,x
    sta $3c
    rep #$20
.a16
    lda $002e,x
    bit #$4000
    bne loc_048f34
    lda $0030,x
    bit #$0040
    bne loc_048f6d
    jsr sub_048fbf
    brl loc_048fab

loc_048f34:
    lda $0044,x
    beq loc_048f6b
    cmp #$ffff
    bne loc_048f41
    brl loc_048f7b

loc_048f41:
    lda $0046,x
    inc a
    cmp $0048,x
    bcc loc_048f5a
    sta $02
    lda $0030,x
    bit #$0010
    beq loc_048f6b
    lda $02
    sec
    sbc $0048,x

loc_048f5a:
    sta $0046,x
    jsr sub_04f675
    lda $002e,x
    bit #$0040
    beq loc_048f6b
    jsr sub_049352

loc_048f6b:
    bra loc_048fab

loc_048f6d:
    rep #$20
    lda $0044,x
    beq loc_048fab
    sta $5f
    jsr sub_049efe
    bra loc_048fab

loc_048f7b:
    phx
    lda $d996
    sta $1bcc
    sep #$20
.a8
    lda $001c,x
    sec
    sbc #$04
    sta $e83f,y
    iny
    lda $001f,x
    sec
    sbc #$05
    sta $e83f,y
    iny
    rep #$20
.a16
    phx
    ldx $1bcc
    lda $048fb7,x
    sta $e83f,y
    iny
    iny
    plx
    plx
    bra loc_048fab

loc_048fab:
    lda $0000,x
    beq loc_048fb4
    tax
    brl loc_048eea

loc_048fb4:
    sep #$20
.a8
    rts
    .db $d1,$28,$d2,$28,$d3,$28,$d2,$28

sub_048fbf:
.a16
    phx
    php
    phx
    lda $0036,x
    asl a
    tax
    jmp (tbl_048fca,x)

tbl_048fca:
    .db $f7,$90,$f7,$90,$f7,$90,$f7,$90,$d7,$90,$c2,$90,$e7,$90,$f0,$8f
    .db $e2,$8f,$fa,$8f,$f7,$90,$f7,$90

loc_048fe2:
    plx
    rep #$20
    lda #$212c
    sta $5f
    jsr sub_049efe
    brl loc_04919d

loc_048ff0:
    plx
    jsr sub_0491a0
    jsr sub_0491c9
    brl loc_04919d

loc_048ffa:
    plx
    lda $0008,x
    sta $a5
    lda $e095
    lsr a
    tax
    lda $e087
    bit #$0004
    beq loc_049039
    sep #$20
.a8
    lda $d994
    beq loc_049039
    lda $18bebb,x
    clc
    adc $3a
    sta $e83f,y
    iny
    lda $18bebc,x
    clc
    adc $3c
    dec a
    sta $e83f,y
    iny
    rep #$20
.a16
    ldx $d994
    lda $18bedb,x
    sta $e83f,y
    iny
    iny

loc_049039:
.a8
    ldx $e095
    sep #$20
    lda $18be7b,x
    clc
    adc $3a
    sta $e83f,y
    iny
    lda $18be7c,x
    clc
    adc $3c
    dec a
    sta $e83f,y
    iny
    rep #$20
.a16
    lda $18be7d,x
    sta $e83f,y
    iny
    iny
    lda $e087
    bit #$0002
    beq loc_049086
    lda $a5
    cmp #$012c
    bcs loc_049086
    ldx $e07d
    stx $04
    ldx $e07f
    stx $0a
    jsr sub_049fd5
    ldx $04
    stx $e07d
    ldx $0a
    stx $e07f

loc_049086:
    lda $e087
    bit #$0200
    beq loc_0490b3
    ldx $e081
    stx $04
    ldx $e083
    stx $0a
    jsr sub_049fd5
    ldx $04
    stx $e081
    ldx $0a
    stx $e083
    cpx #$ffff
    beq loc_0490ad
    brl loc_04919d

loc_0490ad:
    lda #$0200
    trb $e087

loc_0490b3:
    ldx $e093
    lda $18be77,x
    sta $5f
    jsr sub_049efe
    brl loc_04919d

loc_0490c2:
    plx
    lda $efdf
    and #$0003
    asl a
    tax
    lda $18bee9,x
    sta $5f
    jsr sub_049ede
    brl loc_04919d

loc_0490d7:
    plx
    ldx $d996
    lda $18bee1,x
    sta $5f
    jsr sub_049efe
    brl loc_04919d

loc_0490e7:
    plx
    ldx $d996
    lda $18bef1,x
    sta $5f
    jsr sub_049ede
    brl loc_04919d

loc_0490f7:
    plx
    stx $1bcc
    sep #$20
.a8
    lda $001c,x
    sec
    sbc #$04
    sta $3a
    sta $e83f,y
    iny
    lda $001f,x
    sec
    sbc #$05
    sta $3c
    sta $e83f,y
    iny
    rep #$20
.a16
    lda $0025,x
    clc
    adc #$0008
    and #$00ff
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    sta $02
    lda $002e,x
    bit #$0020
    bne loc_04913a
    lda #$20b3
    sta $e83f,y
    iny
    iny
    bra loc_049149

loc_04913a:
    phx
    lda $02
    asl a
    tax
    lda $18be67,x
    sta $e83f,y
    iny
    iny
    plx

loc_049149:
    lda $0030,x
    bit #$0004
    bne loc_04917e
    lda $d994
    beq loc_04917e
    sep #$20
.a8
    ldx $02
    lda $3a
    clc
    adc $18bef9,x
    sta $e83f,y
    iny
    lda $3c
    clc
    adc $18bf01,x
    sta $e83f,y
    iny
    rep #$20
.a16
    ldx $d994
    lda $18bf09,x
    sta $e83f,y
    iny
    iny

loc_04917e:
    ldx $1bcc
    lda $002e,x
    bit #$0010
    beq loc_04919d
    bit #$0002
    beq loc_04919d
    lda $0020,x
    sta $f5a4
    lda $0022,x
    sta $f5a6
    jsr sub_04f44a

loc_04919d:
    plp
    plx
    rts

sub_0491a0:
    phx
    lda $0012,x
    tax
    lda $0034,x
    cmp #$0014
    bmi loc_0491b2
    lda $efe1
    bra loc_0491b5

loc_0491b2:
    lda $efdf

loc_0491b5:
    and #$0001
    bne loc_0491bf
    lda #$232e
    bra loc_0491c2

loc_0491bf:
    lda #$212e

loc_0491c2:
    sta $5f
    jsr sub_049efe
    plx
    rts

sub_0491c9:
    phx
    lda $0012,x
    sta $d9d2
    tax
    lda $001e,x
    bit #$0002
    beq loc_0491e1
    lda $0032,x
    asl a
    tax
    jsr (tbl_0491e3,x)

loc_0491e1:
    plx
    rts

tbl_0491e3:
    .db $f1,$91,$02,$93,$ce,$92,$06,$92,$63,$92,$f9,$91,$f2,$91

loc_0491f1:
    rts

loc_0491f2:
    lda #$1000
    trb $1b92
    rts

loc_0491f9:
    dec $d9d0
    beq loc_0491ff
    rts

loc_0491ff:
    ldx $d9d2
    inc $0032,x
    rts

loc_049206:
    lda #$000f
    jsl QueueSound
    lda #$1000
    tsb $1b92
    lda #$8828
    sta $d9d4
    lda #$8018
    sta $d9d9
    lda #$a030
    sta $d9de
    lda #$9818
    sta $d9e3
    lda #$0021
    sta $d9d6
    sta $d9db
    sta $d9e0
    sta $d9e5
    sep #$20
.a8
    lda #$00
    sta $d9d8
    lda #$0f
    sta $d9dd
    lda #$1e
    sta $d9e2
    lda #$2d
    sta $d9e7
    rep #$20
.a16
    ldx $d9d2
    phy
    lda $0028,x
    tay
    jsl sub_7f5f09
    ply
    inc $0032,x
    rts

loc_049263:
    stz $d9d0
    ldx #$0000

loc_049269:
    sep #$20
.a8
    lda $d9d6,x
    inc a
    bne loc_049276
    inc $d9d0
    bra loc_04927f

loc_049276:
    lda $d9d8,x
    beq loc_0492a1
    dec a
    sta $d9d8,x

loc_04927f:
    rep #$20
.a16
    txa
    clc
    adc #$0005
    tax
    cpx #$0014
    bne loc_049269
    lda $d9d0
    cmp #$0004
    bne loc_0492a0
    ldx $d9d2
    inc $0032,x
    lda #$0005
    sta $d9d0

loc_0492a0:
    rts

loc_0492a1:
.a8
    lda $d9d4,x
    sta $1e78
    lda $d9d5,x
    sta $1e7a
    lda $d9d6,x
    sta $1e7c
    lda $d9d7,x
    sta $1e7e
    inc a
    sta $d9d7,x
    cmp #$2a
    bne loc_0492c6
    lda #$ff
    sta $d9d6,x

loc_0492c6:
    rep #$20
.a16
    jsr sub_04f688
    brl loc_04927f

loc_0492ce:
    ldx $d9d2
    sep #$20
.a8
    lda $000c,x
    sec
    sbc #$0a
    sta $1e78
    lda $000e,x
    clc
    adc #$0c
    sta $1e7a
    lda $004a,x
    sta $1e7c
    lda $004c,x
    sta $1e7e
    inc a
    sta $004c,x
    cmp #$24
    bne loc_0492fc
    inc $0032,x

loc_0492fc:
    rep #$20
.a16
    jsr sub_04f688
    rts

loc_049302:
    ldx $d9d2
    lda $000c,x
    sec
    sbc #$0007
    sta $3a
    lda $000e,x
    clc
    adc #$0008
    sta $3c
    phx
    lda $0034,x
    tax
    lda #$2e68
    cpx #$01e0
    bpl loc_049334
    inc a
    inc a
    cpx #$0168
    bpl loc_049334
    inc a
    inc a
    cpx #$0078
    bpl loc_049334
    inc a
    inc a

loc_049334:
    sta $5f
    plx
    jsr sub_049efe
    lda $004a,x
    sta $04
    lda $004c,x
    sta $0a
    jsr sub_049fd5
    lda $04
    sta $004a,x
    lda $0a
    sta $004c,x
    rts

sub_049352:
    lda $0030,x
    bit #$0004
    bne loc_049388
    lda $d994
    beq loc_049388
    jsr sub_04a18e
    phx
    ldx $d994
    lda $18bf0f,x
    sta $e841,y
    plx
    sep #$20
.a8
    lda $1e7a
    sec
    sbc #$0f
    xba
    lda $1e78
    sec
    sbc #$02
    rep #$20
.a16
    sta $e83f,y
    tya
    clc
    adc #$0008
    tay

loc_049388:
    rts

loc_049389:
.a8
    jsl sub_0b9cb3
    rts

loc_04938e:
    lda $e836
    beq loc_04939a
    dec a
    sta $e836
    brl loc_0495d9

loc_04939a:
    rep #$20
.a16
    lda $1b96
    bit #$0040
    sep #$20
.a8
    beq loc_0493a9
    brl loc_0495d6

loc_0493a9:
    jsr sub_04966c
    jsl sub_0ba842
    lda $f53e
    bne loc_0493b8
    brl loc_0495d9

loc_0493b8:
    lda $1e30
    sec
    sbc #$08
    sta $d98e
    lda $1e31
    sec
    sbc #$08
    sta $d98f
    pha
    rep #$20
.a16
    ldx $12c3
    sep #$20
.a8
    rep #$10
    pla
    jsr sub_049954
    phx
    rep #$30
.a16
    lda $18c597
    jsr sub_04a2ef
    ldx #$c599
    tya
    clc
    adc #$e83f
    tay
    lda $18c597
    dec a
    phb
    mvn $18,$7e
    plb
    tya
    sec
    sbc #$e83f
    tay
    sep #$20
.a8
    rep #$10
    plx
    lda $1fd2
    cmp #$02
    beq loc_049414
    lda #$7c
    sta $d98c
    lda #$18
    sta $d98d
    jsr sub_0499aa

loc_049414:
    rep #$20
.a16
    lda $da63
    phx
    phy
    ldx #$0018
    jsl sub_7f6dbd
    stx $1c41
    sty $1c43
    ply
    plx
    lda $1c41
    sta $04
    lda $1c41
    sta $da65
    lda #$11bb
    sta $02
    lda #$3070
    sta $a5
    lda #$0001
    sta $08
    sep #$20
.a8
    jsr sub_049d79
    lda #$c0
    sta $e83f,y
    iny
    lda #$0f
    sta $e83f,y
    iny
    lda #$ae
    sta $e83f,y
    iny
    lda #$00
    sta $e83f,y
    iny
    lda #$c0
    sta $e83f,y
    iny
    lda #$17
    sta $e83f,y
    iny
    lda #$ae
    sta $e83f,y
    iny
    lda #$00
    sta $e83f,y
    iny
    lda #$c0
    sta $e83f,y
    iny
    lda #$1f
    sta $e83f,y
    iny
    lda #$ae
    sta $e83f,y
    iny
    lda #$00
    sta $e83f,y
    iny
    phx
    rep #$30
.a16
    lda $18c571
    jsr sub_04a2ef
    ldx #$c573
    tya
    clc
    adc #$e83f
    tay
    lda $18c571
    dec a
    phb
    mvn $18,$7e
    plb
    tya
    sec
    sbc #$e83f
    tay
    sep #$20
.a8
    rep #$10
    plx
    rep #$30
.a16
    ldx $12c3
    lda $000c,x
    sta $d984
    lda $000e,x
    sta $d986
    lda $0010,x
    sta $d988
    lda #$e800
    sta $d990
    sta $d992
    lda #$1800
    sta $d991
    sta $d993
    lda #$0000
    sta $d9a9
    lda #$0000
    sta $d9ab
    lda #$1fd8
    sta $d98c
    sep #$20
.a8
    lda #$02
    sta $d9a8
    lda $0014,x
    sta $d98a
    jsl sub_7f5183
    lda #$01
    lsr a
    sta $1baa
    ldx $12c3
    rep #$20
.a16
    lda $002b,x
    tax
    sep #$20
.a8
    lda #$28
    sta $d98c
    lda #$28
    sta $d98d
    lda #$02
    sta $d9a8
    phx
    ldx #$ec00
    stx $d990
    stx $d992
    ldx #$1400
    stx $d991
    stx $d993
    plx
    jsr sub_049890
    jsr sub_049754
    rep #$20
.a16
    lda #$115e
    sta $02
    lda $d816
    sta $04
    lda #$3270
    sta $a5
    lda #$0005
    sta $08
    sep #$20
.a8
    jsr sub_049d79
    rep #$20
.a16
    lda #$009b
    sta $3a
    lda #$0017
    sta $3c
    lda #$22c4
    sta $5f
    jsr sub_049efe
    lda #$11ab
    sta $02
    lda $1c0a
    sta $04
    lda #$3070
    sta $a5
    lda #$0002
    sta $08
    sep #$20
.a8
    jsr sub_049d79
    lda #$b3
    sta $e83f,y
    iny
    lda #$12
    sta $e83f,y
    iny
    lda #$7e
    sta $e83f,y
    iny
    lda #$30
    sta $e83f,y
    iny
    ldx $12c3
    rep #$20
.a16
    lda $002b,x
    tax
    sep #$20
.a8
    rep #$20
.a16
    lda $6c38,x
    and #$003f
    sta $02
    phx
    lda $1e14
    and #$00ff
    lsr a
    asl a
    tax
    lda $18bdab,x
    sta $04
    sep #$20
.a8
    plx
    jsl sub_0495da
    lda $6c38,x
    and #$7f
    sta $6c38,x
    jsr sub_04983d

loc_0495d6:
    sty $1c49

loc_0495d9:
    rts

sub_0495da:
    phx
    rep #$20
.a16
    lda $1e14
    lsr a
    asl a
    and #$00ff
    tax
    lda $049630,x
    sta $3a
    lda $049636,x
    tax

loc_0495f1:
    lda $04963c,x
    clc
    adc $04
    sta $e83f,y
    iny
    iny
    lda $02
    beq loc_04960d
    cmp #$0004
    bpl loc_049612
    stz $02
    lda #$0001
    bra loc_04961d

loc_04960d:
    lda #$0002
    bra loc_04961d

loc_049612:
    lda $02
    sec
    sbc #$0004
    sta $02
    lda #$0000

loc_04961d:
    clc
    adc #$2645
    sta $e83f,y
    iny
    iny
    inx
    inx
    dec $3a
    bne loc_0495f1
    sep #$20
.a8
    plx
    rtl
    .db $08,$00,$0a,$00,$06,$00,$00,$00,$10,$00,$24,$00,$00,$00,$08,$00
    .db $10,$00,$18,$00,$00,$08,$08,$08,$10,$08,$18,$08,$00,$00,$08,$00
    .db $10,$00,$18,$00,$20,$00,$00,$08,$08,$08,$10,$08,$18,$08,$20,$08
    .db $00,$00,$08,$00,$10,$00,$00,$08,$08,$08,$10,$08

sub_04966c:
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    stz $3c
    stz $08
    stz $5f
    stz $3a
    ldx $12c3
    lda $000c,x
    sta $d984
    lda $000e,x
    sta $d986
    lda $0010,x
    sta $d988
    lda $1b96
    bit #$0100
    beq loc_04969b
    brl loc_049750

loc_04969b:
    lda $1b88
    bit #$0001
    bne loc_0496a6
    brl loc_049726

loc_0496a6:
    ldx $12a8
    bne loc_0496ae
    brl loc_0496ef

loc_0496ae:
    lda $1cee,x
    and #$00ff
    beq loc_0496bb
    cmp #$0086
    beq loc_0496c4

loc_0496bb:
    lda $0000,x
    tax
    bne loc_0496ae
    brl loc_0496ef

loc_0496c4:
    inc $08
    lda $000c,x
    sec
    sbc $d984
    bpl loc_0496d3
    eor #$ffff
    inc a

loc_0496d3:
    cmp $3a
    bcc loc_0496d9
    sta $3a

loc_0496d9:
    lda $0010,x
    sec
    sbc $d988
    bpl loc_0496e6
    eor #$ffff
    inc a

loc_0496e6:
    cmp $3c
    bcc loc_0496ec
    sta $3c

loc_0496ec:
    brl loc_0496bb

loc_0496ef:
    lda $1b96
    bit #$4000
    bne loc_049708
    lda $d7f4
    beq loc_049708
    lda $08
    bne loc_049708
    lda #$0100
    tsb $1b96
    bra loc_049750

loc_049708:
    lda #$0002
    sta $e82e
    lda $3a
    cmp $3c
    bcs loc_049716
    lda $3c

loc_049716:
    cmp #$2800
    bcs loc_049726
    dec $e82e
    cmp #$1400
    bcs loc_049726
    dec $e82e

loc_049726:
    lda #$0c00
    sta $3c
    lda $e82e
    beq loc_049747
    bit #$8000
    bne loc_04973d
    tax

loc_049736:
    asl $3c
    dex
    bne loc_049736
    bra loc_049747

loc_04973d:
    eor #$ffff
    inc a
    tax

loc_049742:
    lsr $3c
    dex
    bne loc_049742

loc_049747:
    lda $3c
    sta $e832
    asl a
    sta $e830

loc_049750:
    sep #$20
.a8
    plb
    rts

sub_049754:
    rep #$20
.a16
    lda $1b86
    bit #$0020
    beq loc_049761
    brl loc_04983a

loc_049761:
    lda $1b96
    bit #$2000
    beq loc_04976c
    brl loc_04983a

loc_04976c:
    lda $db49
    cmp #$0050
    bcs loc_049784
    lda $1b96
    bit #$1000
    bne loc_049784
    lda $1b9c
    bit #$2000
    beq loc_04978a

loc_049784:
    lda #$003c
    sta $d9b7

loc_04978a:
    lda $d9b7
    bne loc_049792
    brl loc_04983a

loc_049792:
    dec a
    sta $d9b7
    sep #$20
.a8
    lda #$22
    sta $3a
    lda #$21
    sta $3c
    ldx #$0002
    stx $5f
    jsr sub_049f6f
    rep #$20
.a16
    lda $db49
    cmp #$0050
    bcc loc_0497e5
    lda $1b96
    bit #$1000
    bne loc_0497d0
    lda $efd5
    bne loc_0497c8
    lda $1be2
    eor #$0001
    sta $1be2

loc_0497c8:
    lda $1be2
    bit #$0001
    beq loc_0497e5

loc_0497d0:
    sep #$20
.a8
    lda $e832,y
    ora #$04
    sta $e832,y
    sta $e836,y
    sta $e83a,y
    sta $e83e,y
    rep #$20

loc_0497e5:
.a16
    lda $db49
    cmp #$0064
    beq loc_049813
    sta $04
    lda #$341e
    sta $02
    lda #$3070
    sta $a5
    lda #$0002
    sta $08
    jsr sub_049d79
    lda #$3326
    sta $e83f,y
    iny
    iny
    lda #$3049
    sta $e83f,y
    iny
    iny
    bra loc_04983a

loc_049813:
    lda #$3422
    sta $02
    lda #$3070
    sta $a5
    lda #$0003
    sta $08
    lda #$0064
    sta $04
    jsr sub_049d79
    lda #$332a
    sta $e83f,y
    iny
    iny
    lda #$3049
    sta $e83f,y
    iny
    iny

loc_04983a:
    sep #$20
.a8
    rts

sub_04983d:
    php
    rep #$20
.a16
    lda $6c04,x
    and #$000f
    beq loc_04988a
    lda #$0020
    sta $3a
    lda #$00bf
    sta $3c
    lda #$3080
    sta $5f
    jsr sub_049f30
    lda #$001a
    sta $3a
    lda #$00c7
    sta $3c
    phx
    lda $6c05,x
    and #$00ff
    asl a
    tax
    lda $18bdd7,x
    sta $5f
    plx
    jsr sub_049efe
    lda #$bf25
    sta $02
    lda $6c04,x
    and #$000f
    ora #$0200
    sta $5f
    jsr sub_049e27

loc_04988a:
    plp
.a8
    rts

loc_04988c:
    rts

loc_04988d:
    rts

loc_04988e:
    rts
    .db $60

sub_049890:
    rep #$20
.a16
    lda $1b84
    bit #$0100
    sep #$20
.a8
    bne loc_04989f
    brl loc_049951

loc_04989f:
    rep #$20
.a16
    phx
    lda $7ed984
    xba
    lsr a
    and #$007f
    tax
    lsr a
    lsr a
    lsr a
    sta $02
    txa
    phx
    and #$0007
    asl a
    tax
    lda $00b063,x
    plx
    sta $08
    lda $7ed988
    and #$fe00
    xba
    asl a
    asl a
    asl a
    ora $02
    tax
    lda $7ecf36,x
    and $08
    beq loc_0498d7
    bra loc_0498ef

loc_0498d7:
    plx
    sep #$20
.a8
    lda $6c31,x
    bit #$80
    bne loc_0498e4
    jmp loc_049951

loc_0498e4:
    lda $6c31,x
    and #$7f
    sta $6c31,x
    brl loc_049951

loc_0498ef:
.a16
    plx
    sep #$20
.a8
    lda $6c31,x
    bit #$80
    beq loc_0498fc
    jmp loc_049929

loc_0498fc:
    rep #$20
.a16
    lda $1b84
    bit #$0001
    sep #$20
.a8
    beq loc_04990b
    brl loc_04991a

loc_04990b:
    lda #$0f
    sta $6c32,x
    lda $6c31,x
    ora #$80
    sta $6c31,x
    bra loc_049937

loc_04991a:
    lda #$0f
    sta $6c32,x
    lda $6c31,x
    ora #$80
    sta $6c31,x
    bra loc_049937

loc_049929:
    dec $6c32,x
    beq loc_049932
    jml loc_049937

loc_049932:
    lda #$0f
    sta $6c32,x

loc_049937:
    lda $6c32,x
    cmp #$0f
    bne loc_049951
    rep #$20
.a16
    lda #$000d
    cpx $12c3
    beq loc_04994b
    ora #$8000

loc_04994b:
    jsl QueueSound
    sep #$20

loc_049951:
.a8
    sep #$20
    rts

sub_049954:
    phy
    ldy $2b,x
    lda $6ba3,y
    ply
    bit #$40
    bne loc_049963
    jml loc_0499a9

loc_049963:
    lda $d98e
    sta $e843,y
    sta $e84b,y
    sec
    sbc #$08
    sta $e83f,y
    sta $e847,y
    lda $d98f
    sta $e848,y
    sta $e84c,y
    sec
    sbc #$08
    sta $e840,y
    sta $e844,y
    rep #$20
.a16
    lda #$304e
    sta $e841,y
    lda #$704e
    sta $e845,y
    lda #$b04e
    sta $e849,y
    lda #$f04e
    sta $e84d,y
    tya
    clc
    adc #$0010
    tay
    sep #$20

loc_0499a9:
.a8
    rts

sub_0499aa:
    php
    rep #$20
.a16
    sep #$20
.a8
    lda $d98c
    sta $02
    lda $d98d
    sta $03
    rep #$20
.a16
    lda $d7f4
    ora #$0400
    sta $5f
    jsr sub_049e27
    plp
.a8
    rts

loc_0499c8:
    php
    rep #$20
.a16
    phx
    lda $da5b
    ldx #$0004
    stx $04
    jsr sub_04ad84
    ldx #$0003
    lda #$10b0
    sta $02

loc_0499df:
    lda $d9e8,x
    and #$00ff
    sta $5f
    jsr sub_049e27
    lda $02
    sec
    sbc #$0008
    sta $02
    dex
    bpl loc_0499df
    plx
    plp
    rtl

loc_0499f8:
.a8
    jsl sub_0bad59
    sty $1c49
    rts

loc_049a00:
    sty $1c49
    rts
    .db $60,$60,$ad,$85,$d9,$1a,$29,$03,$8d,$85,$d9,$a9,$00,$eb,$ad,$85
    .db $d9,$aa,$bf,$6d,$9a,$04,$8d,$c0,$1b,$22,$4d,$a1,$04,$a9,$00,$eb
    .db $ad,$25,$1c,$aa,$ad,$7f,$d9,$18,$69,$0c,$18,$7f,$61,$9a,$04,$8d
    .db $86,$d9,$99,$3f,$e8,$c8,$ad,$80,$d9,$18,$69,$fc,$18,$7f,$67,$9a
    .db $04,$8d,$87,$d9,$3a,$99,$3f,$e8,$c8,$ad,$c0,$1b,$c2,$20,$29,$ff
    .db $00,$18,$69,$40,$36,$99,$3f,$e8,$c8,$c8,$e2,$20,$60,$00,$00,$0c
    .db $0c,$07,$07,$00,$00,$00,$00,$fa,$fa,$00,$02,$04,$06,$60

loc_049a72:
    rts
    .db $6b,$60,$60,$60,$60,$c2,$30,$ac,$49,$1c,$af,$ec,$03,$70,$aa,$bf
    .db $1c,$00,$70,$c9,$02,$00,$f0,$0b,$bf,$00,$00,$70,$d0,$f0,$4c,$68
    .db $9b,$80,$f5,$bf,$12,$00,$70,$8d,$c0,$1b,$c9,$90,$01,$10,$f2,$c9
    .db $70,$fe,$30,$ed,$f0,$eb,$bf,$14,$00,$70,$49,$ff,$ff,$1a,$8d,$c2
    .db $1b,$c9,$90,$01,$10,$db,$c9,$70,$fe,$30,$d6,$f0,$d4,$bf,$10,$00
    .db $70,$c9,$9c,$ff,$30,$10,$c9,$64,$00,$10,$13,$a9,$3d,$00,$09,$00
    .db $02,$8d,$c4,$1b,$80,$11,$a9,$3d,$00,$8d,$c4,$1b,$80,$09,$a9,$3d
    .db $00,$09,$00,$04,$8d,$c4,$1b,$ad,$c0,$1b,$da,$5a,$9c,$31,$1c,$10
    .db $07,$ce,$31,$1c,$49,$ff,$ff,$1a,$a2,$14,$00,$22,$bd,$6d,$7f,$8a
    .db $ae,$31,$1c,$10,$04,$49,$ff,$ff,$1a,$7a,$fa,$18,$6d,$8c,$d9,$8d
    .db $c0,$1b,$ad,$c2,$1b,$da,$5a,$9c,$31,$1c,$10,$07,$ce,$31,$1c,$49
    .db $ff,$ff,$1a,$a2,$14,$00,$22,$bd,$6d,$7f,$8a,$ae,$31,$1c,$10,$04
    .db $49,$ff,$ff,$1a,$7a,$fa,$18,$6d,$8d,$d9,$8d,$c2,$1b,$ad,$c2,$1b
    .db $3a,$29,$ff,$00,$eb,$8d,$31,$1c,$ad,$c0,$1b,$29,$ff,$00,$0d,$31
    .db $1c,$99,$3f,$e8,$c8,$c8,$ad,$c4,$1b,$18,$69,$40,$30,$99,$3f,$e8
    .db $c8,$c8,$4c,$8b,$9a,$8c,$49,$1c,$e2,$20,$60,$c2,$30,$ac,$49,$1c
    .db $af,$ec,$03,$70,$aa,$bf,$1c,$00,$70,$c9,$01,$00,$f0,$0b,$bf,$00
    .db $00,$70,$d0,$f0,$4c,$5e,$9c,$80,$f5,$bf,$12,$00,$70,$8d,$c0,$1b
    .db $c9,$90,$01,$10,$f2,$c9,$70,$fe,$30,$ed,$f0,$eb,$bf,$14,$00,$70
    .db $49,$ff,$ff,$1a,$8d,$c2,$1b,$c9,$90,$01,$10,$db,$c9,$70,$fe,$30
    .db $d6,$f0,$d4,$bf,$10,$00,$70,$c9,$9c,$ff,$30,$10,$c9,$64,$00,$10
    .db $13,$a9,$3d,$00,$09,$00,$02,$8d,$c4,$1b,$80,$11,$a9,$3d,$00,$8d
    .db $c4,$1b,$80,$09,$a9,$3d,$00,$09,$00,$04,$8d,$c4,$1b,$ad,$c0,$1b
    .db $da,$5a,$9c,$31,$1c,$10,$07,$ce,$31,$1c,$49,$ff,$ff,$1a,$a2,$14
    .db $00,$22,$bd,$6d,$7f,$8a,$ae,$31,$1c,$10,$04,$49,$ff,$ff,$1a,$7a
    .db $fa,$18,$6d,$8c,$d9,$8d,$c0,$1b,$ad,$c2,$1b,$da,$5a,$9c,$31,$1c
    .db $10,$07,$ce,$31,$1c,$49,$ff,$ff,$1a,$a2,$14,$00,$22,$bd,$6d,$7f
    .db $8a,$ae,$31,$1c,$10,$04,$49,$ff,$ff,$1a,$7a,$fa,$18,$6d,$8d,$d9
    .db $8d,$c2,$1b,$ad,$c2,$1b,$3a,$29,$ff,$00,$eb,$8d,$31,$1c,$ad,$c0
    .db $1b,$29,$ff,$00,$0d,$31,$1c,$99,$3f,$e8,$c8,$c8,$ad,$c4,$1b,$18
    .db $69,$40,$30,$99,$3f,$e8,$c8,$c8,$4c,$81,$9b,$8c,$49,$1c,$e2,$20
    .db $60,$6b,$e8

sub_049c66:
    pha
    phx
    phy
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $1b68
    cmp #$0007
    beq loc_049c92
    lda #$e8e8
    sta $e83f
    lda #$0040
    sta $e841
    ldx #$e83f
    ldy #$e843
    lda #$01fb
    phb
    mvn $7e,$7e
    plb

loc_049c92:
    lda #$0000
    sta $ea3f
    ldx #$ea3f
    ldy #$ea41
    lda #$001d
    phb
    mvn $7e,$7e
    plb
    sep #$20
.a8
    plb
    ply
    plx
    pla
    rtl

sub_049cad:
    pha
    phx
    phy
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda #$e8e8
    sta $e83f
    lda #$0040
    sta $e841
    ldx #$e83f
    ldy #$e843
    lda #$043b
    phb
    mvn $7e,$7e
    plb
    lda #$0000
    sta $ea3f
    sta $ec5f
    ldx #$ea3f
    ldy #$ea41
    lda #$001d
    phb
    mvn $7e,$7e
    plb
    ldx #$ec5f
    ldy #$ec61
    lda #$001d
    phb
    mvn $7e,$7e
    plb
    sep #$20
.a8
    plb
    ply
    plx
    pla
    rtl

sub_049cfd:
    pha
    phx
    phy
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda #$e8e8
    sta $e83f,y
    tya
    clc
    adc #$e83f
    tax
    clc
    adc #$0004
    tay
    lda #$01fb
    phb
    mvn $7e,$7e
    plb
    lda #$0000
    sta $0000,y
    tyx
    tya
    clc
    adc #$0002
    tay
    lda #$001d
    phb
    mvn $7e,$7e
    plb
    sep #$20
.a8
    plb
    ply
    plx
    pla
    rtl

sub_049d3c:
.a16
    pha
    phx
    phy
    phb
    php
    sep #$20
.a8
    lda #$7e
    pha
    plb
    rep #$30
.a16
    lda #$e8e8
    sta $0000,y
    tyx
    tya
    clc
    adc #$0004
    tay
    lda #$01fb
    phb
    mvn $7e,$7e
    plb
    lda #$0000
    sta $0000,y
    tyx
    tya
    clc
    adc #$0002
    tay
    lda #$001d
    phb
    mvn $7e,$7e
    plb
    plp
    plb
    ply
    plx
    pla
    rtl

sub_049d79:
.a8
    php
    phx
    sep #$20
    lda $02
    sta $3a
    lda $03
    sta $3c
    rep #$20
.a16
    lda $04
    phx
    phy
    ldx #$000a
    jsl sub_7f6dbd
    stx $1c41
    sty $1c43
    ply
    plx
    lda $1c43
    ora $a5
    sta $5f
    jsr sub_049ec4
    ldx $08
    dex
    beq loc_049dd2

loc_049da9:
    lda $3a
    sec
    sbc #$0008
    sta $3a
    lda $1c41
    phx
    phy
    ldx #$000a
    jsl sub_7f6dbd
    stx $1c41
    sty $1c43
    ply
    plx
    lda $1c43
    ora $a5
    sta $5f
    jsr sub_049ec4
    dex
    bne loc_049da9

loc_049dd2:
    plx
    plp
.a8
    rts

loc_049dd5:
    php
    rep #$30
.a16
    phx
    lda $04
    phx
    phy
    ldx #$000a
    jsl sub_7f6dbd
    stx $1c41
    sty $1c43
    ply
    plx
    lda $1c43
    ora $a5
    sta $5f
    jsr sub_049e27
    ldx $08
    dex
    beq loc_049e24

loc_049dfb:
    lda $02
    sec
    sbc #$0008
    sta $02
    lda $1c41
    phx
    phy
    ldx #$000a
    jsl sub_7f6dbd
    stx $1c41
    sty $1c43
    ply
    plx
    lda $1c43
    ora $a5
    sta $5f
    jsr sub_049e27
    dex
    bne loc_049dfb

loc_049e24:
    plx
    plp
    rts

sub_049e27:
    php
    rep #$20
    phx
    lda $02
    sec
    sbc #$0100
    sta $e83f,y
    iny
    iny
    lda $5f
    and #$ff00
    sta $3a
    lda $5f
    and #$00ff
    asl a
    asl a
    tax
    lda $0bd883,x
    ora $3a
    sta $e83f,y
    iny
    iny
    lda $02
    clc
    adc #$0700
    sta $e83f,y
    iny
    iny
    lda $0bd885,x
    ora $3a
    sta $e83f,y
    iny
    iny
    plx
    plp
    rts
    .db $08,$c2,$30,$da,$a5,$04,$20,$a0,$9e,$e2,$20,$a5,$02,$85,$3a,$a5
    .db $03,$85,$3c,$20,$fe,$9e,$c2,$20,$a6,$08,$ca,$f0,$17,$ad,$41,$1c
    .db $20,$a0,$9e,$e2,$20,$a5,$3a,$38,$e9,$10,$85,$3a,$20,$fe,$9e,$c2
    .db $20,$ca,$d0,$e9,$fa,$28,$60,$da,$5a,$a2,$0a,$00,$22,$bd,$6d,$7f
    .db $8e,$41,$1c,$8c,$43,$1c,$7a,$fa,$ad,$43,$1c,$0a,$c9,$10,$00,$30
    .db $04,$18,$69,$10,$00,$18,$65,$a5,$85,$5f,$60

sub_049ec4:
    php
    sep #$20
.a8
    lda $3a
    sta $e83f,y
    iny
    lda $3c
    sta $e83f,y
    iny
    rep #$20
.a16
    lda $5f
    sta $e83f,y
    iny
    iny
    plp
    rts

sub_049ede:
    php
    sep #$20
.a8
    lda $3a
    sec
    sbc #$04
    sta $e83f,y
    iny
    lda $3c
    sec
    sbc #$05
    sta $e83f,y
    iny
    rep #$20
.a16
    lda $5f
    sta $e83f,y
    iny
    iny
    plp
    rts

sub_049efe:
.a8
    php
    rep #$20
.a16
    lda $1b9c
    bit #$0002
    sep #$20
.a8
    bne loc_049f10
    jsr sub_04a12e
    bra loc_049f13

loc_049f10:
    jsr sub_04a1ea

loc_049f13:
    lda $3a
    sec
    sbc #$08
    sta $e83f,y
    lda $3c
    sec
    sbc #$09
    sta $e840,y
    rep #$20
.a16
    lda $5f
    sta $e841,y
    iny
    iny
    iny
    iny
    plp
.a8
    rts

sub_049f30:
.a16
    php
    rep #$20
    lda $1b9c
    bit #$0002
    sep #$20
.a8
    bne loc_049f42
    jsr sub_04a1a5
    bra loc_049f45

loc_049f42:
    jsr sub_04a201

loc_049f45:
    lda $3a
    sta $e843,y
    sec
    sbc #$10
    sta $e83f,y
    lda $3c
    sec
    sbc #$09
    sta $e840,y
    sta $e844,y
    rep #$20
.a16
    lda $5f
    sta $e841,y
    inc a
    inc a
    sta $e845,y
    tya
    clc
    adc #$0008
    tay
    plp
    rts

sub_049f6f:
.a8
    phx
    php
    rep #$20
.a16
    lda $1b9c
    bit #$0002
    sep #$20
.a8
    bne loc_049f82
    jsr sub_04a1d3
    bra loc_049f85

loc_049f82:
    jsr sub_04a22f

loc_049f85:
    rep #$20
.a16
    stz $02
    ldx $5f
    lda $18bf15,x
    sta $08
    sep #$20
.a8
    lda #$04
    sta $97

loc_049f97:
    ldx $02
    lda $3a
    clc
    adc $049fcd,x
    sta $e83f,y
    iny
    inx
    lda $3c
    clc
    adc $049fcd,x
    sta $e83f,y
    iny
    inx
    stx $02
    rep #$20
.a16
    ldx $08
    lda $18bf15,x
    sta $e83f,y
    sep #$20
.a8
    inx
    inx
    stx $08
    iny
    iny
    dec $97
    bne loc_049f97
    plp
    plx
    rts
    .db $f0,$ef,$00,$ef,$f0,$ff,$00,$ff

sub_049fd5:
.a16
    phx
    php
    rep #$30
    ldx $04
    lda $0a
    cmp #$ffff
    beq loc_04a036
    cmp #$fffd
    beq loc_04a02d
    bit #$8000
    bne loc_049ff5

loc_049fec:
    ldx $04
    lda $18c037,x
    tax
    bra loc_04a022

loc_049ff5:
    lda $0a
    bit #$8000
    beq loc_049fec
    and #$7fff
    dec a
    bne loc_04a028
    lda $18c03b,x
    sta $0a
    cmp #$ffff
    beq loc_04a036
    cmp #$fffd
    beq loc_04a02d
    cmp #$fffc
    beq loc_04a01d
    inx
    inx
    inx
    inx
    bra loc_04a022

loc_04a01d:
    lda $18c03d,x
    tax

loc_04a022:
    stx $04
    lda $18c037,x

loc_04a028:
    ora #$8000
    sta $0a

loc_04a02d:
    lda $18c039,x
    sta $5f
    jsr sub_04a085

loc_04a036:
    plp
    plx
    rts

sub_04a039:
    php
    rep #$30
    ldx $5f
    lda $18c0fd,x
    tax
    lda $18c0fd,x
    bit #$8000
    beq loc_04a062
    and #$7fff
    pha
    lda $1b9c
    bit #$0002
    bne loc_04a05e
    pla
    jsr sub_04a28d
    bra loc_04a062

loc_04a05e:
    pla
    jsr sub_04a2ef

loc_04a062:
    lda $18c0fd,x
    and #$7fff
    dec a
    pha
    txa
    clc
    adc #$c0ff
    tax
    tya
    clc
    adc #$e83f
    tay
    pla
    phb
    mvn $18,$7e
    plb
    tya
    sec
    sbc #$e83f
    tay
    plp
    rts

sub_04a085:
    php
    rep #$30
    ldx $5f
    lda $18c0fd,x
    tax
    lda $18c0fd,x
    bit #$8000
    beq loc_04a0ae
    and #$7fff
    pha
    lda $1b9c
    bit #$0002
    bne loc_04a0aa
    pla
    jsr sub_04a28d
    bra loc_04a0ae

loc_04a0aa:
    pla
    jsr sub_04a2ef

loc_04a0ae:
    lda $18c0fd,x
    and #$7fff
    lsr a
    lsr a
    sta $02

loc_04a0b9:
    sep #$20
.a8
    lda $18c0ff,x
    clc
    adc $3a
    sta $e83f,y
    inx
    iny
    lda $18c0ff,x
    clc
    adc $3c
    sta $e83f,y
    inx
    iny
    rep #$20
.a16
    lda $18c0ff,x
    sta $e83f,y
    inx
    inx
    iny
    iny
    dec $02
    bne loc_04a0b9
    plp
    rts
    .db $bb,$a0,$00,$00,$b7,$fc,$18,$6d,$8c,$d9,$9d,$3f,$e8,$e8,$e8,$c8
    .db $c8,$b7,$fc,$9d,$3f,$e8,$e8,$e8,$c8,$c8,$cc,$ca,$1b,$d0,$e5,$9b
    .db $e2,$20,$60

sub_04a109:
.a8
    pha
    phx
    phy
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda #$0000
    sta $ea3f
    ldx #$ea3f
    ldy #$ea41
    lda #$001d
    phb
    mvn $7e,$7e
    plb
    sep #$20
.a8
    plb
    ply
    plx
    pla
    rtl

sub_04a12e:
    phx
    phy
    php
    rep #$30
.a16
    tya
    and #$000c
    lsr a
    tax
    tya
    lsr a
    lsr a
    lsr a
    lsr a
    tay
    lda $04a3bb,x
    ora $ea3f,y
    sta $ea3f,y
    plp
.a8
    ply
    plx
    rts
    .db $da,$5a,$08,$c2,$30,$98,$c9,$20,$02,$30,$1d,$38,$e9,$20,$02,$4a
    .db $a8,$29,$06,$00,$aa,$98,$4a,$4a,$4a,$a8,$bf,$bb,$a3,$04,$19,$5f
    .db $ec,$99,$5f,$ec,$28,$7a,$fa,$6b,$29,$0c,$00,$4a,$aa,$98,$4a,$4a
    .db $4a,$4a,$a8,$bf,$bb,$a3,$04,$19,$3f,$ea,$99,$3f,$ea,$28,$7a,$fa
    .db $6b

sub_04a18e:
.a16
    phx
    phy
    php
    sep #$20
.a8
    lda #$04
    sta $56
    rep #$20
.a16
    lda #$a3bb
    sta $54
    jsr sub_04a246
    plp
    ply
    plx
    rts

sub_04a1a5:
.a8
    phx
    phy
    php
    sep #$20
    lda #$04
    sta $56
    rep #$20
.a16
    lda #$a3c3
    sta $54
    jsr sub_04a246
    plp
    ply
    plx
    rts

loc_04a1bc:
    phx
    phy
    php
    sep #$20
.a8
    lda #$04
    sta $56
    rep #$20
.a16
    lda #$a3cb
    sta $54
    jsr sub_04a246
    plp
    ply
    plx
    rts

sub_04a1d3:
.a8
    phx
    phy
    php
    sep #$20
    lda #$04
    sta $56
    rep #$20
.a16
    lda #$a3d3
    sta $54
    jsr sub_04a246
    plp
.a8
    ply
    plx
    rts

sub_04a1ea:
    phx
    phy
    php
    sep #$20
    lda #$04
    sta $56
    rep #$20
.a16
    lda #$a3bb
    sta $54
    jsr sub_04a25b
    plp
.a8
    ply
    plx
    rts

sub_04a201:
    phx
    phy
    php
    sep #$20
    lda #$04
    sta $56
    rep #$20
.a16
    lda #$a3c3
    sta $54
    jsr sub_04a25b
    plp
.a8
    ply
    plx
    rts

loc_04a218:
    phx
    phy
    php
    sep #$20
    lda #$04
    sta $56
    rep #$20
.a16
    lda #$a3cb
    sta $54
    jsr sub_04a25b
    plp
    ply
    plx
    rts

sub_04a22f:
.a8
    phx
    phy
    php
    sep #$20
    lda #$04
    sta $56
    rep #$20
.a16
    lda #$a3d3
    sta $54
    jsr sub_04a25b
    plp
.a8
    ply
    plx
    rts

sub_04a246:
.a16
    tya
    lsr a
    tax
    and #$0006
    tay
    txa
    lsr a
    lsr a
    lsr a
    tax
    lda [$54],y
    ora $ea3f,x
    sta $ea3f,x
    rts

sub_04a25b:
    tya
    cmp #$0220
    bmi loc_04a279
    sec
    sbc #$0220
    lsr a
    tax
    and #$0006
    tay
    txa
    lsr a
    lsr a
    lsr a
    tax
    lda [$54],y
    ora $ec5f,x
    sta $ec5f,x
    rts

loc_04a279:
    lsr a
    tax
    and #$0006
    tay
    txa
    lsr a
    lsr a
    lsr a
    tax
    lda [$54],y
    ora $ea3f,x
    sta $ea3f,x
    rts

sub_04a28d:
    phx
    phy
    php
    rep #$30
    lsr a
    lsr a
    sta $02
    tya
    lsr a
    lsr a
    lsr a
    lsr a
    tax
    tya
    and #$000c
    lsr a
    txy
    tax
    bne loc_04a2d3

loc_04a2a5:
    lda $02
    cmp #$0008
    bmi loc_04a2c5
    beq loc_04a2c5
    sec
    sbc #$0008
    sta $02
    ldx #$0010
    lda $04a3db,x
    ora $ea3f,y
    sta $ea3f,y
    iny
    iny
    bra loc_04a2a5

loc_04a2c5:
    asl a
    tax
    lda $04a3db,x
    ora $ea3f,y
    sta $ea3f,y
    bra loc_04a2eb

loc_04a2d3:
    lda $04a3bb,x
    ora $ea3f,y
    sta $ea3f,y
    dec $02
    beq loc_04a2eb
    inx
    inx
    cpx #$0008
    bmi loc_04a2d3
    iny
    bra loc_04a2a5

loc_04a2eb:
    plp
    ply
    plx
    rts

sub_04a2ef:
    phx
    phy
    lsr a
    lsr a
    sta $1bc0
    tya
    cmp #$0220
    bmi loc_04a30c
    sec
    sbc #$0220
    lsr a
    lsr a
    pha
    lsr a
    lsr a
    clc
    adc #$0220
    tay
    bra loc_04a312

loc_04a30c:
    lsr a
    lsr a
    pha
    lsr a
    lsr a
    tay

loc_04a312:
    plx
    txa
    and #$0003
    tax
    bne loc_04a32f

loc_04a31a:
    lda $1bc0
    cmp #$0004
    bmi loc_04a32f
    ldx #$0004
    lda $1bc0
    sec
    sbc #$0003
    sta $1bc0

loc_04a32f:
    sep #$20
.a8
    lda $04a3b6,x
    ora $ea3f,y
    sta $ea3f,y
    rep #$20
.a16
    dec $1bc0
    lda $1bc0
    beq loc_04a352
    inx
    txa
    cmp #$0004
    bmi loc_04a32f
    iny
    ldx #$0000
    bra loc_04a31a

loc_04a352:
    rep #$30
    ply
    plx
    rts
    .db $da,$c2,$20,$98,$4a,$4a,$29,$03,$00,$f0,$14,$3a,$aa,$bf,$7a,$a3
    .db $04,$aa,$a9,$e8,$e8,$99,$3f,$e8,$c8,$c8,$c8,$c8,$ca,$d0,$f6,$e2
    .db $20,$fa,$60,$03,$02,$01,$a9,$05,$00,$8d,$ca,$1b,$ad,$c2,$1b,$9f
    .db $3f,$e8,$7e,$38,$e9,$08,$00,$8d,$c2,$1b,$e8,$e8,$da,$ad,$c0,$1b
    .db $a2,$0a,$00,$22,$bd,$6d,$7f,$8e,$c0,$1b,$fa,$98,$18,$69,$70,$3e
    .db $9f,$3f,$e8,$7e,$e8,$e8,$ce,$ca,$1b,$f0,$03,$82,$ce,$ff,$6b,$02
    .db $08,$20,$80,$aa,$02,$00,$08,$00,$20,$00,$80,$00,$0a,$00,$28,$00
    .db $a0,$00,$80,$02,$2a,$00,$a8,$00,$a0,$02,$80,$0a,$aa,$00,$a8,$02
    .db $a0,$0a,$80,$2a,$00,$00,$02,$00,$0a,$00,$2a,$00,$aa,$00,$aa,$02
    .db $aa,$0a,$aa,$2a,$aa,$aa

sub_04a3ed:
.a8
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
    lda $1aa7
    bit #$10
    bne loc_04a410
    rep #$20
.a16
    lda $1ba2
    and #$00ff
    asl a
    tax
    sep #$20
.a8
    jsr (tbl_04a416,x)

loc_04a410:
    plp
    plb
    ply
    plx
    pla
    rtl

tbl_04a416:
    .db $28,$a4,$28,$a4,$57,$a5,$5b,$a5,$3d,$a5,$29,$a4,$28,$a4,$28,$a4
    .db $5f,$a5

loc_04a428:
    rts

loc_04a429:
    jsr sub_04a443
    jsr sub_04a495
    jsr sub_04a4be
    jsr sub_04a4dc
    jsr sub_04ab07
    rep #$20
.a16
    lda #$2000
    trb $1b92
    sep #$20
.a8
    rts

sub_04a443:
    rep #$20
.a16
    jsl sub_7f5fa0
    bcc loc_04a451
    lda #$2000
    tsb $1b92

loc_04a451:
    jsr sub_04a457
    sep #$20
.a8
    rts

sub_04a457:
.a16
    lda $1b92
    bit #$2000
    beq loc_04a494
    lda #$0002
    sta $02
    lda #$0017
    sta $08
    lda #$0060
    sta $97
    ldx #$0002
    lda $db49
    cmp #$0064
    beq loc_04a47d
    jsr sub_04ad48
    rts

loc_04a47d:
    lda #$0084
    sta $97
    sep #$20
.a8
    jsr sub_04adbd
    inc $02
    inc $02
    inc $97
    inc $97
    jsr sub_04adbd
    rep #$20

loc_04a494:
.a16
    rts

sub_04a495:
.a8
    rep #$20
.a16
    lda $1b92
    bit #$0002
    beq loc_04a4a2
    jsr sub_04a4a5

loc_04a4a2:
    sep #$20
.a8
    rts

sub_04a4a5:
.a16
    lda #$0019
    sta $02
    lda #$0018
    sta $08
    lda #$0020
    sta $97
    lda $da5b
    ldx #$0003
    jsr sub_04acb6
    rts

sub_04a4be:
.a8
    rep #$20
.a16
    lda #$0018
    sta $02
    lda #$001a
    sta $08
    lda #$0030
    sta $97
    lda $7ed816
    ldx #$0005
    jsr sub_04acb6
    sep #$20
.a8
    rts

sub_04a4dc:
    rep #$20
.a16
    lda $1b86
    bit #$0080
    bne loc_04a4fe
    lda #$0016
    sta $02
    lda #$0019
    sta $08
    stz $97
    lda $1dd2
    and #$00ff
    ldx #$0001
    jsr sub_04acd7

loc_04a4fe:
    sep #$20
.a8
    rts

loc_04a501:
    rep #$20
.a16
    lda #$0002
    sta $02
    lda #$0019
    sta $08
    lda #$0030
    sta $97
    lda $7eda43
    ldx #$0002
    jsr sub_04acb6
    sep #$20
.a8
    rts

loc_04a51f:
    rep #$20
.a16
    lda #$0002
    sta $02
    lda #$001a
    sta $08
    lda #$0030
    sta $97
    lda $7eda03
    ldx #$0002
    jsr sub_04acb6
    sep #$20
.a8
    rts

loc_04a53d:
    rep #$20
.a16
    lda $efd3
    and #$0003
    tax
    sep #$20
.a8
    lda $04ae47,x
    sta $1cc4
    lda $04ae4b,x
    sta $1cc6
    rts

loc_04a557:
    jsr sub_04aaa7
    rts

loc_04a55b:
    jsr sub_04aaa7
    rts

loc_04a55f:
    php
    rep #$20
.a16
    lda $d97a
    cmp #$ffff
    beq loc_04a56f
    asl a
    tax
    jsr (tbl_04a571,x)

loc_04a56f:
    plp
.a8
    rts

tbl_04a571:
    .db $c7,$a5,$ca,$a6,$d3,$a6,$1c,$a9,$ec,$a6,$b0,$a6,$ca,$a6,$29,$a7
    .db $91,$a7,$f4,$a6,$b0,$a6,$ca,$a6,$5d,$a7,$91,$a7,$fc,$a6,$b0,$a6
    .db $ca,$a6,$9a,$a6,$e8,$a7,$3e,$a8,$04,$a7,$b0,$a6,$ca,$a6,$13,$a8
    .db $3e,$a8,$0c,$a7,$b0,$a6,$ca,$a6,$cf,$a7,$1c,$a9,$14,$a7,$b8,$a6
    .db $ca,$a6,$62,$a8,$7e,$a8,$ca,$a6,$28,$a9,$56,$a9,$ca,$a6,$c0,$a6
    .db $ca,$a6,$7a,$a9,$d1,$a5

loc_04a5c7:
.a16
    lda #$0078
    sta $1bf0
    inc $d97a
    rts

loc_04a5d1:
    lda #$0017
    sta $d986
    lda #$000d
    sta $d988
    jsr sub_04a6ec
    lda #$0010
    sta $d982
    lda #$000f
    sta $d984
    lda #$006c
    sta $d998
    lda $da3d
    sta $d990
    jsr sub_04a7b6
    lda #$000f
    sta $d988
    jsr sub_04a6f4
    lda #$0010
    sta $d982
    lda #$0011
    sta $d984
    lda #$007c
    sta $d998
    lda $da33
    sta $d990
    jsr sub_04a7b6
    lda #$0011
    sta $d988
    jsr sub_04a6fc
    lda $da27
    cmp #$0002
    bne loc_04a675
    lda #$0012
    sta $d982
    lda #$0013
    sta $d984
    lda $da5b
    sta $d990
    jsr sub_04a9d5
    lda #$0013
    sta $d988
    jsr sub_04a704
    lda #$0010
    sta $d982
    lda #$0015
    sta $d984
    lda $db49
    sta $d990
    jsr sub_04a9d5
    lda #$0015
    sta $d988
    jsr sub_04a70c
    lda #$0017
    sta $d988
    jsr sub_04a714

loc_04a675:
    lda $1bad
    sta $d99a
    lda $1baf
    sta $d99c
    jsr sub_04aa0e
    jsr sub_04a981
    lda #$0001
    sta $d9bc
    lda #$0001
    sta $d9b8
    lda #$ffff
    sta $d97a
    rts

loc_04a69a:
    lda $da27
    cmp #$0002
    beq loc_04a6ac
    lda $d97a
    clc
    adc #$000f
    sta $d97a

loc_04a6ac:
    inc $d97a
    rts

loc_04a6b0:
    lda #$001e
    sta $1bf0
    bra loc_04a6c6

loc_04a6b8:
    lda #$0032
    sta $1bf0
    bra loc_04a6c6

loc_04a6c0:
    lda #$001e
    sta $1bf0

loc_04a6c6:
    inc $d97a
    rts

loc_04a6ca:
    dec $1bf0
    bne loc_04a6d2
    inc $d97a

loc_04a6d2:
    rts

loc_04a6d3:
    lda #$0017
    sta $d986
    lda #$000d
    sta $d988
    lda #$003c
    sta $d98a
    sta $d98a
    inc $d97a
    rts

sub_04a6ec:
    lda $d816
    ldx $d818
    bra loc_04a71c

sub_04a6f4:
    lda $d822
    ldx $d824
    bra loc_04a71c

sub_04a6fc:
    lda $d826
    ldx $d828
    bra loc_04a71c

sub_04a704:
    lda $d81a
    ldx $d81c
    bra loc_04a71c

sub_04a70c:
    lda $d81e
    ldx $d820
    bra loc_04a71c

sub_04a714:
    lda $d82a
    ldx $d82c
    bra loc_04a71c

loc_04a71c:
    sta $d9a0
    stx $d9a2
    jsr sub_04a9ee
    inc $d97a
    rts

loc_04a729:
    stz $d990
    lda $da3d
    sta $d992
    lda #$006c
    sta $d998
    lda #$0010
    sta $d982
    lda #$000f
    sta $d984
    lda #$0017
    sta $d986
    lda #$000f
    sta $d988
    lda #$000a
    sta $d98c
    sta $d98a
    inc $d97a
    rts

loc_04a75d:
    stz $d990
    lda $da33
    sta $d992
    lda #$007c
    sta $d998
    lda #$0010
    sta $d982
    lda #$0011
    sta $d984
    lda #$0017
    sta $d986
    lda #$0011
    sta $d988
    lda #$000a
    sta $d98c
    sta $d98a
    inc $d97a
    rts

loc_04a791:
    jsr sub_04aa2e
    jsr sub_04a9ee
    dec $d98a
    bne loc_04a7b5
    lda $d98c
    sta $d98a
    lda $d990
    cmp $d992
    beq loc_04a7b2
    inc a
    sta $d990
    jsr sub_04a7b6
    rts

loc_04a7b2:
    inc $d97a

loc_04a7b5:
    rts

sub_04a7b6:
    lda $d982
    sta $02
    lda $d984
    sta $08
    lda $d998
    sta $97
    lda $d990
    sta $5f
    jsl sub_04ac79
    rts

loc_04a7cf:
    lda #$0017
    sta $d986
    lda #$0017
    sta $d988
    lda #$003c
    sta $d98a
    sta $d98a
    inc $d97a
    rts

loc_04a7e8:
    lda #$0012
    sta $d982
    lda #$0013
    sta $d984
    lda #$0017
    sta $d986
    lda #$0013
    sta $d988
    lda $da5b
    sta $d98e
    lda $d9f1
    sta $d990
    stz $d97c
    inc $d97a
    rts

loc_04a813:
    lda #$0010
    sta $d982
    lda #$0015
    sta $d984
    lda #$0017
    sta $d986
    lda #$0015
    sta $d988
    lda $db49
    sta $d98e
    lda #$0064
    sta $d990
    stz $d97c
    inc $d97a
    rts

loc_04a83e:
    lda $d990
    cmp $d98e
    beq loc_04a852
    dec a
    dec a
    cmp $d98e
    bmi loc_04a852
    sta $d990
    bra loc_04a85b

loc_04a852:
    lda $d98e
    sta $d990
    inc $d97a

loc_04a85b:
    jsr sub_04a9d5
    jsr sub_04a915
    rts

loc_04a862:
    lda #$032b
    sta $d99e
    stz $d9a8
    stz $d9ba
    stz $d99a
    stz $d99c
    inc $d9bc
    inc $d9b8
    inc $d97a
    rts

loc_04a87e:
    lda $d99a
    clc
    adc $d99e
    sta $d99a
    lda $d99c
    adc #$0000
    sta $d99c
    lda $d99c
    cmp $1baf
    bcc loc_04a8bb
    bne loc_04a8a3
    lda $d99a
    cmp $1bad
    bcc loc_04a8bb

loc_04a8a3:
    lda $1bad
    sta $d99a
    lda $1baf
    sta $d99c
    lda #$003c
    sta $1bf0
    inc $d9bc
    inc $d97a

loc_04a8bb:
    jsr sub_04a981
    jsr sub_04aa0e
    jsr sub_04aa8e
    lda $d9aa
    inc a
    cmp $d9a8
    bne loc_04a8da
    lda $d9a8
    sta $d9aa
    lda #$0068
    jsl QueueSound

loc_04a8da:
    lda $1bad
    sec
    sbc $d99a
    sta $02
    lda $1baf
    sbc $d99c
    sta $08
    bne loc_04a914
    lda $02
    cmp #$afc8
    bcs loc_04a914
    cmp #$88b8
    bcs loc_04a90e
    cmp #$2710
    bcs loc_04a906
    lda #$006f
    sta $d99e
    bra loc_04a914

loc_04a906:
    lda #$00d3
    sta $d99e
    bra loc_04a914

loc_04a90e:
    lda #$019b
    sta $d99e

loc_04a914:
    rts

sub_04a915:
    jsr sub_04aa2e
    jsr sub_04a9ee
    rts

loc_04a91c:
    jsr sub_04a915
    dec $d98a
    bne loc_04a927
    inc $d97a

loc_04a927:
    rts

loc_04a928:
    ldx $d82e
    lda $04a944,x
    and #$00ff
    jsl sub_7f6df8
    txa
    asl a
    tax
    lda $04a94a,x
    sta $1bf0
    inc $d97a
    rts
    .db $08,$07,$06,$05,$04,$03,$a4,$01,$c2,$01,$0e,$01,$96,$00,$86,$01
    .db $b4,$00

loc_04a956:
    inc $d9be
    inc $d97a
    rts
    .db $9c,$bc,$d9

loc_04a960:
    stz $d9b8
    stz $d9be
    ldx #$0000
    stx $d9c2
    ldx #$000c
    stx $d9c0
    inc $d97a
    rts
    .db $9c,$7a,$d9,$60

loc_04a97a:
    lda #$ffff
    sta $d97a
    rts

sub_04a981:
    php
    rep #$30
    lda $1bad
    ora $1baf
    bne loc_04a994
    stz $d9a8
    stz $d9ba
    bra loc_04a9d3

loc_04a994:
    lda $d99a
    sta $50
    lda $d99c
    sta $52
    ldy #$1388
    jsl sub_7f6ddd
    lda $50
    sta $d9a8
    cmp #$0032
    bcc loc_04a9b5
    lda #$0032
    sta $d9a8

loc_04a9b5:
    lda $d9a8
    sta $02
    lda #$000a
    sta $08
    jsl sub_7f6da0
    asl a
    sta $d9ba
    lda $d9a8
    inc a
    cmp #$0033
    bcs loc_04a9d3
    sta $d9a8

loc_04a9d3:
    plp
    rts

sub_04a9d5:
    lda $d982
    sta $02
    lda $d984
    sta $08
    lda #$0093
    sta $97
    lda $d990
    ldx #$0003
    jsr sub_04acb6
    rts

sub_04a9ee:
    lda $d986
    sta $02
    lda $d988
    sta $08
    lda $d9a0
    sta $50
    lda $d9a2
    sta $52
    lda #$0093
    sta $97
    ldx #$0006
    jsr sub_04acff
    rts

sub_04aa0e:
    lda #$0017
    sta $02
    lda #$0019
    sta $08
    lda #$00e0
    sta $97
    lda $d99a
    sta $50
    lda $d99c
    sta $52
    ldx #$0006
    jsr sub_04ad20
    rts

sub_04aa2e:
    lda $d97e
    beq loc_04aa39
    dec a
    sta $d97e
    bra loc_04aa51

loc_04aa39:
    lda #$0002
    sta $d97e
    lda $d980
    clc
    adc #$0004
    cmp #$0028
    bne loc_04aa4e
    lda #$0000

loc_04aa4e:
    sta $d980

loc_04aa51:
    ldx $d980
    lda $04aa66,x
    sta $d9a0
    lda $04aa68,x
    sta $d9a2
    jsr sub_04aa8e
    rts
    .db $a4,$09,$00,$00,$0b,$35,$00,$00,$68,$60,$00,$00,$cf,$8b,$00,$00
    .db $d2,$b6,$00,$00,$39,$e2,$00,$00,$b8,$09,$01,$00,$1f,$35,$01,$00
    .db $76,$39,$01,$00,$dd,$64,$01,$00

sub_04aa8e:
    lda $d97c
    beq loc_04aa99
    dec a
    sta $d97c
    bra loc_04aaa6

loc_04aa99:
    lda #$0002
    sta $d97c
    lda #$005c
    jsl QueueSound

loc_04aaa6:
    rts

sub_04aaa7:
.a8
    lda $1e58
    bit #$80
    beq loc_04aab2
    jml loc_04aafe

loc_04aab2:
    rep #$20
.a16
    lda $1b9c
    bit #$0200
    sep #$20
.a8
    beq loc_04aafe
    dec $f4e5
    bne loc_04aafe
    lda $f4e6
    sta $f4e5
    rep #$20
.a16
    lda $f4e7
    clc
    adc #$0020
    and #$00ff
    sta $f4e7
    tax
    sep #$20
.a8
    ldy #$0080
    phy
    phx
    pha
    rep #$30
.a16
    txa
    clc
    adc #$f1e5
    tax
    tya
    clc
    adc #$efe5
    tay
    lda #$001f
    phb
    mvn $7e,$7e
    plb
    sep #$20
.a8
    rep #$10
    pla
    plx
    ply

loc_04aafe:
    lda $1e58
    and #$7f
    sta $1e58
    rts

sub_04ab07:
    php
    rep #$20
.a16
    lda $1b84
    bit #$0040
    beq loc_04ab15
    brl loc_04abe1

loc_04ab15:
    lda $1b9c
    bit #$0200
    beq loc_04ab57
    sep #$20
.a8
    dec $f4e5
    bpl loc_04ab57
    lda $f4e6
    sta $f4e5
    rep #$20
.a16
    lda $f4e7
    clc
    adc #$0020
    and #$00ff
    sta $f4e7
    tax
    phy
    phx
    pha
    rep #$30
    txa
    clc
    adc #$f1e5
    tax
    ldy #$f025
    lda #$001f
    phb
    mvn $7e,$7e
    plb
    rep #$20
    rep #$10
    pla
    plx
    ply

loc_04ab57:
.a8
    rep #$20
.a16
    lda $1b9c
    bit #$0400
    beq loc_04abbe
    lda $1b88
    bit #$0100
    beq loc_04ab71
    lda #$0080
    sta $f4ee
    bra loc_04ab9e

loc_04ab71:
    lda $1b92
    bit #$1000
    bne loc_04ab81
    lda $db49
    cmp #$0032
    bmi loc_04abbe

loc_04ab81:
    sep #$20
.a8
    dec $f4ec
    bne loc_04abbe
    lda $f4ed
    sta $f4ec
    rep #$20
.a16
    lda $f4ee
    clc
    adc #$0020
    and #$00ff
    sta $f4ee
    tax

loc_04ab9e:
    ldx $f4ee
    phy
    phx
    pha
    rep #$30
    txa
    clc
    adc #$f2e5
    tax
    ldy #$f045
    lda #$001f
    phb
    mvn $7e,$7e
    plb
    rep #$20
    rep #$10
    pla
    plx
    ply

loc_04abbe:
.a8
    rep #$20
.a16
    jsr sub_04ac14
    lda $1b92
    bit #$2000
    beq loc_04abe1
    ldx #$0006
    lda $db49
    cmp #$0050
    bpl loc_04abde
    ldx #$0000
    cmp #$0032
    bmi loc_04abe1

loc_04abde:
    jsr sub_04abe3

loc_04abe1:
    plp
.a8
    rts

sub_04abe3:
    php
    sep #$20
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    ldy #$0080
    lda $04ac08,x
    sta $efe7,y
    lda $04ac0a,x
    sta $efe9,y
    lda $04ac0c,x
    sta $efeb,y
    plb
    plp
.a8
    rts
    .db $ff,$2e,$9f,$2f,$ff,$57,$f6,$1c,$ff,$1c,$5f,$4a

sub_04ac14:
.a16
    php
    rep #$20
    lda $1b9c
    bit #$0080
    beq loc_04ac59
    sep #$20
.a8
    dec $f4f3
    bne loc_04ac59
    lda $f4f4
    sta $f4f3
    rep #$20
.a16
    lda $f4f5
    sec
    sbc #$0020
    and #$00ff
    sta $f4f5
    tax
    phy
    phx
    pha
    rep #$30
    txa
    clc
    adc #$f3e5
    tax
    ldy #$f1c5
    lda #$001f
    phb
    mvn $7e,$7e
    plb
    rep #$20
    rep #$10
    pla
    plx
    ply

loc_04ac59:
.a8
    plp
.a16
    rts

sub_04ac5b:
    jsr sub_04ac5f
    rtl

sub_04ac5f:
    phb
    sep #$20
.a8
    lda #$7f
    pha
    plb
    rep #$20

loc_04ac68:
.a16
    lda $703b50,x
    sta $cc00,y
    inx
    inx
    iny
    iny
    dec $02
    bne loc_04ac68
    plb
    rts

sub_04ac79:
    php
    rep #$30
    jsr sub_04adfd
    lda $97
    ldy $5f
    beq loc_04ac8e

loc_04ac85:
    sta $7fcc00,x
    inx
    inx
    dey
    bne loc_04ac85

loc_04ac8e:
    plp
    rtl

sub_04ac90:
    php
    rep #$30
    jsr sub_04adfd
    lda $97
    ldy $5f
    beq loc_04aca6

loc_04ac9c:
    sta $7fcc00,x
    inc a
    inx
    inx
    dey
    bne loc_04ac9c

loc_04aca6:
    plp
    rtl

loc_04aca8:
    jsr sub_04adfd
    lda $97
    sta $7fcc00,x
    rts

sub_04acb2:
    jsr sub_04acb6
    rtl

sub_04acb6:
    stx $3a
    jsr sub_04ad84
    jsr sub_04adfd
    sep #$20
.a8
    ldy #$0000

loc_04acc3:
    lda $d9e8,y
    clc
    adc $97
    sta $7fcc00,x
    iny
    inx
    inx
    dec $3a
    bne loc_04acc3
    rep #$20
.a16
    rts

sub_04acd7:
    stx $3a
    jsr sub_04ad84
    jsr sub_04adfd
    sep #$20
.a8
    ldy #$0000

loc_04ace4:
    lda $d9e8,y
    clc
    adc $97
    sta $7fcc00,x
    clc
    adc #$10
    sta $7fcc40,x
    iny
    inx
    inx
    dec $3a
    bne loc_04ace4
    rep #$20
.a16
    rts

sub_04acff:
    stx $3a
    jsr sub_04ada4
    jsr sub_04adfd
    sep #$20
.a8
    ldy #$0000

loc_04ad0c:
    lda $d9e8,y
    clc
    adc $97
    sta $7fcc00,x
    iny
    inx
    inx
    dec $3a
    bne loc_04ad0c
    rep #$20
.a16
    rts

sub_04ad20:
    stx $3a
    jsr sub_04ada4
    jsr sub_04adfd
    sep #$20
.a8
    ldy #$0000

loc_04ad2d:
    lda $d9e8,y
    clc
    adc $97
    sta $7fcc00,x
    clc
    adc #$10
    sta $7fcc40,x
    iny
    inx
    inx
    dec $3a
    bne loc_04ad2d
    rep #$20
.a16
    rts

sub_04ad48:
    stx $3a
    jsr sub_04ad84
    jsr sub_04adfd
    sep #$20
.a8
    ldy #$0000

loc_04ad55:
    lda $d9e8,y
    cmp #$08
    bmi loc_04ad5f
    clc
    adc #$08

loc_04ad5f:
    asl a
    clc
    adc $97
    sta $7fcc00,x
    inc a
    sta $7fcc02,x
    clc
    adc #$0f
    sta $7fcc40,x
    inc a
    sta $7fcc42,x
    iny
    inx
    inx
    inx
    inx
    dec $3a
    bne loc_04ad55
    rep #$20
.a16
    rts

sub_04ad84:
    phy
    php
    rep #$30
    dex

loc_04ad89:
    phx
    ldx #$000a
    jsl sub_7f6dbd
    stx $50
    plx
    sep #$20
.a8
    tya
    sta $d9e8,x
    rep #$20
.a16
    lda $50
    dex
    bpl loc_04ad89
    plp
    ply
    rts

sub_04ada4:
    phy
    php
    rep #$30
    dex

loc_04ada9:
    ldy #$000a
    jsl sub_7f6ddd
    sep #$20
.a8
    sta $d9e8,x
    rep #$20
.a16
    dex
    bpl loc_04ada9
    plp
    ply
    rts

sub_04adbd:
.a8
    jsr sub_04adfd
    lda $97
    sta $7fcc00,x
    inc a
    sta $7fcc02,x
    clc
    adc #$0f
    sta $7fcc40,x
    inc a
    sta $7fcc42,x
    rts

loc_04add8:
    jsr sub_04adfd
    lda $97
    sta $7fcc00,x
    inc a
    sta $7fcc02,x
    inc a
    sta $7fcc04,x
    clc
    adc #$0e
    sta $7fcc40,x
    inc a
    sta $7fcc42,x
    inc a
    sta $7fcc44,x
    rts

sub_04adfd:
.a16
    php
    sep #$20
.a8
    lda $08
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
    clc
    adc $004216
    asl a
    tax
    plp
    rts

loc_04ae20:
    php
    jsr sub_04adfd
    rep #$20
    txa
    lsr a
    tax
    plp
    rts
    .db $60,$60,$60,$43,$00,$44,$00,$45,$00,$46,$00,$47,$00,$48,$00,$49
    .db $00,$4a,$00,$4b,$00,$4c,$00,$0d,$1e,$1d,$0f,$0e,$00,$01,$00,$01
    .db $00,$00,$01,$01

sub_04ae4f:
.a8
    php
    sep #$20
    rep #$10
    jsr sub_04dcbc
    lda #$30
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
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $1b74
    cmp #$0003
    sep #$20
.a8
    bne loc_04ae92
    brl loc_04af74

loc_04ae92:
    rep #$20
.a16
    lda #$0040
    tsb $1b92
    lda #$0004
    trb $1b92
    lda #$0020
    tsb $1b92
    sep #$20
.a8
    jsr sub_04b9a3
    jsr sub_04e969
    jsl sub_7f532a
    rep #$20
.a16
    lda $44
    cmp #$4000
    beq loc_04aec0
    lda #$4000
    bra loc_04aec3

loc_04aec0:
    lda #$a000

loc_04aec3:
    sta $44
    sep #$20
.a8
    rep #$20

loc_04aec9:
.a16
    lda $1b92
    bit #$0004
    beq loc_04aec9
    lda #$0040
    tsb $1b92
    lda $1b74
    and #$00ff
    asl a
    tax
    sep #$20
.a8
    jmp (tbl_04aee4,x)

tbl_04aee4:
    .db $92,$ae,$56,$af,$9a,$af,$74,$af,$1b,$af,$f0,$ae

loc_04aef0:
    lda #$04
    sta $1b6a
    lda #$28
    sta $1b76
    lda #$04
    sta $1b6a
    rep #$20
.a16
    lda #$0010
    tsb $1b88
    sep #$20
.a8
    ldy $da6b
    lda $002a,y
    sta $da95
    lda $002c,y
    sta $da96
    brl loc_04b121

loc_04af1b:
    lda #$04
    sta $1b6a
    lda #$20
    sta $1b76
    lda #$04
    sta $1b6a
    rep #$20
.a16
    lda #$0010
    tsb $1b88
    sep #$20
.a8
    rep #$20
.a16
    lda #$0800
    tsb $1b88
    sep #$20
.a8
    lda #$e8
    sta $da95
    lda #$20
    sta $da96
    rep #$20
.a16
    lda #$0060
    jsl QueueSound
    sep #$20
.a8
    brl loc_04b121

loc_04af56:
    lda #$06
    sta $1b6a
    rep #$20
.a16
    lda #$0040
    trb $1b86
    lda #$0080
    trb $1b86
    lda #$003f
    trb $1b8c
    sep #$20
.a8
    brl loc_04b14d

loc_04af74:
    rep #$20
.a16
    lda #$0008
    tsb $1b86
    sep #$20
.a8
    lda #$04
    sta $1b6a
    lda #$14
    sta $1b76
    lda #$04
    sta $1b6a
    lda #$20
    sta $da95
    lda #$c0
    sta $da96
    brl loc_04b121

loc_04af9a:
    rep #$20
.a16
    lda #$0010
    tsb $1b88
    jsl sub_04b1c0
    lda $1b86
    bit #$0020
    bne loc_04b026
    lda $1b88
    bit #$0004
    bne loc_04afb9
    brl loc_04b042

loc_04afb9:
    ldy $e097
    lda #$2000
    trb $1b88
    lda $0030,y
    bit #$0002
    beq loc_04afd0
    lda #$2000
    tsb $1b88

loc_04afd0:
    sep #$20
.a8
    lda $daf3
    sta $da95
    lda $daf6
    sta $da96
    rep #$20
.a16
    lda $002e,y
    bit #$8000
    bne loc_04affe
    lda $002e,y
    bit #$0040
    bne loc_04b05a
    lda $002e,y
    bit #$0080
    beq loc_04affb
    brl loc_04b090

loc_04affb:
    brl loc_04b098

loc_04affe:
    lda #$0006
    sta $1ba5
    lda #$0000
    sta $1bb5
    lda #$0001
    sta $d7f4
    lda #$000a
    sta $da7d
    lda #$0001
    sta $1b6a
    lda #$0060
    jsl QueueSound
    brl loc_04b121

loc_04b026:
    lda #$0001
    sta $1b6a
    lda #$0080
    tsb $1b96
    sep #$20
.a8
    rep #$20
.a16
    lda #$0060
    jsl QueueSound
    sep #$20
.a8
    brl loc_04b121

loc_04b042:
.a16
    sep #$20
.a8
    rep #$20
.a16
    lda #$0060
    jsl QueueSound
    sep #$20
.a8
    lda #$02
    sta $1b6a
    jsr sub_04b1fc
    brl loc_04b121

loc_04b05a:
.a16
    lda #$0002
    sta $da7d
    lda $0012,y
    tax
    lda $001c,x
    ora #$0080
    sta $001c,x
    lda $001e,x
    bit #$0002
    beq loc_04b07c
    sep #$20
.a8
    lda #$01
    sta $d79b

loc_04b07c:
.a16
    sep #$20
.a8
    lda #$02
    sta $1b6a
    rep #$20
.a16
    lda #$0060
    jsl QueueSound
    sep #$20
.a8
    bra loc_04b0d3

loc_04b090:
.a16
    lda #$0006
    sta $da7d
    bra loc_04b0c1

loc_04b098:
    lda #$0004
    sta $da7d
    lda $002e,y
    bit #$0800
    bne loc_04b0b3
    bit #$0008
    bne loc_04b0c1
    lda #$0010
    tsb $1b8a
    bra loc_04b0c1

loc_04b0b3:
    lda $e087
    bit #$0400
    beq loc_04b0c1
    lda #$1000
    tsb $e087

loc_04b0c1:
    sep #$20
.a8
    lda #$01
    sta $1b6a
    rep #$20
.a16
    lda #$006e
    jsl QueueSound
    sep #$20

loc_04b0d3:
.a8
    jsr InitBattleTargets
    rep #$20
.a16
    lda $daf3
    and #$00ff
    sta $1de4
    lda $daf6
    and #$00ff
    eor #$ffff
    inc a
    and #$00ff
    sta $1de8
    sep #$20
.a8
    lda $daf8
    sta $1dea
    rep #$20
.a16
    ldy $e097
    lda $001b,y
    and #$ff00
    xba
    sta $1df3
    lda $001e,y
    and #$ff00
    xba
    eor #$ffff
    inc a
    and #$00ff
    sta $1df5
    sep #$20
.a8
    lda $0025,y
    sta $1ba9

loc_04b121:
    sep #$20
    lda #$0a
    jsl sub_7f6df8
    lda #$01
    tsb $1cd3
    jsl sub_0b8c17
    jsl sub_0b8c57
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
    jsl sub_03dfa0
    bra MapExit

loc_04b14d:
    ldx #$003c
    jsl sub_03e017

MapExit:    ; common exit of the map: the next mode $1b6a becomes $1b68 and the map's flags are cleared (watch: $1b68 = 1 written at 04:B15D on the launch to the first battle)
    jsl sub_7f1737
    rep #$20
.a16
    lda $1b6a
    sta $1b68
    lda #$0000
    sta $1b74
    stz $db29
    lda #$0030
    trb $1b84
    lda #$003f
    trb $1b8c
    lda #$ffff
    trb $1b92
    lda #$0555
    trb $d7fa
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
    sep #$20
.a8
    lda #$01
    trb $1cd3
    rep #$20
.a16
    lda #$ffff
    trb $db01
    lda #$ffff
    trb $db23
    lda #$ffff
    trb $da8b
    lda #$ffff
    trb $da8d
    lda #$0001
    trb $db2d
    plb
    plp
.a8
    rtl

sub_04b1c0:
.a16
    phb
    php
    sep #$20
.a8
    lda #$7e
    pha
    plb
    rep #$30
.a16
    stz $d786
    stz $d788
    stz $d78a
    stz $d78c
    stz $d78e
    stz $d790
    stz $cf33
    stz $d79d
    jsl sub_7f058c
    and #$000e
    tax
    lda $06fcf1,x
    sta $d7d3
    sep #$20
.a8
    stz $d79a
    stz $d7d5
    plp
.a16
    plb
    rtl

sub_04b1fc:
.a8
    ldx $db07
    lda $0004,x
    rep #$20
.a16
    and #$00ff
    sep #$20
.a8
    sta $1bb5
    lda $0008,x
    sta $1ba5
    lda $000a,x
    sta $d7f6
    lda #$00
    xba
    ldx $1bb5
    lda $d794,x
    bne loc_04b234
    lda $1bb5
    asl a
    clc
    adc $1bb5
    clc
    adc $d7f2
    tax
    lda $00b0e6,x

loc_04b234:
    sta $d7f4
    sta $d7a1
    rts

sub_04b23b:
.a16
    phx
    php
    rep #$20
    lda $1ba5
    sta $0008,x
    lda $d7f6
    sta $000a,x
    sep #$20
.a8
    ldx $1bb5
    lda $d7a1
    sta $d794,x
    plp
    plx
    rts

InitBattleTargets:    ; start of a battle: stage numbers of the selected map unit to $1bb5/$1ba5/$1ba7, targets left $d7f4 from $d7c2 (watch: $d7f4 = 5 written at 04:B2A1 on the launch to the first battle)
    ldy $e097
    lda $0032,y
    sta $1bb5
    lda $0034,y
    sta $1ba5
    lda $003a,y
    sta $1ba7
    lda $003e,y
    sta $1e09
    lda $da7d
    cmp #$02
    bne loc_04b283
    lda #$01
    sta $d7f4
    brl loc_04b2b0

loc_04b283:
    rep #$20
.a16
    ldx $1ba7
    txa
    asl a
    sta $3a
    sep #$20
.a8
    lda $d7c2,x
    sta $d7a1
    pha
    and #$0f
    sta $02
    pla
    lsr a
    lsr a
    lsr a
    lsr a
    clc
    adc $02
    sta $d7f4
    rep #$20
.a16
    ldx $3a
    lda $d7a2,x
    sta $d79f
    sep #$20

loc_04b2b0:
.a8
    rts

sub_04b2b1:
.a16
    phx
    php
    sep #$20
.a8
    ldx $1ba7
    lda $d7a1
    sta $d7c2,x
    rep #$20
.a16
    lda $1b8a
    bit #$0020
    beq loc_04b2e0
    lda $d79d
    beq loc_04b2d7
    cmp #$0001
    beq loc_04b2e0
    cmp #$fffe
    beq loc_04b2e0

loc_04b2d7:
    lda $d7f4
    dec a
    sta $0038,y
    bra loc_04b2e6

loc_04b2e0:
    lda $d7f4
    sta $0038,y

loc_04b2e6:
    txa
    asl a
    tax
    lda $d79f
    sta $d7a2,x
    plp
    plx
    rts

sub_04b2f2:
.a8
    sep #$20
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $1b88
    bit #$0010
    bne loc_04b306
    brl loc_04b3ed

loc_04b306:
    lda #$0024
    trb $da8b
    lda #$0019
    trb $da8d
    lda #$0020
    trb $1b88
    lda #$0010
    trb $1b8a
    ldx #$0068
    stx $da0d
    lda #$0001
    sta $da1d
    lda #$0200
    tsb $1b8a
    lda #$006f
    jsl QueueSound
    lda $1b8a
    bit #$0002
    bne loc_04b35e
    lda $1b88
    bit #$0800
    bne loc_04b35e
    lda $1b88
    bit #$0004
    beq loc_04b35e
    ldy $e097
    lda $0006,y
    sta $0004,y
    lda $0010,y
    sta $000e,y

loc_04b35e:
    lda #$0004
    trb $1b88
    lda $e087
    bit #$0008
    beq loc_04b38d
    lda $e093
    beq loc_04b38d
    lda $e087
    bit #$1000
    beq loc_04b38d
    lda #$1000
    trb $e087
    lda $1b88
    bit #$0002
    beq loc_04b38d
    lda #$0008
    trb $e087

loc_04b38d:
    lda $1b8a
    bit #$0002
    bne loc_04b3df
    lda $1b88
    bit #$0800
    bne loc_04b3c5
    lda $1b88
    bit #$0002
    beq loc_04b3b1
    lda #$0001
    trb $d7f8
    lda #$0002
    trb $d7f8

loc_04b3b1:
    ldx $da7d
    jsr (tbl_04b3f1,x)
    lda $daf3
    sta $da95
    lda $daf6
    sta $da96
    bra loc_04b3ed

loc_04b3c5:
    lda #$0800
    trb $1b88
    lda #$0080
    sta $da95
    lda #$0060
    sta $da96
    lda #$0042
    sta $da0f
    bra loc_04b3ed

loc_04b3df:
    lda #$0002
    trb $1b8a
    lda #$0042
    sta $da0f
    bra loc_04b3ed

loc_04b3ed:
    sep #$20
.a8
    plb
    rts

tbl_04b3f1:
    .db $fd,$b3,$74,$b4,$03,$b5,$f7,$b4,$03,$b5,$d7,$b4

loc_04b3fd:
.a16
    ldx $db07
    lda $001c,x
    bit #$0004
    bne loc_04b474
    lda $001c,x
    and #$ff7f
    sta $001c,x
    jsr sub_04b23b
    lda #$0018
    sta $da0f
    lda $1b88
    bit #$0002
    beq loc_04b42b
    jsr sub_04b42c
    lda #$0014
    sta $da0f

loc_04b42b:
    rts

sub_04b42c:
    lda $001c,x
    ora #$1000
    sta $001c,x
    lda #$0000
    sta $0020,x
    lda $0036,x
    beq loc_04b44f
    lda $001c,x
    and #$f7ff
    sta $001c,x
    lda #$0001
    sta $0036,x

loc_04b44f:
    lda #$000f
    sta $0008,x
    dec $da2f
    dec $da2d
    dec $da29
    inc $da33
    jsr sub_04b465
    rts

sub_04b465:
    lda $da29
    cmp #$0001
    bne loc_04b473
    lda #$4000
    tsb $1b92

loc_04b473:
    rts

loc_04b474:
    sep #$20
.a8
    stz $d79b
    rep #$20
.a16
    lda #$0004
    trb $1b88
    lda $1b88
    bit #$0002
    beq loc_04b490
    lda #$001c
    sta $da0f
    rts

loc_04b490:
    ldy $e097
    lda $0012,y
    tax
    lda $001c,x
    and #$ff7f
    sta $001c,x
    lda $002e,y
    and #$dfff
    sta $002e,y
    lda #$0020
    sta $da0f
    rts

sub_04b4b0:
    cpx $da6b
    bne loc_04b4c1
    stz $da69
    stz $da6b
    lda #$0080
    trb $1b88

loc_04b4c1:
    jsr sub_04e093
    jsr sub_04e082
    dec $da3b
    dec $da37
    dec $da29
    inc $da3d
    jsr sub_04b465
    rts

loc_04b4d7:
    ldy $e097
    lda $0012,y
    tax
    lda $001c,x
    and #$ff7f
    sta $001c,x
    lda $002e,y
    and #$dfff
    sta $002e,y
    lda #$0018
    sta $da0f
    rts

loc_04b4f7:
    ldy $e097
    lda $002e,y
    and #$fffd
    sta $002e,y

loc_04b503:
    ldy $e097
    lda $002e,y
    and #$dfff
    sta $002e,y
    jsr sub_04b2b1
    lda $1b88
    bit #$0002
    bne loc_04b51d
    brl loc_04b588

loc_04b51d:
    lda $002e,y
    bit #$0800
    bne loc_04b54a
    bit #$0020
    bne loc_04b53c
    bit #$0080
    bne loc_04b55d
    bit #$0008
    bne loc_04b55f
    inc $da4f
    inc $da51
    bra loc_04b57b

loc_04b53c:
    lda #$0200
    trb $1b88
    inc $da49
    inc $da4b
    bra loc_04b57b

loc_04b54a:
    ldx $db61
    stz $0036,x
    lda $e093
    beq loc_04b57b
    lda #$0800
    tsb $e087
    bra loc_04b57b

loc_04b55d:
    bra loc_04b57b

loc_04b55f:
    lda $1b8a
    bit #$0080
    beq loc_04b56f
    lda #$8000
    tsb $1b92
    bra loc_04b57b

loc_04b56f:
    ldx $0012,y
    lda $001c,x
    and #$7fff
    sta $001c,x

loc_04b57b:
    lda #$0004
    trb $1b88
    lda #$0024
    sta $da0f
    rts

loc_04b588:
    lda $1b88
    bit #$0200
    bne loc_04b5b7
    lda $1b88
    bit #$4000
    beq loc_04b5c4
    lda #$4000
    trb $1b88
    lda #$0001
    sta $1bf2
    lda #$0028
    sta $da0f
    lda $001b,y
    sta $daf2
    lda $001e,y
    sta $daf5
    rts

loc_04b5b7:
    lda #$4200
    trb $1b88
    lda #$0032
    sta $da0f
    rts

loc_04b5c4:
    lda $1b8a
    bit #$0080
    bne loc_04b5d3
    lda #$002c
    sta $da0f
    rts

loc_04b5d3:
    lda #$003a
    sta $da0f
    rts

sub_04b5da:
.a8
    php
    sep #$20
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $1c08
    inc a
    inc a
    and #$000f
    sta $1c08
    jsr sub_04b5fb
    ldx $1c08
    jsr (tbl_04b618,x)
    plb
    plp
.a8
    rtl

sub_04b5fb:
.a16
    lda $1b88
    bit #$0120
    bne loc_04b617
    jsr MapTick
    lda $1b94
    bit #$ffff
    beq loc_04b611
    jsr sub_04d377

loc_04b611:
    jsr sub_04cd47
    jsr sub_04cc7e

loc_04b617:
    rts

tbl_04b618:
    .db $28,$b6,$28,$b6,$28,$b6,$28,$b6,$28,$b6,$28,$b6,$28,$b6,$28,$b6

loc_04b628:
    rts

MapTick:    ; one frame of the map: cursor, unit selection, launch, clock and enemy units (code; coverage: every frame of the map legs, never in a battle)
    jsr sub_04b961
    jsr sub_04b8a0
    lda #$0001
    trb $db2d
    lda $da8b
    bit #$0100
    bne loc_04b65e
    bit #$0400
    bne loc_04b661
    lda $1b8c
    bit #$0008
    bne loc_04b661
    lda #$0088
    trb $da8b
    lda #$0001
    trb $da8d
    jsr UpdateMapCursor
    jsr SelectMapUnit
    bra loc_04b661

loc_04b65e:
    jsr sub_04f013

loc_04b661:
    jsr sub_04b7a1
    jsr AdvanceMapClock
    lda $1b8c
    bit #$0004
    bne loc_04b683
    lda $db01
    bit #$0400
    bne loc_04b683
    jsr sub_04d56b
    jsr sub_04d5f1
    jsr sub_04d68b
    jsr sub_04d6f1

loc_04b683:
    lda $1b86
    bit #$0002
    bne loc_04b699
    lda $db23
    bit #$0400
    bne loc_04b699
    jsr sub_04d6a6
    jsr sub_04d8a5

loc_04b699:
    sep #$20
.a8
    jsr sub_04b6bb
    rep #$20
.a16
    lda $1b92
    bit #$0020
    beq loc_04b6ba
    stz $1c21
    stz $1c1f
    lda #$0020
    trb $1b92
    lda #$0040
    trb $da8b

loc_04b6ba:
    rts

sub_04b6bb:
.a8
    php
    rep #$20
.a16
    ldx $db47
    lda $1c12
    beq loc_04b6cb
    dec a
    beq loc_04b6d8
    bra loc_04b6fa

loc_04b6cb:
    cpx #$0033
    bcs loc_04b6fa
    inc $1c12
    lda #$0002
    bra loc_04b6ef

loc_04b6d8:
    cpx #$0015
    bcs loc_04b6fa
    lda #$0004
    sta $f4ec
    lda #$0004
    sta $f4ed
    inc $1c12
    lda #$0003

loc_04b6ef:
    sep #$20
.a8
    sta $1c10
    jsl sub_7f6df8
    rep #$20

loc_04b6fa:
.a16
    lda $db01
    bit #$0002
    beq loc_04b714
    lda $da8b
    bit #$0040
    bne loc_04b70f
    lda #$0004
    bra loc_04b717

loc_04b70f:
    lda #$0008
    bra loc_04b717

loc_04b714:
    lda #$0000

loc_04b717:
    sep #$20
.a8
    sta $1ce5
    rep #$20
.a16
    ldx #$0000
    lda $1c0e
    bit #$ffff
    beq loc_04b73c

loc_04b729:
    lsr a
    bcs loc_04b731
    beq loc_04b73c
    inx
    bra loc_04b729

loc_04b731:
    lda $7f6d30,x
    and #$00ff
    jsl QueueSound

loc_04b73c:
    lda #$ffff
    trb $1c0e
    sep #$20
.a8
    lda $1cd3
    bit #$10
    rep #$20
.a16
    beq loc_04b787
    lda $da75
    beq loc_04b758
    dec a
    sta $da75
    bne loc_04b787

loc_04b758:
    ldx #$0000

loc_04b75b:
    lda $da71
    bmi loc_04b76c
    cmp $04b789,x
    bcs loc_04b76f
    inx
    inx
    inx
    inx
    bra loc_04b75b

loc_04b76c:
    ldx #$0014

loc_04b76f:
    lda $04b78b,x
    and #$00ff
    sta $da75
    lda $04b78c,x
    and #$00ff
    and #$00ff
    jsl QueueSound

loc_04b787:
    plp
.a8
    rts
    .db $1c,$02,$14,$c5,$a4,$01,$10,$c5,$f0,$00,$0d,$c5,$78,$00,$0a,$c6
    .db $3c,$00,$08,$c6,$00,$00,$06,$c7

sub_04b7a1:
.a16
    php
    rep #$20
    lda $1b84
    bit #$0010
    beq loc_04b7af
    brl loc_04b885

loc_04b7af:
    lda $1292
    bit #$0f00
    beq loc_04b7bd
    lda #$0020
    trb $da8b

loc_04b7bd:
    sep #$20
.a8
    lda $da91
    cmp $daf3
    bne loc_04b7d7
    lda $da92
    cmp $daf6
    bne loc_04b7d7
    rep #$20
.a16
    lda #$0080
    tsb $da8b

loc_04b7d7:
.a8
    rep #$20
.a16
    lda $1b8c
    bit #$0010
    beq loc_04b7e4
    brl loc_04b885

loc_04b7e4:
    lda $1296
    bit #$8000
    beq loc_04b845
    lda $da8d
    bit #$0041
    bne loc_04b7fc
    lda $da8b
    bit #$0080
    bne loc_04b845

loc_04b7fc:
    lda #$0023
    trb $1b8c
    lda $da8b
    bit #$0020
    bne loc_04b842
    lda #$004c
    trb $db01
    lda #$0003
    tsb $db01
    lda #$002c
    tsb $da8b
    lda #$000f
    sta $da8f
    lda $db55
    sta $db53
    lda #$000c
    jsl QueueSound
    lda $da8b
    bit #$0200
    beq loc_04b840
    lda #$0200
    trb $da8b
    stz $da11

loc_04b840:
    bra loc_04b845

loc_04b842:
    stz $da8f

loc_04b845:
    lda $1296
    bit #$4040
    beq loc_04b85f
    lda $1b8c
    bit #$0001
    bne loc_04b85f
    jsr sub_04b887
    lda #$0008
    jsl QueueSound

loc_04b85f:
    lda $1296
    bit #$0020
    beq loc_04b867

loc_04b867:
    lda $1b92
    bit #$0020
    beq loc_04b885
    lda $da8b
    bit #$0040
    beq loc_04b87f
    lda #$0400
    tsb $1b92
    bra loc_04b885

loc_04b87f:
    lda #$0400
    trb $1b92

loc_04b885:
    plp
    rts

sub_04b887:
    lda #$0023
    tsb $1b8c

sub_04b88d:
    lda #$0003
    trb $db01
    lda #$0024
    trb $da8b
    lda #$0030
    trb $da8d
    rts

sub_04b8a0:
    lda $1b86
    bit #$0080
    beq loc_04b8ce
    lda $1b8c
    bit #$0020
    bne loc_04b8cd
    lda $1b8c
    bit #$0040
    bne loc_04b8cd
    lda $1296
    bit #$1000
    beq loc_04b8cd
    lda #$000e
    jsl QueueSound
    lda #$0016
    sta $d9fd

loc_04b8cd:
    rts

loc_04b8ce:
    ldx $da1b
    jmp (tbl_04b8d4,x)

tbl_04b8d4:
    .db $e1,$b8,$12,$b9,$18,$b9

loc_04b8da:
    inc $da1b
    inc $da1b
    rts

loc_04b8e1:
    lda $1b8c
    bit #$0010
    bne loc_04b911
    lda $1296
    bit #$2000
    beq loc_04b911
    lda $1b86
    bit #$0002
    bne loc_04b911
    jsr sub_04b887
    lda #$0010
    tsb $1b84
    lda #$0026
    sta $da7f
    lda #$002f
    jsl QueueSound
    bra loc_04b8da

loc_04b911:
    rts

loc_04b912:
    lda $da7f
    beq loc_04b918
    rts

loc_04b918:
    stz $da1b
    jsl sub_04b92a
    jsl sub_06a325
    lda #$0010
    trb $1b84
    rts

sub_04b92a:
.a8
    php
    sep #$30
.i8
    ldx $d810
    lda $d811
    stx $d811
    sta $d810
    rep #$30
.a16
.i16
    ldx $d812
    lda $d814
    sta $d812
    stx $d814
    ldx $1c17
    ldy $1c19
    lda $1c1b
    sta $1c17
    lda $1c1d
    sta $1c19
    stx $1c1b
    stx $1c1d
    plp
.a8
    rtl

sub_04b961:
.a16
    rts

AdvanceMapClock:    ; adds the frame time to $da5f and every 60 counts increments the map TIME $da5b, capped at 999 (watch: $da5b 6 to 11 written at 04:B99F, one per 60 frames of a flight)
    lda #$0002
    trb $1b92
    lda $1b8c
    bit #$0001
    bne loc_04b9a2
    lda #$0001
    jsl sub_7f6908
    clc
    adc $da5f
    sta $da5f
    lda $da5f
    cmp #$003c
    bmi loc_04b9a2
    sec
    sbc #$003c
    sta $da5f
    lda #$0002
    tsb $1b92
    lda $da5b
    cmp #$03e7
    bcc loc_04b99e
    lda #$03e6

loc_04b99e:
    inc a
    sta $da5b

loc_04b9a2:
    rts

sub_04b9a3:
.a8
    ldx $1c6e
    beq loc_04b9b8
    dex
    stx $1c6e
    bne loc_04b9eb
    rep #$20
.a16
    lda #$0002
    trb $1c67
    sep #$20

loc_04b9b8:
.a8
    rep #$30
.a16
    jsr sub_04dc80
    lda $1b88
    bit #$0120
    bne loc_04b9e5
    jsr sub_04bb58
    lda $1b8a
    bit #$0008
    bne loc_04b9e2
    jsr sub_04c9a8
    jsr sub_04cb22
    jsr sub_04dac2
    jsr sub_04c0e7
    jsr sub_04c702
    jsr sub_04c8b9

loc_04b9e2:
    jsr sub_04b9ee

loc_04b9e5:
    lda #$0100
    trb $db01

loc_04b9eb:
.a8
    sep #$20
    rts

sub_04b9ee:
.a16
    ldx $db29
    jsr (tbl_04b9f5,x)
    rts

tbl_04b9f5:
    .db $09,$ba,$0a,$ba,$0a,$ba,$44,$ba,$56,$ba,$bc,$ba,$d7,$ba,$ee,$ba
    .db $f7,$ba,$1b,$bb

loc_04ba09:
    rts

loc_04ba0a:
    lda $db23
    bit #$0002
    beq loc_04ba13
    rts

loc_04ba13:
    lda #$003f
    tsb $1b8c
    lda #$0200
    tsb $db01
    lda #$0069
    sta $7ef578
    lda #$a712
    sta $7ef582
    lda #$0000
    sta $7ef576
    lda #$0004
    sta $db27
    lda #$0004
    jsl QueueSound
    brl loc_04bb51

loc_04ba44:
    dec $db27
    beq loc_04ba4a
    rts

loc_04ba4a:
    stz $d9c2
    lda #$0001
    sta $d9c4
    brl loc_04bb51

loc_04ba56:
    lda $1c21
    bit #$8000
    bne loc_04ba8f
    lda $1c21
    bit #$0040
    bne loc_04bab6
    lda $1c21
    bit #$0800
    bne loc_04ba77
    lda $1c21
    bit #$0400
    bne loc_04ba7d
    rts

loc_04ba77:
    lda $d9c2
    dec a
    bra loc_04ba81

loc_04ba7d:
    lda $d9c2
    inc a

loc_04ba81:
    and #$0001
    sta $d9c2
    lda #$0003
    jsl QueueSound
    rts

loc_04ba8f:
    lda $d9c2
    bne loc_04bab6
    lda #$006a
    sta $7ef578
    lda #$a712
    sta $7ef582
    lda #$0000
    sta $7ef576
    lda #$0004
    jsl QueueSound
    stz $d9c4
    brl loc_04bb51

loc_04bab6:
    stz $d9c4
    brl loc_04bb08

loc_04babc:
    lda #$0400
    tsb $da8b
    jsr sub_04cd09
    jsr sub_04cd31
    lda $db2f
    sta $daef
    lda $dae7
    sta $dae9
    brl loc_04bb51

loc_04bad7:
    lda $da8b
    bit #$0400
    beq loc_04bae0
    rts

loc_04bae0:
    bit #$0800
    bne loc_04bb08
    lda $db2f
    sta $daef
    brl loc_04bb51

loc_04baee:
    lda #$0006
    sta $da7f
    brl loc_04bb51

loc_04baf7:
    lda $da7f
    beq loc_04bafd
    rts

loc_04bafd:
    lda $002e,y
    and #$bfff
    sta $002e,y
    bra loc_04bb21

loc_04bb08:
    lda #$0008
    jsl QueueSound
    lda #$0022
    sta $da7f
    lda #$0012
    sta $db29

loc_04bb1b:
    lda $da7f
    beq loc_04bb21
    rts

loc_04bb21:
    sep #$20
.a8
    lda $1dd5
    sta $1dd1
    lda $1ddb
    sta $1dd7
    rep #$20
.a16
    lda #$0001
    trb $da8d
    ldx #$005c
    stx $da0d
    lda #$0800
    trb $da8b
    lda #$0000
    sta $db29
    lda #$0001
    sta $7ef576
    rts

loc_04bb51:
    inc $db29
    inc $db29
    rts

sub_04bb58:
    ldx $da0d
    jsr (tbl_04bb5f,x)
    rts

tbl_04bb5f:
    .db $c9,$bb,$c9,$bb,$c9,$bb,$c9,$bb,$c9,$bb,$ca,$bb,$dd,$bb,$ed,$bb
    .db $38,$bc,$47,$bc,$77,$bc,$90,$bc,$96,$bc,$a3,$bc,$ee,$bc,$07,$bd
    .db $1f,$bd,$2c,$bd,$41,$bd,$63,$bd,$8c,$bd,$c7,$bd,$d0,$bd,$dd,$bd
    .db $15,$be,$1e,$be,$37,$be,$46,$be,$98,$be,$a9,$bc,$bc,$bc,$a1,$be
    .db $cb,$be,$d1,$be,$e4,$be,$a1,$bf,$41,$bf,$61,$bf,$25,$bf,$38,$bf
    .db $ed,$be,$00,$bf,$6a,$bf,$7d,$bf,$09,$bf,$1c,$bf,$b1,$bf,$df,$bf
    .db $4f,$c0,$65,$c0,$90,$c0,$b4,$c0,$d2,$c0

loc_04bbc9:
    rts

loc_04bbca:
    ldx #$0800
    stx $dafb
    ldx #$0003
    stx $da11
    ldx #$000c
    stx $da0d
    rts

loc_04bbdd:
    lda $da11
    dec a
    sta $da11
    bne loc_04bbec
    ldx #$000e
    stx $da0d

loc_04bbec:
    rts

loc_04bbed:
    lda #$0004
    trb $1b8c
    lda #$0200
    trb $db01
    lda #$0003
    tsb $db01
    ldx #$0010
    stx $da0d
    sep #$20
.a8
    lda $db25
    sta $daf3
    sta $db15
    lda $db26
    sta $daf6
    sta $db18
    lda #$28
    sta $da91
    lda #$90
    sta $da92
    rep #$20
.a16
    lda #$d800
    sta $daf7
    sta $db19
    lda #$000d
    sta $db09
    sta $db21
    rts

loc_04bc38:
    lda $db01
    bit #$0100
    bne loc_04bc41
    rts

loc_04bc41:
    ldx #$0012
    stx $da0d

loc_04bc47:
    lda $db23
    bit #$0002
    beq loc_04bc50
    rts

loc_04bc50:
    jsr sub_04bc5c
    ldx #$0258
    stx $dafb
    brl loc_04c034

sub_04bc5c:
    ldx $db67

loc_04bc5f:
    lda $001c,x
    bit #$0001
    beq loc_04bc70
    lda $001c,x
    and #$fdff
    sta $001c,x

loc_04bc70:
    lda $0000,x
    tax
    bne loc_04bc5f
    rts

loc_04bc77:
    lda #$0004
    trb $1b8c
    lda #$0400
    tsb $db01
    lda #$0016
    sta $da0d
    lda #$0012
    sta $da7f
    rts

loc_04bc90:
    lda $da7f
    beq loc_04bccf
    rts

loc_04bc96:
    lda #$001a
    sta $da0d
    lda #$0004
    sta $da7f
    rts

loc_04bca3:
    lda $da7f
    beq loc_04bccf
    rts

loc_04bca9:
    ldx #$0068
    stx $da0d
    ldx #$003c
    stx $da0f
    lda #$0001
    sta $da1d
    rts

loc_04bcbc:
    lda #$0003
    trb $1b8c
    lda #$0040
    trb $1b88
    ldx #$0000
    stx $da0d
    rts

loc_04bccf:
    lda #$0400
    trb $db01
    lda #$0004
    tsb $1b8c
    ldx #$0068
    stx $da0d
    ldx #$003e
    stx $da0f
    lda #$0001
    sta $da1d
    rts

loc_04bcee:
    lda #$0004
    trb $1b8c
    lda #$0400
    tsb $db01
    lda #$0010
    sta $da7f
    lda #$001e
    sta $da0d
    rts

loc_04bd07:
    lda $da7f
    beq loc_04bd0d
    rts

loc_04bd0d:
    ldy $e097
    lda $0012,y
    tax
    jsr sub_04b4b0
    lda #$0020
    trb $1b88
    bra loc_04bccf

loc_04bd1f:
    lda #$0022
    sta $da0d
    lda #$0004
    sta $da7f
    rts

loc_04bd2c:
    lda $da7f
    beq loc_04bd32
    rts

loc_04bd32:
    ldy $e097
    lda $002e,y
    and #$fffe
    sta $002e,y
    brl loc_04bccf

loc_04bd41:
    lda #$0026
    sta $da0d
    ldy $e097
    lda $002e,y
    bit #$0008
    bne loc_04bd59
    lda #$000a
    sta $da7f
    rts

loc_04bd59:
    sty $e099
    lda #$0014
    sta $da7f
    rts

loc_04bd63:
    lda $da7f
    beq loc_04bd69
    rts

loc_04bd69:
    lda $e087
    bit #$0800
    bne loc_04bd74
    brl loc_04be46

loc_04bd74:
    stz $e093
    lda #$0c00
    trb $e087
    ldy $e079
    lda $0030,y
    and #$dfff
    sta $0030,y
    brl loc_04bccf

loc_04bd8c:
    lda $1b8a
    bit #$0020
    beq loc_04bdae
    lda $d79d
    bmi loc_04bdae
    cmp #$0001
    beq loc_04bdae
    lda $d7f4
    cmp #$0002
    bcs loc_04bdae
    lda #$000a
    sta $da7f
    bra loc_04bdc0

loc_04bdae:
    ldy $e097
    lda $002e,y
    and #$fffe
    sta $002e,y
    lda #$000c
    sta $da7f

loc_04bdc0:
    lda #$002a
    sta $da0d
    rts

loc_04bdc7:
    lda $da7f
    beq loc_04bdcd
    rts

loc_04bdcd:
    brl loc_04be46

loc_04bdd0:
    lda #$0004
    sta $da7f
    lda #$002e
    sta $da0d
    rts

loc_04bddd:
    lda $da7f
    beq loc_04bde3
    rts

loc_04bde3:
    ldy $e097
    lda $002e,y
    and #$fffe
    sta $002e,y
    lda $1b8a
    bit #$0020
    bne loc_04bdfa
    brl loc_04bccf

loc_04bdfa:
    lda $d7f4
    beq loc_04be09
    cmp #$0002
    bcs loc_04be46
    lda $d79d
    bmi loc_04be46

loc_04be09:
    lda #$000a
    sta $da7f
    lda #$0030
    sta $da0d

loc_04be15:
    lda $da7f
    beq loc_04be1b
    rts

loc_04be1b:
    brl loc_04be46

loc_04be1e:
    lda #$0001
    tsb $1b94
    lda #$0002
    sta $d7fc
    lda #$0008
    sta $da7f
    lda #$0034
    sta $da0d
    rts

loc_04be37:
    lda $da7f
    beq loc_04be3d
    rts

loc_04be3d:
    lda #$0001
    trb $1b94
    brl loc_04be46

loc_04be46:
    lda $1b8a
    bit #$0020
    bne loc_04be51
    brl loc_04bccf

loc_04be51:
    lda #$0020
    trb $1b8a
    lda $d79d
    bmi loc_04be8c
    ldy $e099
    lda $e09b
    sta $000e,y
    lda $e09d
    sta $0004,y
    lda $d79d
    cmp #$0001
    bne loc_04be76
    brl loc_04bccf

loc_04be76:
    lda $1bf2
    bne loc_04be7e
    brl loc_04bccf

loc_04be7e:
    lda #$0038
    sta $da0d
    lda #$000e
    sta $da7f
    bra loc_04be98

loc_04be8c:
    lda #$0038
    sta $da0d
    lda #$0014
    sta $da7f

loc_04be98:
    lda $da7f
    beq loc_04be9e
    rts

loc_04be9e:
    brl loc_04bccf

loc_04bea1:
    lda $1b92
    bit #$4000
    bne loc_04beb6
    bit #$8000
    beq loc_04bed1
    lda #$0800
    tsb $db37
    bra loc_04bebc

loc_04beb6:
    lda #$0200
    tsb $db37

loc_04bebc:
    jsr sub_04c689
    lda #$0040
    sta $da0d
    lda #$0001
    sta $da13

loc_04becb:
    lda $da13
    beq loc_04bed1
    rts

loc_04bed1:
    lda #$0001
    tsb $d7fa
    lda #$0008
    trb $d7f8
    ldx #$0044
    stx $da0d
    rts

loc_04bee4:
    lda $d7fa
    bit #$0002
    beq loc_04beed
    rts

loc_04beed:
    lda #$0555
    trb $d7fa
    lda #$0004
    tsb $d7fa
    ldx #$0052
    stx $da0d
    rts

loc_04bf00:
    lda $d7fa
    bit #$0008
    beq loc_04bf09
    rts

loc_04bf09:
    lda #$0555
    trb $d7fa
    lda #$0400
    tsb $d7fa
    ldx #$005a
    stx $da0d
    rts

loc_04bf1c:
    lda $d7fa
    bit #$0800
    beq loc_04bf25
    rts

loc_04bf25:
    lda #$0555
    trb $d7fa
    lda #$0010
    tsb $d7fa
    ldx #$004e
    stx $da0d
    rts

loc_04bf38:
    lda $d7fa
    bit #$0020
    beq loc_04bf41
    rts

loc_04bf41:
    lda #$0555
    trb $d7fa
    lda #$0040
    tsb $d7fa
    ldx #$004a
    stx $da0d
    lda $d7f8
    bit #$0020
    beq loc_04bf61
    lda #$0080
    tsb $d7fa

loc_04bf61:
    lda $d7fa
    bit #$0080
    beq loc_04bf6a
    rts

loc_04bf6a:
    lda #$0555
    trb $d7fa
    lda #$0100
    tsb $d7fa
    ldx #$0056
    stx $da0d
    rts

loc_04bf7d:
    lda $d7fa
    bit #$0200
    beq loc_04bf86
    rts

loc_04bf86:
    lda $d7f8
    bit #$0400
    beq loc_04bfaa
    lda #$0400
    trb $d7f8
    lda #$0001
    tsb $d7fa
    ldx #$0046
    stx $da0d
    rts

loc_04bfa1:
    lda $d7fa
    bit #$0002
    beq loc_04bfaa
    rts

loc_04bfaa:
    jsr sub_04c5ff
    jsl sub_7f5856

loc_04bfb1:
    lda #$0555
    trb $d7fa
    lda #$0002
    tsb $d7f8
    lda #$0100
    tsb $da8b
    ldx #$005e
    stx $da0d
    ldx #$0001
    stx $da11
    ldx #$0010
    stx $da8f
    jsr sub_04d4d8
    lda #$000b
    jsl QueueSound

loc_04bfdf:
    lda $da11
    beq loc_04bfe5
    rts

loc_04bfe5:
    lda #$003f
    trb $1b8c
    lda #$0033
    tsb $1b8c
    lda #$0100
    trb $da8b
    lda #$0100
    trb $1b94
    sep #$20
.a8
    lda $daf3
    sta $da91
    lda $daf6
    sta $da92
    rep #$20
.a16
    lda $d7f2
    beq loc_04c015
    brl loc_04c06b

loc_04c015:
    sep #$20
.a8
    lda $1dd5
    lsr a
    cmp $1dd1
    rep #$20
.a16
    bcc loc_04c02c
    beq loc_04c02c
    lda #$a6ea
    sta $f582
    bra loc_04c058

loc_04c02c:
    lda #$a6e3
    sta $f582
    bra loc_04c058

loc_04c034:
    lda $d7f2
    beq loc_04c03c
    brl loc_04bfb1

loc_04c03c:
    lda #$a6ca
    sta $f582
    ldx #$0001
    stx $da13
    ldx #$0060
    stx $da0d
    rts

loc_04c04f:
    lda $da13
    bne loc_04c057
    brl loc_04bfb1

loc_04c057:
    rts

loc_04c058:
    ldx #$0062
    stx $da0d
    ldx #$0001
    stx $da13
    rts

loc_04c065:
    lda $da13
    beq loc_04c06b
    rts

loc_04c06b:
    lda #$0010
    trb $1b84
    lda #$0010
    trb $1b8c
    lda #$0008
    trb $1b8a
    ldx #$0064
    stx $da0d
    lda #$0200
    tsb $da8b
    ldx #$0001
    stx $da11
    rts

loc_04c090:
    lda $da11
    bne loc_04c0b3
    lda #$0515
    tsb $d7fa
    lda #$0008
    tsb $d7f8
    ldx #$0066
    stx $da0d
    ldx #$0003
    stx $da11
    lda #$0013
    trb $1b8c

loc_04c0b3:
    rts

loc_04c0b4:
    dec $da11
    bne loc_04c0d1
    ldx #$0000
    stx $da0d
    lda #$0020
    trb $1b8c
    lda #$0040
    trb $1b88
    lda #$0001
    tsb $1b8a

loc_04c0d1:
    rts

loc_04c0d2:
    lda $da1d
    bit #$0001
    bne loc_04c0e6
    lda $da0f
    sta $da0d
    lda #$0200
    trb $1b8a

loc_04c0e6:
    rts

sub_04c0e7:
    lda $d7fa
    bit #$0001
    beq loc_04c0f5
    ldx $d9fd
    jsr (tbl_04c0f6,x)

loc_04c0f5:
    rts

tbl_04c0f6:
    .db $b2,$c1,$3e,$c1,$73,$c6,$7f,$c6,$7f,$c6,$96,$c6,$80,$c1,$af,$c6
    .db $9c,$c2,$a8,$c2,$e2,$c2,$e3,$c2,$03,$c3,$03,$c3,$03,$c3,$06,$c3
    .db $31,$c3,$6f,$c3,$9a,$c3,$be,$c3,$d0,$c3,$04,$c4,$1f,$c4,$70,$c4
    .db $b1,$c4,$c3,$c4,$f8,$c4,$17,$c5,$56,$c5,$5f,$c5,$ac,$c5,$ac,$c5
    .db $ec,$c5,$ff,$c5,$ef,$c1,$1f,$c2

loc_04c13e:
    lda #$0004
    trb $d7f8
    ldx $da01
    lda $04ef74,x
    cmp #$ffff
    beq loc_04c168
    jsr sub_04c1a3
    bcs loc_04c169
    ldx $da01
    lda $04ef74,x
    cmp #$fffe
    beq loc_04c16f
    cmp $da5b
    beq loc_04c16f
    bmi loc_04c16f

loc_04c168:
    rts

loc_04c169:
    lda #$0002
    trb $d7f8

loc_04c16f:
    lda $04ef76,x
    dec a
    pha
    inx
    inx
    inx
    inx
    stx $da01
    inc $da03
    rts

loc_04c180:
    jsr sub_04c1a3
    bcs loc_04c18e
    lda $d7f8
    bit #$0001
    beq loc_04c194
    rts

loc_04c18e:
    lda #$0004
    tsb $d7f8

loc_04c194:
    jsr sub_04b88d
    lda $d9ff
    sta $d9fd
    ldx $d9fd
    jmp (tbl_04c0f6,x)

sub_04c1a3:
    lda $da2f
    ora $da3b
    ora $da43
    beq loc_04c1b0
    clc
    rts

loc_04c1b0:
    sec
    rts

loc_04c1b2:
    rts
    .db $a9,$08,$00,$0c,$90,$1b,$82,$82,$ff,$a9,$20,$00,$1c,$90,$1b,$ac
    .db $61,$db,$a9,$02,$00,$99,$36,$00,$82,$70,$ff
    lda #$0100
    tsb $d7f8
    inc $da59
    brl loc_04c13e
    .db $ad,$2f,$da,$d0,$03,$82,$5c,$ff,$a9,$10,$00,$0c,$f8,$d7,$a9,$44
    .db $00,$8d,$fd,$d9,$60

loc_04c1ef:
    lda $da2d
    beq loc_04c1f5
    rts

loc_04c1f5:
    lda #$0010
    trb $d7f8
    lda #$0008
    trb $1b90
    brl loc_04c13e
    lda $da3b
    bne loc_04c20c
    brl loc_04c13e

loc_04c20c:
    lda #$0020
    tsb $d7f8
    lda #$0002
    sta $da17
    lda #$0046
    sta $d9fd
    rts

loc_04c21f:
    lda $da3b
    beq loc_04c225
    rts

loc_04c225:
    jsr sub_04c938
    brl loc_04c13e
    lda $d7f8
    bit #$0002
    bne loc_04c23c
    lda #$001c
    sta $d9fd
    brl loc_04c303

loc_04c23c:
    lda #$001c
    sta $d9ff
    bra loc_04c28f
    .db $ad,$f8,$d7,$89,$02,$00,$d0,$09,$a9,$26,$00,$8d,$fd,$d9,$82,$69
    .db $01,$a9,$26,$00,$8d,$ff,$d9,$80,$32,$ad,$f8,$d7,$89,$02,$00,$d0
    .db $09,$a9,$2e,$00,$8d,$fd,$d9,$82,$02,$02,$a9,$2e,$00,$8d,$ff,$d9
    .db $80,$19
    lda $d7f8
    bit #$0002
    bne loc_04c287
    lda #$0036
    sta $d9fd
    brl loc_04c517

loc_04c287:
    lda #$0036
    sta $d9ff
    bra loc_04c28f

loc_04c28f:
    lda #$0001
    tsb $d7f8
    lda #$000c
    sta $d9fd
    rts

loc_04c29c:
    lda #$0018
    sta $da7f
    lda #$0012
    sta $d9fd

loc_04c2a8:
    lda $da7f
    beq loc_04c2ae
    rts

loc_04c2ae:
    lda $1b86
    bit #$0001
    bne loc_04c2c9
    lda #$0002
    tsb $1b8c
    lda #$0060
    trb $1b8c
    lda #$0014
    sta $d9fd
    rts

loc_04c2c9:
    ldx #$000a
    stx $da0d
    lda #$003f
    trb $1b8c
    lda #$003b
    tsb $1b8c
    lda #$0002
    sta $d9fd
    rts

loc_04c2e2:
    rts

loc_04c2e3:
    lda #$8000
    tsb $1b88
    lda #$0001
    sta $1b74
    lda #$003f
    tsb $1b8c
    lda #$0002
    sta $d9fd
    rts

loc_04c2fc:
    inc $d9fd
    inc $d9fd
    rts

loc_04c303:
    jsr sub_04c45e

loc_04c306:
    lda #$0080
    tsb $d7f8
    lda #$0002
    tsb $d7fa
    lda #$0020
    sta $d9ff
    lda #$0028
    sta $da05
    ldx $1ba3
    lda $04c32b,x
    tsb $db37
    brl loc_04c673
    .db $01,$00,$02,$00,$04,$00

loc_04c331:
    ldx $d7f2
    beq loc_04c33d
    lda $1c00
    and #$0003
    tax

loc_04c33d:
    sep #$20
.a8
    lda $04c36a,x
    sta $1c06
    lda $d7f2
    cmp #$02
    bne loc_04c355
    inx
    lda $04c36a,x
    sta $1c07

loc_04c355:
    rep #$20
.a16
    lda $1b8e
    sta $1b8c
    lda #$0004
    sta $1b74
    lda #$0022
    sta $d9fd
    rts
    .db $00,$01,$03,$02,$00

loc_04c36f:
    lda $1b94
    bit #$ffff
    beq loc_04c378
    rts

loc_04c378:
    lda #$0002
    tsb $d7fa
    lda #$0020
    tsb $1b94
    lda #$000a
    sta $d7fc
    lda $1b8c
    sta $1b8e
    jsr sub_04e7cd
    lda #$0024
    sta $d9fd
    rts

loc_04c39a:
    lda $d9b0
    bne loc_04c3bd
    lda #$0002
    trb $d7fa
    lda #$0020
    trb $1b94
    lda #$0000
    sta $d7fc
    lda #$0002
    sta $d9fd
    lda $1b8e
    sta $1b8c

loc_04c3bd:
    rts

loc_04c3be:
    lda $da3b
    ora $da4d
    beq loc_04c3c7
    rts

loc_04c3c7:
    lda $1b94
    bit #$ffff
    beq loc_04c3d0
    rts

loc_04c3d0:
    jsr sub_04c45e
    lda #$0002
    tsb $d7fa
    lda #$0028
    sta $da05
    lda #$002a
    sta $d9ff
    lda #$0004
    tsb $1b94
    lda $d7f2
    cmp #$0002
    beq loc_04c3fb
    lda #$0020
    tsb $db37
    bra loc_04c401

loc_04c3fb:
    lda #$0040
    tsb $db37

loc_04c401:
    brl loc_04c673

loc_04c404:
    jsr sub_04e571
    ldx #$0002
    stx $d998
    lda #$0400
    tsb $1b86
    lda #$0006
    sta $d7fc
    lda #$002c
    sta $d9fd

loc_04c41f:
    lda $da3b
    beq loc_04c429
    lda $d998
    beq loc_04c42a

loc_04c429:
    rts

loc_04c42a:
    lda #$0004
    trb $1b94
    lda #$0002
    trb $d7fa
    lda #$0000
    sta $d7fc
    lda #$0002
    sta $d9fd
    lda $d7f8
    bit #$000c
    bne loc_04c451
    lda $1b8e
    sta $1b8c
    rts

loc_04c451:
    lda #$0004
    trb $d7f8
    ldx #$005c
    stx $da0d
    rts

sub_04c45e:
    lda $d7f8
    bit #$000c
    beq loc_04c46f
    jsr sub_04b88d
    lda #$003f
    tsb $1b8c

loc_04c46f:
    rts

loc_04c470:
    lda $da45
    beq loc_04c476
    rts

loc_04c476:
    lda $1b94
    bit #$ffff
    beq loc_04c47f
    rts

loc_04c47f:
    lda $d7f8
    bit #$0002
    beq loc_04c48d
    jsr sub_04c1a3
    bcs loc_04c48d
    rts

loc_04c48d:
    jsr sub_04c45e
    lda #$0080
    tsb $1b94
    lda #$0002
    tsb $d7fa
    lda #$0002
    tsb $db37
    lda #$0028
    sta $da05
    lda #$0030
    sta $d9ff
    brl loc_04c673

loc_04c4b1:
    lda #$1000
    tsb $1b86
    lda #$0020
    sta $da7f
    lda #$0032
    sta $d9fd

loc_04c4c3:
    lda $da7f
    beq loc_04c4c9
    rts

loc_04c4c9:
    lda #$1000
    trb $1b86
    lda $1b8a
    bit #$0004
    beq loc_04c4fe
    lda #$0004
    trb $1b8a
    lda #$0006
    sta $dae7
    sta $daef
    lda $db45
    sta $daed
    lda #$0024
    sta $da7f
    lda #$0034
    sta $d9fd

loc_04c4f8:
    lda $da7f
    beq loc_04c4fe
    rts

loc_04c4fe:
    lda #$0200
    tsb $d7f8
    lda #$0100
    tsb $d7fa
    lda #$0010
    tsb $d7f8
    lda #$0000
    sta $d9fd
    rts

loc_04c517:
    lda $da29
    ora $da53
    ora $da43
    beq loc_04c523
    rts

loc_04c523:
    lda #$0010
    trb $d7f8
    lda $1b94
    bit #$ffff
    beq loc_04c532
    rts

loc_04c532:
    jsr sub_04b88d
    lda #$0002
    tsb $d7fa
    lda #$0020
    tsb $1b90
    lda #$2000
    tsb $db37
    lda #$0050
    sta $da05
    lda #$0038
    sta $d9ff
    brl loc_04c673

loc_04c556:
    lda #$001e
    sta $da7f
    brl loc_04c2fc

loc_04c55f:
    lda $da7f
    beq loc_04c565
    rts

loc_04c565:
    lda $1b8e
    sta $1b8c
    lda #$0040
    tsb $1b94
    lda #$0400
    tsb $db37
    lda #$0028
    sta $da05
    lda #$003c
    sta $d9ff
    lda #$0080
    tsb $1b8a
    jsr sub_04e430
    lda #$000c
    sta $d7fc
    lda #$0001
    sta $d9b0
    jsr sub_04b88d
    lda #$0008
    jsl sub_7f6df8
    lda #$0061
    jsl QueueSound
    brl loc_04c673

loc_04c5ac:
    lda $d9b0
    beq loc_04c5b2
    rts

loc_04c5b2:
    lda #$0040
    trb $1b8a
    lda #$0100
    tsb $d7f8
    jsr sub_04c5ff
    lda #$0040
    trb $1b94
    lda #$0002
    trb $d7fa
    lda #$0000
    sta $d7fc
    lda #$0040
    sta $d9fd
    lda #$0040
    trb $1b88
    lda #$0002
    trb $1b8c
    ldx #$0000
    stx $da0d
    rts

loc_04c5ec:
    lda $da57
    beq loc_04c5f2
    rts

loc_04c5f2:
    lda #$0000
    sta $d9fd
    lda #$0002
    sta $da19
    rts

sub_04c5ff:
    lda $d7f8
    bit #$0100
    beq loc_04c61a
    lda $1b8a
    bit #$0040
    bne loc_04c61a
    lda $da57
    bne loc_04c61b
    lda #$0100
    trb $d7f8

loc_04c61a:
    rts

loc_04c61b:
    ldy $e0a3

loc_04c61e:
    lda $0030,y
    bit #$0400
    bne loc_04c633
    lda $0000,y
    tay
    bne loc_04c61e
    lda #$0100
    trb $d7f8
    rts

loc_04c633:
    lda $002e,y
    and #$dfff
    sta $002e,y
    lda $0030,y
    ora #$0100
    sta $0030,y
    lda $0030,y
    and #$fbff
    sta $0030,y
    lda #$0040
    tsb $1b8a
    lda #$0007
    sta $0004,y
    lda #$0000
    sta $000e,y
    lda #$0008
    sta $0040,y
    ldx $0012,y
    lda $001c,x
    and #$7fff
    sta $001c,x
    rts

loc_04c673:
    lda $1b8c
    sta $1b8e
    lda #$003f
    tsb $1b8c

loc_04c67f:
    jsr sub_04c689
    lda #$000a
    sta $d9fd
    rts

sub_04c689:
    lda $db37
    sta $f55c
    stz $db37
    stz $f582
    rts

loc_04c696:
    dec $da05
    bne loc_04c6a1
    lda $d9ff
    sta $d9fd

loc_04c6a1:
    rts
    .db $9c,$33,$da,$9c,$3d,$da,$9c,$49,$da,$9c,$4f,$da,$60

loc_04c6af:
    lda $da33
    clc
    adc $da3d
    adc $da49
    adc $da4f
    cmp $da25
    bmi loc_04c6cd
    lda #$0002
    tsb $d7fa
    lda $d9ff
    sta $d9fd

loc_04c6cd:
    rts

sub_04c6ce:
    php
    rep #$30
    ldx $da07
    jsr (tbl_04c6d9,x)
    plp
    rts

tbl_04c6d9:
    .db $e3,$c6,$e4,$c6,$e4,$c6,$e4,$c6,$f6,$c6

loc_04c6e3:
    rts

loc_04c6e4:
    lda $db37
    sta $f55c
    stz $db37
    stz $f582
    lda #$0008
    sta $da07

loc_04c6f6:
    dec $da0b
    bne loc_04c701
    lda #$0000
    sta $da07

loc_04c701:
    rts

sub_04c702:
    lda $d7fa
    bit #$0100
    beq loc_04c730
    lda $d7f8
    bit #$0010
    beq loc_04c730
    lda $1b94
    bit #$ffff
    beq loc_04c72a
    lda $1b94
    bit #$0002
    bne loc_04c72a
    lda $1b94
    bit #$0080
    beq loc_04c730

loc_04c72a:
    ldx $da15
    jsr (tbl_04c731,x)

loc_04c730:
    rts

tbl_04c731:
    .db $3d,$c7,$82,$c7,$dd,$c7,$e6,$c7,$fe,$c7,$04,$c8

loc_04c73d:
    lda $d7f8
    bit #$0200
    bne loc_04c75c
    lda $da2f
    beq loc_04c769
    lda $da45
    bne loc_04c768
    lda $d7f8
    bit #$0002
    beq loc_04c75c
    jsr sub_04c1a3
    bcc loc_04c768

loc_04c75c:
    lda #$0200
    tsb $d7fa
    lda #$0002
    sta $da15

loc_04c768:
    rts

loc_04c769:
    lda #$0010
    trb $d7f8
    lda #$0008
    trb $1b90
    lda #$0400
    tsb $d7f8
    lda #$0002
    sta $d9fd
    rts

loc_04c782:
    jsr sub_04c86d
    bne loc_04c7a0
    lda #$0200
    trb $d7fa
    lda #$0010
    trb $d7f8
    lda #$0008
    trb $1b90
    lda #$0000
    sta $da15
    rts

loc_04c7a0:
    lda $d7f8
    bit #$0200
    bne loc_04c7b3
    jsr sub_04c45e
    lda $1b8c
    sta $1b8e
    bra loc_04c7b9

loc_04c7b3:
    lda #$0200
    trb $d7f8

loc_04c7b9:
    lda #$0002
    tsb $1b94
    lda #$003f
    tsb $1b8c
    lda #$0050
    sta $da0b
    lda #$0002
    sta $da07
    lda #$0004
    sta $da15
    lda #$0100
    tsb $db37

loc_04c7dd:
    jsr sub_04c6ce
    lda $da07
    beq loc_04c7e6
    rts

loc_04c7e6:
    lda #$0004
    sta $d7fc
    lda #$0008
    trb $1b90
    lda #$0008
    trb $1b90
    lda #$0008
    sta $da15

loc_04c7fe:
    lda $da47
    beq loc_04c804
    rts

loc_04c804:
    lda #$0200
    trb $d7fa
    lda #$0010
    trb $d7f8
    lda #$0002
    trb $1b94
    lda #$0100
    trb $d7fa
    lda #$0000
    sta $d7fc
    lda #$0000
    sta $da15
    stz $f582
    lda #$0002
    sta $d9fd
    lda $1b94
    bit #$0080
    beq loc_04c845
    lda #$0080
    trb $1b94
    lda #$0002
    trb $d7fa

loc_04c845:
    lda $d7f8
    bit #$000c
    bne loc_04c85a
    lda $1b8e
    sta $1b8c
    lda #$0008
    trb $1b90
    rts

loc_04c85a:
    lda #$0008
    trb $1b90
    lda #$0004
    trb $d7f8
    ldx #$005c
    stx $da0d
    rts

sub_04c86d:
    stz $02
    ldx $db67
    beq loc_04c8b8

loc_04c874:
    lda $001c,x
    bit #$0001
    beq loc_04c8a3
    lda $001c,x
    bit #$2000
    beq loc_04c8a3
    lda $001c,x
    bit #$1800
    bne loc_04c8a3
    lda $001c,x
    and #$fdff
    sta $001c,x
    lda #$0002
    sta $0036,x
    lda #$0001
    sta $003e,x
    inc $02

loc_04c8a3:
    lda $0000,x
    tax
    bne loc_04c874
    lda $02
    beq loc_04c8b8
    cmp #$0007
    bmi loc_04c8b5
    lda #$0006

loc_04c8b5:
    sta $da47

loc_04c8b8:
    rts

sub_04c8b9:
    lda $d7fa
    bit #$0040
    beq loc_04c8df
    lda $d7f8
    bit #$0020
    beq loc_04c8df
    lda $1b94
    bit #$ffff
    beq loc_04c8d9
    lda $1b94
    bit #$0008
    beq loc_04c8df

loc_04c8d9:
    ldx $da17
    jsr (tbl_04c8e0,x)

loc_04c8df:
    rts

tbl_04c8e0:
    .db $e8,$c8,$e9,$c8,$1d,$c9,$26,$c9

loc_04c8e8:
    rts

loc_04c8e9:
    lda $da3b
    beq sub_04c938
    jsr sub_04c951
    bcc sub_04c938
    lda #$0008
    tsb $1b94
    lda $1b8c
    sta $1b8e
    lda #$003f
    tsb $1b8c
    lda #$0080
    tsb $db37
    lda #$0028
    sta $da0b
    lda #$0002
    sta $da07
    lda #$0004
    sta $da17

loc_04c91d:
    jsr sub_04c6ce
    lda $da07
    beq loc_04c926
    rts

loc_04c926:
    jsr sub_04c978
    lda $1b8e
    sta $1b8c
    stz $f582
    lda #$0008
    trb $1b94

sub_04c938:
    lda #$0080
    trb $d7fa
    lda #$0020
    trb $d7f8
    lda #$0000
    sta $da17
    lda #$0002
    sta $d9fd
    rts

sub_04c951:
    stz $02
    ldx $db67
    beq loc_04c974

loc_04c958:
    lda $001c,x
    bit #$0004
    beq loc_04c96a
    lda $001e,x
    bit #$0002
    bne loc_04c96a
    inc $02

loc_04c96a:
    lda $0000,x
    tax
    bne loc_04c958
    lda $02
    bne loc_04c976

loc_04c974:
    clc
    rts

loc_04c976:
    sec
    rts

sub_04c978:
    ldx $db67
    beq loc_04c9a7

loc_04c97d:
    lda $001c,x
    bit #$0004
    beq loc_04c9a1
    lda $001e,x
    bit #$0002
    bne loc_04c9a1
    lda $0028,x
    tay
    lda $0030,y
    and #$fffb
    sta $0030,y
    lda #$00c8
    jsl sub_7f5906

loc_04c9a1:
    lda $0000,x
    tax
    bne loc_04c97d

loc_04c9a7:
    rts

sub_04c9a8:
    lda $d7fa
    bit #$0004
    beq loc_04c9c6
    sep #$20
.a8
    lda #$10
    trb $1cd3
    rep #$20
.a16
    ldy $da6b
    beq loc_04c9c6
    lda $da69
    asl a
    tax
    jsr (tbl_04c9c7,x)

loc_04c9c6:
    rts

tbl_04c9c7:
    .db $d7,$c9,$d8,$c9,$e2,$c9,$0d,$ca,$1f,$ca,$38,$ca,$70,$ca,$9b,$ca

loc_04c9d7:
    rts

loc_04c9d8:
    sep #$20
.a8
    lda #$10
    tsb $1cd3
    rep #$20
.a16
    rts

loc_04c9e2:
    sep #$20
.a8
    lda #$10
    tsb $1cd3
    rep #$20
.a16
    lda #$0008
    tsb $d7fa
    lda $1b8c
    sta $1b8e
    lda #$003f
    tsb $1b8c
    lda #$0010
    tsb $f55c
    lda #$0028
    sta $da6d
    inc $da69
    rts

loc_04ca0d:
    sep #$20
.a8
    lda #$10
    tsb $1cd3
    rep #$20
.a16
    jsr sub_04cacf
    bcc loc_04ca1e
    inc $da69

loc_04ca1e:
    rts

loc_04ca1f:
    sep #$20
.a8
    lda #$10
    tsb $1cd3
    rep #$20
.a16
    lda #$0002
    tsb $1b8a
    lda #$0005
    sta $1b74
    inc $da69
    rts

loc_04ca38:
    lda $1b8c
    sta $1b8e
    lda #$0002
    sta $0032,y
    lda #$001f
    sta $004a,y
    lda #$0000
    sta $004c,y
    lda $001e,y
    bit #$0001
    beq loc_04ca5e
    lda #$0020
    sta $004a,y

loc_04ca5e:
    lda #$00ff
    jsl QueueSound
    lda #$00c4
    jsl QueueSound
    inc $da69
    rts

loc_04ca70:
    lda $1b92
    bit #$1000
    bne loc_04ca9a
    lda $0032,y
    cmp #$0006
    bne loc_04ca9a
    lda #$0000
    sta $0032,y
    lda $db47
    beq loc_04caad
    lda #$0028
    sta $da6d
    lda #$0001
    tsb $db33
    inc $da69

loc_04ca9a:
    rts

loc_04ca9b:
    jsr sub_04cacf
    bcs loc_04caa1
    rts

loc_04caa1:
    lda #$0008
    trb $d7fa
    lda #$0080
    trb $1b88

loc_04caad:
    lda $1b8e
    sta $1b8c
    lda #$0258
    sta $0034,y
    lda #$0001
    sta $0032,y
    lda #$0002
    sta $004a,y
    lda #$0000
    sta $004c,y
    jsr sub_04cadc
    rts

sub_04cacf:
    lda $da6d
    beq loc_04cada
    dec a
    sta $da6d
    clc
    rts

loc_04cada:
    sec
    rts

sub_04cadc:
    phx
    lda #$ffff
    sta $da73
    lda #$0000
    sta $da69
    lda $db47
    beq loc_04cb07
    ldx $db67

loc_04caf1:
    lda $001c,x
    bit #$0004
    beq loc_04cb01
    lda $001e,x
    bit #$0002
    bne loc_04cb09

loc_04cb01:
    lda $0000,x
    tax
    bne loc_04caf1

loc_04cb07:
    plx
    rts

loc_04cb09:
    lda $0034,x
    cmp $da73
    bcs loc_04cb01
    stx $da6b
    sta $da71
    sta $da73
    lda #$0001
    sta $da69
    bra loc_04cb01

sub_04cb22:
    php
    rep #$30
    lda $d7fa
    bit #$0400
    beq loc_04cb45
    lda $1b94
    bit #$ffff
    beq loc_04cb3d
    lda $1b94
    bit #$0010
    beq loc_04cb45

loc_04cb3d:
    lda $e089
    asl a
    tax
    jsr (tbl_04cb47,x)

loc_04cb45:
    plp
    rts

tbl_04cb47:
    .db $51,$cb,$66,$cb,$d8,$cb,$15,$cc,$32,$cc

loc_04cb51:
    lda $e087
    bit #$0008
    bne loc_04cb5a
    rts

loc_04cb5a:
    lda #$0008
    trb $e087
    inc $e089
    inc $e085

loc_04cb66:
    lda #$0800
    tsb $d7fa
    lda $1b8c
    sta $1b8e
    lda #$003f
    tsb $1b8c
    lda #$0010
    tsb $1b94
    lda #$0008
    sta $d7fc
    jsl sub_7f6141
    stx $e08d
    stz $0004,x
    stz $0036,x
    ldy $e079
    lda $001b,y
    sta $001b,x
    lda $001e,y
    sta $001e,x
    jsr sub_04cc54
    lda #$2000
    sta $0026,x
    lda $002e,x
    ora #$2000
    sta $002e,x
    lda $0030,x
    ora #$0004
    sta $0030,x
    lda #$0003
    sta $000e,x
    lda #$000c
    sta $0040,x
    lda #$0004
    trb $e087
    lda #$0064
    jsl QueueSound
    inc $e089
    rts

loc_04cbd8:
    lda $e087
    bit #$0040
    bne loc_04cbe1
    rts

loc_04cbe1:
    lda #$0080
    tsb $e087
    inc $e089
    lda #$008b
    jsl QueueSound
    ldx $e08d
    lda $e093
    beq loc_04cc07
    ldy $e079
    jsl sub_7f5f09
    lda #$000d
    sta $0004,x
    rts

loc_04cc07:
    lda #$000c
    sta $0004,x
    ldy $e091
    jsl sub_7f6181
    rts

loc_04cc15:
    lda $e087
    bit #$0080
    beq loc_04cc1e
    rts

loc_04cc1e:
    lda $e093
    beq loc_04cc38
    lda #$1000
    tsb $f55c
    lda #$0028
    sta $e08b
    inc $e089

loc_04cc32:
    dec $e08b
    beq loc_04cc38
    rts

loc_04cc38:
    lda #$0010
    trb $1b94
    lda #$0800
    trb $d7fa
    lda #$0040
    trb $e087
    lda $1b8e
    sta $1b8c
    stz $e089
    rts

sub_04cc54:
    sep #$20
.a8
    lda $e093
    beq loc_04cc6c
    ldy $db45
    lda $000c,y
    sta $0020,x
    lda $000e,y
    sta $0022,x
    bra loc_04cc7b

loc_04cc6c:
    ldy $e091
    lda $001c,y
    sta $0020,x
    lda $001f,y
    sta $0022,x

loc_04cc7b:
    rep #$20
.a16
    rts

sub_04cc7e:
    php
    rep #$20
    lda $da8b
    bit #$0400
    bne loc_04cc8c
    brl loc_04cd07

loc_04cc8c:
    lda $1296
    bit #$8000
    bne loc_04cce1
    lda $1296
    bit #$0040
    bne loc_04ccef
    lda $1296
    bit #$0100
    bne loc_04ccae
    lda $1296
    bit #$0200
    bne loc_04ccc4
    bra loc_04cd07

loc_04ccae:
    lda $dae7
    inc a
    cmp #$0007
    bmi loc_04ccba
    lda #$0000

loc_04ccba:
    sta $dae7
    jsr sub_04cd09
    bcc loc_04ccae
    bra loc_04ccd5

loc_04ccc4:
    lda $dae7
    dec a
    bpl loc_04cccd
    lda #$0006

loc_04cccd:
    sta $dae7
    jsr sub_04cd09
    bcc loc_04ccc4

loc_04ccd5:
    lda #$000b
    jsl QueueSound
    jsr sub_04cd31
    bra loc_04cd07

loc_04cce1:
    lda #$0400
    trb $da8b
    lda $dae7
    cmp $daef
    bne loc_04cd07

loc_04ccef:
    lda #$0400
    trb $da8b
    lda #$0001
    trb $da8d
    lda $dae9
    sta $dae7
    lda #$0800
    tsb $da8b

loc_04cd07:
    plp
    rts

sub_04cd09:
    ldx $db67

loc_04cd0c:
    lda $001c,x
    bit #$007c
    bne loc_04cd24
    lda $001c,x
    bit #$1000
    beq loc_04cd24
    lda $0006,x
    cmp $dae7
    beq loc_04cd2c

loc_04cd24:
    lda $0000,x
    tax
    bne loc_04cd0c
    clc
    rts

loc_04cd2c:
    stx $daed
    sec
    rts

sub_04cd31:
    ldx $daed
    lda $0006,x
    sta $db2f
    lda $000c,x
    sta $da93
    lda $000e,x
    sta $da94
    rts

sub_04cd47:
    ldx $da7f
    beq loc_04cd6d
    bmi loc_04cd5b
    lda $04cd6e,x
    sta $da81
    lda #$ffff
    sta $da7f

loc_04cd5b:
    ldx $da81
    ldy $da83
    lda $04cd6e,x
    dec a
    beq loc_04cd6a
    pha
    rts

loc_04cd6a:
    stz $da7f

loc_04cd6d:
    rts
    .db $28,$00,$32,$00,$2a,$00,$58,$00,$84,$00,$8a,$00,$9a,$00,$a0,$00
    .db $a6,$00,$b2,$00,$92,$00,$be,$00,$c0,$00,$c0,$00,$c0,$00,$42,$00
    .db $ce,$00,$68,$00,$72,$00,$d6,$00,$01,$00,$d7,$d0,$0d,$d1,$1f,$d1
    .db $01,$00,$07,$cf,$28,$cf,$1f,$d1,$a2,$cf,$55,$ce,$e4,$cf,$fb,$cf
    .db $01,$00,$22,$d0,$a2,$cf,$55,$ce,$e4,$cf,$fb,$cf,$b4,$cf,$55,$ce
    .db $7a,$cf,$f9,$ce,$4f,$cf,$01,$00,$5b,$cf,$a2,$cf,$55,$ce,$e4,$cf
    .db $fb,$cf,$b4,$cf,$4f,$d0,$7a,$cf,$65,$d0,$cf,$d0,$0d,$d1,$1f,$d1
    .db $01,$00,$5b,$cf,$a2,$cf,$55,$ce,$e4,$cf,$fb,$cf,$b4,$cf,$4f,$d0
    .db $7a,$cf,$01,$00,$dc,$d1,$ec,$d1,$01,$00,$f5,$d1,$55,$ce,$40,$d2
    .db $01,$00,$08,$d2,$55,$ce,$40,$d2,$01,$00,$47,$d2,$a8,$d2,$01,$00
    .db $4f,$d2,$a8,$d2,$01,$00,$d7,$d0,$0d,$d1,$1f,$d1,$cf,$d2,$55,$ce
    .db $01,$00,$d7,$d0,$0d,$d1,$1f,$d1,$e2,$d2,$0a,$d3,$01,$00,$01,$00
    .db $61,$ce,$8d,$ce,$95,$ce,$ea,$ce,$72,$ce,$8d,$ce,$01,$00,$95,$ce
    .db $ea,$ce,$72,$ce,$01,$00,$37,$d1,$4b,$d1,$7e,$d1,$c7,$d1,$01,$00

loc_04ce4e:
    inc $da81
    inc $da81
    rts
    lda $0008,y
    dec a
    sta $0008,y
    beq loc_04ce5f
    rts

loc_04ce5f:
    bra loc_04ce4e
    jsr sub_04e571
    ldx #$0002
    stx $d998
    lda #$0002
    trb $1b8c
    bra loc_04ce4e
    ldx #$0001
    stx $d998
    ldx $d7f2
    lda $04ce8a,x
    and #$00ff
    sta $d99a
    jsr sub_04e245
    bra loc_04ce4e
    .db $02,$03,$03
    lda $d998
    beq loc_04ce93
    rts

loc_04ce93:
    bra loc_04ce4e
    ldx $d7f2
    lda $04ce8a,x
    and #$00ff
    sta $d99a
    sta $d9b0
    sta $1bca
    ldx $daeb

loc_04ceab:
    stx $da83
    lda $04ee52,x
    and #$00ff
    sta $1bcc
    ldy $db67

loc_04cebb:
    lda $001c,y
    bit #$0001
    beq loc_04cedb
    lda $0004,y
    cmp $1bcc
    bne loc_04cedb
    tyx
    jsr sub_04e430
    txy
    dec $1bca
    beq loc_04cee1
    ldx $da83
    inx
    bra loc_04ceab

loc_04cedb:
    lda $0000,y
    tay
    bne loc_04cebb

loc_04cee1:
    lda #$000c
    sta $d7fc
    brl loc_04ce4e
    lda $d9b0
    beq loc_04cef0
    rts

loc_04cef0:
    lda #$0000
    sta $d7fc
    brl loc_04ce4e
    .db $a9,$1e,$00,$8d,$85,$da,$a2,$58,$02,$8e,$fb,$da,$80,$06,$a2,$60
    .db $09,$8e,$fb,$da,$a9,$23,$04,$0c,$01,$db,$ad,$25,$db,$8d,$11,$db
    .db $ad,$26,$db,$8d,$12,$db,$20,$f1,$d5,$20,$8b,$d6,$82,$26,$ff,$20
    .db $40,$d4,$20,$1f,$d3,$b0,$01,$60,$a9,$02,$00,$1c,$01,$db,$a9,$00
    .db $02,$0c,$01,$db,$ac,$5f,$db,$a9,$ec,$00,$99,$20,$00,$a9,$18,$00
    .db $99,$22,$00,$82,$ff,$fe,$20,$40,$d4,$ce,$85,$da,$f0,$01,$60,$82
    .db $f3,$fe,$ae,$ed,$da,$ac,$5f,$db,$e2,$20,$bd,$0c,$00,$8d,$25,$db
    .db $99,$20,$00,$bd,$0e,$00,$99,$22,$00,$8d,$26,$db,$c2,$20,$82,$d4
    .db $fe,$ae,$5d,$db,$ac,$5f,$db,$e2,$20,$ad,$25,$db,$9d,$0c,$00,$99
    .db $1c,$00,$ad,$26,$db,$9d,$0e,$00,$99,$1f,$00,$c2,$20,$b9,$2e,$00
    .db $29,$ff,$bf,$99,$2e,$00,$82,$ac,$fe,$ac,$5f,$db,$a9,$24,$00,$99
    .db $44,$00,$a9,$0a,$00,$22,$09,$6e,$7f,$80,$12,$ac,$5f,$db,$a9,$25
    .db $00,$99,$44,$00,$a9,$63,$00,$22,$09,$6e,$7f,$80,$00,$b9,$2e,$00
    .db $09,$00,$40,$99,$2e,$00,$a9,$00,$00,$99,$46,$00,$a9,$18,$00,$99
    .db $08,$00,$99,$48,$00,$8c,$83,$da,$82,$6a,$fe,$ac,$5f,$db,$a9,$ff
    .db $ff,$99,$44,$00,$22,$8b,$69,$7f,$a9,$61,$00,$22,$09,$6e,$7f,$82
    .db $53,$fe,$ac,$5f,$db,$22,$2c,$68,$7f,$22,$1c,$59,$7f,$b0,$01,$60
    .db $e2,$20,$b9,$20,$00,$99,$1c,$00,$b9,$22,$00,$99,$1f,$00,$c2,$20
    .db $a9,$00,$00,$99,$44,$00,$82,$2c,$fe,$ac,$5f,$db,$ad,$f3,$da,$85
    .db $02,$8d,$9c,$d9,$ad,$f6,$da,$85,$08,$8d,$9e,$d9,$a9,$18,$00,$85
    .db $3a,$a9,$18,$00,$85,$3c,$20,$4c,$d3,$a5,$3a,$8d,$25,$db,$a5,$3c
    .db $8d,$26,$db,$82,$ff,$fd,$b9,$08,$00,$3a,$99,$08,$00,$f0,$01,$60
    .db $b9,$2e,$00,$29,$ff,$bf,$99,$2e,$00,$82,$e9,$fd
    stz $02
    stz $08
    stz $04
    stz $0a
    sep #$20
.a8
    lda $db25
    sta $daf3
    sta $db15
    sta $02
    lda $db26
    sta $daf6
    sta $db18
    sta $08
    rep #$20
.a16
    jsl sub_7f692d
    cmp #$0000
    beq loc_04d09a
    cmp #$0008
    beq loc_04d09a
    ldx $db45
    bra loc_04d09d

loc_04d09a:
    ldx $db61

loc_04d09d:
    sep #$20
.a8
    lda $000c,x
    sta $db11
    sta $04
    lda $000e,x
    sta $db12
    sta $0a
    rep #$20
.a16
    jsr sub_04d0b7
    brl loc_04ce4e

sub_04d0b7:
    jsr sub_04d66b
    lda $3c
    sta $daf7
    lda $5f
    sta $db09
    lda $3c
    sta $db19
    lda $5f
    sta $db21
    rts
    lda #$000f
    sta $db05
    bra loc_04d0dd
    lda #$0019
    sta $db05

loc_04d0dd:
    lda #$0200
    trb $db01
    lda #$0004
    trb $1b8c
    lda #$0400
    tsb $db01
    lda #$001a
    jsl QueueSound
    lda #$0005
    sta $db03
    rep #$20
    lda #$0003
    tsb $db01
    ldx #$0800
    stx $dafb
    brl loc_04ce4e
    dec $db05
    beq loc_04d116
    jsr sub_04d440
    rts

loc_04d116:
    lda #$0003
    trb $db01
    brl loc_04ce4e
    lda $db23
    bit #$0002
    beq loc_04d128
    rts

loc_04d128:
    ldx #$0258
    stx $dafb
    lda #$0400
    trb $db01
    brl loc_04ce4e
    lda $db23
    bit #$0002
    bne loc_04d147
    lda $db23
    bit #$0200
    bne loc_04d148

loc_04d147:
    rts

loc_04d148:
    brl loc_04ce4e
    lda #$0400
    tsb $db01
    lda #$0400
    tsb $db23
    lda #$0200
    trb $db23
    ldx #$0800
    stx $dafb
    ldx #$f800
    stx $db1b
    lda #$0020
    sta $db05
    lda $daf2
    sta $da87
    lda $daf5
    sta $da89
    brl loc_04ce4e
    lda $daf7
    clc
    adc #$0800
    sta $daf7
    lda $db19
    adc #$0800
    sta $db19
    dec $db05
    beq loc_04d19d
    jsr sub_04d93a
    jsr sub_04d96a
    rts

loc_04d19d:
    lda $da87
    sta $daf2
    sta $db14
    lda $da89
    sta $daf5
    sta $db17
    lda #$0258
    sta $dafb
    sta $db1b
    lda #$0400
    trb $db01
    lda #$0400
    trb $db23
    brl loc_04ce4e
    lda $daf2
    sta $db14
    lda $daf5
    sta $db17
    lda #$0400
    trb $db23
    brl loc_04ce4e

loc_04d1dc:
    ldy $e097
    jsl sub_7f5da3
    ldx #$0001
    stx $da11
    brl loc_04ce4e
    .db $ad,$11,$da,$f0,$01,$60,$82,$59,$fc
    ldy $e097
    sty $da83
    jsr sub_04d49a
    lda #$008b
    jsl QueueSound
    brl loc_04ce4e
    ldy $e099
    sty $da83
    ldx $0012,y
    lda $001c,x
    and #$7fff
    sta $001c,x
    lda $0030,y
    bit #$0400
    bne loc_04d233
    lda #$0040
    trb $1b8a
    dec $da59
    bne loc_04d233
    lda #$0100
    trb $d7f8

loc_04d233:
    jsr sub_04d49a
    lda #$008b
    jsl QueueSound
    brl loc_04ce4e
    jsl sub_7f6181
    brl loc_04ce4e
    ldy $e097
    sty $da83
    bra loc_04d255
    .db $ac,$99,$e0,$8c,$83,$da

loc_04d255:
    lda $002e,y
    bit #$0008
    beq loc_04d285
    lda $0030,y
    bit #$0400
    bne loc_04d27c
    lda #$0800
    tsb $1b92
    lda $000e,y
    sta $e0a1
    lda #$0001
    sta $000e,y
    lda #$003c
    bra loc_04d29b

loc_04d27c:
    lda #$0001
    sta $da85
    brl loc_04ce4e

loc_04d285:
    lda $002e,y
    bit #$0002
    bne loc_04d298
    lda #$0008
    tsb $1b92
    lda #$0028
    bra loc_04d29b

loc_04d298:
    lda #$001e

loc_04d29b:
    sta $da85
    lda #$001a
    jsl QueueSound
    brl loc_04ce4e
    dec $da85
    bne loc_04d2ca
    lda $1b92
    bit #$0800
    beq loc_04d2c1
    lda #$0800
    trb $1b92
    lda $e0a1
    sta $000e,y

loc_04d2c1:
    lda #$0008
    trb $1b92
    brl loc_04ce4e

loc_04d2ca:
    jsl sub_7f66cf
    rts
    .db $ac,$97,$e0,$8c,$83,$da,$20,$ab,$d4,$a9,$8b,$00,$22,$09,$6e,$7f
    .db $82,$6c,$fb,$ac,$07,$db,$b9,$1c,$00,$09,$00,$40,$99,$1c,$00,$a9
    .db $1d,$00,$99,$20,$00,$a9,$00,$00,$99,$22,$00,$a9,$48,$00,$8d,$85
    .db $da,$a9,$8b,$00,$22,$09,$6e,$7f,$82,$44,$fb,$ce,$85,$da,$f0,$01
    .db $60,$ac,$07,$db,$b9,$1c,$00,$29,$ff,$bf,$99,$1c,$00,$82,$2f,$fb
    .db $ad,$f3,$da,$29,$ff,$00,$85,$02,$ad,$f6,$da,$29,$ff,$00,$85,$08
    .db $ad,$11,$db,$29,$ff,$00,$85,$04,$ad,$12,$db,$29,$ff,$00,$85,$0a
    .db $a9,$04,$00,$85,$97,$e2,$20,$20,$fb,$f2,$c2,$20,$60

sub_04d34c:
    sep #$20
.a8
    lda $02
    cmp #$80
    bcc loc_04d359
    sec
    sbc $3a
    bra loc_04d35c

loc_04d359:
    clc
    adc $3a

loc_04d35c:
    sta $0020,y
    sta $3a
    lda $08
    cmp #$60
    bcs loc_04d36c
    clc
    adc $3c
    bra loc_04d36f

loc_04d36c:
    sec
    sbc $3c

loc_04d36f:
    sta $0022,y
    sta $3c
    rep #$20
.a16
    rts

sub_04d377:
    ldx $d7fc
    jsr (tbl_04d37e,x)
    rts

tbl_04d37e:
    .db $8c,$d3,$cb,$d3,$d3,$d3,$a4,$d3,$05,$d4,$8d,$d3,$ee,$d3

loc_04d38c:
    rts

loc_04d38d:
    ldy $e0a3

loc_04d390:
    ldx $0000,y
    phx
    lda $002e,y
    bit #$0080
    beq loc_04d3a0
    jsl sub_7f66bb

loc_04d3a0:
    ply
    bne loc_04d390
    rts

loc_04d3a4:
    jsl sub_7f568f
    ldy $e0a3

loc_04d3ab:
    ldx $0000,y
    phx
    lda $002e,y
    bit #$0010
    beq loc_04d3bb
    jsl sub_7f66a6

loc_04d3bb:
    lda $002e,y
    bit #$0050
    beq loc_04d3c7
    jsl sub_7f66b2

loc_04d3c7:
    ply
    bne loc_04d3ab
    rts

loc_04d3cb:
    ldy $e097
    jsl sub_7f66bb
    rts

loc_04d3d3:
    jsl sub_7f55fa
    ldy $e0a3

loc_04d3da:
    ldx $0000,y
    phx
    lda $002e,y
    bit #$0020
    beq loc_04d3ea
    jsl sub_7f66bb

loc_04d3ea:
    ply
    bne loc_04d3da
    rts

loc_04d3ee:
    ldy $e0a3

loc_04d3f1:
    ldx $0000,y
    phx
    lda $002e,y
    bit #$0008
    beq loc_04d401
    jsl sub_7f66bb

loc_04d401:
    ply
    bne loc_04d3f1
    rts

loc_04d405:
    ldy $e08d
    jsl sub_7f66bb
    ldx $e08d
    jsr sub_04cc54
    jsr sub_04d41f
    bcs loc_04d418
    rts

loc_04d418:
    lda #$0040
    tsb $e087
    rts

sub_04d41f:
    sep #$20
.a8
    lda $001c,x
    sta $02
    lda $001f,x
    sta $08
    lda $0020,x
    sta $04
    lda $0022,x
    sta $0a
    lda $0040,x
    sta $97
    jsr sub_04f2fb
    rep #$20
.a16
    rts

sub_04d440:
    rep #$20
    lda $dafb
    eor #$ffff
    inc a
    sta $02
    lda $daf8
    sta $08
    jsr sub_04d686
    lda $3b
    sta $dafd
    lda $51
    sta $daff
    sep #$20
.a8
    lda $daf8
    clc
    adc #$08
    lsr a
    lsr a
    lsr a
    lsr a
    sta $db09
    jsr sub_04d68b
    rep #$20
.a16
    lda $daf2
    clc
    adc $dafd
    cmp #$0c00
    bcc loc_04d485
    cmp #$f400
    bcs loc_04d485
    sta $daf2

loc_04d485:
    lda $daf5
    clc
    adc $daff
    cmp #$1000
    bcc loc_04d499
    cmp #$ac00
    bcs loc_04d499
    sta $daf5

loc_04d499:
    rts

sub_04d49a:
    lda #$001c
    sta $0044,y
    lda #$003f
    sta $0008,y
    sta $0048,y
    bra loc_04d4bc
    .db $a9,$1e,$00,$99,$44,$00,$a9,$46,$00,$99,$08,$00,$99,$48,$00,$80
    .db $00

loc_04d4bc:
    lda #$0000
    sta $0046,y
    lda #$0000
    sta $000e,y
    lda $002e,y
    ora #$6000
    sta $002e,y
    lda #$0011
    sta $0004,y
    rts

sub_04d4d8:
    ldx #$0000
    ldy #$0000

loc_04d4de:
    lda $daf3
    and #$00ff
    clc
    adc $04d533,x
    sta $da98,y
    lda $daf6
    and #$00ff
    clc
    adc $04d53b,x
    sta $da9b,y
    lda $04d543,x
    sta $da9d,y
    sep #$20
.a8
    lda $04d54b,x
    sta $da9f,y
    rep #$20
.a16
    lda $04d553,x
    sta $daa0,y
    sep #$20
.a8
    lda $04d55b,x
    sta $daa2,y
    rep #$20
.a16
    lda $04d563,x
    sta $daa3,y
    tya
    clc
    adc #$000e
    tay
    inx
    inx
    cpx #$0008
    bne loc_04d4de
    rts
    .db $d8,$ff,$28,$00,$d8,$ff,$28,$00,$d8,$ff,$d8,$ff,$28,$00,$28,$00
    .db $70,$02,$90,$fd,$70,$02,$90,$fd,$00,$00,$ff,$ff,$00,$00,$ff,$ff
    .db $70,$02,$70,$02,$90,$fd,$90,$fd,$00,$00,$00,$00,$ff,$ff,$ff,$ff
    .db $2c,$3a,$2c,$7a,$2c,$ba,$2c,$fa

sub_04d56b:
    lda $1b88
    bit #$0020
    bne loc_04d5ee
    lda $db01
    bit #$0001
    beq loc_04d5ee
    lda $1b88
    bit #$0400
    bne loc_04d5dd
    lda $da8d
    bit #$0001
    beq loc_04d5c7
    sep #$20
.a8
    ldy $db53
    lda $000c,y
    sta $db11
    lda $000e,y
    sta $db12
    rep #$20
.a16
    lda #$0030
    trb $da8d
    lda $001c,y
    bit #$0008
    bne loc_04d5bf
    lda $001c,y
    bit #$100e
    bne loc_04d5ee
    sty $db07
    lda #$0010
    tsb $da8d
    bra loc_04d5ee

loc_04d5bf:
    lda #$0020
    tsb $da8d
    bra loc_04d5ee

loc_04d5c7:
    lda #$0030
    trb $da8d
    sep #$20
.a8
    lda $da91
    sta $db11
    lda $da92
    sta $db12
    bra loc_04d5ee

loc_04d5dd:
.a16
    sep #$20
.a8
    ldy $db63
    lda $001c,y
    sta $db11
    lda $001f,y
    sta $db12

loc_04d5ee:
    rep #$20
.a16
    rts

sub_04d5f1:
    lda $db01
    bit #$0001
    beq loc_04d5fc
    brl loc_04d619

loc_04d5fc:
    lda $db01
    bit #$0002
    beq loc_04d607
    brl loc_04d668

loc_04d607:
    lda $da91
    and #$00ff
    sta $04
    lda $da92
    and #$00ff
    sta $0a
    bra loc_04d629

loc_04d619:
    lda $db11
    and #$00ff
    sta $04
    lda $db12
    and #$00ff
    sta $0a

loc_04d629:
    lda $daf3
    and #$00ff
    sta $02
    lda $daf6
    and #$00ff
    sta $08
    lda $02
    sec
    sbc $04
    bne loc_04d649
    lda $08
    sec
    sbc $0a
    bne loc_04d649
    bra loc_04d668

loc_04d649:
    jsr sub_04d66b
    lda $3c
    sta $daf7
    lda $5f
    sta $db09
    lda $db23
    bit #$0402
    bne loc_04d668
    lda $3c
    sta $db19
    lda $5f
    sta $db21

loc_04d668:
    rep #$20
    rts

sub_04d66b:
    jsl sub_7f6a46
    bit #$0080
    beq loc_04d675
    inc a

loc_04d675:
    sta $3c
    xba
    clc
    adc #$0008
    and #$00ff
    lsr a
    lsr a
    lsr a
    lsr a
    sta $5f
    rts

sub_04d686:
    jsl sub_7f69c3
    rts

sub_04d68b:
.a8
    php
    rep #$20
.a16
    lda $1e14
    sta $02
    lda $db09
    and #$00ff
    sta $08
    jsr sub_04d6bd
    stx $1c17
    sty $1c19
    plp
.a8
    rts

sub_04d6a6:
.a16
    lda $1e15
    sta $02
    lda $db21
    and #$00ff
    sta $08
    jsr sub_04d6bd
    stx $1c1b
    sty $1c1d
    rts

sub_04d6bd:
    lda $02
    lsr a
    and #$0003
    tay
    lda $08
    cpy #$0000
    beq loc_04d6d6
    clc
    adc #$0010
    dey
    beq loc_04d6d6
    clc
    adc #$0010

loc_04d6d6:
    clc
    adc $d9ce
    tax
    lda $6a61,x
    and #$00ff
    asl a
    asl a
    asl a
    asl a
    asl a
    clc
    adc $d9c8
    tax
    clc
    adc #$0200
    tay
    rts

sub_04d6f1:
    phx
    lda $db01
    bit #$0001
    bne loc_04d708
    lda $db01
    bit #$0002
    beq loc_04d705
    brl loc_04d783

loc_04d705:
    brl loc_04d8a1

loc_04d708:
    lda $dafb
    eor #$ffff
    inc a
    sta $02
    lda $daf8
    sta $08
    jsr sub_04d686
    lda $3b
    bpl loc_04d721
    eor #$ffff
    inc a

loc_04d721:
    sta $02
    lda $51
    bpl loc_04d72b
    eor #$ffff
    inc a

loc_04d72b:
    sta $08
    lda $02
    cmp $08
    bcc loc_04d739
    lda $02
    sta $5f
    bra loc_04d73d

loc_04d739:
    lda $08
    sta $5f

loc_04d73d:
    lda $daf3
    and #$00ff
    sta $02
    lda $daf6
    and #$00ff
    sta $04
    lda $db11
    and #$00ff
    sta $08
    lda $db12
    and #$00ff
    sta $0a
    jsr sub_04d9b9
    lda $3a
    sta $dafd
    lda $3c
    sta $daff
    sep #$20
.a8
    lda $97
    sta $db0d
    lda $e4
    sta $db0e
    lda $54
    sta $db0f
    rep #$20
.a16
    lda #$0001
    trb $db01

loc_04d783:
    lda $daf2
    sta $02
    lda $daf5
    sta $04
    lda $db11
    and #$00ff
    sta $08
    lda $db12
    and #$00ff
    sta $0a
    lda $dafb
    sta $5f
    lda $dafd
    sta $3a
    lda $daff
    sta $3c
    lda $db0d
    and #$00ff
    sta $97
    lda $db0e
    and #$00ff
    sta $e4
    lda $db0f
    and #$00ff
    sta $54
    lda $db01
    sta $50
    jsr sub_04d99a
    jsr sub_04da02
    lda $02
    sta $daf2
    lda $04
    sta $daf5
    lda $50
    sta $db01
    sep #$20
.a8
    lda $54
    sta $db0f
    rep #$20
.a16
    lda $50
    bit #$0010
    bne loc_04d7f1
    brl loc_04d8a1

loc_04d7f1:
    lda #$0024
    trb $da8b
    lda #$ffff
    trb $db01
    lda #$0100
    tsb $db01
    lda $da8d
    bit #$0020
    beq loc_04d80e
    brl loc_04d865

loc_04d80e:
    lda $da8d
    bit #$0010
    bne loc_04d819
    brl loc_04d8a1

loc_04d819:
    ldx $db07
    lda $001c,x
    bit #$8000
    beq loc_04d827
    brl loc_04d8a1

loc_04d827:
    lda $db11
    sta $da95
    lda $db12
    sta $da96
    lda #$0002
    sta $1b74
    lda #$0010
    trb $da8d
    lda #$0004
    trb $1b88
    lda #$0060
    tsb $1b88
    lda #$001e
    tsb $1b8c
    lda #$0000
    sta $da7d
    ldx $db07
    lda $001c,x
    ora #$0080
    sta $001c,x
    bra loc_04d8a1

loc_04d865:
    lda $1b8c
    bit #$0001
    bne loc_04d8a1
    lda $1b88
    bit #$0020
    bne loc_04d8a1
    lda $1b94
    bit #$ffff
    bne loc_04d8a1
    lda #$0020
    trb $da8d
    lda #$003f
    tsb $1b8c
    lda #$0004
    trb $1b8c
    lda #$0100
    tsb $1b94
    lda #$0008
    tsb $1b8a
    lda #$0004
    sta $db29

loc_04d8a1:
    rep #$20
    plx
    rts

sub_04d8a5:
    lda $dafb
    sta $db1b
    lda $db15
    and #$00ff
    sta $02
    lda $db18
    and #$00ff
    sta $08
    lda $daf3
    and #$00ff
    sta $04
    lda $daf6
    and #$00ff
    sta $0a
    lda $db01
    bit #$0002
    beq loc_04d8f4
    lda #$0200
    trb $db23
    lda #$000c
    sta $97
    jsr sub_04f2fb
    bcs loc_04d8ed
    lda #$0002
    tsb $db23
    jsr sub_04d925
    rts

loc_04d8ed:
    lda #$0002
    trb $db23
    rts

loc_04d8f4:
    lda $db23
    bit #$0200
    bne loc_04d924
    lda $dafb
    asl a
    asl a
    sta $db1b
    lda #$0002
    sta $97
    jsr sub_04f2fb
    bcs loc_04d918
    lda #$0002
    tsb $db23
    jsr sub_04d925
    rts

loc_04d918:
    lda #$0002
    trb $db23
    lda #$0200
    tsb $db23

loc_04d924:
    rts

sub_04d925:
    php
    rep #$20
    jsr sub_04d66b
    lda $3c
    sta $db19
    lda $5f
    sta $db21
    jsr sub_04d96a
    plp
    rts

sub_04d93a:
    lda $dafb
    eor #$ffff
    inc a
    sta $02
    lda $daf8
    sta $08
    jsr sub_04d686
    lda $3b
    sta $dafd
    lda $51
    sta $daff
    lda $daf2
    clc
    adc $dafd
    sta $daf2
    lda $daf5
    clc
    adc $daff
    sta $daf5
    rts

sub_04d96a:
    lda $db1b
    eor #$ffff
    inc a
    sta $02
    lda $db1a
    sta $08
    jsr sub_04d686
    lda $3b
    sta $db1d
    lda $51
    sta $db1f
    lda $db14
    clc
    adc $db1d
    sta $db14
    lda $db17
    clc
    adc $db1f
    sta $db17
    rts

sub_04d99a:
    lda $3a
    jsr sub_04d9a9
    sta $3a
    lda $3c
    jsr sub_04d9a9
    sta $3c
    rts

sub_04d9a9:
    pha
    lda $1b92
    bit #$0400
    beq loc_04d9b7
    pla
    asl a
    asl a
    asl a
    rts

loc_04d9b7:
    pla
    rts

sub_04d9b9:
    php
    rep #$20
    lda $08
    sec
    sbc $02
    sta $97
    bpl loc_04d9cf
    lda $5f
    eor #$ffff
    inc a
    sta $3a
    bra loc_04d9d3

loc_04d9cf:
    lda $5f
    sta $3a

loc_04d9d3:
    lda $0a
    sec
    sbc $04
    sta $e4
    bpl loc_04d9e6
    lda $5f
    eor #$ffff
    inc a
    sta $3c
    bra loc_04d9ea

loc_04d9e6:
    lda $5f
    sta $3c

loc_04d9ea:
    lda $97
    bpl loc_04d9f4
    eor #$ffff
    inc a
    sta $97

loc_04d9f4:
    lda $e4
    bpl loc_04d9fe
    eor #$ffff
    inc a
    sta $e4

loc_04d9fe:
    stz $54
    plp
    rts

sub_04da02:
    php
    sep #$20
.a8
    lda $03
    cmp $08
    bne loc_04da16
    lda $05
    cmp $0a
    bne loc_04da16
    rep #$20
.a16
    brl loc_04dabb

loc_04da16:
.a8
    rep #$20
.a16
    lda $97
    beq loc_04da83
    lda $e4
    beq loc_04da8c
    lda $97
    sec
    sbc $e4
    bmi loc_04da55
    lda $50
    bit #$0004
    bne loc_04da35
    lda $02
    clc
    adc $3a
    sta $02

loc_04da35:
    lda $50
    bit #$0008
    bne loc_04da53
    lda $54
    clc
    adc $e4
    cmp $97
    bmi loc_04da51
    pha
    lda $04
    clc
    adc $3c
    sta $04
    pla
    sec
    sbc $97

loc_04da51:
    sta $54

loc_04da53:
    bra loc_04da93

loc_04da55:
    lda $50
    bit #$0008
    bne loc_04da63
    lda $04
    clc
    adc $3c
    sta $04

loc_04da63:
    lda $50
    bit #$0004
    bne loc_04da81
    lda $54
    clc
    adc $97
    cmp $e4
    bmi loc_04da7f
    pha
    lda $02
    clc
    adc $3a
    sta $02
    pla
    sec
    sbc $e4

loc_04da7f:
    sta $54

loc_04da81:
    bra loc_04da93

loc_04da83:
    lda $04
    clc
    adc $3c
    sta $04
    bra loc_04da93

loc_04da8c:
    lda $02
    clc
    adc $3a
    sta $02

loc_04da93:
    sep #$20
.a8
    lda $03
    cmp $08
    rep #$20
.a16
    bne loc_04daa2
    lda #$0004
    tsb $50

loc_04daa2:
    sep #$20
.a8
    lda $05
    cmp $0a
    rep #$20
.a16
    bne loc_04dab1
    lda #$0008
    tsb $50

loc_04dab1:
    lda $50
    and #$000c
    cmp #$000c
    bne loc_04dac0

loc_04dabb:
    lda #$0010
    tsb $50

loc_04dac0:
    plp
    rts

sub_04dac2:
    lda $d7fa
    bit #$0010
    beq loc_04dad0
    ldx $da19
    jsr (tbl_04dad1,x)

loc_04dad0:
    rts

tbl_04dad1:
    .db $e5,$da,$f5,$db,$20,$dc,$3e,$dc,$57,$dc,$e6,$da,$eb,$da,$f0,$da
    .db $f5,$da,$fa,$da

loc_04dae5:
    rts

loc_04dae6:
    jsr sub_04db6f
    bra loc_04daff

loc_04daeb:
    jsr sub_04dbb2
    bra loc_04daff

loc_04daf0:
    jsr sub_04db13
    bra loc_04daff

loc_04daf5:
    jsr sub_04db44
    bra loc_04daff

loc_04dafa:
    jsr sub_04db06
    bra loc_04daff

loc_04daff:
    lda #$0000
    sta $da19
    rts

sub_04db06:
    jsr sub_04db13
    jsr sub_04db44
    jsr sub_04db6f
    jsr sub_04dbb2
    rts

sub_04db13:
    lda #$0001
    sta $1bca
    ldx $db67
    beq loc_04db43

loc_04db1e:
    lda $0000,x
    sta $1bc0
    lda $001c,x
    bit #$0001
    beq loc_04db3e
    bit #$0004
    bne loc_04db3e
    bit #$1000
    bne loc_04db3e
    jsr sub_04b42c
    dec $1bca
    beq loc_04db43

loc_04db3e:
    ldx $1bc0
    bne loc_04db1e

loc_04db43:
    rts

sub_04db44:
    lda #$0001
    sta $1bca
    ldx $db67
    beq loc_04db6e

loc_04db4f:
    lda $0000,x
    sta $1bc0
    lda $001c,x
    bit #$0004
    beq loc_04db69
    lda $0028,x
    tay
    jsr sub_04b4b0
    dec $1bca
    beq loc_04db6e

loc_04db69:
    ldx $1bc0
    bne loc_04db4f

loc_04db6e:
    rts

sub_04db6f:
    lda #$0001
    sta $1bca
    ldy $e0a3
    beq loc_04dbb1

loc_04db7a:
    lda $0000,y
    sta $1bc0
    lda $002e,y
    bit #$8760
    bne loc_04dba5
    lda $002e,y
    bit #$0008
    beq loc_04db9c
    ldx $0012,y
    lda $001c,x
    and #$7fff
    sta $001c,x

loc_04db9c:
    jsl sub_7f6181
    dec $1bca
    beq loc_04dbaa

loc_04dba5:
    ldy $1bc0
    bne loc_04db7a

loc_04dbaa:
    lda #$008b
    jsl QueueSound

loc_04dbb1:
    rts

sub_04dbb2:
    lda #$0001
    sta $1bca
    ldy $e0a3
    beq loc_04dbf4

loc_04dbbd:
    lda $0000,y
    sta $1bc0
    lda $002e,y
    bit #$8f58
    bne loc_04dbe8
    lda $002e,y
    bit #$0008
    beq loc_04dbdf
    ldx $0012,y
    lda $001c,x
    and #$7fff
    sta $001c,x

loc_04dbdf:
    jsl sub_7f6181
    dec $1bca
    beq loc_04dbed

loc_04dbe8:
    ldy $1bc0
    bne loc_04dbbd

loc_04dbed:
    lda #$002b
    jsl QueueSound

loc_04dbf4:
    rts

loc_04dbf5:
    lda #$0020
    tsb $d7fa
    lda #$0020
    tsb $1b86
    lda #$ffff
    tsb $1b8c
    lda #$0002
    trb $1b8c
    lda #$0004
    tsb $1b90
    lda #$0002
    trb $db01
    lda #$0004
    sta $da19
    rts

loc_04dc20:
    lda $da43
    bne loc_04dc3d
    lda #$0002
    tsb $1b8c
    lda #$0004
    trb $1b8c
    lda #$0002
    sta $da7f
    lda #$0006
    sta $da19

loc_04dc3d:
    rts

loc_04dc3e:
    lda $da7f
    beq loc_04dc44
    rts

loc_04dc44:
    lda #$00ec
    sta $da95
    lda #$0018
    sta $da96
    lda #$0008
    sta $da19
    rts

loc_04dc57:
    sep #$20
.a8
    lda $1dd5
    sta $1dd1
    lda $1ddb
    sta $1dd7
    rep #$20
.a16
    lda #$000b
    sta $1bb5
    lda $d7f2
    sta $1ba5
    lda #$0008
    sta $da7d
    lda #$0002
    sta $1b74
    rts

sub_04dc80:
    ldx $da21
    jsr (tbl_04dc87,x)
    rts

tbl_04dc87:
    .db $8d,$dc,$8e,$dc,$a7,$dc

loc_04dc8d:
    rts

loc_04dc8e:
    lda #$003f
    tsb $1b8c
    lda #$0002
    tsb $da1d
    lda #$0002
    tsb $db33
    lda #$0004
    sta $da21
    rts

loc_04dca7:
    lda $da1d
    bit #$0002
    bne loc_04dcbb
    lda #$0003
    sta $1b74
    lda #$0000
    sta $da21

loc_04dcbb:
    rts

sub_04dcbc:
.a8
    rep #$20
.a16
    lda #$ffff
    trb $1b92
    sep #$20
.a8
    jsl sub_04dea9
    jsr sub_04e9cc
    sep #$20
    lda #$02
    sta $1b9e
    lda #$05
    sta $1ba2
    rep #$20
.a16
    lda #$0010
    trb $1b86
    lda #$0004
    trb $1b96
    lda #$003f
    tsb $1b8c
    lda #$0002
    trb $1b9c
    lda #$0100
    tsb $1b9c
    lda #$0200
    tsb $1b9c
    lda #$0400
    tsb $1b9c
    lda #$0080
    tsb $1b9c
    lda #$0004
    tsb $1b9c
    lda #$0008
    tsb $1c67
    sep #$20
.a8
    lda #$02
    tsb $1cb8
    rep #$20
.a16
    lda #$0040
    tsb $1b92
    sep #$20
.a8
    lda #$08
    trb $1cd3
    rep #$20
.a16
    stz $1c21
    stz $1c1f
    sep #$20
.a8
    lda #$01
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda #$0080
    sta $7024c4
    sep #$20
.a8
    ldx #$1000
    stx $4a
    ldx #$3000
    stx $4c
    ldx #$4000
    stx $44
    ldx #$a000
    stx $46
    phb
    lda #$7e
    pha
    plb
    jsr sub_04de71
    lda #$06
    sta $1c24
    lda #$0a
    sta $1be0
    lda #$08
    sta $d981
    ldx #$0000
    stx $da77
    ldx #$2000
    stx $1bea
    ldx #$0000
    stx $f582
    ldx #$0000
    stx $e07f
    ldx #$0008
    stx $e07d
    rep #$20
.a16
    lda #$0200
    trb $e087
    sep #$20
.a8
    ldx #$0000
    stx $e083
    ldx #$000a
    stx $e081
    lda #$0a
    sta $f4e5
    lda #$0a
    sta $f4e6
    lda #$0a
    sta $f4ec
    lda #$0a
    sta $f4ed
    ldx #$0000
    stx $f4f5
    lda #$04
    sta $f4f3
    lda #$04
    sta $f4f4
    lda $1c12
    beq loc_04dde9
    dec a
    beq loc_04dddf
    lda #$04
    sta $f4ec
    lda #$04
    sta $f4ed

loc_04dddf:
    rep #$20
.a16
    lda #$0400
    tsb $1b9c
    sep #$20

loc_04dde9:
.a8
    plb
    rep #$20
.a16
    lda #$0010
    tsb $1b84
    sep #$20
.a8
    rep #$20
.a16
    lda $1b88
    bit #$0010
    sep #$20
.a8
    beq loc_04de1b
    jsl sub_0b8c17
    jsl sub_0b8c52
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
    bra loc_04de2f

loc_04de1b:
    jsl sub_0b8c17
    ldx #$000a
    stx $1c6e
    rep #$20
.a16
    lda #$0002
    tsb $1c67
    sep #$20

loc_04de2f:
.a8
    jsr sub_04ea8c
    jsl sub_048001
    jsr sub_04ed33
    jsr sub_04b2f2
    jsr sub_04e920
    rep #$20
.a16
    lda $1b88
    bit #$0010
    beq loc_04de56
    lda #$0010
    trb $1b88
    lda #$006f
    jsl QueueSound

loc_04de56:
    sep #$20
.a8
    jsl sub_0b9f4c
    jsl sub_04edb5
    jsr sub_04ed7c
    jsl sub_03d847
    phb
    lda #$7e
    pha
    plb
    jsr sub_04d68b
    plb
    rts

sub_04de71:
    php
    sep #$20
    lda #$14
    sta $db11
    lda #$a0
    sta $db12
    lda $1e14
    sta $db41
    lda $daf3
    sta $db15
    lda $daf6
    sta $db18
    rep #$20
.a16
    lda #$0001
    tsb $db01
    jsr sub_04d5f1
    lda #$0001
    trb $db01
    jsr sub_04d68b
    jsr sub_04d6a6
    plp
.a8
    rts

sub_04dea9:
    php
    phb
    lda #$7e
    pha
    plb
    rep #$20
.a16
    lda $1b86
    bit #$0040
    beq loc_04debc
    brl loc_04e076

loc_04debc:
    lda #$0040
    tsb $1b86
    lda $1b86
    bit #$0002
    beq loc_04decd
    brl loc_04e05e

loc_04decd:
    lda #$ffff
    trb $1b88
    lda #$ffff
    trb $1b8a
    lda #$ffff
    trb $1b96
    lda #$0000
    sta $1b74
    lda $1b86
    bit #$0080
    beq loc_04def0
    brl loc_04defb

loc_04def0:
    bit #$0001
    beq loc_04def8
    brl loc_04defb

loc_04def8:
    brl loc_04e055

loc_04defb:
    lda #$0002
    tsb $d7f8
    phb
    pha
    phx
    sep #$20
.a8
    lda #$00
    pha
    plb
    ldx #$d9fd
    stx WMADDL
    lda #$00
    sta WMADDH
    lda #$08
    sta DMAP0
    lda #$80
    sta BBAD0
    ldx #$ee9f
    stx A1TL0
    lda #$03
    sta A1B0
    ldx #$0e30
    stx DASL0
    lda #$01
    sta MDMAEN
    rep #$20
.a16
    plx
    pla
    plb
    ldy #$000f
    lda #$0000
    sta $d7fe
    sep #$20

loc_04df45:
.a8
    sta $d800,y
    sta $d7c2,y
    sta $d7a2,y
    sta $d7b2,y
    dey
    bpl loc_04df45
    ldy #$0005
    lda #$00

loc_04df59:
    sta $d794,y
    dey
    bpl loc_04df59
    rep #$20
.a16
    lda $1c02
    and #$007f
    sta $d9f9
    lda $1c02
    and #$000f
    sta $d9fb
    lda $1c02
    and #$007f
    sta $d9f5
    jsl sub_7f058c
    and #$001f
    sta $d9f7
    sep #$20
.a8
    lda #$64
    sta $db47
    ldx #$0000
    stx $d816
    stx $d818
    stx $da5b
    stx $d7e4
    stx $d7e6
    rep #$20
.a16
    ldx $d7f2
    lda $04e079,x
    and #$00ff
    sta $da2d
    sta $da31
    lda $04e07c,x
    and #$00ff
    sta $da35
    sta $da37
    sta $da39
    sta $da3f
    lda $04e07f,x
    and #$00ff
    sta $da2b
    sta $da29
    sep #$20
.a8
    ldx $d7f2
    lda $04ee29,x
    sta $da41
    jsr sub_04e0dc
    jsr sub_04e0fe
    jsr sub_04e123
    jsr sub_04e1c3
    jsr sub_04e30c
    jsr sub_04e560
    jsr sub_04e88e
    jsr sub_04e73b
    jsr sub_04e14b
    ldx #$0000
    stx $1c12
    rep #$20
.a16
    ldx $1ba3
    lda $04e04c,x
    sta $da01
    ldx $d7f2
    lda $04e052,x
    and #$00ff
    sta $da53
    lda #$0020
    tsb $1b90
    lda $1b86
    bit #$0080
    beq loc_04e034
    lda #$0001
    tsb $d7fa
    ldx #$0002
    stx $d9fd
    brl loc_04e070

loc_04e034:
    lda #$0001
    tsb $d7fa
    ldx #$0002
    stx $d9fd
    sep #$20
.a8
    lda #$01
    sta $1c10
    rep #$20
.a16
    brl loc_04e070
    .db $00,$00,$1a,$00,$50,$00,$01,$01,$02

loc_04e055:
    lda #$000a
    sta $da0d
    brl loc_04e070

loc_04e05e:
    sep #$20
.a8
    rep #$20
.a16
    lda #$0010
    tsb $1b88
    sep #$20
.a8
    jsl sub_03e312
    bra loc_04e076

loc_04e070:
.a16
    lda #$0200
    tsb $db01

loc_04e076:
.a8
    plb
    plp
    rtl
    .db $02,$03,$06,$02,$04,$04,$04,$07,$0a

sub_04e082:
.a16
    phx
    phy
    php
    rep #$20
    tyx
    jsl sub_7f620f
    dec $da43
    plp
    ply
    plx
    rts

sub_04e093:
    phx
    phy
    php
    rep #$20
    lda $001c,x
    and #$0000
    sta $001c,x
    lda $001e,x
    and #$0000
    sta $001e,x
    ldy $0002,x
    bne loc_04e0bd
    ldy $0000,x
    sty $db67
    lda #$0000
    sta $0002,y
    bra loc_04e0cf

loc_04e0bd:
    phx
    lda $0000,x
    tax
    sta $0000,y
    cmp #$0000
    beq loc_04e0ce
    tya
    sta $0002,x

loc_04e0ce:
    plx

loc_04e0cf:
    lda $db65
    sta $0000,x
    stx $db65
    plp
    ply
    plx
    rts

sub_04e0dc:
.a8
    rep #$20
.a16
    stz $db67
    stz $db45
    lda #$db69
    sta $db65
    ldy #$000f

loc_04e0ed:
    tax
    clc
    adc #$0056
    sta $0000,x
    dey
    bne loc_04e0ed
    stz $0000,x
    sep #$20
.a8
    rts

sub_04e0fe:
    rep #$20
.a16
    stz $e073
    stz $da43
    stz $e0a3
    lda #$e0a7
    sta $e0a5
    ldy #$0017

loc_04e112:
    tax
    clc
    adc #$0052
    sta $0000,x
    dey
    bne loc_04e112
    stz $0000,x
    sep #$20
.a8
    rts

sub_04e123:
    lda #$14
    sta $d9b6
    lda #$a0
    sta $d9b7
    lda #$00
    sta $d9b4
    lda #$06
    sta $d9b5
    jsr sub_04e4da
    rep #$20
.a16
    lda $001c,y
    ora #$1002
    sta $001c,y
    sep #$20
.a8
    sty $db45
    rts

sub_04e14b:
    lda #$14
    sta $db25
    lda #$14
    sta $d9b6
    lda #$a0
    sta $db26
    lda #$a0
    sta $d9b7
    lda #$08
    sta $d9b4
    lda #$08
    sta $d9b5
    jsr sub_04e4da
    rep #$20
.a16
    lda $001c,y
    ora #$2008
    sta $001c,y
    lda $db45
    sta $daed
    lda #$0006
    sta $dae7
    sta $daef
    sty $db5d
    jsl sub_7f6141
    txy
    sty $db5f
    sep #$20
.a8
    lda #$14
    sta $001c,y
    lda #$a0
    sta $001f,y
    rep #$20
.a16
    lda #$2710
    sta $0026,y
    lda #$0000
    sta $000e,y
    lda $002e,y
    ora #$2100
    sta $002e,y
    lda #$0008
    sta $0036,y
    lda #$0006
    sta $0040,y
    sep #$20
.a8
    rts

sub_04e1c3:
    php
    ldx #$0014
    ldy #$0005

loc_04e1ca:
    phx
    phy
    sep #$20
    lda $04ef1e,x
    sta $d9b6
    lda $04ef1f,x
    sta $d9b7
    lda $04ef20,x
    sta $d9b8
    lda $04ef21,x
    sta $d9b9
    tya
    sta $d9b4
    sta $d9b5
    jsr sub_04e4da
    rep #$20
.a16
    lda $001c,y
    ora #$1201
    sta $001c,y
    ply
    plx
    dey
    dex
    dex
    dex
    dex
    bpl loc_04e1ca
    lda $1ba3
    asl a
    tax
    lda $04ee54,x
    sta $02
    lda $04ee52,x
    tax
    lda $1c02
    jsl sub_7f6dbd
    tyx
    sep #$20
.a8
    lda $da2d
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
    tax
    sep #$20
.a8
    rep #$20
.a16
    clc
    adc $02
    sta $daeb
    plp
.a8
    rts

sub_04e245:
.a16
    php
    rep #$20

loc_04e248:
    ldx $daeb
    lda $04ee52,x
    and #$00ff
    sta $02
    ldy $db67

loc_04e257:
    lda $001c,y
    bit #$0001
    beq loc_04e266
    lda $0004,y
    cmp $02
    beq loc_04e26c

loc_04e266:
    lda $0000,y
    tay
    bne loc_04e257

loc_04e26c:
    lda $1b86
    bit #$0100
    bne loc_04e28b
    lda #$0100
    tsb $1b86
    lda #$0001
    sta $003e,y
    lda $001c,y
    and #$fdff
    sta $001c,y
    bra loc_04e29a

loc_04e28b:
    lda $0004,y
    and #$00ff
    asl a
    tax
    lda $04e2fe,x
    sta $003e,y

loc_04e29a:
    lda $001c,y
    ora #$2000
    sta $001c,y
    lda $001c,y
    and #$efff
    sta $001c,y
    lda #$0002
    sta $0036,y
    lda #$8000
    sta $0020,y
    inc $daeb
    lda $d7f2
    cmp #$0002
    bne loc_04e2de
    lda $1b86
    bit #$1000
    beq loc_04e2eb
    lda $daef
    cmp #$0006
    beq loc_04e2de
    cmp $0006,y
    bne loc_04e2de
    lda #$0004
    tsb $1b8a

loc_04e2de:
    tyx
    lda $001c,y
    ora #$8000
    sta $001c,y
    jsr sub_04e3b9

loc_04e2eb:
    inc $da2f
    dec $d99a
    beq loc_04e2f6
    brl loc_04e248

loc_04e2f6:
    lda #$0080
    tsb $1b9c
    plp
    rts
    .db $38,$04,$28,$05,$dc,$05,$b0,$04,$18,$06,$90,$06,$f0,$00

sub_04e30c:
.a8
    ldx $d7f2
    lda $d7e1,x
    cmp $04e3b6,x
    bpl loc_04e31b
    brl loc_04e3b5

loc_04e31b:
    lda #$a8
    sta $d9b6
    lda #$30
    sta $d9b7
    lda #$00
    sta $d9b4
    lda #$0b
    sta $d9b5
    jsr sub_04e4da
    rep #$20
.a16
    lda #$0006
    sta $0008,y
    lda $001c,y
    ora #$2040
    sta $001c,y
    lda #$0100
    tsb $1b8a
    sep #$20
.a8
    sty $db4d
    jsl sub_7f6141
    txy
    sty $db4f
    rep #$20
.a16
    lda $db4d
    sta $0012,y
    tax
    tya
    sta $0028,x
    lda #$0000
    sta $0004,y
    sta $000e,y
    sep #$20
.a8
    lda #$a8
    sta $001c,y
    lda #$30
    sta $001f,y
    rep #$20
.a16
    lda $002e,y
    ora #$8000
    sta $002e,y
    lda #$000b
    sta $0036,y
    lda #$0027
    sta $0044,y
    lda #$0000
    sta $0046,y
    lda #$0030
    sta $0048,y
    lda $002e,y
    ora #$4000
    sta $002e,y
    lda $0030,y
    ora #$0010
    sta $0030,y
    lda #$0003
    sta $0040,y
    sep #$20

loc_04e3b5:
.a8
    rts
    .db $0d,$13,$14

sub_04e3b9:
.a16
    inc $da57
    jsl sub_7f6132
    txa
    sta $0012,y
    sep #$20
.a8
    lda $000c,x
    clc
    adc #$04
    sta $001c,y
    sta $0020,y
    lda $000e,x
    sec
    sbc #$04
    sta $001f,y
    sta $0022,y
    rep #$20
.a16
    lda #$0000
    sta $001a,y
    sta $001d,y
    lda #$0000
    sta $0004,y
    lda #$0007
    sta $0032,y
    lda $002e,y
    ora #$0008
    sta $002e,y
    lda $002e,y
    and #$dfff
    sta $002e,y
    lda $0030,y
    ora #$0400
    sta $0030,y
    lda #$0006
    sta $0036,y
    lda #$000a
    sta $0040,y
    lda #$0000
    sta $000e,y
    lda $d99a
    sta $003e,y
    ldx #$0031
    jsl sub_7f63e8
    rts

sub_04e430:
    phx
    jsl sub_7f6132
    rep #$20
    lda #$ec00
    sta $001b,y
    lda #$1800
    sta $001e,y
    lda $1b8a
    bit #$0080
    bne loc_04e46c
    sep #$20
.a8
    lda $000c,x
    sta $0020,y
    lda $000e,x
    sta $0022,y
    rep #$20
.a16
    lda #$1800
    sta $0026,y
    lda #$0005
    sta $0004,y
    ldx #$0031
    bra loc_04e4a1

loc_04e46c:
    lda $db61
    sta $0012,y
    lda $0030,y
    ora #$0400
    sta $0030,y
    lda $d99c
    sta $02
    lda $d99e
    sta $08
    lda #$000e
    sta $3a
    lda #$000e
    sta $3c
    jsr sub_04d34c
    lda #$2000
    sta $0026,y
    lda #$0003
    sta $0004,y
    ldx #$0032

loc_04e4a1:
    jsl sub_7f63e8
    inc $da57
    lda $002e,y
    ora #$0008
    sta $002e,y
    lda $002e,y
    ora #$2000
    sta $002e,y
    lda #$0007
    sta $0032,y
    lda #$0006
    sta $0036,y
    lda #$0002
    sta $0040,y
    lda #$0003
    sta $000e,y
    lda #$0000
    sta $003e,y
    plx
    rts

sub_04e4da:
.a8
    phx
    ldx #$0000
    rep #$20
.a16
    txy
    ldx $db65
    bne loc_04e4ec
    sep #$20
.a8
    tyx
    jmp loc_04ef6a

loc_04e4ec:
.a16
    lda $0000,x
    sta $db65
    tya
    bne loc_04e503
    lda $db67
    sta $0000,x
    stz $0002,x
    stx $db67
    bra loc_04e511

loc_04e503:
    lda $0000,y
    sta $0000,x
    txa
    sta $0000,y
    tya
    sta $0002,x

loc_04e511:
    ldy $0000,x
    beq loc_04e51a
    txa
    sta $0002,y

loc_04e51a:
    sep #$20
.a8
    txy
    lda $d9b6
    sta $000c,y
    lsr a
    lsr a
    lsr a
    sta $0014,y
    lda $d9b7
    sta $000e,y
    lsr a
    lsr a
    lsr a
    sta $0016,y
    lda $d9b8
    sta $0010,y
    lda $d9b9
    sta $0012,y
    lda $d7f2
    asl a
    sta $0008,y
    rep #$20
.a16
    lda $d9b4
    and #$00ff
    sta $0004,y
    lda $d9b5
    and #$00ff
    sta $0006,y
    sep #$20
.a8
    plx
    rts

sub_04e560:
    rep #$20
.a16
    lda $d7f2
    asl a
    tax
    lda $04e6f2,x
    sta $db51
    sep #$20
.a8
    rts

sub_04e571:
.a16
    php
    rep #$20
    ldx $db51
    lda $04e6f2,x
    bne loc_04e580
    brl loc_04e64c

loc_04e580:
    inx
    inx
    stx $db51
    tax
    sep #$20
.a8
    lda $04e6f2,x
    sta $da3b
    sta $d98f
    inx

loc_04e593:
    lda $da39
    bne loc_04e59b
    brl loc_04e64c

loc_04e59b:
    lda #$07
    sta $d9b5
    lda #$08
    sta $d9b4
    lda $04e6f2,x
    sta $d9bd
    inx
    rep #$20
.a16
    lda $04e6f2,x
    inx
    inx
    phx
    tax
    sep #$20
.a8
    lda $04e6f2,x
    sta $d9b6
    lda $04e6f3,x
    sta $d9b7
    lda $04e6f4,x
    sta $d9b8
    lda $04e6f5,x
    sta $d9b9
    jsr sub_04e4da
    lda $04e6f6,x
    sta $002a,y
    sta $d9ba
    lda $04e6f7,x
    sta $002c,y
    sta $d9bb
    lda $04e6f8,x
    sta $002e,y
    lda $04e6f9,x
    sta $0030,y
    sty $d9be
    rep #$20
.a16
    lda $001c,y
    ora #$2004
    sta $001c,y
    lda $001e,y
    and #$fffe
    sta $001e,y
    lda $d98f
    and #$0001
    beq loc_04e622
    lda $001e,y
    ora #$0001
    sta $001e,y

loc_04e622:
    lda $d9bd
    and #$00ff
    tax
    lda $7f6c10,x
    sta $0018,y
    lda #$0001
    sta $0036,y
    sep #$20
.a8
    jsr sub_04e64e
    inc $da41
    inc $da41
    sep #$20
    plx
    dec $d98f
    beq loc_04e64c
    brl loc_04e593

loc_04e64c:
    plp
.a16
    rts

sub_04e64e:
.a8
    php
    rep #$30
.a16
    jsl sub_7f6132
    dec $da3f
    lda $da3f
    asl a
    tax
    sep #$20
.a8
    lda $048e0a,x
    clc
    adc #$08
    sta $001c,y
    lda $048e0b,x
    clc
    adc #$08
    sta $001f,y
    lda $d9b6
    sta $0020,y
    lda $d9b7
    sta $0022,y
    rep #$20
.a16
    lda #$1000
    sta $0026,y
    jsl sub_7f698b
    sep #$20
.a8
    lda $d9b4
    sta $0032,y
    rep #$20
.a16
    lda $002e,y
    ora #$6040
    sta $002e,y
    lda $0030,y
    ora #$0004
    sta $0030,y
    lda #$0000
    sta $000e,y
    rep #$20
    lda #$0000
    sta $0044,y
    lda #$0001
    sta $0004,y
    lda #$0001
    sta $0008,y
    sep #$20
.a8
    lda #$08
    sta $0040,y
    rep #$20
.a16
    ldx $d9be
    tya
    sta $0028,x
    txa
    sta $0012,y
    lda #$0007
    sta $0036,y
    lda $da41
    sta $0008,x
    sta $0034,y
    lda #$0032
    sta $003c,y
    lda #$0001
    sta $0038,y
    plp
.a8
    rts
    .db $06,$00,$0a,$00,$10,$00,$16,$00,$00,$00,$1d,$00,$24,$00,$00,$00
    .db $2b,$00,$32,$00,$00,$00,$02,$00,$39,$00,$02,$41,$00,$02,$04,$39
    .db $00,$06,$41,$00,$02,$08,$39,$00,$0a,$41,$00,$02,$0c,$39,$00,$0e
    .db $41,$00,$02,$10,$39,$00,$12,$41,$00,$50,$28,$20,$80,$30,$58,$08
    .db $90,$e0,$60,$38,$a0,$70,$78,$40,$a8

sub_04e73b:
    php
    sep #$20
    lda #$50
    sta $d9b6
    lda #$70
    sta $d9b7
    lda #$09
    sta $d9b5
    jsr sub_04e4da
    rep #$20
.a16
    lda $001c,y
    ora #$2020
    sta $001c,y
    sty $e07b
    jsl sub_7f6141
    txy
    sty $e079
    lda $e07b
    sta $0012,y
    tax
    tya
    sta $0028,x
    lda #$0000
    sta $0004,y
    sta $000e,y
    sep #$20
.a8
    lda #$50
    sta $001c,y
    lda #$70
    sta $001f,y
    rep #$20
.a16
    lda $002e,y
    ora #$2400
    sta $002e,y
    lda #$0002
    tsb $e087
    lda #$0009
    sta $0036,y
    lda #$0000
    sta $0024,y
    lda #$003c
    sta $000c,y
    lda #$0014
    sta $003c,y
    lda #$0001
    sta $0038,y
    lda #$0008
    sta $0040,y
    ldx $1ba3
    lda $04e7c7,x
    sta $0008,y
    plp
.a8
    rts
    .db $b0,$04,$b0,$04,$b0,$04

sub_04e7cd:
.a16
    php
    rep #$30
    lda $da53
    sta $d9b0
    dec a
    sta $d9b2

loc_04e7da:
    jsl sub_7f6132
    lda $002e,y
    ora #$4080
    sta $002e,y
    lda #$0009
    sta $0032,y
    lda #$0004
    sta $0036,y
    lda #$0001
    sta $0038,y
    lda #$0005
    sta $003c,y
    sep #$20
.a8
    ldx $d9b2
    rep #$20
.a16
    lda $04e88a,x
    and #$00ff
    sep #$20
.a8
    sta $0020,y
    lda #$1c
    clc
    adc $1c06,x
    rep #$20
.a16
    and #$00ff
    sta $0034,y
    tax
    lda $00b0f8,x
    sta $5f
    lda $00b118,x
    sta $3a
    lda $00b138,x
    sta $3c
    jsl sub_7f642b
    lda #$ec00
    sta $001b,y
    lda #$1800
    sta $001e,y
    lda #$2000
    sta $0026,y
    lda #$0060
    sta $0022,y
    jsl sub_7f698b
    lda #$0003
    sta $0004,y
    lda #$0001
    sta $000e,y
    lda #$ffff
    sta $0044,y
    lda #$0001
    sta $0008,y
    lda #$0008
    sta $0040,y
    lda #$0018
    sta $0042,y
    inc $da55
    dec $d9b2
    bmi loc_04e882
    brl loc_04e7da

loc_04e882:
    lda #$0020
    tsb $1c0e
    plp
    rts
    .db $40,$70,$a0,$d0

sub_04e88e:
.a8
    lda #$ec
    sta $d9b6
    lda #$18
    sta $d9b7
    lda #$50
    sta $d9b8
    lda #$70
    sta $d9b9
    lda #$0a
    sta $d9b4
    lda #$0c
    sta $d9b5
    jsr sub_04e4da
    rep #$20
.a16
    lda $001c,y
    ora #$0010
    sta $001c,y
    sep #$20
.a8
    sty $db61
    jsl sub_7f6141
    txy
    sty $db63
    sep #$20
    lda #$ec
    sta $001c,y
    lda #$18
    sta $001f,y
    rep #$20
.a16
    lda #$0050
    sta $0020,y
    lda #$0070
    sta $0022,y
    lda #$000b
    sta $0032,y
    lda #$0016
    sta $0044,y
    lda #$0000
    sta $0046,y
    lda #$0050
    sta $0048,y
    lda #$0000
    sta $000e,y
    lda #$0006
    sta $0040,y
    lda $002e,y
    ora #$6200
    sta $002e,y
    lda #$000a
    sta $0036,y
    lda $0030,y
    ora #$0010
    sta $0030,y
    sep #$20
.a8
    rts

sub_04e920:
    rep #$20
.a16
    lda $1b68
    asl a
    asl a
    tax
    lda $03b875,x
    sta $1b6e
    lda $1b86
    bit #$0080
    bne loc_04e959
    lda $1b92
    bit #$8000
    bne loc_04e951
    sep #$20
.a8
    ldx $1b6e
    jsl sub_03e1e5
    lda $1c10
    jsl sub_7f6df8
    bra loc_04e968

loc_04e951:
.a16
    lda #$003b
    sta $1b6e
    bra loc_04e95f

loc_04e959:
    lda #$0036
    sta $1b6e

loc_04e95f:
    sep #$20
.a8
    ldx $1b6e
    jsl sub_03e1e5

loc_04e968:
    rts

sub_04e969:
    lda $45
    lsr a
    lsr a
    sta $003038
    rep #$20
.a16
    lda $44
    sta $700014
    lda #$0000
    clc
    adc $44
    sta $700068
    lda #$2000
    sta $70006a
    lda #$7800
    sta $700030
    sta $7000ac
    ldx $da8b
    stx $db43
    lda $1b88
    bit #$0400
    bne loc_04e9af
    jsl sub_0b9f87
    lda $70038e
    sta $7eefb2

loc_04e9af:
    phy
    phx
    pha
    rep #$30
    ldx #$db2d
    ldy #$0396
    lda #$0017
    phb
    mvn $7e,$70
    plb
    rep #$20
    rep #$10
    pla
    plx
    ply
    sep #$20
.a8
    rts

sub_04e9cc:
    phb
    lda #$7e
    pha
    plb
    jsl sub_7f1737
    rep #$20
.a16
    lda #$0930
    jsl AllocBlock
    sta $d9ca
    tay
    ldx #$0000
    sep #$20

loc_04e9e7:
.a8
    lda $04f002,x
    sta $6a61,y
    inx
    iny
    cpx #$0930
    bne loc_04e9e7
    rep #$20
.a16
    lda $d9ca
    clc
    adc #$6a61
    sec
    sbc #$f002
    sta $d9cc
    sep #$20
.a8
    rep #$20
.a16
    lda #$1000
    jsl AllocBlock
    sta $d9c8
    rep #$20
    lda #$0000
    sta $7000a2
    lda #$0018
    sta $70006a
    lda #$978c
    sta $700068
    sep #$20
.a8
    jsl sub_03d60a
    sep #$20
    ldx $d9c8
    phb
    lda #$00
    pha
    plb
    lda #$80
    sta BBAD0
    rep #$20
.a16
    txa
    clc
    adc #$6a61
    sta WMADDL
    sep #$20
.a8
    lda #$00
    sta WMADDH
    ldx #$3b50
    stx A1TL0
    lda #$70
    sta A1B0
    ldx #$1000
    stx DASL0
    stz DMAP0
    lda #$01
    sta MDMAEN
    plb
    rep #$20
.a16
    lda #$0030
    jsl AllocBlock
    sta $d9ce
    tay
    ldx #$0000
    sep #$20

loc_04ea7c:
.a8
    lda $04ef3a,x
    sta $6a61,y
    inx
    iny
    cpx #$0030
    bne loc_04ea7c
    plb
    rts

sub_04ea8c:
    phb
    lda #$00
    pha
    plb
    jsl sub_0387ac
    jsr sub_04eab3
    jsl sub_03ee00
    jsr sub_04eaf6
    jsr sub_04eaf7
    jsr sub_04eb25
    jsr sub_04eb80
    jsr sub_04ec1a
    jsr sub_04ec48
    jsr sub_04ec76
    plb
    rts

sub_04eab3:
    lda #$09
    sta BGMODE
    lda #$49
    sta BG1SC
    lda #$51
    sta BG2SC
    sta $1c54
    lda #$59
    sta BG3SC
    lda $4d
    sec
    sbc #$10
    and #$f0
    lsr a
    lsr a
    lsr a
    lsr a
    sta BG12NBA
    sta $1c57
    lda #$04
    sta BG34NBA
    lda #$03
    sta OBSEL
    lda #$17
    sta TM
    sta $1c51
    sta $1c53
    lda #$00
    sta TS
    rts

sub_04eaf6:
    rts

sub_04eaf7:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$abec
    sta $700068
    lda #$4800
    sta $17e4
    lda #$1000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_04eb25:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$8aa8
    sta $700068
    lda #$0000
    sta $17e4
    lda #$1800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0017
    sta $70006a
    lda #$ff08
    sta $700068
    lda #$2000
    sta $17e4
    lda #$1800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_04eb80:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$afe0
    sta $700068
    lda #$5000
    sta $17e4
    lda #$1000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rep #$20
.a16
    ldx #$05c0
    ldy #$05c0
    lda #$0080
    sta $02
    jsr sub_04ac5f
    phb
    lda #$7e7e
    pha
    plb
    plb
    lda #$2000
    tsb $1b92
    jsr sub_04a4a5
    plb
    sep #$20
.a8
    rep #$30
.a16
    phx
    lda #$b33c
    sta $700068
    lda #$3b50
    sta $70002c
    lda #$0000
    sta $7000a2
    sep #$20
.a8
    lda #$19
    sta $70006a
    lda #$01
    ldx #$d9ff
    jsl sub_7f787b
    plx
    sep #$20
    rep #$10
    phb
    lda #$7f
    pha
    plb
    ldx #$0000
    ldy #$0000

loc_04ec09:
    lda $703b50,x
    sta $d400,y
    inx
    inx
    iny
    cpx #$0800
    bne loc_04ec09
    plb
    rts

sub_04ec1a:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0016
    sta $70006a
    lda #$ffb4
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

sub_04ec48:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$b230
    sta $700068
    lda #$5800
    sta $17e4
    lda #$1000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_04ec76:
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
    lda #$00
    sta CGADD
    lda #$70
    ldx #$8258
    ldy #$0200
    jsl DmaToCgram
    lda #$00
    sta $17f2
    lda #$70
    sta $17ee
    ldx #$8258
    stx $17ec
    ldx #$0200
    stx $17ef
    jsl sub_7f0a76
    lda #$70
    sta $17ee
    ldx #$8458
    stx $17ec
    ldx #$0100
    stx $17ef
    lda #$00
    ldx #$f1e5
    jsl sub_7f0a6e
    lda #$70
    sta $17ee
    ldx #$8958
    stx $17ec
    ldx #$0100
    stx $17ef
    lda #$00
    ldx #$f2e5
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
    lda $7edb49
    cmp #$32
    bcc loc_04ed32
    ldx #$0000
    cmp #$50
    bcc loc_04ed2f
    ldx #$0006

loc_04ed2f:
    jsr sub_04abe3

loc_04ed32:
    rts

sub_04ed33:
    phb
    lda #$00
    pha
    plb
    rep #$20
.a16
    lda #$4000
    sta $700068
    lda #$2000
    sta $70006a
    sep #$20
.a8
    sep #$20
    lda #$0b
    ldx #$87b2
    jsl sub_7f787b
    sep #$20
    rep #$10
    rep #$20
.a16
    lda #$a000
    sta $700068
    lda #$2000
    sta $70006a
    sep #$20
.a8
    sep #$20
    lda #$0b
    ldx #$87b2
    jsl sub_7f787b
    sep #$20
    rep #$10
    plb
    rts

sub_04ed7c:
    lda #$43
    sta DMAP2
    lda #$0d
    sta BBAD2
    ldx #$0061
    stx A1TL2
    lda #$7f
    sta A1B2
    sta DASB2
    lda #$43
    sta DMAP3
    lda #$0f
    sta BBAD3
    ldx #$0068
    stx A1TL3
    lda #$7f
    sta A1B3
    sta DASB3
    lda $129b
    ora #$0c
    sta $129b
    rts

sub_04edb5:
    php
    phb
    sep #$20
    lda #$00
    pha
    plb
    rep #$20
.a16
    lda #$0000
    sta $7eefb0
    sta $7eefb4
    sta $7eefb2
    sta $7eefb6
    sta $193c
    sta $1940
    sta $193a
    sta $193e
    sta $7ff40a
    sta $7ff40e
    sta $7ff40c
    sta $7ff410
    sta $1cbb
    sta $1cbd
    sta $1cbf
    sta $1cc1
    sta $1cc3
    sta $1cc5
    sep #$20
.a8
    sta BG1HOFS
    sta BG1HOFS
    sta BG1VOFS
    sta BG1VOFS
    sta BG2HOFS
    sta BG2HOFS
    sta BG2VOFS
    sta BG2VOFS
    sta BG3HOFS
    sta BG3HOFS
    sta BG3VOFS
    sta BG3VOFS
    plb
    plp
    rtl
    .db $00,$04,$0c,$10,$10,$10,$30,$10,$50,$30,$10,$30,$30,$30,$50,$50
    .db $10,$00,$01,$04,$01,$08,$01,$40,$01,$44,$01,$48,$01,$80,$01,$84
    .db $01,$88,$01,$c0,$01,$c4,$01,$c8,$01,$06,$00,$0c,$00,$14,$00,$18
    .db $00,$14,$00,$54,$00,$01,$00,$03,$00,$04,$00,$03,$01,$04,$01,$04
    .db $03,$00,$01,$02,$00,$01,$03,$00,$01,$04,$05,$01,$00,$00,$02,$03
    .db $00,$02,$04,$00,$02,$05,$00,$03,$04,$05,$03,$00,$00,$04,$05,$01
    .db $02,$03,$04,$02,$01,$01,$02,$05,$01,$03,$04,$05,$03,$01,$01,$04
    .db $05,$04,$03,$02,$05,$03,$02,$02,$04,$05,$03,$04,$05,$00,$01,$02
    .db $03,$04,$05,$00,$01,$03,$05,$04,$02,$00,$01,$04,$05,$02,$03,$05
    .db $01,$00,$02,$03,$04,$00,$02,$03,$04,$05,$01,$00,$02,$04,$01,$03
    .db $05,$00,$02,$05,$03,$01,$04,$00,$03,$04,$02,$05,$01,$05,$03,$00
    .db $04,$01,$02,$00,$04,$05,$01,$02,$03,$01,$02,$03,$04,$05,$00,$04
    .db $02,$01,$05,$03,$00,$01,$02,$05,$03,$00,$04,$01,$03,$04,$02,$00
    .db $05,$05,$03,$01,$00,$02,$04,$01,$04,$05,$00,$03,$02,$04,$03,$02
    .db $01,$05,$00,$05,$03,$02,$01,$04,$00,$02,$04,$05,$00,$01,$03,$03
    .db $04,$05,$02,$00,$01,$c8,$50,$28,$90,$20,$20,$10,$78,$88,$20,$30
    .db $90,$e0,$80,$38,$98,$80,$58,$28,$90,$90,$a0,$40,$98,$14,$a0,$40
    .db $d8,$20,$0e,$0c,$0a,$08,$06,$04,$02,$00,$02,$04,$06,$08,$0a,$0c
    .db $0e,$42,$40,$2e,$2c,$2a,$28,$26,$24,$22,$24,$26,$28,$2a,$2c,$2e
    .db $40,$64,$62,$60,$4e,$4c,$4a,$48,$46,$44,$46,$48,$4a,$4c,$4e,$60
    .db $62

loc_04ef6a:
    sep #$20
    jsl sub_008027
    rep #$20
.a16
    rts
    .db $60,$00,$00,$9c,$c2,$14,$00,$ce,$c1,$19,$00,$2b,$c2,$23,$00,$ce
    .db $c1,$28,$00,$04,$c2,$fe,$ff,$76,$c2,$ff,$ff,$00,$00,$9c,$c2,$26
    .db $00,$b3,$c1,$2a,$00,$bc,$c1,$2d,$00,$da,$c1,$32,$00,$ce,$c1,$3c
    .db $00,$04,$c2,$55,$00,$44,$c2,$5f,$00,$ce,$c1,$6e,$00,$2b,$c2,$78
    .db $00,$04,$c2,$82,$00,$ce,$c1,$be,$00,$da,$c1,$fe,$ff,$76,$c2,$ff
    .db $ff,$00,$00,$9c,$c2,$23,$00,$bc,$c1,$31,$00,$04,$c2,$34,$00,$b3
    .db $c1,$3c,$00,$5d,$c2,$5a,$00,$44,$c2,$5f,$00,$ce,$c1,$6e,$00,$2b
    .db $c2,$73,$00,$ce,$c1,$78,$00,$04,$c2,$91,$00,$ce,$c1,$a5,$00,$da
    .db $c1,$eb,$00,$da,$c1,$1d,$01,$da,$c1,$fe,$ff,$76,$c2,$ff,$ff
.a8
    php
    phb
    sep #$20
    lda #$7e
    pha
    plb
    rep #$20
.a16
    jsl sub_7f535e
    plb
    plp
.a8
    rtl

sub_04f013:
.a16
    php
    lda #$ffff
    sta $02
    lda $da8f
    beq loc_04f078
    dec a
    sta $da8f
    bne loc_04f029
    stz $da11
    bra loc_04f078

loc_04f029:
    cmp #$000c
    bne loc_04f033
    lda #$fdff
    sta $02

loc_04f033:
    ldx #$0004
    ldy #$0000

loc_04f039:
    lda $da97,y
    clc
    adc $da9d,y
    sta $da97,y
    sep #$20
.a8
    lda $da99,y
    adc $da9f,y
    sta $da99,y
    rep #$20
.a16
    lda $da9a,y
    clc
    adc $daa0,y
    sta $da9a,y
    sep #$20
.a8
    lda $da9c,y
    adc $daa2,y
    sta $da9c,y
    rep #$20
.a16
    lda $daa3,y
    and $02
    sta $daa3,y
    tya
    clc
    adc #$000e
    tay
    dex
    bne loc_04f039

loc_04f078:
    plp
    rts

UpdateMapCursor:    ; adds the d-pad speed (momentum, up to $400) to the cursor $da91/$da92 (watch: both written at 04:F181 and 04:F19B while the cursor moved on the map)
    php
    lda $1292
    bit #$0f00
    bne loc_04f09e
    lda #$0002
    trb $da8b
    ldx #$0000
    stx $d97c
    ldx #$0000
    stx $d978
    ldx #$0000
    stx $d97a
    brl loc_04f168

loc_04f09e:
    lda $d97c
    clc
    adc #$0080
    cmp #$0400
    bcc loc_04f0ad
    lda #$0400

loc_04f0ad:
    sta $d97c
    lda #$0002
    tsb $da8b
    lda $da8d
    bit #$0001
    beq loc_04f0c1
    brl loc_04f113

loc_04f0c1:
    sep #$20
.a8
    lda $1293
    bit #$08
    bne loc_04f0d6
    bit #$04
    bne loc_04f0e1
    ldx #$0000
    stx $d97a
    bra loc_04f0e7

loc_04f0d6:
    lda $d97d
    eor #$ff
    inc a
    sta $d97b
    bra loc_04f0e7

loc_04f0e1:
    lda $d97d
    sta $d97b

loc_04f0e7:
    lda $1293
    bit #$02
    bne loc_04f0fa
    bit #$01
    bne loc_04f105
    ldx #$0000
    stx $d978
    bra loc_04f10b

loc_04f0fa:
    lda $d97d
    eor #$ff
    inc a
    sta $d979
    bra loc_04f10b

loc_04f105:
    lda $d97d
    sta $d979

loc_04f10b:
    per $f110
    brl loc_04f16a
    bra loc_04f168

loc_04f113:
.a16
    sep #$20
.a8
    lda $1293
    bit #$08
    bne loc_04f122
    bit #$04
    bne loc_04f12a
    bra loc_04f12f

loc_04f122:
    ldx #$ffdf
    stx $d97b
    bra loc_04f12f

loc_04f12a:
    lda #$11
    sta $d97b

loc_04f12f:
    lda $1293
    bit #$02
    bne loc_04f13c
    bit #$01
    bne loc_04f143
    bra loc_04f148

loc_04f13c:
    lda #$df
    sta $d979
    bra loc_04f148

loc_04f143:
    lda #$11
    sta $d979

loc_04f148:
    per $f14d
    brl loc_04f16a
    .db $c2,$20,$a9,$01,$00,$0c,$8b,$da,$a2,$00,$00,$8e,$7c,$d9,$a2,$00
    .db $00,$8e,$78,$d9,$a2,$00,$00,$8e,$7a,$d9

loc_04f168:
    plp
.a16
    rts

loc_04f16a:
.a8
    lda $da91
    clc
    adc $d979
    cmp #$0c
    bcc loc_04f17f
    cmp #$f4
    bcs loc_04f17b
    bra loc_04f181

loc_04f17b:
    lda #$f4
    bra loc_04f181

loc_04f17f:
    lda #$0c

loc_04f181:
    sta $da91
    lda $da92
    clc
    adc $d97b
    cmp #$10
    bcc loc_04f195
    cmp #$ac
    bcs loc_04f199
    bra loc_04f19b

loc_04f195:
    lda #$10
    bra loc_04f19b

loc_04f199:
    lda #$ac

loc_04f19b:
    sta $da92
    rts

SelectMapUnit:    ; finds the enemy unit under the cursor and stores it in $e09f, bit $40 of $da8d (watch: $e09f written at 04:F295 only while the cursor sat on the first fighters)
.a16
    php
    rep #$20
    lda #$00c7
    trb $da8d
    sep #$20
.a8
    lda $da91
    sta $02
    lda $da92
    sta $08
    lda #$08
    sta $97
    ldy $00
    sty $50
    per $f1c1
    brl loc_04f2c4
    bcs loc_04f1c7
    brl loc_04f263

loc_04f1c7:
    cpy $db45
    bne loc_04f1cf
    brl loc_04f263

loc_04f1cf:
    cpy $db4d
    beq loc_04f1e5
    cpy $e07b
    bne loc_04f1e5
    rep #$20
.a16
    lda $1b8c
    bit #$0002
    sep #$20
.a8
    beq loc_04f263

loc_04f1e5:
    lda $000c,y
    sta $da93
    sta $db3d
    lda $000e,y
    sta $da94
    sta $db3f
    lda $0006,y
    sta $db2f
    lda $0008,y
    sta $db31
    lda $0004,y
    sta $db57
    rep #$20
.a16
    lda #$0001
    tsb $db2d
    cpy $db4d
    bne loc_04f219
    brl loc_04f298

loc_04f219:
    cpy $e07b
    bne loc_04f22b
    lda $e093
    beq loc_04f298
    lda #$000a
    sta $db2f
    bra loc_04f298

loc_04f22b:
    lda #$0001
    tsb $da8d
    sty $db55
    lda $da8d
    bit #$0008
    bne loc_04f249
    lda #$0008
    tsb $da8d
    lda #$000b
    jsl QueueSound

loc_04f249:
    lda $001c,y
    bit #$0004
    bne loc_04f25b
    bit #$0008
    beq loc_04f261
    lda #$0004
    bra loc_04f25e

loc_04f25b:
    lda #$0002

loc_04f25e:
    tsb $da8d

loc_04f261:
    bra loc_04f298

loc_04f263:
.a8
    rep #$20
.a16
    lda #$0008
    trb $da8d
    lda $1b8c
    bit #$0002
    beq loc_04f298
    sep #$20
.a8
    lda $da91
    sta $02
    lda $da92
    sta $08
    lda #$04
    sta $97
    per $f288
    brl loc_04f29a
    bcc loc_04f298
    rep #$20
.a16
    lda #$0040
    tsb $da8d
    sep #$20
.a8
    sty $e09f

loc_04f298:
    plp
.a16
    rts

loc_04f29a:
.a8
    ldy $e0a3

loc_04f29d:
    rep #$20
.a16
    lda $002e,y
    bit #$8740
    sep #$20
.a8
    bne loc_04f2bb
    lda $001c,y
    sta $04
    lda $001f,y
    sta $0a
    per $f2b8
    brl sub_04f2fb
    bcs loc_04f2c2

loc_04f2bb:
    ldx $0000,y
    txy
    bne loc_04f29d
    clc

loc_04f2c2:
    rts
    .db $60

loc_04f2c4:
    ldy $db67

loc_04f2c7:
    rep #$20
.a16
    lda $001c,y
    bit #$1000
    sep #$20
.a8
    bne loc_04f2f1
    rep #$20
.a16
    lda $001c,y
    bit #$2000
    sep #$20
.a8
    beq loc_04f2f1
    lda $000c,y
    sta $04
    lda $000e,y
    sta $0a
    per $f2ee
    brl sub_04f2fb
    bcs loc_04f2fa

loc_04f2f1:
    ldx $0000,y
    txy
    cpy $50
    bne loc_04f2c7
    clc

loc_04f2fa:
    rts

sub_04f2fb:
    lda $04
    clc
    adc $97
    cmp $02
    bcc loc_04f321
    lda $04
    sec
    sbc $97
    cmp $02
    bcs loc_04f321
    lda $0a
    clc
    adc $97
    cmp $08
    bcc loc_04f321
    lda $0a
    sec
    sbc $97
    cmp $08
    bcs loc_04f321
    sec
    rts

loc_04f321:
    clc
    rts
    .db $60,$08,$da,$5a,$c2,$30,$98,$c9,$20,$02,$30,$15,$38,$e9,$20,$02
    .db $4a,$4a,$48,$29,$03,$00,$aa,$68,$4a,$4a,$18,$69,$20,$02,$a8,$80
    .db $0b,$4a,$4a,$48,$29,$03,$00,$aa,$68,$4a,$4a,$a8,$e2,$20,$bf,$51
    .db $6c,$7f,$19,$3f,$ea,$99,$3f,$ea,$7a,$fa,$28,$60,$08,$da,$5a,$c2
    .db $30,$9c,$3b,$e8,$c0,$20,$02,$30,$06,$a9,$20,$02,$8d,$3b,$e8,$98
    .db $38,$ed,$3b,$e8,$4a,$4a,$48,$29,$03,$00,$0a,$aa,$68,$4a,$4a,$18
    .db $6d,$3b,$e8,$a8,$bf,$55,$6c,$7f,$19,$3f,$ea,$99,$3f,$ea,$7a,$fa
    .db $28,$60,$08,$c2,$30,$da,$ad,$c0,$1b,$da,$5a,$a2,$0a,$00,$22,$bd
    .db $6d,$7f,$8e,$41,$1c,$8c,$43,$1c,$7a,$fa,$ad,$43,$1c,$09,$00,$02
    .db $85,$5f,$ad,$c2,$1b,$85,$02,$62,$02,$00,$82,$48,$00,$ae,$c4,$1b
    .db $ca,$f0,$0a,$da,$62,$02,$00,$82,$06,$00,$fa,$80,$f3,$fa,$28,$60
    .db $e2,$20,$ad,$c2,$1b,$38,$e9,$08,$8d,$c2,$1b,$c2,$20,$ad,$41,$1c
    .db $da,$5a,$a2,$0a,$00,$22,$bd,$6d,$7f,$8e,$41,$1c,$8c,$43,$1c,$7a
    .db $fa,$ad,$43,$1c,$09,$00,$02,$85,$5f,$ad,$c2,$1b,$85,$02,$62,$02
    .db $00,$82,$01,$00,$60,$08,$c2,$20,$da,$a5,$02,$38,$e9,$00,$01,$99
    .db $3f,$e8,$c8,$c8,$a5,$5f,$29,$ff,$00,$aa,$bf,$5d,$6c,$7f,$29,$ff
    .db $00,$18,$69,$00,$30,$99,$3f,$e8,$c8,$c8,$fa,$28,$60,$60

sub_04f431:
    php
    phx
    sty $1e80
    rep #$30
.a16
    jsr sub_04f53d
    jsr sub_04f603
    jsr sub_04f644
    jsr sub_04f5a3
    ldy $1e80
    plx
    plp
.a8
    rts

sub_04f44a:
.a16
    php
    phx
    sty $1e80
    rep #$30
    phx
    lda $f5a0
    clc
    adc $f5a2
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    and #$0007
    asl a
    tax
    lda $f5a4
    clc
    adc $04f4a0,x
    sta $1e78
    lda $f5a6
    clc
    adc $04f4b0,x
    sta $1e7a
    plx
    lda $f5a0
    clc
    adc $f5a2
    and #$001f
    sta $1e7e
    lda #$000f
    sta $1e7c
    jsr sub_04f726
    lda #$004b
    clc
    adc $f5a2
    sta $f5a2
    ldy $1e80
    plx
    plp
    rts
    .db $00,$00,$04,$00,$01,$00,$fd,$ff,$fc,$ff,$02,$00,$fe,$ff,$01,$00
    .db $00,$00,$03,$00,$fd,$ff,$02,$00,$fe,$ff,$03,$00,$01,$00,$fc,$ff
    .db $08,$da,$8c,$80,$1e,$c2,$30,$20,$d0,$f4,$ac,$80,$1e,$fa,$28,$60
    .db $ad,$76,$1e,$1a,$29,$1f,$00,$8d,$76,$1e,$ae,$67,$db,$f0,$43,$bd
    .db $1c,$00,$89,$01,$00,$f0,$35,$bd,$0c,$00,$29,$ff,$00,$8d,$78,$1e
    .db $bd,$0e,$00,$29,$ff,$00,$8d,$7a,$1e,$bd,$20,$00,$f0,$1e,$30,$23
    .db $1a,$c9,$22,$00,$90,$05,$a9,$ff,$7f,$80,$18,$9d,$20,$00,$8d,$7e
    .db $1e,$da,$a9,$12,$00,$8d,$7c,$1e,$20,$26,$f7,$fa,$bd,$00,$00,$aa
    .db $d0,$bd,$60,$1a,$29,$1f,$80,$9d,$20,$00,$29,$1f,$00,$8d,$7e,$1e
    .db $da,$a9,$13,$00,$8d,$7c,$1e,$20,$f1,$f6,$fa,$80,$df

sub_04f53d:
    lda $f58c
    beq loc_04f558
    sta $1e7c
    lda $f58a
    inc a
    sta $f58a
    and #$000f
    sta $1e7e
    lda $f588
    jsr sub_04f6a6

loc_04f558:
    rts

sub_04f559:
    phx
    ldy #$000c
    sep #$20
.a8
    lda $001f,x
    cmp #$60
    bcc loc_04f569
    ldy #$000d

loc_04f569:
    xba
    lda $001c,x
    rep #$20
.a16
    sty $1e7c
    jsr sub_04f6a6
    plx
    rts

loc_04f577:
    ldx $e0a3

loc_04f57a:
    lda $002e,x
    bit #$0020
    beq loc_04f585
    jsr sub_04f559

loc_04f585:
    lda $0000,x
    tax
    bne loc_04f57a
    rts

loc_04f58c:
    ldx $e0a3
    beq loc_04f5a2

loc_04f591:
    lda $002e,x
    bit #$8728
    bne loc_04f59c
    jsr sub_04f559

loc_04f59c:
    lda $0000,x
    tax
    bne loc_04f591

loc_04f5a2:
    rts

sub_04f5a3:
    ldx $f55a
    beq loc_04f5e6
    lda $f558
    inc a
    cmp #$0010
    bcc loc_04f5b4
    lda #$0000

loc_04f5b4:
    sta $f558
    sta $1e7e
    cpx #$0002
    beq loc_04f58c
    cpx #$0003
    beq loc_04f577
    ldx $db67
    beq loc_04f5e6

loc_04f5c9:
    lda $001c,x
    bit #$0002
    bne loc_04f5e0
    bit #$0001
    beq loc_04f5e0
    bit #$2000
    beq loc_04f5e0
    phx
    jsr sub_04f5e7
    plx

loc_04f5e0:
    lda $0000,x
    tax
    bne loc_04f5c9

loc_04f5e6:
    rts

sub_04f5e7:
    ldy #$000c
    sep #$20
.a8
    lda $000e,x
    cmp #$60
    bcc loc_04f5f6
    ldy #$000d

loc_04f5f6:
    xba
    lda $000c,x
    rep #$20
.a16
    sty $1e7c
    jsr sub_04f6a6
    rts

sub_04f603:
    lda $f56c
    beq loc_04f623
    sta $1e7e
    inc a
    cmp #$0040
    bcc loc_04f614
    lda #$0040

loc_04f614:
    sta $f56c
    lda #$000a
    sta $1e7c
    lda $f570
    jsr sub_04f6a6

loc_04f623:
    lda $f56e
    beq loc_04f643
    sta $1e7e
    inc a
    cmp #$0040
    bcc loc_04f634
    lda #$0040

loc_04f634:
    sta $f56e
    lda #$000b
    sta $1e7c
    lda $f570
    jsr sub_04f6a6

loc_04f643:
    rts

sub_04f644:
    lda $f596
    bmi loc_04f674
    beq loc_04f674
    sep #$20
.a8
    lda $f596
    inc $f596
    and #$0f
    rep #$20
.a16
    sta $1e7e
    lda #$0014
    sta $1e7c
    lda $f598
    beq loc_04f66a
    lda #$06ea
    bra loc_04f66d

loc_04f66a:
    lda #$0cea

loc_04f66d:
    clc
    adc $f570
    jsr sub_04f6a6

loc_04f674:
    rts

sub_04f675:
    php
    phx
    sty $1e80
    rep #$20
    jsr sub_04f6c5
    jsr sub_04f726
    ldy $1e80
    plx
    plp
    rts

sub_04f688:
    php
    phx
    sty $1e80
    sep #$20
.a8
    stz $1e79
    stz $1e7b
    stz $1e7d
    stz $1e7f
    rep #$20
.a16
    jsr sub_04f726
    ldy $1e80
    plx
    plp
    rts

sub_04f6a6:
    stz $1e78
    stz $1e7a
    sep #$20
.a8
    sta $1e78
    xba
    sta $1e7a
    rep #$20
.a16
    jsr sub_04f726
    rts

loc_04f6bb:
    phx
    jsr sub_04f6c8
    jsr sub_04f726
    plx
    bra sub_04f6c8

sub_04f6c5:
    lda $0044,x

sub_04f6c8:
    sta $1e7c
    lda $0036,x
    asl a
    and #$00ff
    sta $a7
    lda $001c,x
    and #$00ff
    sta $1e78
    lda $001f,x
    and #$00ff
    sta $1e7a
    lda $0046,x
    and #$00ff
    sta $1e7e
    rts
    .db $60,$20,$38,$f7,$ac,$80,$1e,$62,$02,$00,$82,$27,$fc,$a6,$97,$e2
    .db $20,$bf,$26,$af,$18,$18,$6d,$7a,$1e,$eb,$bf,$25,$af,$18,$18,$6d
    .db $78,$1e,$c2,$20,$99,$3f,$e8,$bf,$27,$af,$18,$99,$41,$e8,$c8,$c8
    .db $c8,$c8,$8c,$80,$1e,$60

sub_04f726:
    jsr sub_04f738
    lda $1e7c
    beq loc_04f737
    jsr sub_04f902
    jsr sub_04f778
    jsr sub_04f902

loc_04f737:
    rts

sub_04f738:
    lda $18af24
    sta $04
    lda $1e7c
    beq loc_04f777
    asl a
    tax
    lda $18af24,x
    tax
    sep #$20
.a8
    stz $0a

loc_04f74e:
    clc
    lda $18af24,x
    bmi loc_04f762
    adc $0a
    sta $0a
    cmp $1e7e
    bcs loc_04f764
    inx
    inx
    bra loc_04f74e

loc_04f762:
    dex
    dex

loc_04f764:
    rep #$20
.a16
    lda $18af25,x
    and #$00ff
    asl a
    adc $04
    tax
    lda $18af24,x
    sta $97

loc_04f777:
    rts

sub_04f778:
    ldx $97
    lda #$00aa
    sta $e4
    lda $18af24,x
    bit #$0080
    beq loc_04f78a
    stz $e4

loc_04f78a:
    and #$007f
    beq loc_04f7ba
    sta $08
    inx
    dec a
    lsr a
    lsr a
    sta $02
    phx
    lda $1e80
    lsr a
    lsr a
    lsr a
    lsr a
    tax
    sep #$20

loc_04f7a2:
.a8
    lda $e4
    sta $7eea3f,x
    iny
    inx
    dec $02
    bpl loc_04f7a2
    rep #$20
.a16
    plx
    ldy $1e80
    jsr sub_04f7bb
    sty $1e80

loc_04f7ba:
    rts

sub_04f7bb:
    lda $18af25,x
    and #$00ff
    eor #$ff80
    clc
    adc #$0080
    clc
    adc $1e7a
    bpl loc_04f7d7
    cmp #$ffe0
    bcs loc_04f7d7
    lda #$e0e0

loc_04f7d7:
    xba
    sep #$20
.a8
    lda $18af24,x
    bpl loc_04f7e4
    bit #$78
    beq loc_04f801

loc_04f7e4:
    clc
    adc $1e78
    rep #$20
.a16
    sta $e83f,y
    lda $18af26,x
    sta $e841,y
    inx
    inx
    inx
    inx

loc_04f7f8:
    iny
    iny
    iny
    iny
    dec $08
    bne sub_04f7bb
    rts

loc_04f801:
.a8
    stx $02
    rep #$20
.a16
    and #$0007
    beq loc_04f81c
    dec a
    beq loc_04f827
    dec a
    beq loc_04f813
    brl loc_04f85c

loc_04f813:
    txa
    clc
    adc $18af25,x
    tax
    bra sub_04f7bb

loc_04f81c:
    jsr sub_04f847
    ldx $a7
    lda $04f928,x
    bra loc_04f830

loc_04f827:
    jsr sub_04f847
    ldx $a7
    lda $04f91e,x

loc_04f830:
    bne loc_04f838
    lda #$e0e0
    sta $e83f,y

loc_04f838:
    clc
    ldx $02
    adc $18af25,x
    sta $e841,y
    inx
    inx
    inx
    bra loc_04f7f8

sub_04f847:
    sep #$20
.a8
    lda $1e7a
    sec
    sbc #$08
    xba
    lda $1e78
    sec
    sbc #$08
    rep #$20
.a16
    sta $e83f,y
    rts

loc_04f85c:
    inx
    lda $1e78
    clc
    adc #$00f0
    sep #$20
.a8
    sta $e83f,y
    rep #$20
.a16
    iny
    lda $1e7a
    clc
    adc #$00f0
    sep #$20
.a8
    sta $e83f,y
    rep #$20
.a16
    iny
    lda $18af24,x
    sta $e83f,y
    iny
    iny
    inx
    inx
    lda $1e78
    clc
    adc #$0000
    sep #$20
.a8
    sta $e83f,y
    rep #$20
.a16
    iny
    lda $1e7a
    clc
    adc #$00f0
    sep #$20
.a8
    sta $e83f,y
    rep #$20
.a16
    iny
    lda $18af24,x
    sta $e83f,y
    iny
    iny

loc_04f8ad:
    inx
    inx
    lda $1e78
    clc
    adc #$00f0
    sep #$20
.a8
    sta $e83f,y
    rep #$20
.a16
    iny
    lda $1e7a
    clc
    adc #$0000
    sep #$20
.a8
    sta $e83f,y
    rep #$20
.a16
    iny
    lda $18af24,x
    sta $e83f,y
    iny
    iny
    inx
    inx
    lda $1e78
    clc
    adc #$0000
    sep #$20
.a8
    sta $e83f,y
    rep #$20
.a16
    iny
    lda $1e7a
    clc
    adc #$0000
    sep #$20
.a8
    sta $e83f,y
    rep #$20
.a16
    iny
    lda $18af24,x
    sta $e83f,y
    iny
    iny
    inx
    inx
    rts

sub_04f902:
    lda $1e80
    ldy #$e0e0

loc_04f908:
    bit #$000f
    beq loc_04f919
    tax
    tya
    sta $e83f,x
    txa
    inc a
    inc a
    inc a
    inc a
    bra loc_04f908

loc_04f919:
    sta $1e80
    rts
    .db $60,$80,$25,$60,$25,$c0,$25,$a0,$25,$00,$00,$80,$21,$60,$21,$c0
    .db $21,$a0,$21,$00,$00,$20,$36,$f9,$6b,$60

sub_04f937:
.a8
    php
    sep #$20
    rep #$10
    lda #$05
    sta $1b9e
    rep #$20
.a16
    lda #$0002
    trb $1b9c
    sep #$20
.a8
    lda #$02
    tsb $1cb8
    rep #$20
.a16
    lda #$0008
    tsb $1c67
    sep #$20
.a8
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
    jsr sub_04fa90
    jsl sub_048001
    jsl sub_0bace5
    jsl sub_0b8c17
    jsl sub_0b8c47
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
    lda #$01
    sta $f3
    lda #$0e
    sta $f4
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

loc_04f9c9:
    jsl sub_03dd81
    jsl sub_0b8c21
    jsl sub_7f1118
    jsl sub_048301
    lda #$18
    sta $00

loc_04f9dd:
    lda $00
    bne loc_04f9dd
    lda $1be0
    beq loc_04f9e9
    brl loc_04f9f2

loc_04f9e9:
    lda #$00
    sta $7ed9ab
    brl loc_04f9c9

loc_04f9f2:
    phb
    lda #$7e
    pha
    plb
    lda #$00
    xba
    lda $1e6e
    sta $1e14
    sta $d810
    lsr a
    asl a
    sta $d812
    lda $1e70
    sta $1e15
    sta $7ed811
    lsr a
    asl a
    sta $d814
    jsl sub_06a3b0
    plb
    lda #$0a
    jsl sub_7f6df8
    lda #$01
    tsb $1cd3
    lda #$10
    sta $1b76
    lda #$04
    sta $1b6a
    bra loc_04fa33

loc_04fa33:
    jsl sub_0b8c17
    jsl sub_0b8c4c
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
    jsl sub_03df36
    lda $1b6a
    sta $1b68
    rep #$20
.a16
    lda #$ffff
    trb $1b9c
    sep #$20
.a8
    rep #$20
.a16
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
    lda #$01
    sta $7ef4e5
    jsl sub_03e312
    plp
    rtl
    .db $00,$01,$02,$03,$04,$05

sub_04fa90:
    phb
    lda #$00
    pha
    plb
    jsl sub_0387ac
    sei
    jsr sub_04fab7
    jsr sub_04fb2e
    jsr sub_04fb5c
    jsr sub_04fb8a
    jsr sub_04fb8b
    jsr sub_04fbb9
    jsr sub_04fbe7
    jsr sub_04fc16
    jsr sub_04fbe8
    plb
    rts

sub_04fab7:
    lda #$09
    sta BGMODE
    lda #$30
    sta BG1SC
    lda #$34
    sta BG2SC
    lda #$50
    sta BG3SC
    lda #$00
    sta BG12NBA
    lda #$02
    sta BG34NBA
    lda #$03
    sta OBSEL
    lda #$13
    sta TM
    sta $1c51
    sta $1c53
    lda #$00
    sta TS
    lda #$00
    sta CGWSEL
    lda #$00
    sta CGADSUB
    jsl sub_04edb5
    lda #$42
    sta DMAP2
    ldx #$003d
    lda #$10
    sta BBAD2
    stx A1TL2
    lda #$7f
    sta A1B2
    sta DASB2
    lda #$42
    sta DMAP3
    lda #$0f
    sta BBAD3
    ldx #$0054
    stx A1TL3
    lda #$7f
    sta A1B3
    sta DASB3
    lda #$0c
    sta $129b
    rts

sub_04fb2e:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0017
    sta $70006a
    lda #$f19c
    sta $700068
    lda #$0000
    sta $17e4
    lda #$2000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_04fb5c:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$a2e8
    sta $700068
    lda #$3000
    sta $17e4
    lda #$0800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_04fb8a:
    rts

sub_04fb8b:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0019
    sta $70006a
    lda #$a554
    sta $700068
    lda #$3400
    sta $17e4
    lda #$0800
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_04fbb9:
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
    lda #$2000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_04fbe7:
    rts

sub_04fbe8:
    rep #$20
.a16
    lda #$0000
    sta $7000a2
    lda #$0018
    sta $70006a
    lda #$9084
    sta $700068
    lda #$6000
    sta $17e4
    lda #$3000
    sta $17e6
    sep #$20
.a8
    jsl sub_03d60a
    jsl sub_7f0da3
    rts

sub_04fc16:
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
    ldx #$7b98
    stx A1TL0
    lda #$70
    sta A1B0
    ldx #$0200
    stx DASL0
    lda #$00
    sta DMAP0
    lda #$01
    sta MDMAEN
    phb
    lda #$00
    pha
    plb
    lda #$80
    sta BBAD0
    ldx #$efe5
    stx WMADDL
    lda #$00
    sta WMADDH
    ldx #$7b98
    stx A1TL0
    lda #$70
    sta A1B0
    ldx #$0200
    stx DASL0
    stz DMAP0
    lda #$01
    sta MDMAEN
    plb
    phb
    lda #$00
    pha
    plb
    lda #$80
    sta BBAD0
    ldx #$f1e5
    stx WMADDL
    lda #$00
    sta WMADDH
    ldx #$7f98
    stx A1TL0
    lda #$70
    sta A1B0
    ldx #$00c0
    stx DASL0
    stz DMAP0
    lda #$01
    sta MDMAEN
    plb
    rts

sub_04fcc8:
    pha
    phx
    phy
    phb
    php
    sep #$20
    rep #$10
    lda #$00
    pha
    plb
    lda $1cb8
    bit #$08
    bne loc_04fce1
    jsr sub_04fcea
    bra loc_04fce4

loc_04fce1:
    jsr sub_04fd1c

loc_04fce4:
    plp
    plb
    ply
    plx
    pla
    rtl

sub_04fcea:
    lda #$01
    tsb $1cc9
    lda #$01
    tsb $1ccc
    ldx #$f40a
    stx $1cc7
    ldx #$f40e
    stx $1cca
    lda #$01
    tsb $1ccf
    lda #$01
    tsb $1cd2
    ldx #$f40c
    stx $1ccd
    ldx #$f410
    stx $1cd0
    rts
    .db $e2,$20,$c2,$10,$60

sub_04fd1c:
    lda #$01
    trb $1cc9
    lda #$01
    trb $1ccc
    rep #$20
.a16
    lda $1cb8
    eor #$0004
    sta $1cb8
    sep #$20
.a8
    lda $1cb8
    bit #$04
    beq loc_04fd4a
    ldx #$f592
    stx $1cc7
    stx $54
    ldx #$f652
    stx $1cca
    bra loc_04fd58

loc_04fd4a:
    ldx #$f412
    stx $1cc7
    stx $54
    ldx #$f4d2
    stx $1cca

loc_04fd58:
    lda #$01
    trb $1ccf
    lda #$01
    trb $1cd2
    lda $1cb8
    bit #$04
    beq loc_04fd79
    ldx #$f892
    stx $1ccd
    stx $fc
    ldx #$f952
    stx $1cd0
    bra loc_04fd87

loc_04fd79:
    ldx #$f712
    stx $1ccd
    stx $fc
    ldx #$f7d2
    stx $1cd0

loc_04fd87:
    jsl sub_7f7034
    rts

sub_04fd8c:
    rep #$20
.a16
    ldx #$0000
    txa
    clc
    adc #$0040
    sta $1bcc
    jsr sub_04fdb2
    sep #$20
.a8
    rtl

sub_04fd9f:
    rep #$20
.a16
    ldx #$0040
    txa
    clc
    adc #$0040
    sta $1bcc
    jsr sub_04fdb2
    sep #$20
.a8
    rtl

sub_04fdb2:
.a16
    stz $19af,x
    stz $19b1,x
    stz $19b3,x
    stz $19b5,x
    stz $19b7,x
    stz $19b9,x
    stz $19bb,x
    stz $19bd,x
    txa
    clc
    adc #$0010
    tax
    cpx $1bcc
    bne sub_04fdb2
    rts
    .incbin "data/027dd6-028000.bin"
