.rombank $0a

.base $7f7e00

loc_7f7e00:
.cpu
.a8
.i16
    lda #$0a
    sta $2d,x
    lda #$0a
    sta $2e,x
    bra loc_7f7e1e
    .db $b5,$21,$09,$01,$95,$21,$b5,$20,$09,$40,$95,$20,$a9,$0a,$95,$2d
    .db $a9,$08,$95,$2e

loc_7f7e1e:
    rep #$20
.a16
    lda #$7e53
    sta $19,x
    sep #$20
.a8
    lda #$7f
    sta $1b,x
    lda $31,x
    ora #$10
    sta $31,x
    lda $20,x
    ora #$08
    sta $20,x
    lda $24,x
    ora #$04
    sta $24,x
    lda $26,x
    ora #$01
    sta $26,x
    lda $26,x
    ora #$10
    sta $26,x
    lda #$00
    sta $28,x
    stz $b26d
    stz $b26e

RunObjectScript:    ; object script interpreter, the per-tick routine of most objects (the 24-bit routine pointer at object +$19): opcode from [$f9], the pointer in object +$2b with bank $44, jumps through the table at $7f7ee8 (code)
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    lda $24,x
    and #$80
    beq loc_7f7e67
    jml loc_7f7e6f

loc_7f7e67:
    ldy $12c3
    sty $cf1f
    bra loc_7f7e75

loc_7f7e6f:
    ldy $12c5
    sty $cf1f

loc_7f7e75:
    rep #$20
.a16
    lda $2b,x
    sta $f9
    sep #$20
.a8
    lda #$44
    sta $fb
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9]
    beq loc_7f7eb1
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    txy
    lda $1911
    rep #$20
.a16
    and #$00ff
    asl a
    asl a
    tax
    lda $7f7ee8,x
    pha
    sep #$20
.a8
    tyx
    rts

loc_7f7eb1:
    rep #$20
.a16
    inc $f9
    inc $2b,x
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9]
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    txy
    lda $1911
    rep #$20
.a16
    and #$00ff
    asl a
    asl a
    tax
    lda $7f82e8,x
    pha
    sep #$20
.a8
    tyx
    rts
    .incbin "data/0500e7-0506d7.bin"
    lda $21,x
    and #$bf
    sta $21,x
    jmp loc_7fcae8
    lda $21,x
    ora #$40
    sta $21,x
    jmp loc_7fcae8
    lda $21,x
    ora #$08
    sta $21,x
    jmp loc_7fcae8
    lda $21,x
    and #$f7
    sta $21,x
    jmp loc_7fcae8
    jsr sub_7fc4bc
    cmp $17,x
    bne loc_7f8506
    jml loc_7fcacf

loc_7f8506:
    inc $17,x
    jmp loc_7f9dde
    rep #$20
.a16
    inc $2b,x
    sep #$20
.a8
    jmp loc_7f9dde
    lda $21,x
    ora #$10
    sta $21,x
    jmp loc_7fcae8
    lda $21,x
    and #$ef
    sta $21,x
    jmp loc_7fcae8
    lda $26,x
    ora #$80
    sta $26,x
    jmp loc_7fcae8

loc_7f852f:
    lda $26,x
    and #$7f
    sta $26,x
    jmp loc_7fcae8
    lda $24,x
    ora #$08
    sta $24,x
    jmp loc_7fcae8

loc_7f8541:
    lda $24,x
    and #$f7
    sta $24,x
    jmp loc_7fcae8
    jsr sub_7fc4bc
    sta $18,x
    lda $21,x
    and #$10
    beq loc_7f8559
    jml loc_7fcad3

loc_7f8559:
    jsr sub_7f855f
    jmp loc_7fcad3

sub_7f855f:
    lda $25,x
    and #$04
    beq loc_7f8569
    jml loc_7f8590

loc_7f8569:
    lda $23,x
    and #$04
    beq loc_7f8573
    jml loc_7f8590

loc_7f8573:
    lda $18,x
    sta $85
    lda $14,x
    sta $1512
    lda $12,x
    sta $1511
    jsl sub_7f2d1f
    lda $26,x
    and #$80
    beq loc_7f858f
    jml loc_7f85fc

loc_7f858f:
    rts

loc_7f8590:
    rep #$20
.a16
    txa
    cmp $1cd8,x
    sep #$20
.a8
    beq loc_7f8573
    lda $18,x
    sta $85
    lda $1cd6,x
    sta $1512
    lda $1cd5,x
    sta $1511
    jsl sub_7f2d1f
    lda $26,x
    and #$80
    beq loc_7f85b8
    jml loc_7f85fc

loc_7f85b8:
    rts

loc_7f85b9:
.a16
    lda $25,x
    and #$f004
    tsb $5c
    phx
    sta $7f
    lda $18,x
    sta $85
    lda $14,x
    jsl sub_7f2d8b
    rep #$20
    lda $02
    sta $32,x
    lda $97
    sta $36,x
    sep #$20
.a8
    rts

loc_7f85da:
    lda $18,x
    sta $85
    lda $1cd6,x
    jsl sub_7f2d8b
    rep #$20
.a16
    lda $02
    sta $32,x
    lda $97
    sta $36,x
    sep #$20
.a8
    lda $26,x
    and #$80
    beq loc_7f85fb
    jml loc_7f85fc

loc_7f85fb:
    rts

loc_7f85fc:
    rep #$20
.a16
    asl $32,x
    asl $32,x
    asl $34,x
    asl $34,x
    asl $36,x
    asl $36,x
    sep #$20
.a8
    rts

loc_7f860d:
    jsr sub_7fc4bc
    cmp $15,x
    beq loc_7f8622
    inc $15,x
    rep #$20
.a16
    jsr sub_7fc74c
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f9dde

loc_7f8622:
    stz $15,x
    jmp loc_7fcaa9
    jsr sub_7fc4bc
    jsr sub_7fcb47
    jsr sub_7fc4e0
    clc
    adc $0000,y
    sta $0000,y
    jmp loc_7fcabe
    jsr sub_7fc4bc
    clc
    adc $12,x
    sta $12,x
    jmp loc_7fcad3
    jsr sub_7fc4bc
    clc
    adc $14,x
    sta $14,x
    jmp loc_7fcad3
    jsr sub_7fc4bc
    clc
    adc $16,x
    sta $16,x
    jmp loc_7fcad3
    jsr sub_7fc4bc
    rep #$20
.a16
    bit #$0080
    beq loc_7f866a
    ora #$ff00
    bra loc_7f866d

loc_7f866a:
    and #$00ff

loc_7f866d:
    clc
    adc $0c,x
    sta $0c,x
    jmp loc_7fcad3
.a8
    jsr sub_7fc4bc
    rep #$20
.a16
    bit #$0080
    beq loc_7f8684
    ora #$ff00
    bra loc_7f8687

loc_7f8684:
    and #$00ff

loc_7f8687:
    clc
    adc $0e,x
    sta $0e,x
    jmp loc_7fcad3

loc_7f868f:
    jsr sub_7fc4bc
    rep #$20
    bit #$0080
    beq loc_7f869e
    ora #$ff00
    bra loc_7f86a1

loc_7f869e:
    and #$00ff

loc_7f86a1:
    clc
    adc $10,x
    sta $10,x
    jmp loc_7fcad3
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    jsr sub_7fc4e0
    rep #$20
.a16
    bit #$0080
    beq loc_7f86be
    ora #$ff00
    bra loc_7f86c1

loc_7f86be:
    and #$00ff

loc_7f86c1:
    clc
    adc $0000,y
    sta $0000,y
    sep #$20
.a8
    jmp loc_7fcabe
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    jsr sub_7fc74c
    clc
    adc $0000,y
    sta $0000,y
    sep #$20
.a8
    jmp loc_7fcaa9
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    inc a
    sta $0000,y
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    inc a
    sta $0000,y
    sep #$20
.a8
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    dec a
    sta $0000,y
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    dec a
    sta $0000,y
    sep #$20
.a8
    jmp loc_7fcad3
    ldy $cf1f
    stz $149d
    jsl sub_7f21a5
.a16
    sep #$20
.a8
    xba
    cmp $12,x
    beq loc_7f873d

loc_7f873d:
    sta $12,x
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    beq loc_7f874d

loc_7f874d:
    sta $14,x
    jsr sub_7f883f
    jmp loc_7fcae8
    ldy $cf1f
    cpy $12c3
    bne loc_7f8762
    ldy #$033f
    bra loc_7f8765

loc_7f8762:
    ldy #$037e

loc_7f8765:
    stz $149d
    jsl sub_7f21a5
.a16
    sep #$20
.a8
    xba
    cmp $12,x
    beq loc_7f8773

loc_7f8773:
    sta $12,x
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    beq loc_7f8783

loc_7f8783:
    sta $14,x
    jsr sub_7f883f
    jmp loc_7fcae8
    ldy $cf1f
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    beq loc_7f87c2
    sec
    sbc $14,x
    cmp #$00
    bmi loc_7f87ab
    cmp #$04
    bpl loc_7f87b1
    lda #$04
    bra loc_7f87b1

loc_7f87ab:
    cmp #$fc
    bmi loc_7f87b1
    lda #$fc

loc_7f87b1:
    cmp #$80
    ror a
    bpl loc_7f87b8
    adc #$00

loc_7f87b8:
    cmp #$80
    ror a
    bpl loc_7f87bf
    adc #$00

loc_7f87bf:
    clc
    adc $14,x

loc_7f87c2:
    sta $14,x
    jsr sub_7f883f
    jmp loc_7fcae8
    ldy $cf1f
    stz $149d
    jsl sub_7f21a5
.a16
    sep #$20
.a8
    xba
    cmp $12,x
    beq loc_7f8801
    sec
    sbc $12,x
    cmp #$00
    bmi loc_7f87ea
    cmp #$04
    bpl loc_7f87f0
    lda #$04
    bra loc_7f87f0

loc_7f87ea:
    cmp #$fc
    bmi loc_7f87f0
    lda #$fc

loc_7f87f0:
    cmp #$80
    ror a
    bpl loc_7f87f7
    adc #$00

loc_7f87f7:
    cmp #$80
    ror a
    bpl loc_7f87fe
    adc #$00

loc_7f87fe:
    clc
    adc $12,x

loc_7f8801:
    sta $12,x
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    beq loc_7f8837
    sec
    sbc $14,x
    cmp #$00
    bmi loc_7f8820
    cmp #$04
    bpl loc_7f8826
    lda #$04
    bra loc_7f8826

loc_7f8820:
    cmp #$fc
    bmi loc_7f8826
    lda #$fc

loc_7f8826:
    cmp #$80
    ror a
    bpl loc_7f882d
    adc #$00

loc_7f882d:
    cmp #$80
    ror a
    bpl loc_7f8834
    adc #$00

loc_7f8834:
    clc
    adc $14,x

loc_7f8837:
    sta $14,x
    jsr sub_7f883f
    jmp loc_7fcae8

sub_7f883f:
    lda $25,x
    and #$04
    bne loc_7f8849
    jml loc_7f8855

loc_7f8849:
    ldy $1cd8,x
    lda $14,x
    sec
    sbc $0014,y
    sta $1cd6,x

loc_7f8855:
    rts
    jsr sub_7fc4bc
    sta $2f,x
    jmp loc_7fcad3
    jsr sub_7f88c4
    lda $0031,y
    ora #$10
    sta $0031,y
    jmp loc_7fcae8
    .db $20,$c4,$88,$4c,$e8,$ca,$20,$8e,$88,$b9,$31,$00,$09,$10,$99,$31
    .db $00,$b9,$31,$00,$09,$50,$99,$31,$00,$4c,$e8,$ca,$20,$8e,$88,$4c
    .db $e8,$ca,$20,$c4,$88,$da,$ae,$1f,$cf,$96,$06,$fa,$60,$20,$b5,$88
    .db $b9,$31,$00,$09,$10,$99,$31,$00,$b9,$31,$00,$09,$50,$99,$31,$00
    .db $4c,$e8,$ca,$20,$b5,$88,$4c,$e8,$ca,$20,$c4,$88,$da,$c2,$20,$b5
    .db $06,$aa,$e2,$20,$96,$06,$fa,$60

sub_7f88c4:
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda #$00
    sta $14b0
    lda #$00
    sta $14b2
    lda #$00
    sta $14b4
    lda #$00
    sta $14b7
    lda #$00
    sta $14b6
    stz $14b8
    stz $14b9
    lda $2f,x
    jsl sub_03a89c
    cpy #$0000
    bne loc_7f88fb
    ldy $14d6

loc_7f88fb:
    sty $d771
    rts
    phx
    jsr sub_7f8995
    lda $0000,x
    clc
    adc $0000,y
    sta $0000,y
    plx
    jmp loc_7fcabe
    phx
    jsr sub_7f8995
    rep #$20
.a16
    lda $0000,x
    clc
    adc $0000,y
    sta $0000,y
    plx
    jmp loc_7fcabe
.a8
    phx
    jsr sub_7f8995
    lda $0000,x
    rep #$20
.a16
    bit #$0080
    beq loc_7f8938
    ora #$ff00
    bra loc_7f893b

loc_7f8938:
    and #$00ff

loc_7f893b:
    clc
    adc $0000,y
    sta $0000,y
    plx
    jmp loc_7fcabe
.a8
    phx
    jsr sub_7f8995
    lda $0000,x
    sta $0000,y
    plx
    jmp loc_7fcabe
    phx
    jsr sub_7f8995
    rep #$20
.a16
    lda $0000,x
    sta $0000,y
    plx
    jmp loc_7fcabe

loc_7f8964:
    phx
    jsr sub_7f8995
    rep #$20
    lda $0000,x
    sep #$20
.a8
    sta $0000,y
    plx
    jmp loc_7fcabe
    phx
    jsr sub_7f8995
    sep #$20
    lda $0000,x
    rep #$20
.a16
    bit #$0080
    beq loc_7f898b
    ora #$ff00
    bra loc_7f898e

loc_7f898b:
    and #$00ff

loc_7f898e:
    sta $0000,y
    plx
    jmp loc_7fcabe

sub_7f8995:
.a8
    php
    sep #$20
    jsr sub_7fc4e0
    jsr sub_7fcb47
    phy
    jsr sub_7fc4bc
    jsr sub_7fcb47
    plx
    plp
    rts
    jsr sub_7fc4e0
    jsr sub_7fcb47
    sep #$20
    jsr sub_7fc4bc
    sta $0000,y
    jmp loc_7fcabe
    jsr sub_7fc504
    jsr sub_7fcb47
    rep #$20
.a16
    jsr sub_7fc720
    sta $0000,y
    sep #$20
.a8
    jmp loc_7fcaa9
    jsr sub_7fc4bc
    jsr sub_7fcb47
    sep #$20
    lda #$00
    sta $0000,y
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda #$0000
    sta $0000,y
    sep #$20
.a8
    jmp loc_7fcad3
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b1
    sep #$20
.a8
    ldy $12a8
    sty $1436
    rep #$20
.a16
    lda #$0000
    sta $3e
    lda #$1b58
    sta $3a
    lda $16b1
    jsl sub_7f1ef8
    cpy #$0000
    sep #$20
.a8
    bne loc_7f8a1d
    jml loc_7f8a22

loc_7f8a1d:
    sty $06,x
    jmp loc_7fcabe

loc_7f8a22:
    stz $06,x
    stz $07,x
    jmp loc_7fcabe
    .db $c2,$20,$20,$20,$c7,$8d,$b1,$16,$e2,$20,$b4,$06,$d0,$04,$5c,$6b
    .db $8a,$7f,$c2,$20,$b9,$00,$00,$a8,$e2,$20,$f0,$26,$8c,$36,$14,$c2
    .db $20,$a9,$00,$00,$85,$3e,$a9,$58,$1b,$85,$3a,$ad,$b1,$16,$22,$f8
    .db $1e,$7f,$c0,$00,$00,$e2,$20,$d0,$04,$5c,$6b,$8a,$7f,$94,$06,$4c
    .db $be,$ca,$74,$06,$74,$07,$4c,$be,$ca
    ldy $06,x
    bne loc_7f8a7a
    jml loc_7fcae8

loc_7f8a7a:
    stz $149d
    jsl sub_7f21a5
.a16
    sep #$20
.a8
    xba
    cmp $12,x
    bne loc_7f8a8c
    jml loc_7f8abf

loc_7f8a8c:
    sec
    sbc $12,x
    cmp #$00
    bmi loc_7f8a9b
    cmp #$08
    bpl loc_7f8aa1
    lda #$08
    bra loc_7f8aa1

loc_7f8a9b:
    cmp #$f8
    bmi loc_7f8aa1
    lda #$f8

loc_7f8aa1:
    cmp #$80
    ror a
    bpl loc_7f8aa8
    adc #$00

loc_7f8aa8:
    cmp #$80
    ror a
    bpl loc_7f8aaf
    adc #$00

loc_7f8aaf:
    cmp #$80
    ror a
    bpl loc_7f8ab6
    adc #$00

loc_7f8ab6:
    clc
    adc $12,x
    sta $12,x
    jml loc_7f8ac2

loc_7f8abf:
    inc $149d

loc_7f8ac2:
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    bne loc_7f8ad4
    jml loc_7f8b07

loc_7f8ad4:
    sec
    sbc $14,x
    cmp #$00
    bmi loc_7f8ae3
    cmp #$08
    bpl loc_7f8ae9
    lda #$08
    bra loc_7f8ae9

loc_7f8ae3:
    cmp #$f8
    bmi loc_7f8ae9
    lda #$f8

loc_7f8ae9:
    cmp #$80
    ror a
    bpl loc_7f8af0
    adc #$00

loc_7f8af0:
    cmp #$80
    ror a
    bpl loc_7f8af7
    adc #$00

loc_7f8af7:
    cmp #$80
    ror a
    bpl loc_7f8afe
    adc #$00

loc_7f8afe:
    clc
    adc $14,x
    sta $14,x
    jml loc_7f8b0a

loc_7f8b07:
    inc $149d

loc_7f8b0a:
    lda $149d
    cmp #$02
    bne loc_7f8b15
    jml loc_7fcae8

loc_7f8b15:
    jmp loc_7fcae8
    ldy $06,x
    bne loc_7f8b20
    jml loc_7fcae8

loc_7f8b20:
    stz $149d
    jsl sub_7f21a5
.a16
    sep #$20
.a8
    xba
    cmp $12,x
    bne loc_7f8b32
    jml loc_7f8b38

loc_7f8b32:
    sta $12,x
    jml loc_7f8b3b

loc_7f8b38:
    inc $149d

loc_7f8b3b:
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    bne loc_7f8b4d
    jml loc_7f8b53

loc_7f8b4d:
    sta $14,x
    jml loc_7f8b56

loc_7f8b53:
    inc $149d

loc_7f8b56:
    lda $149d
    cmp #$02
    bne loc_7f8b61
    jml loc_7fcae8

loc_7f8b61:
    jmp loc_7fcae8
    jsr sub_7fc4bc
    sta $16b1
    phx
    lda $23,x
    and #$10
    beq loc_7f8b75
    jml loc_7f8b78

loc_7f8b75:
    ldy $06,x
    tyx

loc_7f8b78:
    lda $16b1
    jsl sub_7f2a7b
    lda $0025,y
    ora #$08
    sta $0025,y
    plx
    jmp loc_7fcad3
    lda $25,x
    ora #$08
    sta $25,x
    jmp loc_7f9efd
    lda $28,x
    beq loc_7f8ba5
    rep #$20
.a16
    and #$00ff
    tay
    sep #$20
.a8
    lda #$00
    sta $17fb,y

loc_7f8ba5:
    lda $23,x
    and #$10
    bne loc_7f8baf
    jml loc_7f8bce

loc_7f8baf:
    ldy $29,x

loc_7f8bb1:
    cpy #$0000
    beq loc_7f8bce
    rep #$20
.a16
    lda $0029,y
    pha
    sep #$20
.a8
    lda $0021,y
    ora #$01
    sta $0021,y
    lda #$00
    sta $002d,y
    ply
    bra loc_7f8bb1

loc_7f8bce:
    lda $21,x
    ora #$01
    sta $21,x
    lda #$00
    sta $2d,x
    jmp loc_7f9e70
    .db $4c,$61,$ca,$4c,$61,$ca,$ac,$1f,$cf,$96,$1c,$94,$1c,$4c,$e8,$ca
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b1
    sep #$20
.a8
    ldy $cf1f

loc_7f8bf8:
    jsr sub_7f8c25
    lda $b272
    beq loc_7f8c14
    stz $b272
    rep #$20
.a16
    lda $16b5
    cmp $16b1
    bcc loc_7f8c11
    jml loc_7fcb0b

loc_7f8c11:
    jmp loc_7fca94

loc_7f8c14:
.a8
    rep #$20
.a16
    lda $16b5
    cmp $16b1
    bcs loc_7f8c22
    jml loc_7fcb0b

loc_7f8c22:
    jmp loc_7fca94

sub_7f8c25:
.a8
    sep #$20
    lda $5e
    pha
    jsl sub_7f77fe
    rep #$20
