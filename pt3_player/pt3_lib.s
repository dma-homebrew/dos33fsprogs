; TODO
;   move some of these flags to be bits rather than bytes?
;   enabled could be bit 6 or 7 for fast checking
;
; Use memset to set things to 0?

NOTE_WHICH=0
NOTE_VOLUME=1
NOTE_TONE_SLIDING_L=2
NOTE_TONE_SLIDING_H=3
NOTE_ENABLED=4
NOTE_ENVELOPE_ENABLED=5
NOTE_SAMPLE_POINTER_L=6		; FIXME: needed?
NOTE_SAMPLE_POINTER_H=7		; FIXME: needed?
NOTE_SAMPLE_LOOP=8
NOTE_SAMPLE_LENGTH=9
NOTE_TONE_L=10
NOTE_TONE_H=11
NOTE_AMPLITUDE=12
NOTE_NOTE=13
NOTE_LEN=14
NOTE_LEN_COUNT=15
NOTE_SPEC_COMMAND=16		; is this one needed?
NOTE_NEW_NOTE=17
NOTE_ALL_DONE=18
NOTE_ADDR_L=19
NOTE_ADDR_H=20
NOTE_ORNAMENT_POINTER_L=21	; FIXME: needed?
NOTE_ORNAMENT_POINTER_H=22	; FIXME: needed?
NOTE_ORNAMENT_LOOP=23
NOTE_ORNAMENT_LENGTH=24
NOTE_ONOFF=25
NOTE_TONE_ACCUMULATOR_L=26
NOTE_TONE_ACCUMULATOR_H=27
NOTE_TONE_SLIDE_COUNT=28
NOTE_ORNAMENT_POSITION=29
NOTE_SAMPLE_POSITION=30
NOTE_ENVELOPE_SLIDING=31
NOTE_NOISE_SLIDING=32
NOTE_AMPLITUDE_SLIDING=33
NOTE_ONOFF_DELAY=34
NOTE_OFFON_DELAY=35
NOTE_TONE_SLIDE_STEP_L=36
NOTE_TONE_SLIDE_STEP_H=37
NOTE_TONE_SLIDE_DELAY=38
NOTE_SIMPLE_GLISS=39
NOTE_SLIDE_TO_NOTE=40
NOTE_TONE_DELTA_L=41
NOTE_TONE_DELTA_H=42
NOTE_TONE_SLIDE_TO_STEP=43

note_a:
	.byte	'A'	; NOTE_WHICH
	.byte	$0	; NOTE_VOLUME
	.byte	$0	; NOTE_TONE_SLIDING_L
	.byte	$0	; NOTE_TONE_SLIDING_H
	.byte	$0	; NOTE_ENABLED
	.byte	$0	; NOTE_ENVELOPE_ENABLED
	.byte	$0	; NOTE_SAMPLE_POINTER_L
	.byte	$0	; NOTE_SAMPLE_POINTER_H
	.byte	$0	; NOTE_SAMPLE_LOOP
	.byte	$0	; NOTE_SAMPLE_LENGTH
	.byte	$0	; NOTE_TONE_L
	.byte	$0	; NOTE_TONE_H
	.byte	$0	; NOTE_AMPLITUDE
	.byte	$0	; NOTE_NOTE
	.byte	$0	; NOTE_LEN
	.byte	$0	; NOTE_LEN_COUNT
	.byte	$0	; NOTE_SPEC_COMMAND
	.byte	$0	; NOTE_NEW_NOTE
	.byte	$0	; NOTE_ALL_DONE
	.byte	$0	; NOTE_ADDR_L
	.byte	$0	; NOTE_ADDR_H
	.byte	$0	; NOTE_ORNAMENT_POINTER_L
	.byte	$0	; NOTE_ORNAMENT_POINTER_H
	.byte	$0	; NOTE_ORNAMENT_LOOP
	.byte	$0	; NOTE_ORNAMENT_LENGTH
	.byte	$0	; NOTE_ONOFF
	.byte	$0	; NOTE_TONE_ACCUMULATOR_L
	.byte	$0	; NOTE_TONE_ACCUMULATOR_H
	.byte	$0	; NOTE_TONE_SLIDE_COUNT
	.byte	$0	; NOTE_ORNAMENT_POSITION
	.byte	$0	; NOTE_SAMPLE_POSITION
	.byte	$0	; NOTE_ENVELOPE_SLIDING
	.byte	$0	; NOTE_NOISE_SLIDING
	.byte	$0	; NOTE_AMPLITUDE_SLIDING
	.byte	$0	; NOTE_ONOFF_DELAY
	.byte	$0	; NOTE_OFFON_DELAY
	.byte	$0	; NOTE_TONE_SLIDE_STEP_L
	.byte	$0	; NOTE_TONE_SLIDE_STEP_H
	.byte	$0	; NOTE_TONE_SLIDE_DELAY
	.byte	$0	; NOTE_SIMPLE_GLISS
	.byte	$0	; NOTE_SLIDE_TO_NOTE
	.byte	$0	; NOTE_TONE_DELTA_L
	.byte	$0	; NOTE_TONE_DELTA_H
	.byte	$0	; NOTE_TONE_SLIDE_TO_STEP

note_b:
	.byte	'B'	; NOTE_WHICH
	.byte	$0	; NOTE_VOLUME
	.byte	$0	; NOTE_TONE_SLIDING_L
	.byte	$0	; NOTE_TONE_SLIDING_H
	.byte	$0	; NOTE_ENABLED
	.byte	$0	; NOTE_ENVELOPE_ENABLED
	.byte	$0	; NOTE_SAMPLE_POINTER_L
	.byte	$0	; NOTE_SAMPLE_POINTER_H
	.byte	$0	; NOTE_SAMPLE_LOOP
	.byte	$0	; NOTE_SAMPLE_LENGTH
	.byte	$0	; NOTE_TONE_L
	.byte	$0	; NOTE_TONE_H
	.byte	$0	; NOTE_AMPLITUDE
	.byte	$0	; NOTE_NOTE
	.byte	$0	; NOTE_LEN
	.byte	$0	; NOTE_LEN_COUNT
	.byte	$0	; NOTE_SPEC_COMMAND
	.byte	$0	; NOTE_NEW_NOTE
	.byte	$0	; NOTE_ALL_DONE
	.byte	$0	; NOTE_ADDR_L
	.byte	$0	; NOTE_ADDR_H
	.byte	$0	; NOTE_ORNAMENT_POINTER_L
	.byte	$0	; NOTE_ORNAMENT_POINTER_H
	.byte	$0	; NOTE_ORNAMENT_LOOP
	.byte	$0	; NOTE_ORNAMENT_LENGTH
	.byte	$0	; NOTE_ONOFF
	.byte	$0	; NOTE_TONE_ACCUMULATOR_L
	.byte	$0	; NOTE_TONE_ACCUMULATOR_H
	.byte	$0	; NOTE_TONE_SLIDE_COUNT
	.byte	$0	; NOTE_ORNAMENT_POSITION
	.byte	$0	; NOTE_SAMPLE_POSITION
	.byte	$0	; NOTE_ENVELOPE_SLIDING
	.byte	$0	; NOTE_NOISE_SLIDING
	.byte	$0	; NOTE_AMPLITUDE_SLIDING
	.byte	$0	; NOTE_ONOFF_DELAY
	.byte	$0	; NOTE_OFFON_DELAY
	.byte	$0	; NOTE_TONE_SLIDE_STEP_L
	.byte	$0	; NOTE_TONE_SLIDE_STEP_H
	.byte	$0	; NOTE_TONE_SLIDE_DELAY
	.byte	$0	; NOTE_SIMPLE_GLISS
	.byte	$0	; NOTE_SLIDE_TO_NOTE
	.byte	$0	; NOTE_TONE_DELTA_L
	.byte	$0	; NOTE_TONE_DELTA_H
	.byte	$0	; NOTE_TONE_SLIDE_TO_STEP

