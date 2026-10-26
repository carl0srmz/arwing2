.rombank $0b

    .db $94,$12,$28,$02,$01,$22,$80,$00,$2f,$e4,$02,$08,$9f,$03,$56,$8b

sub_0b8010:
.cpu
.a8
.i16
    phb
    phk
    plb
    php
    rep #$30
.a16
    ldx #$8004
    ldy #$0004
    jsr sub_0baad3
    plp
.a8
    plb
    rtl

loc_0b8022:
.a16
    rts

sub_0b8023:
    lda $0b0000,x
    and #$00ff
    asl a
    txy
    iny
    tax
    jsr (tbl_0b8033,x)
    bra sub_0b8023

tbl_0b8033:
    .db $04,$81,$43,$81,$3f,$81,$31,$81,$9e,$80,$69,$80,$6f,$80,$7d,$80
    .db $8b,$80,$67,$80,$7d,$81,$ac,$81,$c3,$81,$64,$80,$ba,$80,$df,$80
    .db $57,$80,$be,$81

loc_0b8057:
    tyx
    lda $0b0000,x
    and #$00ff
    jsr sub_0b81eb
    inx
    rts

loc_0b8064:
    dey
    phy
    rts

loc_0b8067:
    pla
    rts

loc_0b8069:
    jsr sub_0b806f
    txy
    bra loc_0b807d

sub_0b806f:
    tyx
    lda $0b0000,x
    and #$00ff
    sta $700068
    inx
    rts

loc_0b807d:
    tyx
    lda $0b0000,x
    and #$00ff
    sta $70002c
    inx
    rts

loc_0b808b:
    tyx
    lda $0b0000,x
    and #$00ff
    clc
    adc $700068
    sta $700068
    inx
    rts

loc_0b809e:
    phy
    tyx
    lda $0b0001,x
    sta $50
    lda $0b0003,x
    sta $52
    lda $0b0000
    and #$00ff
    sta [$50]
    inx
    inx
    inx
    inx
    rts

loc_0b80ba:
    tyx
    phx
    lda $0b0000,x
    tay
    lda $0b0002,x
    and #$00ff
    tyx
    cmp $7e0000,x
    beq loc_0b80d4
    lda #$000e
    bra loc_0b80d7

loc_0b80d4:
    lda #$0011

loc_0b80d7:
    jsr sub_0b81eb
    plx
    inx
    inx
    inx
    rts

loc_0b80df:
    tyx
    phx
    lda $0b0000,x
    tay
    lda $0b0002,x
    and #$00ff
    tyx
    cmp $7e0000,x
    beq loc_0b80f9
    lda #$0008
    bra loc_0b80fc

loc_0b80f9:
    lda #$0010

loc_0b80fc:
    jsr sub_0b81eb
    plx
    inx
    inx
    inx
    rts

loc_0b8104:
    phy
    tyx
    lda $0b0000,x
    and #$00ff
    jsr sub_0b81eb
    lda $0b0001,x
    tax
    lda $7e0000,x
    sta $7000b8
    sep #$20
.a8
    lda #$01
    ldx #$ec13
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    inx
    inx
    inx
    rts

loc_0b8131:
    tyx
    lda $0b0000,x
    inx
    phx
    tax
    lda $7e0000,x
    bra loc_0b8154

loc_0b813f:
    tyx
    phx
    bra loc_0b8150

loc_0b8143:
    tyx
    lda $0b0000,x
    and #$00ff
    jsr sub_0b81eb
    inx
    phx

loc_0b8150:
    lda $0b0000,x

loc_0b8154:
    and #$00ff
    dec a
    asl a
    tax
    lda #$0000
    sta $7000a6
    lda $00aeb3,x
    inc a
    inc a
    sta $7000b8
    sep #$20
.a8
    lda #$01
    ldx #$ee6a
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    inx
    rts

loc_0b817d:
    phy
    tyx
    lda $0b0000,x
    and #$00ff
    dec a
    asl a
    tax
    lda #$000b
    sta $7000a6
    lda $0b887c,x
    inc a
    inc a
    sta $7000b8
    sep #$20
.a8
    lda #$01
    ldx #$ee6a
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    inx
    rts

loc_0b81ac:
    phy
    sep #$20
.a8
    lda #$0b
    ldx #$8859
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    plx
    rts

loc_0b81be:
    lda #$e1fb
    bra loc_0b81c6

loc_0b81c3:
    lda #$ef6f

loc_0b81c6:
    tyx
    sta $7000ba
    lda #$000e
    sta $700206
    lda #$00ff
    sta $7000ca
    lda $7ef5ac
    inc a
    cmp #$0008
    bcc loc_0b81e6
    lda #$0000

loc_0b81e6:
    sta $7ef5ac
    rts

sub_0b81eb:
    phx
    phy
    tay
    cpy #$0010
    bcc loc_0b8212
    lda $7ef5ac
    tax
    lda $0b859a,x
    cpy #$0010
    beq loc_0b820e
    lda $0b85aa,x
    cpy #$0012
    beq loc_0b820e
    lda $0b85a2,x

loc_0b820e:
    and #$00ff
    tay

loc_0b8212:
    tya
    sta $700206
    ply
    plx
    rts

sub_0b821a:
    lda $0000,x
    and #$00ff
    beq loc_0b8233
    and $0000,y
    beq loc_0b822e
    phx
    phy
    jsr ($0001,x)
    ply
    plx

loc_0b822e:
    inx
    inx
    inx
    bra sub_0b821a

loc_0b8233:
    rts

gsu_0b8234:
.gsu
    alt1
    lm r0,($0388)
    with r0
    from r0
    beq gsu_0b825d
    nop
    bmi gsu_0b825d
    nop
    link #4
    iwt r15,#gsu_0b826b
    nop
    alt1
    lm r0,($0380)
    with r0
    from r0
    beq gsu_0b8252
    nop
    alt1
    rpix
    stop
    .db $01

gsu_0b8252:
    iwt r0,#$ffff
    alt2
    sm ($0388),r0
    alt1
    rpix
    stop
    .db $01

gsu_0b825d:
    sub r0
    alt2
    sm ($0388),r0
    sub r0
    alt2
    sm ($038a),r0
    alt1
    rpix
    stop
    .db $01

gsu_0b826b:
    alt2
    sm ($0376),r11
    iwt r1,#$00ff
    alt1
    lm r0,($0388)
    sub r1
    bne gsu_0b827e
    nop
    iwt r15,#gsu_0b8347
    nop

gsu_0b827e:
    alt1
    lm r0,($037a)
    with r0
    from r0
    bpl gsu_0b828b
    nop
    iwt r15,#gsu_0b8360
    nop

gsu_0b828b:
    alt1
    lm r1,($0378)
    ibt r0,#$04
    from r1
    sub r0
    bne gsu_0b829a
    nop
    iwt r15,#gsu_0b8382
    nop

gsu_0b829a:
    ibt r0,#$05
    from r1
    sub r0
    bne gsu_0b82a5
    nop
    iwt r15,#gsu_0b8382
    nop

gsu_0b82a5:
    ibt r0,#$06
    from r1
    sub r0
    bne gsu_0b82b0
    nop
    iwt r15,#gsu_0b8382
    nop

gsu_0b82b0:
    ibt r0,#$07
    from r1
    sub r0
    bne gsu_0b82bb
    nop
    iwt r15,#gsu_0b83a7
    nop

gsu_0b82bb:
    ibt r0,#$02
    from r1
    sub r0
    bne gsu_0b82c6
    nop
    iwt r15,#gsu_0b8322
    nop

gsu_0b82c6:
    ibt r0,#$03
    from r1
    sub r0
    bne gsu_0b82d1
    nop
    iwt r15,#gsu_0b82f6
    nop

gsu_0b82d1:
    link #4
    iwt r15,#gsu_0b83cc
    nop
    link #4
    iwt r15,#gsu_0b85da
    nop
    link #4
    iwt r15,#gsu_0b8433
    nop
    link #4
    iwt r15,#gsu_0b8463
    nop
    ibt r1,#$0c
    link #4
    iwt r15,#gsu_0b847d
    nop
    link #4
    iwt r15,#gsu_0b84b9
    nop
    alt1
    lm r15,($0376)
    nop

gsu_0b82f6:
    link #4
    iwt r15,#gsu_0b83cc
    nop
    link #4
    iwt r15,#gsu_0b85da
    nop
    link #4
    iwt r15,#gsu_0b8433
    nop
    ibt r0,#$0b
    alt3
    romb
    iwt r14,#$850d
    link #4
    iwt r15,#gsu_0b846a
    nop
    ibt r1,#$16
    link #4
    iwt r15,#gsu_0b847d
    nop
    link #4
    iwt r15,#gsu_0b84b9
    nop
    alt1
    lm r15,($0376)
    nop

gsu_0b8322:
    link #4
    iwt r15,#gsu_0b83cc
    nop
    link #4
    iwt r15,#gsu_0b85da
    nop
    link #4
    iwt r15,#gsu_0b8433
    nop
    link #4
    iwt r15,#gsu_0b8463
    nop
    ibt r1,#$14
    link #4
    iwt r15,#gsu_0b847d
    nop
    link #4
    iwt r15,#gsu_0b84b9
    nop
    alt1
    lm r15,($0376)
    nop

gsu_0b8347:
    link #4
    iwt r15,#gsu_0b85da
    nop
    ibt r1,#$11
    ibt r2,#$00
    link #4
    iwt r15,#gsu_0b847d
    nop
    ibt r0,#$01
    alt2
    sm ($0380),r0
    alt1
    lm r15,($0376)
    nop

gsu_0b8360:
    link #4
    iwt r15,#gsu_0b83cc
    nop
    link #4
    iwt r15,#gsu_0b85da
    nop
    link #4
    iwt r15,#gsu_0b8433
    nop
    ibt r1,#$10
    ibt r2,#$00
    link #4
    iwt r15,#gsu_0b847d
    nop
    link #4
    iwt r15,#gsu_0b84b9
    nop
    alt1
    lm r15,($0376)
    nop

gsu_0b8382:
    link #4
    iwt r15,#gsu_0b83cc
    nop
    link #4
    iwt r15,#gsu_0b85da
    nop
    link #4
    iwt r15,#gsu_0b8433
    nop
    link #4
    iwt r15,#gsu_0b8463
    nop
    ibt r1,#$0e
    link #4
    iwt r15,#gsu_0b847d
    nop
    link #4
    iwt r15,#gsu_0b84b9
    nop
    alt1
    lm r15,($0376)
    nop

gsu_0b83a7:
    link #4
    iwt r15,#gsu_0b83cc
    nop
    link #4
    iwt r15,#gsu_0b85da
    nop
    link #4
    iwt r15,#gsu_0b8433
    nop
    link #4
    iwt r15,#gsu_0b8463
    nop
    ibt r1,#$12
    link #4
    iwt r15,#gsu_0b847d
    nop
    link #4
    iwt r15,#gsu_0b84b9
    nop
    alt1
    lm r15,($0376)
    nop

gsu_0b83cc:
    alt2
    sm ($0394),r11
    alt1
    lm r0,($0388)
    to r1
    add r0
    ibt r2,#$00
    dec r1
    dec r1
    ibt r0,#$00
    alt3
    romb
    alt2
    sm ($00a6),r0
    iwt r14,#$aeb3
    with r14
    add r1
    getb
    inc r14
    alt1
    getbh
    inc r0
    inc r0
    add r2
    alt2
    sm ($00b8),r0
    with r0
    to r14
    getb
    alt2
    sm ($0380),r0
    iwt r0,#$e1fb
    alt2
    sms ($0ba),r0
    iwt r0,#$007f
    alt2
    sms ($0ca),r0
    ibt r0,#$0b
    alt2
    sm ($036a),r0
    iwt r0,#$841a
    alt2
    sm ($0368),r0
    ibt r8,#$01
    iwt r0,#$ef00
    alt1
    ljmp r8
    nop
    alt1
    lms r0,($02c)
    alt2
    sm ($0356),r0
    alt1
    lms r0,($02c)
    lsr
    not
    inc r0
    iwt r3,#$005c
    add r3
    alt2
    sms ($02c),r0
    alt1
    lm r15,($0394)
    nop

gsu_0b8433:
    alt2
    sm ($0394),r11
    alt1
    lms r0,($02c)
    inc r0
    inc r0
    alt2
    sms ($02c),r0
    ibt r0,#$05
    alt2
    sms ($068),r0
    ibt r0,#$64
    alt2
    sms ($02e),r0
    ibt r0,#$0b
    alt2
    sm ($036a),r0
    iwt r0,#$845e
    alt2
    sm ($0368),r0
    ibt r8,#$01
    iwt r0,#$ee5a
    alt1
    ljmp r8
    nop
    alt1
    lm r15,($0394)
    nop

gsu_0b8463:
    ibt r0,#$0b
    alt3
    romb
    iwt r14,#$84ed

gsu_0b846a:
    alt1
    lm r0,($038a)
    iwt r2,#$0020
    alt3
    cmp r2
    bcc gsu_0b8477
    nop
    sub r0

gsu_0b8477:
    with r14
    add r0
    to r2
    getb
    jmp r11
    nop

gsu_0b847d:
    iwt r3,#$0000
    iwt r4,#$0008

gsu_0b8483:
    alt2
    sm ($0370),r11
    alt2
    sm ($0068),r3
    alt2
    sm ($002c),r4
    ibt r0,#$0b
    alt3
    romb
    iwt r14,#$84d0
    with r14
    add r1
    with r14
    add r2
    getb
    alt2
    sm ($00aa),r0
    ibt r0,#$0b
    alt2
    sm ($036a),r0
    iwt r0,#$84b4
    alt2
    sm ($0368),r0
    ibt r8,#$01
    iwt r0,#$e118
    alt1
    ljmp r8
    nop
    alt1
    lm r15,($0370)
    nop

gsu_0b84b9:
    alt1
    lm r0,($038a)
    inc r0
    sbk
    alt1
    lm r1,($0390)
    alt3
    cmp r1
    bcc gsu_0b84ca
    nop
    ibt r1,#$00

gsu_0b84ca:
    alt2
    sm ($0380),r1
    jmp r11
    nop
    with r14
    with r15
    stw (r0)
    stw (r1)
    stw (r6)
    stw (r7)
    stw (r8)
    stw (r9)
    alt2
    alt3
    ldb (r0)
    ldw (r1)
    stw (r11)
    loop
    alt1
    ldb (r2)
    ldw (r5)
    stw (r10)
    from r11
    from r12
    ldw (r3)
    ldw (r4)
    ldw (r3)
    ldw (r4)
    stw (r5)
    or r14
    or r15
    inc r0
    inc r1
    stop
    .db $01,$00,$01,$00,$01,$00,$01,$00,$00,$00,$01,$00,$01,$00,$00,$00
    .db $00,$01,$00,$01,$00,$01,$00,$00,$00,$01,$00,$01,$00,$01,$00,$00
    .db $01,$00,$01,$00,$02,$00,$01,$02,$00,$01,$00,$02,$01,$02,$01,$00
    .db $02,$01,$02,$01,$02,$00,$01,$02,$02,$00,$02,$02,$01,$02,$02
    iwt r4,#$0044
    iwt r5,#$006e
    iwt r0,#$0000
    alt2
    sm ($0378),r0
    alt1
    lm r0,($0358)
    to r1
    lob
    from r1
    alt2
    sub #1
    bne gsu_0b8550
    nop
    iwt r0,#$0002
    alt2
    sm ($0378),r0
    bra gsu_0b855d
    nop

gsu_0b8550:
    from r1
    alt2
    sub #2
    bne gsu_0b855d
    nop
    iwt r0,#$0004
    alt2
    sm ($0378),r0

gsu_0b855d:
    ibt r0,#$26
    alt1
    lm r1,($0356)
    dec r1
    from r1
    sub r0
    bcc gsu_0b856a
    nop
    dec r1

gsu_0b856a:
    alt1
    lm r0,($002c)
    inc r0
    alt2
    sm ($002c),r0
    link #4
    iwt r15,#gsu_0b85e4
    nop
    ibt r0,#$64
    alt2
    sms ($02e),r0
    alt2
    sm ($036c),r0
    ibt r0,#$0b
    alt2
    sm ($036a),r0
    iwt r0,#$8596
    alt2
    sm ($0368),r0
    ibt r8,#$01
    iwt r0,#$ee5a
    alt1
    ljmp r8
    nop
    alt1
    rpix
    stop
    .db $01,$01,$02,$03,$04,$04,$04,$03,$02,$05,$06,$07,$08,$08,$08,$07
    .db $06,$0e,$07,$02,$0f,$0e,$07,$02,$0f,$09,$0e,$0e,$05,$0e,$0e,$01
    .db $00,$0e,$01,$00,$0e,$05,$0e,$0e,$05,$0e,$0e,$05,$0e,$0e,$05,$0e
    .db $0e,$4b,$4b,$4b,$4b,$5d,$5e,$5f,$4c,$00,$00,$00,$00,$01,$01,$01
    .db $01

gsu_0b85da:
    iwt r4,#$0000
    iwt r5,#$007f
    ibt r0,#$49
    ibt r1,#$27

gsu_0b85e4:
    alt2
    sm ($0372),r0
    alt2
    sm ($0374),r1
    ibt r0,#$0b
    alt3
    romb
    iwt r14,#$859a
    alt1
    lm r0,($035a)
    inc r0
    ibt r1,#$08
    alt3
    cmp r1
    bcc gsu_0b8600
    nop
    sub r0

gsu_0b8600:
    sbk
    with r14
    add r0
    to r3
    getb
    ibt r0,#$0b
    alt3
    romb
    iwt r14,#$85b2
    alt1
    lm r0,($0378)
    alt2
    mult #3
    with r14
    add r0
    getb
    inc r14
    with r2
    from r0
    bne gsu_0b861d
    nop
    with r3
    to r2

gsu_0b861d:
    getb
    inc r14
    with r7
    from r0
    bne gsu_0b8626
    nop
    with r3
    to r7

gsu_0b8626:
    getb
    alt2
    sm ($0206),r0
    sub r0
    alt1
    cmode
    from r2
    color
    alt1
    lm r8,($0372)
    with r8
    alt2
    sub #1
    alt1
    lm r9,($0374)
    from r8
    add r9
    to r10
    alt2
    add #0
    with r9
    alt2
    add #1
    with r8
    to r2
    with r9
    to r3
    cache

gsu_0b8648:
    with r5
    to r12
    with r4
    to r1
    with r15
    to r13
    loop
    plot
    dec r3
    bne gsu_0b8648
    inc r2
    from r7
    color
    with r4
    to r1
    with r8
    to r2
    with r5
    to r12
    with r13
    from r15
    loop
    plot
    with r4
    to r1
    with r10
    to r2
    with r5
    to r12
    with r13
    from r15
    loop
    plot
    with r4
    to r1
    with r8
    to r2
    with r9
    to r12
    with r13
    from r15
    plot
    inc r2
    loop
    dec r1
    to r1
    from r4
    add r5
    with r8
    to r2
    with r9
    to r12
    with r13
    from r15
    plot
    inc r2
    loop
    dec r1
    ibt r0,#$01
    alt1
    cmode
    with r4
    to r1
    with r8
    to r2
    sub r0
    color
    plot
    inc r2
    from r7
    color
    plot
    from r4
    add r5
    to r1
    alt2
    sub #1
    with r1
    to r3
    with r8
    to r2
    inc r2
    from r7
    color
    plot
    dec r2
    sub r0
    color
    plot
    with r4
    to r1
    with r10
    to r2
    sub r0
    color
    plot
    dec r2
    from r7
    color
    plot
    with r3
    to r1
    with r10
    to r2
    dec r2
    from r7
    color
    plot
    inc r2
    sub r0
    color
    plot
    sub r0
    alt1
    cmode
    jmp r11
    nop
    alt1
    lm r0,($022e)
    dec r0
    sbk
    with r0
    to r8
    link #4
    iwt r15,#gsu_0b878c
    nop
    alt1
    lm r0,($0354)
    with r0
    from r0
    beq gsu_0b86e1
    add r0
    ibt r2,#$38
    with r2
    add r0
    iwt r3,#$0002
    link #4
    iwt r15,#gsu_0b8742
    nop

gsu_0b86e1:
    alt1
    lm r0,($0352)
    with r10
    from r0
    beq gsu_0b8730
    nop
    bmi gsu_0b8734
    nop
    cache

gsu_0b86ee:
    link #4
    iwt r15,#gsu_0b875f
    nop
    from r8
    lob
    lsr
    inc r0
    with r0
    to r12
    link #4
    iwt r15,#gsu_0b875f
    nop
    from r8
    lob
    lsr
    inc r0
    with r0
    to r1
    iwt r3,#$00d8
    from r1
    add r12
    alt3
    cmp r3
    bcc gsu_0b8711
    nop
    from r3
    to r12
    sub r1

gsu_0b8711:
    link #4
    iwt r15,#gsu_0b875f
    nop
    from r8
    lob
    lsr
    ibt r3,#$3c
    add r3
    inc r0
    with r0
    to r2
    with r15
    to r13
    link #4
    iwt r15,#gsu_0b875f
    nop
    from r8
    alt2
    and #15
    color
    loop
    plot
    dec r10
    bne gsu_0b86ee
    nop

gsu_0b8730:
    alt1
    rpix
    stop
    .db $01

gsu_0b8734:
    ibt r2,#$38
    iwt r3,#$0087
    link #4
    iwt r15,#gsu_0b8742
    nop
    alt1
    rpix
    stop
    .db $01

gsu_0b8742:
    with r11
    to r10
    cache

gsu_0b8745:
    ibt r1,#$00
    iwt r12,#$00de
    with r15
    to r13
    link #4
    iwt r15,#gsu_0b875f
    nop
    from r8
    alt2
    and #1
    alt2
    add #8
    color
    loop
    plot
    dec r3
    bne gsu_0b8745
    inc r2
    jmp r10
    nop

gsu_0b875f:
    from r8
    alt3
    cmp r9
    bne gsu_0b8767
    nop
    with r8
    sub r8

gsu_0b8767:
    with r8
    to r0
    and r4
    swap
    alt1
    xor r8
    swap
    with r8
    from r0
    swap
    and r4
    add r0
    alt1
    xor r8
    lsr
    bcc gsu_0b8780
    nop
    alt1
    xor r5
    alt1
    xor r6
    bra gsu_0b8788
    nop

gsu_0b8780:
    alt1
    xor r5
    alt3
    cmp r7
    bne gsu_0b8788
    nop
    sub r0

gsu_0b8788:
    with r0
    to r8
    jmp r11
    nop

gsu_0b878c:
    iwt r9,#$560a
    iwt r7,#$aa55
    iwt r6,#$8180
    iwt r5,#$ff80
    iwt r4,#$00ff
    jmp r11
    nop
    alt1
    rpix
    stop
    .db $01

gsu_0b87a1:
    alt1
    lm r1,($0068)
    alt1
    lm r2,($006a)
    cache

gsu_0b87aa:
    stw (r1)
    inc r1
    dec r2
    bne gsu_0b87aa
    inc r1
    jmp r11
    nop
    sub r0
    alt2
    ramb
    alt3
    romb
    link #4
    iwt r15,#gsu_0b87a1
    nop
    stop
    .db $01
    sub r0
    alt2
    ramb
    alt3
    romb
    link #4
    iwt r15,#gsu_0b87a1
    nop
    iwt r15,#gsu_0b8234
    nop
    stop
    .db $01,$60,$3e,$df,$3f,$df,$a0,$0b,$3e,$f0,$6a,$03,$f0,$e8,$87,$3e
    .db $f0,$68,$03,$a8,$01,$f0,$ec,$db,$3d,$98,$01,$00,$01,$60,$3e,$df
    .db $3f,$df,$94,$ff,$f6,$87,$01,$00,$01,$3d,$a1,$0a,$3d,$f2,$c4,$24
    .db $a5,$10,$3d,$a0,$34,$65,$03,$03,$03,$13,$3d,$82,$3d,$a0,$16,$65
    .db $53,$50,$50,$13,$51,$3d,$a0,$13,$65,$03,$03,$03,$14,$3d,$82,$3d
    .db $a0,$14,$65,$54,$50,$50,$51,$14,$3e,$5f,$d4,$02,$23,$15,$24,$16
    .db $b2,$3f,$84,$20,$17,$aa,$05,$a9,$04,$ac,$08,$2f,$1d,$45,$d5,$d5
    .db $36,$d6,$3c,$d6,$ac,$10,$25,$5c,$26,$5c,$e9,$08,$ec,$01,$23,$57
    .db $23,$15,$24,$57,$24,$16,$ea,$08,$de,$01,$9b,$01
    sub r0
    alt3
    romb
    alt2
    ramb
    alt1
    cmode
    alt1
    lm r0,($0386)
    with r1
    from r0
    bmi gsu_0b8878
    nop
    with r1
    add r1
    ibt r2,#$00
    iwt r3,#$0028
    iwt r4,#$0092
    link #4
    iwt r15,#gsu_0b8483
    nop

gsu_0b8878:
    alt1
    rpix
    stop
    .db $01,$7c,$88,$53,$4f,$53,$00
    sub r0
    alt2
    ramb
    alt3
    romb
    ibt r1,#$19
    ibt r2,#$00
    iwt r3,#$0028
    iwt r4,#$008a
    link #4
    iwt r15,#gsu_0b8483
    nop
    ibt r1,#$1a
    ibt r2,#$00
    iwt r3,#$0048
    iwt r4,#$008a
    link #4
    iwt r15,#gsu_0b8483
    nop
    ibt r1,#$1b
    ibt r2,#$00
    iwt r3,#$0068
    iwt r4,#$008a
    link #4
    iwt r15,#gsu_0b8483
    nop
    ibt r1,#$1c
    ibt r2,#$00
    iwt r3,#$0088
    iwt r4,#$008a
    link #4
    iwt r15,#gsu_0b8483
    nop
    ibt r0,#$01
    alt1
    cmode
    ibt r0,#$00
    color
    iwt r2,#$008a
    iwt r3,#$0008
    cache

gsu_0b88d1:
    iwt r12,#$0080
    iwt r1,#$0028
    with r13
    from r15
    loop
    plot
    dec r3
    bne gsu_0b88d1
    inc r2
    alt1
    lm r10,($034c)
    ibt r0,#$24
    from r10
    sub r0
    bmi gsu_0b88ee
    nop

gsu_0b88ea:
    iwt r15,#gsu_0b8987
    nop

gsu_0b88ee:
    ibt r9,#$28
    from r9
    sub r10
    beq gsu_0b88ea
    nop
    add r0
    add r0
    to r5
    alt2
    add #4
    with r0
    from r10
    add r0
    add r0
    iwt r4,#$002c
    with r4
    add r0
    iwt r2,#$0092
    iwt r3,#$0020
    cache

gsu_0b890a:
    with r5
    to r12
    with r4
    to r1
    with r13
    from r15
    loop
    plot
    from r3
    lsr
    bcc gsu_0b8918
    nop
    dec r4

gsu_0b8918:
    dec r1
    dec r3
    bne gsu_0b890a
    inc r2
    with r0
    from r10
    add r0
    add r0
    iwt r3,#$0028
    with r3
    add r0
    iwt r2,#$0092
    alt1
    lm r0,($022e)
    dec r0
    sbk
    with r0
    to r8
    link #4
    iwt r15,#gsu_0b878c
    nop
    iwt r10,#$0020

