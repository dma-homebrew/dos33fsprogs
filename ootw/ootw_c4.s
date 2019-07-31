; Ootw for Apple II Lores -- Checkpoint4 (the City)

; by Vince "Deater" Weaver	<vince@deater.net>

.include "zp.inc"
.include "hardware.inc"



ootw_c4:

	; Initialize some variables

	;=======================
	; Run the "intro"
	;=======================
	; just us falling?

ootw_c4_restart:
;	jsr	ootw_c2_intro


	jsr	ootw_city_init

	;=========================
	; c4_new_room
	;=========================
	; enter new room on level4

c4_new_room:
	lda	#0
	sta	GAME_OVER

	jsr	ootw_city

c4_check_done:
	lda	GAME_OVER
	cmp	#$ff
	beq	quit_level

	; only exit if done level
	; FIXME: or quit pressed?

	lda	WHICH_JAIL
	cmp	#11
	bne	c4_new_room


;===========================
; quit_level
;===========================

quit_level:
	jsr	TEXT
	jsr	HOME
	lda	KEYRESET		; clear strobe

	lda	#0
	sta	DRAW_PAGE

	lda	#<end_message
	sta	OUTL
	lda	#>end_message
	sta	OUTH

	jsr	move_and_print
	jsr	move_and_print

wait_loop:
	lda	KEYPRESS
	bpl	wait_loop

	lda	KEYRESET		; clear strobe

	lda	#0
	sta	GAME_OVER

	jmp	ootw_c4_restart


end_message:
.byte	8,10,"PRESS RETURN TO CONTINUE",0
.byte	11,20,"ACCESS CODE: RCHG",0

.include "ootw_c4_city.s"
.include "text_print.s"
.include "gr_pageflip.s"
.include "gr_unrle.s"
.include "gr_fast_clear.s"
.include "gr_copy.s"
.include "gr_copy_offset.s"
.include "gr_putsprite.s"
.include "gr_putsprite_flipped.s"
.include "gr_putsprite_crop.s"
.include "gr_offsets.s"
.include "gr_offsets_hl.s"
.include "random16.s"
.include "keyboard.s"

.include "physicist.s"
.include "alien.s"

; room backgrounds
.include "ootw_graphics/l4city/ootw_c4_city.inc"
; sprites
.include "ootw_graphics/sprites/physicist.inc"
.include "ootw_graphics/sprites/alien.inc"


