@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	1, 0
	.type	 sBagWindowPalF,object
sBagWindowPalF:
	.short	0x7fff
	.short	0x7fff
	.short	0x318c
	.short	0x675a
	.short	0x43c
	.short	0x3aff
	.short	0x664
	.short	0x4bd2
	.short	0x6546
	.short	0x7b14
	.short	0x0
	.short	0x0
	.short	0x0
	.short	0x4a7f
	.short	0x7fff
	.short	0x2977
	.size	 sBagWindowPalF,32
	.type	 sTextColors,object
sTextColors:
	.byte	0x0
	.byte	0x1
	.byte	0x2
	.byte	0x0
	.byte	0x2
	.byte	0x3
	.byte	0x0
	.byte	0x3
	.byte	0x2
	.byte	0x0
	.byte	0x8
	.byte	0x9
	.size	 sTextColors,12
	.align	2, 0
	.type	 sDefaultBagWindowsStd,object
sDefaultBagWindowsStd:
	.byte	0x0
	.byte	0xb
	.byte	0x1
	.byte	0x12
	.byte	0xc
	.byte	0xf
	.short	0x8a
	.byte	0x0
	.byte	0x5
	.byte	0xe
	.byte	0x19
	.byte	0x6
	.byte	0xf
	.short	0x162
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0xf
	.short	0x1f8
	.byte	0xff
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.size	 sDefaultBagWindowsStd,32
	.align	2, 0
	.type	 sDefaultBagWindowsDeposit,object
sDefaultBagWindowsDeposit:
	.byte	0x0
	.byte	0xb
	.byte	0x1
	.byte	0x12
	.byte	0xc
	.byte	0xf
	.short	0x8a
	.byte	0x0
	.byte	0x5
	.byte	0xe
	.byte	0x19
	.byte	0x6
	.byte	0xf
	.short	0x162
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0xc
	.short	0x1f8
	.byte	0xff
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.size	 sDefaultBagWindowsDeposit,32
	.align	2, 0
	.type	 sWindowTemplates,object
sWindowTemplates:
	.byte	0x0
	.byte	0x18
	.byte	0xf
	.byte	0x5
	.byte	0x4
	.byte	0xf
	.short	0x242
	.byte	0x0
	.byte	0x11
	.byte	0x9
	.byte	0xc
	.byte	0x4
	.byte	0xf
	.short	0x242
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0xc
	.short	0x272
	.byte	0x0
	.byte	0x17
	.byte	0xf
	.byte	0x6
	.byte	0x4
	.byte	0xf
	.short	0x28a
	.byte	0x0
	.byte	0x15
	.byte	0x9
	.byte	0x6
	.byte	0x4
	.byte	0xf
	.short	0x28a
	.byte	0x0
	.byte	0x2
	.byte	0xf
	.byte	0x1a
	.byte	0x4
	.byte	0xf
	.short	0x2a2
	.byte	0x0
	.byte	0x6
	.byte	0xf
	.byte	0xe
	.byte	0x4
	.byte	0xc
	.short	0x2a2
	.byte	0x0
	.byte	0x6
	.byte	0xf
	.byte	0xf
	.byte	0x4
	.byte	0xc
	.short	0x2da
	.byte	0x0
	.byte	0x6
	.byte	0xf
	.byte	0x10
	.byte	0x4
	.byte	0xc
	.short	0x316
	.byte	0x0
	.byte	0x6
	.byte	0xf
	.byte	0x17
	.byte	0x4
	.byte	0xc
	.short	0x356
	.byte	0x0
	.byte	0x16
	.byte	0x11
	.byte	0x7
	.byte	0x2
	.byte	0xf
	.short	0x20a
	.byte	0x0
	.byte	0x16
	.byte	0xf
	.byte	0x7
	.byte	0x4
	.byte	0xf
	.short	0x20a
	.byte	0x0
	.byte	0x16
	.byte	0xd
	.byte	0x7
	.byte	0x6
	.byte	0xf
	.short	0x20a
	.byte	0x0
	.byte	0x16
	.byte	0xb
	.byte	0x7
	.byte	0x8
	.byte	0xf
	.short	0x20a
	.size	 sWindowTemplates,112
	.type	 sUnused,object
sUnused:
	.byte	0x10
	.byte	0x8
	.byte	0x4
	.size	 sUnused,3
	.section ewram_data,"aw"
	.type	 sOpenWindows,object
	.size	 sOpenWindows,11
sOpenWindows:
	.space	11