gsu_0b8939:
    with r3
    to r1
    ibt r12,#$04
    with r15
    to r13
    link #4
    iwt r15,#gsu_0b875f
    nop
    from r8
    alt2
    and #1
    beq gsu_0b894d
    nop
    from r8
    alt2
    and #15

gsu_0b894d:
    color
    loop
    plot
    from r10
    lsr
    bcc gsu_0b8956
    nop
    dec r3

gsu_0b8956:
    dec r10
    bne gsu_0b8939
    inc r2
    ibt r0,#$00
    color
    iwt r2,#$0092
    iwt r3,#$0020
    cache

gsu_0b8964:
    iwt r12,#$0012
    iwt r1,#$0016
    with r13
    from r15
    loop
    plot
    dec r3
    bne gsu_0b8964
    inc r2
    iwt r2,#$0092
    iwt r3,#$0020
    cache

gsu_0b8979:
    iwt r12,#$0012
    iwt r1,#$00a8
    with r13
    from r15
    loop
    plot
    dec r3
    bne gsu_0b8979
    inc r2

gsu_0b8987:
    sub r0
    alt1
    cmode
    alt1
    rpix
    stop
    .db $01,$6b

sub_0b898f:
.cpu
.a8
.i16
    phb
    phk
    plb
    php
    sep #$20
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    rep #$30
.a16
    lda $001e70
    sta $700386
    lda #$0001
    sta $1faa
    lda #$0000
    sta $7ef5a8
    stz $1e86
    stz $1e88
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    plp
    plb
    rtl

sub_0b89cb:
    phb
    phk
    plb
    php
    rep #$30
.a16
    sty $1e90
    jsr sub_0b89dd
    ldy $1e90
    plp
.a8
    plb
    rtl

sub_0b89dd:
.a16
    ldx #$1faa
    stx $1fa8
    jsr sub_0bac23
    inc $ef89
    bit #$8a35
    xce
.a8
.i8
    txa
    rts

loc_0b89ef:
.a16
.i16
    jsr sub_0bac85
    .db $82,$f8,$89,$81,$13,$8a

loc_0b89f8:
    tyx
    lda $1e86
    beq loc_0b8a12
    dec $0a,x
    lda $1b86
    bit #$0002
    bne loc_0b8a12
    sep #$20
.a8
    lda #$01
    jsl sub_7f6df8
    rep #$20

loc_0b8a12:
.a16
    rts

loc_0b8a13:
    lda $1b86
    bit #$0008
    bne loc_0b8a2e
    lda $001e70
    bmi loc_0b8a2e
    lda #$0002
    trb $1e88
    lda #$0002
    sta $1faa
    rts

loc_0b8a2e:
    lda #$0003
    sta $1faa
    rts

loc_0b8a35:
    jsr sub_0bac85
    .db $80,$47,$8a,$82,$51,$8a,$23,$80,$8a,$0a,$e7,$c7,$81,$8a,$8a

loc_0b8a47:
    tyx
    stz $0c,x
    lda #$0001
    tsb $1e88
    rts

loc_0b8a51:
    ldx $1fa8
    ldy $0c,x
    lda #$0002
    jsr sub_0b8bc9
    sty $0c,x
    lda $1296
    and #$9000
    beq loc_0b8a7f
    ldx $1fa8
    dec $0a,x
    lda $0c,x
    bne loc_0b8a78
    lda #$005b
    jsl QueueSound
    bra loc_0b8a7f

loc_0b8a78:
    lda #$0004
    jsl QueueSound

loc_0b8a7f:
    rts

loc_0b8a80:
    ldx $1fa8
    lda $0c,x
    beq loc_0b8a89
    stz $06,x

loc_0b8a89:
    rts

loc_0b8a8a:
    ldx $1fa8
    lda $0c,x
    bne loc_0b8aee
    phb
    sep #$20
.a8
    lda #$7e
    pha
    plb
    jsl sub_04b92a
    jsl sub_06a325
    rep #$20
.a16
    lda #$ffff
    sta $1e70
    stz $db4b
    lda #$0004
    trb $1b86
    lda #$0040
    trb $1b86
    lda #$0020
    tsb $1c67
    lda $1b86
    bit #$0020
    bne loc_0b8adf
    lda $d7f4
    bne loc_0b8ad0
    lda #$0002
    tsb $1b88

loc_0b8ad0:
    lda #$0002
    tsb $1b86
    lda #$0007
    sta $1b6a
    plb
    bra loc_0b8afa

loc_0b8adf:
    lda #$0002
    tsb $1b86
    lda #$0001
    sta $1b6a
    plb
    bra loc_0b8afa

loc_0b8aee:
    lda #$0003
    sta $1faa
    lda #$ffff
    trb $1b88

loc_0b8afa:
    rts

loc_0b8afb:
    jsr sub_0bac85
    .db $0a,$e7,$c7,$81,$41,$8b,$bb,$74,$0c,$60,$ae,$a8,$1f,$b4,$0c,$a9
    .db $02,$00,$20,$c9,$8b,$94,$0c,$ae,$a8,$1f,$ad,$96,$12,$29,$00,$90
    .db $f0,$16,$d6,$0a,$b5,$0c,$d0,$09,$a9,$5b,$00,$22,$09,$6e,$7f,$80
    .db $07,$a9,$04,$00,$22,$09,$6e,$7f,$60,$ae,$a8,$1f,$b5,$0c,$f0,$02
    .db $74,$06,$60

loc_0b8b41:
    lda #$0020
    tsb $1c67
    lda #$0008
    sta $1b6a
    bra loc_0b8b55
    .db $a9,$20,$00,$0c,$67,$1c

loc_0b8b55:
    rts

loc_0b8b56:
    ldx #$8b60
    ldy #$1e88
    jsr sub_0b821a
    rts
    .db $01,$6a,$8b,$02,$8b,$8b,$04,$8b,$8b,$00

loc_0b8b6a:
    sep #$20
.a8
    lda $5e
    pha
    jsl sub_7f77fe
    rep #$20
.a16
    ldx #$8b8c
    jsr sub_0b8023
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    rep #$20
.a16
    rts
    .db $60,$0b,$11,$0d
    lda $1fb6
    ora #$0e00
    jsr sub_0b8c0b
    clc
    adc #$00a0
    sta $70002c
    lda #$0072
    sta $700068
    pea $8bac
    plx
    rts
    .db $10,$10,$02,$6c,$05,$50,$90,$01,$0e,$5a,$05,$80,$a0,$0f,$b6,$1f
    .db $00,$02,$5b,$05,$80,$ae,$0f,$b6,$1f,$01,$02,$5c,$09

sub_0b8bc9:
    dec a
    sta $a5
    lda $1296
    bit #$2000
    beq loc_0b8be0
    iny
    cpy $a5
    beq loc_0b8bfb
    bcc loc_0b8bfb
    ldy #$0000
    bra loc_0b8bfb

loc_0b8be0:
    bit #$0c00
    beq loc_0b8c06
    bit #$0800
    beq loc_0b8bf6
    dey
    bmi loc_0b8c07
    lda #$0003
    jsl QueueSound
    bra loc_0b8c06

loc_0b8bf6:
    cpy $a5
    bcs loc_0b8c04
    iny

loc_0b8bfb:
    lda #$0003
    jsl QueueSound
    bra loc_0b8c06

loc_0b8c04:
    ldy $a5

loc_0b8c06:
    rts

loc_0b8c07:
    ldy #$0000
    rts

sub_0b8c0b:
    sta WRMPYA
    pha
    pla
    nop
    lda RDMPYL
    rts

sub_0b8c15:
.a8
    rtl

sub_0b8c16:
.a16
    rts

sub_0b8c17:
.a8
    php

loc_0b8c18:
    rep #$30
.a16
    ldx #$1fbe
    stz $00,x
    plp
.a8
    rtl

sub_0b8c21:
    phb
    pea $7e7e
    plb
    plb
    php
    rep #$30
.a16
    jsr sub_0b8c81
    inc $f5cc
    plp
.a8
    plb
    rtl

sub_0b8c33:
    jsr sub_0b8cc1
    .db $00,$0a,$20,$c1,$8c,$00,$01

sub_0b8c3d:
    jsr sub_0b8cc1
    .db $0b,$0a

sub_0b8c42:
    jsr sub_0b8cc1
    .db $0c,$08

sub_0b8c47:
    jsr sub_0b8cc1
    .db $07,$0a

sub_0b8c4c:
    jsr sub_0b8ce6
    .db $08,$8d,$01

sub_0b8c52:
    jsr sub_0b8cc1
    .db $0f,$02

sub_0b8c57:
    jsr sub_0b8cc1
    .db $10,$3c

sub_0b8c5c:
    jsr sub_0b8cc1
    .db $0e,$14

sub_0b8c61:
    jsr sub_0b8cc1
    .db $00,$14

sub_0b8c66:
    jsr sub_0b8cb0
    ora $1e,s

sub_0b8c6b:
.a16
    jsr sub_0b8cc1
    .db $11,$28

sub_0b8c70:
    jsr sub_0b8cc1
    .db $05,$1e

sub_0b8c75:
.a8
    jsr sub_0b8cc1
    .db $06,$05

sub_0b8c7a:
    jsr sub_0b8cc1
    .db $12,$1e,$6b,$60

sub_0b8c81:
.a16
    lda #$1fbe
    sta $1fa8
    jsr sub_0bac23
    bra loc_0b8c18
    .db $5b,$91,$5b,$91,$69,$92,$54,$92,$ce,$8e,$4c,$8f,$75,$94,$e7,$93
    .db $49,$95,$49,$95,$01,$9c,$10,$9c,$5b,$91,$1a,$95,$4a,$95,$26,$96
    .db $1e,$9c,$a5,$8e

sub_0b8cb0:
.a8
    rep #$20
.a16
    lda #$0020
    tsb $1b84
    lda #$0000
    sta $7ef53e
    bra loc_0b8cca

sub_0b8cc1:
.a8
    rep #$20
.a16
    lda #$0001
    sta $7ef53e

loc_0b8cca:
    sep #$20
.a8
    plx
    phb
    phk
    plb
    ldy #$1fbe
    lda $0001,x
    sta $0000,y
    lda #$00
    sta $0001,y
    lda #$00
    xba
    lda $0002,x
    plb
    rtl

sub_0b8ce6:
    rep #$20
.a16
    lda #$0001
    sta $7ef53e
    sep #$20
.a8
    plx
    phb
    phk
    plb
    ldy #$1fbe
    lda $0001,x
    sta $0000,y
    lda #$00
    sta $0001,y
    lda $0003,x
    xba
    lda $0002,x
    plb
    rtl

sub_0b8d0c:
.a16
    ply
    sty $08
    phb
    phk
    plb
    sep #$20
.a8
    rep #$30
.a16
    lda $142c
    ora #$0002
    sta $142c
    ldx #$12fa
    sep #$20
.a8
    rep #$10
    lda #$7a
    sta $0d,x
    lda #$f6
    sta $0e,x
    lda #$7e
    sta $0f,x
    ldy $08
    jsr sub_0b8d63
    rep #$30
.a16
    lda $142e
    ora #$0002
    sta $142e
    ldx #$139c
    sep #$20
.a8
    rep #$10
    lda #$3a
    sta $0d,x
    lda #$f8
    sta $0e,x
    lda #$7e
    sta $0f,x
    ldy $08
    jsr sub_0b8d63
    plb
    rep #$21
.a16
    tya
    adc #$0009
    pha
    rts

sub_0b8d63:
.a8
    lda $0001,y
    sta $00,x
    lda $0002,y
    sta $01,x
    lda $0003,y
    sta $02,x
    lda $0004,y
    sta $03,x
    lda $0005,y
    sta $04,x
    lda $0006,y
    sta $05,x
    lda $0007,y
    sta $06,x
    lda $0008,y
    sta $07,x
    lda $0009,y
    sta $08,x
    lda #$02
    sta $11,x
    lda #$44
    sta $0c,x
    rts

sub_0b8d99:
.a16
    phb
    phk
    plb
    lda $7ef5cc
    lsr a
    bcs loc_0b8dab
    ldy #$8de0
    jsr sub_0b8dec
    bra loc_0b8dcb

loc_0b8dab:
    ldy #$8de6
    jsr sub_0b8dec
    bra loc_0b8dcb

sub_0b8db3:
    phb
    phk
    plb
    lda $7ef5cc
    lsr a
    bcs loc_0b8dc5
    ldy #$8dd4
    jsr sub_0b8dec
    bra loc_0b8dcb

loc_0b8dc5:
    ldy #$8dda
    jsr sub_0b8dec

loc_0b8dcb:
    sta $50
    lda #$007e
    sta $52
    plb
    rts
    .db $7a,$f6,$7e,$3a,$f8,$7e,$fa,$f9,$7e,$ba,$fb,$7e,$7a,$f6,$7e,$fa
    .db $f7,$7e,$fa,$f9,$7e,$7a,$fb,$7e

sub_0b8dec:
    phy
    rep #$30
    lda $142c
    ora #$0002
    sta $142c
    ldx #$12fa
    rep #$20
    rep #$10
    ply
    lda $0000,y
    sta $0d,x
    lda $0001,y
    sta $0e,x
    phy
    rep #$30
    lda $142e
    ora #$0002
    sta $142e
    ldx #$139c
    rep #$20
    rep #$10
    ply
    lda $0003,y
    sta $0d,x
    lda $0004,y
    sta $0e,x
    lda $0000,y
    rts

loc_0b8e2c:
    tyx
    stz $04,x
    stz $02,x
    stz $00,x
    rts

loc_0b8e34:
    sep #$20
.a8
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
    lda #$0020
    trb $1b84
    rts
    .db $85,$50,$85,$52,$9b,$80,$10

loc_0b8e64:
    lda #$7f80
    bra loc_0b8e6c

loc_0b8e69:
    lda #$ff00

loc_0b8e6c:
    tay

sub_0b8e6d:
    sta $50
    sty $52
    ldy #$00e0
    ldx #$f67a

loc_0b8e77:
    lda $50
    sta $0000,x
    sta $0380,x
    lda $52
    sta $0002,x
    sta $0382,x
    inx
    inx
    inx
    inx
    dey
    bne loc_0b8e77
    rts

loc_0b8e8f:
    sta ($50),y
    iny
    iny
    iny
    iny
    dex
    bne loc_0b8e8f
    rts

loc_0b8e99:
    sta ($50),y
    iny
    iny
    sta ($50),y
    iny
    iny
    dex
    bne loc_0b8e99
    rts
    .db $20,$85,$ac,$80,$69,$8e,$80,$b1,$8e

loc_0b8eae:
    sta ($be,x)
    stx $0c20
    sta $3303
    ora $00,s
    .db $00,$00,$00,$00,$00,$60,$20,$99,$8d,$a2,$27,$00,$a0,$00,$00,$a9
    .db $01,$00,$20,$8f,$8e,$60

loc_0b8ece:
    jsr sub_0bac85
    .db $80,$64,$8e,$80,$dd,$8e,$02,$ea,$8e,$81,$ea,$8e

loc_0b8edd:
    jsr sub_0b8d0c
    .db $22,$22,$00,$00,$00,$00,$00,$df,$e2
    rts

loc_0b8eea:
    lda $1b86
    bit #$0020
    bne loc_0b8f15
    lda $1b96
    bit #$2000
    bne loc_0b8f15
    jsr sub_0b8d0c
    .db $22,$22,$00,$00,$00,$00,$00,$df,$e2
    jsr sub_0b8d99
    ldy #$0064
    ldx #$0060
    lda #$c040
    jmp loc_0b8e8f

loc_0b8f15:
    jsr sub_0b8d0c
    .db $22,$22,$00,$00,$00,$00,$00,$df,$e2,$20,$99,$8d,$a0,$50,$00,$a2
    .db $60,$00,$a9,$01,$00,$4c,$8f,$8e,$20,$0c,$8d,$22,$22,$00,$00,$00
    .db $00,$00,$00,$00,$20,$99,$8d,$a0,$50,$00,$a2,$60,$00,$a9,$01,$00
    .db $4c,$8f,$8e,$60

loc_0b8f4c:
    jsr sub_0bac85
    .incbin "data/058f4f-05915b.bin"

loc_0b915b:
    jsr sub_0bac85
    .db $80,$67,$91,$80,$6b,$91,$82,$78,$91

loc_0b9167:
    jsr sub_0b921d
    rts

loc_0b916b:
    jsr sub_0b8d0c
    .db $00,$33,$00,$00,$00,$00,$00,$00,$e0
    rts

loc_0b9178:
    jsr sub_0b8db3
    ldy #$0040
    ldx #$1fd2
    jsr sub_0b918e
    ldy #$0240
    ldx #$1fdc
    jsr sub_0b918e
    rts

sub_0b918e:
    lda $0000,x
    cmp #$0002
    beq loc_0b919c
    cmp #$0004
    beq loc_0b919c
    rts

loc_0b919c:
    lda $0002,x
    sec
    sbc #$0006
    bpl loc_0b91a8
    lda #$0000

loc_0b91a8:
    cmp #$0018
    bcs loc_0b91d3
    and #$00ff
    sta $97
    sep #$20
.a8
    lda $97
    asl a
    asl a
    pha
    eor #$ff
    sec
    adc #$c1
    sta $f5d2
    pla
    clc
    adc #$c0
    cmp #$c0
    bcs loc_0b91cb
    lda #$ff

loc_0b91cb:
    sta $f5d3
    rep #$20
.a16
    jsr sub_0b91d4

loc_0b91d3:
    rts

sub_0b91d4:
    lda $97
    asl a
    eor #$ffff
    sec
    adc #$0028
    tax
    lda #$0001
    jsr sub_0b9202
    lda $97
    asl a
    asl a
    tax
    lda $f5d2
    jsr sub_0b9202
    lda $97
    asl a
    eor #$ffff
    sec
    adc #$0028
    tax
    lda #$0001
    jsr sub_0b9202
    rts

sub_0b9202:
    cpx #$0000
    beq loc_0b921c
    bmi loc_0b921c
    cpy #$037c
    bcs loc_0b921c

loc_0b920e:
    sta ($50),y
    iny
    iny
    iny
    iny
    cpy #$037c
    bcs loc_0b921c
    dex
    bne loc_0b920e

loc_0b921c:
    rts

sub_0b921d:
    ldy #$00e0
    ldx #$f67a
    lda #$c0c1

loc_0b9226:
    sta $0000,x
    sta $0380,x
    inx
    inx
    inx
    inx
    dey
    bne loc_0b9226
    rts
    .db $20,$85,$ac,$80,$40,$92,$80,$46,$92,$81,$53,$92,$a9,$10,$f0,$4c
    .db $6c,$8e,$20,$0c,$8d,$00,$00,$0f,$00,$00,$00,$00,$00,$00,$60,$60
    .db $20,$85,$ac,$80,$64,$8e,$80,$90,$92,$32,$bb,$92,$80,$34,$8e,$02
    .db $e7,$c7,$81,$2c,$8e

loc_0b9269:
    jsr sub_0bac85
    .db $80,$64,$8e,$80,$84,$92,$80,$b2,$92,$11,$bb,$92,$80,$34,$8e,$02
    .db $e7,$c7,$80,$69,$8e,$81,$2c,$8e

loc_0b9284:
    ldx $1fa8
    phx
    jsl sub_0ba81e
    plx
    stx $1fa8

loc_0b9290:
    lda $1b9c
    bit #$0008
    bne loc_0b92a5
    jsr sub_0b8d0c
    .db $ff,$ff,$0f,$00,$00,$03,$02,$10,$e0,$60

loc_0b92a5:
    jsr sub_0b8d0c
    .db $ff,$ff,$0f,$00,$00,$03,$02,$50,$e0
    rts

loc_0b92b2:
    lda #$0001
    sta $7ef53e
    bra loc_0b9290

loc_0b92bb:
    jsr sub_0b8d99
    jsr sub_0b92f4
    jsr sub_0b9334
    jsr sub_0b92c8
    rts

sub_0b92c8:
    lda #$02fc
    clc
    adc $50
    tay
    lda #$0030
    clc
    adc $50
    tax
    lda #$005c
    sta $3a

loc_0b92db:
    lda $0000,x
    sta $0000,y
    lda $0002,x
    sta $0002,y
    inx
    inx
    inx
    inx
    dey
    dey
    dey
    dey
    dec $3a
    bne loc_0b92db
    rts

sub_0b92f4:
    ldx $1fa8
    ldy #$0000
    lda #$0068
    sta $3a
    lda #$0000
    sta $02
    sta $97
    lda $08,x
    asl a
    asl a
    asl a
    asl a
    asl a
    sec
    sbc #$0128
    sta $08
    sta $04

loc_0b9315:
    lda $3a
    and #$0008
    beq loc_0b9321
    jsr sub_0b937c
    bra loc_0b9325

loc_0b9321:
    iny
    iny
    iny
    iny

loc_0b9325:
    lda $08
    clc
    adc #$0002
    sta $08
    sta $04
    dec $3a
    bne loc_0b9315
    rts

sub_0b9334:
    ldx $1fa8
    ldy #$0000
    lda #$0068
    sta $3a
    lda #$00ff
    sta $08
    sta $04
    lda $08,x
    asl a
    asl a
    asl a
    eor #$ffff
    inc a
    clc
    adc #$003f
    asl a
    asl a
    clc
    adc #$0128
    sta $02
    sta $97

loc_0b935d:
    lda $3a
    and #$0008
    bne loc_0b9369
    jsr sub_0b937c
    bra loc_0b936d

loc_0b9369:
    iny
    iny
    iny
    iny

loc_0b936d:
    lda $02
    sec
    sbc #$0002
    sta $02
    sta $97
    dec $3a
    bne loc_0b935d
    rts

sub_0b937c:
    lda $08
    bit #$ff00
    beq loc_0b938d
    bpl loc_0b938a
    lda #$0000
    bra loc_0b938d

loc_0b938a:
    lda #$00ff

loc_0b938d:
    xba
    sta $3c
    lda $02
    bit #$ff00
    beq loc_0b93a1
    bpl loc_0b939e
    lda #$0000
    bra loc_0b93a1

loc_0b939e:
    lda #$00ff

loc_0b93a1:
    ora $3c
    beq loc_0b93aa
    cmp #$ffff
    bne loc_0b93ad

loc_0b93aa:
    lda #$feff

loc_0b93ad:
    sta [$50],y
    iny
    iny
    lda $04
    bit #$ff00
    beq loc_0b93c2
    bpl loc_0b93bf
    lda #$0000
    bra loc_0b93c2

loc_0b93bf:
    lda #$00ff

loc_0b93c2:
    xba
    sta $3c
    lda $97
    bit #$ff00
    beq loc_0b93d6
    bpl loc_0b93d3
    lda #$0000
    bra loc_0b93d6

loc_0b93d3:
    lda #$00ff

loc_0b93d6:
    ora $3c
    beq loc_0b93df
    cmp #$ffff
    bne loc_0b93e2

loc_0b93df:
    lda #$feff

loc_0b93e2:
    sta [$50],y
    iny
    iny
    rts

loc_0b93e7:
    jsr sub_0bac85
    .db $80,$0b,$94,$80,$31,$94,$32,$e7,$c7,$66,$e7,$c7,$46,$e7,$c7,$50
    .db $e7,$c7,$3c,$e7,$c7,$50,$3e,$94,$80,$34,$8e,$02,$e7,$c7,$81,$2c
    .db $8e

loc_0b940b:
    jsr sub_0bbd4f
    lda #$0002
    sta $1faa
    ldy $1fa8
    tyx
    lda #$00be
    sta $0e,x
    lda #$0000
    sta $0c,x
    lda #$f800
    sta $10,x
    ldy #$7f80
    lda #$ff00
    jsr sub_0b8e6d
    rts

loc_0b9431:
    jsr sub_0b8d0c
    .db $33,$33,$03,$00,$00,$10,$02,$02,$e0
    rts

loc_0b943e:
    jsr sub_0b8db3
    ldx $1fa8
    ldy #$0000
    clc
    lda $10,x
    bpl loc_0b944d
    dey

loc_0b944d:
    adc $0d,x
    sta $0d,x
    sep #$20
.a8
    tya
    adc $0f,x
    sta $0f,x
    rep #$20
.a16
    clc
    lda $10,x
    adc #$ffe0
    sta $10,x
    lda $0e,x
    sta $02
    lda #$00e0
    sta $3a
    ldx #$8f5b
    ldy #$0000
    jsr sub_0b94d3
    rts

loc_0b9475:
    jsr sub_0bac85
    .db $80,$64,$8e,$80,$8a,$94,$18,$9d,$94,$80,$34,$8e,$02,$e7,$c7,$81
    .db $2c,$8e

loc_0b948a:
    tyx
    lda #$0000
    sta $0e,x
    lda #$0000
    sta $0c,x
    lda #$0400
    sta $10,x
    jmp loc_0b9431

loc_0b949d:
    jsr sub_0b8db3
    ldx $1fa8
    ldy #$0000
    clc
    lda $10,x
    bpl loc_0b94ac
    dey

loc_0b94ac:
    adc $0d,x
    sta $0d,x
    sep #$20
.a8
    tya
    adc $0f,x
    sta $0f,x
    rep #$20
.a16
    clc
    lda $10,x
    adc #$0040
    sta $10,x
    lda $0e,x
    sta $02
    lda #$00e0
    sta $3a
    ldx #$8f5b
    ldy #$0000
    jmp sub_0b94d3

sub_0b94d3:
    lda $0b0000,x
    and #$00ff
    sec
    sbc $02
    bit #$ff00
    beq loc_0b94ec
    bpl loc_0b94e9
    lda #$0000
    bra loc_0b94ec

loc_0b94e9:
    lda #$00ff

loc_0b94ec:
    sta $3c
    lda $0b0001,x
    and #$00ff
    clc
    adc $02
    bit #$ff00
    beq loc_0b9507
    bpl loc_0b9504
    lda #$0000
    bra loc_0b9507

loc_0b9504:
    lda #$00ff

loc_0b9507:
    xba
    ora $3c
    sta ($50),y
    iny
    iny
    iny
    iny
    inx
    inx
    dec $3a
    bne sub_0b94d3
    rts
    .db $60,$60,$60

loc_0b951a:
    jsr sub_0bac85
    .db $80,$64,$8e,$81,$23,$95

loc_0b9523:
    lda $001c51
    and #$00ff
    cmp #$0012
    bne loc_0b953c
    jsr sub_0b8d0c
    .db $00,$00,$00,$00,$00,$00,$02,$03,$e0
    rts

loc_0b953c:
    jsr sub_0b8d0c
    .db $00,$00,$00,$00,$00,$04,$02,$03,$e0
    rts
    .db $60

loc_0b954a:
    jsr sub_0bac85
    .db $80,$64,$8e,$80,$db,$95,$1c,$92,$95,$02,$80,$95,$80,$6b,$95,$82
    .db $72,$95,$80,$6b,$95,$80,$34,$8e,$02,$e7,$c7,$81,$2c,$8e

loc_0b956b:
    lda #$0001
    trb $da1d
    rts

loc_0b9572:
    ldx $1fa8
    lda #$0001
    and $da1d
    beq loc_0b957f
    dec $0a,x

loc_0b957f:
    rts

loc_0b9580:
    jsr sub_0b9b57
    jsr sub_0b8db3
    ldx #$00e0
    ldy #$0000
    lda #$ff00
    jmp loc_0b8e99