note_c:
	.byte	'C'	; NOTE_WHICH
	.byte	$0	; NOTE_VOLUME
	.byte	$0	; NOTE_TONE_SLIDING_L
	.byte	$0	; NOTE_TONE_SLIDING_H
	.byte	$0	; NOTE_ENABLED
	.byte	$0	; NOTE_ENVELOPE_ENABLED
	.byte	$0	; NOTE_SAMPLE_POINTER_L
	.byte	$0	; NOTE_SAMPLE_POINTER_H
	.byte	$0	; NOTE_SAMPLE_LOOP
	.byte	$0	; NOTE_SAMPLE_LENGTH
	.byte	$0	; NOTE_TONE_L
	.byte	$0	; NOTE_TONE_H
	.byte	$0	; NOTE_AMPLITUDE
	.byte	$0	; NOTE_NOTE
	.byte	$0	; NOTE_LEN
	.byte	$0	; NOTE_LEN_COUNT
	.byte	$0	; NOTE_SPEC_COMMAND
	.byte	$0	; NOTE_NEW_NOTE
	.byte	$0	; NOTE_ALL_DONE
	.byte	$0	; NOTE_ADDR_L
	.byte	$0	; NOTE_ADDR_H
	.byte	$0	; NOTE_ORNAMENT_POINTER_L
	.byte	$0	; NOTE_ORNAMENT_POINTER_H
	.byte	$0	; NOTE_ORNAMENT_LOOP
	.byte	$0	; NOTE_ORNAMENT_LENGTH
	.byte	$0	; NOTE_ONOFF
	.byte	$0	; NOTE_TONE_ACCUMULATOR_L
	.byte	$0	; NOTE_TONE_ACCUMULATOR_H
	.byte	$0	; NOTE_TONE_SLIDE_COUNT
	.byte	$0	; NOTE_ORNAMENT_POSITION
	.byte	$0	; NOTE_SAMPLE_POSITION
	.byte	$0	; NOTE_ENVELOPE_SLIDING
	.byte	$0	; NOTE_NOISE_SLIDING
	.byte	$0	; NOTE_AMPLITUDE_SLIDING
	.byte	$0	; NOTE_ONOFF_DELAY
	.byte	$0	; NOTE_OFFON_DELAY
	.byte	$0	; NOTE_TONE_SLIDE_STEP_L
	.byte	$0	; NOTE_TONE_SLIDE_STEP_H
	.byte	$0	; NOTE_TONE_SLIDE_DELAY
	.byte	$0	; NOTE_SIMPLE_GLISS
	.byte	$0	; NOTE_SLIDE_TO_NOTE
	.byte	$0	; NOTE_TONE_DELTA_L
	.byte	$0	; NOTE_TONE_DELTA_H
	.byte	$0	; NOTE_TONE_SLIDE_TO_STEP

pt3_version:		.byte	$0
pt3_frequency_table:	.byte	$0
pt3_speed:		.byte	$0
pt3_num_patterns:	.byte	$0
pt3_loop:		.byte	$0

pt3_noise_period:	.byte	$0
pt3_noise_add:		.byte	$0

pt3_envelope_period_l:	.byte	$0
pt3_envelope_period_h:	.byte	$0
pt3_envelope_slide_l:	.byte	$0
pt3_envelope_slide_h:	.byte	$0
pt3_envelope_slide_add_l:.byte	$0
pt3_envelope_slide_add_h:.byte	$0
pt3_envelope_add:	.byte	$0
pt3_envelope_type:	.byte	$0
pt3_envelope_type_old:	.byte	$0
pt3_envelope_delay:	.byte	$0
pt3_envelope_delay_orig:.byte	$0

;pt3_current_pattern:	.byte	$0
pt3_music_len:		.byte	$0
pt3_mixer_value:	.byte	$0

temp_word_l:		.byte	$0
temp_word_h:		.byte	$0

sample_b0:		.byte	$0
sample_b1:		.byte	$0

; Header offsets

PT3_HEADER_FREQUENCY	= $63
PT3_PATTERN_LOC_L	= $67
PT3_PATTERN_LOC_H	= $68
PT3_SAMPLE_LOC_L	= $69
PT3_SAMPLE_LOC_H	= $6A
PT3_ORNAMENT_LOC_L	= $A9
PT3_OTNAMENT_LOC_H	= $AA
PT3_PATTERN_TABLE	= $C9

ysave:	.byte	$00
freq_l:	.byte	$00
freq_h:	.byte	$00

	;===========================
	; Load Ornament
	;===========================
	; ornament value in A

load_ornament:

	sty	ysave

	; save as new ornament
	; sta	note_a+NOTE_ORNAMENT ; do we use this?

	;pt3->ornament_patterns[i]=
        ;               (pt3->data[0xaa+(i*2)]<<8)|pt3->data[0xa9+(i*2)];

	clc
	asl			; A*2
	adc	#$a9
	tay

	; a->ornament_pointer=pt3->ornament_patterns[a->ornament];

	lda	PT3_LOC,Y
	sta	ORNAMENT_A_L

	iny
	lda	PT3_LOC,Y
	clc
	adc	#>PT3_LOC
	sta	ORNAMENT_A_H

	ldy	#0

	; Set the loop value
	;     a->ornament_loop=pt3->data[a->ornament_pointer];
	lda	(ORNAMENT_A_L),Y
	sta	note_a+NOTE_ORNAMENT_LOOP

	; Set the length value
	;     a->ornament_length=pt3->data[a->ornament_pointer];
	iny
	lda	(ORNAMENT_A_L),Y
	sta	note_a+NOTE_ORNAMENT_LENGTH

	; Set the pointer to the value past the length

	clc
	lda	ORNAMENT_A_L
	adc	#$2
	sta	ORNAMENT_A_L
	lda	ORNAMENT_A_H
	adc	#$0
	sta	ORNAMENT_A_H

	ldy	ysave

	rts

	;===========================
	; Load Sample
	;===========================
	; sample in A
load_sample:

	sty	ysave

	;pt3->ornament_patterns[i]=
        ;               (pt3->data[0x6a+(i*2)]<<8)|pt3->data[0x69+(i*2)];

	clc
	asl			; A*2
	adc	#$69
	tay

	; Set the initial sample pointer
	;     a->sample_pointer=pt3->sample_patterns[a->sample];

	lda	PT3_LOC,Y
	sta	SAMPLE_A_L

	iny
	lda	PT3_LOC,Y
	clc
	adc	#>PT3_LOC
	sta	SAMPLE_A_H

	; Set the loop value
	;     a->sample_loop=pt3->data[a->sample_pointer];

	ldy	#0
	lda	(SAMPLE_A_L),Y
	sta	note_a+NOTE_SAMPLE_LOOP

	; Set the length value
	;     a->sample_length=pt3->data[a->sample_pointer];

	iny
	lda	(SAMPLE_A_L),Y
	sta	note_a+NOTE_SAMPLE_LENGTH

	; Set pointer to beginning of samples

	clc
	lda	SAMPLE_A_L
	adc	#$2
	sta	SAMPLE_A_L
	lda	SAMPLE_A_H
	adc	#$0
	sta	SAMPLE_A_H

	ldy	ysave

	rts


	;====================================
	; pt3_init_song
	;====================================
	;