.a16
    lda $000c,y
    sec
    sbc $0c,x
    sta $700026
    lda #$0000
    sta $700028
    lda $0010,y
    sec
    sbc $10,x
    sta $70002a
    sep #$20
.a8
    phx
    sep #$20
    lda #$01
    ldx #$fb72
    jsl sub_7f787b
    sep #$20
    rep #$10
    plx
    rep #$20
.a16
    lda $70002e
    sta $16b5
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    rts
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b1
    sep #$20
.a8
    ldy $06,x
    bne loc_7f8c87
    jml loc_7fca94

loc_7f8c87:
    brl loc_7f8bf8
    rep #$20
.a16
    jsr sub_7fc720
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f9dde
    jsr sub_7fc4bc
    sta $0a,x
    jsr sub_7fc4e0
    sta $0b,x
    jmp loc_7fcabe

loc_7f8ca3:
    rep #$20
.a16
    jsr sub_7fc720
    clc
    adc $0e,x
    sep #$20
.a8
    php
    lda $b272
    beq loc_7f8cc0
    stz $b272
    plp
    bmi loc_7f8cbd
    jml loc_7fca94

loc_7f8cbd:
    jmp loc_7fcb0b

loc_7f8cc0:
    plp
    bpl loc_7f8cc7
    jml loc_7fca94

loc_7f8cc7:
    jmp loc_7fcb0b

loc_7f8cca:
    rep #$20
.a16
    lda $14dc
    sec
    sbc $14da
    sta $02
    lda $0c,x
    sec
    sbc $14da
    cmp $02
    bcc loc_7f8ce3
    jml loc_7fcaf3

loc_7f8ce3:
    lda $14e4
    sec
    sbc $14e2
    sta $02
    lda $0e,x
    sec
    sbc $14e2
    cmp $02
    bcc loc_7f8cfa
    jml loc_7fcaf3

loc_7f8cfa:
    jmp loc_7fcabe
.a8
    jsr sub_7fc4bc
    sta $16b1
    lda $16b1
    ora #$80
    sta $1ccb,x
    jmp loc_7fcad3
    jsr sub_7fc4bc
    sta $16b1
    jsr sub_7fc4e0
    sta $16b7
    lda $1ccb,x
    clc
    adc $16b1
    bmi loc_7f8d27
    clc
    adc $16b7

loc_7f8d27:
    and #$7f
    cmp $16b7
    bcc loc_7f8d32
    sec
    sbc $16b7

loc_7f8d32:
    ora #$80
    sta $1ccb,x
    jmp loc_7fcabe
    jsr sub_7fc4bc
    sta $16b1
    lda $16b1
    ora #$80
    sta $1cca,x
    jmp loc_7fcad3
    jsr sub_7fc4bc
    sta $16b1
    jsr sub_7fc4e0
    sta $16b7
    lda $1cca,x
    clc
    adc $16b1
    bmi loc_7f8d64
    clc
    adc $16b7

loc_7f8d64:
    and #$7f
    cmp $16b7
    bcc loc_7f8d6f
    sec
    sbc $16b7

loc_7f8d6f:
    ora #$80
    sta $1cca,x
    jmp loc_7fcabe

loc_7f8d77:
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b1
    sep #$20
.a8
    jmp loc_7fcabe
    .db $4c,$d3,$ca,$ac,$c3,$16,$d0,$06,$8e,$c3,$16,$4c,$e8,$ca,$94,$06
    .db $96,$06,$9c,$c3,$16,$9c,$c4,$16,$4c,$e8,$ca
    ldy $06,x
    bne loc_7f8da7
    jml loc_7fcaf3

loc_7f8da7:
    jmp loc_7fcabe
    .db $4c,$ff,$ca,$9b,$ae,$1f,$cf,$a9,$7f,$85,$02,$64,$08,$64,$97,$a5
    .db $5e,$29,$e7,$85,$5e,$8f,$3a,$30,$00,$22,$5b,$b7,$0d,$bb,$89,$80
    .db $f0,$62,$4c,$be,$ca,$9b,$ae,$1f,$cf,$a9,$7f,$85,$02,$64,$08,$64
    .db $97,$a5,$5e,$29,$e7,$85,$5e,$8f,$3a,$30,$00,$22,$5b,$b7,$0d,$bb
    .db $89,$80,$d0,$40,$4c,$be,$ca
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    phx
    txy
    ldx $cf1f
    jsl sub_0db751
    plx
    bit #$80
    bne loc_7f8e2e
    jmp loc_7fcabe
    ldy $cf1f
    rep #$20
.a16
    lda $000e,y
    cmp $0e,x
    bpl loc_7f8e2e
    sep #$20
.a8
    jmp loc_7fcabe
    ldy $cf1f
    rep #$20
.a16
    lda $000e,y
    cmp $0e,x
    bmi loc_7f8e2e
    sep #$20
.a8
    jmp loc_7fcabe

loc_7f8e2e:
    jmp loc_7fcaf3

loc_7f8e31:
    lda $b272
    beq loc_7f8e53
    stz $b272
    jsr sub_7fc4bc
    cmp #$0e
    bne loc_7f8e48
    lda $28,x
    bne loc_7f8e48
    jml loc_7fcaa9

loc_7f8e48:
    cmp $28,x
    bne loc_7f8e50
    jml loc_7fcaff

loc_7f8e50:
    jmp loc_7fcaa9

loc_7f8e53:
    jsr sub_7fc4bc
    cmp #$0e
    bne loc_7f8e5e
    lda $28,x
    beq loc_7f8e66

loc_7f8e5e:
    cmp $28,x
    bne loc_7f8e66
    jml loc_7fcaa9

loc_7f8e66:
    jmp loc_7fcaff
    jsr sub_7fc4bc
    phx
    sta $16b1
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda $16b1
    jsl sub_0acf04
    plx
    jmp loc_7fcad3
    .db $4c,$d3,$ca,$b5,$28,$f0,$12,$c2,$20,$29,$ff,$00,$a8,$e2,$20,$b9
    .db $fb,$17,$c9,$0b,$b0,$03,$4c,$f3,$ca,$4c,$be,$ca,$b5,$28,$f0,$15
    .db $c2,$20,$29,$ff,$00,$a8,$e2,$20,$b9,$fb,$17,$38,$e9,$0a,$b0,$02
    .db $a9,$00,$99,$fb,$17,$4c,$e8,$ca,$b5,$22,$29,$fe,$95,$22,$4c,$e8
    .db $ca,$b5,$22,$09,$01,$95,$22,$4c,$e8,$ca
    lda $09,x
    ora #$08
    sta $09,x
    rep #$20
.a16
    lda #$9dde
    sta $19,x
    sep #$20
.a8
    lda #$7f
    sta $1b,x
    jmp loc_7f9dde
    jsl sub_7f7bd0
    cmp #$7f
    bcs loc_7f8ef1
    jml loc_7f8e2e

loc_7f8ef1:
    jmp loc_7fcabe
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    bne loc_7f8f03
    jml loc_7fcaff

loc_7f8f03:
    jmp loc_7fcaa9
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    bne loc_7f8f17
    jml loc_7fcaff

loc_7f8f17:
    jmp loc_7fcaa9
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47

loc_7f8f20:
    lda $0000,y
    bne loc_7f8f29
    jml loc_7fcaa9

loc_7f8f29:
    jmp loc_7fcaff
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    bne loc_7f8f3d
    jml loc_7fcaa9

loc_7f8f3d:
    jmp loc_7fcaff
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    jsr sub_7fc4e0
    cmp $0000,y
    php
    lda $b272
    beq loc_7f8f5f
    stz $b272
    plp
    bne loc_7f8f5c
    jml loc_7fca94

loc_7f8f5c:
    jmp loc_7fcb0b

loc_7f8f5f:
    plp
    beq loc_7f8f66
    jml loc_7fca94

loc_7f8f66:
    jmp loc_7fcb0b
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    jsr sub_7fc74c
    cmp $0000,y
    sep #$20
.a8
    php
    lda $b272
    beq loc_7f8f8c
    stz $b272
    plp
    bne loc_7f8f89
    jml loc_7fca83

loc_7f8f89:
    jmp loc_7fcb17

loc_7f8f8c:
    plp
    beq loc_7f8f93
    jml loc_7fca83

loc_7f8f93:
    jmp loc_7fcb17
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $b272
    beq loc_7f8fbf
    stz $b272
    jsr sub_7fc4e0
    cmp $0000,y
    bmi loc_7f8fb0
    jml loc_7fcb17

loc_7f8fb0:
    jsr sub_7fc504
    cmp $0000,y
    bpl loc_7f8fbc
    jml loc_7fcb17

loc_7f8fbc:
    jmp loc_7fca83

loc_7f8fbf:
    jsr sub_7fc4e0
    cmp $0000,y
    bmi loc_7f8fcb
    jml loc_7fca83

loc_7f8fcb:
    jsr sub_7fc504
    cmp $0000,y
    bpl loc_7f8fd7
    jml loc_7fca83

loc_7f8fd7:
    jmp loc_7fcb17
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $b272
    beq loc_7f9005
    stz $b272
    rep #$20
.a16
    jsr sub_7fc74c
    cmp $0000,y
    bmi loc_7f8ff6
    jml loc_7fcb2f

loc_7f8ff6:
    jsr sub_7fc7a4
    cmp $0000,y
    bpl loc_7f9002
    jml loc_7fcb2f

loc_7f9002:
    jmp loc_7fca61

loc_7f9005:
.a8
    rep #$20
.a16
    jsr sub_7fc74c
    cmp $0000,y
    bmi loc_7f9013
    jml loc_7fca61

loc_7f9013:
    jsr sub_7fc7a4
    cmp $0000,y
    bpl loc_7f901f
    jml loc_7fca61

loc_7f901f:
    jmp loc_7fcb2f
.a8
    lda $22,x
    ora #$08
    sta $22,x
    jmp loc_7fcae8
    lda $22,x
    and #$f7
    sta $22,x
    jmp loc_7fcae8

loc_7f9034:
    lda $1e0d
    and #$01
    beq loc_7f903f
    jml loc_7fcaf3

loc_7f903f:
    jmp loc_7fcabe
    lda $1911
    sta $16bb
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b7
    lda $16bb
    cmp #$0033
    beq loc_7f907f
    stz $16bd
    stz $16bf
    stz $16c1
    rep #$20
    jsr sub_7fc828
    sta $16b1
    jsr sub_7fc880
    sta $16b3
    jsr sub_7fc8d8
    sta $16b5
    sep #$20
.a8
    jsr sub_7fc66c
    sta $16b9
    bra loc_7f90af

loc_7f907f:
.a16
    sep #$20
.a8
    jsr sub_7fc54c
    sta $16bd
    jsr sub_7fc570
    sta $16bf
    jsr sub_7fc594
    sta $16c1
    rep #$20
.a16
    jsr sub_7fc8ac
    sta $16b1
    jsr sub_7fc904
    sta $16b3
    jsr sub_7fc95c
    sta $16b5
    sep #$20
.a8
    jsr sub_7fc6d8
    sta $16b9

loc_7f90af:
    rep #$20
.a16
    lda $12a8
    pha
    sep #$20
.a8
    stx $12a8
    phx
    lda $23,x
    and #$04
    bne loc_7f90c5
    jml loc_7f90c8

loc_7f90c5:
    ldy $06,x
    tyx

loc_7f90c8:
    rep #$20
.a16
    lda $16b7
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_7f90db
    jml loc_7f912b

loc_7f90db:
    lda $16b9
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
    lda $31,x
    ora #$10
    sta $31,x
    rep #$20
.a16
    lda $16b1
    sta $1ccf,x
    sep #$20
.a8
    rep #$20
.a16
    lda $16b3
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda $16b5
    sta $1cd3,x
    sep #$20
.a8
    lda $16bd
    sta $1cd5,x
    lda $16bf
    sta $1cd6,x
    lda $16c1
    sta $1cd7,x
    phx
    tyx
    ply

loc_7f912b:
    sty $d771
    plx
    rep #$20
.a16
    txa
    sta $1cd8,y
    sep #$20
.a8
    rep #$20
.a16
    pla
    sta $12a8
    sep #$20
.a8
    sep #$20
    lda $16bb
    cmp #$33
    beq loc_7f9156
    jsr sub_7fc54c
    sta $002d,y
    jsr sub_7fc570
    sta $002e,y
    bra loc_7f9162

loc_7f9156:
    jsr sub_7fc5b8
    sta $002d,y
    jsr sub_7fc5dc
    sta $002e,y

loc_7f9162:
    lda $24,x
    and #$80
    bne loc_7f916c
    jml loc_7f9174

loc_7f916c:
    lda $0024,y
    ora #$80
    sta $0024,y

loc_7f9174:
    lda $1cf0,x
    sta $1cf0,y
    rep #$20
.a16
    jsr sub_7fc778
    sta $002b,y
    lda $16bb
    cmp #$0033
    bne loc_7f918d
    brl loc_7fca0c

loc_7f918d:
    jmp loc_7fca2e
    .db $20,$35,$92,$94,$06,$c0,$00,$00,$d0,$04,$5c,$0c,$ca,$7f,$96,$06
    .db $4c,$0c,$ca
.a8
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b1
    jsr sub_7fc778
    sta $16b7
    sep #$20
.a8
    rep #$20
.a16
    lda $12a8
    pha
    sep #$20
.a8
    stx $12a8
    rep #$20
.a16
    lda $16b1
    sta $5f
    sep #$20
.a8
    jsl sub_7f2a17
    bcs loc_7f91d1
    jml loc_7f9224

loc_7f91d1:
    sty $d771
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
    rep #$20
.a16
    lda $16b7
    sta $002b,y
    sep #$20
.a8
    jsl sub_7f2baa
    jsl sub_7f2bd2
    jsr sub_7fc54c
    sta $002d,y
    jsr sub_7fc570
    sta $002e,y
    lda $24,x
    and #$80
    bne loc_7f9213
    jml loc_7f921b

loc_7f9213:
    lda $0024,y
    ora #$80
    sta $0024,y

loc_7f921b:
    lda $1cf0,x
    sta $1cf0,y
    jmp loc_7fca72

loc_7f9224:
    rep #$20
.a16
    pla
    sta $12a8
    sep #$20
.a8
    jmp loc_7fca72
    .db $20,$35,$92,$4c,$1d,$ca,$c2,$20,$20,$20,$c7,$8d,$b1,$16,$20,$78
    .db $c7,$8d,$b9,$16,$e2,$20,$c2,$20,$ad,$a8,$12,$48,$e2,$20,$8e,$a8
    .db $12,$c2,$20,$ad,$b1,$16,$85,$5f,$e2,$20,$22,$17,$2a,$7f,$b0,$04
    .db $5c,$5f,$93,$7f,$8c,$71,$d7,$c2,$20,$68,$8d,$a8,$12,$e2,$20,$c2
    .db $20,$a9,$1e,$7e,$99,$19,$00,$e2,$20,$a9,$7f,$99,$1b,$00,$c2,$20
    .db $ad,$b9,$16,$99,$2b,$00,$e2,$20,$20,$4c,$c5,$18,$75,$12,$99,$12
    .db $00,$20,$70,$c5,$18,$75,$14,$99,$14,$00,$20,$94,$c5,$18,$75,$16
    .db $99,$16,$00,$20,$b8,$c5,$99,$2d,$00,$20,$dc,$c5,$99,$2e,$00,$bd
    .db $f0,$1c,$99,$f0,$1c,$c2,$20,$20,$ac,$c8,$8d,$b1,$16,$20,$04,$c9
    .db $8d,$b3,$16,$20,$5c,$c9,$8d,$b5,$16,$e2,$20,$ad,$b1,$16,$85,$02
    .db $85,$04,$89,$80,$f0,$06,$a9,$ff,$85,$05,$80,$02,$64,$05,$ad,$b3
    .db $16,$85,$08,$85,$0a,$89,$80,$f0,$06,$a9,$ff,$85,$0b,$80,$02,$64
    .db $0b,$ad,$b5,$16,$85,$97,$85,$e4,$89,$80,$f0,$06,$a9,$ff,$85,$e5
    .db $80,$02,$64,$e5,$b5,$16,$22,$f0,$3b,$7f,$a5,$04,$85,$02,$a5,$0a
    .db $85,$08,$a5,$e4,$85,$97,$b5,$12,$22,$4e,$3a,$7f,$a5,$04,$85,$02
    .db $a5,$0a,$85,$08,$a5,$e4,$85,$97,$b5,$14,$22,$a9,$38,$7f,$c2,$20
    .db $a5,$04,$0a,$0a,$85,$04,$a5,$0a,$0a,$0a,$85,$0a,$a5,$e4,$0a,$0a
    .db $85,$e4,$a5,$04,$18,$7d,$0c,$00,$99,$0c,$00,$a5,$e4,$18,$7d,$10
    .db $00,$99,$10,$00,$a5,$0a,$18,$7d,$0e,$00,$99,$0e,$00,$e2,$20,$60
    .db $c2,$20,$68,$8d,$a8,$12,$e2,$20,$a0,$00,$00,$60,$a5,$5e,$29,$e7
    .db $85,$5e,$8f,$3a,$30,$00,$22,$06,$80,$00,$b5,$09,$09,$08,$95,$09
    .db $4c,$e8,$ca,$b5,$09,$29,$f7,$95,$09,$4c,$e8,$ca
    jsr sub_7fc4bc
    sta $16b1
    phx
    lda $23,x
    and #$10
    beq loc_7f939c
    jml loc_7f93a5

loc_7f939c:
    ldy $06,x
    tyx
    bne loc_7f93a5
    jml loc_7f93b8

loc_7f93a5:
    phy
    lda $16b1
    jsl sub_7f2a7b
    cpy #$0000
    bne loc_7f93b7
    ply
    jml loc_7f93bc

loc_7f93b7:
    ply

loc_7f93b8:
    plx
    jmp loc_7fcaa9

loc_7f93bc:
    plx
    jmp loc_7fcaff

loc_7f93c0:
    jsr sub_7fc4bc
    sta $16b1
    lda $16b1
    jsl sub_7f2a7b
    cpy #$0000
    bne loc_7f93d6
    jml loc_7fcad3

loc_7f93d6:
    rep #$20
.a16
    tya
    cmp $06,x
    sep #$20
.a8
    bne loc_7f93e3
    jml loc_7fcad3

loc_7f93e3:
    rep #$20
.a16
    lda $0006,y
    sta $16b1
    lda $06,x
    sty $06,x
    sta $0006,y
    sep #$20
.a8
    phx
    tyx
    jsl sub_7f2212
    ldx $16b1
    stx $06,y
    plx
    jsr sub_7fc4bc
    sta $16b1
    phx
    lda $23,x
    and #$10
    beq loc_7f9411
    jml loc_7f9419

loc_7f9411:
    ldy $06,x
    tyx
    cpy #$0000
    beq loc_7f9420

loc_7f9419:
    lda $16b1
    jsl sub_7f2a7b

loc_7f9420:
    plx
    cpy #$0000
    bne loc_7f942a
    jml loc_7fcad3

loc_7f942a:
    lda $0023,y
    ora #$08
    sta $0023,y
    jmp loc_7fcad3
    lda $23,x
    and #$04
    bne loc_7f943f
    jml loc_7fcae8

loc_7f943f:
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

loc_7f9452:
    lda $0029,y
    beq loc_7f946e
    cmp $3c
    beq loc_7f945e
    tay
    bra loc_7f9452

loc_7f945e:
    lda $29,x
    sta $0029,y
    lda #$0000
    sta $06,x
    sta $29,x
    sep #$20
.a8
    sta $13,x

loc_7f946e:
    ply
    sep #$20
    jmp loc_7fcae8
    jsr sub_7fc4bc
    sta $16b1
    phx
    lda $23,x
    and #$10
    beq loc_7f9485
    jml loc_7f948d

loc_7f9485:
    ldy $06,x
    tyx
    cpy #$0000
    beq loc_7f9494

loc_7f948d:
    lda $16b1
    jsl sub_7f2a7b

loc_7f9494:
    plx
    cpy #$0000
    bne loc_7f949e
    jml loc_7fcad3

loc_7f949e:
    phx
    ldx $06,y
    lda $0023,y
    and #$fb
    sta $0023,y
    lda $0025,y
    and #$fe
    sta $0025,y
    rep #$20
.a16
    sty $3c
    phx

loc_7f94b6:
    lda $29,x
    beq loc_7f94d4
    cmp $3c
    beq loc_7f94c1
    tax
    bra loc_7f94b6

loc_7f94c1:
    lda $0029,y
    sta $29,x
    lda #$0000
    sta $0006,y
    sta $0029,y
    sep #$20
.a8
    sta $0013,y

loc_7f94d4:
    plx
    sep #$20
    plx
    jmp loc_7fcad3

loc_7f94db:
    ldy $06,x
    cpy #$0000
    bne loc_7f94e6
    jml loc_7fcae8

loc_7f94e6:
    lda $0023,y
    ora #$08
    sta $0023,y
    jmp loc_7fcae8

loc_7f94f1:
    ldy $06,x
    cpy #$0000
    bne loc_7f94fc
    jml loc_7fcae8