loc_0b9592:
    jsr sub_0b9b57
    jsr sub_0b8db3
    jsr sub_0b9ba7
    ldx $1fa8
    lda $08,x
    asl a
    asl a
    xba
    sta $f610
    lda $da95
    and #$00ff
    sta $f604
    lda $da96
    and #$00ff
    sta $f608
    lda #$0000
    sta $f60c
    lda #$0000
    sta $f5ea
    ldx #$95ca
    jmp sub_0b9741
    .db $04,$10,$01,$f0,$fe,$10,$01,$10,$01,$f0,$fe,$10,$01,$f0,$fe,$f0
    .db $fe

loc_0b95db:
    jsr sub_0b8d0c
    .db $ff,$ff,$0f,$55,$55,$07,$02,$10,$e0
    rts

loc_0b95e8:
    jsr sub_0b9b57
    jsr sub_0b8db3
    jsr sub_0b9ba7
    lda $f60c
    clc
    adc #$0300
    sta $f60c
    ldx $1fa8
    lda $08,x
    clc
    adc #$0009
    xba
    asl a
    asl a
    sta $f610
    lda $f60c
    sta $f5ea
    ldx #$9be6
    jsr sub_0b9741
    lda $f60c
    clc
    adc #$8000
    sta $f5ea
    ldx #$9be6
    jmp loc_0b973a

loc_0b9626:
    lda $1b88
    bit #$0400
    bne loc_0b964b
    sep #$20
.a8
    lda #$16
    sta $001c51
    rep #$20
.a16
    jsr sub_0bac85
    .db $80,$69,$8e,$80,$ac,$96,$04,$b9,$96,$1c,$5e,$96,$81,$4a,$96

loc_0b964a:
    rts

loc_0b964b:
    jsr sub_0bac85
    .db $80,$69,$8e,$80,$ac,$96,$04,$b9,$96,$18,$5e,$96,$81,$5d,$96,$60

loc_0b965e:
    jsr sub_0b9b57
    jsr sub_0b8db3
    jsr sub_0b9ba7
    lda $f60c
    clc
    adc #$0300
    sta $f60c
    ldx $1fa8
    lda $06,x
    xba
    asl a
    asl a
    sta $f610
    lda $7eda95
    and #$00ff
    sta $f604
    lda $7eda96
    and #$00ff
    sta $f608
    lda $f60c
    sta $f5ea
    ldx #$9be6
    jsr sub_0b9741
    lda $f60c
    clc
    adc #$8000
    sta $f5ea
    ldx #$9be6
    jmp loc_0b973a

loc_0b96ac:
    jsr sub_0b8d0c
    .db $ff,$ff,$0f,$55,$55,$07,$02,$10,$e0
    rts

loc_0b96b9:
    jsr sub_0b8db3
    jmp loc_0b9bb3

loc_0b96bf:
    jsr sub_0b9b57
    jsr sub_0b8db3
    jsr sub_0b9ba7
    lda $f60c
    clc
    adc #$0300
    sta $f60c
    ldx $1fa8
    lda $06,x
    xba
    asl a
    asl a
    clc
    adc #$1600
    sta $f610
    lda $7eda95
    and #$00ff
    sta $f604
    lda $7eda96
    and #$00ff
    sta $f608
    lda $f60c
    sta $f5ea
    ldx #$9be6
    jsr sub_0b9741
    lda $f60c
    clc
    adc #$8000
    sta $f5ea
    ldx #$9be6
    jmp loc_0b973a

loc_0b9711:
    jsr sub_0b8db3
    jsr sub_0b9ba7
    lda #$7fff
    sta $f610
    lda #$0000
    sta $f5ea
    ldx #$9729
    jmp sub_0b9741
    .db $04,$11,$00,$ef,$ff,$11,$00,$11,$00,$ef,$ff,$11,$00,$ef,$ff,$ef
    .db $ff

loc_0b973a:
    lda #$0002
    sta $e4
    bra loc_0b9743

sub_0b9741:
    stz $e4

loc_0b9743:
    jsr sub_0b9794
    jsr sub_0b9781
    jsr sub_0b99fc
    jsr sub_0b97e6
    jmp loc_0b97c2
    .db $60,$ac,$20,$f6,$9c,$fe,$f5,$a2,$00,$00,$bd,$22,$f6,$cd,$18,$f6
    .db $90,$15,$cd,$1a,$f6,$b0,$10,$bd,$24,$f6,$cd,$1c,$f6,$90,$08,$cd
    .db $1e,$f6,$b0,$03,$ce,$fe,$f5,$e8,$e8,$e8,$e8,$88,$d0,$dc,$60

sub_0b9781:
    lda $f5ea
    jsr sub_0b9b49
    sta $f5ec
    lda $f5ea
    jsr sub_0b9b45
    sta $f5ee
    rts

sub_0b9794:
    txa
    beq loc_0b97c1
    ldy #$0000
    lda $0b0000,x
    and #$00ff
    sta $f620
    asl a
    sta $02
    inx

loc_0b97a8:
    lda $0b0000,x
    phy
    ldy $f610
    jsl sub_7f76d8
    asl a
    ply
    sta $f622,y
    inx
    inx
    iny
    iny
    dec $02
    bne loc_0b97a8

loc_0b97c1:
    rts

loc_0b97c2:
    jsr sub_0b9a65
    ldx $5f
    stx $3c

loc_0b97c9:
    jsr sub_0b9abb
    jsr sub_0b9ae5
    ldx $3c
    cpx $3a
    bne loc_0b97c9
    ldx $5f
    stx $3c

loc_0b97d9:
    jsr sub_0b9a96
    jsr sub_0b9ae0
    ldx $3c
    cpx $3a
    bne loc_0b97d9
    rts

sub_0b97e6:
    stz $f5e4
    lda $f61c
    sta $a5
    jsr sub_0b98c5
    ldy $f620
    stz $f620
    stz $f5e0
    ldx #$0000

loc_0b97fd:
    lda $f656,x
    sta $02
    lda $f658,x
    sta $08
    lda $f65a,x
    sta $97
    lda $f65c,x
    sta $04
    phy
    phx
    jsr sub_0b98e9
    plx
    ply
    inx
    inx
    inx
    inx
    dey
    bne loc_0b97fd
    lda $f61e
    sta $a5
    jsr sub_0b98c5
    ldy $f620
    stz $f620
    stz $f5e0
    ldx #$0000

loc_0b9833:
    lda $f656,x
    sta $02
    lda $f658,x
    sta $08
    lda $f65a,x
    sta $97
    lda $f65c,x
    sta $04
    phy
    phx
    jsr sub_0b998e
    plx
    ply
    inx
    inx
    inx
    inx
    dey
    bne loc_0b9833
    dec $f5e4
    lda $f618
    sta $a5
    jsr sub_0b98c5
    ldy $f620
    stz $f620
    stz $f5e0
    ldx #$0000

loc_0b986c:
    lda $f656,x
    sta $08
    lda $f658,x
    sta $02
    lda $f65a,x
    sta $04
    lda $f65c,x
    sta $97
    phy
    phx
    jsr sub_0b98e9
    plx
    ply
    inx
    inx
    inx
    inx
    dey
    bne loc_0b986c
    lda $f61a
    sta $a5
    jsr sub_0b98c5
    ldy $f620
    stz $f620
    stz $f5e0
    ldx #$0000

loc_0b98a2:
    lda $f656,x
    sta $08
    lda $f658,x
    sta $02
    lda $f65a,x
    sta $04
    lda $f65c,x
    sta $97
    phy
    phx
    jsr sub_0b998e
    plx
    ply
    inx
    inx
    inx
    inx
    dey
    bne loc_0b98a2
    rts

sub_0b98c5:
    lda $f620
    asl a
    tay
    asl a
    sta $f5e6
    ldx #$0000

loc_0b98d1:
    lda $f632,x
    sta $f656,x
    inx
    inx
    dey
    bne loc_0b98d1
    lda $f632
    sta $f656,x
    lda $f634
    sta $f658,x
    rts

sub_0b98e9:
    lda $08
    cmp $a5
    bmi loc_0b98f7
    lda $04
    cmp $a5
    bmi loc_0b9900
    bpl sub_0b990f

loc_0b98f7:
    lda $04
    cmp $a5
    bmi loc_0b98ff
    bpl loc_0b990c

loc_0b98ff:
    rts

loc_0b9900:
    jsr sub_0b990f
    jsr sub_0b9938
    jsr sub_0b9949
    jmp sub_0b990f

loc_0b990c:
    jsr sub_0b9949

sub_0b990f:
    ldx $f5e0
    lda $f5e4
    beq loc_0b9923
    lda $08
    sta $f632,x
    lda $02
    sta $f634,x
    bra loc_0b992d

loc_0b9923:
    lda $02
    sta $f632,x
    lda $08
    sta $f634,x

loc_0b992d:
    inx
    inx
    inx
    inx
    stx $f5e0
    inc $f620
    rts

sub_0b9938:
    ldx $08
    lda $04
    sta $08
    stx $04
    ldx $02
    lda $97
    sta $02
    stx $97
    rts

sub_0b9949:
    lda $97
    sta $a7

loc_0b994d:
    clc
    lda $04
    cmp $a5
    beq loc_0b9985
    bmi loc_0b9985
    clc
    adc $08
    cmp #$8000
    ror a
    cmp $a5
    bpl loc_0b9974
    bmi loc_0b9963

loc_0b9963:
    sta $08
    lda $02
    clc
    adc $97
    cmp #$8000
    ror a
    sta $02
    sta $a7
    bra loc_0b994d

loc_0b9974:
    sta $04
    lda $02
    clc
    adc $97
    cmp #$8000
    ror a
    sta $97
    sta $a7
    bra loc_0b994d

loc_0b9985:
    lda $a7
    sta $02
    lda $a5
    sta $08
    rts

sub_0b998e:
    lda $08
    cmp $a5
    bpl loc_0b999c
    lda $04
    cmp $a5
    bpl loc_0b99a5
    bmi loc_0b99b4

loc_0b999c:
    lda $04
    cmp $a5
    bpl loc_0b99a4
    bmi loc_0b99b1

loc_0b99a4:
    rts

loc_0b99a5:
    jsr sub_0b990f
    jsr sub_0b9938
    jsr sub_0b99b7
    jmp sub_0b990f

loc_0b99b1:
    jsr sub_0b99b7

loc_0b99b4:
    jmp sub_0b990f

sub_0b99b7:
    lda $02
    sta $a7

loc_0b99bb:
    clc
    lda $08
    cmp $a5
    beq loc_0b99f3
    bmi loc_0b99f3
    clc
    adc $04
    cmp #$8000
    ror a
    cmp $a5
    bpl loc_0b99d1
    bmi loc_0b99e2

loc_0b99d1:
    sta $08
    lda $02
    clc
    adc $97
    cmp #$8000
    ror a
    sta $02
    sta $a7
    bra loc_0b99bb

loc_0b99e2:
    sta $04
    lda $02
    clc
    adc $97
    cmp #$8000
    ror a
    sta $97
    sta $a7
    bra loc_0b99bb

loc_0b99f3:
    lda $a7
    sta $02
    lda $a5
    sta $08
    rts

sub_0b99fc:
    lda $f620
    sta $08
    ldx #$0000

loc_0b9a04:
    lda $f622,x
    ldy $f5ee
    jsl sub_7f76d8
    sty $02
    asl $02
    rol a
    sta $97
    lda $f624,x
    eor #$ffff
    inc a
    ldy $f5ec
    jsl sub_7f76d8
    sty $02
    asl $02
    rol a
    clc
    adc $97
    clc
    adc $f604
    sta $f632,x
    lda $f622,x
    ldy $f5ec
    jsl sub_7f76d8
    sty $02
    asl $02
    rol a
    sta $97
    lda $f624,x
    ldy $f5ee
    jsl sub_7f76d8
    sty $02
    asl $02
    rol a
    clc
    adc $97
    clc
    adc $f608
    sta $f634,x
    inx
    inx
    inx
    inx
    dec $08
    bne loc_0b9a04
    rts

sub_0b9a65:
    lda $f620
    tay
    asl a
    asl a
    sta $f5e6
    lda #$7fff
    sta $02
    lda #$ffff
    sta $97
    ldx #$0000

loc_0b9a7b:
    lda $f634,x
    cmp $02
    bpl loc_0b9a86
    sta $02
    stx $5f

loc_0b9a86:
    cmp $97
    bmi loc_0b9a8e
    sta $97
    stx $3a

loc_0b9a8e:
    inx
    inx
    inx
    inx
    dey
    bne loc_0b9a7b
    rts

sub_0b9a96:
    ldx $3c
    lda $f632,x
    sta $02
    lda $f634,x
    sta $08
    inx
    inx
    inx
    inx
    cpx $f5e6
    bcc loc_0b9aae
    ldx #$0000

loc_0b9aae:
    lda $f632,x
    sta $97
    lda $f634,x
    sta $04
    stx $3c
    rts

sub_0b9abb:
    ldx $3c
    lda $f632,x
    sta $02
    lda $f634,x
    sta $08
    cpx #$0000
    bne loc_0b9acf
    ldx $f5e6

loc_0b9acf:
    dex
    dex
    dex
    dex
    lda $f632,x
    sta $97
    lda $f634,x
    sta $04
    stx $3c
    rts

sub_0b9ae0:
    lda #$0001
    tsb $e4

sub_0b9ae5:
    lda $04
    sec
    sbc $08
    sta $0a
    tax
    bmi loc_0b9b44
    beq loc_0b9b44
    lda $97
    sec
    sbc $02
    php
    bpl loc_0b9afd
    eor #$ffff
    inc a

loc_0b9afd:
    xba
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
    bpl loc_0b9b1d
    eor #$ffff
    inc a

loc_0b9b1d:
    sta $f5e8
    lda $02
    xba
    sta $02
    ldx $0a
    lda $08
    asl a
    asl a
    adc $e4
    tay

loc_0b9b2e:
    sep #$20
.a8
    lda $03
    sta ($50),y
    iny
    iny
    iny
    iny
    rep #$21
.a16
    lda $02
    adc $f5e8
    sta $02
    dex
    bpl loc_0b9b2e

loc_0b9b44:
    rts

sub_0b9b45:
    clc
    adc #$4000

sub_0b9b49:
    and #$ff00
    xba
    tax
    lda $7f3d92,x
    and #$00ff
    xba
    rts

sub_0b9b57:
    lda #$0000
    sta $f61c
    lda #$00df
    sta $f61e
    lda #$0000
    sta $f618
    lda #$00ff
    sta $f61a
    rts
    .db $a9,$00,$00,$8d,$1c,$f6,$a9,$af,$00,$8d,$1e,$f6,$a9,$00,$00,$8d
    .db $18,$f6,$a9,$ff,$00,$8d,$1a,$f6,$60,$a9,$20,$00,$8d,$1c,$f6,$a9
    .db $c0,$00,$8d,$1e,$f6,$a9,$20,$00,$8d,$18,$f6,$a9,$e0,$00,$8d,$1a
    .db $f6,$60,$a2,$c0,$00,$80,$03

sub_0b9ba7:
    ldx #$00e0
    ldy #$0000
    lda #$0001
    jmp loc_0b8e99

loc_0b9bb3:
    ldx #$00e0
    lda #$ff00
    ldy #$0000
    jmp loc_0b8e99

loc_0b9bbf:
    ldx #$9bd5
    jsr sub_0b9741
    lda $f5ea
    clc
    adc #$4000
    sta $f5ea
    ldx #$9bd5
    jmp loc_0b973a
    .db $04,$00,$00,$88,$ff,$2c,$01,$00,$00,$00,$00,$78,$00,$d4,$fe,$00
    .db $00,$03,$00,$00,$10,$ff,$d0,$00,$78,$00,$30,$ff,$78,$00,$03,$00
    .db $00,$20,$fe,$a0,$01,$f0,$00,$60,$fe,$f0,$00,$60

loc_0b9c01:
    jsr sub_0bac85
    .db $80,$e7,$c7,$05,$e7,$c7,$80,$64,$8e,$81,$11,$9c

loc_0b9c10:
    rts

loc_0b9c11:
    jsr sub_0b8d0c
    .db $00,$00,$00,$00,$00,$01,$02,$10,$e0
    rts

loc_0b9c1e:
    jsr sub_0bac85
    .db $80,$69,$8e,$05,$e7,$c7,$80,$39,$9c,$18,$46,$9c,$0a,$e7,$c7,$80
    .db $34,$8e,$02,$e7,$c7,$80,$2c,$8e

loc_0b9c39:
    jsr sub_0b8d0c
    .db $ff,$ff,$0f,$55,$55,$00,$00,$00,$e0
    rts

loc_0b9c46:
    lda #$0000
    sta $f61c
    lda #$00c0
    sta $f61e
    lda #$0010
    sta $f618
    lda #$00f0
    sta $f61a
    jsr sub_0b8d99
    jsr sub_0b9ba7
    lda #$0028
    sta $f604
    lda #$0018
    sta $f608
    lda $f60c
    clc
    adc #$0300
    sta $f60c
    ldx $1fa8
    lda $06,x
    xba
    asl a
    asl a
    sta $f610
    lda $f60c
    sta $f5ea
    ldx #$9bf3
    jsr sub_0b9741
    lda $f60c
    clc
    adc #$8000
    sta $f5ea
    ldx #$9bf3
    jmp loc_0b973a

sub_0b9ca1:
.a8
    phb
    phk
    plb
    php
    rep #$30
.a16
    jsr sub_0bc850
    lda #$0001
    sta $1faa
    plp
.a8
    plb
    rtl

sub_0b9cb3:
    phb
    phk
    plb
    php
    ldy $1c49
    sty $1e90
    rep #$30
.a16
    jsr sub_0b9ccb
    ldy $1e90
    sty $1c49
    plp
.a8
    plb
    rtl

sub_0b9ccb:
.a16
    lda $7ed7f4
    and #$00ff
    sta $7ffa25
    ldx #$1faa
    stx $1fa8
    jsr sub_0bac23
    sbc $9c,s
    sed
    stz $1b60
    cmp $34,x
    cmp $41,x
    cmp $5a,x
    cmp $73,x
    cmp $88,x
    cmp $a1,x
    cmp $ba,x
    cmp $cb,x
    cmp $e4,x
    .db $d5

loc_0b9cf8:
    jsr sub_0bac85
    .db $80,$20,$9d,$08,$20,$9d,$06,$47,$9d,$01,$5a,$9d,$02,$67,$9d,$64
    .db $9e,$9d,$64,$9e,$9d,$40,$8f,$9d,$08,$ae,$9d,$80,$dd,$9d,$03,$e4
    .db $9d,$80,$ec,$9d,$00

loc_0b9d20:
    lda #$0000
    sta $7ef550
    sta $7ef552
    sta $7ffaf5
    lda #$0001
    sta $7ffaf7
    sep #$20
.a8
    lda #$12
    sta $001c51
    rep #$20
.a16
    lda #$0000
    jsr sub_0b9e0f
    rts

loc_0b9d47:
    ldx $1e90
    phx
    jsr sub_0b9ea9
    plx
    ldy $1fa8
    lda $0008,y
    asl a
    tay
    jmp sub_0baacd

loc_0b9d5a:
    sep #$20
.a8
    lda #$13
    sta $001c51
    rep #$20
.a16
    jmp sub_0b9df0

loc_0b9d67:
    ldx $1fa8
    lda $08,x
    bne loc_0b9d77
    lda #$0066
    jsl QueueSound
    bra loc_0b9d83

loc_0b9d77:
    cmp #$0002
    bne loc_0b9d83
    lda #$00ce
    jsl QueueSound

loc_0b9d83:
    lda #$000a
    jsr sub_0b9e0f
    jsr sub_0b9df7
    jmp sub_0b9df0
    .db $af,$52,$f5,$7e,$3a,$29,$3f,$00,$8f,$52,$f5,$7e,$20,$4f,$9e

loc_0b9d9e:
    lda #$000a
    sta $001e68
    jsr sub_0b9e73
    jsr sub_0b9df7
    jmp sub_0b9df0

loc_0b9dae:
    lda #$0000
    sta $7ef552
    lda #$0005
    sta $001e68
    ldx $1fa8
    lda $08,x
    bne loc_0b9dcc
    pha
    lda #$0066
    jsl QueueSound
    pla

loc_0b9dcc:
    cmp #$0008
    bcs loc_0b9dd7
    eor #$0007
    jsr sub_0b9e0f

loc_0b9dd7:
    jsr sub_0b9df0
    jmp sub_0b9df7

loc_0b9ddd:
    lda #$0067
    jsl QueueSound
    lda #$ffff
    sta $7ef550
    rts
    .db $ee,$e0,$1b,$60

sub_0b9df0:
    jsr sub_0b9ea9
    jsr sub_0b9ecb
    rts

sub_0b9df7:
    lda $1296
    and #$9000
    beq loc_0b9e0e
    lda $1be0
    bne loc_0b9e0e
    lda #$0042
    jsl QueueSound
    inc $1be0

loc_0b9e0e:
    rts

sub_0b9e0f:
    pha
    lda #$0010
    sta $7ffaeb
    lda #$00ca
    sta $7ffae5
    pla
    cmp #$0008
    bcs loc_0b9e3b
    pha
    asl a
    asl a
    asl a
    eor #$003f
    sta $7ef550
    pla
    asl a
    asl a
    asl a
    eor #$003f
    sta $7ffadf
    rts

loc_0b9e3b:
    lda #$0000
    sta $7ffaeb
    sta $7ffae5
    sta $7ffadf
    sta $7ef550
    rts
    .db $60,$ae,$a8,$1f,$b5,$08,$18,$69,$08,$00,$29,$1f,$00,$89,$10,$00
    .db $f0,$03,$49,$1f,$00,$c9,$08,$00,$b0,$03,$a9,$00,$00,$4a,$4a,$8f
    .db $50,$f5,$7e,$60

sub_0b9e73:
    ldx $1fa8
    lda $08,x
    bit #$0010
    beq loc_0b9ea1
    bit #$000c
    bne loc_0b9ea1
    sep #$20
.a8
    jsl sub_7f7bd0
    rep #$20
.a16
    and #$000f
    sta $02
    ldx $1fa8
    lda $08,x
    and #$0020
    adc #$0060
    adc $02
    sta $7ffaf5
    rts

loc_0b9ea1:
    lda #$0000
    sta $7ffaf5
    rts

sub_0b9ea9:
    ldx $1fa8
    lda $0c,x
    inc a
    and #$0003
    sta $0c,x
    tax
    lda $0b9ec7,x
    and #$00ff
    xba
    tax
    ldy #$d4ea
    lda #$263a
    jmp loc_0bc42b
    .db $0c,$0a,$08,$0a

sub_0b9ecb:
    ldx $1fa8
    lda $0e,x
    inc a
    cmp #$0006
    bcc loc_0b9ed9
    lda #$0000

loc_0b9ed9:
    sta $0e,x
    tax
    lda loc_0b9eff,x
    and #$00ff
    xba
    pha
    lda $7ed7f4
    cmp #$000a
    bcc loc_0b9ef1
    lda #$0000

loc_0b9ef1:
    asl a
    tax
    lda $0b9ce4,x
    tay
    lda #$2b80
    plx
    jmp loc_0bc42b

loc_0b9eff:
    php
    asl a
    tsb $0c0e
    asl a
    jmp sub_0bc406

loc_0b9f08:
    sep #$20
.a8
    lda $5e
    pha
    jsl sub_7f77fe
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    rep #$20
.a16
    lda $7ef550
    sta $700352
    lda $7ef552
    sta $700354
    sep #$20
.a8
    sep #$20
    lda #$0b
    ldx #$86bf
    jsl sub_7f787b
    sep #$20
    rep #$10
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    rep #$20
.a16
    rts

sub_0b9f4c:
.a8
    phb
    pea $7e7e
    plb
    plb
    php
    rep #$30
.a16
    lda #$00ff
    sta $7ffa25
    stz $f556
    stz $f576
    stz $f574
    lda #$0000
    sta $70038e
    lda #$0000
    sta $f55a
    jsr sub_0b9fc1
    jsr sub_0ba05a
    jsr sub_0b9fdd
    jsr sub_0ba046
    jsr sub_0ba029
    jsr sub_0b9fb2
    plp
.a8
    plb
    rtl

sub_0b9f87:
.a16
    phb
    pea $7e7e
    plb
    plb
    php
    rep #$30
    jsr sub_0ba0e5
    lda $1b88
    bit #$0100
    bne loc_0b9fa6
    lda $70037c
    bne loc_0b9fa9
    lda $f594
    bne loc_0b9fa9

loc_0b9fa6:
    jsr sub_0ba13f

loc_0b9fa9:
    jsr sub_0ba2cf
    stz $1e60
    plp
    plb
    rtl

sub_0b9fb2:
    lda $1b86
    bit #$0080
    beq loc_0b9fc0
    lda #$a732
    sta $f582

loc_0b9fc0:
    rts

sub_0b9fc1:
    ldx #$ffff
    lda $1b86
    bit #$0080
    bne loc_0b9fd7
    lda $1b92
    bit #$0100
    bne loc_0b9fd7
    ldx #$0000

loc_0b9fd7:
    txa
    sta $70037c
    rts

sub_0b9fdd:
    stz $f598
    stz $f594
    stz $f592
    stz $f590
    stz $1e60
    stz $f596
    lda #$0000
    sta $70037a
    sta $70038e
    sta $70038a
    lda #$0000
    sta $700378
    stz $f58c
    lda $f572
    ora #$c700
    sta $f570
    lda #$0021
    sta $700390
    stz $f582
    lda $70037c
    beq loc_0ba028
    lda #$007f
    sta $700390

loc_0ba028:
    rts

sub_0ba029:
    stz $f55e
    stz $f560
    stz $f55c
    stz $db33
    stz $db39
    stz $db3b
    stz $1e84
    lda #$0000
    sta $700388
    rts

sub_0ba046:
    stz $f56a
    stz $f56c
    stz $f56e
    stz $1e84
    lda #$0000
    sta $700388
    rts

sub_0ba05a:
    phb
    phk
    plb
    jsr sub_0ba0a6
    .db $89,$4a,$08,$01,$10,$00,$07,$00,$10,$00,$01,$00
    jsr sub_0ba0a6
    .db $b9,$4a,$01,$01,$05,$00,$06,$00,$10,$00,$01,$00
    lda #$00d7
    sta $7ef572
    plb
    rts

sub_0ba084:
    lda $0001,x
    sta $02
    lda $0003,x
    sta $08
    ldy $0005,x
    lda $0007,x
    sta $97
    lda $0009,x
    sta $04
    lda $000b,x
    sta $0a
    txa
    clc
    adc #$000c
    rts

sub_0ba0a6:
    plx
    jsr sub_0ba084
    pha
    lda #$0081
    sta VMAIN

loc_0ba0b1:
    ldx $97
    lda $02
    sta VMADDL
    lda $08
    clc

loc_0ba0bb:
    ora #$2000
    sta VMDATAL
    adc $0a
    dex
    bne loc_0ba0bb
    lda $08
    clc
    adc $04
    sta $08
    inc $02
    dey
    bne loc_0ba0b1
    rts
    .db $ad,$94,$12,$29,$30,$00,$c9,$30,$00,$d0,$06,$a9,$86,$a7,$8d,$82
    .db $f5,$60

