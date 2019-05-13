; VMW Chiptune Dumper

; for debug purposes prints the raw values to screen
; we re-route this to the printer in Slot #1 for debugging

.include	"zp.inc"

PT3_LOC = $3000

NUM_FILES	EQU	15


	;=============================
	; Setup
	;=============================
pt3_setup:
	jsr     HOME
	jsr     TEXT

	; Init disk code

	jsr	rts_init

	; init variables

	lda	#0
	sta	DRAW_PAGE
	sta	DONE_PLAYING
	sta	WHICH_FILE


	;==================
	; load first song
	;==================

	jsr	new_song


	;============================
	; Loop forever
	;============================
main_loop:

	jsr	pt3_make_frame

	lda	FRAMEH
	jsr	PRBYTE
	lda	FRAMEL
	jsr	PRBYTE
	lda	#':'+$80
	jsr	COUT
	lda	#' '+$80
	jsr	COUT

	; A
	lda	#'A'+$80
	jsr	COUT
	lda	#':'+$80
	jsr	COUT
	lda	REGISTER_DUMP+1
	jsr	PRBYTE
	lda	REGISTER_DUMP+0
	jsr	PRBYTE
	lda	#' '+$80
	jsr	COUT

	; B
	lda	#'B'+$80
	jsr	COUT
	lda	#':'+$80
	jsr	COUT
	lda	REGISTER_DUMP+3
	jsr	PRBYTE
	lda	REGISTER_DUMP+2
	jsr	PRBYTE
	lda	#' '+$80
	jsr	COUT

	; C
	lda	#'C'+$80
	jsr	COUT
	lda	#':'+$80
	jsr	COUT
	lda	REGISTER_DUMP+5
	jsr	PRBYTE
	lda	REGISTER_DUMP+4
	jsr	PRBYTE
	lda	#' '+$80
	jsr	COUT

	; N
	lda	#'N'+$80
	jsr	COUT
	lda	#':'+$80
	jsr	COUT
	lda	REGISTER_DUMP+6
	jsr	PRBYTE
	lda	#' '+$80
	jsr	COUT

	; M
	lda	#'M'+$80
	jsr	COUT
	lda	#':'+$80
	jsr	COUT
	lda	REGISTER_DUMP+7
	jsr	PRBYTE
	lda	#' '+$80
	jsr	COUT

	jsr	CROUT1

	ldx	#6
six_space:
	lda	#' '+$80
	jsr	COUT
	dex
	bne	six_space

	; A amp
	lda	#'V'+$80
	jsr	COUT
	lda	#':'+$80
	jsr	COUT
	lda	REGISTER_DUMP+8
	jsr	PRBYTE
	lda	#' '+$80
	jsr	COUT
	lda	#' '+$80
	jsr	COUT
	lda	#' '+$80
	jsr	COUT

	; B amp
	lda	#'V'+$80
	jsr	COUT
	lda	#':'+$80
	jsr	COUT
	lda	REGISTER_DUMP+9
	jsr	PRBYTE
	lda	#' '+$80
	jsr	COUT
	lda	#' '+$80
	jsr	COUT
	lda	#' '+$80
	jsr	COUT

	; C amp
	lda	#'V'+$80
	jsr	COUT
	lda	#':'+$80
	jsr	COUT
	lda	REGISTER_DUMP+10
	jsr	PRBYTE
	lda	#' '+$80
	jsr	COUT
	lda	#' '+$80
	jsr	COUT
	lda	#' '+$80
	jsr	COUT

	; Envelope
	lda	#'E'+$80
	jsr	COUT
	lda	#':'+$80
	jsr	COUT
	lda	REGISTER_DUMP+12
	jsr	PRBYTE
	lda	REGISTER_DUMP+11
	jsr	PRBYTE

	; Envelope type
	lda	#','+$80
	jsr	COUT
	lda	REGISTER_DUMP+13
	jsr	PRBYTE

	jsr	CROUT1

	inc	FRAMEL
	bne	no_frame_oflo
	inc	FRAMEH