pt3_init_song:
	lda	#$f
	sta	note_a+NOTE_VOLUME
	sta	note_b+NOTE_VOLUME
	sta	note_c+NOTE_VOLUME
	lda	#$0
	sta	note_a+NOTE_TONE_SLIDING_L
	sta	note_b+NOTE_TONE_SLIDING_L
	sta	note_c+NOTE_TONE_SLIDING_L
	sta	note_a+NOTE_TONE_SLIDING_H
	sta	note_b+NOTE_TONE_SLIDING_H
	sta	note_c+NOTE_TONE_SLIDING_H
	sta	note_a+NOTE_ENABLED
	sta	note_b+NOTE_ENABLED
	sta	note_c+NOTE_ENABLED
	sta	note_a+NOTE_ENVELOPE_ENABLED
	sta	note_b+NOTE_ENVELOPE_ENABLED
	sta	note_c+NOTE_ENVELOPE_ENABLED
	lda	#'A'
	lda	#0
	jsr	load_ornament
	lda	#'A'
	lda	#1
	jsr	load_sample
;	lda	#'B'
;	lda	#0
;	jsr	load_ornament
;	lda	#'B'
;	lda	#1
;	jsr	load_sample
;	lda	#'C'
;	lda	#0
;	jsr	load_ornament
;	lda	#'C'
;	lda	#1
;	jsr	load_sample

	lda	#$0
	sta	pt3_noise_period
	sta	pt3_noise_add
	sta	pt3_envelope_period_l
	sta	pt3_envelope_period_h
	sta	pt3_envelope_type
;	sta	pt3_current_pattern

	rts

e_slide_amount:	.byte	$0

	;=====================================
	; Calculate Note
	;=====================================
	;
calculate_note:

	lda	note_a+NOTE_ENABLED
	bne	note_enabled

	lda	#0
	sta	note_a+NOTE_AMPLITUDE
	jmp	done_note

note_enabled:

	lda	note_a+NOTE_SAMPLE_POSITION
	asl
	asl
	tay

	;  b0 = pt3->data[a->sample_pointer + a->sample_position * 4];
	lda	(SAMPLE_A_L),Y
	sta	sample_b0

	;  b1 = pt3->data[a->sample_pointer + a->sample_position * 4 + 1];
	iny
	lda	(SAMPLE_A_L),Y
	sta	sample_b1

	;  a->tone = pt3->data[a->sample_pointer + a->sample_position * 4 + 2];
	;  a->tone += (pt3->data[a->sample_pointer + a->sample_position * 4 + 3])<<8;
	iny
	lda	(SAMPLE_A_L),Y
	sta	note_a+NOTE_TONE_L

	iny
	lda	(SAMPLE_A_L),Y
	sta	note_a+NOTE_TONE_H

	;  a->tone += a->tone_accumulator;
	clc
	lda	note_a+NOTE_TONE_ACCUMULATOR_L
	adc	note_a+NOTE_TONE_L
	sta	note_a+NOTE_TONE_L
	lda	note_a+NOTE_TONE_H
	adc	note_a+NOTE_TONE_ACCUMULATOR_H
	sta	note_a+NOTE_TONE_H

	;========================
	; Accumulate tone if set

	lda	#$40		; if (b1&0x40)
	bit	sample_b1
	beq	no_accum

	lda	note_a+NOTE_TONE_L	; tone_accumulator=tone
	sta	note_a+NOTE_TONE_ACCUMULATOR_L
	lda	note_a+NOTE_TONE_H
	sta	note_a+NOTE_TONE_ACCUMULATOR_H