sub_0ba0e5:
    lda $1e14
    and #$00ff
    sta $700382
    lda $001e70
    sta $700386
    rts

sub_0ba0f8:
    lda $1e84
    bne loc_0ba13e
    ldx #$0000

loc_0ba100:
    lda $0bfb8d,x
    beq loc_0ba13e
    trb $f55c
    bne loc_0ba113
    txa
    clc
    adc #$0006
    tax
    bra loc_0ba100

loc_0ba113:
    lda $0bfb8f,x
    and #$00ff
    beq loc_0ba13e
    sta $1e84
    lda $0bfb90,x
    and #$00ff
    sta $f55e
    lda $0bfb91,x
    and #$00ff
    sta $f560
    lda $0bfb92,x
    and #$00ff
    sta $7ef566

loc_0ba13e:
    rts

sub_0ba13f:
    lda $1b88
    bit #$0100
    beq loc_0ba160
    lda $1e84
    cmp #$006e
    beq loc_0ba155
    stz $1e84
    stz $f582

loc_0ba155:
    lda #$fffd
    trb $db33
    stz $f55c
    bra loc_0ba163

loc_0ba160:
    jsr sub_0ba0f8

loc_0ba163:
    jsl sub_7f7763
    lda $1e84
    bne loc_0ba17d
    lda $1b88
    bit #$0100
    beq loc_0ba17a
    stz $f582
    stz $1e84

loc_0ba17a:
    jmp loc_0ba1e5

loc_0ba17d:
    lda $f582
    bne loc_0ba1b7
    lda #$0064
    sta $70036c
    lda #$0000
    sta $70038a
    lda #$a642
    sta $f582
    lda $001e84
    sta $700388
    lda $7ef566
    sta $700378
    lda $da92
    ldx $f566
    cpx #$0002
    bcc loc_0ba1b4
    lda #$00e0

loc_0ba1b4:
    jsr sub_0ba2a6

loc_0ba1b7:
    lda $700388
    cmp #$0073
    beq loc_0ba1c5
    cmp #$00d1
    bne loc_0ba1d7

loc_0ba1c5:
    lda $7edb33
    and #$03ff
    bne loc_0ba1de
    lda $7ef55c
    and #$3fff
    bne loc_0ba1de

loc_0ba1d7:
    lda #$4000
    sta $f56a
    rts

loc_0ba1de:
    lda #$c000
    sta $f56a
    rts

loc_0ba1e5:
    lda $db2d
    beq loc_0ba1ec
    bra loc_0ba23c

loc_0ba1ec:
    lda $da8d
    and #$0040
    bne loc_0ba201
    lda #$4000
    sta $f56a
    lda #$ffff
    sta $f59a
    rts

loc_0ba201:
    lda $f582
    beq loc_0ba211
    lda $700388
    cmp #$00ff
    beq loc_0ba275
    bne loc_0ba26e

loc_0ba211:
    lda $da94
    jsr sub_0ba2a6
    lda #$00ff
    sta $700388
    lda #$ffff
    sta $f59a
    lda #$0000
    sta $700378
    stz $f56a
    lda #$0000
    sta $70038a
    lda #$a630
    sta $f582
    rts

loc_0ba23c:
    lda $1292
    and #$0f00
    bne loc_0ba275
    lda $db2f
    cmp $f59a
    beq loc_0ba275
    lda $f582
    bne loc_0ba26e
    lda $da94
    jsr sub_0ba2a6
    jsr sub_0ba280
    jsr sub_0ba293
    stz $f56a
    lda #$0000
    sta $70038a
    lda #$a609
    sta $f582
    rts

loc_0ba26e:
    lda #$4000
    sta $f56a
    rts

loc_0ba275:
    rts
    .db $9c,$74,$f5,$ad,$2f,$db,$8d,$9a,$f5,$60

sub_0ba280:
    lda $db2f
    sta $f59a
    tax
    lda $0bfbe3,x
    and #$00ff
    sta $700388
    rts

sub_0ba293:
    lda #$0000
    ldx $db31
    cpx #$000f
    bne loc_0ba2a1
    lda #$0001

loc_0ba2a1:
    sta $700378
    rts

sub_0ba2a6:
    ldy #$2700
    ldx #$0094
    phx
    lda $700378
    tax
    lda $0b85d2,x
    plx
    and #$00ff
    bne loc_0ba2c2
    ldx #$00f4
    ldy #$c700

loc_0ba2c2:
    txa
    sta $70038e
    tya
    ora $f572
    sta $f570
    rts

sub_0ba2cf:
    phb
    pea $7e7e
    plb
    plb
    php
    rep #$30
    jsr sub_0ba2de
    plp
    plb
    rts

sub_0ba2de:
    ldx $f582
    beq loc_0ba2f6

loc_0ba2e3:
    lda $0b0000,x
    inx
    txy
    and #$00ff
    asl a
    tax
    jsr (tbl_0ba2f7,x)
    stx $f582
    bra loc_0ba2e3

loc_0ba2f6:
    rts

tbl_0ba2f7:
    .db $eb,$a3,$c9,$a3,$cc,$a3,$ee,$a3,$f5,$a3,$01,$a4,$67,$a4,$0d,$a5
    .db $f0,$a4,$d1,$a4,$eb,$a4,$c4,$a5,$dd,$a5,$77,$a3,$89,$a3,$9e,$a3
    .db $b3,$a3,$31,$a3,$59,$a4,$2b,$a4,$53,$a4,$5c,$a4,$1a,$a4,$00,$a6
    .db $9b,$a4,$85,$a4,$5b,$a3,$64,$a3,$43,$a3

loc_0ba331:
    tyx
    sep #$20
.a8
    clc
    lda $0b0000,x
    adc $f589
    sta $f589
    rep #$20
.a16
    inx
    rts

loc_0ba343:
    tyx
    lda $da0d
    cmp #$0060
    beq loc_0ba356
    lda $da0d
    cmp #$0062
    beq loc_0ba356
    pla
    rts

loc_0ba356:
    stx $f582
    pla
    rts

loc_0ba35b:
    tyx
    lda #$0094
    ldy #$2700
    bra loc_0ba36b

loc_0ba364:
    tyx
    lda #$00f4
    ldy #$c700

loc_0ba36b:
    sta $70038e
    tya
    ora $f572
    sta $f570
    rts

loc_0ba377:
    tyx
    lda $0b0000,x
    tay
    lda $0b0002,x
    sta $0000,y
    inx
    inx
    inx
    inx
    rts

loc_0ba389:
    tyx
    lda $0b0000,x
    tay
    lda $0b0002,x
    ora $0000,y
    sta $0000,y
    inx
    inx
    inx
    inx
    rts

loc_0ba39e:
    tyx
    lda $0b0000,x
    tay
    lda $0b0002,x
    and $0000,y
    sta $0000,y
    inx
    inx
    inx
    inx
    rts

loc_0ba3b3:
    tyx
    lda $0b0000,x
    tay
    lda $0b0002,x
    phx
    tyx
    sta $700000,x
    plx
    inx
    inx
    inx
    inx
    rts

loc_0ba3c9:
    tyx
    bra loc_0ba3e1

loc_0ba3cc:
    tyx
    lda #$0000
    sta $700388
    lda #$007f
    sta $700390
    lda $f582
    sta $f594

loc_0ba3e1:
    stz $f58c
    stz $f584
    stz $f596
    rts

loc_0ba3eb:
    tyx
    pla
    rts

loc_0ba3ee:
    tyx
    lda $0b0000,x
    tax
    rts

loc_0ba3f5:
    tyx
    lda #$0001
    sta $f56c
    sta $70037a
    rts

loc_0ba401:
    tyx
    lda #$0001
    sta $f56e
    lda #$0000
    sta $700388
    sta $70037a
    stz $f58c
    stz $f556
    rts

loc_0ba41a:
    tyx
    lda $0b0000,x
    and #$00ff
    and #$00ff
    jsl QueueSound
    inx
    rts

loc_0ba42b:
    tyx
    stz $f582
    stz $f594
    lda #$0000
    sta $70037a
    lda #$007f
    sta $70036c
    lda #$0000
    sta $700388
    lda #$0021
    sta $700390
    jsr sub_0ba046
    pla
    rts

loc_0ba453:
    tyx
    stz $f582
    pla
    rts

loc_0ba459:
    tyx
    pla
    rts

loc_0ba45c:
    tyx
    jsr ($0000,x)
    bcc loc_0ba465
    inx
    inx
    rts

loc_0ba465:
    pla
    rts

loc_0ba467:
    tyx
    lda $0b0000,x
    and #$00ff
    cmp $f584
    bcs loc_0ba480
    stz $1e60
    stz $f584
    inx
    stx $f582
    pla
    rts

loc_0ba480:
    inc $f584
    pla
    rts

loc_0ba485:
    lda $700392
    inc a
    cmp #$0006
    bcc loc_0ba492
    lda #$0000

loc_0ba492:
    sta $700392
    lda #$8000
    bra loc_0ba49e

loc_0ba49b:
    lda #$4000

loc_0ba49e:
    tyx
    and $f56a
    bne loc_0ba4aa
    lda $700388
    bpl loc_0ba4b5

loc_0ba4aa:
    stz $f56a
    lda #$0000
    sta $700388
    rts

loc_0ba4b5:
    pla
    rts

sub_0ba4b7:
    pha
    lda #$4000
    tsb $f596
    pla
    rts

sub_0ba4c0:
    lda $f596
    bpl loc_0ba4ca
    lda #$cf00
    bra loc_0ba4cd

loc_0ba4ca:
    lda #$cf00

loc_0ba4cd:
    and $1c21
    rts

loc_0ba4d1:
    tyx
    lda $f578
    sta $700388
    lda $f576
    beq loc_0ba4e9
    stz $f576
    lda #$0000
    sta $700388
    rts

loc_0ba4e9:
    pla
    rts

loc_0ba4eb:
    lda #$0010
    bra loc_0ba510

loc_0ba4f0:
    lda $1c21
    and #$1000
    beq loc_0ba50d
    lda #$0005
    jsl QueueSound
    lda #$a6bb
    sta $f582
    lda $7ffff0
    pla
    jmp sub_0ba2de

loc_0ba50d:
    lda #$0000

loc_0ba510:
    sta $02
    tyx
    lda $f584
    bne loc_0ba539
    bit $02
    bpl loc_0ba523
    lda #$0049
    jsl QueueSound

loc_0ba523:
    lda $02
    and #$00ff
    sta $70038a
    lda $0b0000,x
    and #$00ff
    sta $700388
    bra loc_0ba5a2

loc_0ba539:
    cmp #$0064
    bcs loc_0ba5b8
    lda $700356
    cmp #$0024
    bcs loc_0ba576
    lda #$0001
    sta $f598
    lda $f584
    cmp #$0006
    bcc loc_0ba558
    jsr sub_0ba4b7

loc_0ba558:
    jsr sub_0ba4c0
    beq loc_0ba5a2
    lda $f584
    cmp #$0007
    bcs loc_0ba5b1
    cmp #$0004
    bcs loc_0ba5a2
    lda #$0004
    sta $f584
    sta $70038a
    bra loc_0ba5a2

loc_0ba576:
    stz $f598
    lda $f584
    cmp #$000a
    bcc loc_0ba584
    jsr sub_0ba4b7

loc_0ba584:
    jsr sub_0ba4c0
    beq loc_0ba5a2
    lda $f584
    cmp #$000b
    bcs loc_0ba5b1
    cmp #$0008
    bcs loc_0ba5a2
    lda #$0008
    sta $f584
    sta $70038a
    bra loc_0ba5a2

loc_0ba5a2:
    inc $f584
    lda $70038a
    lsr a
    lsr a
    sta $70036c
    pla
    rts

loc_0ba5b1:
    lda #$0005
    jsl QueueSound

loc_0ba5b8:
    stz $f584
    stz $f596
    inx
    stx $f582
    pla
    rts

loc_0ba5c4:
    tyx
    lda $0b0000,x
    sta $f588
    lda $0b0002,x
    and #$00ff
    sta $f58c
    jsr sub_0ba5e5
    inx
    inx
    inx
    rts

loc_0ba5dd:
    tyx
    stz $f588
    stz $f58c
    rts

sub_0ba5e5:
    phx
    phy
    sep #$30
.a8
.i8
    ldy $f589
    beq loc_0ba5fb
    cpy #$60
    bcs loc_0ba5f6
    lda #$0c
    bra loc_0ba5f8

loc_0ba5f6:
    lda #$0d

loc_0ba5f8:
    sta $f58c

loc_0ba5fb:
    rep #$30
.a16
.i16
    ply
    plx
    rts

loc_0ba600:
    tyx
    lda #$0000
    sta $7eda13
    rts
    .db $01,$1b,$10,$6c,$03,$7f,$00,$16,$06,$04,$06,$01,$15,$1f,$a6,$06
    .db $01,$18,$05,$06,$03,$14

loc_0ba61f:
    lda $700388
    cmp #$00ff
    bne loc_0ba62e
    lda #$ffff
    sta $f556

loc_0ba62e:
    sec
    rts
    .db $01,$1b,$16,$06,$06,$01,$15,$1f,$a6,$06,$01,$18,$0d,$56,$f5,$00
    .db $00,$14,$01,$15,$87,$a6,$10,$6c,$03,$7f,$00,$10,$92,$03,$00,$00
    .db $04,$06,$02,$19,$15,$6a,$a6,$15,$87,$a6,$19,$16,$47,$05,$06,$03
    .db $15,$9e,$a6,$17,$0d,$84,$1e,$00,$00,$14

loc_0ba66a:
    lda $f55e
    beq loc_0ba682
    sta $1e84
    sta $700388
    lda #$0000
    sta $70038a
    stz $f55e
    sec
    rts

loc_0ba682:
    ldx #$a659
    sec
    rts

loc_0ba687:
    phx
    lda $700378
    tax
    lda $0b85ca,x
    and #$00ff
    and #$00ff
    jsl QueueSound
    plx
    sec
    rts

loc_0ba69e:
    lda $1e84
    cmp #$006e
    bne loc_0ba6b9
    lda #$0002
    trb $da1d
    sep #$20
.a8
    lda #$16
    sta $001c51
    rep #$20
.a16
    jsr sub_0ba029

loc_0ba6b9:
    sec
    rts
    .db $0c,$10,$88,$03,$00,$00,$0d,$96,$f5,$ff,$ff,$06,$02,$17,$13,$02
    .db $1c,$16,$06,$10,$7a,$03,$ff,$ff,$1b,$08,$16,$08,$14,$08,$d4,$0d
    .db $96,$f5,$ff,$ff,$08,$15,$17,$13,$15,$06,$a7,$06,$02,$17,$14,$15
    .db $06,$a7,$06,$02,$02,$1b,$10,$78,$03,$00,$00,$10,$7a,$03,$ff,$ff
    .db $0d,$96,$f5,$ff,$ff,$16,$06,$08,$6d,$17,$13

loc_0ba706:
    lda $da0d
    cmp #$0062
    bne loc_0ba710
    sec
    rts

loc_0ba710:
    clc
    rts
    .db $01,$15,$2d,$a7,$1b,$10,$78,$03,$00,$00,$10,$7a,$03,$ff,$ff,$10
    .db $6c,$03,$7f,$00,$09,$0d,$74,$f5,$ff,$ff,$14

loc_0ba72d:
    jsr sub_0ba029
    sec
    rts
    .db $01,$06,$32,$1b,$16,$40,$04,$07,$01,$07,$02,$0b,$30,$80,$0d,$07
    .db $03,$0c,$0d,$5a,$f5,$02,$00,$07,$04,$07,$05,$0d,$5a,$f5,$01,$00
    .db $07,$06,$0d,$5a,$f5,$03,$00,$07,$07,$0d,$5a,$f5,$00,$00,$0b,$30
    .db $80,$0d,$07,$08,$07,$09,$0c,$0b,$20,$c0,$0d,$07,$0a,$07,$0b,$0c
    .db $0d,$96,$f5,$ff,$ff,$07,$0c,$06,$04,$16,$47,$05,$06,$03,$0d,$fd
    .db $d9,$16,$00,$12,$02,$04,$07,$01,$07,$02,$07,$03,$07,$04,$07,$05
    .db $07,$06,$07,$07,$07,$08,$07,$09,$07,$0a,$07,$0b,$07,$0c,$07,$0d
    .db $07,$0e,$07,$0f,$07,$10,$07,$11,$07,$12,$07,$13,$07,$14,$07,$15
    .db $07,$16,$07,$17,$07,$18,$07,$19,$07,$1a,$07,$1b,$07,$1c,$07,$1d
    .db $07,$1e,$07,$1f,$07,$20,$07,$21,$07,$22,$07,$23,$07,$24,$07,$25
    .db $07,$26,$07,$27,$07,$28,$07,$29,$07,$2a,$07,$2b,$07,$2c,$07,$2d
    .db $07,$2e,$07,$2f,$07,$30,$07,$31,$07,$62,$07,$63,$07,$64,$07,$65
    .db $07,$66,$07,$67,$07,$68,$07,$69,$07,$6a,$07,$6b,$07,$6c,$07,$6d
    .db $07,$6e,$07,$6f,$07,$70,$07,$71,$07,$72,$07,$73,$07,$74,$07,$75
    .db $07,$7c,$07,$7d,$07,$7e,$05,$06,$05,$03,$86,$a7

sub_0ba81e:
.a8
    phb
    phk
    plb
    php
    rep #$30
.a16
    lda #$0000
    sta $7ef532
    lda $1b68
    cmp #$0001
    bne loc_0ba83f
    stz $1fd2
    lda #$0001
    sta $1fd2
    jsr sub_0bc850

loc_0ba83f:
    plp
.a8
    plb
    rtl

sub_0ba842:
    phb
    phk
    plb
    php
    rep #$30
.a16
    sty $1e90
    jsr sub_0b8c16
    lda $1b68
    cmp #$0001
    bne loc_0ba85f
    jsr sub_0ba866
    jsr sub_0ba89b
    jsr sub_0ba8df

loc_0ba85f:
    ldy $1e90
    plp
.a8
    plb
    rtl

sub_0ba865:
    rtl

sub_0ba866:
.a16
    lda $7ef532
    cmp #$0001
    bne loc_0ba87e
    lda #$0003
    sta $1fd2
    lda #$00ff
    sta $7ef532
    bra loc_0ba89a

loc_0ba87e:
    lda $7ed7f4
    and #$00ff
    cmp $7ffa25
    beq loc_0ba89a
    sta $7ffa25
    cmp #$0000
    beq loc_0ba89a
    lda #$0002
    sta $1fd2

loc_0ba89a:
    rts

sub_0ba89b:
    lda #$1fd2
    sta $1fa8
    jsr sub_0bac23
    ldx $74a8
    tax
    and $55aa
    lda #$a8af
    rts

loc_0ba8af:
    jsr sub_0bac85
    .db $80,$e7,$c7,$02,$e7,$c7,$80,$be,$a8,$81,$cb,$a8

loc_0ba8be:
    jsr sub_0bc850
    jsr sub_0bc87e
    .db $00,$2e,$ce,$a8,$80,$70
    rts

loc_0ba8cb:
    jmp sub_0bc818

loc_0ba8ce:
    ldx $1e8e
    lda $20,x
    inc a
    inc a
    cmp #$0028
    bcs loc_0ba8dc
    sta $20,x

loc_0ba8dc:
    jmp sub_0bc406

sub_0ba8df:
    lda $1b9c
    bit #$2000
    bne loc_0ba8ef

loc_0ba8e7:
    lda #$0000
    sta $7ef554
    rts

loc_0ba8ef:
    lda $7ef53e
    beq loc_0ba8e7
    lda $7ef554
    inc a
    cmp #$000c
    bcc loc_0ba902
    lda #$0001

loc_0ba902:
    sta $7ef554
    asl a
    asl a
    tax
    lda $0ba917,x
    tay
    lda $0ba915,x
    jmp sub_0bc428
    .db $1d,$1e,$54,$a9,$1d,$1e,$45,$a9,$1d,$1e,$4a,$a9,$1d,$1e,$4f,$a9
    .db $28,$22,$54,$a9,$28,$22,$45,$a9,$28,$22,$4a,$a9,$28,$22,$4f,$a9
    .db $22,$2c,$54,$a9,$22,$2c,$45,$a9,$22,$2c,$4a,$a9,$22,$2c,$4f,$a9
    .db $41,$fc,$fc,$a8,$30,$01,$f8,$f8,$c8,$30,$01,$f8,$f8,$ca,$30,$00

loc_0ba955:
    jsr sub_0bac85
    .db $80,$67,$a9,$1a,$83,$a9,$82,$9c,$a9,$14,$d9,$a9,$81,$dc,$a9

loc_0ba967:
    ldx $1fa8
    lda $001c0a
    sta $0c,x
    lda $7eda65
    sta $0e,x
    lda $7eda5d
    sta $10,x
    lda #$0000
    sta $7ef53e

loc_0ba983:
    lda $1e90
    pha
    jsr sub_0ba9dd
    plx
    ldy $1fa8
    lda $0008,y
    cmp #$007f
    bcs loc_0ba99b
    asl a
    tay
    jsr sub_0baacd

loc_0ba99b:
    rts

loc_0ba99c:
    ldx $1fa8
    lda $08,x
    sec
    sbc #$001e
    bpl loc_0ba9ac
    ldy #$0000
    bra loc_0ba9ad

loc_0ba9ac:
    tay

loc_0ba9ad:
    dec $0e,x
    bpl loc_0ba9c5
    lda $0c,x
    beq loc_0ba9d2
    dec $0c,x
    lda #$0009
    sta $0e,x
    lda $10,x
    cmp #$03e7
    bcs loc_0ba9c5
    inc $10,x

loc_0ba9c5:
    dey
    bpl loc_0ba9ad
    lda #$005c
    jsl QueueSound
    jmp sub_0ba9dd

loc_0ba9d2:
    stz $0e,x
    dec $0a,x
    jmp sub_0ba9dd

loc_0ba9d9:
    jmp sub_0ba9dd

loc_0ba9dc:
    rts

sub_0ba9dd:
    ldy #$d815
    lda #$3040
    jsr sub_0bc428
    ldx $1fa8
    lda $0c,x
    jsr sub_0bc6e4
    ldy #$30a0
    lda $02
    jsr sub_0bc7a6
    ldy #$38ae
    lda #$307e
    jsr sub_0bc757
    ldy #$38ae
    lda #$307e
    jsr sub_0bc757
    ldy #$30b4
    ldx $1fa8
    lda $0e,x
    jsr sub_0bc7af
    ldy #$d85e
    lda #$4840
    jsr sub_0bc428
    ldx $1fa8
    lda $10,x
    jsr sub_0bc6e4
    lda $02
    ldy #$48a0
    jsr sub_0bc732
    rts

loc_0baa2d:
    jsr sub_0bac85
    .db $80,$39,$aa,$18,$49,$aa,$81,$70,$aa

loc_0baa39:
    jsr sub_0bc850
    jsr sub_0bc87e
    .db $00,$18,$46,$aa,$80,$30
    rts

loc_0baa46:
    jmp sub_0bc406

loc_0baa49:
    lda $0008,y
    lsr a
    lsr a
    lsr a
    bcc loc_0baa6f
    lda $7ed7f4
    and #$00ff
    cmp #$000a
    bcc loc_0baa60
    lda #$0009

loc_0baa60:
    clc
    adc #$0018
    ldy #$0000
    ldx $1f9c,y
    sta $14,x
    jsr sub_0bc818

loc_0baa6f:
    rts

loc_0baa70:
    stz $1fd2
    rts

loc_0baa74:
    jsr sub_0bac85
    .db $80,$e7,$c7,$08,$e7,$c7,$80,$84,$aa,$20,$bb,$aa,$00

loc_0baa84:
    jsr sub_0bc850
    jsr sub_0bc87e
    .db $00,$27,$b5,$aa,$80,$70
    jsr sub_0bc87e
    .db $01,$26,$b5,$aa,$80,$70
    jsr sub_0bc87e
    .db $02,$25,$b5,$aa,$80,$70
    jsr sub_0bc87e
    .db $03,$24,$b5,$aa,$80,$70
    jsr sub_0bc87e
    .db $04,$23,$b5,$aa,$80,$70
    rts

loc_0baab5:
    jsr sub_0bc7e8
    jmp sub_0bc406

loc_0baabb:
    jsr sub_0bc818
    rts

loc_0baabf:
    dey
    bpl loc_0baac9
    lda #$e0e0
    sta $7ee83f,x

loc_0baac9:
    inx
    inx
    inx
    inx

sub_0baacd:
    cpx $1e90
    bcc loc_0baabf
    rts

sub_0baad3:
    lda $0b0000,x
    and #$00ff
    cmp $1b68
    beq loc_0baae6
    inx
    inx
    inx
    dey
    bne sub_0baad3
    rts

loc_0baae6:
    jmp ($0001,x)
    .db $01,$47,$ab,$00,$3d,$ab,$02,$3e,$ab,$03,$3c,$ab

sub_0baaf5:
.a8
    phb
    pea $7e7e
    plb
    plb
    php
    rep #$30
.a16
    jsr sub_0ba029
    stz $1e84
    stz $1e8a
    lda #$0000
    sta $001e68
    ldx #$0004

loc_0bab11:
    sta $7ffadf,x
    sta $7ffae5,x
    sta $7ffaeb,x
    sta $7ffad7,x
    dex
    dex
    bpl loc_0bab11
    lda #$0000
    sta $7ffad3
    sta $7ffad5
    ldx #$aae9
    ldy #$0004
    jsr sub_0baad3
    plp
.a8
    plb
    rtl

loc_0bab3c:
.a16
    rts

loc_0bab3d:
    rts

loc_0bab3e:
    lda #$0005
    sta $001e68
    rts
    .db $60

loc_0bab47:
    lda $001bb5
    cmp #$0007
    bcs loc_0bab5c
    tax
    lda $0bab5d,x
    and #$00ff
    sta $001e68

loc_0bab5c:
    rts
    .db $00,$00,$00,$00,$00,$01,$00,$a9,$00,$00,$8f,$84,$1e,$00,$60,$6b

sub_0bab6d:
    lda $fad3
    asl a
    tax
    jsr (tbl_0bab76,x)
    rtl

tbl_0bab76:
    .db $7e,$ab,$a2,$ab,$ba,$ab,$d5,$ab

loc_0bab7e:
    lda #$0020
    sta $fae1
    lda #$0008
    sta $fae7
    lda #$000f
    sta $faed
    lda #$000f
    sta $faeb
    lda #$00fc
    sta $fae5
    stz $fadf
    jmp loc_0babe3

loc_0baba2:
    lda $fad5
    bit #$0080
    beq loc_0babad
    eor #$007f

loc_0babad:
    and #$007f
    lsr a
    sta $fadf
    lda #$0400
    jmp loc_0babdb

loc_0babba:
    lda $fad5
    bit #$0080
    beq loc_0babc5
    eor #$007f

loc_0babc5:
    and #$007f
    clc
    adc #$0020
    sta $fae1
    lda #$0100
    jmp loc_0babdb

loc_0babd5:
    stz $fad3
    jmp loc_0bab7e

loc_0babdb:
    inc $fad5
    cmp $fad5
    bcs loc_0babe9

loc_0babe3:
    stz $fad5
    inc $fad3

loc_0babe9:
    rts
    .db $8d,$d3,$fa,$9c,$d5,$fa,$60,$ee,$d5,$fa,$60

