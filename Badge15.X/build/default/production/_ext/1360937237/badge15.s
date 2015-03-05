	.file	1 "badge15.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.globl	defaultIR
	.set	nomips16
	.set	nomicromips
	.ent	defaultIR
	.type	defaultIR, @function
defaultIR:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	defaultIR
	.size	defaultIR, .-defaultIR
	.align	2
	.globl	autoSlide
	.set	nomips16
	.set	nomicromips
	.ent	autoSlide
	.type	autoSlide, @function
autoSlide:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	autoSlide
	.size	autoSlide, .-autoSlide
	.align	2
	.globl	draw_main_ticker
	.set	nomips16
	.set	nomicromips
	.ent	draw_main_ticker
	.type	draw_main_ticker, @function
draw_main_ticker:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	draw_main_ticker
	.size	draw_main_ticker, .-draw_main_ticker
	.align	2
	.globl	zeroStateCounters
	.set	nomips16
	.set	nomicromips
	.ent	zeroStateCounters
	.type	zeroStateCounters, @function
zeroStateCounters:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	sw	$0,96($4)
	sw	$0,100($4)
	sb	$0,93($4)
	j	$31
	sb	$0,94($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	zeroStateCounters
	.size	zeroStateCounters, .-zeroStateCounters
	.align	2
	.globl	initTouchState
	.set	nomips16
	.set	nomicromips
	.ent	initTouchState
	.type	initTouchState, @function
initTouchState:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	sb	$0,0($4)
	sb	$0,1($4)
	sb	$0,2($4)
	sb	$0,3($4)
	sb	$0,4($4)
	sb	$0,5($4)
	sb	$0,6($4)
	j	$31
	sb	$0,7($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	initTouchState
	.size	initTouchState, .-initTouchState
	.align	2
	.globl	initQueue
	.set	nomips16
	.set	nomicromips
	.ent	initQueue
	.type	initQueue, @function
initQueue:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	sb	$0,1($4)
	sb	$0,2($4)
	sb	$0,3($4)
	sb	$0,4($4)
	j	$31
	sb	$0,0($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	initQueue
	.size	initQueue, .-initQueue
	.align	2
	.globl	popQueue
	.set	nomips16
	.set	nomicromips
	.ent	popQueue
	.type	popQueue, @function
popQueue:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lbu	$2,1($4)
	lbu	$3,2($4)
	sb	$3,1($4)
	lbu	$3,3($4)
	sb	$3,2($4)
	lbu	$3,4($4)
	sb	$3,3($4)
	sb	$0,4($4)
	lbu	$3,0($4)
	beq	$3,$0,.L9
	addiu	$3,$3,-1

	sb	$3,0($4)
.L9:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	popQueue
	.size	popQueue, .-popQueue
	.align	2
	.globl	pushQueue
	.set	nomips16
	.set	nomicromips
	.ent	pushQueue
	.type	pushQueue, @function
pushQueue:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$5,$5,0x00ff
	lbu	$3,0($4)
	sltu	$6,$3,4
	beq	$6,$0,.L13
	li	$2,1			# 0x1

	addu	$2,$4,$3
	sb	$5,1($2)
	addiu	$3,$3,1
	sb	$3,0($4)
	move	$2,$0
.L13:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pushQueue
	.size	pushQueue, .-pushQueue
	.align	2
	.globl	shiftTouchQueue
	.set	nomips16
	.set	nomicromips
	.ent	shiftTouchQueue
	.type	shiftTouchQueue, @function
shiftTouchQueue:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lwl	$3,21($4)
	lwr	$3,18($4)
	lwl	$2,25($4)
	lwr	$2,22($4)
	swl	$3,29($4)
	swr	$3,26($4)
	swl	$2,33($4)
	swr	$2,30($4)
	lwl	$3,13($4)
	lwr	$3,10($4)
	lwl	$2,17($4)
	lwr	$2,14($4)
	swl	$3,21($4)
	swr	$3,18($4)
	swl	$2,25($4)
	swr	$2,22($4)
	lwl	$3,5($4)
	lwr	$3,2($4)
	lwl	$2,9($4)
	lwr	$2,6($4)
	swl	$3,13($4)
	swr	$3,10($4)
	swl	$2,17($4)
	swr	$2,14($4)
	jal	initTouchState
	addiu	$4,$4,2

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	shiftTouchQueue
	.size	shiftTouchQueue, .-shiftTouchQueue
	.align	2
	.globl	initBadgeState
	.set	nomips16
	.set	nomicromips
	.ent	initBadgeState
	.type	initBadgeState, @function
initBadgeState:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	move	$16,$4
	sw	$4,8($4)
	sw	$0,12($4)
	lui	$2,%hi(autoSlide)
	addiu	$2,$2,%lo(autoSlide)
	sw	$2,24($4)
	lui	$2,%hi(defaultIR)
	addiu	$2,$2,%lo(defaultIR)
	sw	$2,28($4)
	sw	$0,16($4)
	sw	$0,20($4)
	sb	$0,92($4)
	sb	$0,93($4)
	sb	$0,94($4)
	sw	$0,96($4)
	sw	$0,100($4)
	sw	$0,44($4)
	jal	initTouchState
	addiu	$4,$4,50

	jal	initTouchState
	addiu	$4,$16,58

	jal	initTouchState
	addiu	$4,$16,66

	jal	initTouchState
	addiu	$4,$16,74

	jal	initQueue
	addiu	$4,$16,32

	jal	initQueue
	addiu	$4,$16,37

	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	initBadgeState
	.size	initBadgeState, .-initBadgeState
	.align	2
	.globl	initGFX
	.set	nomips16
	.set	nomicromips
	.ent	initGFX
	.type	initGFX, @function
initGFX:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	initGFX
	.size	initGFX, .-initGFX
	.align	2
	.globl	setupMenus
	.set	nomips16
	.set	nomicromips
	.ent	setupMenus
	.type	setupMenus, @function
setupMenus:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(main_page)
	addiu	$4,$2,%lo(main_page)
	sw	$4,%gp_rel(current_menu)($28)
	li	$6,3			# 0x3
	sb	$6,%lo(main_page)($2)
	sb	$0,1($4)
	lui	$7,%hi(main_entries)
	addiu	$3,$7,%lo(main_entries)
	sw	$3,4($4)
	lui	$2,%hi(draw_main_ticker)
	addiu	$2,$2,%lo(draw_main_ticker)
	sw	$2,8($4)
	lui	$5,%hi(games)
	addiu	$2,$5,%lo(games)
	sw	$2,%lo(main_entries)($7)
	lui	$7,%hi(game_txt)
	addiu	$7,$7,%lo(game_txt)
	sw	$7,%lo(games)($5)
	lui	$9,%hi(games_page)
	addiu	$8,$9,%lo(games_page)
	sw	$8,8($2)
	sw	$0,4($2)
	lui	$5,%hi(schedule)
	addiu	$2,$5,%lo(schedule)
	sw	$2,4($3)
	lui	$7,%hi(schedule_txt)
	addiu	$7,$7,%lo(schedule_txt)
	sw	$7,%lo(schedule)($5)
	lui	$15,%hi(schedule_page)
	addiu	$7,$15,%lo(schedule_page)
	sw	$7,8($2)
	sw	$0,4($2)
	lui	$5,%hi(settings)
	addiu	$2,$5,%lo(settings)
	sw	$2,8($3)
	lui	$3,%hi(settings_txt)
	addiu	$3,$3,%lo(settings_txt)
	sw	$3,%lo(settings)($5)
	lui	$13,%hi(settings_page)
	addiu	$5,$13,%lo(settings_page)
	sw	$5,8($2)
	sw	$0,4($2)
	li	$14,6			# 0x6
	sb	$14,%lo(games_page)($9)
	sb	$0,1($8)
	lui	$10,%hi(game_entries)
	addiu	$2,$10,%lo(game_entries)
	sw	$2,4($8)
	lui	$9,%hi(snake_e)
	addiu	$3,$9,%lo(snake_e)
	sw	$3,%lo(game_entries)($10)
	lui	$10,%hi(snake_txt)
	addiu	$10,$10,%lo(snake_txt)
	sw	$10,%lo(snake_e)($9)
	sw	$0,8($3)
	lui	$9,%hi(snake_state)
	addiu	$9,$9,%lo(snake_state)
	sw	$9,4($3)
	lui	$9,%hi(bird_e)
	addiu	$3,$9,%lo(bird_e)
	sw	$3,4($2)
	lui	$10,%hi(bird_txt)
	addiu	$10,$10,%lo(bird_txt)
	sw	$10,%lo(bird_e)($9)
	sw	$0,8($3)
	lui	$9,%hi(bird_state)
	addiu	$9,$9,%lo(bird_state)
	sw	$9,4($3)
	lui	$9,%hi(pong_e)
	addiu	$3,$9,%lo(pong_e)
	sw	$3,8($2)
	lui	$10,%hi(pong_txt)
	addiu	$10,$10,%lo(pong_txt)
	sw	$10,%lo(pong_e)($9)
	sw	$0,8($3)
	sw	$0,4($3)
	lui	$9,%hi(sketch)
	addiu	$3,$9,%lo(sketch)
	sw	$3,12($2)
	lui	$10,%hi(sketch_txt)
	addiu	$10,$10,%lo(sketch_txt)
	sw	$10,%lo(sketch)($9)
	sw	$0,8($3)
	lui	$9,%hi(sketch_state)
	addiu	$9,$9,%lo(sketch_state)
	sw	$9,4($3)
	lui	$9,%hi(more_games_e)
	addiu	$3,$9,%lo(more_games_e)
	sw	$3,16($2)
	lui	$12,%hi(more_txt)
	addiu	$12,$12,%lo(more_txt)
	sw	$12,%lo(more_games_e)($9)
	lui	$9,%hi(more_games_page)
	addiu	$10,$9,%lo(more_games_page)
	sw	$10,8($3)
	sw	$0,4($3)
	lui	$11,%hi(back_to_main)
	addiu	$3,$11,%lo(back_to_main)
	sw	$3,20($2)
	sb	$6,%lo(more_games_page)($9)
	sb	$0,1($10)
	lui	$24,%hi(more_game_entries)
	addiu	$9,$24,%lo(more_game_entries)
	sw	$9,4($10)
	lui	$10,%hi(images_e)
	addiu	$2,$10,%lo(images_e)
	sw	$2,%lo(more_game_entries)($24)
	lui	$24,%hi(images_txt)
	addiu	$24,$24,%lo(images_txt)
	sw	$24,%lo(images_e)($10)
	sw	$0,8($2)
	lui	$10,%hi(image_viewer_state)
	addiu	$10,$10,%lo(image_viewer_state)
	sw	$10,4($2)
	lui	$10,%hi(ping_e)
	addiu	$2,$10,%lo(ping_e)
	sw	$2,4($9)
	lui	$24,%hi(ping_txt)
	addiu	$24,$24,%lo(ping_txt)
	sw	$24,%lo(ping_e)($10)
	sw	$0,8($2)
	sw	$0,4($2)
	lui	$10,%hi(back_to_games)
	addiu	$2,$10,%lo(back_to_games)
	sw	$2,8($9)
	lui	$9,%hi(go_back)
	addiu	$9,$9,%lo(go_back)
	sw	$9,%lo(back_to_games)($10)
	sw	$8,8($2)
	sw	$0,4($2)
	sb	$6,%lo(schedule_page)($15)
	sb	$0,1($7)
	lui	$10,%hi(day_pick_entries)
	addiu	$2,$10,%lo(day_pick_entries)
	sw	$2,4($7)
	sw	$0,8($7)
	lui	$8,%hi(day1_e)
	addiu	$7,$8,%lo(day1_e)
	sw	$7,%lo(day_pick_entries)($10)
	lui	$10,%hi(day1_txt)
	addiu	$10,$10,%lo(day1_txt)
	sw	$10,%lo(day1_e)($8)
	sw	$0,8($7)
	lui	$8,%hi(schedule_browse_state)
	addiu	$8,$8,%lo(schedule_browse_state)
	sw	$8,4($7)
	lui	$10,%hi(day2_e)
	addiu	$7,$10,%lo(day2_e)
	sw	$7,4($2)
	lui	$15,%hi(day2_txt)
	addiu	$15,$15,%lo(day2_txt)
	sw	$15,%lo(day2_e)($10)
	sw	$0,8($7)
	sw	$8,4($7)
	sw	$3,8($2)
	sb	$14,%lo(settings_page)($13)
	sb	$0,1($5)
	lui	$10,%hi(settings_entries)
	addiu	$2,$10,%lo(settings_entries)
	sw	$2,4($5)
	lui	$8,%hi(backlight)
	addiu	$7,$8,%lo(backlight)
	sw	$7,%lo(settings_entries)($10)
	lui	$10,%hi(set_backlight)
	addiu	$10,$10,%lo(set_backlight)
	sw	$10,%lo(backlight)($8)
	sw	$0,8($7)
	lui	$8,%hi(set_backlight_state)
	addiu	$8,$8,%lo(set_backlight_state)
	sw	$8,4($7)
	lui	$8,%hi(contrast)
	addiu	$7,$8,%lo(contrast)
	sw	$7,4($2)
	lui	$10,%hi(adjust_contrast)
	addiu	$10,$10,%lo(adjust_contrast)
	sw	$10,%lo(contrast)($8)
	sw	$0,8($7)
	lui	$8,%hi(manual_contrast_state)
	addiu	$8,$8,%lo(manual_contrast_state)
	sw	$8,4($7)
	lui	$8,%hi(speaker)
	addiu	$7,$8,%lo(speaker)
	sw	$7,8($2)
	lui	$10,%hi(enable_speaker)
	addiu	$10,$10,%lo(enable_speaker)
	sw	$10,%lo(speaker)($8)
	sw	$0,8($7)
	sw	$0,4($7)
	lui	$8,%hi(set_time)
	addiu	$7,$8,%lo(set_time)
	sw	$7,12($2)
	lui	$10,%hi(set_time_txt)
	addiu	$10,$10,%lo(set_time_txt)
	sw	$10,%lo(set_time)($8)
	sw	$0,8($7)
	lui	$8,%hi(set_time_state)
	addiu	$8,$8,%lo(set_time_state)
	sw	$8,4($7)
	lui	$7,%hi(more_settings_e)
	addiu	$8,$7,%lo(more_settings_e)
	sw	$8,16($2)
	sw	$12,%lo(more_settings_e)($7)
	lui	$10,%hi(more_settings_page)
	addiu	$7,$10,%lo(more_settings_page)
	sw	$7,8($8)
	sw	$0,4($8)
	sw	$3,20($2)
	sw	$9,%lo(back_to_main)($11)
	sw	$4,8($3)
	sw	$0,4($3)
	sb	$6,%lo(more_settings_page)($10)
	sb	$0,1($7)
	lui	$6,%hi(more_settings_entries)
	addiu	$3,$6,%lo(more_settings_entries)
	sw	$3,4($7)
	lui	$4,%hi(screen_saver_e)
	addiu	$2,$4,%lo(screen_saver_e)
	sw	$2,%lo(more_settings_entries)($6)
	lui	$6,%hi(screen_saver_txt)
	addiu	$6,$6,%lo(screen_saver_txt)
	sw	$6,%lo(screen_saver_e)($4)
	sw	$0,8($2)
	lui	$4,%hi(screen_saver_setup_state)
	addiu	$4,$4,%lo(screen_saver_setup_state)
	sw	$4,4($2)
	lui	$4,%hi(screen_saver_activate)
	addiu	$2,$4,%lo(screen_saver_activate)
	sw	$2,4($3)
	lui	$6,%hi(screen_saver_on_txt)
	addiu	$6,$6,%lo(screen_saver_on_txt)
	sw	$6,%lo(screen_saver_activate)($4)
	sw	$0,8($2)
	lui	$4,%hi(screen_saver_state)
	addiu	$4,$4,%lo(screen_saver_state)
	sw	$4,4($2)
	lui	$4,%hi(back_to_settings)
	addiu	$2,$4,%lo(back_to_settings)
	sw	$2,8($3)
	sw	$9,%lo(back_to_settings)($4)
	sw	$5,8($2)
	j	$31
	sw	$0,4($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setupMenus
	.size	setupMenus, .-setupMenus
	.align	2
	.globl	setupStates15
	.set	nomips16
	.set	nomicromips
	.ent	setupStates15
	.type	setupStates15, @function
setupStates15:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setupStates15
	.size	setupStates15, .-setupStates15
	.align	2
	.globl	Init_Game15
	.set	nomips16
	.set	nomicromips
	.ent	Init_Game15
	.type	Init_Game15, @function
Init_Game15:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Init_Game15
	.size	Init_Game15, .-Init_Game15
	.align	2
	.globl	Run_Game
	.set	nomips16
	.set	nomicromips
	.ent	Run_Game
	.type	Run_Game, @function
Run_Game:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Run_Game
	.size	Run_Game, .-Run_Game
	.align	2
	.globl	switch_state
	.set	nomips16
	.set	nomicromips
	.ent	switch_state
	.type	switch_state, @function
switch_state:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	sw	$5,8($4)
	lw	$2,20($4)
	beq	$2,$0,.L22
	move	$16,$5

	jalr	$2
	nop

.L22:
	lw	$2,16($16)
	beq	$2,$0,.L24
	lw	$31,20($sp)

	jalr	$2
	move	$4,$16

	lw	$31,20($sp)
.L24:
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	switch_state
	.size	switch_state, .-switch_state
	.align	2
	.globl	pollIO15
	.set	nomips16
	.set	nomicromips
	.ent	pollIO15
	.type	pollIO15, @function
pollIO15:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pollIO15
	.size	pollIO15, .-pollIO15
	.align	2
	.globl	user_ping
	.set	nomips16
	.set	nomicromips
	.ent	user_ping
	.type	user_ping, @function
user_ping:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	user_ping
	.size	user_ping, .-user_ping
	.align	2
	.globl	basicSlide
	.set	nomips16
	.set	nomicromips
	.ent	basicSlide
	.type	basicSlide, @function
basicSlide:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	basicSlide
	.size	basicSlide, .-basicSlide
	.align	2
	.globl	superSlide
	.set	nomips16
	.set	nomicromips
	.ent	superSlide
	.type	superSlide, @function
superSlide:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	superSlide
	.size	superSlide, .-superSlide
	.align	2
	.globl	manual_contrast
	.set	nomips16
	.set	nomicromips
	.ent	manual_contrast
	.type	manual_contrast, @function
manual_contrast:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	manual_contrast
	.size	manual_contrast, .-manual_contrast
	.align	2
	.globl	printTouchVals
	.set	nomips16
	.set	nomicromips
	.ent	printTouchVals
	.type	printTouchVals, @function
printTouchVals:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	printTouchVals
	.size	printTouchVals, .-printTouchVals
	.align	2
	.globl	browse_schedule
	.set	nomips16
	.set	nomicromips
	.ent	browse_schedule
	.type	browse_schedule, @function
browse_schedule:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	browse_schedule
	.size	browse_schedule, .-browse_schedule
	.align	2
	.globl	adjust_time
	.set	nomips16
	.set	nomicromips
	.ent	adjust_time
	.type	adjust_time, @function
adjust_time:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	adjust_time
	.size	adjust_time, .-adjust_time
	.align	2
	.globl	image_viewer
	.set	nomips16
	.set	nomicromips
	.ent	image_viewer
	.type	image_viewer, @function
image_viewer:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	image_viewer
	.size	image_viewer, .-image_viewer
	.align	2
	.globl	setup_screen_saver
	.set	nomips16
	.set	nomicromips
	.ent	setup_screen_saver
	.type	setup_screen_saver, @function
setup_screen_saver:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setup_screen_saver
	.size	setup_screen_saver, .-setup_screen_saver
	.align	2
	.globl	gogo_screen_saver
	.set	nomips16
	.set	nomicromips
	.ent	gogo_screen_saver
	.type	gogo_screen_saver, @function
gogo_screen_saver:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	gogo_screen_saver
	.size	gogo_screen_saver, .-gogo_screen_saver
	.align	2
	.globl	sendMsg
	.set	nomips16
	.set	nomicromips
	.ent	sendMsg
	.type	sendMsg, @function
sendMsg:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	sendMsg
	.size	sendMsg, .-sendMsg
	.align	2
	.globl	adjust_backlight_slider
	.set	nomips16
	.set	nomicromips
	.ent	adjust_backlight_slider
	.type	adjust_backlight_slider, @function
adjust_backlight_slider:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	adjust_backlight_slider
	.size	adjust_backlight_slider, .-adjust_backlight_slider
	.align	2
	.globl	adjust_backlight
	.set	nomips16
	.set	nomicromips
	.ent	adjust_backlight
	.type	adjust_backlight, @function
adjust_backlight:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	adjust_backlight
	.size	adjust_backlight, .-adjust_backlight
	.globl	pix2
	.section	.bss,bss
	.align	2
	.type	pix2, @object
	.size	pix2, 504
pix2:
	.space	504
	.globl	game_txt
	.section	.rodata,code
	.align	2
	.type	game_txt, @object
	.size	game_txt, 11
game_txt:
	.ascii	"DIVERSIONS\000"
	.globl	schedule_txt
	.align	2
	.type	schedule_txt, @object
	.size	schedule_txt, 9
schedule_txt:
	.ascii	"SCHEDULE\000"
	.globl	settings_txt
	.align	2
	.type	settings_txt, @object
	.size	settings_txt, 9
settings_txt:
	.ascii	"SETTINGS\000"
	.globl	snake_txt
	.align	2
	.type	snake_txt, @object
	.size	snake_txt, 6
snake_txt:
	.ascii	"SNAKE\000"
	.globl	adventure_txt
	.align	2
	.type	adventure_txt, @object
	.size	adventure_txt, 10
adventure_txt:
	.ascii	"ADVENTURE\000"
	.globl	sketch_txt
	.align	2
	.type	sketch_txt, @object
	.size	sketch_txt, 7
sketch_txt:
	.ascii	"SKETCH\000"
	.globl	bird_txt
	.align	2
	.type	bird_txt, @object
	.size	bird_txt, 11
bird_txt:
	.ascii	"BADGY BIRD\000"
	.globl	pong_txt
	.align	2
	.type	pong_txt, @object
	.size	pong_txt, 5
pong_txt:
	.ascii	"PONG\000"
	.globl	images_txt
	.align	2
	.type	images_txt, @object
	.size	images_txt, 7
images_txt:
	.ascii	"IMAGES\000"
	.globl	set_backlight
	.align	2
	.type	set_backlight, @object
	.size	set_backlight, 10
set_backlight:
	.ascii	"BACKLIGHT\000"
	.globl	adjust_contrast
	.align	2
	.type	adjust_contrast, @object
	.size	adjust_contrast, 9
adjust_contrast:
	.ascii	"CONTRAST\000"
	.globl	enable_speaker
	.align	2
	.type	enable_speaker, @object
	.size	enable_speaker, 8
enable_speaker:
	.ascii	"SPEAKER\000"
	.globl	set_time_txt
	.align	2
	.type	set_time_txt, @object
	.size	set_time_txt, 9
set_time_txt:
	.ascii	"SET TIME\000"
	.globl	screen_saver_txt
	.align	2
	.type	screen_saver_txt, @object
	.size	screen_saver_txt, 13
screen_saver_txt:
	.ascii	"SCREEN SAVER\000"
	.globl	screen_saver_on_txt
	.align	2
	.type	screen_saver_on_txt, @object
	.size	screen_saver_on_txt, 14
screen_saver_on_txt:
	.ascii	"SCRN SAVER ON\000"
	.globl	ping_txt
	.align	2
	.type	ping_txt, @object
	.size	ping_txt, 5
ping_txt:
	.ascii	"PING\000"
	.globl	day1_txt
	.align	2
	.type	day1_txt, @object
	.size	day1_txt, 6
day1_txt:
	.ascii	"DAY 1\000"
	.globl	day2_txt
	.align	2
	.type	day2_txt, @object
	.size	day2_txt, 6
day2_txt:
	.ascii	"DAY 2\000"
	.globl	go_back
	.align	2
	.type	go_back, @object
	.size	go_back, 9
go_back:
	.ascii	"<-[BACK]\000"
	.globl	more_txt
	.align	2
	.type	more_txt, @object
	.size	more_txt, 7
more_txt:
	.ascii	"[MORE]\000"

	.comm	core,16,4

	.comm	main_buff,8,4

	.comm	bird_idle_buff,8,4

	.comm	btm_size,1,1

	.comm	side_size,1,1

	.comm	button_pressed,1,1

	.comm	button_cnt,1,1

	.comm	button_used,1,1

	.comm	screen_images,12,4

	.comm	snake_state,104,4

	.comm	sketch_state,104,4

	.comm	manual_contrast_state,104,4

	.comm	bird_state,104,4

	.comm	schedule_browse_state,104,4

	.comm	set_time_state,104,4

	.comm	image_viewer_state,104,4

	.comm	screen_saver_setup_state,104,4

	.comm	screen_saver_state,104,4

	.comm	ping_state,104,4

	.comm	set_backlight_state,104,4

	.comm	sprite_maker_state,104,4

	.comm	etch_a_sketch_state,104,4

	.comm	touch_calibrate_state,104,4

	.comm	badgy_bird_state,104,4

	.comm	max_lower_left,1,1

	.comm	max_lower_right,1,1

	.comm	max_side_left,1,1

	.comm	max_side_right,1,1

	.comm	start_state,104,4

	.comm	main_entries,12,4

	.comm	games,12,4

	.comm	schedule,12,4

	.comm	settings,12,4

	.comm	sketch,12,4

	.comm	adventure,12,4

	.comm	game_entries,24,4

	.comm	snake_e,12,4

	.comm	bird_e,12,4

	.comm	pong_e,12,4

	.comm	more_games_e,12,4

	.comm	more_game_entries,12,4

	.comm	images_e,12,4

	.comm	ping_e,12,4

	.comm	settings_entries,24,4

	.comm	backlight,12,4

	.comm	contrast,12,4

	.comm	set_time,12,4

	.comm	speaker,12,4

	.comm	more_settings_e,12,4

	.comm	more_settings_entries,12,4

	.comm	screen_saver_e,12,4

	.comm	screen_saver_activate,12,4

	.comm	day_pick_entries,12,4

	.comm	day1_e,12,4

	.comm	day2_e,12,4

	.comm	back_to_main,12,4

	.comm	back_to_games,12,4

	.comm	back_to_settings,12,4

	.comm	current_menu,4,4

	.comm	main_page,12,4

	.comm	games_page,12,4

	.comm	settings_page,12,4

	.comm	schedule_page,12,4

	.comm	more_settings_page,12,4

	.comm	more_games_page,12,4

	.comm	day_pick_page,12,4

	.comm	sample_counter,4,4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