loc_7f94fc:
    lda $0023,y
    ora #$08
    sta $0023,y
    jmp loc_7fcae8

loc_7f9507:
    lda $23,x
    and #$08
    bne loc_7f9511
    jml loc_7fcabe

loc_7f9511:
    lda $23,x
    and #$f7
    sta $23,x
    jmp loc_7fcaf3

loc_7f951a:
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b1
    sep #$20
.a8
    jsr sub_7fc504
    sta $16b3
    jsr sub_7fc528
    sta $16b5
    lda $20,x
    ora #$40
    sta $20,x
    lda $21,x
    ora #$01
    sta $21,x
    lda $16b3
    sta $1cc8,x
    rep #$20
.a16
    lda $16b1
    sta $1ccd,x
    sep #$20
.a8
    lda $16b5
    sta $1cda,x
    jmp loc_7fca94

loc_7f9555:
    jsr sub_7fc4bc
    sta $1cdb,x
    jmp loc_7fcad3

loc_7f955e:
    inc $6a1d
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    dec $2b,x
    sep #$20
.a8
    rep #$20
.a16
    lda $2b,x
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    rep #$20
.a16
    lda $0000,y
    sta $002b,x
    sep #$20
.a8
    jmp RunObjectScript
    inc $6a1d
    rep #$20
.a16
    lda $2b,x
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    jmp loc_7fcaf3
    ldy $b26d
    beq loc_7f95b4
    dec $6a1d
    bne loc_7f95b4
    jml loc_7f9d88

loc_7f95b4:
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1ac1
    sta $1cde,x
    lda $b269
    sta $2b,x
    sep #$20
.a8
    jmp loc_7fcabe
    rep #$20
.a16
    lda $2b,x
    inc a
    inc a
    sep #$20
.a8
    rep #$20
.a16
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    and #$00ff
    sep #$20
.a8
    rep #$20
.a16
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    jmp loc_7fcad3

loc_7f9607:
    rep #$20
.a16
    lda $2b,x
    inc a
    inc a
    sep #$20
.a8
    rep #$20
.a16
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sep #$20
.a8
    rep #$20
.a16
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    jmp loc_7fcad3
    rep #$20
.a16
    lda $2b,x
    inc a
    inc a
    sep #$20
.a8
    rep #$20
.a16
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    rep #$20
.a16
    jsr sub_7fc720
    and #$00ff
    sep #$20
.a8
    rep #$20
.a16
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    jmp loc_7fcad3

loc_7f9678:
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0003
    sep #$20
.a8
    rep #$20
.a16
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    rep #$20
.a16
    jsr sub_7fc720
    sep #$20
.a8
    rep #$20
.a16
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    jmp loc_7fcabe
    rep #$20
.a16
    ldy $1cde,x
    lda $6a61,y
    and #$00ff
    dec a
    asl a
    asl a
    sty $16b1
    sec
    adc $16b1
    tay
    lda $6a61,y
    dec a
    beq loc_7f96db
    sta $6a61,y
    dey
    dey
    dey
    dey
    lda $6a61,y
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f9dde

loc_7f96db:
.a16
    sep #$20
.a8
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1ac1
    sta $1cde,x
    lda $b269
    sta $16b1
    sep #$20
.a8
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1ac1
    sta $1cde,x
    lda $b269
    sta $16b1
    sep #$20
.a8
    jmp loc_7fcae8
    rep #$20
.a16
    ldy $1cde,x
    lda $6a61,y
    and #$00ff
    dec a
    asl a
    asl a
    sty $16b1
    sec
    adc $16b1
    tay
    lda $6a61,y
    dec a
    beq loc_7f96db
    sta $6a61,y
    dey
    dey
    dey
    dey
    lda $6a61,y
    sta $2b,x
    sep #$20
.a8
    jmp RunObjectScript
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1ac1
    sta $1cde,x
    lda $b269
    sta $16b1
    sep #$20
.a8
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1ac1
    sta $1cde,x
    lda $b269
    sta $16b1
    sep #$20
.a8
    jmp loc_7fcaf3
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1ac1
    sta $1cde,x
    lda $b269
    sta $16b1
    sep #$20
.a8
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1ac1
    sta $1cde,x
    lda $b269
    sta $16b1
    sep #$20
.a8
    jmp loc_7fcae8
    lda $23,x
    ora #$02
    sta $23,x
    lda $21,x
    ora #$01
    sta $21,x
    jmp loc_7fcae8
    lda $23,x
    and #$fd
    sta $23,x
    lda $21,x
    and #$fe
    sta $21,x
    jmp loc_7fcae8
    stz $16bd
    lda #$00
    sta $16bf
    jsr sub_7f97f3
    brl loc_7fcabe
    jsr sub_7fc504
    sta $16bf
    jsr sub_7fc528
    inc a
    sta $16bd
    jsr sub_7f97f3
    brl loc_7fca94
    stz $16bd
    jsr sub_7fc4e0
    sta $16bf
    jsr sub_7fc4bc
    rep #$20
.a16
    and #$00ff
    clc
    adc $2b,x
    jsr sub_7f97f8
.a8
    brl loc_7fcabe
    stz $16bd
    jsr sub_7fc504
    sta $16bf
    jsr sub_7f97f3
    brl loc_7fcaa9

sub_7f97f3:
    rep #$20
.a16
    jsr sub_7fc720

sub_7f97f8:
    sta $16c1
    sep #$20
.a8
    rep #$20
.a16
    lda $1ce0,x
    sep #$20
.a8
    beq loc_7f980a
    jml loc_7f983a

loc_7f980a:
    rep #$20
.a16
    lda #$0005
    jsl sub_7f194e
    tay
    sep #$20
.a8
    lda #$01
    sta $6a61,y
    rep #$20
.a16
    lda $16c1
    sta $6a62,y
    sep #$20
.a8
    lda $16bf
    sta $6a64,y
    lda $16bd
    sta $6a65,y
    rep #$20
.a16
    tya
    sta $1ce0,x
    sep #$20
.a8
    rts

loc_7f983a:
    ldy $1ce0,x
    lda $6a61,y
    inc a
    asl a
    asl a
    inc a
    sta $16b1
    stz $16b2
    rep #$20
.a16
    lda $1ce0,x
    eor #$ffff
    inc a
    clc
    adc $d740
    sta $d740
    rep #$20
    lda $16b1
    jsl sub_7f194e
    tay
    sep #$20
.a8
    phx
    sty $16b7
    ldy $1ce0,x
    ldx $16b7
    lda $6a61,y
    sta $16b1
    inc a
    sta $6a61,x
    iny
    inx

loc_7f987c:
    lda $6a61,y
    sta $6a61,x
    lda $6a62,y
    sta $6a62,x
    lda $6a63,y
    sta $6a63,x
    lda $6a64,y
    sta $6a64,x
    inx
    inx
    inx
    inx
    iny
    iny
    iny
    iny
    dec $16b1
    bne loc_7f987c
    stx $16b3
    plx
    ldy $1ce0,x
    rep #$20
.a16
    tya
    jsl sub_7f196b
    sep #$20
.a8
    rep #$20
.a16
    lda $16b7
    sta $1ce0,x
    clc
    adc $d740
    sta $d740
    sep #$20
.a8
    rep #$20
.a16
    lda $16c1
    ldy $16b3
    sta $6a61,y
    sep #$20
.a8
    lda $16bf
    sta $6a63,y
    lda $16bd
    sta $6a64,y
    rts
    ldy $1ce0,x
    rep #$20
.a16
    tya
    jsl sub_7f196b
    sep #$20
.a8
    stz $1ce0,x
    stz $1ce1,x
    lda #$01
    sta $d742
    jmp loc_7fcae8
    rep #$20
.a16
    jsr sub_7fc720
    sta $16bd
    stz $16bf
    sep #$20
.a8
    jsr sub_7f9909
    jmp loc_7fcabe

sub_7f9909:
    ldy $1ce0,x
    beq loc_7f991f
    lda $6a61,y
    cmp #$01
    bne loc_7f9930
    rep #$20
.a16
    lda $16bd
    cmp $6a62,y
    beq loc_7f9920

loc_7f991f:
.a8
    rts

loc_7f9920:
.a16
    rep #$20
    tya
    jsl sub_7f196b
    sep #$20
.a8
    stz $1ce0,x
    stz $1ce1,x
    rts

loc_7f9930:
    sta $16b1
    stz $16b2
    rep #$20
.a16
    lda $16bf
    beq loc_7f9940
    tay
    bra loc_7f9953

loc_7f9940:
    lda $16bd
    iny

loc_7f9944:
    cmp $6a61,y
    beq loc_7f9953
    iny
    iny
    iny
    iny
    dec $16b1
    bne loc_7f9944
    rts

loc_7f9953:
    sty $16b3
    tya
    dec a
    cmp $d740
    bcs loc_7f996e
    dec $d740
    dec $d740
    dec $d740
    dec $d740
    cmp $d740
    bcc loc_7f9978

loc_7f996e:
    sep #$20
.a8
    dec $d742
    bne loc_7f9978
    inc $d742

loc_7f9978:
    rep #$20
.a16
    ldy $1ce0,x
    lda $6a61,y
    and #$00ff
    dec a
    sep #$20
.a8
    sta $6a61,y
    rep #$20
.a16
    asl a
    asl a
    clc
    adc $1ce0,x
    inc a
    sta $16b9
    ldy $16b3
    sep #$20
.a8
    bra loc_7f99a3

loc_7f999c:
    lda $6a65,y
    sta $6a61,y
    iny

loc_7f99a3:
    cpy $16b9
    bne loc_7f999c
    rts
    ldy $b26d
    bne loc_7f99b2
    jml loc_7fcabe

loc_7f99b2:
    lda #$01
    sta $b271
    lda #$00
    sta $17,x
    sta $15,x
    rep #$20
.a16
    lda #$7e53
    sta $19,x
    sep #$20
.a8
    lda #$7f
    sta $1b,x
    rep #$20
.a16
    jsr sub_7fc720
    sta $b26d
    jmp loc_7fcabe
.a8
    jsr sub_7fc4bc
    sta $16b1
    jsr sub_7fc4e0
    sta $16b3
    lda $20,x
    ora #$20
    sta $20,x
    lda $16b1
    sta $1cc8,x
    lda $16b3
    sta $1cda,x
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc720
    sta $19,x
    sep #$20
.a8
    jsr sub_7fc504
    sta $1b,x
    lda #$00
    sta $1cc7,x
    rep #$20
.a16
    lda #$0000
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f9dde
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    eor #$ff
    inc a
    sta $0000,y
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    eor #$ffff
    inc a
    sta $0000,y
    jmp loc_7fcad3
.a8
    jsr sub_7fc4e0
    sta $16b5
    jsr sub_7fc4bc
    jsr sub_7fcb47
    jsl sub_7f7bd0
    and $16b5
    sta $0000,y
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc74c
    sta $16b5
    sep #$20
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    jsl sub_7f7bd0
    xba
    jsl sub_7f7bd0
    rep #$20
.a16
    and $16b5
    sta $0000,y
    jmp loc_7fcaa9

loc_7f9a79:
    jsr sub_7fc504
    sta $16b1
    lda $38,x
    and $16b1
    bne loc_7f9a8a
    jml loc_7fcaa9

loc_7f9a8a:
    lda $16b1
    eor #$35ff
    sec
    sta $38,x
    jmp loc_7fcaf3
.a8
    lda $21,x
    and #$fe
    sta $21,x
    jmp loc_7fcae8
    lda $21,x
    ora #$01
    sta $21,x
    jmp loc_7fcae8

sub_7f9aa8:
    sep #$20
    lda $b26d
    ora $b26e
    beq loc_7f9ab6
    jsl sub_008027

loc_7f9ab6:
    ldy $2b,x
    sty $b26d
    ldy $1ce0,x
    bne loc_7f9ac4
    jml loc_7f9dd7

loc_7f9ac4:
    lda $6a61,y
    bne loc_7f9acd
    jml loc_7f9dd7

loc_7f9acd:
    iny

loc_7f9ace:
    sta $d742
    sty $d740
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    lda $6a64,y
    beq loc_7f9aff
    dec a
    sta $6a64,y
    sta $d743
    bne loc_7f9aff
    rep #$20
.a16
    lda $6a61,y
    sta $16bd
    sty $16bf
    sep #$20
.a8
    jsr sub_7f9909
    brl loc_7f9d89

loc_7f9aff:
    phx
    lda $6a63,y
    rep #$20
.a16
    and #$00ff
    asl a
    tax
    sep #$20
.a8
    jmp (tbl_7f9b0f,x)

tbl_7f9b0f:
    .db $68,$9d,$46,$9d,$4a,$9d,$4e,$9d,$52,$9d,$56,$9d,$5a,$9d,$5e,$9d
    .db $38,$9d,$1e,$9d,$0a,$9d,$f8,$9c,$eb,$9c,$02,$9c,$7f,$9b,$41,$9b
    .db $60,$9b,$33,$9b

loc_7f9b33:
    plx
    phx
    lda $d743
    dec a
    beq loc_7f9b3e
    brl loc_7f9d88

loc_7f9b3e:
    jmp loc_7f9d68

loc_7f9b41:
    plx
    phx
    phy
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b65,y
    ply
    phx
    tyx
    ply
    bit #$10
    beq loc_7f9b5c
    jml loc_7f9ce7

loc_7f9b5c:
    ply
    jmp loc_7f9d88

loc_7f9b60:
    plx
    phx
    phy
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b65,y
    ply
    phx
    tyx
    ply
    bit #$08
    beq loc_7f9b7b
    jml loc_7f9ce7

loc_7f9b7b:
    ply
    jmp loc_7f9d88

loc_7f9b7f:
    plx
    phx
    phy
    ldy $12c3
    beq loc_7f9bc0
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
    cmp #$20
    bne loc_7f9b9e
    jml loc_7f9ba0

loc_7f9b9e:
    bra loc_7f9bc0

loc_7f9ba0:
    rep #$20
.a16
    txa
    cmp $1ce8,y
    sep #$20
.a8
    bne loc_7f9bc0
    lda $1cea,x
    cmp $1cea,y
    beq loc_7f9bb5
    brl loc_7f9bc0

loc_7f9bb5:
    lda $0024,y
    and #$02
    beq loc_7f9bc0
    jml loc_7f9cba

loc_7f9bc0:
    ldy $12c5
    beq loc_7f9bfe
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
    cmp #$20
    bne loc_7f9bdc
    jml loc_7f9bde

loc_7f9bdc:
    bra loc_7f9bfe

loc_7f9bde:
    rep #$20
.a16
    txa
    cmp $1ce8,y
    sep #$20
.a8
    bne loc_7f9bfe
    lda $1cea,x
    cmp $1cea,y
    beq loc_7f9bf3
    brl loc_7f9cdb

loc_7f9bf3:
    lda $0024,y
    and #$02
    beq loc_7f9bfe
    jml loc_7f9cba

loc_7f9bfe:
    ply
    brl loc_7f9d88

loc_7f9c02:
    plx
    phx
    phy
    lda $5e
    pha
    jsl sub_7f77fe
    lda $24,x
    and #$40
    beq loc_7f9c16
    jml loc_7f9c52

loc_7f9c16:
    lda $24,x
    ora #$40
    sta $24,x
    ldy $12c3
    beq loc_7f9c37
    jsl sub_0db751
    bit #$80
    beq loc_7f9c31
    lda $24,x
    ora #$10
    sta $24,x
    bra loc_7f9c37

loc_7f9c31:
    lda $24,x
    and #$ef
    sta $24,x

loc_7f9c37:
    ldy $12c5
    beq loc_7f9c52
    jsl sub_0db751
    bit #$80
    beq loc_7f9c4c
    lda $24,x
    ora #$20
    sta $24,x
    bra loc_7f9c52

loc_7f9c4c:
    lda $24,x
    and #$df
    sta $24,x

loc_7f9c52:
    ldy $12c3
    beq loc_7f9c76
    jsl sub_0db751
    bit #$80
    beq loc_7f9c6c
    lda $24,x
    and #$10
    beq loc_7f9c69
    jml loc_7f9c76

loc_7f9c69:
    jmp loc_7f9ca9

loc_7f9c6c:
    lda $24,x
    and #$10
    beq loc_7f9c76
    jml loc_7f9ca9

loc_7f9c76:
    ldy $12c5
    beq loc_7f9c9a
    jsl sub_0db751
    bit #$80
    beq loc_7f9c90
    lda $24,x
    and #$20
    beq loc_7f9c8d
    jml loc_7f9c9a

loc_7f9c8d:
    jmp loc_7f9cca

loc_7f9c90:
    lda $24,x
    and #$20
    beq loc_7f9c9a
    jml loc_7f9cca

loc_7f9c9a:
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    ply
    brl loc_7f9d88

loc_7f9ca9:
    lda $24,x
    and #$bf
    sta $24,x
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b

loc_7f9cba:
    ldy $12c3
    sty $cf1f
    lda $24,x
    and #$7f
    sta $24,x
    ply
    brl loc_7f9d68

loc_7f9cca:
    lda $24,x
    and #$bf
    sta $24,x
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b

loc_7f9cdb:
    ldy $12c5
    sty $cf1f
    lda $24,x
    ora #$80
    sta $24,x

loc_7f9ce7:
    ply
    brl loc_7f9d68

loc_7f9ceb:
    plx
    phx
    lda $2d,x
    bne loc_7f9cf5
    jml loc_7f9d68

loc_7f9cf5:
    brl loc_7f9d88

loc_7f9cf8:
    plx
    phx
    rep #$20
.a16
    lda $06,x
    sep #$20
.a8
    beq loc_7f9d06
    jml loc_7f9d88

loc_7f9d06:
    jml loc_7f9d68

loc_7f9d0a:
    plx
    phx
    lda $23,x
    and #$08
    bne loc_7f9d16
    jml loc_7f9d88

loc_7f9d16:
    lda $23,x
    and #$f7
    sta $23,x
    bra loc_7f9d68

loc_7f9d1e:
    plx
    phx
    phy
    lda $26,x
    and #$02
    beq loc_7f9d2b
    jml loc_7f9cba

loc_7f9d2b:
    lda $26,x
    and #$04
    beq loc_7f9d35
    jml loc_7f9cdb

loc_7f9d35:
    ply
    bra loc_7f9d88

loc_7f9d38:
    plx
    phx
    lda $22,x
    and #$02
    bne loc_7f9d44
    jml loc_7f9d88

loc_7f9d44:
    bra loc_7f9d68

loc_7f9d46:
    lda #$01
    bra loc_7f9d62

loc_7f9d4a:
    lda #$03
    bra loc_7f9d62

loc_7f9d4e:
    lda #$07
    bra loc_7f9d62

loc_7f9d52:
    lda #$0f
    bra loc_7f9d62

loc_7f9d56:
    lda #$1f
    bra loc_7f9d62

loc_7f9d5a:
    lda #$3f
    bra loc_7f9d62

loc_7f9d5e:
    lda #$7f
    bra loc_7f9d62

loc_7f9d62:
    and $c4
    beq loc_7f9d68
    bra loc_7f9d88

loc_7f9d68:
    plx
    phx
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    stz $b271
    lda #$01
    sta $6a1d
    rep #$20
.a16
    lda $6a61,y
    sta $2b,x
    sep #$20
.a8
    jmp RunObjectScript

loc_7f9d88:
    plx

loc_7f9d89:
    ldy $d740
    iny
    iny
    iny
    iny
    sep #$20
    lda $d742
    dec a
    beq loc_7f9d9c
    jml loc_7f9ace

loc_7f9d9c:
    lda $b271
    beq loc_7f9dd2
    cmp #$01
    beq loc_7f9dcf
    rep #$20
.a16
    dec $b26d
    dec $b26d
    dec $b26d
    sep #$20
.a8
    rep #$20
.a16
    lda $b26d
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    sep #$20
    ldy $b26f
    sty $2b,x
    bra loc_7f9dd7

loc_7f9dcf:
    jsr sub_7faffc

loc_7f9dd2:
    ldy $b26d
    sty $2b,x

loc_7f9dd7:
    stz $b26d
    stz $b26e
    rts

loc_7f9dde:
    lda $5e
    ora #$18
    sta $5e
    sta $00303a
    lda $0b,x
    bne loc_7f9df0
    jml loc_7f9e1f

loc_7f9df0:
    lda $18,x
    cmp $0a,x
    bmi loc_7f9e01
    sec
    sbc $0b,x
    cmp $0a,x
    bpl loc_7f9e10
    lda $0a,x
    bra loc_7f9e0a

loc_7f9e01:
    clc
    adc $0b,x
    cmp $0a,x
    bmi loc_7f9e10
    lda $0a,x

loc_7f9e0a:
    sta $18,x
    stz $0b,x
    bra loc_7f9e12

loc_7f9e10:
    sta $18,x

loc_7f9e12:
    lda $21,x
    and #$10
    beq loc_7f9e1c
    jml loc_7f9e1f

loc_7f9e1c:
    jsr sub_7f855f

loc_7f9e1f:
    lda $21,x
    and #$40
    bne loc_7f9e29
    jml loc_7f9e3e