sub_0babf5:
.a8
    phb
    phk
    plb
    php
    rep #$30
.a16
    lda #$0000
    sta $001e68
    ldx #$0000
    lda #$0000

loc_0bac08:
    sta $7ff712,x
    sta $7ff7d2,x
    sta $7ff892,x
    sta $7ff952,x
    inx
    inx
    cpx #$00c0
    bne loc_0bac08
    plp
.a8
    plb
    rtl
    .db $6b

sub_0bac23:
.a16
    ldx $1fa8
    lda $00,x
    beq loc_0bac44
    bmi loc_0bac39
    sta $02,x
    ora #$8000
    sta $00,x
    stz $04,x
    stz $08,x
    stz $06,x

loc_0bac39:
    sec
    pla
    adc $02,x
    adc $02,x
    txy
    tax
    jmp ($0000,x)

loc_0bac44:
    pla
    rts
    .db $68,$bb,$38,$75,$04,$75,$04,$aa,$7c,$00,$00

loc_0bac51:
    ldx $1fa8
    ldy $06,x
    beq loc_0bac61
    dec $06,x
    inc $08,x
    bne loc_0bac60
    dec $08,x

loc_0bac60:
    rts

loc_0bac61:
    ldx $1fa8
    sta $06,x
    stz $08,x
    inc $04,x
    rts
    .db $ae,$a8,$1f,$74,$08,$74,$06,$60,$8e,$a8,$1f,$80,$06

loc_0bac78:
    ldx $1fa8
    lda #$0000
    sta $00,x
    stz $02,x
    stz $04,x
    rts

sub_0bac85:
    ldx $1fa8
    txy
    stz $0a,x
    pla
    sec
    adc $04,x
    adc $04,x
    adc $04,x
    tax
    lda $0b0000,x
    and #$00ff
    beq loc_0bacc2
    pha
    lda $0b0003,x
    and #$007f
    pha
    jsr ($0001,x)
    ply
    pla
    bit #$0080
    bne loc_0bacb4
    tya
    jmp loc_0bac51

loc_0bacb4:
    and #$000f
    asl a
    tax
    jmp (tbl_0bacbc,x)

tbl_0bacbc:
    .db $c5,$ac,$c9,$ac,$d3,$ac

loc_0bacc2:
    jmp loc_0bac78

loc_0bacc5:
    tya
    jmp loc_0bac61

loc_0bacc9:
    ldx $1fa8
    inc $08,x
    bne loc_0bacd2
    dec $08,x

loc_0bacd2:
    rts

loc_0bacd3:
    ldx $1fa8
    inc $08,x
    bne loc_0bacdc
    dec $08,x

loc_0bacdc:
    lda $0a,x
    beq loc_0bace4
    tya
    jmp loc_0bac61

loc_0bace4:
    rts

sub_0bace5:
.a8
    phb
    phk
    plb
    php
    rep #$30
.a16
    jsl sub_0beff9
    jsl sub_0befd1
    lda #$0000
    sta $7ef59c
    stz $1fd8
    stz $1fe2
    sep #$20
.a8
    lda #$13
    sta $001c51
    rep #$20
.a16
    jsr sub_0bae46
    jsr sub_0bae57
    jsr sub_0bae6b
    jsr sub_0bb985
    .db $00,$50,$00,$04,$1b,$00
    lda #$fa29
    sta $7ffa27
    ldy #$b63d
    jsr sub_0bb34b
    jsr sub_0bb9a5
    lda #$fa29
    sta $7ffa27
    jsr sub_0bbd7a
    lda #$0000
    sta $7ef582
    lda #$ffff
    sta $7ef59a
    lda #$0001
    sta $1faa
    lda $1e14
    and #$00ff
    sta $1e6e
    jsr sub_0bbeac
    plp
.a8
    plb
    rtl

sub_0bad59:
    phb
    phk
    plb
    php
    rep #$30
.a16
    sty $1e90
    jsr sub_0baea0
    jsr sub_0bae31
    ldy $1e90
    cpy #$0200
    bcc loc_0bad74
    jsl sub_008006

loc_0bad74:
    plp
.a8
    plb
    rtl

sub_0bad77:
    phb
    phk
    plb
    php
    rep #$30
.a16
    jsr sub_0bad99
    lda $1e74
    and #$0003
    asl a
    tax
    jsr (tbl_0bad91,x)
    inc $1e74
    plp
.a8
    plb
    rtl

tbl_0bad91:
    .db $bf,$ad,$d2,$ad,$c8,$ad,$d2,$ad

sub_0bad99:
.a16
    sep #$20
.a8
    lda $1e74
    lsr a
    lsr a
    lsr a
    and #$01
    asl a
    tax
    lda #$01
    sta CGADD
    lda $0badbb,x
    sta CGDATA
    lda $0badbc,x
    sta CGDATA
    rep #$20
.a16
    rts
    .db $42,$08,$ff,$7f

loc_0badbf:
    lda $1e6e
    ldy #$1400
    jmp loc_0bade9

loc_0badc8:
    lda $001e70
    ldy #$1800
    jmp loc_0bade9

loc_0badd2:
    jsr sub_0bb9a5
    lda #$fa29
    sta $7ffa27
    rts
    .db $00,$00,$00,$08,$00,$10,$00,$18,$00,$40,$00,$48

loc_0bade9:
    and #$00ff
    asl a
    tax
    lda $0baddd,x
    tax
    sep #$20
.a8
    phb
    lda #$00
    pha
    plb
    lda #$80
    sta VMAIN
    lda #$18
    sta BBAD0
    rep #$20
.a16
    tya
    clc
    adc #$6000
    sta VMADDL
    txa
    clc
    adc #$3b50
    sta A1TL0
    sep #$20
.a8
    lda #$70
    sta A1B0
    lda #$01
    sta DMAP0
    ldx #$0800
    stx DASL0
    lda #$01
    sta MDMAEN
    plb
    rep #$20
.a16
    rts

sub_0bae31:
    inc $1e5e
    lda $7ffad1
    inc a
    cmp #$0006
    bcc loc_0bae41
    lda #$0000

loc_0bae41:
    sta $7ffad1
    rts

sub_0bae46:
    sep #$30
.a8
.i8
    ldx #$05

loc_0bae4a:
    stz BG1HOFS,x
    stz BG1HOFS,x
    dex
    dex
    bpl loc_0bae4a
    rep #$30
.a16
.i16
    rts

sub_0bae57:
    lda #$0000
    sta $7ffac9
    sta $7ffacd
    sta $7ffacb
    sta $7ffacf
    rts

sub_0bae6b:
    clc
    lda $7ffac9
    adc $7ffacd
    sta $7ffac9
    clc
    lda $7ffacb
    adc $7ffacf
    sta $7ffacb
    sep #$20
.a8
    lda $7ffaca
    sta $7eefb0
    lda $7ffacc
    sta $7eefb4
    rep #$20
.a16
    rts

sub_0bae9a:
    jsr sub_0bb239
    jmp sub_0bb171

sub_0baea0:
    jsr sub_0baebe
    lda $1fd8
    cmp #$0006
    bcs loc_0baeb6
    sta $1e6e
    sep #$20
.a8
    sta $7ed9aa
    rep #$20

loc_0baeb6:
.a16
    lda $1fe2
    sta $001e70
    rts

sub_0baebe:
    ldx #$1faa
    stx $1fa8
    jsr sub_0bac23
    cmp $1dae,y
    lda $9fb9ea
    lda $3caffa
    bcs $ae71
    bcs $aecb
    bcs $aeb2
    .db $ae,$60

loc_0baeda:
    jsr sub_0bb22a
    jsr sub_0bb242
    jsr sub_0baeea
    jsr sub_0bbeec
    jsr sub_0bc818
    rts

sub_0baeea:
    jsr sub_0bac85
    .db $80,$f3,$ae,$82,$ff,$ae

loc_0baef3:
    ldx #$1fd2
    lda #$0002
    sta $0000,x
    stz $0002,x

loc_0baeff:
    ldx #$1fd2
    ldy #$0000
    jsr sub_0bbb78
    ldx $1e8e
    lda $0000,x
    cmp #$0000
    bne loc_0baf1c
    ldx $1fa8
    lda #$0003
    sta $1faa

loc_0baf1c:
    rts

loc_0baf1d:
    jsr sub_0bac85
    .db $80,$e7,$c7,$19,$e7,$c7,$80,$35,$af,$0e,$4e,$af,$80,$52,$af,$0a
    .db $4e,$af,$81,$88,$af

loc_0baf35:
    jsr sub_0bc850
    jsr sub_0bc87e
    .db $00,$15,$a7,$b3,$30,$37
    jsr sub_0bc87e
    .db $01,$13,$a7,$b3,$c0,$2c
    jsr sub_0bc818
    rts

loc_0baf4e:
    jsr sub_0bc818
    rts

loc_0baf52:
    lda #$0001
    sta $1fbe
    lda #$0001
    sta $1e74
    ldy #$b44b
    jsr sub_0bb360
    ldy #$0000
    ldx $1f9c,y
    lda #$0000
    sta $14,x
    lda #$be61
    sta $04,x
    ldy #$0002
    ldx $1f9c,y
    lda #$000c
    sta $14,x
    lda #$bde2
    sta $04,x
    jsr sub_0bc818
    rts

loc_0baf88:
    lda #$0003
    sta $1faa
    jsr sub_0bc818
    rts

sub_0baf92:
    ldy #$0000
    sty $1e6a
    ldx #$1fd2
    stx $1e8e
    rts

loc_0baf9f:
    jsr sub_0bbeec
    jsr sub_0baf92
    jsr sub_0bb1a1
    jsr sub_0bb22a
    jsr sub_0bb242
    jsr sub_0bac85
    .db $80,$b7,$af,$81,$bd,$af

loc_0bafb7:
    ldx $1e8e
    stz $0002,x

loc_0bafbd:
    jsr sub_0bbc60
    lda $1e72
    inc a
    cmp #$0005
    bcc loc_0bafcc
    lda #$0000

loc_0bafcc:
    sta $1e72
    lda $1fd8
    cmp #$0006
    bcs loc_0baff6
    lda $1296
    and #$9000
    beq loc_0baff6
    lda #$0004
    jsl QueueSound
    lda #$0004
    sta $1faa
    sep #$20
.a8
    lda #$13
    sta $001c51
    rep #$20

loc_0baff6:
.a16
    jsr sub_0bc818
    rts

loc_0baffa:
    jsr sub_0bbeec
    jsr sub_0bb242
    jsr sub_0bac85
    .db $80,$0c,$b0,$1e,$15,$b0,$81,$1f,$b0

loc_0bb00c:
    lda #$0005
    sta $001e70
    bra loc_0bb036

loc_0bb015:
    lda $1296
    and #$9000
    beq loc_0bb036
    bne loc_0bb029

loc_0bb01f:
    tyx
    lda $08,x
    lsr a
    lsr a
    cmp $1e72
    bne loc_0bb036

loc_0bb029:
    lda #$0004
    jsl QueueSound
    lda #$0005
    sta $1faa

loc_0bb036:
    jsr sub_0bb158
    jmp loc_0bb145

loc_0bb03c:
    jsr sub_0bbeec
    jsr sub_0bb171
    jsr sub_0bac85
    .db $80,$51,$b0,$0e,$63,$b0,$80,$66,$b0,$81,$74,$b0

loc_0bb051:
    jsr sub_0bc87e
    .db $02,$15,$a7,$b3,$30,$b7
    jsr sub_0bc87e
    .db $03,$13,$a7,$b3,$c0,$ac

loc_0bb063:
    jmp loc_0bb145

loc_0bb066:
    lda #$0001
    sta $1e74
    ldy #$b44b
    jsr sub_0bb358
    bra loc_0bb063

loc_0bb074:
    ldy #$0004
    ldx $1f9c,y
    lda #$0000
    sta $14,x
    lda #$be56
    sta $04,x
    ldy #$0006
    ldx $1f9c,y
    lda #$000c
    sta $14,x
    lda #$bddd
    sta $04,x
    lda #$0006
    sta $1faa
    jmp loc_0bb145

loc_0bb09d:
    jsr sub_0bbeec
    jsr sub_0bb33f
    jsr sub_0bb18f
    jsr sub_0bac85
    .db $80,$b5,$b0,$82,$b5,$b0,$04,$ec,$b0,$81,$e9,$b0

loc_0bb0b5:
    jsr sub_0bb1f2
    jsr sub_0bb171
    lda $1296
    and #$4040
    beq loc_0bb0d2
    lda #$0008
    jsl QueueSound
    lda #$0007
    sta $1faa
    bra loc_0bb0e6

loc_0bb0d2:
    lda $1296
    and #$9000
    beq loc_0bb0e6
    lda #$0048
    jsl QueueSound
    ldx $1fa8
    dec $0a,x

loc_0bb0e6:
    jmp loc_0bb145

loc_0bb0e9:
    inc $1be0

loc_0bb0ec:
    jsr sub_0bb1f2
    jsr sub_0bb171
    jmp loc_0bb145

loc_0bb0f5:
    jsr sub_0bbeec
    jsr sub_0bb239
    jsr sub_0bac85
    .db $80,$07,$b1,$0e,$39,$b1,$81,$3c,$b1

loc_0bb107:
    lda #$0001
    sta $1e74
    ldy #$b623
    jsr sub_0bb358
    ldy #$b4ef
    jsr sub_0bb358
    ldy #$0004
    ldx $1f9c,y
    lda #$0016
    sta $14,x
    lda #$b3a7
    sta $04,x
    ldy #$0006
    ldx $1f9c,y
    lda #$0014
    sta $14,x
    lda #$b3a7
    sta $04,x

loc_0bb139:
    jmp loc_0bb145

loc_0bb13c:
    lda #$0003
    sta $1faa
    jmp loc_0bb145

loc_0bb145:
    ldx #$1fd2
    lda $0008,x
    ora #$0002
    sta $0008,x
    jsr sub_0bb334
    jsr sub_0bc818
    rts

sub_0bb158:
    ldx $1fa8
    lda $08,x
    and #$0003
    bne sub_0bb171

loc_0bb162:
    lda $1fe2
    inc a
    cmp #$0006
    bcc loc_0bb16e
    lda #$0000

loc_0bb16e:
    sta $1fe2

sub_0bb171:
    jsr sub_0bb239
    lda $1fe2
    cmp $1fd8
    beq loc_0bb162
    tax
    lda $b28d,x
    and #$00ff
    ora #$8200
    ldx #$0000
    ldy #$b3af
    jmp loc_0bb3da

sub_0bb18f:
    lda $7ffad1
    and #$0006
    xba
    tax
    lda #$64b8
    ldy #$b3cb
    jmp loc_0bb3da

sub_0bb1a1:
    lda $1fd8
    pha
    ldy $1fd8
    lda $1296
    clc
    and #$2300
    beq loc_0bb1cb
    and #$2100
    beq loc_0bb1c1
    iny
    cpy #$0007
    bcc loc_0bb1c7
    ldy #$0000
    bra loc_0bb1c7

loc_0bb1c1:
    dey
    bpl loc_0bb1c7
    ldy #$0006

loc_0bb1c7:
    sty $1fd8
    sec

loc_0bb1cb:
    bcc loc_0bb1e2
    ldx $1e8e
    stz $0002,x
    ldx $1fd8
    cpx #$0006
    bcs loc_0bb1e2
    lda #$0003
    jsl QueueSound

loc_0bb1e2:
    pla
    ldx $1fd8
    cpx #$0006
    bcc loc_0bb1f1
    lda #$0008
    sta $1faa

loc_0bb1f1:
    rts

sub_0bb1f2:
    ldy $1fe2
    lda $1296
    clc
    and #$2300
    beq loc_0bb218
    and #$2100
    beq loc_0bb20e
    iny
    cpy #$0006
    bcc loc_0bb214
    ldy #$0000
    bra loc_0bb214

loc_0bb20e:
    dey
    bpl loc_0bb214
    ldy #$0005

loc_0bb214:
    sty $1fe2
    sec

loc_0bb218:
    lda $1fe2
    eor $1fd8
    beq sub_0bb1f2
    bcc loc_0bb229
    lda #$0003
    jsl QueueSound

loc_0bb229:
    rts

sub_0bb22a:
    ldy #$0000
    ldx $1fd8
    lda $b28d,x
    and #$00ff
    jmp loc_0bbce9

sub_0bb239:
    ldy $1fd8
    ldx #$0000
    jmp loc_0bbd2a

sub_0bb242:
    ldx #$3600
    ldy #$b24e
    lda #$b048
    jmp loc_0bb3da
    .db $01,$0e,$22,$31,$23,$31,$24,$31,$25,$31,$26,$31,$27,$31,$28,$31
    .db $29,$31,$2a,$31,$2b,$31,$2c,$31,$2d,$31,$2e,$31,$2f,$31,$02,$08
    .db $01,$0e,$32,$31,$33,$31,$34,$31,$35,$31,$36,$31,$37,$31,$38,$31
    .db $39,$31,$3a,$31,$3b,$31,$3c,$31,$3d,$31,$3e,$31,$3f,$31,$00,$48
    .db $58,$68,$78,$88,$98,$a8

loc_0bb294:
    ldx $1e8e
    inc $10,x
    lda $10,x
    cmp #$0050
    bne loc_0bb2bf
    lda #$001a
    jsl QueueSound
    stz $10,x
    lda #$b2ae
    sta $04,x

loc_0bb2ae:
    ldx $1e8e
    lda $10,x
    clc
    adc #$ff80
    sta $10,x
    jsr sub_0bb325
    jsr sub_0bc7e8

loc_0bb2bf:
    jmp sub_0bc406

loc_0bb2c2:
    jsr sub_0bb2dc
    sta $7ffacd
    jsr sub_0bb2eb
    jmp sub_0bc406

loc_0bb2cf:
    jsr sub_0bb2dc
    sta $7ffacf
    jsr sub_0bb2eb
    jmp sub_0bc406

sub_0bb2dc:
    ldx $1e8e
    clc
    lda $10,x
    adc #$0380
    eor #$ffff
    inc a
    asl a
    rts

sub_0bb2eb:
    ldy $1e8e
    jsr sub_0bb308
    tyx
    lda $10,x
    bmi loc_0bb2ff
    tay
    lda #$b294
    sta $04,x
    stz $10,x
    tya

loc_0bb2ff:
    clc
    adc #$000e
    sta $10,x
    jmp sub_0bc7e8

sub_0bb308:
    rts
    .db $ad,$5e,$1e,$0a,$0a,$0a,$29,$ff,$00,$aa,$bf,$92,$3d,$7f,$29,$ff
    .db $00,$49,$80,$ff,$18,$69,$80,$00,$99,$12,$00,$60

sub_0bb325:
    rts
    .db $74,$12,$ad,$5e,$1e,$4a,$90,$03,$f6,$0e,$60,$d6,$0e,$60

sub_0bb334:
    lda $1e6e
    asl a
    tax
    ldy $b533,x
    jmp sub_0bb360

sub_0bb33f:
    lda $001e70
    asl a
    tax
    ldy $b533,x
    jmp sub_0bb358

sub_0bb34b:
    phy
    jsr sub_0bb360
    ply
    jmp sub_0bb358

loc_0bb353:
    ldx #$0200
    bra loc_0bb366

sub_0bb358:
    ldx #$0200
    lda #$0064
    bra loc_0bb366

sub_0bb360:
    lda #$0064

loc_0bb363:
    ldx #$0000

loc_0bb366:
    sta $02
    stx $08
    lda $7ffa27
    tax

loc_0bb36f:
    lda $0000,y
    beq loc_0bb39d
    cmp $02
    bcc loc_0bb37a
    lda $02

loc_0bb37a:
    sta $7f0000,x
    lda $0002,y
    sta $7f0002,x
    lda $0004,y
    clc
    adc $08
    sta $7f0004,x
    inx
    inx
    inx
    inx
    inx
    inx
    iny
    iny
    iny
    iny
    iny
    iny
    bra loc_0bb36f

loc_0bb39d:
    sta $7f0000,x
    txa
    sta $7ffa27
    rts

loc_0bb3a7:
    ldx $1e8e
    stz $1c,x
    jmp sub_0bc406
    .db $01,$02,$1b,$30,$1c,$30,$00,$01,$02,$90,$30,$91,$30,$00,$01,$02
    .db $92,$30,$93,$30,$00,$01,$02,$94,$30,$95,$30,$00,$01,$02,$94,$30
    .db $95,$30,$02,$1e,$01,$02,$94,$30,$95,$30,$00

loc_0bb3da:
    stx $97
    sta $02

loc_0bb3de:
    lda $0000,y
    iny
    and #$00ff
    asl a
    tax
    jsr (tbl_0bb3ec,x)
    bra loc_0bb3de

tbl_0bb3ec:
    .db $00,$b4,$02,$b4,$f2,$b3

loc_0bb3f2:
    lda $0000,y
    and #$00ff
    xba
    iny
    clc
    adc $02
    sta $02
    rts

loc_0bb400:
    pla
    rts

loc_0bb402:
    lda $0000,y
    and #$00ff
    iny
    sta $08
    ldx $1e90
    lda $02

loc_0bb410:
    sta $7ee83f,x
    clc
    adc #$0008
    inx
    inx
    pha
    lda $0000,y
    ora $97
    sta $7ee83f,x
    pla
    iny
    iny
    inx
    inx
    dec $08
    bne loc_0bb410
    stx $1e90
    rts
    .incbin "data/05b431-05b985.bin"

sub_0bb985:
    plx
    txa
    clc
    adc #$0006
    pha
    lda #$0080
    sta VMAIN
    lda $0001,x
    sta VMADDL
    ldy $0003,x
    lda $0005,x

loc_0bb99e:
    sta VMDATAL
    dey
    bne loc_0bb99e
    rts

sub_0bb9a5:
    phb
    phk
    plb
    ldx #$fa29
    lda #$0080
    sta VMAIN
    lda $7f0000,x
    beq loc_0bb9e8
    tay
    lda #$0000
    sta $7f0000,x
    tya

loc_0bb9c0:
    pha
    inx
    inx
    lda $7f0000,x
    tay
    inx
    inx
    lda $7f0000,x
    sta VMADDL
    inx
    inx
    pla
    phx
    tax

loc_0bb9d6:
    lda $0000,y
    sta VMDATAL
    iny
    iny
    dex
    bne loc_0bb9d6
    plx
    lda $7f0000,x
    bne loc_0bb9c0

loc_0bb9e8:
    plb
    rts

loc_0bb9ea:
    jsr sub_0bae9a
    jsr sub_0bac85
    .db $80,$0e,$ba,$32,$0e,$ba,$80,$15,$ba,$66,$0e,$ba,$80,$60,$ba,$10
    .db $11,$ba,$80,$a3,$ba,$1e,$0a,$bb,$80,$11,$bb,$81,$0a,$bb

loc_0bba0e:
    jsr sub_0bbeec

loc_0bba11:
    jsr sub_0bc818
    rts

loc_0bba15:
    jsr sub_0bbeec
    ldy #$0000
    ldx $1f9c,y
    lda #$0001
    sta $14,x
    lda #$be40
    sta $04,x
    ldy #$0004
    ldx $1f9c,y
    lda #$0001
    sta $14,x
    lda #$be4b
    sta $04,x
    ldy #$0000
    ldx $1f9c,y
    ldy $1e6e
    lda $b437,y
    and #$00ff
    sta $14,x
    ldy #$0004
    ldx $1f9c,y
    lda $001e70
    tay
    lda $b437,y
    and #$00ff
    sta $14,x
    jsr sub_0bc818
    rts

loc_0bba60:
    ldy #$b4ef
    jsr sub_0bb360
    ldy #$b4ef
    jsr sub_0bb358
    ldy #$b623
    jsr sub_0bb360
    ldy #$b623
    jsr sub_0bb358
    jsr sub_0bc850
    jsr sub_0bc87e
    .db $00,$16,$a7,$b3,$30,$37
    jsr sub_0bc87e
    .db $01,$14,$a7,$b3,$c0,$33
    jsr sub_0bc87e
    .db $02,$16,$a7,$b3,$30,$b7
    jsr sub_0bc87e
    .db $03,$14,$a7,$b3,$c0,$b3
    jsr sub_0bc818
    rts

loc_0bbaa3:
    jsr sub_0bc850
    jsr sub_0bc87e
    .db $00,$12,$c2,$b2,$28,$37
    lda #$0128
    sta $0a,x
    lda #$0037
    sta $0e,x
    lda #$fc80
    sta $10,x
    lda #$0000
    sta $12,x
    jsr sub_0bc87e
    .db $01,$0c,$c2,$b2,$00,$37
    lda #$0100
    sta $0a,x
    lda #$0037
    sta $0e,x
    lda #$fc80
    sta $10,x
    lda #$0000
    sta $12,x
    ldy #$0002
    ldx $1f9c,y
    ldy $1e6e
    lda $b43d,y
    and #$00ff
    sta $14,x
    ldy #$0000
    ldx $1f9c,y
    ldy $1e6e
    lda $b444,y
    and #$00ff
    clc
    adc $0a,x
    sta $0a,x
    lda #$0000
    sta $1c,x

loc_0bbb0a:
    jsr sub_0bae6b
    jsr sub_0bc818
    rts

loc_0bbb11:
    jsr sub_0bc87e
    .db $02,$12,$cf,$b2,$28,$b7
    lda #$0128
    sta $0a,x
    lda #$00b7
    sta $0e,x
    lda #$fc80
    sta $10,x
    lda #$0000
    sta $12,x
    jsr sub_0bc87e
    .db $03,$0c,$cf,$b2,$00,$b7
    lda #$0100
    sta $0a,x
    lda #$00b7
    sta $0e,x
    lda #$fc80
    sta $10,x
    lda #$0000
    sta $12,x
    ldy #$0006
    ldx $1f9c,y
    lda $001e70
    tay
    lda $b43d,y
    and #$00ff
    sta $14,x
    ldy #$0004
    ldx $1f9c,y
    lda $001e70
    tay
    lda $b444,y
    and #$00ff
    clc
    adc $0a,x
    sta $0a,x
    stz $1c,x
    bra loc_0bbb0a

sub_0bbb78:
    sty $1e6a
    stx $1e8e
    lda $00,x
    asl a
    txy
    tax
    jmp (tbl_0bbb86,x)

tbl_0bbb86:
    .db $0f,$bc,$94,$bb,$9f,$bb,$cb,$bb,$ff,$bb,$0f,$bc,$0f,$bc

loc_0bbb94:
    ldx $1e8e
    stz $02,x
    lda #$0002
    sta $00,x
    rts

loc_0bbb9f:
    tyx
    lda $02,x
    beq loc_0bbbb4
    inc $02,x
    cmp #$001e
    bcc loc_0bbbb0
    lda #$0003
    sta $00,x

loc_0bbbb0:
    jsr sub_0bbc46
    rts

loc_0bbbb4:
    sep #$20
.a8
    lda #$17
    sta $001c51
    rep #$20
.a16
    inc $02,x
    jsr sub_0bbcbd
    lda #$0006
    jsl QueueSound
    rts

loc_0bbbcb:
    jsr sub_0bbc11
    jsr sub_0bbc46
    ldx $1e8e
    ldy $04,x
    lda $1296,y
    and #$0300
    beq loc_0bbbfe
    ldx $1e8e
    and #$0200
    beq loc_0bbbed
    lda #$0005
    sta $06,x
    bra loc_0bbbf2

