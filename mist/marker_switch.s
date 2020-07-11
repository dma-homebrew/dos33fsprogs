; Marker switches
; 1	MARKER_DOCK	= $01	MIST_DOCK_SWITCH	N	0
; 15	MARKER_GEARS	= $02	MIST_GEAR		N	1
; 18	MARKER_SPACESHIP= $04	MIST_SPACESHIP_SWITCH	N	2
; 19	MARKER_GENERATOR= $08	MIST_TREE_CORRIDOR_4	W	3
; 22	MARKER_CLOCK	= $10	MIST_CLOCK_ISLAND	S	4
; cab/0	MARKER_TREE	= $20	CABIN_OUTSIDE		E	5
; 13	MARKER_POOL	= $40	MIST_TREE_CORRIDOR_2	N	6
; den/0 MARKER_DENTIST	= $80	DENTIST_OUTSIDE		N	7

; up is on

	; which switch in A
click_marker_switch:

	; click

	bit	$C030
	bit	$C030

	eor	MARKER_SWITCHES		; toggle switch
	sta	MARKER_SWITCHES

	rts

marker_sprite_off:
	.byte 2,2
	.byte $AA,$AA
	.byte $6A,$6A

marker_sprite_on:
	.byte 2,2
	.byte $6A,$6A
	.byte $AA,$AA

marker_sprites_on:
	.word marker_sprite_on	; dock
	.word marker_sprite_on	; gears
	.word marker_sprite_on	; spaceship
	.word marker_sprite_on	; generator
	.word marker_sprite_on	; clock
	.word marker_sprite_on	; tree
	.word marker_sprite_on	; pool
	.word marker_sprite_on	; dentist

marker_sprites_off:
	.word marker_sprite_off	; dock
	.word marker_sprite_off	; gears
	.word marker_sprite_off	; spaceship
	.word marker_sprite_off	; generator
	.word marker_sprite_off	; clock
	.word marker_sprite_off	; tree
	.word marker_sprite_off	; pool
	.word marker_sprite_off	; dentist

marker_sprites_direction:
	.byte DIRECTION_N	; dock
	.byte DIRECTION_N	; gears
	.byte DIRECTION_N	; spaceship
	.byte DIRECTION_W	; generator
	.byte DIRECTION_S	; clock
	.byte DIRECTION_E	; tree
	.byte DIRECTION_N	; pool
	.byte DIRECTION_N	; dentist

marker_sprites_xy:
	.byte 26,26	; dock
	.byte 7,30	; gears
	.byte 23,22	; spaceship
	.byte 8,28	; generator
	.byte 5,28	; clock
	.byte 10,10	; tree
	.byte 28,18	; pool
	.byte 10,10	; dentist

; FIXME: use generic log2 table somewhere
marker_which:
	.byte $01,$02,$04,$08,$10,$20,$40,$80


draw_marker_switch:

	; see if need to draw

	lda	WHICH_LOAD
	cmp	#LOAD_DENTIST
	beq	marker_check_dentist
	cmp	#LOAD_CABIN
	beq	marker_check_cabin
	cmp	#LOAD_MIST
	bne	done_draw_marker

marker_check_myst:
	lda	LOCATION
check_ms_dock:
	cmp	#MIST_DOCK_SWITCH
	bne	check_ms_gear
	ldy	#0
	beq	draw_marker
check_ms_gear:
	cmp	#MIST_GEAR
	bne	check_ms_spaceship
	ldy	#1
	bne	draw_marker
check_ms_spaceship:
	cmp	#MIST_SPACESHIP_SWITCH
	bne	check_ms_generator
	ldy	#2
	bne	draw_marker
check_ms_generator:
	cmp	#MIST_TREE_CORRIDOR_4
	bne	check_ms_clock
	ldy	#3
	bne	draw_marker
check_ms_clock:
	cmp	#MIST_CLOCK_ISLAND
	bne	check_ms_pool
	ldy	#4
	bne	draw_marker
check_ms_pool:
	cmp	#MIST_TREE_CORRIDOR_2
	bne	done_draw_marker
	ldy	#6
	bne	draw_marker
marker_check_dentist:
	lda	LOCATION
	cmp	#DENTIST_OUTSIDE
	bne	done_draw_marker
	ldy	#7
	bne	draw_marker		; bra
marker_check_cabin:
	lda	LOCATION
	cmp	#CABIN_OUTSIDE
	bne	done_draw_marker

	ldy	#5

draw_marker:
	; check if facing right direction

	lda	marker_sprites_direction,Y
	cmp	DIRECTION
	bne	done_draw_marker

	tya
	tax
	asl
	tay

	lda	marker_sprites_xy,Y
	sta	XPOS
	lda	marker_sprites_xy+1,Y
	sta	YPOS

	lda	MARKER_SWITCHES
	and	marker_which,X
	beq	draw_marker_off

draw_marker_on:
	lda	marker_sprites_on,Y
	sta	INL
	lda	marker_sprites_on+1,Y
	jmp	actually_draw_marker

draw_marker_off:
	lda	marker_sprites_off,Y
	sta	INL
	lda	marker_sprites_off+1,Y


actually_draw_marker:
	sta	INH
	jsr	put_sprite_crop

done_draw_marker:
	rts