loc_7f9e29:
    lda $16,x
    cmp #$80
    ror a
    bpl loc_7f9e32
    adc #$00

loc_7f9e32:
    cmp #$80
    ror a
    bpl loc_7f9e39
    adc #$00

loc_7f9e39:
    clc
    adc $14,x
    sta $14,x

loc_7f9e3e:
    jsr sub_7f9f16
    lda $21,x
    and #$10
    bne loc_7f9e4b
    jml loc_7f9e4e

loc_7f9e4b:
    jsr sub_7f855f

loc_7f9e4e:
    lda $23,x
    and #$04
    beq loc_7f9e58
    jml loc_7f9e66

loc_7f9e58:
    lda $25,x
    and #$04
    beq loc_7f9e62
    jml loc_7f9e66

loc_7f9e62:
    jsl sub_7f2c24

loc_7f9e66:
    lda $22,x
    and #$01
    bne loc_7f9e70
    jml loc_7f9e70

loc_7f9e70:
    jsr sub_7f9aa8
    lda $22,x
    and #$01
    beq loc_7f9e7d
    jml loc_7f9e8b

loc_7f9e7d:
    lda $23,x
    and #$10
    bne loc_7f9e87
    jml loc_7f9e8b

loc_7f9e87:
    jsl sub_7f2319

loc_7f9e8b:
    lda $23,x
    and #$04
    beq loc_7f9e95
    jml loc_7f9e9f

loc_7f9e95:
    lda $25,x
    and #$04
    bne loc_7f9e9f
    jml loc_7f9ec9

loc_7f9e9f:
    rep #$20
.a16
    lda $1ccf,x
    clc
    adc $0032,x
    sta $1ccf,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd1,x
    clc
    adc $0034,x
    sta $1cd1,x
    sep #$20
.a8
    rep #$20
.a16
    lda $1cd3,x
    clc
    adc $0036,x
    sta $1cd3,x
    sep #$20

loc_7f9ec9:
.a8
    lda $21,x
    and #$20
    bne loc_7f9ed3
    jml loc_7f9efd

loc_7f9ed3:
    ldy $cf1f
    lda $0024,y
    and #$02
    bne loc_7f9ee1
    jml loc_7f9eeb

loc_7f9ee1:
    rep #$20
.a16
    txa
    cmp $1ce8,y
    sep #$20
.a8
    beq loc_7f9ef2

loc_7f9eeb:
    lda #$00
    sta $1cc1,x
    bra loc_7f9efd

loc_7f9ef2:
    lda $1cc1,x
    beq loc_7f9efa
    jsr sub_7fbb1c

loc_7f9efa:
    jsr sub_7fbaf7

loc_7f9efd:
    lda $22,x
    and #$fd
    sta $22,x
    lda $21,x
    and #$7f
    sta $21,x
    lda $26,x
    and #$fd
    sta $26,x
    lda $26,x
    and #$fb
    sta $26,x
    rtl

sub_7f9f16:
    lda $21,x
    and #$08
    bne loc_7f9f20
    jml loc_7f9f4e

loc_7f9f20:
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    phx
    tyx
    ply
    bit #$04
    beq loc_7f9f38
    jml loc_7f9f42

loc_7f9f38:
    rep #$20
.a16
    lda $1e1c
    clc
    adc $0c,x
    sta $0c,x

loc_7f9f42:
    rep #$20
    lda $1e20
    clc
    adc $10,x
    sta $10,x
    sep #$20

loc_7f9f4e:
.a8
    rts
    jsr sub_7f9fd2
    lda $16b7
    sta $0000,y
    jmp loc_7fcaa9
    jsr sub_7f9fe7
    lda $16b7
    sta $0000,y
    jmp loc_7fcabe
    jsr sub_7f9fd2
    rep #$20
.a16
    lda $16b7
    sta $0000,y
    jmp loc_7fcaa9
.a8
    jsr sub_7f9fe7
    rep #$20
.a16
    lda $16b7
    sta $0000,y
    jmp loc_7fcabe
.a8
    jsr sub_7f9fbf
.a16
    sep #$20
.a8
    lda $16b7
    sta $0000,y
    jmp loc_7fcaa9
    jsr sub_7f9fbf
.a16
    lda $16b7
    sta $0000,y
    jmp loc_7fcaa9
.a8
    jsr sub_7f9fbf
.a16
    and #$00ff
    tay
    sep #$20
.a8
    lda $16b7
    sta $d75c,y
    jmp loc_7fcabe
    jsr sub_7f9fbf
.a16
    and #$00ff
    tay
    lda $16b7
    sta $d75c,y
    jmp loc_7fcabe

sub_7f9fbf:
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sta $16b7
    jsr sub_7fc74c
    tay
    rts

sub_7f9fd2:
.a8
    rep #$20
.a16
    jsr sub_7fc74c
    tay
    lda $0000,y
    sta $16b7
    sep #$20
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rts

sub_7f9fe7:
    jsr sub_7fc4e0
    rep #$20
.a16
    and #$00ff
    tay
    lda $d75c,y
    sta $16b7
    sep #$20
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rts
    jsr sub_7fc4bc
    sta $16b3
    jsr sub_7fc4e0
    jsr sub_7fcb47
    lda $0000,y
    sta $16b1
    lda $16b3
    cmp $16b1
    beq loc_7fa048
    sec
    sbc $16b1
    cmp #$00
    bmi loc_7fa029
    cmp #$08
    bpl loc_7fa02f
    lda #$08
    bra loc_7fa02f

loc_7fa029:
    cmp #$f8
    bmi loc_7fa02f
    lda #$f8

loc_7fa02f:
    cmp #$80
    ror a
    bpl loc_7fa036
    adc #$00

loc_7fa036:
    cmp #$80
    ror a
    bpl loc_7fa03d
    adc #$00

loc_7fa03d:
    cmp #$80
    ror a
    bpl loc_7fa044
    adc #$00

loc_7fa044:
    clc
    adc $16b1

loc_7fa048:
    sta $16b1
    lda $16b1
    sta $0000,y
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b3
    sep #$20
.a8
    jsr sub_7fc504
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sta $16b1
    sep #$20
.a8
    rep #$20
.a16
    lda $16b3
    cmp $16b1
    beq loc_7fa0b2
    sec
    sbc $16b1
    cmp #$0000
    bmi loc_7fa08b
    cmp #$0008
    bpl loc_7fa093
    lda #$0008
    bra loc_7fa093

loc_7fa08b:
    cmp #$fff8
    bmi loc_7fa093
    lda #$fff8

loc_7fa093:
    cmp #$8000
    ror a
    bpl loc_7fa09c
    adc #$0000

loc_7fa09c:
    cmp #$8000
    ror a
    bpl loc_7fa0a5
    adc #$0000

loc_7fa0a5:
    cmp #$8000
    ror a
    bpl loc_7fa0ae
    adc #$0000

loc_7fa0ae:
    clc
    adc $16b1

loc_7fa0b2:
    sta $16b1
    sep #$20
.a8
    rep #$20
.a16
    lda $16b1
    sta $0000,y
    sep #$20
.a8
    jmp loc_7fcaa9
    jsr sub_7fc4bc
    sta $16b3
    jsr sub_7fc4e0
    jsr sub_7fcb47
    lda $0000,y
    sta $16b1
    lda $16b3
    cmp $16b1
    bne loc_7fa0e2
    jml loc_7fa116

loc_7fa0e2:
    sec
    sbc $16b1
    cmp #$00
    bmi loc_7fa0f2
    cmp #$08
    bpl loc_7fa0f8
    lda #$08
    bra loc_7fa0f8

loc_7fa0f2:
    cmp #$f8
    bmi loc_7fa0f8
    lda #$f8

loc_7fa0f8:
    cmp #$80
    ror a
    bpl loc_7fa0ff
    adc #$00

loc_7fa0ff:
    cmp #$80
    ror a
    bpl loc_7fa106
    adc #$00

loc_7fa106:
    cmp #$80
    ror a
    bpl loc_7fa10d
    adc #$00

loc_7fa10d:
    clc
    adc $16b1
    sta $16b1
    bra loc_7fa11a

loc_7fa116:
    jml loc_7fa123

loc_7fa11a:
    lda $16b1
    sta $0000,y
    jmp loc_7f9dde

loc_7fa123:
    lda $16b1
    sta $0000,y
    jmp loc_7fcabe
    .db $c2,$20,$20,$20,$c7,$8d,$b3,$16,$e2,$20,$20,$04,$c5,$20,$47,$cb
    .db $c2,$20,$b9,$00,$00,$8d,$b1,$16,$e2,$20,$c2,$20,$ad,$b3,$16,$cd
    .db $b1,$16,$d0,$04,$5c,$93,$a1,$7f,$38,$ed,$b1,$16,$c9,$00,$00,$30
    .db $0a,$c9,$08,$00,$10,$0d,$a9,$08,$00,$80,$08,$c9,$f8,$ff,$30,$03
    .db $a9,$f8,$ff,$c9,$00,$80,$6a,$10,$03,$69,$00,$00,$c9,$00,$80,$6a
    .db $10,$03,$69,$00,$00,$c9,$00,$80,$6a,$10,$03,$69,$00,$00,$18,$6d
    .db $b1,$16,$8d,$b1,$16,$80,$06,$e2,$20,$5c,$a8,$a1,$7f,$e2,$20,$c2
    .db $20,$ad,$b1,$16,$99,$00,$00,$e2,$20,$4c,$de,$9d,$c2,$20,$ad,$b1
    .db $16,$99,$00,$00,$e2,$20,$4c,$a9,$ca
    phx
    jsr sub_7f8995
    lda $0000,y
    sta $16b1
    lda $0000,x
    sta $16b3
    lda $16b3
    cmp $16b1
    beq loc_7fa1fc
    sec
    sbc $16b1
    cmp #$00
    bmi loc_7fa1dd
    cmp #$08
    bpl loc_7fa1e3
    lda #$08
    bra loc_7fa1e3

loc_7fa1dd:
    cmp #$f8
    bmi loc_7fa1e3
    lda #$f8

loc_7fa1e3:
    cmp #$80
    ror a
    bpl loc_7fa1ea
    adc #$00

loc_7fa1ea:
    cmp #$80
    ror a
    bpl loc_7fa1f1
    adc #$00

loc_7fa1f1:
    cmp #$80
    ror a
    bpl loc_7fa1f8
    adc #$00

loc_7fa1f8:
    clc
    adc $16b1

loc_7fa1fc:
    sta $16b1
    lda $16b1
    sta $0000,y
    plx
    jmp loc_7fcabe
    phx
    jsr sub_7f8995
    rep #$20
.a16
    lda $0000,y
    sta $16b1
    lda $0000,x
    sta $16b3
    sep #$20
.a8
    rep #$20
.a16
    lda $16b3
    cmp $16b1
    beq loc_7fa261
    sec
    sbc $16b1
    cmp #$0000
    bmi loc_7fa23a
    cmp #$0008
    bpl loc_7fa242
    lda #$0008
    bra loc_7fa242

loc_7fa23a:
    cmp #$fff8
    bmi loc_7fa242
    lda #$fff8

loc_7fa242:
    cmp #$8000
    ror a
    bpl loc_7fa24b
    adc #$0000

loc_7fa24b:
    cmp #$8000
    ror a
    bpl loc_7fa254
    adc #$0000

loc_7fa254:
    cmp #$8000
    ror a
    bpl loc_7fa25d
    adc #$0000

loc_7fa25d:
    clc
    adc $16b1

loc_7fa261:
    sta $16b1
    sep #$20
.a8
    rep #$20
.a16
    lda $16b1
    sta $0000,y
    plx
    jmp loc_7fcabe

loc_7fa272:
    lda $5e
    and #$85e7
    lsr $3a8f,x
    bmi loc_7fa27c

loc_7fa27c:
    phx
    jsr sub_7f8995
    lda $0000,x
    rep #$20
    bit #$0080
    beq loc_7fa28f
    ora #$ff00
    bra loc_7fa292

loc_7fa28f:
    and #$00ff

loc_7fa292:
    sta $16b3
    lda $0000,y
    sta $16b1
    sep #$20
.a8
    rep #$20
.a16
    lda $16b3
    cmp $16b1
    beq loc_7fa2e1
    sec
    sbc $16b1
    cmp #$0000
    bmi loc_7fa2ba
    cmp #$0008
    bpl loc_7fa2c2
    lda #$0008
    bra loc_7fa2c2

loc_7fa2ba:
    cmp #$fff8
    bmi loc_7fa2c2
    lda #$fff8

loc_7fa2c2:
    cmp #$8000
    ror a
    bpl loc_7fa2cb
    adc #$0000

loc_7fa2cb:
    cmp #$8000
    ror a
    bpl loc_7fa2d4
    adc #$0000

loc_7fa2d4:
    cmp #$8000
    ror a
    bpl loc_7fa2dd
    adc #$0000

loc_7fa2dd:
    clc
    adc $16b1

loc_7fa2e1:
    sta $16b1
    sep #$20
.a8
    rep #$20
.a16
    lda $16b1
    sta $0000,y
    plx
    jmp loc_7fcabe
.a8
    phx
    phb
    php
    lda #$7f
    pha
    pea $a313
    lda #$44
    pha
    rep #$20
.a16
    lda $2b,x
    pha
    sep #$20
.a8
    lda #$7e
    pha
    plb
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    rtl
.a16
    plp
.a8
    plb
    plx
    rep #$20
.a16
    sta $2b,x
    sep #$20
.a8
    jmp RunObjectScript
    lda #$01
    sta $b272
    jmp loc_7fcae8
    .db $c2,$20,$a9,$9c,$bc,$85,$5f,$e2,$20,$22,$17,$2a,$7f,$b0,$04,$5c
    .db $8c,$a3,$7f,$b9,$26,$00,$09,$08,$99,$26,$00,$b9,$24,$00,$09,$04
    .db $99,$24,$00,$b9,$26,$00,$09,$10,$99,$26,$00,$b9,$20,$00,$09,$10
    .db $99,$20,$00,$20,$bc,$c4,$99,$17,$00,$20,$e0,$c4,$99,$13,$00,$a9
    .db $3c,$95,$15,$20,$04,$c5,$99,$0b,$00,$b9,$21,$00,$09,$01,$99,$21
    .db $00,$c2,$20,$a9,$79,$a2,$99,$19,$00,$e2,$20,$a9,$03,$99,$1b,$00
    .db $22,$aa,$2b,$7f,$4c,$a9,$ca,$b5,$20,$09,$08,$95,$20,$4c,$e8,$ca
    lda $20,x
    and #$f7
    sta $20,x
    jmp loc_7fcae8
    lda #$01
    sta $18bb
    lda #$02
    sta $f3
    lda #$06
    sta $f4
    jmp loc_7fcae8

loc_7fa3b1:
    lda #$fe
    sta $f3
    jmp loc_7fcae8

sub_7fa3b8:
    phy
    sta $1c31
    stz $1c32
    ldy $12c3
    jsr sub_7fa439
    ply
    rts
    .db $ac,$1f,$cf,$20,$e0,$a3,$eb,$18,$79,$14,$00,$c9,$20,$90,$07,$c9
    .db $e1,$b0,$03,$4c,$f3,$ca,$4c,$be,$ca,$08,$c2,$20,$bd,$0c,$00,$38
    .db $f9,$0c,$00,$85,$02,$bd,$10,$00,$38,$f9,$10,$00,$85,$08,$22,$58
    .db $1d,$7f,$28,$60

sub_7fa3fb:
    ldy $cf1f
    lda $0023,y
    and #$40
    beq loc_7fa409
    jml loc_7fa40e

loc_7fa409:
    ldy #$033f
    bra loc_7fa411

loc_7fa40e:
    ldy #$037e

loc_7fa411:
    rts
    jsr sub_7fc4bc
    sta $1c31
    stz $1c32
    ldy $cf1f
    jsr sub_7fa439
    jmp loc_7fcad3
    jsr sub_7fc4bc
    sta $1c31
    jsr sub_7fc4e0
    sta $1c32
    ldy $cf1f
    jsr sub_7fa439
    jmp loc_7fcabe

sub_7fa439:
    rep #$20
.a16
    lda $1c31

sub_7fa43e:
    phx
    ldx $1d16
    cpy $12c3
    beq loc_7fa44f
    cpy #$033f
    beq loc_7fa44f
    ora #$8000

loc_7fa44f:
    sta $1cf6,x
    sep #$20
.a8
    lda $1d16
    inc a
    inc a
    and #$1f
    sta $1d16
    plx
    rts

loc_7fa460:
    jsr sub_7fc4bc
    sta $1c31
    stz $1c35
    ldy $cf1f
    jsr sub_7fa4ae
    jmp loc_7fcad3
    jsr sub_7fc4bc
    sta $1c31
    lda #$01
    sta $1c35
    jsr sub_7fa3fb
    jsr sub_7fa4ae
    jmp loc_7fcad3
    jsr sub_7fc4bc
    sta $1c31
    lda #$02
    sta $1c35
    jsr sub_7fa3fb
    jsr sub_7fa4ae
    jmp loc_7fcad3

loc_7fa49a:
    jsr sub_7fc4bc
    sta $1c31
    lda #$03
    sta $1c35
    jsr sub_7fa3fb
    jsr sub_7fa4ae
    jmp loc_7fcad3

sub_7fa4ae:
    php
    phx
    lda $1c31
    sta $1c33
    stz $1c34
    stx $1c37
    jsr sub_7f8c25
    rep #$20
.a16
    lda $16b5
    tax
    sep #$20
.a8
    lda $1c35
    beq loc_7fa4ce
    bra loc_7fa4d5

loc_7fa4ce:
    cpx #$0320
    bcc loc_7fa4fa
    bra loc_7fa507

loc_7fa4d5:
    lda $1c34
    cpx #$0320
    bcc loc_7fa4eb
    cpx #$0514
    bcc loc_7fa4e9
    ora #$60
    sta $1c34
    bra loc_7fa4fa

loc_7fa4e9:
    ora #$30

loc_7fa4eb:
    sta $1c34
    lda $1c35
    dec a
    beq loc_7fa4fa
    ldx $1c37
    jsr sub_7fa550

loc_7fa4fa:
    rep #$20
.a16
    lda $1c33
    cmp #$ffff
    beq loc_7fa507
    jsr sub_7fa43e

loc_7fa507:
.a8
    plx
    plp
    rts
    phy
    ldy #$1400
    bra loc_7fa514
    .db $5a,$a0,$20,$03

loc_7fa514:
    jsr sub_7fc4bc
    sta $1c31
    stz $1c35
    sty $1c37
    jsr sub_7fa3fb
    jsr sub_7fa52a
    ply
    jmp loc_7fcad3

sub_7fa52a:
    php
    lda $1c31
    sta $1c33
    stz $1c34
    jsr sub_7f8c25
    rep #$20
.a16
    lda $16b5
    cmp $1c37
    bpl loc_7fa54e
    sep #$20
.a8
    jsr sub_7fa550
    rep #$20
.a16
    lda $1c33
    jsr sub_7fa43e

loc_7fa54e:
.a8
    plp
    rts

sub_7fa550:
    php
    rep #$20
.a16
    lda $000c,x
    sec
    sbc $000c,y
    sta $02
    lda $0010,x
    sec
    sbc $0010,y
    sta $08
    jsl sub_7f1d58
    sep #$20
.a8
    xba
    sec
    sbc $0015,y
    cmp #$10
    bcc loc_7fa5b4
    cmp #$f0
    bcs loc_7fa5b4
    pha
    lda $1c35
    cmp #$03
    beq loc_7fa58b
    pla
    cmp #$70
    bcc loc_7fa5a0
    cmp #$90
    bcc loc_7fa5b4
    bra loc_7fa5ab

loc_7fa58b:
    pla
    cmp #$40
    bcc loc_7fa5a0
    cmp #$c0
    bcs loc_7fa5ab
    rep #$20
.a16
    lda #$ffff
    sta $1c33
    sep #$20
.a8
    bra loc_7fa5b4

loc_7fa5a0:
    lda $1c34
    clc
    adc #$20
    sta $1c34
    bra loc_7fa5b4

loc_7fa5ab:
    lda $1c34
    clc
    adc #$10
    sta $1c34

loc_7fa5b4:
    plp
    rts
    jsr sub_7fc4bc
    sta $1ccc,x
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    bpl loc_7fa5cb
    inc a

loc_7fa5cb:
    cmp #$80
    ror a
    sta $0000,y
    jmp loc_7fcad3

loc_7fa5d4:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    bpl loc_7fa5e2
    inc a

loc_7fa5e2:
    cmp #$8000
    ror a
    sta $0000,y
    jmp loc_7fcad3
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    lsr a
    sta $0000,y
    jmp loc_7fcad3

loc_7fa5fc:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    lsr a
    sta $0000,y
    jmp loc_7fcad3
.a8
    jsr sub_7fa6ff
.a16
    lda $16b7
    clc
    adc $54
    sta $54
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda [$54]
    sta $0000,y
    jmp loc_7fca83
    jsr sub_7fa6ff
.a16
    lda $16b7
    asl a
    clc
    adc $54
    sta $54
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$54]
    sta $0000,y
    jmp loc_7fca83