loc_0bbbed:
    lda #$0000
    sta $06,x

loc_0bbbf2:
    lda #$0004
    sta $00,x
    lda #$0007
    jsl QueueSound

loc_0bbbfe:
    rts

loc_0bbbff:
    tyx
    dec $02,x
    bne loc_0bbc0b
    lda #$0000
    sta $00,x
    stz $02,x

loc_0bbc0b:
    jsr sub_0bbc46
    rts

loc_0bbc0f:
    rts
    .db $60

sub_0bbc11:
    ldx $1e8e
    ldy $1e6a
    lda $1296,y
    and #$2c00
    beq loc_0bbc43
    and #$2400
    beq loc_0bbc2f
    sep #$20
.a8
    lda $09,x
    inc a
    and #$03
    sta $09,x
    bra loc_0bbc3a

loc_0bbc2f:
.a16
    sep #$20
.a8
    lda $09,x
    dec a
    and #$03
    sta $09,x
    bra loc_0bbc3a

loc_0bbc3a:
    rep #$20
.a16
    lda #$0003
    jsl QueueSound

loc_0bbc43:
    rep #$20
    rts

sub_0bbc46:
    ldx $1e8e
    lda $09,x
    and #$0003
    asl a
    tax
    lda $0bbc58,x
    tay
    jmp loc_0bbc8b
    .db $49,$b6,$3f,$b7,$01,$b8,$c3,$b8

sub_0bbc60:
    ldx $1e8e
    lda $02,x
    cmp #$0028
    bcs loc_0bbc83
    inc $02,x
    sec
    sbc #$0014
    bmi loc_0bbc80
    lsr a
    pha
    lda $06,x
    asl a
    tax
    ldy $b533,x
    pla
    jsr sub_0bbcb3
    rts

loc_0bbc80:
    jmp sub_0bbcbd

loc_0bbc83:
    lda $08,x
    ora #$0002
    sta $08,x
    rts

loc_0bbc8b:
    ldx $1e6a
    jmp (tbl_0bbc91,x)

tbl_0bbc91:
    .db $95,$bc,$a4,$bc

loc_0bbc95:
    lda $1e74
    and #$0003
    cmp #$0001
    bne loc_0bbca3
    jsr sub_0bb360

loc_0bbca3:
    rts

loc_0bbca4:
    lda $1e74
    and #$0003
    cmp #$0003
    bne loc_0bbcb2
    jsr sub_0bb358

loc_0bbcb2:
    rts

sub_0bbcb3:
    ldx $1e6a
    jmp (tbl_0bbcb9,x)

tbl_0bbcb9:
    .db $63,$b3,$53,$b3

sub_0bbcbd:
    lda $08,x
    and #$fffd
    sta $08,x
    ldy #$b623
    lda #$000a
    jmp sub_0bbcb3

loc_0bbccd:
    lda $08,x
    ora #$0002
    sta $08,x
    lda $06,x
    asl a
    tax
    ldy $b533,x
    lda #$000a
    jmp sub_0bbcb3
    .db $ae,$8e,$1e,$b4,$04,$a9,$b8,$00

loc_0bbce9:
    ora $bd47,y
    pha
    lda $7ffad1
    and #$0006
    xba
    tax
    ldy #$b3c4
    pla
    jmp loc_0bb3da
    .db $ae,$8e,$1e,$b4,$04,$b9,$97,$12,$b4,$06,$da,$20,$b3,$bd,$fa,$94
    .db $06,$90,$11,$b5,$08,$09,$10,$00,$95,$08,$c0,$06,$00,$d0,$05,$a9
    .db $01,$00,$95,$00,$60,$ae,$8e,$1e,$b4,$06,$b5,$04,$aa

loc_0bbd2a:
    lda $0bbd47,x
    sta $02
    lda $bd4b,x
    tax
    lda $b28d,y
    and #$00ff
    ora $02
    txy
    ldx #$0000
    jmp loc_0bb3da
    .db $dc,$1f,$d2,$1f,$00,$64,$00,$82,$b6,$b3,$bd,$b3

sub_0bbd4f:
    sep #$20
.a8
    lda #$01
    trb $1dd0
    lda $1fdb
    and #$02
    beq loc_0bbd62
    lda #$01
    tsb $1dd0

loc_0bbd62:
    lda #$80
    trb $1dcf
    lda $1fdb
    and #$01
    beq loc_0bbd73
    lda #$80
    tsb $1dcf

loc_0bbd73:
    rep #$20
.a16
    jsl sub_0bf003
    rts

sub_0bbd7a:
    ldx #$1fd2
    stz $00,x
    stz $02,x
    stz $04,x
    stz $06,x
    ldy #$0000
    lda $1dd0
    and #$0001
    beq loc_0bbd92
    iny
    iny

loc_0bbd92:
    lda #$0080
    bit $1dcf
    beq loc_0bbd9b
    iny

loc_0bbd9b:
    tya
    xba
    sta $08,x
    ldx #$1fdc
    stz $00,x
    stz $02,x
    stz $08,x
    lda #$0001
    sta $06,x
    lda #$0002
    sta $04,x
    rts
    .db $e2,$30,$29,$23,$f0,$1d,$29,$21,$f0,$09,$c8,$c0,$07,$90,$09,$a0
    .db $00,$80,$05,$88,$10,$02,$a0,$06,$c2,$30,$5a,$ae,$8e,$1e,$74,$02
    .db $7a,$38,$60,$c2,$31,$60,$20,$18,$c8,$60

loc_0bbddd:
    ldy $1fe2
    bra loc_0bbde5

loc_0bbde2:
    ldy $1fd8

loc_0bbde5:
    cpy #$0006
    bcs loc_0bbe25
    phy
    lda $f080,y
    and #$00ff
    and $7ef52c
    beq loc_0bbdff
    tya
    asl a
    tay
    lda $be34,y
    bra loc_0bbe05

loc_0bbdff:
    tya
    asl a
    tay
    lda $be28,y

loc_0bbe05:
    tay
    ldx $1e8e
    lda $0e,x
    clc
    adc #$0023
    xba
    ora $0a,x
    sec
    sbc #$0018
    jsr sub_0bc428
    ply
    ldx $1e8e
    lda $b43d,y
    and #$00ff
    sta $14,x

loc_0bbe25:
    jmp sub_0bc406
    .db $9c,$de,$9c,$de,$c8,$de,$c8,$de,$f4,$de,$f4,$de,$94,$de,$94,$de
    .db $c0,$de,$c0,$de,$ec,$de,$ec,$de

loc_0bbe40:
    ldx $1e8e
    lda #$0f40
    sta $1c,x
    jmp sub_0bc406

loc_0bbe4b:
    ldx $1e8e
    lda #$0b80
    sta $1c,x
    jmp sub_0bc406

loc_0bbe56:
    lda $1fe2
    ldx #$0b80
    ldy #$0002
    bra loc_0bbe6a

loc_0bbe61:
    lda $1fd8
    ldx #$0f40
    ldy #$0000

loc_0bbe6a:
    sta $02
    stx $08
    sty $97
    ldx $1e8e
    ldy $02
    cpy #$0006
    bcc loc_0bbe81
    lda #$002d
    sta $14,x
    bra loc_0bbea7

loc_0bbe81:
    lda $1e74
    and #$0003
    cmp $97
    bne loc_0bbea0
    jsr sub_0bbeb9
    lda $b431,y
    and #$00ff
    ora #$8000
    cmp $14,x
    beq loc_0bbea0
    and #$7fff
    sta $14,x

loc_0bbea0:
    lda $08
    sta $1c,x
    jmp sub_0bc406

loc_0bbea7:
    stz $1c,x
    jmp sub_0bc406

sub_0bbeac:
    ldy #$0000
    sty $97
    jsr sub_0bbeb9
    ldy #$0001
    sty $97

sub_0bbeb9:
    phb
    pea $7e7e
    plb
    plb
    phy
    phx
    tya
    asl a
    asl a
    asl a
    asl a
    asl a
    tax
    ldy #$01a0
    lda $97
    cmp #$0000
    beq loc_0bbed5
    ldy #$01e0

loc_0bbed5:
    lda #$0010
    sta $3a

loc_0bbeda:
    lda $f1e5,x
    sta $efe5,y
    inx
    inx
    iny
    iny
    dec $3a
    bne loc_0bbeda
    plx
    ply
    plb
    rts

sub_0bbeec:
    lda $1b82
    bit #$0001
    beq loc_0bbefd
    ldy #$aa70
    ldx #$1fdc
    jsr sub_0bbf03

loc_0bbefd:
    ldy #$2a70
    ldx #$1fd2

sub_0bbf03:
    lda $09,x
    and #$0003
    asl a
    tax
    lda $0bbf14,x
    tax
    tya
    txy
    jmp sub_0bc428
    .db $d0,$d1,$dd,$d1,$ea,$d1,$f7,$d1,$00,$fc,$69,$30,$fc,$fc,$ca,$70
    .db $fc,$00,$da,$70,$fc,$04,$ca,$f0,$00,$04,$69,$b0,$04,$04,$ca,$b0
    .db $04,$00,$da,$30,$04,$fc,$ca,$30

tbl_0bbf3c:
    .db $da,$c2,$dc,$c2,$f5,$c2,$08,$c3,$03,$c3,$48,$c3,$7b,$c3,$76,$c3
    .db $cd,$c2,$d3,$c2,$d6,$c2,$e7,$c2,$e4,$30,$e4,$36,$00,$00,$e0,$30
    .db $f0,$30,$f1,$30,$00,$00,$e0,$30,$f0,$30,$f1,$30,$00,$00,$09,$0a
    .db $b7,$c0,$76,$bf,$7d,$bf,$87,$bf,$91,$bf,$06,$02,$e4,$30,$e5,$30
    .db $00,$0b,$00,$08,$06,$02,$e5,$f0,$e4,$f0,$00,$0b,$08,$00,$07,$02
    .db $e4,$70,$e5,$b0,$00,$07,$02,$e5,$70,$e4,$b0,$00,$09,$05,$07,$40
    .db $64,$e8,$30,$48,$64,$e9,$30,$50,$64,$ea,$30,$50,$6c,$f7,$30,$58
    .db $6c,$f8,$30,$58,$74,$f9,$30,$58,$7c,$fa,$30,$08,$05,$02,$48,$30
    .db $e2,$34,$80,$70,$e2,$32,$09,$05,$04,$7c,$50,$f4,$32,$a0,$4c,$e1
    .db $32,$80,$34,$e1,$30,$ac,$64,$e1,$34,$00,$09,$01,$80,$b3,$06,$01
    .db $71,$32,$00,$09,$01,$80,$b3,$06,$01,$72,$32,$00,$09,$08,$01,$40
    .db $28,$02,$70,$03,$01,$de,$02,$30,$03,$06,$dd,$03,$01,$de,$01,$40
    .db $78,$02,$f0,$03,$01,$de,$02,$b0,$03,$06,$dd,$03,$01,$de,$01,$40
    .db $38,$02,$70,$04,$04,$ee,$01,$b0,$38,$02,$30,$04,$04,$ee,$01,$60
    .db $9b,$06,$0a,$c0,$30,$c1,$30,$c2,$30,$c3,$30,$c4,$30,$c5,$30,$c6
    .db $30,$c7,$30,$c8,$30,$c9,$30,$01,$60,$a7,$06,$0a,$d0,$30,$d1,$30
    .db $d2,$30,$d3,$30,$d4,$30,$d5,$30,$d6,$30,$d7,$30,$d8,$30,$d9,$30
    .db $00,$09,$01,$60,$b3,$06,$03,$cd,$32,$ce,$32,$cf,$32,$00

sub_0bc05a:
.a8
    rtl

sub_0bc05b:
    phb
    pea $7e7e
    plb
    plb
    php
    sty $a5
    rep #$30
.a16
    inc $1e5e
    lda $1b86
    bit #$0020
    beq loc_0bc076
    jsr sub_0bc09e
    bra loc_0bc086

loc_0bc076:
    lda $1b96
    bit #$2000
    beq loc_0bc083
    jsr sub_0bc09e
    bra loc_0bc086

loc_0bc083:
    jsr sub_0bc08b

loc_0bc086:
    ldy $a5
    plp
.a8
    plb
    rtl

sub_0bc08b:
.a16
    jsr sub_0bc0ca
    jsr sub_0bc18e
    jsr sub_0bc21b
    jsr sub_0bc111
    jsr sub_0bc0d0
    jsr sub_0bc0ee
    rts

sub_0bc09e:
    sep #$20
.a8
    lda $1de1
    bit #$80
    bne loc_0bc0ab
    jml loc_0bc0b6

loc_0bc0ab:
    rep #$20
.a16
    ldx #$c04d
    jsr sub_0bc3f5
    jsr sub_0bc0ee

loc_0bc0b6:
.a8
    rts

loc_0bc0b7:
.a16
    lda $1e5e
    and #$0006
    sta $e4
    txa
    clc
    adc $e4
    tax
    lda $0b0002,x
    tay
    rts

sub_0bc0ca:
    ldx #$bfe8
    jmp sub_0bc3f5

sub_0bc0d0:
    ldx #$bf98
    jsr sub_0bc3f5
    sep #$20
.a8
    lda $1de1
    bit #$80
    bne loc_0bc0e3
    jml loc_0bc0eb

loc_0bc0e3:
    rep #$20
.a16
    ldx #$c04d
    jsr sub_0bc3f5

loc_0bc0eb:
    rep #$20
    rts

sub_0bc0ee:
    sep #$20
.a8
    lda $1de1
    bit #$80
    bne loc_0bc0fb
    jml loc_0bc10e

loc_0bc0fb:
    rep #$20
.a16
    ldx #$bfd6
    lda $1de0
    and #$0080
    bne loc_0bc10b
    ldx #$bfdf

loc_0bc10b:
    jsr sub_0bc3f5

loc_0bc10e:
    rep #$20
    rts

sub_0bc111:
    inc $f5b6
    ldx $e0a3
    beq loc_0bc17e
    ldy $a5

loc_0bc11b:
    lda $002e,x
    bit #$0200
    bne loc_0bc178
    sep #$20
.a8
    lda $001f,x
    lsr a
    clc
    adc #$29
    xba
    lda $001c,x
    lsr a
    clc
    adc #$3c
    rep #$20
.a16
    sta $3a
    phx
    lda $0036,x
    and #$00ff
    asl a
    tax
    lda $18bde7,x
    jsr sub_0bc181
    plx
    lda $0036,x
    cmp #$0009
    bne loc_0bc178
    phx
    lda $e095
    and #$0038
    lsr a
    tax
    sep #$20
.a8
    lda $0bbf1c,x
    clc
    adc $3a
    sta $3a
    lda $0bbf1d,x
    clc
    adc $3b
    sta $3b
    rep #$20
.a16
    lda $0bbf1e,x
    jsr sub_0bc181
    plx

loc_0bc178:
    lda $0000,x
    tax
    bne loc_0bc11b

loc_0bc17e:
    sty $a5
    rts

sub_0bc181:
    sta $e841,y
    lda $3a
    sta $e83f,y
    iny
    iny
    iny
    iny
    rts

sub_0bc18e:
    ldy $a5
    sty $1e90
    ldx #$0000
    sep #$20
.a8
    lda $daf6,x
    lsr a
    clc
    adc #$29
    xba
    lda $daf3,x
    lsr a
    clc
    adc #$40
    rep #$20
.a16
    phb
    phk
    plb
    pha
    lda $7ef5b4
    inc a
    cmp #$0024
    bcc loc_0bc1ba
    lda #$0000

loc_0bc1ba:
    sta $7ef5b4
    sta $004204
    sep #$20
.a8
    lda #$03
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
    asl a
    tax
    ldy $c1e7,x
    pla
    jsr sub_0bc428
    plb
    ldy $1e90
    sty $a5
    rts
    .db $2a,$d4,$3b,$d4,$4c,$d4,$5d,$d4,$6e,$d4,$7f,$d4,$90,$d4,$a1,$d4
    .db $b2,$d4,$c3,$d4,$d4,$d4,$e5,$d4

sub_0bc1ff:
    stz $e4
    phx
    ldx $e0a3
    beq loc_0bc217

loc_0bc207:
    lda $002e,x
    and #$0002
    ora $e4
    sta $e4
    lda $0000,x
    tax
    bne loc_0bc207

loc_0bc217:
    plx
    lda $e4
    rts

sub_0bc21b:
    inc $f5bc
    ldx $db67
    bne loc_0bc224
    rts

loc_0bc224:
    ldy $a5

loc_0bc226:
    sep #$20
.a8
    lda $000e,x
    lsr a
    clc
    adc #$20
    xba
    lda $000c,x
    lsr a
    clc
    adc #$38
    rep #$20
.a16
    sta $02
    lda $0006,x
    cmp #$0007
    bcs loc_0bc257
    lda $001c,x
    bit #$100a
    bne loc_0bc257
    phx
    sty $a5
    ldx #$bf6a
    jsr sub_0bc3f5
    ldy $a5
    plx

loc_0bc257:
    lda $001c,x
    bit #$0002
    beq loc_0bc2c1
    jsr sub_0bc1ff
    beq loc_0bc2c1
    phx
    lda $f5bc
    and #$0018
    lsr a
    lsr a
    tax
    clc
    lda $02
    adc #$0200
    sta $02
    lda $0bbf5a,x
    beq loc_0bc288
    sta $e841,y
    lda $02
    sta $e83f,y
    iny
    iny
    iny
    iny

loc_0bc288:
    inx
    inx
    lda $02
    adc #$0707
    sta $02
    lda $0bbf5a,x
    beq loc_0bc2a3
    sta $e841,y
    lda $02
    sta $e83f,y
    iny
    iny
    iny
    iny

loc_0bc2a3:
    inx
    inx
    lda $02
    adc #$f802
    sta $02
    lda $0bbf5a,x
    beq loc_0bc2be
    sta $e841,y
    lda $02
    sta $e83f,y
    iny
    iny
    iny
    iny

loc_0bc2be:
    inx
    inx
    plx

loc_0bc2c1:
    lda $0000,x
    tax
    beq loc_0bc2ca
    jmp loc_0bc226

loc_0bc2ca:
    sty $a5
    rts

loc_0bc2cd:
    lda #$ffff
    sta $a7
    rts

loc_0bc2d3:
    stz $a7
    rts

loc_0bc2d6:
    tyx
    jmp ($0000,x)

loc_0bc2da:
    pla
    rts

loc_0bc2dc:
    tyx
    lda $0b0000,x
    sta $02
    inx
    inx
    txy
    rts

loc_0bc2e7:
    tyx
    lda $0b0000,x
    clc
    adc $02
    sta $02
    inx
    inx
    txy
    rts

loc_0bc2f5:
    tyx
    lda $0b0000,x
    xba
    and #$ff00
    sta $08
    inx
    txy
    rts

loc_0bc303:
    lda #$0800
    bra loc_0bc30b

loc_0bc308:
    lda #$0008

loc_0bc30b:
    bit $a7
    beq loc_0bc310
    asl a

loc_0bc310:
    sta $0a
    tyx
    phy
    lda $0b0001,x
    and #$00ff
    ora $08
    sta $97
    lda $0b0000,x
    and #$00ff
    tax
    ldy $a5

loc_0bc329:
    lda $02
    sta $e83f,y
    clc
    adc $0a
    sta $02
    lda $97
    sta $e841,y
    jsr sub_0bc3ae
    iny
    iny
    iny
    iny
    dex
    bne loc_0bc329
    sty $a5
    ply
    iny
    iny
    rts

loc_0bc348:
    tyx
    lda $0b0000,x
    and #$00ff
    sta $04
    inx
    ldy $a5

loc_0bc355:
    lda $0b0000,x
    sta $e83f,y
    lda $0b0002,x
    sta $e841,y
    inx
    inx
    inx
    inx
    jsr sub_0bc3ae
    iny
    iny
    iny
    iny
    dec $04
    bne loc_0bc355
    sty $a5
    txy
    rts

loc_0bc376:
    lda #$0800
    bra loc_0bc37e

loc_0bc37b:
    lda #$0008

loc_0bc37e:
    sta $0a
    tyx
    lda $0b0000,x
    and #$00ff
    sta $04
    inx
    ldy $a5
    clc

loc_0bc38e:
    lda $02
    sta $e83f,y
    adc $0a
    sta $02
    lda $0b0000,x
    beq loc_0bc3a4
    sta $e841,y
    iny
    iny
    iny
    iny

loc_0bc3a4:
    inx
    inx
    dec $04
    bne loc_0bc38e
    sty $a5
    txy
    rts

sub_0bc3ae:
    lda $a7
    beq loc_0bc3d1
    phx
    phy
    tya
    cmp #$0220
    bcs loc_0bc3d2
    lsr a
    tax
    lsr a
    lsr a
    lsr a
    tay
    txa
    and #$0006
    tax
    lda $ea3f,y
    ora $0bc3ed,x
    sta $ea3f,y
    ply
    plx

loc_0bc3d1:
    rts

loc_0bc3d2:
    sbc #$0220
    lsr a
    tax
    lsr a
    lsr a
    lsr a
    tay
    txa
    and #$0006
    tax
    lda $ec5f,y
    ora $0bc3ed,x
    sta $ec5f,y
    ply
    plx
    rts
    .db $02,$00,$08,$00,$20,$00,$80,$00

sub_0bc3f5:
    lda $0b0000,x
    and #$00ff
    asl a
    inx
    txy
    tax
    jsr (tbl_0bbf3c,x)
    tyx
    bra sub_0bc3f5

sub_0bc406:
    phb
    phk
    plb
    jsr sub_0bc46c
    jsr sub_0bc48b
    jsr sub_0bc458
    jsr sub_0bc5c5
    jsr sub_0bc46c
    plb
    rts

loc_0bc41a:
    phb
    phk
    plb
    jsr sub_0bc458
    jsr sub_0bc5c5
    jsr sub_0bc46c
    plb
    rts

sub_0bc428:
    ldx #$0000

loc_0bc42b:
    stx $0a
    sty $50
    tay
    and #$00ff
    sta $02
    tya
    xba
    and #$00ff
    sta $08
    stz $a5
    ldx #$0220
    cpx $1e90
    beq loc_0bc44b
    bcc loc_0bc44b
    ldx #$0000

loc_0bc44b:
    stx $1e8c
    jsr sub_0bc46c
    jsr sub_0bc5c5
    jsr sub_0bc46c
    rts

sub_0bc458:
    ldx $1e8e
    lda $1c,x
    sta $0a
    lda $0a,x
    sta $02
    lda $0e,x
    sta $08
    lda $20,x
    sta $a5
    rts

sub_0bc46c:
    lda $1e90
    bit #$000f
    beq loc_0bc48a
    ldy #$e0e0

loc_0bc477:
    tax
    tya
    sta $7ee83f,x
    txa
    inc a
    inc a
    inc a
    inc a
    bit #$000f
    bne loc_0bc477
    sta $1e90

loc_0bc48a:
    rts

sub_0bc48b:
    ldx $1e8e
    lda $14,x
    bpl loc_0bc49e
    lda $18,x
    beq loc_0bc4a8
    dec a
    sta $18,x

loc_0bc499:
    lda $1a,x
    sta $50
    rts

loc_0bc49e:
    ora #$8000
    sta $14,x
    stz $18,x
    jsr sub_0bc594

loc_0bc4a8:
    ldy $16,x

loc_0bc4aa:
    lda $0000,y
    bit #$0080
    beq loc_0bc4be
    and #$007f
    asl a
    tax
    jsr (tbl_0bc4dc,x)
    sty $16,x
    bra loc_0bc4aa

loc_0bc4be:
    and #$007f
    dec a
    sta $18,x
    lda $0001,y
    and #$00ff
    asl a
    adc $1e,x
    tax
    lda $0000,x
    ldx $1e8e
    sta $1a,x
    iny
    iny
    sty $16,x
    bra loc_0bc499

tbl_0bc4dc:
    .db $8b,$c5,$82,$c5,$4c,$c5,$44,$c5,$0c,$c5,$f2,$c4,$6c,$c5,$1b,$c5
    .db $2a,$c5,$36,$c5,$61,$c5

loc_0bc4f2:
    ldx $1e8e
    lda $0001,y
    and #$00ff
    cmp $001e70
    bne loc_0bc509
    lda #$001f
    sta $18,x
    jmp loc_0bc5aa

loc_0bc509:
    iny
    iny
    rts

loc_0bc50c:
    lda $0001,y
    and #$00ff
    xba
    ldx $1e8e
    sta $10,x
    iny
    iny
    rts

loc_0bc51b:
    lda $0001,y
    and #$00ff
    xba
    ldx $1e8e
    sta $1c,x
    iny
    iny
    rts

loc_0bc52a:
    lda $0001,y
    ldx $1e8e
    sta $1c,x
    iny
    iny
    iny
    rts

loc_0bc536:
    lda $0001,y
    and #$00ff
    ldx $1e8e
    sta $20,x
    iny
    iny
    rts

loc_0bc544:
    ldx $1e8e
    lda $0001,y
    tay
    rts

loc_0bc54c:
    phy
    lda $0001,y
    and #$00ff
    and #$00ff
    jsl QueueSound
    ply
    ldx $1e8e
    iny
    iny
    rts

loc_0bc561:
    lda #$ffff
    sta $1fb4
    ldx $1e8e
    iny
    rts

loc_0bc56c:
    phy
    lda $0001,y
    and #$00ff
    sep #$20
.a8
    jsl sub_7f6df8
    rep #$20
.a16
    ply
    ldx $1e8e
    iny
    iny
    rts

loc_0bc582:
    ldx $1e8e
    stz $04,x
    stz $50
    pla
    rts

loc_0bc58b:
    ldx $1e8e
    jsr sub_0bc594
    ldy $16,x
    rts

sub_0bc594:
    phy
    lda $14,x
    txy
    asl a
    tax
    lda $0bc928,x
    sta $0016,y
    lda #$c9ac
    sta $001e,y
    tyx
    ply
    rts

loc_0bc5aa:
    iny
    iny
    sty $16,x
    pla
    lda $1a,x
    sta $50
    rts

loc_0bc5b4:
    phb
    phk
    plb
    sty $1e90
    stx $50
    jsr sub_0bc5c5
    ldy $1e90
    plb
    rts

loc_0bc5c4:
    rts

sub_0bc5c5:
    ldy $50
    beq loc_0bc5c4
    ldx $1e90
    lda $0000,y
    iny
    bit #$00c0
    beq loc_0bc609
    bit #$0080
    beq loc_0bc636
    and #$003f
    beq loc_0bc5c4
    sta $97
    dec a
    lsr a
    lsr a
    sta $e4
    lda $1e90
    sec
    sbc $1e8c
    lsr a
    lsr a
    lsr a
    lsr a
    clc
    adc $1e8c
    tax
    sep #$20

loc_0bc5f8:
.a8
    lda $0000,y
    iny
    sta $7eea3f,x
    inx
    dec $e4
    bpl loc_0bc5f8
    rep #$20
.a16
    bra loc_0bc63d

loc_0bc609:
    and #$003f
    beq loc_0bc5c4
    phy
    sta $97
    dec a
    lsr a
    lsr a
    tay
    lda $1e90
    sec
    sbc $1e8c
    lsr a
    lsr a
    lsr a
    lsr a
    clc
    adc $1e8c
    tax
    sep #$20