.text
	.align	2, 0
	.globl	InitBagWindows
	.type	 InitBagWindows,function
	.thumb_func
InitBagWindows:
	push	{r4, lr}
	ldr	r0, .L15
	ldrb	r0, [r0, #0x4]
	cmp	r0, #0x3
	beq	.L3	@cond_branch
	ldr	r0, .L15+0x4
	bl	InitWindows
	b	.L4
.L16:
	.align	2, 0
.L15:
	.word	gBagMenuState
	.word	sDefaultBagWindowsStd
.L3:
	ldr	r0, .L17
	bl	InitWindows
.L4:
	bl	DeactivateAllTextPrinters
	mov	r0, #0x0
	mov	r1, #0x64
	mov	r2, #0xe0
	bl	LoadUserWindowGfx
	mov	r0, #0x0
	mov	r1, #0x6d
	mov	r2, #0xd0
	bl	LoadMenuMessageWindowGfx
	mov	r0, #0x0
	mov	r1, #0x81
	mov	r2, #0xc0
	bl	LoadStdWindowGfx
	ldr	r0, .L17+0x4
	mov	r1, #0xf0
	mov	r2, #0x20
	bl	LoadPalette
	mov	r4, #0x0
.L8:
	add	r0, r4, #0
	mov	r1, #0x0
	bl	FillWindowPixelBuffer
	add	r0, r4, #0
	bl	PutWindowTilemap
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x2
	bls	.L8	@cond_branch
	mov	r0, #0x0
	bl	ScheduleBgCopyTilemapToVram
	mov	r4, #0x0
	ldr	r3, .L17+0x8
	mov	r2, #0xff
.L13:
	add	r0, r4, r3
	ldrb	r1, [r0]
	orr	r1, r1, r2
	strb	r1, [r0]
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0xa
	bls	.L13	@cond_branch
	pop	{r4}
	pop	{r0}
	bx	r0
.L18:
	.align	2, 0
.L17:
	.word	sDefaultBagWindowsDeposit
	.word	sBagWindowPalF
	.word	sOpenWindows
.Lfe1:
	.size	 InitBagWindows,.Lfe1-InitBagWindows
	.align	2, 0
	.globl	BagPrintTextOnWindow
	.type	 BagPrintTextOnWindow,function
	.thumb_func
BagPrintTextOnWindow:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x14
	mov	r9, r3
	ldr	r3, [sp, #0x30]
	ldr	r4, [sp, #0x34]
	ldr	r6, [sp, #0x38]
	ldr	r5, [sp, #0x3c]
	mov	r8, r5
	ldr	r5, [sp, #0x40]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r7, r9
	lsl	r7, r7, #0x18
	lsr	r7, r7, #0x18
	mov	r9, r7
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	str	r4, [sp]
	str	r6, [sp, #0x4]
	lsl	r4, r5, #0x1
	add	r4, r4, r5
	ldr	r5, .L20
	add	r4, r4, r5
	str	r4, [sp, #0x8]
	mov	r4, r8
	lsl	r4, r4, #0x18
	asr	r4, r4, #0x18
	str	r4, [sp, #0xc]
	str	r2, [sp, #0x10]
	mov	r2, r9
	bl	AddTextPrinterParameterized4
	add	sp, sp, #0x14
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L21:
	.align	2, 0
.L20:
	.word	sTextColors
.Lfe2:
	.size	 BagPrintTextOnWindow,.Lfe2-BagPrintTextOnWindow
	.align	2, 0
	.globl	BagPrintTextOnWin1CenteredColor0
	.type	 BagPrintTextOnWin1CenteredColor0,function
	.thumb_func
BagPrintTextOnWin1CenteredColor0:
	push	{r4, lr}
	add	sp, sp, #-0xc
	add	r4, r0, #0
	mov	r0, #0x1
	add	r1, r4, #0
	mov	r2, #0x0
	bl	GetStringWidth
	mov	r2, #0x48
	sub	r2, r2, r0
	lsr	r2, r2, #0x1
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	ldr	r0, .L23
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	str	r4, [sp, #0x8]
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r3, #0x1
	bl	AddTextPrinterParameterized3
	add	sp, sp, #0xc
	pop	{r4}
	pop	{r0}
	bx	r0
.L24:
	.align	2, 0
.L23:
	.word	sTextColors
.Lfe3:
	.size	 BagPrintTextOnWin1CenteredColor0,.Lfe3-BagPrintTextOnWin1CenteredColor0
	.align	2, 0
	.globl	BagDrawDepositItemTextBox
	.type	 BagDrawDepositItemTextBox,function
	.thumb_func
BagDrawDepositItemTextBox:
	push	{r4, lr}
	add	sp, sp, #-0xc
	mov	r0, #0x2
	mov	r1, #0x0
	mov	r2, #0x81
	mov	r3, #0xc
	bl	DrawStdFrameWithCustomTileAndPalette
	ldr	r4, .L26
	mov	r0, #0x0
	add	r1, r4, #0
	mov	r2, #0x0
	bl	GetStringWidth
	mov	r3, #0x40
	sub	r3, r3, r0
	lsr	r3, r3, #0x1
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	mov	r0, #0x1
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	str	r0, [sp, #0x8]
	mov	r0, #0x2
	mov	r1, #0x0
	add	r2, r4, #0
	bl	AddTextPrinterParameterized
	add	sp, sp, #0xc
	pop	{r4}
	pop	{r0}
	bx	r0
.L27:
	.align	2, 0
.L26:
	.word	gText_DepositItem
.Lfe4:
	.size	 BagDrawDepositItemTextBox,.Lfe4-BagDrawDepositItemTextBox
	.align	2, 0
	.globl	ShowBagWindow
	.type	 ShowBagWindow,function
	.thumb_func
ShowBagWindow:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	ldr	r6, .L32
	add	r4, r5, r6
	ldrb	r0, [r4]
	cmp	r0, #0xff
	bne	.L29	@cond_branch
	add	r0, r5, r1
	lsl	r0, r0, #0x3
	ldr	r1, .L32+0x4
	add	r0, r0, r1
	bl	AddWindow
	strb	r0, [r4]
	cmp	r5, #0x6
	beq	.L30	@cond_branch
	ldrb	r0, [r4]
	mov	r1, #0x0
	mov	r2, #0x64
	mov	r3, #0xe
	bl	DrawStdFrameWithCustomTileAndPalette
	b	.L31
.L33:
	.align	2, 0
.L32:
	.word	sOpenWindows
	.word	sWindowTemplates
.L30:
	ldrb	r0, [r6, #0x6]
	mov	r1, #0x0
	mov	r2, #0x81
	mov	r3, #0xc
	bl	DrawStdFrameWithCustomTileAndPalette
.L31:
	mov	r0, #0x0
	bl	ScheduleBgCopyTilemapToVram
.L29:
	ldr	r0, .L34
	add	r0, r5, r0
	ldrb	r0, [r0]
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L35:
	.align	2, 0
.L34:
	.word	sOpenWindows
.Lfe5:
	.size	 ShowBagWindow,.Lfe5-ShowBagWindow
	.align	2, 0
	.globl	HideBagWindow
	.type	 HideBagWindow,function
	.thumb_func
HideBagWindow:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	ldr	r0, .L37
	add	r4, r4, r0
	ldrb	r0, [r4]
	mov	r1, #0x0
	bl	ClearStdWindowAndFrameToTransparent
	ldrb	r0, [r4]
	bl	ClearWindowTilemap
	ldrb	r0, [r4]
	bl	RemoveWindow
	mov	r0, #0x0
	bl	ScheduleBgCopyTilemapToVram
	mov	r0, #0xff
	strb	r0, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.L38:
	.align	2, 0
.L37:
	.word	sOpenWindows
.Lfe6:
	.size	 HideBagWindow,.Lfe6-HideBagWindow
	.align	2, 0
	.globl	OpenBagWindow
	.type	 OpenBagWindow,function
	.thumb_func
OpenBagWindow:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	ldr	r0, .L41
	add	r4, r1, r0
	ldrb	r0, [r4]
	cmp	r0, #0xff
	bne	.L40	@cond_branch
	lsl	r0, r1, #0x3
	ldr	r1, .L41+0x4
	add	r0, r0, r1
	bl	AddWindow
	strb	r0, [r4]
.L40:
	ldrb	r0, [r4]
	pop	{r4}
	pop	{r1}
	bx	r1
.L42:
	.align	2, 0
.L41:
	.word	sOpenWindows
	.word	sWindowTemplates
.Lfe7:
	.size	 OpenBagWindow,.Lfe7-OpenBagWindow
	.align	2, 0
	.globl	CloseBagWindow
	.type	 CloseBagWindow,function
	.thumb_func
CloseBagWindow:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L45
	add	r4, r0, r1
	ldrb	r0, [r4]
	cmp	r0, #0xff
	beq	.L44	@cond_branch
	mov	r1, #0x0
	bl	ClearDialogWindowAndFrameToTransparent
	ldrb	r0, [r4]
	bl	ClearWindowTilemap
	ldrb	r0, [r4]
	bl	RemoveWindow
	mov	r0, #0x1
	bl	PutWindowTilemap
	mov	r0, #0x0
	bl	ScheduleBgCopyTilemapToVram
	mov	r0, #0xff
	strb	r0, [r4]
.L44:
	pop	{r4}
	pop	{r0}
	bx	r0
.L46:
	.align	2, 0
.L45:
	.word	sOpenWindows
.Lfe8:
	.size	 CloseBagWindow,.Lfe8-CloseBagWindow
	.align	2, 0
	.globl	GetBagWindow
	.type	 GetBagWindow,function
	.thumb_func
GetBagWindow:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L48
	add	r0, r0, r1
	ldrb	r0, [r0]
	bx	lr
.L49:
	.align	2, 0
.L48:
	.word	sOpenWindows
.Lfe9:
	.size	 GetBagWindow,.Lfe9-GetBagWindow
	.align	2, 0
	.globl	BagCreateYesNoMenuBottomRight
	.type	 BagCreateYesNoMenuBottomRight,function
	.thumb_func
BagCreateYesNoMenuBottomRight:
	push	{lr}
	add	sp, sp, #-0x10
	add	r3, r1, #0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L51
	mov	r2, #0x2
	str	r2, [sp]
	mov	r2, #0x64
	str	r2, [sp, #0x4]
	mov	r2, #0xe
	str	r2, [sp, #0x8]
	str	r3, [sp, #0xc]
	mov	r2, #0x2
	mov	r3, #0x0
	bl	CreateYesNoMenuWithCallbacks
	add	sp, sp, #0x10
	pop	{r0}
	bx	r0
.L52:
	.align	2, 0
.L51:
	.word	sWindowTemplates+0x18
.Lfe10:
	.size	 BagCreateYesNoMenuBottomRight,.Lfe10-BagCreateYesNoMenuBottomRight
	.align	2, 0
	.globl	BagCreateYesNoMenuTopRight
	.type	 BagCreateYesNoMenuTopRight,function
	.thumb_func
BagCreateYesNoMenuTopRight:
	push	{lr}
	add	sp, sp, #-0x10
	add	r3, r1, #0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L54
	mov	r2, #0x2
	str	r2, [sp]
	mov	r2, #0x64
	str	r2, [sp, #0x4]
	mov	r2, #0xe
	str	r2, [sp, #0x8]
	str	r3, [sp, #0xc]
	mov	r2, #0x2
	mov	r3, #0x0
	bl	CreateYesNoMenuWithCallbacks
	add	sp, sp, #0x10
	pop	{r0}
	bx	r0
.L55:
	.align	2, 0
.L54:
	.word	sWindowTemplates+0x20
.Lfe11:
	.size	 BagCreateYesNoMenuTopRight,.Lfe11-BagCreateYesNoMenuTopRight
	.align	2, 0
	.globl	BagPrintMoneyAmount
	.type	 BagPrintMoneyAmount,function
	.thumb_func
BagPrintMoneyAmount:
	push	{r4, lr}
	mov	r0, #0x2
	mov	r1, #0x0
	bl	ShowBagWindow
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	ldr	r0, .L57
	ldr	r0, [r0]
	mov	r1, #0xa4
	lsl	r1, r1, #0x2
	add	r0, r0, r1
	bl	GetMoney
	add	r3, r0, #0
	add	r0, r4, #0
	mov	r1, #0x81
	mov	r2, #0xc
	bl	PrintMoneyAmountInMoneyBoxWithBorder
	pop	{r4}
	pop	{r0}
	bx	r0
.L58:
	.align	2, 0
.L57:
	.word	gSaveBlock1Ptr
.Lfe12:
	.size	 BagPrintMoneyAmount,.Lfe12-BagPrintMoneyAmount
	.align	2, 0
	.globl	BagDrawTextBoxOnWindow
	.type	 BagDrawTextBoxOnWindow,function
	.thumb_func
BagDrawTextBoxOnWindow:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0x64
	mov	r2, #0xe
	bl	DrawTextBorderOuter
	pop	{r0}
	bx	r0
.Lfe13:
	.size	 BagDrawTextBoxOnWindow,.Lfe13-BagDrawTextBoxOnWindow
.text
	.align	2, 0 @ Don't pad with nop