loc_7fa64f:
    jsr sub_7fa728
    lda $16b7
    clc
    adc $54
    sta $54
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda [$54]
    sta $0000,y
    jmp loc_7fca83

loc_7fa66e:
    jsr sub_7fa728
    lda $16b7
    asl a
    clc
    adc $54
    sta $54
    sep #$20
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$54]
    sta $0000,y
    jmp loc_7fca83
.a8
    jsr sub_7fa6ff
.a16
    lda $16b7
    clc
    adc $54
    sta $54
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda [$54]
    clc
    adc $0000,y
    sta $0000,y

loc_7fa6b0:
    sep #$20
    ldy $16b3
    lda $0000,y
    inc a
    sta $0000,y
    jsr sub_7fc570
    dec a
    cmp $0000,y
    bcs loc_7fa6ca
    lda #$00
    sta $0000,y

loc_7fa6ca:
    jmp loc_7fca72

loc_7fa6cd:
    jsr sub_7fa6ff
    lda $16b7
    clc
    adc $54
    sta $54
    sep #$20
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda [$54]
    rep #$20
.a16
    bit #$0080
    beq loc_7fa6f2
    ora #$ff00
    bra loc_7fa6f5

loc_7fa6f2:
    and #$00ff

loc_7fa6f5:
    clc
    adc $0000,y
    sta $0000,y
    jmp loc_7fa6b0

sub_7fa6ff:
.a8
    jsr sub_7fc504
    sta $56
    rep #$20
.a16
    jsr sub_7fc720
    sta $54
    sep #$20
.a8
    jsr sub_7fc528
    jsr sub_7fcb47
    lda $0000,y
    sty $16b3
    sta $16b7
    stz $16b8
    jsr sub_7fc54c
    jsr sub_7fcb47
    rep #$20
.a16
    rts

sub_7fa728:
    jsr sub_7fc504
    sta $56
    rep #$20
    jsr sub_7fc720
    sta $54
    sep #$20
.a8
    jsr sub_7fc528
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sty $16b3
    sta $16b7
    sep #$20
.a8
    jsr sub_7fc54c
    jsr sub_7fcb47
    rep #$20
.a16
    rts
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    sep #$20
    lda $0000,y
    sta $b269
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    sep #$20
    rep #$20
.a16
    lda $0000,y
    sta $b269
    lda $1cde,x
    jsl sub_7f1a0f
    sta $1cde,x
    sep #$20
.a8
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    sep #$20
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1ac1
    sta $1cde,x
    sep #$20
.a8
    lda $b269
    sta $0000,y
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    sep #$20
    rep #$20
.a16
    lda $1cde,x
    jsl sub_7f1ac1
    sta $1cde,x
    lda $b269
    sta $0000,y
    sep #$20
.a8
    jmp loc_7fcad3
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b1
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    ldy $cf1f
    rep #$20
.a16
    lda $0010,y
    sec
    sbc $10,x
    bpl loc_7fa7f3
    eor #$ffff
    inc a

loc_7fa7f3:
    cmp $16b1
    sep #$20
.a8
    bmi loc_7fa7fe
    jml loc_7fca94

loc_7fa7fe:
    rep #$20
.a16
    jsl sub_7f2503
.a8
    rep #$20
.a16
    lda $14fa
    cmp #$0000
    bmi loc_7fa813
    cmp $16b1
    bmi loc_7fa819

loc_7fa813:
    sep #$20
.a8
    jml loc_7fca94

loc_7fa819:
.a16
    sep #$20
.a8
    jmp loc_7fcb0b

loc_7fa81e:
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b1
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    ldy $06,x
    rep #$20
.a16
    lda $0010,y
    sec
    sbc $10,x
    bpl loc_7fa842
    eor #$ffff
    inc a

loc_7fa842:
    cmp $16b1
    sep #$20
.a8
    bmi loc_7fa84d
    jml loc_7fca94

loc_7fa84d:
    rep #$20
.a16
    jsl sub_7f2503
    rep #$20
    lda $14fa
    cmp #$0000
    bmi loc_7fa862
    cmp $16b1
    bmi loc_7fa868

loc_7fa862:
    sep #$20
.a8
    jml loc_7fca94

loc_7fa868:
.a16
    sep #$20
.a8
    jmp loc_7fcb0b
    stx $d76d
    rep #$20
.a16
    lda $2b,x
    pha
    sep #$20
.a8
    ldy $06,x
    rep #$20
.a16
    lda $002b,y
    sta $d76f
    sep #$20
.a8
    tyx
    rep #$20
.a16
    pla
    sta $2b,x
    sep #$20
.a8
    jmp loc_7fcae8
    rep #$20
.a16
    lda $06,x
    sep #$20
.a8
    bne loc_7fa89a
    jml loc_7fcaf3

loc_7fa89a:
    stx $d76d
    rep #$20
.a16
    lda $2b,x
    pha
    sep #$20
.a8
    ldy $06,x
    rep #$20
.a16
    lda $002b,y
    sta $d76f
    sep #$20
.a8
    tyx
    rep #$20
.a16
    pla
    sta $2b,x
    sep #$20
.a8
    jmp loc_7fcabe
    .db $20,$bc,$c4,$20,$47,$cb,$b9,$00,$00,$8d,$b1,$16,$8e,$6d,$d7,$c2
    .db $20,$b5,$2b,$48,$e2,$20,$b5,$23,$29,$10,$f0,$04,$5c,$de,$a8,$7f
    .db $b4,$06,$bb,$ad,$b1,$16,$22,$7b,$2a,$7f,$c0,$00,$00,$d0,$0d,$ae
    .db $6d,$d7,$c2,$20,$68,$95,$2b,$e2,$20,$82,$08,$22,$c2,$20,$b9,$2b
    .db $00,$8d,$6f,$d7,$e2,$20,$bb,$c2,$20,$68,$95,$2b,$e2,$20,$4c,$a9
    .db $ca
    jsr sub_7fc4bc
    sta $16b1
    stx $d76d
    rep #$20
.a16
    lda $2b,x
    pha
    sep #$20
.a8
    lda $23,x
    and #$10
    beq loc_7fa926
    jml loc_7fa929

loc_7fa926:
    ldy $06,x
    tyx

loc_7fa929:
    lda $16b1
    jsl sub_7f2a7b
    cpy #$0000
    bne loc_7fa942
    ldx $d76d
    rep #$20
.a16
    pla
    sta $2b,x
    sep #$20
.a8
    brl loc_7fcaff

loc_7fa942:
    rep #$20
.a16
    lda $002b,y
    sta $d76f
    sep #$20
.a8
    tyx
    rep #$20
.a16
    pla
    sta $2b,x
    sep #$20
.a8
    jmp loc_7fcaa9
    rep #$20
.a16
    lda $2b,x
    pha
    sep #$20
.a8
    rep #$20
.a16
    lda $d76f
    sta $2b,x
    sep #$20
.a8
    ldx $d76d
    rep #$20
.a16
    pla
    sta $2b,x
    sep #$20
.a8
    jmp loc_7fcae8
    stx $d76d
    rep #$20
.a16
    lda $2b,x
    pha
    sep #$20
.a8
    ldy $d771
    rep #$20
.a16
    lda $002b,y
    sta $d76f
    sep #$20
.a8
    tyx
    rep #$20
.a16
    pla
    sta $2b,x
    sep #$20
.a8
    jmp loc_7fcae8

loc_7fa996:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    pha
    ldy $cf1f
    pha
    rep #$20
.a16
    lda $002b,y
    tay
    sep #$20
.a8
    pla
    pla
    rep #$20
.a16
    and #$00ff
    clc
    adc $6c33,y
    bcc loc_7fa9bc
    lda #$ffff

loc_7fa9bc:
    sta $6c33,y
    sep #$20
.a8
    jmp loc_7fcad3

loc_7fa9c4:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    pha
    sep #$20
.a8
    ldy $cf1f
    pha
    rep #$20
.a16
    lda $002b,y
    tay
    sep #$20
.a8
    pla
    rep #$20
.a16
    pla
    clc
    adc $6c33,y
    bcc loc_7fa9eb
    lda #$ffff

loc_7fa9eb:
    sta $6c33,y
    sep #$20
.a8
    jmp loc_7fcad3
    phy
    ldy $cf1f
    pha
    rep #$20
.a16
    lda $002b,y
    tay
    sep #$20
.a8
    pla
    rep #$20
.a16
    jsr sub_7fc720
    clc
    adc $6c33,y
    bcc AddScoreStore
    lda #$ffff

AddScoreStore:    ; tail of the script opcode that adds a kill's points to the pilot's score $6c33,y, saturating at $ffff (watch: written 44, 100, 144, 200, 244 at 7F:AA0F on the five kills of the first battle)
    sta $6c33,y
    ply
    sep #$20
.a8
    jmp loc_7fcabe

loc_7faa18:
    ldy $12c3
    sty $cf1f
    lda $24,x
    and #$7f
    sta $24,x
    jmp loc_7fcae8

loc_7faa27:
    ldy $12c5
    sty $cf1f
    lda $24,x
    ora #$80
    sta $24,x
    jmp loc_7fcae8

loc_7faa36:
    jsr sub_7fc4bc
    ldy $cf1f
    cmp #$01
    beq loc_7faa45
    cpy $12c5
    bra loc_7faa48

loc_7faa45:
    cpy $12c3

loc_7faa48:
    bne loc_7faa4e
    jml loc_7fcaff

loc_7faa4e:
    jmp loc_7fcaa9

loc_7faa51:
    lda $24,x
    and #$80
    beq loc_7faa5b
    jml loc_7faa18

loc_7faa5b:
    jmp loc_7faa27

loc_7faa5e:
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    ldy $cf1f
    rep #$20
.a16
    lda $0c,x
    sec
    sbc $000c,y
    sta $1ccf,x
    sta $02
    lda $0e,x
    sec
    sbc $000e,y
    sta $1cd1,x
    sta $08
    lda $10,x
    sec
    sbc $0010,y
    sta $1cd3,x
    sta $97
    tya
    sta $1cd8,x
    sep #$20
.a8
    lda $12,x
    sec
    sbc $0012,y
    sta $1cd5,x
    lda $0012,y
    eor #$ff
    inc a
    sta $158f
    stz $158e
    lda $14,x
    sec
    sbc $0014,y
    sta $1cd6,x
    lda $0014,y
    eor #$ff
    inc a
    sta $1591
    stz $1590
    lda $16,x
    sec
    sbc $0016,y
    sta $1cd7,x
    lda $0016,y
    eor #$ff
    inc a
    sta $1593
    stz $1592
    phx
    phy
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
    jsl sub_038b85
    rep #$10
    ply
    plx
    rep #$20
    lda $b7
    sta $1ccf,x
    lda $b9
    sta $1cd1,x
    lda $bb
    sta $1cd3,x
    sep #$20
.a8
    lda $25,x
    ora #$04
    sta $25,x
    jmp loc_7fcae8

loc_7fab35:
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda $25,x
    and #$fb
    sta $25,x
    jmp loc_7fcae8
    ldy $cf1f
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
    sep #$20
.a8
    jsl sub_7f1d58
    xba
    sta $02
    jsr sub_7fc4bc
    sta $97
    asl $97
    clc
    adc $14,x
    clc
    adc $02
    cmp $97
    bcs loc_7fab7b
    jml loc_7fcaff

loc_7fab7b:
    jmp loc_7fcaa9
    jsr sub_7fc4bc
    sta $16b3
    jsr sub_7fc4e0
    sec
    sbc $16b3
    sta $16b5
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    ldy $cf1f
    rep #$20
.a16
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
    xba
    clc
    adc $0014,y
    sec
    sbc $16b3
    cmp $16b5
    bcc loc_7fabc5
    jml loc_7fca94

loc_7fabc5:
    jmp loc_7fcb0b

loc_7fabc8:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    sta $05
    stz $04
    bra loc_7fabef

loc_7fabd7:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sta $04
    sep #$20
.a8
    bra loc_7fabef
    .db $20,$bc,$c4,$85,$05,$64,$04

loc_7fabef:
    rep #$20
.a16
    lda $1ccf,x
    sta $02
    lda $1cd3,x
    sta $97
    stz $158e
    stz $1592
    lda $04
    sta $1590
    sep #$20
.a8
    phx
    phy
    sep #$20
    lda $5e
    pha
    jsl sub_7f77fe
    jsl sub_038c27
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
    lda $b7
    sta $1ccf,x
    lda $bb
    sta $1cd3,x
    jmp loc_7fcad3

loc_7fac77:
    jsr sub_7fc4bc
    sta $05
    stz $04
    ldy $06,x
    bra loc_7facd0

loc_7fac82:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    sta $05
    stz $04
    ldy $06,x
    bra loc_7faccd

loc_7fac93:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
    lda $0000,y
    sta $04
    sep #$20
.a8
    ldy $06,x
    bra loc_7faccd

loc_7faca6:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    sta $05
    stz $04
    bra loc_7faccd

loc_7facb5:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sta $04
    sep #$20
.a8
    bra loc_7faccd
    .db $20,$bc,$c4,$85,$05,$64,$04

loc_7faccd:
.a16
    ldy $cf1f

loc_7facd0:
    phy
    rep #$20
    lda $0c,x
    sec
    sbc $000c,y
    sta $02
    lda $10,x
    sec
    sbc $0010,y
    sta $97
    stz $158e
    stz $1592
    lda $04
    sta $1590
    sep #$20
.a8
    phx
    phy
    sep #$20
    lda $5e
    pha
    jsl sub_7f77fe
    jsl sub_038c27
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
    ply
    lda $b7
    clc
    adc $000c,y
    sta $0c,x
    lda $bb
    clc
    adc $0010,y
    sta $10,x
    jmp loc_7fcad3

loc_7fad66:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
    lda $0000,y
    sta $02
    bra loc_7faddb

loc_7fad75:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    bra loc_7fadca

loc_7fad80:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
    lda $0000,y
    sta $02
    ldy $06,x
    bra loc_7fadde

loc_7fad91:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
    lda $0000,y
    bit #$0080
    beq loc_7fada6
    ora #$ff00
    bra loc_7fada9

loc_7fada6:
    and #$00ff

loc_7fada9:
    sta $02
    ldy $06,x
    bra loc_7fadde
    .db $20,$bc,$c4,$c2,$20,$89,$80,$00,$f0,$05,$09,$00

loc_7fadbb:
    sbc $290380,x
    sbc $028500,x
    ldy $06,x
    bra loc_7fadde
.a8
    jsr sub_7fc4bc

loc_7fadca:
    rep #$20
.a16
    bit #$0080
    beq loc_7fadd6
    ora #$ff00
    bra loc_7fadd9

loc_7fadd6:
    and #$00ff

loc_7fadd9:
    sta $02

loc_7faddb:
    ldy $cf1f

loc_7fadde:
    sep #$20
.a8
    lda $5e
    pha
    jsl sub_7f77fe
    phy
    rep #$20
.a16
    lda $0c,x
    sec
    sbc $000c,y
    sta $700026
    lda $0e,x
    sec
    sbc $000e,y
    sta $700028
    lda $10,x
    sec
    sbc $0010,y
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
    lda $70002e
    sec
    sbc $02
    sta $700068
    sep #$20
.a8
    lda #$01
    ldx #$fc5a
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    ply
    lda $700026
    clc
    adc $000c,y
    sta $0c,x
    lda $700028
    clc
    adc $000e,y
    sta $0e,x
    lda $70002a
    clc
    adc $0010,y
    sta $10,x
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    jmp loc_7fcad3

loc_7fae62:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sta $02
    bra loc_7fae90

loc_7fae71:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    bra loc_7fae7f
    .db $20,$bc,$c4

loc_7fae7f:
    rep #$20
    bit #$0080
    beq loc_7fae8b
    ora #$ff00
    bra loc_7fae8e

loc_7fae8b:
    and #$00ff

loc_7fae8e:
    sta $02

loc_7fae90:
    sep #$20
.a8
    lda $5e
    pha
    jsl sub_7f77fe
    rep #$20
.a16
    lda $1ccf,x
    sta $700026
    lda $1cd1,x
    sta $700028
    lda $1cd3,x
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
    lda $70002e
    sec
    sbc $02
    sta $700068
    sep #$20
.a8
    lda #$01
    ldx #$fc5a
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    lda $700026
    sta $1ccf,x
    lda $700028
    sta $1cd1,x
    lda $70002a
    sta $1cd3,x
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    jmp loc_7fcad3
    .db $da,$c2,$20,$ae,$85,$12,$9b,$ae,$83,$12,$d0,$04,$bb,$4c,$9a,$af
    .db $bd,$00,$00,$8d,$83,$12,$98,$d0,$0e,$ad,$85,$12,$9d,$00,$00,$9e
    .db $02,$00,$8e,$85,$12,$80,$0e,$b9,$00,$00,$9d,$00,$00,$8a,$99,$00
    .db $00,$98,$9d,$02,$00,$bc,$00,$00,$f0,$04,$8a,$99,$02,$00,$9b,$fa
    .db $b5,$0c,$99,$04,$00,$b5,$0e,$99,$06,$00,$b5,$10,$99,$08,$00,$b5
    .db $04,$99,$0d,$00,$8a,$99,$13,$00,$98,$9d,$e6,$1c,$5a,$a9,$03,$00
    .db $22,$3b,$23,$7f,$c0,$00,$00,$d0,$06,$c2,$20,$5c,$7a,$af,$7f,$c2
    .db $20,$b9,$62,$6a,$e2,$20,$c2,$20,$80,$03,$b5,$2b,$1a,$7a,$99,$0f
    .db $00,$e2,$20,$a9,$03,$99,$12,$00,$b5,$12,$99,$0a,$00,$b5,$14,$99
    .db $0b,$00,$b5,$16,$99,$0c,$00,$4c,$e8,$ca,$e2,$20,$fa,$4c,$e8,$ca
    .db $c2,$20,$a9,$00,$00,$9d,$d8,$1c,$4c,$e8,$ca
    rep #$20
.a16
    txa
    sta $1cd8,x
    lda #$0000
    sta $1ccf,x
    sta $1cd1,x
    sta $1cd3,x
    sep #$20
.a8
    sta $1cd5,x
    sta $1cd6,x
    sta $1cd7,x
    jmp loc_7fcae8

loc_7fafcb:
    ldy $1ce6,x
    beq loc_7fafda
    rep #$20
.a16
    lda $2b,x
    sta $000f,y
    jmp loc_7fcae8

loc_7fafda:
.a8
    rep #$20
.a16
    lda $2b,x
    rep #$20
    pha
    sep #$20
.a8
    lda #$03
    jsl sub_7f2360
    rep #$20
.a16
    pla
    sta $6a62,y
    sep #$20
.a8
    rep #$20
.a16
    jmp loc_7fcae8
.a8
    jsr sub_7faffc
    jmp loc_7fcae8

sub_7faffc:
    rts

loc_7faffd:
    ldy $1cde,x
    beq loc_7fb013
    rep #$20
.a16
    tya
    jsl sub_7f196b
    rep #$20
    lda #$0000
    sta $1cde,x
    sep #$20

loc_7fb013:
.a8
    rts
    .db $20,$bc,$c4,$85,$02,$ac,$1f,$cf,$da,$bb,$7a,$5a,$b4,$2b,$b9,$a0
    .db $6a,$7a,$da,$bb,$7a,$29,$f0,$c9,$20,$f0,$04,$5c,$4a,$b0,$7f,$da
    .db $bb,$7a,$5a,$b4,$2b,$b9,$94,$6b,$09,$40,$99,$94,$6b,$a5,$02,$99
    .db $98,$6b,$7a,$da,$bb,$7a,$4c,$d3,$ca,$ac,$1f,$cf,$da,$bb,$7a,$5a
    .db $b4,$2b,$b9,$a1,$6a,$29,$f0,$09,$04,$99,$a1,$6a,$7a,$da,$bb,$7a
    .db $4c,$e8,$ca,$ac,$1f,$cf,$da,$bb,$7a,$5a,$b4,$2b,$b9,$a1,$6a,$29
    .db $f0,$09,$03,$99,$a1,$6a,$7a,$da,$bb,$7a,$4c,$e8,$ca,$ac,$1f,$cf
    .db $da,$bb,$7a,$5a,$b4,$2b,$b9,$a1,$6a,$29,$f0,$09,$01,$99,$a1,$6a
    .db $7a,$da,$bb,$7a,$4c,$e8,$ca,$ac,$1f,$cf,$da,$bb,$7a,$5a,$b4,$2b
    .db $b9,$a1,$6a,$29,$f0,$09,$02,$99,$a1,$6a,$7a,$da,$bb,$7a,$4c,$e8
    .db $ca,$ac,$1f,$cf,$da,$bb,$7a,$5a,$b4,$2b,$b9,$ec,$6b,$09,$10,$99
    .db $ec,$6b,$7a,$da,$bb,$7a,$4c,$e8,$ca,$ac,$1f,$cf,$da,$bb,$7a,$5a
    .db $b4,$2b,$b9,$ec,$6b,$29,$e7,$99,$ec,$6b,$7a,$da,$bb,$7a,$4c,$e8
    .db $ca,$ac,$1f,$cf,$20,$bc,$c4,$85,$04,$a5,$5e,$29,$e7,$85,$5e,$8f
    .db $3a,$30,$00,$a9,$00,$85,$08,$bd,$e3,$1c,$da,$bb,$7a,$5a,$b4,$2b
    .db $d9,$05,$6c,$d0,$02,$e6,$08,$99,$05,$6c,$7a,$da,$bb,$7a,$da,$bb
    .db $7a,$a5,$04,$85,$02,$22,$12,$91,$06,$da,$bb,$7a,$90,$04,$5c,$29
    .db $b1,$7f,$4c,$a9,$ca,$a5,$08,$f0,$f9,$4c,$ff,$ca,$20,$bc,$c4,$9d
    .db $e3,$1c,$4c,$d3,$ca,$20,$bc,$c4,$85,$02,$da,$ae,$1f,$cf,$b4,$2b
    .db $b9,$02,$6c,$29,$e0,$99,$02,$6c,$a5,$02,$29,$1f,$19,$02,$6c,$99
    .db $02,$6c,$fa,$4c,$d3,$ca,$c2,$20,$20,$20,$c7,$85,$02,$e2,$20,$ac
    .db $1f,$cf,$da,$b6,$2b,$9b,$fa,$c2,$20,$a5,$02,$99,$5c,$6b,$e2,$20
    .db $b9,$65,$6b,$09,$20,$99,$65,$6b,$4c,$be,$ca
    ldy $cf1f
    phx
    tyx