.a8
    lda #$aa

loc_0bc629:
    sta $7eea3f,x
    inx
    dey
    bpl loc_0bc629
    rep #$20
.a16
    ply
    bra loc_0bc63d

loc_0bc636:
    and #$003f
    beq loc_0bc69e
    sta $97

loc_0bc63d:
    ldx $1e90

loc_0bc640:
    lda $0000,y
    iny
    and #$00ff
    eor #$ff80
    clc
    adc #$0080
    cmp #$ff80
    bne loc_0bc659
    lda $0000,y
    tay
    bra loc_0bc640

loc_0bc659:
    clc
    adc $02
    cmp #$0100
    bcc loc_0bc667
    iny
    lda #$00e0
    bra loc_0bc67c

loc_0bc667:
    sta $7ee83f,x
    lda $0000,y
    iny
    and #$00ff
    eor #$ff80
    clc
    adc #$0080
    clc
    adc $08

loc_0bc67c:
    sep #$20
.a8
    sta $7ee840,x
    rep #$20
.a16
    lda $0000,y
    iny
    iny
    eor $0a
    sta $7ee841,x
    inx
    inx
    inx
    inx
    dec $a5
    beq loc_0bc6aa
    dec $97
    bne loc_0bc640
    stx $1e90

loc_0bc69e:
    rts

loc_0bc69f:
    lda #$e0e0
    sta $7ee83f,x
    inx
    inx
    inx
    inx

loc_0bc6aa:
    dec $97
    bne loc_0bc69f
    stx $1e90
    rts
    .db $7a,$86,$a7,$ae,$90,$1e,$b9,$01,$00,$c8,$29,$ff,$00,$c9,$ff,$00
    .db $f0,$19,$09,$00,$30,$9f,$41,$e8,$7e,$a5,$a7,$9f,$3f,$e8,$7e,$18
    .db $69,$08,$00,$85,$a7,$e8,$e8,$e8,$e8,$80,$db,$8e,$90,$1e,$a6,$a7
    .db $5a,$60

sub_0bc6e4:
    tay
    sep #$20
.a8
    jsr DivMod10
    sta $02
    jsr DivMod10
    asl a
    asl a
    asl a
    asl a
    ora $02
    sta $02
    jsr DivMod10
    sta $03
    jsr DivMod10
    asl a
    asl a
    asl a
    asl a
    ora $03
    sta $03
    jsr DivMod10
    sta $08
    stz $09
    rep #$20
.a16
    rts

DivMod10:    ; hardware divide of Y by 10 (WRDIVL/WRDIVB): Y quotient, A remainder (code)
.a8
    sty WRDIVL
    lda #$0a
    sta WRDIVB
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldy RDDIVL
    lda RDMPYL
    rts
    .db $70,$71,$72,$73,$74,$75,$76,$77,$78,$79

sub_0bc732:
.a16
    pha
    xba
    jsr sub_0bc749
    pla
    bra loc_0bc740
    .db $48,$eb,$20,$40,$c7,$68

loc_0bc740:
    pha
    lsr a
    lsr a
    lsr a
    lsr a
    jsr sub_0bc749
    pla

sub_0bc749:
    and #$000f
    tax
    lda $0bc728,x
    and #$00ff
    ora #$3200

sub_0bc757:
    ldx $1e90
    sta $7ee841,x
    tya
    sta $7ee83f,x
    clc
    adc #$0008
    inx
    inx
    inx
    inx
    stx $1e90
    tay
    rts

loc_0bc770:
    eor $32,x
    lsr $32,x
    bvc sub_0bc7e8
    eor [$32],y
    cli
    and ($67)
    lda ($bc)
    and ($64)
    sbc ($59)
    and ($55)
    adc ($55)
    lda ($61)
    and ($67)
    and ($57)
    lda ($68)
    and ($66)
    and ($52)
    lda ($54)
    sbc ($59)
    lda ($bc)
    sbc ($48)
    xba
    jsr sub_0bc7af
    pla
    bra sub_0bc7a6
    .db $48,$eb,$20,$a6,$c7,$68

sub_0bc7a6:
    pha
    lsr a
    lsr a
    lsr a
    lsr a
    jsr sub_0bc7af
    pla

sub_0bc7af:
    and #$000f
    asl a
    tax
    lda $0bc784,x
    pha
    lda loc_0bc770,x
    ldx $1e90
    sta $7ee841,x
    pla
    sta $7ee845,x
    tya
    sta $7ee83f,x
    pha
    clc
    adc #$0800
    sta $7ee843,x
    pla
    clc
    adc #$0008
    tay
    txa
    clc
    adc #$0008
    tax
    stx $1e90
    rts

loc_0bc7e7:
    rts

sub_0bc7e8:
    ldx $1e8e
    ldy #$0000
    clc
    lda $10,x
    bpl loc_0bc7f4
    dey

loc_0bc7f4:
    adc $09,x
    sta $09,x
    sep #$20
.a8
    tya
    adc $0b,x
    sta $0b,x
    rep #$20
.a16
    ldy #$0000
    clc
    lda $12,x
    bpl loc_0bc80a
    dey

loc_0bc80a:
    adc $0d,x
    sta $0d,x
    sep #$20
.a8
    tya
    adc $0f,x
    sta $0f,x
    rep #$20
.a16
    rts

sub_0bc818:
    phb
    phk
    plb
    ldx #$0220
    cpx $1e90
    beq loc_0bc828
    bcc loc_0bc828
    ldx #$0000

loc_0bc828:
    stx $1e8c
    lda #$1e9c
    sta $1e96
    ldx $1e96

loc_0bc834:
    lda $02,x

loc_0bc836:
    cmp $1e96
    beq loc_0bc84e
    sta $1e8e
    tax
    jsr ($0004,x)
    ldx $1e8e
    lda $04,x
    bne loc_0bc834
    jsr sub_0bc90e
    bra loc_0bc836

loc_0bc84e:
    plb
    rts

sub_0bc850:
    lda #$1e98
    sta $1e94
    lda #$1e9c
    sta $1e96
    lda #$002a
    ldy #$0006
    jsr sub_0bc8c9
    rts

sub_0bc866:
    ldy $02,x
    lda $00,x
    sta $0000,y
    tya
    ldy $00,x
    sta $0002,y
    ldy #$1e98
    lda $0002,y
    sta $02,x
    stx $02,y
    rts

sub_0bc87e:
    ply
    jsr sub_0bc8f9
    bcs loc_0bc8c5
    jsr sub_0bc8e5
    lda $0002,y
    and #$00ff
    sta $14,x
    lda $0005,y
    and #$00ff
    sta $0a,x
    lda $0006,y
    and #$00ff
    sta $0e,x
    lda $0003,y
    sta $04,x
    stz $20,x
    stz $1c,x
    stz $10,x
    stz $12,x
    stz $08,x
    stz $0c,x
    phx
    lda $0001,y
    and #$00ff
    asl a
    tax
    pla
    sta $1f9c,x
    tax
    tya
    clc
    adc #$0006
    pha
    rts

loc_0bc8c5:
    jsl sub_008006

sub_0bc8c9:
    sta $02
    ldx $1e94
    lda #$1ea0

loc_0bc8d1:
    sta $02,x
    tax
    clc
    adc $02
    dey
    bne loc_0bc8d1
    stz $02,x
    ldx $1e96
    txa
    sta $00,x
    sta $02,x
    rts

sub_0bc8e5:
    phy
    ldy $1e96
    sty $00,x
    txa
    ldx $02,y
    sta $00,x
    sta $0002,y
    txy
    tax
    sty $02,x
    ply
    rts

sub_0bc8f9:
    phy
    ldy $1e94
    lda $0002,y
    bne loc_0bc905
    sec
    ply
    rts

loc_0bc905:
    tax
    lda $02,x
    sta $0002,y
    clc
    ply
    rts

sub_0bc90e:
    ldy $00,x
    lda $02,x
    sta $0002,y
    tax
    sty $00,x
    pha
    ldx $1e8e
    ldy $1e94
    lda $0002,y
    sta $02,x
    stx $02,y
    pla
    rts
    .incbin "data/05c928-05e0db.bin"

sub_0be0db:
.a8
    phb
    phk
    plb
    php
    sep #$20
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    rep #$30
.a16
    stz $1e66
    lda #$0000
    sta $7ef534
    lda #$0000
    sta $7ef59c
    lda #$0000
    sta $70034c
    ldx #$1faa
    lda #$0001
    jsr sub_0be120
    jsr sub_0bc850
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    plp
    plb
    rtl

sub_0be120:
.a16
    sta $00,x
    stz $0c,x
    stz $0e,x
    stz $10,x
    rts

sub_0be129:
.a8
    phb
    phk
    plb
    php
    sep #$20
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    rep #$30
.a16
    sty $1e90
    inc $1e5e
    jsr sub_0be156
    ldy $1e90
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    plp
    plb
    rtl

sub_0be156:
.a16
    ldx #$1faa
    stx $1fa8
    jsr sub_0bac23
    cmp $e1,x
    plx
    sbc ($65,x)
    .db $e1

loc_0be165:
    jsr sub_0be343
    jsr sub_0be16f
    jsr sub_0bc818
    rts

sub_0be16f:
    jsr sub_0bac85
    .db $80,$81,$e1,$80,$93,$e1,$80,$9a,$e1,$82,$bf,$e1,$81,$ce,$e1

loc_0be181:
    sep #$20
.a8
    lda #$02
    jsl sub_7f6df8
    rep #$20
.a16
    lda #$0028
    sta $70034c
    rts

loc_0be193:
    tyx
    lda #$0001
    sta $0c,x
    rts

loc_0be19a:
    jsr sub_0be2ad
    jsr sub_0be2da
    jsr sub_0bc850
    jsr sub_0bc87e
    .db $00,$2a,$aa,$e2,$d0,$b0
    jsr sub_0bc87e
    .db $01,$29,$aa,$e2,$7b,$76
    jsr sub_0bc87e
    .db $03,$2c,$aa,$e2,$b8,$cd
    rts

loc_0be1bf:
    tyx
    lda $0e,x
    bne loc_0be1cb
    lda $08,x
    cmp #$000a
    bcc loc_0be1cd

loc_0be1cb:
    dec $0a,x

loc_0be1cd:
    rts

loc_0be1ce:
    tyx
    lda #$0020
    sta $0c,x
    rts
    .db $60

sub_0be1d6:
    ldy #$0000
    ldx $1f9c,y
    lda $193c
    eor #$ffff
    inc a
    clc
    adc #$03d0
    and #$03ff
    sta $0a,x
    lda $193a
    eor #$ffff
    inc a
    clc
    adc #$0130
    sta $0e,x
    rts

loc_0be1fa:
    jsr sub_0be2fa
    jsr sub_0be207
    jsr sub_0be1d6
    jsr sub_0bc818
    rts

sub_0be207:
    jsr sub_0bac85
    .db $80,$3d,$e2,$82,$47,$e2,$80,$52,$e2,$80,$5e,$e2,$21,$69,$e2,$21
    .db $6c,$e2,$80,$6f,$e2,$0c,$79,$e2,$0f,$7a,$e2,$80,$81,$e2,$14,$92
    .db $e2,$80,$88,$e2,$78,$92,$e2,$78,$92,$e2,$78,$92,$e2,$78,$92,$e2
    .db $81,$93,$e2

loc_0be23d:
    jsr sub_0bc87e
    .db $00,$2a,$aa,$e2,$80,$b0
    rts

loc_0be247:
    lda $1e66
    beq loc_0be251
    ldx $1fa8
    dec $0a,x

loc_0be251:
    rts

loc_0be252:
    jsr sub_0bc87e
    .db $01,$29,$97,$e2,$7b,$76
    jmp loc_0be2b2

loc_0be25e:
    sep #$20
.a8
    lda #$02
    jsl sub_7f6df8
    rep #$20
.a16
    rts

loc_0be269:
    jmp loc_0be2b2

loc_0be26c:
    jmp loc_0be2df

loc_0be26f:
    jsr sub_0bc87e
    .db $03,$2c,$9a,$e2,$b8,$cd
    rts

loc_0be279:
    rts

loc_0be27a:
    tyx
    lda #$0001
    sta $0c,x
    rts

loc_0be281:
    tyx
    lda #$ffff
    sta $0e,x
    rts

loc_0be288:
    jsr sub_0bc87e
    .db $02,$2b,$97,$e2,$48,$cd
    rts

loc_0be292:
    rts

loc_0be293:
    inc $1be4
    rts

loc_0be297:
    jmp sub_0bc406

loc_0be29a:
    ldx $1e8e
    lda $20,x
    inc a
    cmp #$0014
    bcs loc_0be2a7
    sta $20,x

loc_0be2a7:
    jmp sub_0bc406

loc_0be2aa:
    jmp sub_0bc406

sub_0be2ad:
    lda #$001f
    bra loc_0be2c9

loc_0be2b2:
    lda $7ef530
    beq loc_0be2bf
    lda #$ffff

loc_0be2bb:
    sta $7ef534

loc_0be2bf:
    ldx $1fa8
    lda $08,x
    cmp #$0020
    bcs loc_0be2d9

loc_0be2c9:
    sta $0a
    lda #$0008
    sta $02
    ldy #$e36f
    ldx #$01e0
    jsr sub_0be3d3

loc_0be2d9:
    rts

sub_0be2da:
    lda #$001f
    bra loc_0be2e9

loc_0be2df:
    ldx $1fa8
    lda $08,x
    cmp #$0020
    bcs loc_0be2f9

loc_0be2e9:
    sta $0a
    lda #$0020
    sta $02
    ldy #$e381
    ldx #$0000
    jsr sub_0be3d3

loc_0be2f9:
    rts

sub_0be2fa:
    lda $7ef534
    beq loc_0be308
    lda $7ef52a
    dec a
    bne loc_0be31b
    rts

loc_0be308:
    lda $1e5e
    bit #$0010
    bne loc_0be313
    eor #$000f

loc_0be313:
    and #$000f
    tax
    lda $0be333,x

loc_0be31b:
    and #$00ff
    sta $0a
    sta $7ef52a
    lda #$0008
    sta $02
    ldy #$e35f
    ldx #$0080
    jsr sub_0be3d3
    rts
    .db $1f,$1f,$1f,$1e,$1d,$1c,$1b,$1a,$19,$18,$17,$16,$15,$14,$13,$12

sub_0be343:
    lda $7ef530
    beq loc_0be355
    lda $7ef52a
    dec a
    bmi loc_0be35e
    beq loc_0be35e
    jmp loc_0be31b

loc_0be355:
    lda $7ef52a
    cmp #$0012
    bne sub_0be2fa

loc_0be35e:
    rts
    .db $00,$00,$fa,$7f,$07,$7f,$07,$7e,$84,$70,$00,$4c,$00,$2c,$00,$20
    .db $00,$00,$fa,$7f,$e7,$7f,$07,$7f,$07,$7e,$84,$70,$00,$4c,$00,$30
    .db $ff,$7f,$00,$00,$9e,$2b,$58,$3a,$12,$49,$0d,$49,$08,$45,$ff,$7f
    .db $ff,$7f,$ff,$7f,$ff,$7f,$08,$45,$ff,$7f,$b9,$6b,$36,$5f,$b2,$4e
    .db $00,$00,$00,$00,$3f,$37,$59,$3e,$52,$49,$ed,$48,$87,$48,$44,$24
    .db $bf,$14,$ff,$7f,$ff,$7f,$ff,$7f,$ff,$7f,$ff,$7f,$ff,$7f,$ff,$7f
    .db $00,$00,$85,$02,$b9,$00,$00,$9f,$e5,$ef,$7e,$e8,$e8,$c8,$c8,$c6
    .db $02,$d0,$f1,$60

sub_0be3d3:
    lda $0000,y
    and #$001f
    jsr sub_0be417
    sta $08
    lda $0000,y
    and #$03e0
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    jsr sub_0be417
    asl a
    asl a
    asl a
    asl a
    asl a
    sta $97
    lda $0000,y
    and #$7c00
    xba
    lsr a
    lsr a
    jsr sub_0be417
    asl a
    asl a
    xba
    sta $04
    lda $08
    ora $97
    ora $04
    sta $7eefe5,x
    iny
    iny
    inx
    inx
    dec $02
    bne sub_0be3d3
    rts

sub_0be417:
    sep #$20
.a8
    sta WRMPYA
    lda $0a
    sta WRMPYB
    rep #$20
.a16
    nop
    nop
    nop
    lda RDMPYL
    lsr a
    lsr a
    lsr a
    lsr a
    lsr a
    rts

loc_0be42f:
    sep #$20
.a8
    lda $5e
    pha
    jsl sub_7f77fe
    rep #$20
.a16
    ldx #$1faa
    lda $0c,x
    beq loc_0be49d
    lda $001c20
    sta $70034a
    lda $001be0
    beq loc_0be47e
    dec a
    bne loc_0be45b
    lda $0c,x
    cmp #$0010
    bcs loc_0be46b
    bcc loc_0be47e

loc_0be45b:
    lda $001be2
    beq loc_0be466
    ldx #$e530
    bra loc_0be46e

loc_0be466:
    jsr sub_0be4ad
    bra loc_0be46e

loc_0be46b:
    ldx #$e4fd

loc_0be46e:
    jsr sub_0b8023
    lda #$0028
    sta $70034c
    ldx #$e4d9
    jsr sub_0b8023

loc_0be47e:
    lda $70034c
    cmp #$0028
    bcs loc_0be48c
    inc a
    sta $70034c

loc_0be48c:
    sep #$20
.a8
    lda #$0b
    ldx #$8882
    jsl sub_7f787b
    rep #$20
.a16
    rep #$10
    bra loc_0be49d

loc_0be49d:
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    jsl sub_7f784b
    rep #$20
.a16
    rts

sub_0be4ad:
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    rep #$20
.a16
    ldx #$e54f
    lda $703916
    and #$0010
    beq loc_0be4cd
    ldx #$e530

loc_0be4cd:
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    rep #$20
.a16
    rts
    .db $0d
    lda $70034a
    ora #$0e00
    jsr sub_0b8c0b
    clc
    adc #$0057
    sta $70002c
    lda #$0046
    sta $700068
    pea $e4f8
    plx
    rts
    .db $10,$10,$02,$6c,$09,$0c,$10,$0e,$05,$50,$57,$0f,$20,$1c,$00,$02
    .db $5f,$05,$50,$65,$0f,$20,$1c,$01,$02,$60,$05,$50,$73,$0f,$20,$1c
    .db $02,$0d
    lda $1c1f
    and #$00ff
    clc
    adc #$0064
    sta $1e5c
    pea $e52c
    plx
    rts
    .db $03,$5c,$1e,$09,$0c,$10,$0e,$05,$50,$57,$0f,$20,$1c,$00,$02,$66
    .db $05,$50,$65,$0f,$20,$1c,$01,$02,$67,$05,$50,$73,$0f,$20,$1c,$02
    .db $02,$68,$09,$0c,$10,$0e,$05,$50,$57,$0f,$20,$1c,$00,$02,$66,$05
    .db $50,$65,$0f,$20,$1c,$01,$02,$67,$05,$50,$73,$10,$0b,$02,$68,$09
    .db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
    .db $00,$01,$24,$24,$24,$07,$07,$00,$00,$00,$00,$00,$05,$00,$00,$00
    .db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$24,$24,$24
    .db $07,$07,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00
    .db $00,$00,$00,$00,$00,$00,$00,$03,$24,$24,$24,$07,$07,$00,$00,$00
    .db $00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
    .db $00,$00,$04,$24,$24,$24,$07,$07,$00,$00,$00,$00,$00,$05,$00,$00
    .db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$24,$24
    .db $24,$07,$07,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00
    .db $00,$00,$00,$00,$00,$00,$00

sub_0be603:
    ldx #$0000
    ldy #$0000
    jsr sub_0beb0a
    ldy #$001b
    jsr sub_0beb0a
    ldy #$0036
    jsr sub_0beb0a
    ldy #$0051
    jsr sub_0beb0a
    ldy #$006c
    jsr sub_0beb0a
    stz $0097
    ldy #$01c4
    ldx $0097
    jsr sub_0bebf7
    ldy #$0244
    ldx $0097
    jsr sub_0bebf7
    ldy #$02c4
    ldx $0097
    jsr sub_0bebf7
    ldy #$0344
    ldx $0097
    jsr sub_0bebf7
    ldy #$03c4
    ldx $0097
    jsr sub_0bebf7
    rts

sub_0be655:
.a8
    phb
    phk
    plb
    php
    rep #$30
.a16
    jsl sub_0bf03f
    jsl sub_0bf035
    jsr sub_0be603
    jsl sub_0bf021
    lda #$ffff
    sta $7ef528
    lda #$0001
    sta $1faa
    stz $1fb6
    stz $1fb8
    stz $1fba
    stz $1fbc
    stz $1fd4
    stz $1fdc
    plp
.a8
    plb
    rtl

sub_0be68c:
    rtl

sub_0be68d:
    phb
    phk
    plb
    php
    rep #$30
.a16
    stz $1e90
    jsr sub_0beef9
    jsr sub_0be6a2
    lda $1fdc
    plp
.a8
    plb
    rtl

sub_0be6a2:
.a16
    ldx #$1faa
    stx $1fa8
    jsr sub_0bac23
    lda [$e6],y
    clv
    inc $00
    sbc [$30]
    sbc [$8e]
    sbc [$24]
    inx
    rts

loc_0be6b8:
    jsr sub_0bac85
    .db $80,$c4,$e6,$82,$fd,$e6,$81,$f7,$e6

loc_0be6c4:
    jsr sub_0bc850
    jsr sub_0bc87e
    .db $00,$2f,$8e,$e9,$80,$80
    jsr sub_0bc87e
    .db $01,$33,$46,$e9,$80,$00
    jsr sub_0bc87e
    .db $02,$35,$31,$e9,$50,$cc
    jsr sub_0bc87e
    .db $03,$34,$77,$e9,$00,$00
    jsr sub_0bc87e
    .db $05,$41,$01,$e9,$b8,$15
    jmp sub_0bc818

loc_0be6f7:
    lda #$0002
    sta $1faa

loc_0be6fd:
    jmp sub_0bc818

loc_0be700:
    jsr sub_0bac85
    .db $80,$09,$e7,$81,$1c,$e7

loc_0be709:
    ldy #$0000
    ldx $1f9c,y
    lda #$0030
    sta $14,x
    lda #$e98e
    sta $04,x
    jmp sub_0bc818

loc_0be71c:
    jsr sub_0bea49
    lda $1296
    and #$8000
    beq loc_0be72d
    lda #$0003
    sta $1faa

loc_0be72d:
    jmp sub_0bc818

loc_0be730:
    jsr sub_0bac85
    .db $80,$42,$e7,$0a,$82,$e7,$80,$7b,$e7,$82,$82,$e7,$81,$85,$e7

loc_0be742:
    lda #$0020
    jsl QueueSound
    jsr sub_0be9b7
    lda $1fd4
    cmp #$0003
    beq loc_0be769
    bcs loc_0be772
    ldy #$0000
    ldx $1f9c,y
    lda #$0031
    sta $14,x
    lda #$e98e
    sta $04,x
    jmp sub_0bc818

loc_0be769:
    lda #$0004
    sta $1faa
    jmp sub_0bc818

loc_0be772:
    lda #$0005
    sta $1faa
    jmp sub_0bc818

loc_0be77b:
    lda #$0070
    jsl QueueSound

loc_0be782:
    jmp sub_0bc818

loc_0be785:
    lda #$0002
    sta $1faa
    jmp sub_0bc818

loc_0be78e:
    jsr sub_0bac85
    .db $80,$ac,$e7,$0a,$c6,$e7,$80,$bf,$e7,$82,$c6,$e7,$80,$c9,$e7,$82
    .db $e8,$e7,$80,$eb,$e7,$82,$fb,$e7,$81,$21,$e8

loc_0be7ac:
    ldy #$0000
    ldx $1f9c,y
    lda #$0032
    sta $14,x
    lda #$e98e
    sta $04,x
    jmp sub_0bc818

loc_0be7bf:
    lda #$0070
    jsl QueueSound

loc_0be7c6:
    jmp sub_0bc818

loc_0be7c9:
    lda #$000a
    sta $1fb6
    lda #$0002
    sta $1fb8
    ldy #$0000
    ldx $1f9c,y
    lda #$002f
    sta $14,x
    lda #$e98e
    sta $04,x
    jmp sub_0bc818

loc_0be7e8:
    jmp sub_0bc818

loc_0be7eb:
    ldy #$0000
    ldx $1f9c,y
    lda #$0030
    sta $14,x
    lda #$e98e
    sta $04,x

loc_0be7fb:
    lda $1fba
    and #$0b00
    beq loc_0be811
    jsr sub_0bea49
    lda #$0002
    sta $1faa
    dec $1fd4
    bra loc_0be821

loc_0be811:
    lda $1296
    and #$8000
    beq loc_0be821
    lda #$0005
    sta $1faa
    bra loc_0be821

loc_0be821:
    jmp sub_0bc818

loc_0be824:
    jsr sub_0bac85
    .db $80,$3f,$e8,$0a,$60,$e8,$80,$59,$e8,$82,$60,$e8,$80,$77,$e8,$6e
    .db $92,$e8,$80,$63,$e8,$81,$96,$e8

loc_0be83f:
    lda #$0020
    jsl QueueSound
    ldy #$0000
    ldx $1f9c,y
    lda #$0032
    sta $14,x
    lda #$e98e
    sta $04,x
    jmp sub_0bc818

loc_0be859:
    lda #$002b
    jsl QueueSound

loc_0be860:
    jmp sub_0bc818

loc_0be863:
    lda #$ffff
    sta $1fdc
    stz $1fd4
    stz $1fb6
    stz $1fb8
    jsl sub_0bef7a
    rts

loc_0be877:
    ldy #$0004
    ldx $1f9c,y
    jsr sub_0bc866
    ldy #$0002
    ldx $1f9c,y
    jsr sub_0bc866
    ldy #$0000
    ldx $1f9c,y
    jsr sub_0bc866

loc_0be892:
    jsr sub_0bc818
    rts

loc_0be896:
    rts

sub_0be897:
    sty WRDIVL
    sep #$20
.a8
    lda #$0a
    sta WRDIVB
    rep #$20
.a16
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldy RDDIVL
    lda RDMPYL
    rts

sub_0be8b1:
    phy
    tay
    jsr sub_0be897
    sta $02
    jsr sub_0be897
    asl a
    asl a
    asl a
    asl a
    ora $02
    ply
    pha
    lsr a
    lsr a
    lsr a
    lsr a
    jsr sub_0be8cb
    pla

sub_0be8cb:
    and #$000f
    ora #$00c0
    and #$00ff
    ora #$3000
    ldx $1e90
    sta $7ee841,x
    tya
    sta $7ee83f,x
    clc
    adc #$0008
    inx
    inx
    inx
    inx
    stx $1e90
    tay
    rts

sub_0be8f0:
    ldx $1e8e
    lda $7ef59e
    asl a
    asl a
    asl a
    asl a
    adc #$003f
    sta $0e,x
    rts

loc_0be901:
    jsr sub_0bc406
    ldy #$cad6
    lda $7ef530
    beq loc_0be91b
    ldy #$cac1
    ldx $1e8e
    lda $0e,x
    xba
    ora $0a,x
    jmp sub_0bc428