no_accum:

	;============================
	; Calculate tone
	;  j = a->note + (pt3->data[a->ornament_pointer + a->ornament_position]
	clc
	lda	note_a+NOTE_ORNAMENT_POSITION
	tay
	lda	(ORNAMENT_A_L),Y
	adc	note_a+NOTE_NOTE

	;  if (j < 0) j = 0;
	bpl	note_not_negative
	lda	#0

	; if (j > 95) j = 95;
note_not_negative:
	cmp	#96
	bcc	note_not_too_high

	lda	#95

note_not_too_high:


	;  w = GetNoteFreq(j,pt3->frequency_table);

	jsr	GetNoteFreq

	;  a->tone = (a->tone + a->tone_sliding + w) & 0xfff;

	clc
	lda	note_a+NOTE_TONE_L
	adc	note_a+NOTE_TONE_SLIDING_L
	sta	note_a+NOTE_TONE_L
	lda	note_a+NOTE_TONE_H
	adc	note_a+NOTE_TONE_SLIDING_H
	sta	note_a+NOTE_TONE_H

	clc
	lda	note_a+NOTE_TONE_L
	adc	freq_l
	sta	note_a+NOTE_TONE_L
	lda	note_a+NOTE_TONE_H
	adc	note_a+NOTE_TONE_SLIDING_H
	and	#$0f
	sta	note_a+NOTE_TONE_H

	;=====================
	; handle tone sliding

	lda	note_a+NOTE_TONE_SLIDE_COUNT
	bmi	no_tone_sliding		;  if (a->tone_slide_count > 0) {

	dec	note_a+NOTE_TONE_SLIDE_COUNT	; a->tone_slide_count--;
	bne	no_tone_sliding		; if (a->tone_slide_count==0) {


	; a->tone_sliding+=a->tone_slide_step
	clc
	lda	note_a+NOTE_TONE_SLIDING_L
	adc	note_a+NOTE_TONE_SLIDE_STEP_L
	sta	note_a+NOTE_TONE_SLIDING_L
	lda	note_a+NOTE_TONE_SLIDING_H
	adc	note_a+NOTE_TONE_SLIDE_STEP_H
	sta	note_a+NOTE_TONE_SLIDING_H

	; a->tone_slide_count = a->tone_slide_delay;
	lda	note_a+NOTE_TONE_SLIDE_DELAY
	sta	note_a+NOTE_TONE_SLIDE_COUNT

	lda	note_a+NOTE_SIMPLE_GLISS
	bne	no_tone_sliding		; if (!a->simplegliss) {

check1:
	lda	note_a+NOTE_TONE_SLIDE_STEP_H
	bpl	check2	;           if ( ((a->tone_slide_step < 0) &&
;	lda	note_a+NOTE_TONE_SLIDING
;	cmp	note_a+NOTE_TONE_DELTA
;	bcc	slide_to_note	; (a->tone_sliding <= a->tone_delta)) ||
;	beq	slide_to_note


	lda	note_a+NOTE_TONE_SLIDING_H	; compare high bytes
	cmp	note_a+NOTE_TONE_DELTA_H
	bcc	slide_to_note	; if NUM1H < NUM2H then NUM1 < NUM2
	bne	check2		; if NUM1H <> NUM2H then NUM1 > NUM2 (so NUM1 >= NUM2)
	lda	note_a+NOTE_TONE_SLIDING_L	; compare low bytes
	cmp	note_a+NOTE_TONE_DELTA_L
	bcc	slide_to_note
	beq	slide_to_note

check2:
	lda	note_a+NOTE_TONE_SLIDE_STEP_H
	bmi	no_tone_sliding		; ((a->tone_slide_step >= 0) &&

;	lda	note_a+NOTE_TONE_SLIDING
;	cmp	note_a+NOTE_TONE_DELTA
;	bcc	no_tone_sliding	; blt (a->tone_sliding >= a->tone_delta)) {


	lda	note_a+NOTE_TONE_SLIDING_H	; compare high bytes
	cmp	note_a+NOTE_TONE_DELTA_H
	bcc	no_tone_sliding		; if NUM1H < NUM2H then NUM1 < NUM2
        bne	slide_to_note	; if NUM1H <> NUM2H then NUM1 > NUM2 (so NUM1 >= NUM2)
	lda	note_a+NOTE_TONE_SLIDING_L	; compare low bytes
	cmp	note_a+NOTE_TONE_DELTA_L
	bcc	no_tone_sliding		; if NUM1L < NUM2L then NUM1 < NUM2

slide_to_note:
	lda	note_a+NOTE_SLIDE_TO_NOTE
	sta	note_a+NOTE_NOTE	; a->note = a->slide_to_note;
	lda	#0
	sta	note_a+NOTE_TONE_SLIDE_COUNT
	sta	note_a+NOTE_TONE_SLIDING_L
	sta	note_a+NOTE_TONE_SLIDING_H


no_tone_sliding:
	;====================
	; set amplitude

	lda	sample_b1		;  a->amplitude= (b1 & 0xf);
	and	#$f
	sta	note_a+NOTE_AMPLITUDE

	; adjust amplitude sliding

	lda	sample_b0		;  if ((b0 & 0x80)!=0) {
	and	#$80
	beq	done_amp_sliding

	lda	sample_b0		;     if ((b0&0x40)!=0) {
	and	#$40
	beq	amp_slide_down
amp_slide_up:
	lda	note_a+NOTE_AMPLITUDE_SLIDING
	cmp	#15
	bcs	done_amp_sliding	; bge
					;        if (a->amplitude_sliding < 15) {
	inc	note_a+NOTE_AMPLITUDE_SLIDING	;           a->amplitude_sliding++;
	jmp	done_amp_sliding
amp_slide_down:
	lda	note_a+NOTE_AMPLITUDE_SLIDING
	cmp	#$f2			; -14 1111 0010
	bcc	done_amp_sliding	;        if (a->amplitude_sliding > -15) {
	dec	note_a+NOTE_AMPLITUDE_SLIDING	;	; a->amplitude_sliding--;

done_amp_sliding:

	; a->amplitude+=a->amplitude_sliding;
	clc
	lda	note_a+NOTE_AMPLITUDE
	adc	note_a+NOTE_AMPLITUDE_SLIDING
	sta	note_a+NOTE_AMPLITUDE

	; clamp amplitude to 0 - 15

	lda	note_a+NOTE_AMPLITUDE
check_amp_lo:
	bpl	check_amp_hi
	lda	#0
	jmp	write_clamp_amplitude

check_amp_hi:
	cmp	#16
	bcc	done_clamp_amplitude	; blt
	lda	#15
write_clamp_amplitude:
	sta	note_a+NOTE_AMPLITUDE
done_clamp_amplitude:

	; if (PlParams.PT3.PT3_Version <= 4)
	;	a->amplitude = PT3VolumeTable_33_34[a->volume][a->amplitude];
	; }
	; else {

	lda	note_a+NOTE_VOLUME
	asl
	asl
	asl
	asl
	ora	note_a+NOTE_AMPLITUDE
	tax
	lda	PT3VolumeTable_35,X
	sta	note_a+NOTE_AMPLITUDE ;     a->amplitude = PT3VolumeTable_35[a->volume][a->amplitude];
;	}

	lda	sample_b0	;  if (((b0 & 0x1) == 0) && ( a->envelope_enabled)) {
	and	#$1
	bne	envelope_slide

	lda	note_a+NOTE_ENVELOPE_ENABLED
	beq	envelope_slide

	lda	note_a+NOTE_AMPLITUDE	; a->amplitude |= 16;
	ora	#$10
	sta	note_a+NOTE_AMPLITUDE


envelope_slide:
	; Envelope slide
	; If b1 top bits are 10 or 11

	lda	#$80
	bit	sample_b1
	beq	noise_slide		; if ((b1 & 0x80) != 0) {

	lda	#$20
	bit	sample_b0
	beq	envelope_slide_down	;     if ((b0 & 0x20) != 0) {

	; FIXME: this can be optimized
envelope_slide_up:
	lda	sample_b0
	lsr
	ora	#$f0
	clc
	adc	note_a+NOTE_ENVELOPE_SLIDING
	sta	e_slide_amount	; j = ((b0>>1)|0xF0) + a->envelope_sliding
	jmp	envelope_slide_done
envelope_slide_down:
	lda	sample_b0
	lsr
	and	#$0f
	clc
	adc	note_a+NOTE_ENVELOPE_SLIDING
	sta	e_slide_amount  ; j = ((b0>>1)&0xF) + a->envelope_sliding;

envelope_slide_done:

	lda	#$20
	bit	sample_b1
	beq	last_envelope	;     if (( b1 & 0x20) != 0) {
	lda	e_slide_amount
	sta	note_a+NOTE_ENVELOPE_SLIDING	; a->envelope_sliding = j;

last_envelope:

	clc
	lda	e_slide_amount
	adc	pt3_envelope_add
	sta	pt3_envelope_add	; pt3->envelope_add+=j;

noise_slide:
	; Noise slide
	;  else {

	lda	sample_b0
	lsr
	clc
	adc	note_a+NOTE_NOISE_SLIDING
	sta	pt3_noise_add	; pt3->noise_add = (b0>>1) + a->noise_sliding;

	lda	#$20
	bit	sample_b1
	beq	noise_slide_done	;     if ((b1 & 0x20) != 0) {
	lda	pt3_noise_add
	sta	note_a+NOTE_NOISE_SLIDING	; noise_sliding = pt3_noise_add

noise_slide_done:
	;======================
	; set mixer

	lda	sample_b1	;  pt3->mixer_value = ((b1 >>1) & 0x48) | pt3->mixer_value;
	lsr
	and	#$48
	ora	pt3_mixer_value
	sta	pt3_mixer_value


	;========================
	; increment sample position

	inc	note_a+NOTE_SAMPLE_POSITION	;  a->sample_position++;
	lda	note_a+NOTE_SAMPLE_POSITION
	cmp	note_a+NOTE_SAMPLE_LENGTH

	bcc	sample_pos_ok			; blt

	lda	note_a+NOTE_SAMPLE_LOOP
	sta	note_a+NOTE_SAMPLE_POSITION

sample_pos_ok:

	;========================
	; increment ornament position

	inc	note_a+NOTE_ORNAMENT_POSITION	;  a->ornament_position++;
	lda	note_a+NOTE_ORNAMENT_POSITION
	cmp	note_a+NOTE_ORNAMENT_LENGTH

	bcc	ornament_pos_ok			; blt

	lda	note_a+NOTE_ORNAMENT_LOOP
	sta	note_a+NOTE_SAMPLE_POSITION
ornament_pos_ok:


done_note:
	; set mixer value
	; this is a bit complex (from original code)
	; after 3 calls it is set up properly
	lda	pt3_mixer_value
	lsr
	sta	pt3_mixer_value

handle_onoff:
	lda	note_a+NOTE_ONOFF	;if (a->onoff>0) {
	beq	done_onoff

	dec	note_a+NOTE_ONOFF	; a->onoff--;

	bne	done_onoff		;   if (a->onoff==0) {
	lda	note_a+NOTE_ENABLED
	eor	#$1			; toggle
	sta	note_a+NOTE_ENABLED

	bne	do_offon
do_onoff:
	lda	note_a+NOTE_ONOFF_DELAY	; if (a->enabled) a->onoff=a->onoff_delay;
	jmp	put_offon
do_offon:
	lda	note_a+NOTE_OFFON_DELAY ;      else a->onoff=a->offon_delay;
put_offon:
	sta	note_a+NOTE_ONOFF

done_onoff:

	rts

prev_note:	.byte $0
prev_sliding_l:	.byte $0
prev_sliding_h:	.byte $0
decode_done:	.byte $0
current_val:	.byte $0

	;=====================================
	; Decode Note
	;=====================================

decode_note:

	; Init vars

	lda	#0
	sta	note_a+NOTE_NEW_NOTE		; for printing notes?
	sta	note_a+NOTE_SPEC_COMMAND	; These are only if printing?
	sta	decode_done

	; Skip decode if note still running
	lda	note_a+NOTE_LEN_COUNT
	beq	keep_decoding			; assume not negative

	; we are still running, decrement and early return
	dec	note_a+NOTE_LEN_COUNT
	rts

keep_decoding:

	lda	note_a+NOTE_NOTE		; store prev note
	sta	prev_note

	lda	note_a+NOTE_TONE_SLIDING_H	; store prev sliding
	sta	prev_sliding_h
	lda	note_a+NOTE_TONE_SLIDING_L
	sta	prev_sliding_l



	ldy	#0


note_decode_loop:
	lda	note_a+NOTE_LEN			; re-up length count
	sta	note_a+NOTE_LEN_COUNT

	lda	note_a+NOTE_ADDR_L
	sta	PATTERN_L
	lda	note_a+NOTE_ADDR_H
	sta	PATTERN_H

	; get next value
	lda	(PATTERN_L),Y
	tax				; save to X termporarily

	; FIXME: use a jump table??

	and	#$f0

	cmp	#$00
	bne	decode_case_1X

decode_case_0X:
	;==============================
	; $0X set special effect
	;==============================

	txa
	and	#$f

	bne	decode_case_0X_not_zero

	; Do we ever actually hit this case?

	sta	note_a+NOTE_LEN_COUNT	; len_count=0;

	lda	#1
	sta	note_a+NOTE_ALL_DONE
	sta	decode_done

	jmp	done_decode

decode_case_0X_not_zero:

	; FIXME: what if multiple spec commands?
	; Doesn't seem to happen in practice
	; But AY_emul has code to handle it

	sta	note_a+NOTE_SPEC_COMMAND

	jmp	done_decode

decode_case_1X:
	;==============================
	; $1X -- Set Envelope Type
	;==============================

	cmp	#$10
	bne	decode_case_2X

	txa
	and	#$0f
	bne	decode_case_not_10

decode_case_10:
	sta	note_a+NOTE_ENVELOPE_ENABLED
	jmp	decode_case_1x_common


decode_case_not_10:
	; Needed?
	; FIXME: combine this with the BX code somehow?
	; pt3->envelope_type_old=0x78;

	sta	pt3_envelope_type

	; get next byte
	iny
	lda	(PATTERN_L),Y
	sta	pt3_envelope_period_h

	iny
	lda	(PATTERN_L),Y
	sta	pt3_envelope_period_l

	lda	#0
	sta	pt3_envelope_delay		; envelope_delay=0
	sta	pt3_envelope_slide_l		; envelope_slide=0
	sta	pt3_envelope_slide_h
	lda	#1
	sta	note_a+NOTE_ENVELOPE_ENABLED	; envelope_enabled=1

decode_case_1x_common:

	iny					; FIXME: combine?
	lda	(PATTERN_L),Y
	lsr
	jsr	load_sample

	lda	#0
	sta	note_a+NOTE_ORNAMENT_POSITION	; ornament_position=0

	jmp	done_decode

decode_case_2X:
	;==============================
	; $2X set noise period
	;==============================

	cmp	#$20
	bne	decode_case_3X

	txa
	and	#$f
	sta	pt3_noise_period

	jmp	done_decode

decode_case_3X:
	;==============================
	; $3X set noise period (FIXME: merge with above)
	;==============================
	cmp	#$30
	bne	decode_case_4X

	txa
	and	#$0f
	ora	#$10
	sta	pt3_noise_period

	jmp	done_decode

decode_case_4X:
	;==============================
	; $4X -- set ornament
	;==============================
	cmp	#$40
	bne	decode_case_5X

	txa
	and	#$0f				; set ornament to bottom nibble
	jsr	load_ornament

	lda	#0
	sta	note_a+NOTE_ORNAMENT_POSITION	; FIXME: put this in load_orn?

	jmp	done_decode

decode_case_5X:
	;==============================
	; $5X-$AX set note
	;==============================
	cmp	#$B0
	bcs	decode_case_bX		 ; branch greater/equal

	txa
	sec
	sbc	#$50
	sta	note_a+NOTE_NOTE	; note=(current_val-0x50);

	lda	#0
	sta	note_a+NOTE_SAMPLE_POSITION	; sample_position=0
	sta	note_a+NOTE_AMPLITUDE_SLIDING	; amplitude_sliding=0
	sta	note_a+NOTE_NOISE_SLIDING	; noise_sliding=0
	sta	note_a+NOTE_ENVELOPE_SLIDING	; envelope_sliding=0
	sta	note_a+NOTE_ORNAMENT_POSITION	; ornament_position=0
	sta	note_a+NOTE_TONE_SLIDE_COUNT	; tone_slide_count=0
	sta	note_a+NOTE_TONE_SLIDING_L	; tone_sliding=0
	sta	note_a+NOTE_TONE_SLIDING_H
	sta	note_a+NOTE_TONE_ACCUMULATOR_L	; tone_accumulator=0
	sta	note_a+NOTE_TONE_ACCUMULATOR_H
	sta	note_a+NOTE_ONOFF		; onoff=0;

	lda	#1
	sta	note_a+NOTE_NEW_NOTE		; new=1
	sta	note_a+NOTE_ENABLED		; enabled=1
	sta	decode_done			; decode_done-1
	jmp	done_decode

decode_case_bX:
	;============================================
	; $BX -- note length or envelope manipulation
	;============================================
	cmp	#$b0		; FIXME: this cmp not needed, from before?
	bne	decode_case_cX

	txa
	and	#$f
	beq	decode_case_b0
	cmp	#1
	beq	decode_case_b1
	jmp	decode_case_bx_higher

decode_case_b0:
	; Disable envelope
	lda	#0
	sta	note_a+NOTE_ENVELOPE_ENABLED
	sta	note_a+NOTE_ORNAMENT_POSITION
	jmp	done_decode


decode_case_b1:
	; Set Length

	; get next byte
	iny
	lda	(PATTERN_L),Y

	sta	note_a+NOTE_LEN
	sta	note_a+NOTE_LEN_COUNT
	jmp	done_decode

decode_case_bx_higher:

;	give fake old to force update?  maybe only needed if printing?
;	pt3->envelope_type_old=0x78;

	sec
	sbc	#1
	sta	pt3_envelope_type	; envelope_type=(current_val&0xf)-1;

	; get next byte
	iny
	lda	(PATTERN_L),Y
	sta	pt3_envelope_period_h

	; get next byte
	iny
	lda	(PATTERN_L),Y
	sta	pt3_envelope_period_l

	lda	#0
	sta	note_a+NOTE_ORNAMENT_POSITION	; ornament_position=0
	sta	pt3_envelope_slide_l		; envelope_slide=0
	sta	pt3_envelope_slide_h
	sta	pt3_envelope_delay		; envelope_delay=0

	lda	#1
	sta	note_a+NOTE_ENVELOPE_ENABLED	; envelope_enabled=1;
	jmp	done_decode

decode_case_cX:
	;==============================
	; $CX -- set volume
	;==============================
	cmp	#$c0
	bne	decode_case_dX

	txa
	and	#$0f
	bne	decode_case_cx_not_c0

decode_case_c0:
	; special case $C0 means shut down the note

	lda	#0
	; FIXME: merge with other clearing code?
	sta	note_a+NOTE_SAMPLE_POSITION	; sample_position=0
	sta	note_a+NOTE_AMPLITUDE_SLIDING	; amplitude_sliding=0
	sta	note_a+NOTE_NOISE_SLIDING	; noise_sliding=0
	sta	note_a+NOTE_ENVELOPE_SLIDING	; envelope_sliding=0
	sta	note_a+NOTE_ORNAMENT_POSITION	; ornament_position=0
	sta	note_a+NOTE_TONE_SLIDE_COUNT	; tone_slide_count=0
	sta	note_a+NOTE_TONE_SLIDING_L	; tone_sliding=0
	sta	note_a+NOTE_TONE_SLIDING_H
	sta	note_a+NOTE_TONE_ACCUMULATOR_L	; tone_accumulator=0
	sta	note_a+NOTE_TONE_ACCUMULATOR_H
	sta	note_a+NOTE_ONOFF		; onoff=0
	sta	note_a+NOTE_ENABLED		; enabled=0

	lda	#1
	sta	decode_done

	jmp done_decode

decode_case_cx_not_c0:
	sta	note_a+NOTE_VOLUME		; volume=current_val&0xf;
	jmp	done_decode

decode_case_dX:
	;==============================
	; $DX -- change sample
	;==============================
	; FIXME: merge with below?

	cmp	#$d0
	bne	decode_case_eX

	txa
	and	#$0f
	bne	decode_case_dx_not_d0

	;========================
	; d0 case means end note

	lda	#1
	sta	decode_done

	jmp	done_decode
decode_case_dx_not_d0:

	jsr	load_sample	; load sample in bottom nybble

	jmp	done_decode
decode_case_eX:
	;==============================
	; $EX -- change sample
	;==============================
	cmp	#$e0
	bne	decode_case_fX

	txa
	sec
	sbc	#$d0
	jsr	load_sample

	jmp	done_decode

decode_case_fX:
	;==============================
	; $FX - change ornament/sample
	;==============================

	; disable envelope
	lda	#0
	sta	note_a+NOTE_ENVELOPE_ENABLED

	; Set ornament to low byte of command
	txa
	and	#$f
	jsr	load_ornament		; ornament to load in A

	; Get next byte
	iny				; point to next byte
	lda	(PATTERN_L),Y

	; Set sample to value/2
	lsr				; divide by two
	jsr	load_sample		; sample to load in A

	; fallthrough

done_decode:

	iny		; point to next byte

	lda	decode_done
	bne	handle_effects

	jmp	note_decode_loop


	;=================================
	; handle effects
	;=================================
	; Note, the AYemul code has code to make sure these are applied
	; In the same order they appear.  We don't bother?
handle_effects:

	lda	note_a+NOTE_SPEC_COMMAND

	;==============================
	; Effect #1 -- Tone Down
	;==============================
effect_1:
	cmp	#$1
	bne	effect_2

	lda	(PATTERN_L),Y	; load byte, set as slide delay
	iny

	sta	note_a+NOTE_TONE_SLIDE_DELAY
	sta	note_a+NOTE_TONE_SLIDE_COUNT

	lda	(PATTERN_L),Y	; load byte, set as slide step low
	iny
	sta	note_a+NOTE_TONE_SLIDE_STEP_L

	lda	(PATTERN_L),Y	; load byte, set as slide step high
	iny
	sta	note_a+NOTE_TONE_SLIDE_STEP_H

	lda	#0
	sta	note_a+NOTE_ONOFF
	lda	#1
	sta	note_a+NOTE_SIMPLE_GLISS

	jmp	no_effect

	;==============================
	; Effect #2 -- Portamento
	;==============================
effect_2:
	cmp	#$2
	beq	effect_2_small
	jmp	effect_3
effect_2_small:			; FIXME: make smaller
	lda	#0
	sta	note_a+NOTE_SIMPLE_GLISS
	sta	note_a+NOTE_ONOFF

	lda	(PATTERN_L),Y	; load byte, set as delay
	iny

	sta	note_a+NOTE_TONE_SLIDE_DELAY
	sta	note_a+NOTE_TONE_SLIDE_COUNT

	iny
	iny
	iny

	lda	(PATTERN_L),Y	; load byte, set as slide_step low
	iny
	sta	note_a+NOTE_TONE_SLIDE_STEP_L

	lda	(PATTERN_L),Y	; load byte, set as slide_step high
	iny
	sta	note_a+NOTE_TONE_SLIDE_STEP_H

	; 16-bit absolute value
	bpl	slide_step_positive

	eor	#$ff
	sta	note_a+NOTE_TONE_SLIDE_STEP_H
	lda	note_a+NOTE_TONE_SLIDE_STEP_L
	eor	#$ff
	sec
	adc	#$1
	sta	note_a+NOTE_TONE_SLIDE_STEP_L
	lda	note_a+NOTE_TONE_SLIDE_STEP_H
	adc	#$0
	sta	note_a+NOTE_TONE_SLIDE_STEP_H

slide_step_positive:

;	a->tone_delta=GetNoteFreq(a->note,pt3)-
;		GetNoteFreq(prev_note,pt3);

	lda	note_a+NOTE_NOTE
	jsr	GetNoteFreq
	lda	freq_l
	sta	note_a+NOTE_TONE_DELTA_L
	lda	freq_h
	sta	note_a+NOTE_TONE_DELTA_H

	lda	prev_note
	jsr	GetNoteFreq

	sec
	lda	note_a+NOTE_TONE_DELTA_L
	sbc	freq_l
	sta	note_a+NOTE_TONE_DELTA_L
	lda	note_a+NOTE_TONE_DELTA_H
	sbc	freq_h
	sta	note_a+NOTE_TONE_DELTA_H

	lda	note_a+NOTE_NOTE
	sta	note_a+NOTE_SLIDE_TO_NOTE	; a->slide_to_note=a->note;

	lda	prev_note
	sta	note_a+NOTE_NOTE		; a->note=prev_note;

	lda	pt3_version
	cmp	#$6
	bcc	weird_version			; blt

	lda	prev_sliding_l
	sta	note_a+NOTE_TONE_SLIDING_L
	lda	prev_sliding_h
	sta	note_a+NOTE_TONE_SLIDING_H

weird_version:

	; annoying 16-bit subtract, only care if negative
	;	if ((a->tone_delta - a->tone_sliding) < 0) {
	sec
	lda	note_a+NOTE_TONE_DELTA_L
	sbc	note_a+NOTE_TONE_SLIDING_L
	lda	note_a+NOTE_TONE_DELTA_H
	sbc	note_a+NOTE_TONE_SLIDING_H
	bpl	no_need

	; a->tone_slide_step = -a->tone_slide_step;

	lda	note_a+NOTE_TONE_SLIDE_STEP_H
	eor	#$ff
	sta	note_a+NOTE_TONE_SLIDE_STEP_H
	lda	note_a+NOTE_TONE_SLIDE_STEP_L
	eor	#$ff
	sec
	adc	#$1
	sta	note_a+NOTE_TONE_SLIDE_STEP_L
	lda	note_a+NOTE_TONE_SLIDE_STEP_H
	adc	#$0
	sta	note_a+NOTE_TONE_SLIDE_STEP_H

no_need:

	jmp	no_effect

	;==============================
	; Effect #3 -- Sample Position
	;==============================
effect_3:
	cmp	#$3
	bne	effect_4

	lda	(PATTERN_L),Y	; load byte, set as sample position
	iny
	sta	note_a+NOTE_SAMPLE_POSITION

	jmp	no_effect

	;==============================
	; Effect #4 -- Ornament Position
	;==============================
effect_4:
	cmp	#$4
	bne	effect_5

	lda	(PATTERN_L),Y	; load byte, set as ornament position
	iny
	sta	note_a+NOTE_ORNAMENT_POSITION

	jmp	no_effect

	;==============================
	; Effect #5 -- Vibrato
	;==============================
effect_5:
	cmp	#$5
	bne	effect_8

	lda	(PATTERN_L),Y	; load byte, set as onoff delay
	iny
	sta	note_a+NOTE_ONOFF_DELAY
	sta	note_a+NOTE_ONOFF

	lda	(PATTERN_L),Y	; load byte, set as offon delay
	iny
	sta	note_a+NOTE_OFFON_DELAY

	lda	#0
	sta	note_a+NOTE_TONE_SLIDE_COUNT
	sta	note_a+NOTE_TONE_SLIDING_L
	sta	note_a+NOTE_TONE_SLIDING_H

	jmp	no_effect

	;==============================
	; Effect #8 -- Envelope Down
	;==============================
effect_8:
	cmp	#$8
	bne	effect_9

	; delay
	lda	(PATTERN_L),Y	; load byte, set as speed
	iny
	sta	pt3_envelope_delay
	sta	pt3_envelope_delay_orig

	; low value
	lda	(PATTERN_L),Y	; load byte, set as low
	iny
	sta	pt3_envelope_slide_add_l

	; high value
	lda	(PATTERN_L),Y	; load byte, set as high
	iny
	sta	pt3_envelope_slide_add_h

	jmp	no_effect

	;==============================
	; Effect #9 -- Set Speed
	;==============================
effect_9:
	cmp	#$9
	bne	no_effect

	lda	(PATTERN_L),Y	; load byte, set as speed
	iny
	sta	pt3_speed

no_effect:

	;================================
	; add y into the address pointer

	clc
	tya
	adc	note_a+NOTE_ADDR_L
	sta	note_a+NOTE_ADDR_L
	lda	#0
	adc	note_a+NOTE_ADDR_H
	sta	note_a+NOTE_ADDR_H
	sta	PATTERN_H

	rts

	;=====================================
	; Decode Line
	;=====================================

pt3_decode_line:
	; decode_note(&pt3->a,&(pt3->a_addr),pt3);
	jsr	decode_note

	; decode_note(&pt3->b,&(pt3->b_addr),pt3);
;	jsr	decode_note

	; decode_note(&pt3->c,&(pt3->c_addr),pt3);
;	jsr	decode_note

;	if (pt3->a.all_done && pt3->b.all_done && pt3->c.all_done) {
;		return 1;
;	}

	rts


current_subframe:	.byte	$0
current_line:		.byte	$0
current_pattern:	.byte	$0

	;=====================================
	; Set Pattern
	;=====================================

pt3_set_pattern:

	ldy	current_pattern
	lda	PT3_LOC+PT3_PATTERN_TABLE,Y	; get pattern table value

	asl		; mul by two, as word sized
	tay

	clc

	lda	PT3_LOC+PT3_PATTERN_LOC_L
	sta	PATTERN_L
	lda	PT3_LOC+PT3_PATTERN_LOC_H
	adc	#>PT3_LOC		; assume page boundary
	sta	PATTERN_H

	lda	(PATTERN_L),Y
	sta	note_a+NOTE_ADDR_L
	iny

	clc
	lda	(PATTERN_L),Y
	adc	#>PT3_LOC		; assume page boundary
	sta	note_a+NOTE_ADDR_H
	iny

	lda	(PATTERN_L),Y
	sta	note_b+NOTE_ADDR_L
	iny

	lda	(PATTERN_L),Y
	adc	#>PT3_LOC		; assume page boundary
	sta	note_b+NOTE_ADDR_H
	iny

	lda	(PATTERN_L),Y
	sta	note_c+NOTE_ADDR_L
	iny

	lda	(PATTERN_L),Y
	adc	#>PT3_LOC		; assume page boundary
	sta	note_c+NOTE_ADDR_H

	lda	#0
	sta	note_a+NOTE_ALL_DONE
	sta	note_b+NOTE_ALL_DONE
	sta	note_c+NOTE_ALL_DONE

	sta	pt3_noise_period

	rts



	;=====================================
	; pt3 make frame
	;=====================================
pt3_make_frame:
;       for(i=0;i < pt3.music_len;i++) {
;          pt3_set_pattern(i,&pt3);
;          for(j=0;j<64;j++) {
;             if (pt3_decode_line(&pt3)) break;


	; see if we need a new pattern
	; we do if line==0 and subframe==0
	lda	current_line
	bne	line_good
	lda	current_subframe
	bne	line_good

	; load a new patterh in
	jsr	pt3_set_pattern

pattern_good:

	; see if we need a new line

	lda	current_subframe
	bne	line_good

	; decode a new line
	jsr	pt3_decode_line
line_good:

	; Increment everything

	inc	current_subframe	; subframe++
	lda	current_subframe
	cmp	pt3_speed		; if we hit pt3_speed, move to next
	bne	do_frame

next_line:
	lda	#0			; reset subframe to 0
	sta	current_subframe

	inc	current_line		; and increment line

					; FIXME: not always 64
	cmp	#64			; if not max, continue
	bne	do_frame

next_pattern:
	lda	#0			; reset line to 0
	sta	current_line

	inc	current_pattern		; increment pattern
	lda	current_pattern

	cmp	pt3_music_len		; if end of song, mark it as so
	beq	done_song

	jmp	do_frame

done_song:
	lda	#$ff
	sta	DONE_PLAYING

	rts

do_frame:
	; AY-3-8910 register summary
	;
	; R0/R1 = A period low/high
	; R2/R3 = B period low/high
	; R4/R5 = C period low/high
	; R6 = Noise period */
	; R7 = Enable XX Noise=!CBA Tone=!CBA */
	; R8/R9/R10 = Channel A/B/C amplitude M3210, M=envelope enable
	; R11/R12 = Envelope Period low/high
	; R13 = Envelope Shape, 0xff means don't write
	; R14/R15 = I/O (ignored)

	lda	#0
	sta	pt3_mixer_value
	sta	pt3_envelope_add

	lda	#0			; Note A
	jsr	calculate_note
;	lda	#1			; Note B
;	jsr	calculate_note
;	lda	#2			; Note C
;	jsr	calculate_note

	; Load up the Frequency Registers

	lda	note_a+NOTE_TONE_L	; Note A Period L
	sta	REGISTER_DUMP+0		; into R0
	lda	note_a+NOTE_TONE_H	; Note A Period H
	sta	REGISTER_DUMP+1		; into R1

	lda	note_b+NOTE_TONE_L	; Note B Period L
	sta	REGISTER_DUMP+2		; into R2
	lda	note_b+NOTE_TONE_H	; Note B Period H
	sta	REGISTER_DUMP+3		; into R3

	lda	note_c+NOTE_TONE_L	; Note C Period L
	sta	REGISTER_DUMP+4		; into R4
	lda	note_c+NOTE_TONE_H	; Note C Period H
	sta	REGISTER_DUMP+5		; into R5

	; Noise
	; frame[6]= (pt3->noise_period+pt3->noise_add)&0x1f;
	clc
	lda	pt3_noise_period
	adc	pt3_noise_add
	and	#$1f
	sta	REGISTER_DUMP+6


	; Mixer
	lda	pt3_mixer_value
	sta	REGISTER_DUMP+7

	; Amplitudes
	lda	note_a+NOTE_AMPLITUDE
	sta	REGISTER_DUMP+8
	lda	note_b+NOTE_AMPLITUDE
	sta	REGISTER_DUMP+9
	lda	note_c+NOTE_AMPLITUDE
	sta	REGISTER_DUMP+10

	; Envelope period
	; result=period+add+slide (16-bits)
	clc
	lda	pt3_envelope_period_l
	adc	pt3_envelope_add
	sta	temp_word_l
	lda	pt3_envelope_period_h
	adc	#0
	sta	temp_word_h

	clc
	lda	pt3_envelope_slide_l
	adc	temp_word_l
;	sta	temp_word_l
	sta	REGISTER_DUMP+11
	lda	temp_word_h
	adc	pt3_envelope_slide_h
;	sta	temp_word_h
	sta	REGISTER_DUMP+12

	; Envelope shape
	lda	pt3_envelope_type
	cmp	pt3_envelope_type_old
	bne	envelope_diff
envelope_same:
	lda	#$ff			; if same, store $ff
envelope_diff:
	sta	REGISTER_DUMP+13

	lda	pt3_envelope_type
	sta	pt3_envelope_type_old	; copy old to new


	lda	pt3_envelope_delay
	beq	done_do_frame		; assume can't be negative?
					; do this if envelope_delay>0
	dec	pt3_envelope_delay
	bne	done_do_frame
					; only do if we hit 0
	lda	pt3_envelope_delay_orig	; reset envelope delay
	sta	pt3_envelope_delay

	clc				; 16-bit add
	lda	pt3_envelope_slide_l
	adc	pt3_envelope_slide_add_l
	sta	pt3_envelope_slide_l
	lda	pt3_envelope_slide_h
	adc	pt3_envelope_slide_add_h
	sta	pt3_envelope_slide_h

done_do_frame:

	rts

	;======================================
	; GetNoteFreq
	;======================================
	; Return frequency from lookup table
	; Which note is in A
	; return in freq_l/freq_h
GetNoteFreq:

	sty	ysave

	tay
	lda	PT3_LOC+PT3_HEADER_FREQUENCY
	cmp	#1
	bne	freq_table_2

	lda	PT3NoteTable_ST_high,Y
	sta	freq_h
	lda	PT3NoteTable_ST_low,Y
	sta	freq_l

	ldy	ysave
	rts

freq_table_2:
	lda	PT3NoteTable_ASM_34_35_high,Y
	tax
	lda	PT3NoteTable_ASM_34_35_low,Y

	ldy	ysave

        rts



; Table #1 of Pro Tracker 3.3x - 3.5x
PT3NoteTable_ST_high:
.byte $0E,$0E,$0D,$0C,$0B,$0B,$0A,$09
.byte $09,$08,$08,$07,$07,$07,$06,$06
.byte $05,$05,$05,$04,$04,$04,$04,$03
.byte $03,$03,$03,$03,$02,$02,$02,$02
.byte $02,$02,$02,$01,$01,$01,$01,$01
.byte $01,$01,$01,$01,$01,$01,$01,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00

PT3NoteTable_ST_low:
.byte $F8,$10,$60,$80,$D8,$28,$88,$F0
.byte $60,$E0,$58,$E0,$7C,$08,$B0,$40
.byte $EC,$94,$44,$F8,$B0,$70,$2C,$FD
.byte $BE,$84,$58,$20,$F6,$CA,$A2,$7C
.byte $58,$38,$16,$F8,$DF,$C2,$AC,$90
.byte $7B,$65,$51,$3E,$2C,$1C,$0A,$FC
.byte $EF,$E1,$D6,$C8,$BD,$B2,$A8,$9F
.byte $96,$8E,$85,$7E,$77,$70,$6B,$64
.byte $5E,$59,$54,$4F,$4B,$47,$42,$3F
.byte $3B,$38,$35,$32,$2F,$2C,$2A,$27
.byte $25,$23,$21,$1F,$1D,$1C,$1A,$19
.byte $17,$16,$15,$13,$12,$11,$10,$0F


; Table #2 of Pro Tracker 3.4x - 3.5x
PT3NoteTable_ASM_34_35_high:
.byte $0D,$0C,$0B,$0A,$0A,$09,$09,$08
.byte $08,$07,$07,$06,$06,$06,$05,$05
.byte $05,$04,$04,$04,$04,$03,$03,$03
.byte $03,$03,$02,$02,$02,$02,$02,$02
.byte $02,$01,$01,$01,$01,$01,$01,$01
.byte $01,$01,$01,$01,$01,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00

PT3NoteTable_ASM_34_35_low:
.byte $10,$55,$A4,$FC,$5F,$CA,$3D,$B8
.byte $3B,$C5,$55,$EC,$88,$2A,$D2,$7E
.byte $2F,$E5,$9E,$5C,$1D,$E2,$AB,$76
.byte $44,$15,$E9,$BF,$98,$72,$4F,$2E
.byte $0F,$F1,$D5,$BB,$A2,$8B,$74,$60
.byte $4C,$39,$28,$17,$07,$F9,$EB,$DD
.byte $D1,$C5,$BA,$B0,$A6,$9D,$94,$8C
.byte $84,$7C,$75,$6F,$69,$63,$5D,$58
.byte $53,$4E,$4A,$46,$42,$3E,$3B,$37
.byte $34,$31,$2F,$2C,$29,$27,$25,$23
.byte $21,$1F,$1D,$1C,$1A,$19,$17,$16
.byte $15,$14,$12,$11,$10,$0F,$0E,$0D


PT3VolumeTable_33_34:
.byte $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
.byte $0,$0,$0,$0,$0,$0,$0,$0,$1,$1,$1,$1,$1,$1,$1,$1
.byte $0,$0,$0,$0,$0,$0,$1,$1,$1,$1,$1,$2,$2,$2,$2,$2
.byte $0,$0,$0,$0,$1,$1,$1,$1,$2,$2,$2,$2,$3,$3,$3,$3
.byte $0,$0,$0,$0,$1,$1,$1,$2,$2,$2,$3,$3,$3,$4,$4,$4
.byte $0,$0,$0,$1,$1,$1,$2,$2,$3,$3,$3,$4,$4,$4,$5,$5
.byte $0,$0,$0,$1,$1,$2,$2,$3,$3,$3,$4,$4,$5,$5,$6,$6
.byte $0,$0,$1,$1,$2,$2,$3,$3,$4,$4,$5,$5,$6,$6,$7,$7
.byte $0,$0,$1,$1,$2,$2,$3,$3,$4,$5,$5,$6,$6,$7,$7,$8
.byte $0,$0,$1,$1,$2,$3,$3,$4,$5,$5,$6,$6,$7,$8,$8,$9
.byte $0,$0,$1,$2,$2,$3,$4,$4,$5,$6,$6,$7,$8,$8,$9,$A
.byte $0,$0,$1,$2,$3,$3,$4,$5,$6,$6,$7,$8,$9,$9,$A,$B
.byte $0,$0,$1,$2,$3,$4,$4,$5,$6,$7,$8,$8,$9,$A,$B,$C
.byte $0,$0,$1,$2,$3,$4,$5,$6,$7,$7,$8,$9,$A,$B,$C,$D
.byte $0,$0,$1,$2,$3,$4,$5,$6,$7,$8,$9,$A,$B,$C,$D,$E
.byte $0,$1,$2,$3,$4,$5,$6,$7,$8,$9,$A,$B,$C,$D,$E,$F


PT3VolumeTable_35:
.byte $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
.byte $0,$0,$0,$0,$0,$0,$0,$0,$1,$1,$1,$1,$1,$1,$1,$1
.byte $0,$0,$0,$0,$1,$1,$1,$1,$1,$1,$1,$1,$2,$2,$2,$2
.byte $0,$0,$0,$1,$1,$1,$1,$1,$2,$2,$2,$2,$2,$3,$3,$3
.byte $0,$0,$1,$1,$1,$1,$2,$2,$2,$2,$3,$3,$3,$3,$4,$4
.byte $0,$0,$1,$1,$1,$2,$2,$2,$3,$3,$3,$4,$4,$4,$5,$5
.byte $0,$0,$1,$1,$2,$2,$2,$3,$3,$4,$4,$4,$5,$5,$6,$6
.byte $0,$0,$1,$1,$2,$2,$3,$3,$4,$4,$5,$5,$6,$6,$7,$7
.byte $0,$1,$1,$2,$2,$3,$3,$4,$4,$5,$5,$6,$6,$7,$7,$8
.byte $0,$1,$1,$2,$2,$3,$4,$4,$5,$5,$6,$7,$7,$8,$8,$9
.byte $0,$1,$1,$2,$3,$3,$4,$5,$5,$6,$7,$7,$8,$9,$9,$A
.byte $0,$1,$1,$2,$3,$4,$4,$5,$6,$7,$7,$8,$9,$A,$A,$B
.byte $0,$1,$2,$2,$3,$4,$5,$6,$6,$7,$8,$9,$A,$A,$B,$C
.byte $0,$1,$2,$3,$3,$4,$5,$6,$7,$8,$9,$A,$A,$B,$C,$D
.byte $0,$1,$2,$3,$4,$5,$6,$7,$7,$8,$9,$A,$B,$C,$D,$E
.byte $0,$1,$2,$3,$4,$5,$6,$7,$8,$9,$A,$B,$C,$D,$E,$F