loc_7fb184:
    ply
    phy
    ldy $2b,x
    lda $6aa0,y
    ply
    phx
    tyx
    ply
    and #$f0
    cmp #$20
    bne loc_7fb199
    jml loc_7fb19c

loc_7fb199:
    jmp loc_7fcabe

loc_7fb19c:
    jmp loc_7fcaf3

loc_7fb19f:
.a16
    ldy $cf1f
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
    and #$c9f0
    bpl loc_7fb184
    tsb $5c
    ldy $7fb1,x
    jmp loc_7fcabe
    .db $4c,$f3,$ca
.a8
    ldy $cf1f
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
    cmp #$30
    bne loc_7fb1d9
    jml loc_7fb1dc

loc_7fb1d9:
    jmp loc_7fcabe

loc_7fb1dc:
    jmp loc_7fcaf3
    ldy $12c3
    jsr sub_7fc4bc
    sta $02
    jsr sub_7fc4e0
    sta $03
    phx
    tyx
    ply
    phy
    ldy $2b,x
    rep #$20
.a16
    lda $6b3b,y
    cmp #$0000
    sep #$20
.a8
    beq loc_7fb202
    jml loc_7fb20b

loc_7fb202:
    rep #$20
.a16
    lda $02
    sta $6b3b,y
    sep #$20

loc_7fb20b:
.a8
    ply
    phx
    tyx
    ply
    jmp loc_7fcabe
    .db $ac,$c5,$12,$20,$bc,$c4,$85,$02,$20,$e0,$c4,$85,$03,$da,$bb,$7a
    .db $5a,$b4,$2b,$c2,$20,$b9,$3b,$6b,$c9,$00,$00,$e2,$20,$f0,$04,$5c
    .db $3e,$b2,$7f,$c2,$20,$a5,$02,$99,$3b,$6b,$e2,$20,$7a,$da,$bb,$7a
    .db $4c,$be,$ca,$b5,$20,$09,$02,$95,$20,$4c,$e8,$ca
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_07b1fd
    jsr sub_7fb273
    jmp loc_7fcae8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_07b1ea
    jmp loc_7fcae8

sub_7fb273:
    ldy $1ce6,x
    beq loc_7fb280
    lda $0012,y
    ora #$20
    sta $0012,y

loc_7fb280:
    rts

loc_7fb281:
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_07b1ea
    jsr sub_7fb273
    jmp loc_7fcae8
    rep #$20
.a16
    lda #$0002
    tsb $1b84
    sep #$20
.a8
    lda $26,x
    ora #$08
    sta $26,x
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_03a6a5
    rep #$20
.a16
    lda #$003f
    jsl sub_7f194e
    tay
    sep #$20
.a8
    phx
    rep #$20
.a16
    tya
    clc
    adc #$6a61
    tay
    sep #$20
.a8
    ldx #$033f
    jsr sub_7fb2f7
    plx
    rep #$20
.a16
    tya
    sec
    sbc #$6a61
    tay
    sep #$20
.a8
    rep #$20
.a16
    tya
    pha
    sep #$20
.a8
    lda #$08
    jsl sub_7f2360
    rep #$20
.a16
    pla
    sta $6a62,y
    sep #$20
.a8
    lda #$f8
    jsr sub_7fa3b8
    jmp loc_7fcae8

sub_7fb2f7:
    phx
    phy
    lda #$3f
    sta $16b1

loc_7fb2fe:
    lda $0000,x
    sta $0000,y
    inx
    iny
    dec $16b1
    bne loc_7fb2fe
    ply
    plx
    rts
    lda $26,x
    ora #$08
    sta $26,x
    jmp loc_7fcae8

loc_7fb317:
    lda $26,x
    and #$f7
    sta $26,x
    jmp loc_7fcae8
    rep #$20
.a16
    lda #$0002
    trb $1b84
    sep #$20
.a8
    lda $26,x
    and #$f7
    sta $26,x
    lda #$08
    jsl sub_7f233b
    cpy #$0000
    bne loc_7fb33f
    jml loc_7fb36e

loc_7fb33f:
    rep #$20
.a16
    lda $6a62,y
    tay
    sep #$20
.a8
    rep #$20
.a16
    tya
    clc
    adc #$6a61
    tay
    sep #$20
.a8
    phx
    tyx
    ldy #$033f
    jsr sub_7fb2f7
    txy
    rep #$20
.a16
    tya
    sec
    sbc #$6a61
    tay
    sep #$20
.a8
    plx
    rep #$20
.a16
    tya
    jsl sub_7f196b
    sep #$20

loc_7fb36e:
.a8
    lda #$f7
    jsr sub_7fa3b8
    jmp loc_7fcae8

loc_7fb376:
    ldy #$033f
    rep #$20
.a16
    lda $000c,y
    sta $3a
    lda $0c,x
    jsl sub_7f25a3
    sta $000c,y
    sep #$20
.a8
    rep #$20
.a16
    lda $000e,y
    sta $3a
    lda $0e,x
    jsl sub_7f25a3
    sta $000e,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0010,y
    sta $3a
    lda $10,x
    jsl sub_7f25a3
    sta $0010,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0010,y
    sta $3a
    lda $10,x
    jsl sub_7f25a3
    sta $0010,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0029,y
    sta $3a
    lda #$0000
    jsl sub_7f25a3
    sta $0029,y
    sep #$20
.a8
    rep #$20
.a16
    lda $12,x
    and #$00ff
    xba
    eor #$ffff
    inc a
    sta $16b1
    lda $14,x
    and #$00ff
    xba
    eor #$ffff
    inc a
    sta $16b3
    lda $16,x
    and #$00ff
    xba
    eor #$ffff
    inc a
    sta $16b5
    sep #$20
.a8
    rep #$20
.a16
    lda $0012,y
    sta $3a
    lda $16b1
    jsl sub_7f25a3
    sta $0012,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0014,y
    sta $3a
    lda $16b3
    jsl sub_7f25a3
    sta $0014,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0016,y
    sta $3a
    lda $16b5
    jsl sub_7f25a3
    sta $0016,y
    sep #$20
.a8
    jmp loc_7fcae8

loc_7fb43b:
    ldy #$033f
    rep #$20
.a16
    lda $0c,x
    sta $000c,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0e,x
    sta $000e,y
    sep #$20
.a8
    rep #$20
.a16
    lda $10,x
    sta $0010,y
    sep #$20
.a8
    rep #$20
.a16
    lda $10,x
    sta $0010,y
    sep #$20
.a8
    rep #$20
.a16
    lda #$0000
    sta $0029,y
    sep #$20
.a8
    rep #$20
.a16
    lda $12,x
    and #$00ff
    xba
    eor #$ffff
    inc a
    sta $16b1
    lda $14,x
    and #$00ff
    xba
    eor #$ffff
    inc a
    sta $16b3
    lda $16,x
    and #$00ff
    xba
    eor #$ffff
    inc a
    sta $16b5
    sep #$20
.a8
    rep #$20
.a16
    lda $16b1
    sta $0012,y
    sep #$20
.a8
    rep #$20
.a16
    lda $16b3
    sta $0014,y
    sep #$20
.a8
    rep #$20
.a16
    lda $16b5
    sta $0016,y
    sep #$20
.a8
    jmp loc_7fcae8
    .db $ac,$1f,$cf,$da,$bb,$7a,$5a,$b4,$2b,$b9,$00,$6c,$7a,$da,$bb,$7a
    .db $cd,$d5,$1d,$d0,$04,$5c,$d4,$b4,$7f,$4c,$be,$ca,$4c,$f3,$ca,$a9
    .db $01,$9d,$ef,$1c,$4c,$e8,$ca
    lda $26,x
    and #$ef
    sta $26,x
    jmp loc_7fcae8
    lda $26,x
    ora #$10
    sta $26,x
    jmp loc_7fcae8

loc_7fb4f1:
    ldy $1ce6,x
    beq loc_7fb4fe
    lda $0012,y
    and #$f7
    sta $0012,y

loc_7fb4fe:
    jmp loc_7fcae8

loc_7fb501:
    ldy $1ce6,x
    beq loc_7fb50e
    lda $0012,y
    ora #$08
    sta $0012,y

loc_7fb50e:
    jmp loc_7fcae8

loc_7fb511:
    lda #$00
    sta $1cef,x
    jmp loc_7fcae8

loc_7fb519:
    phx
    jsr sub_7fc4bc
    rep #$20
.a16
    bit #$0080
    beq loc_7fb529
    ora #$ff00
    bra loc_7fb52c

loc_7fb529:
    and #$00ff

loc_7fb52c:
    sta $16b1
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    ldy $04,x
    tyx
    lda $000007,x
    and #$00ff
    beq loc_7fb54f

loc_7fb549:
    asl $16b1
    dec a
    bne loc_7fb549

loc_7fb54f:
    plx
    lda $16b1
    sta $1ce4,x
    jmp loc_7fcad3

loc_7fb559:
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6bec,y
    ora #$9940
    cpx $7a6b
    phx
    tyx
    ply
    jmp loc_7fcae8

loc_7fb571:
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6bec,y
    and #$99bf
    cpx $7a6b
    phx
    tyx
    ply
    jmp loc_7fcae8
    .db $ac,$1f,$cf,$20,$bc,$c4,$85,$02,$da,$bb,$7a,$5a,$b4,$2b,$b9,$ff
    .db $6b,$7a,$da,$bb,$7a,$c5,$02,$d0,$04,$5c,$a9,$b5,$7f,$4c,$a9,$ca
    .db $4c,$ff,$ca,$ac,$1f,$cf,$20,$bc,$c4,$85,$02,$da,$bb,$7a,$5a,$b4
    .db $2b,$b9,$ff,$6b,$7a,$da,$bb,$7a,$c5,$02,$f0,$04,$5c,$cc,$b5,$7f
    .db $4c,$a9,$ca,$4c,$ff,$ca,$01,$00,$02,$00,$04,$00,$08,$00,$10,$00
    .db $20,$00,$40,$00,$80,$00,$00,$01,$00,$02,$00,$04,$00,$08,$00,$10
    .db $00,$20,$00,$40,$00,$80

sub_7fb5ef:
.a8
    jsr sub_7fc4e0
    jsr sub_7fcb47
    phy
    jsr sub_7fb5fb
.a16
    ply
    rts

sub_7fb5fb:
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    dec a
    asl a
    rep #$20
.a16
    and #$00ff
    stx $16b1
    tax
    lda $7fb5cf,x
    ldx $16b1
    rts

loc_7fb617:
    jsr sub_7fb5fb
    tsb $cf33
    jmp loc_7fcad3

loc_7fb620:
    jsr sub_7fb5fb
    trb $cf33
    jmp loc_7fcad3

loc_7fb629:
    jsr sub_7fb5fb
    bit $cf33
    beq loc_7fb634
    brl loc_7fcaff

loc_7fb634:
    jmp loc_7fcaa9
.a8
    jsr sub_7fb5ef
.a16
    ora $0000,y
    sta $0000,y
    jmp loc_7fcabe
.a8
    jsr sub_7fb5ef
.a16
    eor #$ffff
    and $0000,y
    sta $0000,y
    jmp loc_7fcabe
.a8
    jsr sub_7fb5ef
.a16
    and $0000,y
    beq loc_7fb65d
    brl loc_7fcb0b

loc_7fb65d:
    jmp loc_7fca94

loc_7fb660:
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b77,y
    and #$99fb
    adc [$6b],y
    lda #$9900
    adc ($6a,x)
    ply
    phx
    tyx
    ply
    jmp loc_7fcae8

loc_7fb67d:
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b77,y
    ora #$9904
    adc [$6b],y
    ply
    phx
    tyx
    ply
    jmp loc_7fcae8

loc_7fb695:
    ldy $cf1f
    jsr sub_7fc4bc
    sta $08
    rep #$20
    lda $0c,x
    sta $02
    lda $0e,x
    sta $08
    lda $10,x
    sta $97
    jsr sub_7fc74c
    sta $04
    lda #$7fff
    sta $0a
    sep #$20
.a8
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b77,y
    ora #$04
    sta $6b77,y
    lda $08
    sta $6aae,y
    rep #$20
.a16
    lda $02
    sta $6aaf,y
    lda $08
    sta $6ab1,y
    lda $97
    sta $6ab3,y
    lda $04
    sta $6ab5,y
    lda $0a
    sta $6ab7,y
    sep #$20
.a8
    ply
    phx
    tyx
    ply
    jmp loc_7fca83
    .db $ac,$1f,$cf,$a5,$5e,$29,$e7,$85,$5e,$8f,$3a,$30,$00,$22,$93,$f8
    .db $07,$4c,$e8,$ca,$ac,$1f,$cf,$da,$bb,$7a,$5a,$b4,$2b,$b9,$77,$6b
    .db $7a,$da,$bb,$7a,$89,$04,$d0,$04,$5c,$1d,$b7,$7f,$4c,$be,$ca,$4c
    .db $f3,$ca,$ac,$1f,$cf,$da,$bb,$7a,$5a,$b4,$2b,$b9,$77,$6b,$7a,$da
    .db $bb,$7a,$89,$04,$f0,$04,$5c,$3b,$b7,$7f,$4c,$be,$ca,$4c,$f3,$ca
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6beb,y
    ply
    phx
    tyx
    ply
    bit #$80
    beq loc_7fb756
    jml loc_7fcabe

loc_7fb756:
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
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
    beq loc_7fb777
    brl loc_7fcaf3

loc_7fb777:
    jmp loc_7fcabe

loc_7fb77a:
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b77,y
    and #$fe
    sta $6b77,y
    ply
    phx
    tyx
    ply
    jmp loc_7fcae8

loc_7fb792:
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b77,y
    ora #$01
    sta $6b77,y
    ply
    phx
    tyx
    ply
    jmp loc_7fcae8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    phx
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda $0000,y
    jsl sub_0acf04
    plx
    jmp loc_7fcad3
    rep #$20
.a16
    jsr sub_7fc720
    tsb $d77d
    jmp loc_7fcabe
.a8
    rep #$20
.a16
    jsr sub_7fc720
    trb $d77d
    jmp loc_7fcabe
.a8
    rep #$20
.a16
    jsr sub_7fc720
    bit $d77d
    beq loc_7fb7e9
    brl loc_7fcb0b

loc_7fb7e9:
    jmp loc_7fca94
.a8
    rep #$20
.a16
    jsr sub_7fc720
    bit $d77d
    bne loc_7fb7f9
    brl loc_7fcb0b

loc_7fb7f9:
    jmp loc_7fca94
.a8
    stz $d77d
    stz $d77e
    jmp loc_7fcae8
    rep #$20
.a16
    jsr sub_7fc720
    tay
    sep #$20
.a8
    lda $0000,y
    inc a
    sta $0000,y
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc720
    tay
    lda $0000,y
    inc a
    sta $0000,y
    jmp loc_7fcabe
.a8
    rep #$20
.a16
    jsr sub_7fc720
    tay
    sep #$20
.a8
    lda $0000,y
    dec a
    sta $0000,y
    jmp loc_7fcabe

loc_7fb839:
    rep #$20
.a16
    jsr sub_7fc720
    tay
    lda $0000,y
    dec a
    sta $0000,y
    jmp loc_7fcabe

loc_7fb849:
    rep #$20
    jsr sub_7fc74c
    tay
    sep #$20
.a8
    lda $0000,y
    sta $16b7
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    clc
    adc $16b7
    sta $0000,y
    jmp loc_7fcaa9
    rep #$20
.a16
    jsr sub_7fc74c
    tay
    lda $0000,y
    sta $16b7
    sep #$20
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    clc
    adc $16b7
    sta $0000,y
    jmp loc_7fcaa9
.a8
    jsr sub_7fc504
    jsr sub_7fcb47
    lda $0000,y
    sta $16b7
    rep #$20
.a16
    jsr sub_7fc720
    tay
    sep #$20
.a8
    lda $0000,y
    clc
    adc $16b7
    sta $0000,y
    jmp loc_7fcaa9

loc_7fb8ae:
    jsr sub_7fc504
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sta $16b7
    jsr sub_7fc720
    tay
    lda $0000,y
    clc
    adc $16b7
    sta $0000,y
    jmp loc_7fcaa9
.a8
    ldy $cf1f
    rep #$20
.a16
    lda $000c,y
    sta $0c,x
    lda $000e,y
    sta $0e,x
    lda $0010,y
    sta $10,x
    jmp loc_7fcae8
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    sta $16b7
    jsr sub_7fc4e0
    jsr sub_7fcb47
    lda $0000,y
    cmp $16b7
    bpl loc_7fb901
    brl loc_7fcb0b

loc_7fb901:
    jmp loc_7fca94
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sta $16b7
    sep #$20
.a8
    jsr sub_7fc4e0
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    cmp $16b7
    bpl loc_7fb927
    brl loc_7fcb0b

loc_7fb927:
    jmp loc_7fca94
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    sta $16b7
    jsr sub_7fc4e0
    jsr sub_7fcb47
    lda $b272
    beq loc_7fb952
    stz $b272
    lda $0000,y
    cmp $16b7
    bne loc_7fb94f
    brl loc_7fca94

loc_7fb94f:
    jmp loc_7fcb0b

loc_7fb952:
    lda $0000,y
    cmp $16b7
    bne loc_7fb95d
    brl loc_7fcb0b

loc_7fb95d:
    jmp loc_7fca94

loc_7fb960:
    jsr sub_7fc4bc
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    sta $16b7
    sep #$20
.a8
    jsr sub_7fc4e0
    jsr sub_7fcb47
    lda $b272
    beq loc_7fb98e
    stz $b272
    rep #$20
.a16
    lda $0000,y
    cmp $16b7
    bne loc_7fb98b
    brl loc_7fca94

loc_7fb98b:
    jmp loc_7fcb0b

loc_7fb98e:
.a8
    rep #$20
.a16
    lda $0000,y
    cmp $16b7
    bne loc_7fb99b
    brl loc_7fcb0b

loc_7fb99b:
    jmp loc_7fca94
.a8
    ldy $cf1f
    phx
    tyx
    ply
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    phx
    tyx
    ply
    bit #$40
    beq loc_7fb9b6
    jml loc_7fb9b9

loc_7fb9b6:
    jmp loc_7fcabe

loc_7fb9b9:
    jmp loc_7fcaf3
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
    bit #$40
    beq loc_7fb9d4
    jml loc_7fb9dc

loc_7fb9d4:
    and #$80
    beq loc_7fb9dc
    jml loc_7fb9ee

loc_7fb9dc:
    phx
    tyx
    phy
    ldy $2b,x
    lda $6b77,y
    ply
    plx
    bit #$20
    beq loc_7fb9ee
    jml loc_7fb9f1

loc_7fb9ee:
    jmp loc_7fcabe

loc_7fb9f1:
    jmp loc_7fcaf3

loc_7fb9f4:
    ldy $06,x
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
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_7f1d58
    xba
    sta $02
    jsr sub_7fc4bc
    sta $97
    asl $97
    clc
    adc $14,x
    clc
    adc $02
    cmp $97
    bcs loc_7fba30
    jml loc_7fcaff