no_frame_oflo:

	lda	FRAMEL
	cmp	#8
	beq	all_done

	lda	DONE_PLAYING
	bne	all_done
	jmp	main_loop

all_done:
	jmp	all_done




	;=================
	; load a new song
	;=================

new_song:

	;=========================
	; Init Variables
	;=========================

	lda	#$0
	sta	FRAME_COUNT


	;===========================
	; Print loading message
	;===========================

;	lda	#<loading_message
;	sta	OUTL
;	lda	#>loading_message
;	sta	OUTH
;	jsr     print_cout


	;===========================
	; Load in PT3 file
	;===========================

	jsr	get_filename

	; needs to be space-padded $A0 30-byte filename

	lda	#<readfile_filename
	sta	namlo
	lda	#>readfile_filename
	sta	namhi

	ldy	#0
	ldx	#30		; 30 chars
name_loop:
	lda	(INL),Y
	beq	space_loop
	ora	#$80
	sta	(namlo),Y
	iny
	dex
	bne	name_loop
	beq	done_name_loop
space_loop:
	lda	#$a0		; pad with ' '
	sta	(namlo),Y
	iny
	dex
	bne	space_loop

done_name_loop:

	; open and read a file
	; loads to whatever it was BSAVED at (default is $2000)

	jsr	read_file		; read PT3 file from disk


	;=========================
	; Print Info
	;=========================

	; NUL terminate the strings we want to print
	lda	#0
	sta	PT3_LOC+$3E
	sta	PT3_LOC+$62

	; print title

	lda	#>(PT3_LOC+$1E)		; point to header title
	sta	OUTH
	lda	#<(PT3_LOC+$1E)
	sta	OUTL

	jsr	print_cout

	jsr	CROUT1

	; Print Author

	lda	#>(PT3_LOC+$42)		; point to header title
	sta	OUTH
	lda	#<(PT3_LOC+$42)
	sta	OUTL

	jsr	print_cout

	jsr	CROUT1
	jsr	CROUT1

	jsr	pt3_init_song

	rts




	;==================
	; Get filename
	;==================
	; WHICH_FILE holds number
	; MAX_FILES has max
	; Scroll through until find
	; point INH:INL to it
get_filename:

	ldy	#0
	ldx	WHICH_FILE

	lda	#<song_list			; point to filename
	sta	INL
	lda	#>song_list
	sta	INH

get_filename_loop:
	cpx	#0
	beq	filename_found

inner_loop:
	iny
	lda	(INL),Y
	bne	inner_loop

	iny

	dex
	jmp	get_filename_loop

filename_found:
	tya
	clc
	adc	INL
	sta	INL
	lda	INH
	adc	#0
	sta	INH

	rts

	;===============================
	; Increment file we want to load
	;===============================
increment_file:
	inc	WHICH_FILE
	lda	WHICH_FILE
	cmp	#NUM_FILES
	bne	done_increment
	lda	#0
	sta	WHICH_FILE
done_increment:
	rts

	;===============================
	; Decrement file we want to load
	;===============================
decrement_file:
	dec	WHICH_FILE
	bpl	done_decrement
	lda	#(NUM_FILES-1)
	sta	WHICH_FILE
done_decrement:
	rts


	;===============
	; print cout
	;===============
print_cout:
	ldy	#0
cout_loop:
	lda	(OUTL),Y
	beq	cout_done

	clc
	adc	#$80
	jsr	COUT

	iny
	jmp	cout_loop

cout_done:
	rts



FRAMEL:	.byte	$00
FRAMEH:	.byte	$00



;==========
; filenames
;==========

song_list:

.include "song_list.inc"

;=========
;routines
;=========
.include	"qkumba_rts.s"
.include	"../asm_routines/keypress_minimal.s"
.include	"pt3_lib.s"

;=========
; strings
;=========
;mocking_message:	.asciiz "LOOKING FOR MOCKINGBOARD IN SLOT #4"
;not_message:		.byte   "NOT "
;found_message:		.asciiz "FOUND"
;done_message:		.asciiz "DONE PLAYING"
;loading_message:	.asciiz "LOADING"