loc_0be91b:
    ldx $1e8e
    lda $0e,x
    xba
    ora $0a,x
    jsr sub_0bc428
    ldy #$15e0
    lda $7ef52e
    jsr sub_0be8b1
    rts

loc_0be931:
    jmp sub_0bc406

loc_0be934:
    ldx $1e8e
    lda $1fd2
    asl a
    asl a
    asl a
    asl a
    adc #$003f
    sta $0e,x
    jmp sub_0bc406

loc_0be946:
    jsr sub_0be8f0
    jmp sub_0bc406
    .db $a9,$3f,$00,$ae,$8e,$1e,$95,$0e,$20,$06,$c4,$a9,$4f,$00,$20,$6f
    .db $e9,$a9,$5f,$00,$20,$6f,$e9,$a9,$6f,$00,$20,$6f,$e9,$a9,$7f,$00
    .db $4c,$6f,$e9,$ae,$8e,$1e,$95,$0e,$4c,$1a,$c4

loc_0be977:
    jsr sub_0be8f0
    lda $1fd4
    cmp #$0003
    bcs loc_0be98d
    asl a
    asl a
    asl a
    adc #$002f
    sta $0a,x
    jmp sub_0bc406

loc_0be98d:
    rts

loc_0be98e:
    ldx $1e8e
    lda $1fb8
    asl a
    tay
    lda $1fb6
    asl a
    asl a
    asl a
    asl a
    adc $e9b1,y
    sta $0a,x
    lda $1fb8
    asl a
    asl a
    asl a
    asl a
    adc #$009f
    sta $0e,x
    jmp sub_0bc406
    .db $34,$00,$2c,$00,$34,$00

sub_0be9b7:
    lda $7ef59e
    ora #$1b00
    jsr sub_0b8c0b
    clc
    adc #$3928
    sta $50
    lda #$0070
    sta $52
    lda $1fb8
    ora #$0b00
    jsr sub_0b8c0b
    clc
    adc $1fb6
    tax
    ldy $1fd4
    lda $ea28,x
    and #$00ff
    cmp #$00f0
    beq loc_0bea02
    cmp #$00f1
    beq loc_0bea1d
    cmp #$00f2
    beq loc_0bea21
    sep #$20
.a8
    sta [$50],y
    rep #$20
.a16
    jsr sub_0bf3fd
    jsr sub_0be603
    inc $1fd4
    rts

loc_0bea02:
    tya
    dec a
    bmi loc_0bea0e
    sta $1fd4
    cmp #$0002
    bcs loc_0bea27

loc_0bea0e:
    sep #$20
.a8
    lda #$28
    sta [$50],y
    rep #$20
.a16
    jsr sub_0bf3fd
    jsr sub_0be603
    rts

loc_0bea1d:
    tya
    inc a
    bra loc_0bea24

loc_0bea21:
    lda #$0004

loc_0bea24:
    sta $1fd4

loc_0bea27:
    rts
    .db $0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19
    .db $1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$23,$24,$25,$26,$27,$f0,$f1
    .db $f2

sub_0bea49:
    lda $1fb6
    ldx $1fb8
    phx
    pha
    jsr sub_0bea68
    pla
    plx
    cmp $1fb6
    bne loc_0bea60
    cpx $1fb8
    beq loc_0bea67

loc_0bea60:
    lda #$0018
    jsl QueueSound

loc_0bea67:
    rts

sub_0bea68:
    jsr sub_0beab7
    jsr sub_0beac5
    ldy $1fb8
    lda $eab4,y
    and #$00ff
    sta $00e4
    lda $1fb6
    bmi loc_0bea9b
    cmp $00e4
    beq loc_0beab0
    bcc loc_0beab0
    lda $1fb8
    cmp #$0002
    bcs loc_0bea96
    inc $1fb8
    lda #$0000
    bra loc_0beab0

loc_0bea96:
    lda $00e4
    bra loc_0beab0

loc_0bea9b:
    lda $1fb8
    bne loc_0beaa5
    lda #$0000
    bra loc_0beab0

loc_0beaa5:
    dec a
    tay
    sta $1fb8
    lda $eab4,y
    and #$00ff

loc_0beab0:
    sta $1fb6
    rts
    .db $0a,$0a,$0a

sub_0beab7:
    lda $1fba
    bit #$0800
    bne loc_0beadb
    bit #$0400
    bne loc_0beae5
    rts

sub_0beac5:
    lda $1fba
    bit #$0200
    bne loc_0bead7
    bit #$0100
    bne loc_0bead3
    rts

loc_0bead3:
    inc $1fb6
    rts

loc_0bead7:
    dec $1fb6
    rts

loc_0beadb:
    lda $1fb8
    dec a
    bmi loc_0beae4
    sta $1fb8

loc_0beae4:
    rts

loc_0beae5:
    lda $1fb8
    inc a
    cmp #$0003
    bcs loc_0beaf1
    sta $1fb8

loc_0beaf1:
    rts
    .db $29,$29,$2a,$2b,$2c,$2d,$2d,$2d,$2e,$2f,$30,$31,$32,$33,$33,$33
    .db $34,$35,$36,$37,$38,$39,$3a,$3b

sub_0beb0a:
    sty $0a
    sep #$20
.a8
    lda #$3c
    sta $7ffa29,x
    inx
    lda #$3c
    sta $7ffa29,x
    inx
    lda #$3c
    sta $7ffa29,x
    inx
    phx
    lda #$00
    xba
    ldx $0a
    lda $703928,x
    tay
    plx
    and #$3f
    sta $7ffa29,x
    inx
    phx
    lda #$00
    xba
    ldx $0a
    lda $703929,x
    tay
    plx
    and #$3f
    sta $7ffa29,x
    inx
    phx
    lda #$00
    xba
    ldx $0a
    lda $70392a,x
    tay
    plx
    and #$3f
    sta $7ffa29,x
    inx
    lda #$3c
    sta $7ffa29,x
    inx
    lda #$3f
    sta $7ffa29,x
    inx
    lda #$3c
    sta $7ffa29,x
    inx
    phx
    lda #$00
    xba
    ldx $0a
    lda $70392b,x
    tay
    plx
    and #$0f
    tay
    lda $eb02,y
    sta $7ffa29,x
    inx
    phx
    lda #$00
    xba
    ldx $0a
    lda $70392c,x
    tay
    plx
    and #$0f
    tay
    lda $eb02,y
    sta $7ffa29,x
    inx
    lda #$3e
    sta $7ffa29,x
    inx
    lda #$3c
    sta $7ffa29,x
    inx
    lda #$45
    sta $7ffa29,x
    inx
    lda #$3c
    sta $7ffa29,x
    inx
    jsr sub_0bef42
    lda #$3e
    sta $7ffa29,x
    inx
    lda #$3c
    sta $7ffa29,x
    inx
    jsr sub_0bef2c
    lda #$3c
    sta $7ffa29,x
    inx
    phx
    lda #$00
    xba
    ldx $0a
    lda $703932,x
    tay
    plx
    and #$0f
    tay
    lda $eafa,y
    sta $7ffa29,x
    inx
    lda #$ff
    sta $7ffa29,x
    inx
    rep #$20
.a16
    rts

sub_0bebf7:
    sty $08
    stx $97
    stz $02

loc_0bebfd:
    ldx $97
    lda $7ffa29,x
    inx
    stx $97
    and #$00ff
    cmp #$00ff
    beq loc_0bec23
    asl a
    tax
    lda $ecc9,x
    tay
    lda $0000,y
    and #$00ff
    asl a
    tax
    jsr (tbl_0bec24,x)
    stx $08
    bra loc_0bebfd

loc_0bec23:
    rts

tbl_0bec24:
    .db $b2,$ec,$87,$ec,$48,$ec,$39,$ec,$2e,$ec

loc_0bec2e:
    lda $0000,y
    and #$ff00
    sta $02
    ldx $08
    rts

loc_0bec39:
    lda $0001,y
    and #$00ff
    tay
    ldx $08

loc_0bec42:
    inx
    inx
    dey
    bne loc_0bec42
    rts

loc_0bec48:
    ldx $08
    lda $0001,y
    eor $02
    sta $7fcc00,x
    lda $0003,y
    eor $02
    sta $7fcc02,x
    lda $0005,y
    eor $02
    sta $7fcc04,x
    lda $0007,y
    eor $02
    sta $7fcc40,x
    lda $0009,y
    eor $02
    sta $7fcc42,x
    lda $000b,y
    eor $02
    sta $7fcc44,x
    inx
    inx
    inx
    inx
    inx
    inx
    rts

loc_0bec87:
    ldx $08
    lda $0001,y
    eor $02
    sta $7fcc00,x
    lda $0003,y
    eor $02
    sta $7fcc02,x
    lda $0005,y
    eor $02
    sta $7fcc40,x
    lda $0007,y
    eor $02
    sta $7fcc42,x
    inx
    inx
    inx
    inx
    rts

loc_0becb2:
    ldx $08
    lda $0001,y
    eor $02
    sta $7fcc00,x
    lda $0003,y
    eor $02
    sta $7fcc40,x
    inx
    inx
    rts
    .incbin "data/05ecc9-05eef9.bin"

sub_0beef9:
    ldy $1fbc
    lda $1292
    and #$0f00
    sty $04
    clc
    tay
    beq loc_0bef16
    sec
    ldy $04
    beq loc_0bef15
    cpy #$000f
    bcc loc_0bef15
    ldy #$000c

loc_0bef15:
    iny

loc_0bef16:
    bcs loc_0bef1b
    lda #$0000

loc_0bef1b:
    sty $1fbc
    sta $04
    lda $1296
    and #$f0ff
    ora $04
    sta $1fba
    rts

sub_0bef2c:
.a8
    php
    rep #$20
.a16
    lda #$0003
    sta $04
    phx
    ldx $0a
    lda $703930,x
    plx
    sta $50
    stz $52
    bra loc_0bef5d

sub_0bef42:
.a8
    php
    rep #$20
.a16
    lda #$0006
    sta $04
    phx
    ldx $0a
    lda $70392d,x
    sta $50
    lda $70392f,x
    and #$00ff
    sta $52
    plx

loc_0bef5d:
    txa
    clc
    adc $04
    tax
    phx

loc_0bef63:
    ldy #$000a
    jsl sub_7f6ddd
    sep #$20
.a8
    sta $7ffa28,x
    rep #$20
.a16
    dex
    dec $04
    bne loc_0bef63
    plx
    plp
.a8
    rts

sub_0bef7a:
    phb
    phk
    plb
    php
    rep #$30
.a16
    jsr sub_0bc850
    jsr sub_0bc87e
    .db $00,$3f,$ce,$ef,$00,$e1
    lda $7ef528
    beq loc_0befa2
    lda #$0000
    sta $7ef528
    jsr sub_0bc87e
    .db $01,$41,$01,$e9,$b8,$15

loc_0befa2:
    plp
.a8
    plb
    rtl

sub_0befa5:
.a16
    phb
    phk
    plb
    php
    rep #$30
    sty $1e90
    ldy #$0000
    ldx $1f9c,y
    lda $3a
    sta $0a,x
    lda $3c
    sta $0e,x
    lda $5f
    beq loc_0befc5
    lda #$0040
    sta $14,x

loc_0befc5:
    jsr sub_0bc818
    ldy $1e90
    plp
    plb
    rtl

loc_0befce:
    jmp sub_0bc406

sub_0befd1:
    php
    rep #$30
    phx
    phy
    ldx #$f074
    bra loc_0bf049

sub_0befdb:
    php
    rep #$30
    phx
    phy
    ldx #$f115
    bra loc_0bf049

sub_0befe5:
.a8
.i8
    php
    rep #$30
.a16
.i16
    phx
    phy
    ldx #$f128
    bra loc_0bf049

sub_0befef:
.a8
    php
    rep #$30
.a16
    phx
    phy
    ldx #$f14a
    bra loc_0bf049

sub_0beff9:
    php
    rep #$30
    phx
    phy
    ldx #$f088
    bra loc_0bf049

sub_0bf003:
    php
    rep #$30
    phx
    phy
    ldx #$f0cb
    bra loc_0bf049

sub_0bf00d:
.a8
    php
    rep #$30
.a16
    phx
    phy
    ldx #$f173
    bra loc_0bf049

sub_0bf017:
    php
    rep #$30
    phx
    phy
    ldx #$f195
    bra loc_0bf049

sub_0bf021:
.a8
.i8
    php
    rep #$30
.a16
.i16
    phx
    phy
    ldx #$f1be
    bra loc_0bf049

sub_0bf02b:
    php
    rep #$30
    phx
    phy
    ldx #$f24c
    bra loc_0bf049

sub_0bf035:
    php
    rep #$30
    phx
    phy
    ldx #$f321
    bra loc_0bf049

sub_0bf03f:
.a8
.i8
    php
    rep #$30
.a16
.i16
    phx
    phy
    ldx #$f2da
    bra loc_0bf049

loc_0bf049:
    phb
    phk
    plb
    sep #$20
.a8
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    rep #$30
.a16
    stx $1e64
    ldx #$1e64
    jsr ($0000,x)
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    plb
    ply
    plx
    plp
.i8
    rtl

loc_0bf074:
.a16
.i16
    lda $703917
    and #$003f
    sta $7ef52c
    rts
    .db $01,$02,$04,$08,$10,$20,$40,$80

loc_0bf088:
    lda $703916
    and #$0002
    beq loc_0bf09e
    lda #$0001
    ora $001dd0
    sta $001dd0
    bra loc_0bf0a9

loc_0bf09e:
    lda #$fffe
    and $001dd0
    sta $001dd0

loc_0bf0a9:
    lda $703916
    and #$0004
    beq loc_0bf0bf
    lda #$0080
    ora $001dcf
    sta $001dcf
    bra loc_0bf0ca

loc_0bf0bf:
    lda #$ff7f
    and $001dcf
    sta $001dcf

loc_0bf0ca:
    rts

loc_0bf0cb:
    jsl sub_0bf03f
    lda $001dd0
    and #$0001
    beq loc_0bf0e5
    lda #$0002
    ora $703916
    sta $703916
    bra loc_0bf0f0

loc_0bf0e5:
    lda #$fffd
    and $703916
    sta $703916

loc_0bf0f0:
    lda $001dcf
    and #$0080
    beq loc_0bf106
    lda #$0004
    ora $703916
    sta $703916
    bra loc_0bf111

loc_0bf106:
    lda #$fffb
    and $703916
    sta $703916

loc_0bf111:
    jsr sub_0bf3fd
    rts

loc_0bf115:
    jsl sub_0bf03f
    lda #$0010
    ora $703916
    sta $703916
    jsr sub_0bf3fd
    rts

loc_0bf128:
    lda $703916
    and #$0008
    beq loc_0bf13e
    lda #$0001
    ora $001d1e
    sta $001d1e
    bra loc_0bf149

loc_0bf13e:
    lda #$fffe
    and $001d1e
    sta $001d1e

loc_0bf149:
    rts

loc_0bf14a:
    jsl sub_0bf03f
    lda $001d1e
    and #$0001
    beq loc_0bf164
    lda #$0008
    ora $703916
    sta $703916
    bra loc_0bf16f

loc_0bf164:
    lda #$fff7
    and $703916
    sta $703916

loc_0bf16f:
    jsr sub_0bf3fd
    rts

loc_0bf173:
    lda $703916
    and #$0001
    beq loc_0bf189
    lda #$0080
    ora $001de0
    sta $001de0
    bra loc_0bf194

loc_0bf189:
    lda #$ff7f
    and $001de0
    sta $001de0

loc_0bf194:
    rts

loc_0bf195:
    jsl sub_0bf03f
    lda $001de0
    and #$0080
    beq loc_0bf1af
    lda #$0001
    ora $703916
    sta $703916
    bra loc_0bf1ba

loc_0bf1af:
    lda #$fffe
    and $703916
    sta $703916

loc_0bf1ba:
    jsr sub_0bf3fd
    rts

loc_0bf1be:
    lda $703918
    sta $7ed7d9
    lda $70391a
    sta $7ed7db
    lda $70391c
    sta $7ed7dd
    lda $70391e
    sta $7ed7df
    sep #$20
.a8
    lda $703920
    sta $7ed7e1
    lda $703921
    sta $7ed7e2
    lda $703922
    sta $7ed7e3
    rep #$20
.a16
    ldx #$0000
    ldy #$0010
    lda $7ed7d9

loc_0bf204:
    lsr a
    bcc loc_0bf208
    inx

loc_0bf208:
    dey
    bne loc_0bf204
    ldy #$0010
    lda $7ed7db

loc_0bf212:
    lsr a
    bcc loc_0bf216
    inx

loc_0bf216:
    dey
    bne loc_0bf212
    ldy #$0010
    lda $7ed7dd

loc_0bf220:
    lsr a
    bcc loc_0bf224
    inx

loc_0bf224:
    dey
    bne loc_0bf220
    ldy #$0010
    lda $7ed7df

loc_0bf22e:
    lsr a
    bcc loc_0bf232
    inx

loc_0bf232:
    dey
    bne loc_0bf22e
    txa
    sta $7ef52e
    cmp #$0034
    bcc loc_0bf244
    lda #$ffff
    bra loc_0bf247

loc_0bf244:
    lda #$0000

loc_0bf247:
    sta $7ef530
    rts

loc_0bf24c:
    jsl sub_0bf03f
    lda $7ed7d9
    sta $703918
    lda $7ed7db
    sta $70391a
    lda $7ed7dd
    sta $70391c
    lda $7ed7df
    sta $70391e
    sep #$20
.a8
    lda $7ed7e1
    sta $703920
    lda $7ed7e2
    sta $703921
    lda $7ed7e3
    sta $703922
    rep #$20
.a16
    jsr sub_0bf3fd
    rts

sub_0bf290:
.a8
    php
    sep #$20
    lda $5e
    pha
    lda $5e
    and #$f7
    sta $5e
    sta $00303a
    lda $7ef59c
    bne loc_0bf2c2
    lda $001baf
    cmp $70399b
    bcc loc_0bf2ce
    beq loc_0bf2b4
    bcs loc_0bf2c2

loc_0bf2b4:
    rep #$20
.a16
    lda $001bad
    cmp $703999
    beq loc_0bf2ce
    bcc loc_0bf2ce

loc_0bf2c2:
.a8
    sep #$20
    pla
    sta $5e
    sta $00303a
    plp
    sec
    rtl

loc_0bf2ce:
.a16
    sep #$20
.a8
    pla
    sta $5e
    sta $00303a
    plp
    clc
    rtl

loc_0bf2da:
.a16
    lda #$349b
    cmp $703914
    bne loc_0bf2ef
    ldx #$3916
    jsr sub_0bf3e4
    cmp $703912
    beq loc_0bf320

loc_0bf2ef:
    lda #$349b
    cmp $7039af
    bne loc_0bf314
    ldx #$39b1
    jsr sub_0bf3e4
    cmp $7039ad
    bne loc_0bf314
    phb
    ldx #$39ad
    ldy #$3912
    lda #$009a
    mvn $70,$70
    plb
    bra loc_0bf320

loc_0bf314:
    lda #$349b
    sta $703914
    jsr sub_0bf563
    bra loc_0bf320

loc_0bf320:
    rts

loc_0bf321:
    jsl sub_0bf03f
    lda $7ef59c
    bne loc_0bf33b
    jsl sub_0bf290
    bcc loc_0bf33b
    jsr sub_0bf41a
    lda #$00ff
    sta $7ef59c

loc_0bf33b:
    rts

loc_0bf33c:
    lda $1fd2
    ora #$1b00
    jsr sub_0b8c0b
    tax
    sep #$20
.a8
    lda $70392d,x
    sta $001bad
    lda $70392e,x
    sta $001bae
    lda $70392f,x
    sta $001baf
    lda $70392b,x
    sta $7ed810
    lda $70392c,x
    sta $7ed811
    rep #$20
.a16
    lda $703930,x
    sta $7eda5b
    sep #$20
.a8
    lda $703932,x
    sta $7ed82e
    lda $703933,x
    sta $7edb49
    lda $703934,x
    sta $7eda33
    lda $703935,x
    sta $7eda3d
    lda $703936,x
    sta $7ed7f2
    asl a
    sta $001ba3
    lda $703937,x
    sta $7eda27
    lda $70393c,x
    sta $7ed816
    lda $70393d,x
    sta $7ed817
    lda $70393e,x
    sta $7ed818
    rep #$20
.a16
    lda $70393f,x
    sta $7ed830
    lda $703938,x
    sta $7ed7e4
    lda $70393a,x
    sta $7ed7e6
    rts

sub_0bf3e4:
    stz $1e62
    ldy #$0097

loc_0bf3ea:
    lda $700000,x
    and #$00ff
    clc
    adc $1e62
    sta $1e62
    inx
    dey
    bne loc_0bf3ea
    rts

sub_0bf3fd:
    phx
    phy
    ldx #$3916
    jsr sub_0bf3e4
    sta $703912
    phb
    ldx #$3912
    ldy #$39ad
    lda #$009a
    mvn $70,$70
    plb
    ply
    plx
    rts

sub_0bf41a:
    ldy #$0005
    ldx #$006c

loc_0bf420:
    sep #$20
.a8
    lda $001baf
    cmp $70392f,x
    rep #$20
.a16
    bcc loc_0bf44a
    beq loc_0bf432
    bcs loc_0bf43e

loc_0bf432:
    lda $001bad
    cmp $70392d,x
    beq loc_0bf44a
    bcc loc_0bf44a

loc_0bf43e:
    dey
    jsr sub_0bf460
    txa
    sec
    sbc #$001b
    tax
    bpl loc_0bf420

loc_0bf44a:
    cpy #$0005
    bne loc_0bf453
    jsl sub_008006

loc_0bf453:
    tya
    sta $7ef59e
    lda #$00ff
    sta $7ef59c
    rts

sub_0bf460:
    cpy #$0004
    beq loc_0bf47c
    phy
    phx
    ldy #$001b

loc_0bf46a:
.a8
    sep #$20
    lda $703926,x
    sta $703941,x
    inx
    dey
    bne loc_0bf46a
    rep #$20
.a16
    plx
    ply

loc_0bf47c:
    sep #$20
.a8
    lda #$01
    sta $703926,x
    lda $001bad
    sta $70392d,x
    lda $001bae
    sta $70392e,x
    lda $001baf
    sta $70392f,x
    lda #$28
    sta $703928,x
    sta $703929,x
    sta $70392a,x
    lda $7ed810
    sta $70392b,x
    lda $7ed811
    sta $70392c,x
    lda $7eda5b
    sta $703930,x
    lda $7eda5c
    sta $703931,x
    lda $7ed82e
    and #$07
    sta $703932,x
    lda $7edb49
    sta $703933,x
    lda $7eda33
    sta $703934,x
    lda $7eda3d
    sta $703935,x
    lda $7ed7f2
    sta $703936,x
    lda $7eda27
    sta $703937,x
    lda $7ed816
    sta $70393c,x
    lda $7ed817
    sta $70393d,x
    lda $7ed818
    sta $70393e,x
    rep #$20
.a16
    lda $7ed830
    sta $70393f,x
    lda $7ed7e4
    sta $703938,x
    lda $7ed7e6
    sta $70393a,x
    sep #$20
.a8
    lda $703932,x
    bne loc_0bf55c
    phy
    lda $70392b,x
    and #$07
    tay
    lda $f080,y
    ora $703917
    sta $703917
    lda $70392c,x
    and #$07
    tay
    lda $f080,y
    ora $703917
    sta $703917
    ply

loc_0bf55c:
    rep #$20
.a16
    jsr sub_0bf3fd
    rts
    .db $60

sub_0bf563:
    rep #$30
    ldx #$0000
    sep #$20

loc_0bf56a:
.a8
    lda $0be56c,x
    sta $703916,x
    inx
    cpx #$0097
    bne loc_0bf56a
    rep #$20
.a16
    jsl sub_0bf021
    jsl sub_0beff9
    jsl sub_0bf00d
    jsr sub_0bf3fd
    rts

sub_0bf58a:
.a8
    phb
    phk
    plb
    php
    rep #$30
.a16
    jsl sub_0bf03f
    jsr sub_0be603
    jsl sub_0bf021
    stz $1fdc
    lda #$0001
    sta $1fda
    lda #$0001
    sta $1faa
    lda $1b84
    bit #$0800
    beq loc_0bf5c0
    lda #$0800
    trb $1b84
    lda #$000e
    sta $1faa
    bra loc_0bf5c6

loc_0bf5c0:
    stz $1fd6
    stz $1fd2

loc_0bf5c6:
    plp
    plb
    rtl

sub_0bf5c9:
.a8
    rtl

sub_0bf5ca:
    phb
    phk
    plb
    php
    rep #$30
.a16
    stz $1e90
    jsr sub_0beef9
    jsr sub_0bf6c5
    lda $1fdc
    plp
    plb
    rtl
    .db $ac,$d6,$1f,$ad,$ba,$1f,$89,$00,$20,$f0,$0b,$c8,$c0,$03,$00,$90
    .db $1a,$a0,$00,$00,$80,$15,$89,$00,$04,$d0,$0a,$89,$00,$08,$f0,$15
    .db $88,$10,$08,$30,$10,$c8,$c0,$03,$00,$b0,$0a,$a9,$03,$00,$22,$09
    .db $6e,$7f,$8c,$d6,$1f,$ac,$d6,$1f,$60,$ac,$d2,$1f,$ad,$ba,$1f,$89
    .db $00,$20,$f0,$0b,$c8,$c0,$05,$00,$90,$1a,$a0,$00,$00,$80,$15,$89
    .db $00,$04,$d0,$0a,$89,$00,$08,$f0,$15,$88,$10,$08,$30,$10,$c8,$c0
    .db $05,$00,$b0,$0a,$a9,$03,$00,$22,$09,$6e,$7f,$8c,$d2,$1f,$ac,$d2
    .db $1f,$60,$ac,$da,$1f,$ad,$ba,$1f,$89,$00,$20,$f0,$0b,$c8,$c0,$02
    .db $00,$90,$1a,$a0,$00,$00,$80,$15,$89,$00,$01,$d0,$0a,$89,$00,$02
    .db $f0,$15,$88,$10,$08,$30,$10,$c8,$c0,$02,$00,$b0,$0a,$a9,$03,$00
    .db $22,$09,$6e,$7f,$8c,$da,$1f,$ac,$da,$1f,$60,$ae,$8e,$1e,$b5,$20
    .db $1a,$c9,$14,$00,$b0,$02,$95,$20,$4c,$06,$c4,$ae,$8e,$1e,$ac,$da
    .db $1f,$b9,$ab,$f6,$29,$ff,$00,$95,$0a,$4c,$06,$c4,$b0,$d4,$60,$ae
    .db $8e,$1e,$ac,$d6,$1f,$b9,$bf,$f6,$29,$ff,$00,$95,$0e,$4c,$06,$c4
    .db $a7,$b7,$c7,$4c,$06,$c4

sub_0bf6c5:
    ldx #$1faa
    stx $1fa8
    jsr sub_0bac23
    inc $2bf6
    sbc [$32],y
    sbc [$ad],y
    sbc [$bc],y
    sbc [$0e],y
    sed
    eor $f95af8
    asl $8bf9,x
    sbc $f9cc,y
    sta ($fa)
    clc
    xce
.a8
.i8
    clc
    xce
    sbc $f7ddf6
    rts
    .incbin "data/05f6ef-060000.bin"
