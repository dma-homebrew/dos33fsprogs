; 248 bytes

; zero page locations
HGR_SHAPE	=	$1A
SEEDL		=	$4E
FRAME		=	$A4
OUR_ROT		=	$A5
RND_EXP		=	$C9
HGR_PAGE	=	$E6
HGR_SCALE	=	$E7
HGR_ROTATION	=	$F9
SCALE		=	$FC
XPOS		=	$FD
YPOS		=	$FF

; soft switches
; Soft Switches
KEYPRESS	=	$C000
KEYRESET	=	$C010
SPEAKER		=	$C030
PAGE0           =       $C054
PAGE1           =       $C055

; ROM calls
RND		=	$EFAE
HGR2		=	$F3D8
HCLR		=	$F3F2
HCLR_COLOR	=	$F3F4
HPOSN		=	$F411
XDRAW0		=	$F65D
WAIT		=	$FCA8	; delay 1/2(26+27A+5A^2) us

dsr_demo:

	;=========================================
	; SETUP
	;=========================================


	lda	#$20		; 2	; set HGR page0
	sta	HGR_PAGE	; 2
	sta	XPOS		; 2	; setup XPOS for future

	lda	#$ff		; 2
	jsr	HCLR_COLOR	; 3	; clear HGR page0 to white

	jsr	HGR2		; 3	; set/clear HGR page1 to black
					; Hi-res graphics, no text at bottom
					; Y=0, A=$60 after this call

	sty	FRAME		; 2
	sty	OUR_ROT		; 2

	iny			; 1	; set shape table scale to 1
	sty	HGR_SCALE	; 2

	;=========================
	; draw crowd
	;=========================

	; XPOS already 32 from earlier

	lda	#180		; 2
	sta	YPOS		; 2

crowd_loop:

	jsr	xdraw		; 3	; xdraw on page1

	lsr	HGR_PAGE	; 2	; switch to page0 ($40 -> $20)

	jsr	xdraw		; 3	; xdraw on page 0

	asl	HGR_PAGE	; 2	; switch back to page1 $20 -> $40

	;	clc	; carry should always be 0 from asl
	lda	XPOS		; 2
	adc	#16		; 2
	sta	XPOS		; 2
	cmp	#240		; 2
	bcc	crowd_loop	; 2

	; get ready for DSR loop

	ldx	#<shape_dsr	; 2	; point to dSr shape
	stx	shape_smc+1	; 3	; update self-modify code

			;====================================
			;	52 bytes to init/draw crowd

	;=========================================
	; OFFSCREEN RESET
	;=========================================

reset_loop:
	lda	#10		; 2	; set initial x,y
	sta	XPOS		; 2
	sta	YPOS		; 2

	inc	HGR_SCALE	; 2	; increment scale

	;=========================================
	; MAIN LOOP
	;=========================================

main_loop:

	inc	OUR_ROT		; 2
	inc	OUR_ROT		; 2

	; increment FRAME

	inc	FRAME		; 2
	lda	FRAME		; 2

	and	#$1f		; 2
	beq	long_frame	; 2

	ldy	#24		; 2
	jsr	draw_and_beep	; 3

done_frame:

	;========================
	; move dSr
	;========================

	lda	YPOS
	adc	#2
	sta	YPOS

	lda	XPOS
	adc	#5
	sta	XPOS
	cmp	#250
	bcs	reset_loop
	bcc	main_loop


	;===========================
	; long frame
	;===========================

long_frame:

	bit	PAGE0		; 3	; switch to page0
	lsr	HGR_PAGE	; 2	; switch draw target to page0

	jsr	draw_arm	; 3

	asl	HGR_SCALE	; 2	; make twice as big

	ldy	#235		; 2	; long tone
	jsr	draw_and_beep	; 3	; draw and beep

	bit	PAGE1		; 3	; display page back to page1

	lsr	HGR_SCALE	; 2	; switch scale back

	asl	HGR_PAGE	; 2	; switch draw page to page1


	bpl	done_frame	; 2	; return (can make 2 if can guarantee)
					; a flag value?


	;=======================
	; xdraw
	;=======================

xdraw:
	; setup X and Y co-ords

	ldy	#0		; XPOSH always 0 for us
	ldx	XPOS
	lda	YPOS
	jsr	HPOSN		; X= (y,x) Y=(a)

shape_smc:
	ldx	#<shape_person	; point to our shape
xdraw_custom_shape:
	ldy	#>shape_person

rot_smc:
	lda	OUR_ROT		; set rotation

	jmp	XDRAW0		; XDRAW 1 AT X,Y
				; Both A and X are 0 at exit





shape_person:
; Person, shoulders up

;.byte	$01,$00,$04,$00,
.byte	$2d,$25,$3c,$24
.byte	$2c,$2c,$35,$37,$6f,$25,$16,$3f
.byte	$77,$2d,$1e,$37,$2d,$2d,$15,$3f
.byte	$3f,$3f,$3f,$3f,$07,$00

shape_arm:
.byte	$49,$49,$49,$24
.byte	$24,$24,$ac,$36,$36,$36,$00

shape_dsr:
.byte	$2d,$36,$ff,$3f
.byte	$24,$ad,$22,$24,$94,$21,$2c,$4d
.byte	$91,$3f,$36,$00

	;====================
	; draw arm
	;=====================
draw_arm:

	lda	HGR_SCALE
	pha

	lda	#1
	sta	HGR_SCALE

	lda	FRAME
	and	#$f0			; 32, 64, 96, 128, 160, 192, 224, 256
	beq	skip_arm
	tax
	ldy	#0		; setup X and Y co-ords
	lda	#180
	jsr	HPOSN		; X= (y,x) Y=(a)

	ldx	#<shape_arm	; 2	; point to arm shape
	jsr	xdraw_custom_shape

skip_arm:
	pla
	sta	HGR_SCALE

	rts




	;==========================
	; draw/beep/undraw
	;==========================
draw_and_beep:

	sty	tone_smc+1

	jsr	xdraw

	;===========================
	; BEEP (inlined)
	;===========================
beep:
	lda	FRAME		; 2
	and	#$3
	beq	actual_beep

nobeep:
	lda	#100
	jsr	WAIT
	jmp	done_forever

actual_beep:
	; BEEP
	; repeat 30 times
	lda	#30			; 2
tone1_loop:

tone_smc:

	ldy	#24			; 2
loopC:	ldx	#6			; 2
loopD:	dex				; 1
	bne	loopD			; 2
	dey				; 1
	bne	loopC			; 2

	bit	SPEAKER			; 3	; click speaker

	sec				; 1
	sbc	#1			; 2
	bne	tone1_loop		; 2

	; Try X=6 Y=21 cycles=757
	; Try X=6 Y=24 cycles=865
	; Try X=7 Y=235 cycles=9636

;	ldy	#24
;	sty	tone_smc+1

done_forever:
	lda	FRAME
	beq	done_forever

	jmp	xdraw		; draw




