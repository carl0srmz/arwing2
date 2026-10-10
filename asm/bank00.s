.rombank $00

    .db $00,$00,$00,$00,$00,$00

sub_008006:
.cpu
.a16
.i16
    rep #$30
    lda #$7fff
    sta $00192c
    bra loc_00803d
    .db $c2,$30,$a9,$1f,$7c,$8f,$2c,$19,$00,$80,$21

sub_00801c:
    rep #$30
    lda #$03ff
    sta $00192c
    bra loc_00803d

sub_008027:
    rep #$30
    lda #$7fe0
    sta $00192c
    bra loc_00803d

sub_008032:
.a8
    rep #$30
.a16
    lda #$03e0
    sta $00192c
    bra loc_00803d

loc_00803d:
    sep #$20
.a8
    lda #$00
    pha
    plb
    stx $16d8
    stz NMITIMEN
    stz HDMAEN
    sei
    stz TM
    stz TS
    stz W12SEL
    stz W34SEL
    stz WOBJSEL
    stz WBGLOG
    stz WOBJLOG
    stz CGADSUB
    stz COLDATA
    stz TMW
    stz TSW
    stz WH0
    stz WH1
    stz VMADDL
    stz VMADDH
    lda #$80
    sta VMAIN
    lda #$00
    ldx #$7f00

loc_008084:
    sta VMDATAL
    dex
    bne loc_008084
    sep #$20
    rep #$10
    lda #$0f
    sta INIDISP
    rep #$10

loc_008095:
    stz CGADD
    lda $192c
    sta CGDATA
    lda $192d
    sta CGDATA
    ldx #$000f

loc_0080a7:
    ldy #$0000

loc_0080aa:
    dey
    bne loc_0080aa
    dex
    bne loc_0080a7
    stz CGADD
    stz CGDATA
    stz CGDATA
    ldx #$000a

loc_0080bc:
    ldy #$0000

loc_0080bf:
    dey
    bne loc_0080bf
    dex
    bne loc_0080bc
    bra loc_008095
    .incbin "data/0000c7-007bb8.bin"

Reset:
.i8
    sei
    clc
    xce
    jml MainInit
    .incbin "data/007bbf-008000.bin"