loc_7fba30:
    jmp loc_7fcaa9
    .db $ac,$a8,$12,$8c,$36,$14,$c2,$20,$20,$20,$c7,$85,$3a,$e2,$20,$20
    .db $04,$c5,$85,$97,$a9,$3f,$85,$e4,$a5,$97,$85,$97,$c2,$20,$a9,$00
    .db $00,$85,$3e,$a5,$3a,$85,$3a,$22,$eb,$1f,$7f,$c0,$00,$00,$e2,$20
    .db $d0,$04,$5c,$6e,$ba,$7f,$94,$06,$4c,$83,$ca,$74,$06,$74,$07,$4c
    .db $17,$cb,$ac,$1f,$cf,$da,$bb,$7a,$5a,$b4,$2b,$b9,$06,$6c,$c9,$03
    .db $b0,$04,$1a,$99,$06,$6c,$7a,$da,$bb,$7a,$4c,$e8,$ca,$a5,$5e,$29
    .db $e7,$85,$5e,$8f,$3a,$30,$00,$ad,$16,$1e,$09,$20,$8d,$16,$1e,$4c
    .db $e8,$ca,$ac,$1f,$cf,$da,$b6,$2b,$9b,$fa,$20,$bc,$c4,$19,$e4,$6b
    .db $99,$e4,$6b,$4c,$d3,$ca,$b5,$21,$09,$20,$95,$21,$c2,$20,$a9,$00
    .db $00,$9d,$c1,$1c,$e2,$20,$4c,$e8,$ca
    ldy $06,x
    beq loc_7fbaeb
    lda $12,x
    sec
    sbc $0012,y
    sta $1cd5,x
    lda $14,x
    sec
    sbc $0014,y
    sta $1cd6,x
    lda $16,x
    sec
    sbc $0016,y
    sta $1cd7,x

loc_7fbaeb:
    jmp loc_7fcae8

loc_7fbaee:
    lda $21,x
    and #$df
    sta $21,x
    jmp loc_7fcae8

sub_7fbaf7:
    ldy $cf1f
    phx
    ldx $2b,y
    txy
    plx
    rep #$20
.a16
    lda $0c,x
    sta $39,x
    lda $0e,x
    sta $3b,x
    lda $10,x
    sta $3d,x
    lda #$0001
    sta $1cc1,x
    sep #$20
.a8
    lda $0014,x
    sta $1cc3,x
    rts

sub_7fbb1c:
    ldy $cf1f
    lda $5e
    pha
    jsl sub_7f77fe
    rep #$20
.a16
    phx
    ldx $2b,y
    txy
    plx
    lda $6bed,y
    sec
    sbc $39,x
    asl a
    asl a
    asl a
    asl a
    sta $02
    sta $b7
    lda $6bef,y
    sec
    sbc $3b,x
    sta $08
    sta $b9
    lda $6bf1,y
    sec
    sbc $3d,x
    asl a
    asl a
    asl a
    asl a
    sta $97
    sta $bb
    lda $14,x
    sec
    sbc $1cc3,x
    and #$00ff
    beq loc_7fbbd9
    xba
    sta $1590
    lda $14,x
    sec
    sbc $1cc3,x
    and #$00ff
    xba
    clc
    adc $6abb,y
    sta $6abb,y
    stz $158e
    stz $1592
    phx
    phy
    sep #$20
.a8
    lda $5e
    pha
    jsl sub_7f77fe
    jsl sub_038c27
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
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    ply
    plx
    rep #$20
.a16
    rep #$10

loc_7fbbd9:
    rep #$20
    ldy $cf1f
    phx
    ldx $2b,y
    txy
    plx
    lda $b7
    cmp #$8000
    ror a
    bpl loc_7fbbee
    adc #$0000

loc_7fbbee:
    cmp #$8000
    ror a
    bpl loc_7fbbf7
    adc #$0000

loc_7fbbf7:
    cmp #$8000
    ror a
    bpl loc_7fbc00
    adc #$0000

loc_7fbc00:
    cmp #$8000
    ror a
    bpl loc_7fbc09
    adc #$0000

loc_7fbc09:
    clc
    adc $0c,x
    sta $6bed,y
    lda $08
    clc
    adc $0e,x
    sta $6bef,y
    lda $bb
    cmp #$8000
    ror a
    bpl loc_7fbc22
    adc #$0000

loc_7fbc22:
    cmp #$8000
    ror a
    bpl loc_7fbc2b
    adc #$0000

loc_7fbc2b:
    cmp #$8000
    ror a
    bpl loc_7fbc34
    adc #$0000

loc_7fbc34:
    cmp #$8000
    ror a
    bpl loc_7fbc3d
    adc #$0000

loc_7fbc3d:
    clc
    adc $10,x
    sta $6bf1,y
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    rts

loc_7fbc51:
    inc $d77f
    inc $d77f
    jmp loc_7fcae8

loc_7fbc5a:
    ldy $b26d
    bne loc_7fbc63
    jml loc_7fcabe

loc_7fbc63:
    lda #$02
    sta $b271
    rep #$20
.a16
    lda #$7e53
    sta $19,x
    sep #$20
.a8
    lda #$7f
    sta $1b,x
    rep #$20
.a16
    jsr sub_7fc720
    sta $b26f
    jmp loc_7fcabe
.a8
    lda $26,x
    ora #$40
    sta $26,x
    jmp loc_7f9dde

loc_7fbc89:
    rep #$20
.a16
    jsr sub_7fc720
    sta $16b1
    sep #$20
.a8
    ldy $cf1f
    rep #$20
.a16
    phx
    ldx $2b,y
    txy
    plx
    lda $6bf1,y
    sec
    sbc $10,x
    bpl loc_7fbca9
    eor #$ffff
    inc a

loc_7fbca9:
    sta $16b5
    sep #$20
.a8
    lda $b272
    beq loc_7fbcc7
    stz $b272
    rep #$20
.a16
    lda $16b5
    cmp $16b1
    bcc loc_7fbcc4
    jml loc_7fcb0b

loc_7fbcc4:
    jmp loc_7fca94

loc_7fbcc7:
.a8
    rep #$20
.a16
    lda $16b5
    cmp $16b1
    bcs loc_7fbcd5
    jml loc_7fcb0b

loc_7fbcd5:
    jmp loc_7fca94
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    cmp $17,x
    bne loc_7fbce9
    jml loc_7fcacf

loc_7fbce9:
    inc $17,x
    rep #$20
.a16
    dec $2b,x
    sep #$20
.a8
    jmp loc_7f9dde
    lda $09,x
    ora #$01
    sta $09,x
    jmp loc_7fcae8

loc_7fbcfd:
    lda $09,x
    and #$fe
    sta $09,x
    jmp loc_7fcae8
    jsr sub_7fc4bc
    and $c4
    bne loc_7fbd10
    jmp loc_7fcaff

loc_7fbd10:
    jmp loc_7fcaa9
    jsr sub_7fc4bc
    jsr sub_7fcb47
    lda $0000,y
    bra loc_7fbd21
    .db $20,$bc,$c4

loc_7fbd21:
    sta $97
    ldy $06,x
    stz $149d
    jsl sub_7f21a5
.a16
    sep #$20
.a8
    xba
    cmp $12,x
    beq loc_7fbd33

loc_7fbd33:
    sta $12,x
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    beq loc_7fbd43

loc_7fbd43:
    sta $14,x
    lda #$00
    sta $02
    sta $04
    bit #$80
    beq loc_7fbd55
    lda #$ff
    sta $05
    bra loc_7fbd57

loc_7fbd55:
    stz $05

loc_7fbd57:
    lda #$00
    sta $08
    sta $0a
    bit #$80
    beq loc_7fbd67
    lda #$ff
    sta $0b
    bra loc_7fbd69

loc_7fbd67:
    stz $0b

loc_7fbd69:
    lda $97
    sta $97
    sta $e4
    bit #$80
    beq loc_7fbd79
    lda #$ff
    sta $e5
    bra loc_7fbd7b

loc_7fbd79:
    stz $e5

loc_7fbd7b:
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
    sta $04
    lda $0a
    asl a
    asl a
    asl a
    sta $0a
    lda $e4
    asl a
    asl a
    asl a
    sta $e4
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
    jmp loc_7fcad3
    ldy $06,x
    phx
    ldx $2b,y
    txy
    plx
    lda $6c03,y
    cmp #$00
    bne loc_7fbddb
    jml loc_7fbde2

loc_7fbddb:
    lda $6c03,y
    dec a
    sta $6c03,y

loc_7fbde2:
    jmp loc_7fcae8
    ldy $06,x
    phx
    ldx $2b,y
    txy
    plx
    phx
    tyx
    ply
    inc $6c03,x
    phx
    tyx
    ply
    jmp loc_7fcae8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_0ddf47
    bcc loc_7fbe16
    dec a
    bmi loc_7fbe13
    beq loc_7fbe10
    jmp loc_7fcb23

loc_7fbe10:
    jmp loc_7fcb0b

loc_7fbe13:
    jmp loc_7fcaf3

loc_7fbe16:
    jmp loc_7fca72
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda $1e14
    jsl sub_06810f
    jmp loc_7fcae8
    stx $1dff
    jmp loc_7fcae8
    .db $ac,$1f,$cf,$80,$07
    ldy $1dff
    bra loc_7fbe3f
    .db $b4,$06

loc_7fbe3f:
    stz $149d
    phx
    rep #$20
.a16
    jsr sub_7fc720
    tax
    jsr sub_7fc778
    and #$0007
    sta $16b1
    sep #$20
.a8
    jsl sub_7f21a5
.a16
    rep #$20
    eor #$ffff
    inc a

loc_7fbe5e:
    dec $16b1
    bmi loc_7fbe69
    cmp #$8000
    ror a
    bra loc_7fbe5e

loc_7fbe69:
    sta $12,x
    sep #$20
.a8
    jsl sub_7f2188
.a16
    rep #$20
    sta $14,x
    sep #$20
.a8
    rep #$20
.a16
    lda $16,x
    sta $3a
    lda #$0000
    jsl sub_7f2567
    sta $16,x
    sep #$20
.a8
    plx
    jmp loc_7fcaa9
    ldy $1dff
    bra loc_7fbe98
    .db $ac,$1f,$cf,$80,$02,$b4,$06

loc_7fbe98:
    stz $149d
    phx
    rep #$20
.a16
    jsr sub_7fc720
    tax
    jsr sub_7fc778
    and #$0007
    sta $16b1
    sep #$20
.a8
    jsl sub_7f21a5
.a16
    rep #$20
    eor #$ffff
    inc a

loc_7fbeb7:
    dec $16b1
    bmi loc_7fbec2
    cmp #$8000
    ror a
    bra loc_7fbeb7

loc_7fbec2:
    sta $02
    sep #$20
.a8
    rep #$20
.a16
    lda $12,x
    sta $3a
    lda $02
    jsl sub_7f2567
    sta $12,x
    sep #$20
.a8
    jsl sub_7f2188
.a16
    rep #$20
    sta $08
    sep #$20
.a8
    rep #$20
.a16
    lda $14,x
    sta $3a
    lda $08
    jsl sub_7f2567
    sta $14,x
    sep #$20
.a8
    rep #$20
.a16
    lda $16,x
    sta $3a
    lda #$0000
    jsl sub_7f2567
    sta $16,x
    sep #$20
.a8
    plx
    jmp loc_7fcaa9
    jsr sub_7fc4bc
    sta $1d72
    jmp loc_7fcad3
    lda $1d72
    bne loc_7fbf16
    jmp loc_7fcaf3

loc_7fbf16:
    jmp loc_7fcabe
    jsr sub_7fc4bc
    cmp $1d72
    beq loc_7fbf24
    jmp loc_7fcaff

loc_7fbf24:
    jmp loc_7fcaa9
    jsr sub_7fc4bc
    cmp $1d72
    bne loc_7fbf32
    jmp loc_7fcaff

loc_7fbf32:
    jmp loc_7fcaa9

loc_7fbf35:
    lda #$00
    sta $1d72
    jmp loc_7fcae8
    lda $1d77
    sta $192e
    phx
    ldx $1d78
    stx $1657
    plx
    jmp loc_7fcae8
    ldy $cf1f
    jsl sub_7f2be2
    jmp loc_7fcae8

loc_7fbf58:
    jsr sub_7fc4bc
    cmp $1dd4
    bne loc_7fbf63
    jmp loc_7fcaff

loc_7fbf63:
    jmp loc_7fcaa9
    rep #$20
.a16
    jsr sub_7fc720
    sta $1ce1
    jsl QueueSound
    jmp loc_7fcabe
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_07f1ae
    jmp loc_7fcae8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    lda $1cea,x
    pha
    jsl sub_0daf3a
    pla
    sta $1cea,x
    rep #$20
.a16
    lda $0e,x
    sec
    sbc $08
    bmi loc_7fbfa8
    jmp loc_7fcaf3

loc_7fbfa8:
    jmp loc_7fcabe
.a8
    ldy $cf1f
    jsl sub_7f2baa
    phx
    ldx $2b,y
    txy
    plx
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
    jmp loc_7fcae8
    ldy $cf1f
    jsl sub_7f2bd2
    phx
    ldx $2b,y
    txy
    plx
    rep #$20
.a16
    lda $11,x
    and #$ff00
    sta $6ab9,y
    lda $13,x
    and #$ff00
    sta $6abb,y
    lda $16,x
    and #$00ff
    sta $6abd,y
    jmp loc_7fcae8
.a8
    rep #$20
.a16
    jsr sub_7fc720
    tay
    sep #$20
.a8
    jsl sub_7f2baa
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc720
    tay
    lda $11,x
    and #$ff00
    sta $0012,y
    lda $13,x
    and #$ff00
    sta $0014,y
    lda $15,x
    and #$ff00
    sta $0016,y
    sep #$20
.a8
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc720
    tay
    sep #$20
.a8
    rep #$20
.a16
    lda $000c,y
    sta $3a
    lda $0c,x
    jsl sub_7f25a3
    sta $000c,y
    sep #$20
.a8
    rep #$20
.a16
    lda $000e,y
    sta $3a
    lda $0e,x
    jsl sub_7f25a3
    sta $000e,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0010,y
    sta $3a
    lda $10,x
    jsl sub_7f25a3
    sta $0010,y
    sep #$20
.a8
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc720
    tay
    lda $11,x
    and #$ff00
    sta $02
    lda $13,x
    and #$ff00
    sta $08
    lda $15,x
    and #$ff00
    sta $97
    sep #$20
.a8
    rep #$20
.a16
    lda $0012,y
    sta $3a
    lda $02
    jsl sub_7f25a3
    sta $0012,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0014,y
    sta $3a
    lda $08
    jsl sub_7f25a3
    sta $0014,y
    sep #$20
.a8
    rep #$20
.a16
    lda $0016,y
    sta $3a
    lda $97
    jsl sub_7f25a3
    sta $0016,y
    sep #$20
.a8
    jmp loc_7fcabe
    ldy #$033f
    lda $0013,y
    sta $12,x
    lda $0015,y
    sta $14,x
    lda $0017,y
    sta $16,x
    jmp loc_7fcae8

loc_7fc0d4:
    ldy #$033f
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
    jmp loc_7fcae8

loc_7fc0ed:
    ldy $cf1f
    phx
    ldx $2b,y
    txy
    plx
    lda $6b32,y
    sta $12,x
    lda $6b34,y
    sta $14,x
    lda $6b36,y
    sta $16,x
    jmp loc_7fcae8

loc_7fc107:
    ldy $cf1f
    phx
    ldx $2b,y
    txy
    plx
    rep #$20
.a16
    lda $6ac1,y
    sta $0c,x
    lda $6ac3,y
    sta $0e,x
    lda $6ac5,y
    sta $10,x
    sep #$20
.a8
    jmp loc_7fcae8
    rep #$20
.a16
    jsr sub_7fc720
    sta $169b
    lda $1d27
    ora #$0004
    sta $1d27
    sep #$20
.a8
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc720
    sta $3a
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_07b746
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc720
    sta $3a
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_07b726
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc720
    sta $3a
    sep #$20
.a8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_07b6ef
    jmp loc_7fcabe
    sep #$20
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_07b833
    jmp loc_7fcae8
    lda $5e
    and #$e7
    sta $5e
    sta $00303a
    jsl sub_07b64b
    jmp loc_7fcae8

loc_7fc1ad:
    lda $1d74
    ora #$40
    sta $1d74
    jmp loc_7fcae8
    phx
    ldx $cf1f
    ldy $14d6
    lda $16b1
    sta $02
    sta $04
    bit #$80
    beq loc_7fc1d0
    lda #$ff
    sta $05
    bra loc_7fc1d2

loc_7fc1d0:
    stz $05

loc_7fc1d2:
    lda $16b3
    sta $08
    sta $0a
    bit #$80
    beq loc_7fc1e3
    lda #$ff
    sta $0b
    bra loc_7fc1e5

loc_7fc1e3:
    stz $0b

loc_7fc1e5:
    lda $16b5
    sta $97
    sta $e4
    bit #$80
    beq loc_7fc1f6
    lda #$ff
    sta $e5
    bra loc_7fc1f8

loc_7fc1f6:
    stz $e5

loc_7fc1f8:
    lda $14,x
    jsl sub_7f38a9
    rep #$20
.a16
    lda $04
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
    sta $0a
    lda $e4
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
    plx
    stz $149d
    jsl sub_7f21a5
.a16
    sep #$20
.a8
    xba
    cmp $12,x
    beq loc_7fc271
    sec
    sbc $12,x
    cmp #$00
    bmi loc_7fc253
    cmp #$08
    bpl loc_7fc259
    lda #$08
    bra loc_7fc259

loc_7fc253:
    cmp #$f8
    bmi loc_7fc259
    lda #$f8

loc_7fc259:
    cmp #$80
    ror a
    bpl loc_7fc260
    adc #$00

loc_7fc260:
    cmp #$80
    ror a
    bpl loc_7fc267
    adc #$00

loc_7fc267:
    cmp #$80
    ror a
    bpl loc_7fc26e
    adc #$00

loc_7fc26e:
    clc
    adc $12,x

loc_7fc271:
    sta $12,x
    jsl sub_7f2188
.a16
    sep #$20
.a8
    xba
    eor #$ff
    inc a
    cmp $14,x
    beq loc_7fc2ae
    sec
    sbc $14,x
    cmp #$00
    bmi loc_7fc290
    cmp #$08
    bpl loc_7fc296
    lda #$08
    bra loc_7fc296

loc_7fc290:
    cmp #$f8
    bmi loc_7fc296
    lda #$f8

loc_7fc296:
    cmp #$80
    ror a
    bpl loc_7fc29d
    adc #$00

loc_7fc29d:
    cmp #$80
    ror a
    bpl loc_7fc2a4
    adc #$00

loc_7fc2a4:
    cmp #$80
    ror a
    bpl loc_7fc2ab
    adc #$00

loc_7fc2ab:
    clc
    adc $14,x

loc_7fc2ae:
    sta $14,x
    jmp loc_7fcae8
    rep #$20
.a16
    lda $0c,x
    sta $1e01
    lda $0e,x
    sta $1e03
    lda $10,x
    sta $1e05
    jmp loc_7fcae8

loc_7fc2c7:
    txa
    clc
    adc $c4
    rep #$20
    asl a
    and #$003e
    txy
    tax
    lda $7fc306,x
    clc
    adc $000c,y
    sta $000c,y
    lda $7fc306,x
    clc
    adc $0010,y
    sta $0010,y
    tya
    clc
    adc $c4
    clc
    adc #$0007
    asl a
    asl a
    and #$003e
    tax
    lda $7fc306,x
    clc
    adc $000e,y
    sta $000e,y
    tyx
    jmp loc_7fcae8
    .db $08,$00,$06,$00,$04,$00,$03,$00,$02,$00,$01,$00,$01,$00,$00,$00
    .db $00,$00,$ff,$ff,$ff,$ff,$fe,$ff,$fd,$ff,$fc,$ff,$fa,$ff,$f8,$ff
    .db $f8,$ff,$fa,$ff,$fc,$ff,$fd,$ff,$fe,$ff,$ff,$ff,$ff,$ff,$00,$00
    .db $00,$00,$01,$00,$01,$00,$02,$00,$03,$00,$04,$00,$06,$00,$08,$00
.a8
    rep #$20
.a16
    jsr sub_7fc720
    tay
    sep #$20
.a8
    jsr sub_7fc504
    sta $0000,y
    jmp loc_7fcaa9
    rep #$20
.a16
    jsr sub_7fc720
    tay
    jsr sub_7fc778
    sta $0000,y
    jmp loc_7fca94
    .db $ad,$43,$d7,$3a,$f0,$03,$82,$4f,$07,$4c,$f3,$ca,$b5,$26,$09,$20
    .db $95,$26,$4c,$e8,$ca,$b5,$26,$29,$df,$95,$26,$4c,$e8,$ca
.a8
    jsr sub_7fc4bc
    pha
    lda #$0d
    jsl sub_7f2360
    pla
    sta $6a62,y
    jmp loc_7fcad3
    jsr sub_7fc4bc
    pha
    lda #$0b
    jsl sub_7f2360
    pla
    sta $6a62,y
    jmp loc_7fcad3
    jsr sub_7fc4bc
    sta $1cee,x
    jmp loc_7fcad3
    jsr sub_7fc4bc
    sta $16b1
    lda $31,x
    and $16b1
    sta $31,x
    jmp loc_7fcad3
    jsr sub_7fc4bc
    sta $16b1
    lda $31,x
    ora $16b1
    sta $31,x
    jmp loc_7fcad3
    lda #$00
    ora #$80
    sta $1ccb,x
    jmp loc_7fcae8

loc_7fc3d9:
    lda $25,x
    ora #$80
    sta $25,x
    jmp loc_7fcae8

loc_7fc3e2:
    lda $25,x
    and #$7f
    sta $25,x
    jmp loc_7fcae8
    jsr sub_7fc4e0
    sta $16b5
    jsr sub_7fc4bc
    jsr sub_7fcb47
    jsl sub_7f7bd0
    and $16b5
    sta $3a
    lda $16b5
    lsr a
    eor #$ff
    inc a
    clc
    adc $3a
    clc
    adc $0000,y
    sta $0000,y
    jmp loc_7fcabe
    rep #$20
.a16
    jsr sub_7fc74c
    sta $16b5
    sep #$20
.a8
    jsr sub_7fc4bc
    jsr sub_7fcb47
    jsl sub_7f7bd0
    xba
    jsl sub_7f7bd0
    rep #$20
.a16
    and $16b5
    sta $3a
    lda $16b5
    lsr a
    eor #$ffff
    inc a
    clc
    adc $3a
    clc
    adc $0000,y
    sta $0000,y
    jmp loc_7fcaa9
.a8
    jsr sub_7fc4bc
    sta $d77f
    jmp loc_7fcad3
    jsr sub_7fc4bc
    jsr sub_7fcb47
    phy
    rep #$20
.a16
    lda $0000,y
    sta $16b3
    sep #$20
.a8
    jsr sub_7fc4e0
    jsr sub_7fcb47
    rep #$20
.a16
    lda $0000,y
    pha
    lda $16b3
    sta $0000,y
    pla
    ply
    sta $0000,y
    jmp loc_7fcabe

loc_7fc47d:
    lda $1ddd
    ora #$8d80
    cmp $4c1d,x
    inx
    dex
    lda $1ddd
    bit #$f080
    tsb $5c
    stx $c4,y
    adc $cabe4c,x
    jmp loc_7fcaf3

loc_7fc499:
.a8
.i8
    lda #$0c
    jsl sub_7f2360
    rep #$20
.a16
    lda #$c4b1
    sta $6a62,y
    sep #$20
.a8
    lda #$7f
    sta $6a64,y
    brl RunObjectScript
    .db $5c,$77,$a0,$03,$b5,$22,$09,$02,$95,$22,$6b

sub_7fc4bc:
.i16
    sty $79
    ldy #$0001
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts

sub_7fc4e0:
    sty $79
    ldy #$0002
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts

sub_7fc504:
    sty $79
    ldy #$0003
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts

sub_7fc528:
    sty $79
    ldy #$0004
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts

sub_7fc54c:
    sty $79
    ldy #$0005
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts

sub_7fc570:
    sty $79
    ldy #$0006
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts

sub_7fc594:
    sty $79
    ldy #$0007
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts

sub_7fc5b8:
    sty $79
    ldy #$0008
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts

sub_7fc5dc:
    sty $79
    ldy #$0009
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts
    .db $84,$79,$a0,$0a,$00,$a5,$5e,$29,$ef,$85,$5e,$8f,$3a,$30,$00,$b7
    .db $f9,$8d,$11,$19,$a5,$5e,$09,$10,$85,$5e,$8f,$3a,$30,$00,$ad,$11
    .db $19,$a4,$79,$60,$84,$79,$a0,$0b,$00,$a5,$5e,$29,$ef,$85,$5e,$8f
    .db $3a,$30,$00,$b7,$f9,$8d,$11,$19,$a5,$5e,$09,$10,$85,$5e,$8f,$3a
    .db $30,$00,$ad,$11,$19,$a4,$79,$60,$84,$79,$a0,$0c,$00,$a5,$5e,$29
    .db $ef,$85,$5e,$8f,$3a,$30,$00,$b7,$f9,$8d,$11,$19,$a5,$5e,$09,$10
    .db $85,$5e,$8f,$3a,$30,$00,$ad,$11,$19,$a4,$79,$60

sub_7fc66c:
    sty $79
    ldy #$000d
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts
    .db $84,$79,$a0,$0e,$00,$a5,$5e,$29,$ef,$85,$5e,$8f,$3a,$30,$00,$b7
    .db $f9,$8d,$11,$19,$a5,$5e,$09,$10,$85,$5e,$8f,$3a,$30,$00,$ad,$11
    .db $19,$a4,$79,$60,$84,$79,$a0,$0f,$00,$a5,$5e,$29,$ef,$85,$5e,$8f
    .db $3a,$30,$00,$b7,$f9,$8d,$11,$19,$a5,$5e,$09,$10,$85,$5e,$8f,$3a
    .db $30,$00,$ad,$11,$19,$a4,$79,$60

sub_7fc6d8:
    sty $79
    ldy #$0010
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    lda [$f9],y
    sta $1911
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    lda $1911
    ldy $79
    rts
    .db $84,$79,$a0,$11,$00,$a5,$5e,$29,$ef,$85,$5e,$8f,$3a,$30,$00,$b7
    .db $f9,$8d,$11,$19,$a5,$5e,$09,$10,$85,$5e,$8f,$3a,$30,$00,$ad,$11
    .db $19,$a4,$79,$60

sub_7fc720:
.a16
    sty $79
    ldy #$0001
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts

sub_7fc74c:
    sty $79
    ldy #$0002
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts

sub_7fc778:
    sty $79
    ldy #$0003
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts

sub_7fc7a4:
    sty $79
    ldy #$0004
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts

sub_7fc7d0:
    sty $79
    ldy #$0005
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts

sub_7fc7fc:
    sty $79
    ldy #$0006
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts

sub_7fc828:
    sty $79
    ldy #$0007
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts
    .db $84,$79,$a0,$08,$00,$e2,$20,$a5,$5e,$29,$ef,$85,$5e,$8f,$3a,$30
    .db $00,$c2,$20,$b7,$f9,$8d,$11,$19,$e2,$20,$a5,$5e,$09,$10,$85,$5e
    .db $8f,$3a,$30,$00,$c2,$20,$ad,$11,$19,$a4,$79,$60

sub_7fc880:
    sty $79
    ldy #$0009
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911

loc_7fc8a9:
    ldy $79
    rts

sub_7fc8ac:
    sty $79
    ldy #$000a
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts

sub_7fc8d8:
    sty $79
    ldy #$000b
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts

sub_7fc904:
    sty $79
    ldy #$000c
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts
    .db $84,$79,$a0,$0d,$00,$e2,$20,$a5,$5e,$29,$ef,$85,$5e,$8f,$3a,$30
    .db $00,$c2,$20,$b7,$f9,$8d,$11,$19,$e2,$20,$a5,$5e,$09,$10,$85,$5e
    .db $8f,$3a,$30,$00,$c2,$20,$ad,$11,$19,$a4,$79,$60

sub_7fc95c:
    sty $79
    ldy #$000e
    sep #$20
.a8
    lda $5e
    and #$ef
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda [$f9],y
    sta $1911
    sep #$20
.a8
    lda $5e
    ora #$10
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $1911
    ldy $79
    rts
    .db $84,$79,$a0,$0f,$00,$e2,$20,$a5,$5e,$29,$ef,$85,$5e,$8f,$3a,$30
    .db $00,$c2,$20,$b7,$f9,$8d,$11,$19,$e2,$20,$a5,$5e,$09,$10,$85,$5e
    .db $8f,$3a,$30,$00,$c2,$20,$ad,$11,$19,$a4,$79,$60,$84,$79,$a0,$10
    .db $00,$e2,$20,$a5,$5e,$29,$ef,$85,$5e,$8f,$3a,$30,$00,$c2,$20,$b7
    .db $f9,$8d,$11,$19,$e2,$20,$a5,$5e,$09,$10,$85,$5e,$8f,$3a,$30,$00
    .db $c2,$20,$ad,$11,$19,$a4,$79,$60,$84,$79,$a0,$11,$00,$e2,$20,$a5
    .db $5e,$29,$ef,$85,$5e,$8f,$3a,$30,$00,$c2,$20,$b7,$f9,$8d,$11,$19
    .db $e2,$20,$a5,$5e,$09,$10,$85,$5e,$8f,$3a,$30,$00,$c2,$20,$ad,$11
    .db $19,$a4,$79,$60

loc_7fca0c:
    sep #$20
.a8
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0011
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fca1d:
    sep #$20
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0010
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fca2e:
.a16
    sep #$20
.a8
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$000e
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fca3f:
    sep #$20
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$000d
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fca50:
    sep #$20
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0009
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fca61:
.a16
    sep #$20
.a8
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0008
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fca72:
    sep #$20
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0007
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fca83:
    sep #$20
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0006
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fca94:
    sep #$20
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0005
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75
    .db $a9,$00,$95,$17

loc_7fcaa9:
    sep #$20
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0004
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75
    .db $a9,$00,$95,$17

loc_7fcabe:
    sep #$20
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0003
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fcacf:
    lda #$00
    sta $17,x

loc_7fcad3:
    sep #$20
    rep #$20
.a16
    lda $2b,x
    clc
    adc #$0002
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75
    .db $a9,$00,$95,$17

loc_7fcae8:
    sep #$20
    rep #$20
.a16
    inc $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fcaf3:
    rep #$20
.a16
    jsr sub_7fc720
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fcaff:
    rep #$20
.a16
    jsr sub_7fc74c
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fcb0b:
    rep #$20
.a16
    jsr sub_7fc778
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fcb17:
    rep #$20
.a16
    jsr sub_7fc7a4
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fcb23:
    rep #$20
.a16
    jsr sub_7fc7d0
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fcb2f:
.a16
    rep #$20
    jsr sub_7fc7fc
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

loc_7fcb3b:
    rep #$20
.a16
    jsr sub_7fc828
    sta $2b,x
    sep #$20
.a8
    jmp loc_7f7e75

sub_7fcb47:
    php
    rep #$20
.a16
    stx $16b1
    and #$00ff
    bit #$0080
    beq loc_7fcb59
    clc
    adc #$1c41

loc_7fcb59:
    clc
    adc $16b1
    tay
    plp
.a8
    rts
    .db $c2,$20,$6b,$e2,$20,$6b
.endbase

sub_0acd66:
    php
    phb
    sep #$20
    rep #$10
    lda #$00
    pha
    plb
    lda $7ecf32
    bne loc_0acd79
    brl loc_0acdd0

loc_0acd79:
    bpl loc_0acd7e
    brl loc_0ace29

loc_0acd7e:
    cmp #$05
    bcc loc_0acdd3
    lda $7ecf31
    jsl sub_0acfbe
    lda $17f6
    asl a
    sta $02
    stz $03
    jsl sub_7f7bd0
    rep #$20
.a16
    and #$0001
    clc
    adc $02
    tax
    lda $1b48
    and #$00ff
    cmp #$0001
    bne loc_0acdb4
    lda $0acea8,x
    sta $7000aa
    bra loc_0acdbc

loc_0acdb4:
    lda $0ace8c,x
    sta $7000aa

loc_0acdbc:
    jsr sub_0ace5f
    sep #$20
.a8
    lda $7ecf32
    inc a
    cmp #$36
    bcc loc_0acdcc
    lda #$fc

loc_0acdcc:
    sta $7ecf32

loc_0acdd0:
    plb
    plp
    rtl

loc_0acdd3:
    dec a
    rep #$20
.a16
    and #$00ff
    tax
    cmp #$0001
    bne loc_0ace11
    phx
    lda $7ecf31
    jsr sub_0acf46
    lda $1b48
    and #$00ff
    asl a
    asl a
    asl a
    asl a
    sta $02
    lda $17f6
    and #$00ff
    clc
    adc $02
    tax
    sep #$20
.a8
    lda $0acec4,x
    rep #$20
.a16
    and #$00ff
    jsl QueueSound
    sep #$20
.a8
    rep #$20
.a16
    plx

loc_0ace11:
    lda $0ace84,x
    sta $7000aa
    jsr sub_0ace5f
    sep #$20
.a8
    lda $7ecf32
    inc a
    sta $7ecf32
    bra loc_0acdd0

loc_0ace29:
    eor #$ff
    inc a
    rep #$20
.a16
    and #$00ff
    tax
    cmp #$0004
    bne loc_0ace46
    sep #$20
.a8
    rep #$20
.a16
    lda #$0047
    jsl QueueSound
    sep #$20
.a8
    rep #$20

loc_0ace46:
.a16
    lda $0ace83,x
    sta $7000aa
    jsr sub_0ace5f
    sep #$20
.a8
    lda $7ecf32
    inc a
    sta $7ecf32
    brl loc_0acdd0

sub_0ace5f:
.a16
    php
    rep #$20
    lda #$0021
    sta $700068
    lda $7ed744
    sta $70002c
    sep #$20
.a8
    sep #$20
    lda #$01
    ldx #$e128
    jsl sub_7f787b
    sep #$20
    rep #$10
    plp
.a16
    rts
    .db $32,$33,$34,$35,$35,$34,$33,$32,$2e,$2f,$36,$37,$30,$31,$38,$39
    .db $3b,$3c,$3d,$42,$43,$44,$3e,$3f,$40,$41,$45,$45,$bb,$bc,$bd,$c2
    .db $c3,$c4,$c5,$ca,$2e,$2f,$36,$37,$30,$31,$38,$39,$43,$44,$3d,$42
    .db $43,$44,$3e,$3f,$40,$41,$45,$45,$ba,$35,$cb,$35,$cc,$35,$cd,$35
    .db $58,$58,$58,$58,$49,$5d,$58,$58,$58,$58,$4c,$4f,$4d,$4e,$00,$00
    .db $59,$59,$59,$59,$4b,$5f,$59,$59,$59,$59,$4c,$4f,$4d,$4e,$00,$00
    .db $59,$59,$59,$59,$4a,$5e,$59,$59,$59,$59,$59,$59,$59,$59,$00,$00
    .db $56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56

sub_0acf04:
.a8
    php
    sep #$20
    rep #$10
    dec a
    sta $7ecf31
    lda #$01
    sta $7ecf32
    lda #$97
    sta $7ed744
    lda $7ed775
    beq loc_0acf26
    lda #$8b
    sta $7ed744

loc_0acf26:
    lda $001e31
    cmp #$92
    bmi loc_0acf38
    lda #$23
    sta $7ed744
    lda #$01
    bra loc_0acf3a

loc_0acf38:
    lda #$00

loc_0acf3a:
    sta $7ed759
    lda #$00
    sta $7ed745
    plp
    rtl

sub_0acf46:
    php
    rep #$30
.a16
    and #$00ff
    asl a
    tax
    sep #$20
.a8
    lda #$97
    sta $7ed744
    lda $7ed775
    beq loc_0acf62
    lda #$8b
    sta $7ed744

loc_0acf62:
    lda $7ed759
    beq loc_0acf78
    lda #$23
    sta $7ed744
    lda $001e31
    cmp #$7c
    bmi loc_0acf80
    bra loc_0acf8a

loc_0acf78:
    lda $001e31
    cmp #$92
    bmi loc_0acf8a

loc_0acf80:
    lda $7ed759
    eor #$01
    sta $7ed759

loc_0acf8a:
    lda #$00
    pha
    plb
    rep #$20
.a16
    lda $00aeb3,x
    tax
    inc a
    inc a
    sta $7000b8
    sep #$20
.a8
    lda $000000,x
    sta $17f6
    lda $000001,x
    sta $1b48
    sta $700358
    lda $17f6
    cmp #$05
    bne loc_0acfbc
    lda #$00
    sta $700358

loc_0acfbc:
    plp
    rts

sub_0acfbe:
    php
    phb
    jsr sub_0acf46
    rep #$20
.a16
    lda #$0048
    sta $700068
    lda $7ed744
    clc
    adc #$0014
    sta $70002c
    lda #$000e
    sta $700206
    jsr sub_0acfe5
    plb
    plp
.a8
    rtl

sub_0acfe5:
.a16
    php
    rep #$20
    lda $7000b8
    pha
    lda #$0000
    sta $7000a6
    lda #$0070
    sta $7000ca
    lda #$e1fb
    sta $7000ba
    lda $70002c
    sta $08
    sep #$20
.a8
    lda #$01
    ldx #$eef9
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $70002c
    sta $700356
    lsr a
    eor #$ffff
    inc a
    clc
    adc $08
    sta $70002c
    lda $7ef566
    sta $700378
    sep #$20
.a8
    lda #$0b
    ldx #$852d
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    pla
    sta $7000b8
    plp
    rts

sub_0ad049:
.a8
    php
    phb
    sep #$20
    lda #$7e
    pha
    plb
    lda $d757
    bne loc_0ad059
    brl loc_0ad1c2

loc_0ad059:
    rep #$30
.a16
    lda $d749
    asl a
    asl a
    asl a
    eor #$ffff
    inc a
    adc #$00b4
    sta $70002c
    lda $d74d
    sec
    sbc #$0010
    bmi loc_0ad083
    asl a
    sta $02
    lda $70002c
    sec
    sbc $02
    sta $70002c

loc_0ad083:
    inc $d747
    stz $d74b
    ldx #$0000

loc_0ad08c:
    lda $00bbf6,x
    cmp #$ffff
    bne loc_0ad098
    brl loc_0ad11c

loc_0ad098:
    phx
    tax
    clc
    adc #$b8bf
    sta $7000b8
    lda $70002c
    cmp #$0096
    bpl loc_0ad0bc
    lda $70002c
    clc
    adc #$0008
    sta $70002c
    inc $d74b
    bra loc_0ad116

loc_0ad0bc:
    lda #$000a
    sta $700068
    lda $00b8be,x
    sta $02
    and #$000f
    sta $700206
    lda #$e0f4
    sta $7000ba
    lda $02
    bit #$0020
    beq loc_0ad0e5
    lda #$ef6f
    sta $7000ba

loc_0ad0e5:
    lda $02
    bit #$0040
    beq loc_0ad0f3
    lda #$ee9e
    sta $7000ba

loc_0ad0f3:
    lda $02
    bit #$0010
    beq loc_0ad10c
    lda $d747
    and #$0007
    cmp #$0006
    bmi loc_0ad10c
    lda #$0000
    sta $700206

loc_0ad10c:
    lda #$0000
    sta $7000a6
    jsr sub_0ad1c5

loc_0ad116:
    plx
    inx
    inx
    brl loc_0ad08c

loc_0ad11c:
    lda $d74b
    dec a
    cmp $d749
    bne loc_0ad125

loc_0ad125:
    lda #$0095
    sta $30
    sta $70003e
    lda #$0057
    sta $d2
    sta $700036
    lda #$38e3
    sta $18ec
    lda $1aa6
    ora #$4100
    sta $1aa6
    sep #$20
.a8
    lda #$01
    ldx #$f9fe
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $d75a
    bne loc_0ad15d
    brl loc_0ad1c2

loc_0ad15d:
    sta $7000b8
    lda #$0003
    sta $7000a6
    lda #$0018
    sta $70002c
    lda #$0009
    sta $700206
    lda #$7fff
    sta $70002e
    lda #$ef6f
    sta $7000ba
    sep #$20
.a8
    lda #$01
    ldx #$ed7e
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $70002a
    eor #$ffff
    inc a
    inc a
    lsr a
    clc
    adc #$0070
    sta $700068
    lda #$000f
    sta $700206
    lda $d75a
    sta $7000b8
    sep #$20
.a8
    lda #$01
    ldx #$ef48
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10

loc_0ad1c2:
.a8
    plb
    plp
    rtl

sub_0ad1c5:
.a16
    php
    rep #$30
    lda $d74b
    cmp $d749
    beq loc_0ad21c
    bmi loc_0ad1d5
    brl loc_0ad2ac

loc_0ad1d5:
    lda #$7fff
    sta $70002e
    sep #$20
.a8
    lda #$01
    ldx #$ed7e
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $70002a
    cmp #$8000
    ror a
    eor #$00ff
    sec
    adc #$0070
    sta $700068
    sep #$20
.a8
    lda #$01
    ldx #$ef48
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $70002c
    clc
    adc #$0008
    sta $70002c
    brl loc_0ad2ac

loc_0ad21c:
    lda $d747
    beq loc_0ad273
    lda $d747
    sta $70002e
    sep #$20
.a8
    lda #$01
    ldx #$ed7e
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $70002a
    cmp #$8000
    ror a
    eor #$00ff
    sec
    adc #$0070
    sta $700068
    sep #$20
.a8
    lda #$01
    ldx #$ef48
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    lda $70002e
    beq loc_0ad273
    inc $d74d
    lda $d74d
    cmp #$0014
    bne loc_0ad273
    stz $d74d
    stz $d747
    inc $d749

loc_0ad273:
    lda $70002e
    bne loc_0ad2ac
    lda $d747
    and #$0002
    beq loc_0ad2ac
    lda #$fff0
    sta $700206
    lda #$d2b1
    sta $7000b8
    lda #$000a
    sta $7000a6
    lda #$000a
    sta $70002e
    sep #$20
.a8
    lda #$01
    ldx #$ef48
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10

loc_0ad2ac:
    inc $d74b
    plp
    rts
    .incbin "data/0552b1-058000.bin"
