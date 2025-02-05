@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	2, 0
	.type	 sTempScrollArrowTemplate,object
	.size	 sTempScrollArrowTemplate,16
sTempScrollArrowTemplate:
	.byte	0x0
	.space	15
	.section .rodata
	.align	2, 0
	.type	 sScrollIndicatorTemplates,object
	.size	 sScrollIndicatorTemplates,16
sScrollIndicatorTemplates:
	.byte	0x0
	.byte	0x2
	.short	0x8
	.byte	0x1
	.byte	0x2
	.short	-0x8
	.byte	0x12
	.byte	0x2
	.short	0x8
	.byte	0x13
	.byte	0x2
	.short	-0x8
	.align	2, 0
	.type	 sOamData_ScrollArrowIndicator,object
	.size	 sOamData_ScrollArrowIndicator,8
sOamData_ScrollArrowIndicator:
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x40
	.byte	0x0
	.byte	0x0
	.short	0x0
	.align	2, 0
	.type	 sSpriteAnim_ScrollArrowIndicator0,object
sSpriteAnim_ScrollArrowIndicator0:
	.short	0x0
	.byte	0x1e
	.space	1
	.short	-0x1
	.space	2
	.size	 sSpriteAnim_ScrollArrowIndicator0,8
	.align	2, 0
	.type	 sSpriteAnim_ScrollArrowIndicator1,object
sSpriteAnim_ScrollArrowIndicator1:
	.short	0x0
	.byte	0x5e
	.space	1
	.short	-0x1
	.space	2
	.size	 sSpriteAnim_ScrollArrowIndicator1,8
	.align	2, 0
	.type	 sSpriteAnim_ScrollArrowIndicator2,object
sSpriteAnim_ScrollArrowIndicator2:
	.short	0x4
	.byte	0x1e
	.space	1
	.short	-0x1
	.space	2
	.size	 sSpriteAnim_ScrollArrowIndicator2,8
	.align	2, 0
	.type	 sSpriteAnim_ScrollArrowIndicator3,object
sSpriteAnim_ScrollArrowIndicator3:
	.short	0x4
	.byte	0x9e
	.space	1
	.short	-0x1
	.space	2
	.size	 sSpriteAnim_ScrollArrowIndicator3,8
	.align	2, 0
	.type	 sSpriteAnimTable_ScrollArrowIndicator,object
sSpriteAnimTable_ScrollArrowIndicator:
	.word	sSpriteAnim_ScrollArrowIndicator0
	.word	sSpriteAnim_ScrollArrowIndicator1
	.word	sSpriteAnim_ScrollArrowIndicator2
	.word	sSpriteAnim_ScrollArrowIndicator3
	.size	 sSpriteAnimTable_ScrollArrowIndicator,16
	.align	2, 0
	.type	 sSpriteTemplate_ScrollArrowIndicator,object
	.size	 sSpriteTemplate_ScrollArrowIndicator,24
sSpriteTemplate_ScrollArrowIndicator:
	.short	0x0
	.short	0x0
	.word	sOamData_ScrollArrowIndicator
	.word	sSpriteAnimTable_ScrollArrowIndicator
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	SpriteCallback_ScrollIndicatorArrow
	.align	2, 0
	.type	 sSubsprite_RedOutline1,object
	.size	 sSubsprite_RedOutline1,4
sSubsprite_RedOutline1:
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.align	2, 0
	.type	 sSubsprite_RedOutline2,object
	.size	 sSubsprite_RedOutline2,4
sSubsprite_RedOutline2:
	.byte	0x0
	.byte	0x0
	.byte	0x10
	.byte	0x0
	.align	2, 0
	.type	 sSubsprite_RedOutline3,object
	.size	 sSubsprite_RedOutline3,4
sSubsprite_RedOutline3:
	.byte	0x0
	.byte	0x0
	.byte	0x20
	.byte	0x0
	.align	2, 0
	.type	 sSubsprite_RedOutline4,object
	.size	 sSubsprite_RedOutline4,4
sSubsprite_RedOutline4:
	.byte	0x0
	.byte	0x0
	.byte	0x30
	.byte	0x0
	.align	2, 0
	.type	 sSubsprite_RedOutline5,object
	.size	 sSubsprite_RedOutline5,4
sSubsprite_RedOutline5:
	.byte	0x0
	.byte	0x0
	.byte	0x40
	.byte	0x0
	.align	2, 0
	.type	 sSubsprite_RedOutline6,object
	.size	 sSubsprite_RedOutline6,4
sSubsprite_RedOutline6:
	.byte	0x0
	.byte	0x0
	.byte	0x50
	.byte	0x0
	.align	2, 0
	.type	 sSubsprite_RedOutline7,object
	.size	 sSubsprite_RedOutline7,4
sSubsprite_RedOutline7:
	.byte	0x0
	.byte	0x0
	.byte	0x60
	.byte	0x0
	.align	2, 0
	.type	 sSubsprite_RedOutline8,object
	.size	 sSubsprite_RedOutline8,4
sSubsprite_RedOutline8:
	.byte	0x0
	.byte	0x0
	.byte	0x70
	.byte	0x0
	.align	2, 0
	.type	 sOamData_RedArrowCursor,object
	.size	 sOamData_RedArrowCursor,8
sOamData_RedArrowCursor:
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x40
	.byte	0x0
	.byte	0x0
	.short	0x0
	.align	2, 0
	.type	 sSpriteAnim_RedArrowCursor,object
sSpriteAnim_RedArrowCursor:
	.short	0x0
	.byte	0x1e
	.space	1
	.short	-0x1
	.space	2
	.size	 sSpriteAnim_RedArrowCursor,8
	.align	2, 0
	.type	 sSpriteAnimTable_RedArrowCursor,object
sSpriteAnimTable_RedArrowCursor:
	.word	sSpriteAnim_RedArrowCursor
	.size	 sSpriteAnimTable_RedArrowCursor,4
	.align	2, 0
	.type	 sSpriteTemplate_RedArrowCursor,object
	.size	 sSpriteTemplate_RedArrowCursor,24
sSpriteTemplate_RedArrowCursor:
	.short	0x0
	.short	0x0
	.word	sOamData_RedArrowCursor
	.word	sSpriteAnimTable_RedArrowCursor
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	SpriteCallback_RedArrowCursor
	.align	1, 0
	.type	 sRedArrowPal,object
sRedArrowPal:
	.short	0x628e
	.short	0x15f
	.short	0x90
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.size	 sRedArrowPal,32
	.align	2, 0
	.type	 sRedArrowOtherGfx,object
sRedArrowOtherGfx:
	.word	0x10010
	.word	0x6000002a
	.word	0x3002001
	.word	0x11060012
	.word	0x110600ac
	.word	0x110600
	.word	0xb0006
	.word	0x224b00
	.word	0x30021103
	.word	0xb002103
	.word	0xff0310
	.word	0x2003200a
	.word	0x102b1023
	.word	0x103b2033
	.word	-0xb4dfbd
	.word	0x27500120
	.word	0x47503750
	.word	0x1c05310
	.word	0x7f407ff0
	.word	0x604750eb
	.word	0x1108003f
	.word	0x110800
	.word	0x1d260008
	.word	0x112022
	.word	0x2050f04d
	.word	0x28102201
	.word	0x71f02260
	.word	0x150
	.size	 sRedArrowOtherGfx,112
	.align	2, 0
	.type	 sSelectorOutlineGfx,object
sSelectorOutlineGfx:
	.word	0x10010
	.word	0x11111000
	.word	0x1111
	.word	-0xffe8300
	.word	0x32003
	.word	0x6201d
	.word	0x3f01003
	.word	0x3e50007f
	.word	0x14001f0
	.word	0x3b053f0
	.word	0x3e053f0
	.word	0x4001f0ff
	.word	-0xf84efff
	.word	0x40b74053
	.word	0x604ff09c
	.word	0x3e208003
	.size	 sSelectorOutlineGfx,64
	.align	2, 0
	.type	 sRedArrowGfx,object
sRedArrowGfx:
	.word	0x8010
	.word	0x222000
	.word	0x22111200
	.word	0x11200902
	.word	0x8002111
	.word	0x8000011
	.word	0x201110f9
	.word	0x300b2003
	.word	0x260001
	.word	0x43040011
	.word	0x11040011
	.word	0x30021111
	.word	0x7f3c2003
	.word	0x203b1011
	.word	-0x3fdbefbd
	.word	-0xfddefff
	.word	0x17016
	.size	 sRedArrowGfx,68
.text
	.align	2, 0
	.type	 SpriteCallback_ScrollIndicatorArrow,function
	.thumb_func
SpriteCallback_ScrollIndicatorArrow:
	push	{r4, lr}
	add	r4, r0, #0
	mov	r1, #0x2e
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	beq	.L4	@cond_branch
	cmp	r0, #0x1
	beq	.L5	@cond_branch
	b	.L3
.L4:
	ldrh	r1, [r4, #0x30]
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	StartSpriteAnim
	ldrh	r0, [r4, #0x2e]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x2e]
	b	.L3
.L5:
	mov	r1, #0x32
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	beq	.L7	@cond_branch
	cmp	r0, #0x1
	beq	.L9	@cond_branch
	ldrh	r2, [r4, #0x38]
	b	.L6
.L7:
	mov	r0, #0x34
	ldrsh	r3, [r4, r0]
	ldr	r1, .L15
	ldrh	r2, [r4, #0x38]
	lsl	r0, r2, #0x18
	lsr	r0, r0, #0x17
	add	r0, r0, r1
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mul	r0, r0, r3
	cmp	r0, #0
	bge	.L8	@cond_branch
	add	r0, r0, #0xff
.L8:
	asr	r0, r0, #0x8
	strh	r0, [r4, #0x24]
	b	.L6
.L16:
	.align	2, 0
.L15:
	.word	gSineTable
.L9:
	mov	r0, #0x34
	ldrsh	r3, [r4, r0]
	ldr	r1, .L17
	ldrh	r2, [r4, #0x38]
	lsl	r0, r2, #0x18
	lsr	r0, r0, #0x17
	add	r0, r0, r1
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mul	r0, r0, r3
	cmp	r0, #0
	bge	.L10	@cond_branch
	add	r0, r0, #0xff
.L10:
	asr	r0, r0, #0x8
	strh	r0, [r4, #0x26]
.L6:
	ldrh	r0, [r4, #0x36]
	add	r0, r2, r0
	strh	r0, [r4, #0x38]
.L3:
	pop	{r4}
	pop	{r0}
	bx	r0
.L18:
	.align	2, 0
.L17:
	.word	gSineTable
.Lfe1:
	.size	 SpriteCallback_ScrollIndicatorArrow,.Lfe1-SpriteCallback_ScrollIndicatorArrow
	.align	2, 0
	.type	 AddScrollIndicatorArrowObject,function
	.thumb_func
AddScrollIndicatorArrowObject:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x18
	add	r6, r0, #0
	ldr	r5, [sp, #0x30]
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r8, r6
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	mov	ip, r5
	mov	r4, sp
	ldr	r0, .L20
	ldmia	r0!, {r5, r6, r7}
	stmia	r4!, {r5, r6, r7}
	ldmia	r0!, {r5, r6, r7}
	stmia	r4!, {r5, r6, r7}
	mov	r0, sp
	mov	r4, #0x0
	strh	r3, [r0]
	mov	r3, ip
	strh	r3, [r0, #0x2]
	mov	r3, #0x0
	bl	CreateSprite
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L20+0x4
	lsl	r3, r0, #0x4
	add	r3, r3, r0
	lsl	r3, r3, #0x2
	add	r3, r3, r1
	add	r5, r3, #0
	add	r5, r5, #0x3e
	ldrb	r1, [r5]
	mov	r2, #0x4
	orr	r1, r1, r2
	strb	r1, [r5]
	strh	r4, [r3, #0x2e]
	ldr	r1, .L20+0x8
	mov	r5, r8
	lsl	r6, r5, #0x2
	add	r6, r6, r1
	ldrb	r2, [r6]
	lsl	r1, r2, #0x1c
	lsr	r1, r1, #0x1c
	strh	r1, [r3, #0x30]
	lsr	r2, r2, #0x4
	strh	r2, [r3, #0x32]
	ldrb	r1, [r6, #0x1]
	strh	r1, [r3, #0x34]
	ldrh	r1, [r6, #0x2]
	strh	r1, [r3, #0x36]
	strh	r4, [r3, #0x38]
	add	sp, sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L21:
	.align	2, 0
.L20:
	.word	sSpriteTemplate_ScrollArrowIndicator
	.word	gSprites
	.word	sScrollIndicatorTemplates
.Lfe2:
	.size	 AddScrollIndicatorArrowObject,.Lfe2-AddScrollIndicatorArrowObject
	.align	2, 0
	.globl	AddScrollIndicatorArrowPair
	.type	 AddScrollIndicatorArrowPair,function
	.thumb_func
AddScrollIndicatorArrowPair:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x14
	add	r6, r0, #0
	mov	r9, r1
	ldr	r0, .L26
	str	r0, [sp, #0x4]
	ldr	r5, .L26+0x4
	ldr	r0, [sp, #0x8]
	and	r0, r0, r5
	mov	r1, #0x80
	lsl	r1, r1, #0x1
	orr	r0, r0, r1
	ldrh	r1, [r6, #0xa]
	lsl	r1, r1, #0x10
	ldr	r4, .L26+0x8
	and	r0, r0, r4
	orr	r0, r0, r1
	str	r0, [sp, #0x8]
	add	r0, sp, #0x4
	bl	LoadCompressedSpriteSheet
	ldrh	r2, [r6, #0xc]
	cmp	r2, r4
	bne	.L23	@cond_branch
	ldr	r0, .L26+0xc
	ldrb	r1, [r6, #0xe]
	lsl	r1, r1, #0x14
	mov	r2, #0x80
	lsl	r2, r2, #0x11
	add	r1, r1, r2
	lsr	r1, r1, #0x10
	mov	r2, #0x20
	bl	LoadPalette
	b	.L24
.L27:
	.align	2, 0
.L26:
	.word	sRedArrowOtherGfx
	.word	-0x10000
	.word	0xffff
	.word	sRedArrowPal
.L23:
	ldr	r0, .L28
	str	r0, [sp, #0xc]
	add	r0, sp, #0xc
	ldr	r1, [r0, #0x4]
	and	r1, r1, r5
	orr	r1, r1, r2
	str	r1, [r0, #0x4]
	bl	LoadSpritePalette
.L24:
	ldr	r0, .L28+0x4
	mov	r1, #0x0
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	lsl	r0, r0, #0x2
	add	r0, r0, r8
	lsl	r0, r0, #0x3
	ldr	r1, .L28+0x8
	add	r7, r0, r1
	mov	r0, #0x0
	strb	r0, [r7]
	mov	r0, r9
	str	r0, [r7, #0x4]
	ldrh	r0, [r6, #0x6]
	strh	r0, [r7, #0x8]
	ldrh	r0, [r6, #0x8]
	strh	r0, [r7, #0xa]
	ldrh	r0, [r6, #0xa]
	strh	r0, [r7, #0xe]
	ldrh	r0, [r6, #0xc]
	strh	r0, [r7, #0x10]
	ldrb	r0, [r6]
	ldrb	r1, [r6, #0x1]
	ldrb	r2, [r6, #0x2]
	ldrh	r3, [r6, #0xa]
	ldrh	r4, [r6, #0xc]
	str	r4, [sp]
	bl	AddScrollIndicatorArrowObject
	strb	r0, [r7, #0xc]
	ldrb	r0, [r6, #0x3]
	ldrb	r1, [r6, #0x4]
	ldrb	r2, [r6, #0x5]
	ldrh	r3, [r6, #0xa]
	ldrh	r4, [r6, #0xc]
	str	r4, [sp]
	bl	AddScrollIndicatorArrowObject
	strb	r0, [r7, #0xd]
	ldrh	r1, [r6, #0xc]
	ldr	r0, .L28+0xc
	cmp	r1, r0
	bne	.L25	@cond_branch
	ldr	r5, .L28+0x10
	ldrb	r0, [r7, #0xc]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r5
	ldrb	r3, [r6, #0xe]
	lsl	r3, r3, #0x4
	ldrb	r4, [r1, #0x5]
	mov	r2, #0xf
	add	r0, r2, #0
	and	r0, r0, r4
	orr	r0, r0, r3
	strb	r0, [r1, #0x5]
	ldrb	r1, [r7, #0xd]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r5
	ldrb	r1, [r6, #0xe]
	lsl	r1, r1, #0x4
	ldrb	r3, [r0, #0x5]
	and	r2, r2, r3
	orr	r2, r2, r1
	strb	r2, [r0, #0x5]
.L25:
	mov	r0, r8
	add	sp, sp, #0x14
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L29:
	.align	2, 0
.L28:
	.word	sRedArrowPal
	.word	Task_ScrollIndicatorArrowPair
	.word	gTasks+0x8
	.word	0xffff
	.word	gSprites
.Lfe3:
	.size	 AddScrollIndicatorArrowPair,.Lfe3-AddScrollIndicatorArrowPair
	.align	2, 0
	.globl	AddScrollIndicatorArrowPairParameterized
	.type	 AddScrollIndicatorArrowPairParameterized,function
	.thumb_func
AddScrollIndicatorArrowPairParameterized:
	push	{r4, lr}
	add	r4, r1, #0
	sub	r0, r0, #0x2
	cmp	r0, #0x1
	bhi	.L31	@cond_branch
	ldr	r0, .L34
	mov	r1, #0x2
	strb	r1, [r0]
	strb	r4, [r0, #0x1]
	strb	r2, [r0, #0x2]
	mov	r1, #0x3
	strb	r1, [r0, #0x3]
	strb	r4, [r0, #0x4]
	strb	r3, [r0, #0x5]
	b	.L33
.L35:
	.align	2, 0
.L34:
	.word	sTempScrollArrowTemplate
.L31:
	ldr	r0, .L36
	mov	r1, #0x0
	strb	r1, [r0]
	strb	r2, [r0, #0x1]
	strb	r4, [r0, #0x2]
	mov	r1, #0x1
	strb	r1, [r0, #0x3]
	strb	r3, [r0, #0x4]
	strb	r4, [r0, #0x5]
.L33:
	add	r2, r0, #0
	mov	r1, #0x0
	mov	r0, #0x0
	strh	r0, [r2, #0x6]
	ldr	r0, [sp, #0x8]
	strh	r0, [r2, #0x8]
	ldr	r0, [sp, #0xc]
	strh	r0, [r2, #0xa]
	ldr	r0, [sp, #0x10]
	strh	r0, [r2, #0xc]
	strb	r1, [r2, #0xe]
	add	r0, r2, #0
	ldr	r1, [sp, #0x14]
	bl	AddScrollIndicatorArrowPair
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r4}
	pop	{r1}
	bx	r1
.L37:
	.align	2, 0
.L36:
	.word	sTempScrollArrowTemplate
.Lfe4:
	.size	 AddScrollIndicatorArrowPairParameterized,.Lfe4-AddScrollIndicatorArrowPairParameterized
	.align	2, 0
	.type	 Task_ScrollIndicatorArrowPair,function
	.thumb_func
Task_ScrollIndicatorArrowPair:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L45
	add	r4, r1, r0
	ldr	r0, [r4, #0x4]
	ldrh	r5, [r0]
	ldrh	r0, [r4, #0x8]
	cmp	r5, r0
	bne	.L39	@cond_branch
	ldr	r3, .L45+0x4
	ldrb	r1, [r4, #0xc]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	mov	r2, #0x4
	orr	r1, r1, r2
	b	.L43
.L46:
	.align	2, 0
.L45:
	.word	gTasks+0x8
	.word	gSprites
.L39:
	ldr	r3, .L47
	ldrb	r1, [r4, #0xc]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	add	r0, r0, #0x3e
	ldrb	r2, [r0]
	mov	r1, #0x5
	neg	r1, r1
	and	r1, r1, r2
.L43:
	strb	r1, [r0]
	ldrh	r0, [r4, #0xa]
	cmp	r5, r0
	bne	.L41	@cond_branch
	ldrb	r1, [r4, #0xd]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	mov	r2, #0x4
	orr	r1, r1, r2
	b	.L44
.L48:
	.align	2, 0
.L47:
	.word	gSprites
.L41:
	ldrb	r1, [r4, #0xd]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	add	r0, r0, #0x3e
	ldrb	r2, [r0]
	mov	r1, #0x5
	neg	r1, r1
	and	r1, r1, r2
.L44:
	strb	r1, [r0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe5:
	.size	 Task_ScrollIndicatorArrowPair,.Lfe5-Task_ScrollIndicatorArrowPair
	.align	2, 0
	.globl	RemoveScrollIndicatorArrowPair
	.type	 RemoveScrollIndicatorArrowPair,function
	.thumb_func
RemoveScrollIndicatorArrowPair:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r6, r0, #0
	lsl	r0, r6, #0x2
	add	r0, r0, r6
	lsl	r0, r0, #0x3
	ldr	r1, .L52
	add	r5, r0, r1
	ldrh	r0, [r5, #0xe]
	ldr	r4, .L52+0x4
	cmp	r0, r4
	beq	.L50	@cond_branch
	bl	FreeSpriteTilesByTag
.L50:
	ldrh	r0, [r5, #0x10]
	cmp	r0, r4
	beq	.L51	@cond_branch
	bl	FreeSpritePaletteByTag
.L51:
	ldrb	r1, [r5, #0xc]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r4, .L52+0x8
	add	r0, r0, r4
	bl	DestroySprite
	ldrb	r1, [r5, #0xd]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r4
	bl	DestroySprite
	add	r0, r6, #0
	bl	DestroyTask
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L53:
	.align	2, 0
.L52:
	.word	gTasks+0x8
	.word	0xffff
	.word	gSprites
.Lfe6:
	.size	 RemoveScrollIndicatorArrowPair,.Lfe6-RemoveScrollIndicatorArrowPair
	.align	2, 0
	.globl	ListMenuAddCursorObjectInternal
	.type	 ListMenuAddCursorObjectInternal,function
	.thumb_func
ListMenuAddCursorObjectInternal:
	push	{lr}
	cmp	r1, #0
	beq	.L57	@cond_branch
	cmp	r1, #0x1
	beq	.L58	@cond_branch
.L57:
	bl	ListMenuAddRedOutlineCursorObject
	b	.L62
.L58:
	bl	ListMenuAddRedArrowCursorObject
.L62:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.Lfe7:
	.size	 ListMenuAddCursorObjectInternal,.Lfe7-ListMenuAddCursorObjectInternal
	.align	2, 0
	.globl	ListMenuUpdateCursorObject
	.type	 ListMenuUpdateCursorObject,function
	.thumb_func
ListMenuUpdateCursorObject:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	cmp	r3, #0
	beq	.L65	@cond_branch
	cmp	r3, #0x1
	beq	.L66	@cond_branch
	b	.L64
.L65:
	bl	ListMenuUpdateRedOutlineCursorObject
	b	.L64
.L66:
	bl	ListMenuUpdateRedArrowCursorObject
.L64:
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 ListMenuUpdateCursorObject,.Lfe8-ListMenuUpdateCursorObject
	.align	2, 0
	.globl	ListMenuRemoveCursorObject
	.type	 ListMenuRemoveCursorObject,function
	.thumb_func
ListMenuRemoveCursorObject:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r1, #0
	beq	.L71	@cond_branch
	cmp	r1, #0x1
	beq	.L72	@cond_branch
	b	.L70
.L71:
	bl	ListMenuRemoveRedOutlineCursorObject
	b	.L70
.L72:
	bl	ListMenuRemoveRedArrowCursorObject
.L70:
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 ListMenuRemoveCursorObject,.Lfe9-ListMenuRemoveCursorObject
	.align	2, 0
	.globl	Task_RedOutlineCursor
	.type	 Task_RedOutlineCursor,function
	.thumb_func
Task_RedOutlineCursor:
	bx	lr
.Lfe10:
	.size	 Task_RedOutlineCursor,.Lfe10-Task_RedOutlineCursor
	.align	2, 0
	.globl	ListMenuGetRedOutlineCursorSpriteCount
	.type	 ListMenuGetRedOutlineCursorSpriteCount,function
	.thumb_func
ListMenuGetRedOutlineCursorSpriteCount:
	push	{lr}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r3, #0x4
	cmp	r0, #0x10
	bls	.L77	@cond_branch
	mov	r2, #0x8
	sub	r0, r0, #0x8
	cmp	r2, r0
	bge	.L77	@cond_branch
.L81:
	add	r3, r3, #0x2
	add	r2, r2, #0x8
	cmp	r2, r0
	blt	.L81	@cond_branch
.L77:
	cmp	r1, #0x10
	bls	.L83	@cond_branch
	mov	r2, #0x8
	sub	r1, r1, #0x8
	cmp	r2, r1
	bge	.L83	@cond_branch
.L87:
	add	r3, r3, #0x2
	add	r2, r2, #0x8
	cmp	r2, r1
	blt	.L87	@cond_branch
.L83:
	lsl	r0, r3, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.Lfe11:
	.size	 ListMenuGetRedOutlineCursorSpriteCount,.Lfe11-ListMenuGetRedOutlineCursorSpriteCount
	.align	2, 0
	.globl	ListMenuSetUpRedOutlineCursorSpriteOamTable
	.type	 ListMenuSetUpRedOutlineCursorSpriteOamTable,function
	.thumb_func
ListMenuSetUpRedOutlineCursorSpriteOamTable:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	add	r3, r2, #0
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r8, r0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r9, r1
	ldr	r0, .L102
	ldr	r0, [r0]
	str	r0, [r3]
	mov	r1, #0x88
	strb	r1, [r3]
	strb	r1, [r3, #0x1]
	ldr	r0, .L102+0x4
	ldr	r0, [r0]
	str	r0, [r3, #0x4]
	mov	r2, r8
	add	r2, r2, #0x80
	strb	r2, [r3, #0x4]
	strb	r1, [r3, #0x5]
	ldr	r0, .L102+0x8
	ldr	r0, [r0]
	str	r0, [r3, #0x8]
	strb	r1, [r3, #0x8]
	mov	r4, r9
	add	r4, r4, #0x80
	strb	r4, [r3, #0x9]
	ldr	r0, .L102+0xc
	ldr	r0, [r0]
	str	r0, [r3, #0xc]
	strb	r2, [r3, #0xc]
	strb	r4, [r3, #0xd]
	mov	r0, #0x4
	mov	ip, r0
	mov	r2, r8
	cmp	r2, #0x10
	bls	.L90	@cond_branch
	mov	r2, #0x8
	mov	r5, r8
	sub	r5, r5, #0x8
	cmp	r2, r5
	bge	.L90	@cond_branch
	ldr	r0, .L102+0x10
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r0, .L102+0x14
	ldr	r6, [r0]
	add	r1, r3, #0
	add	r1, r1, #0x10
	mov	r7, #0x88
	mov	sl, r7
.L94:
	ldr	r0, [sp]
	str	r0, [r1]
	add	r0, r2, #0
	sub	r0, r0, #0x78
	strb	r0, [r1]
	mov	r7, sl
	strb	r7, [r1, #0x1]
	add	r1, r1, #0x4
	str	r6, [r1]
	strb	r0, [r1]
	strb	r4, [r1, #0x1]
	add	r1, r1, #0x4
	mov	r0, #0x2
	add	ip, ip, r0
	add	r2, r2, #0x8
	cmp	r2, r5
	blt	.L94	@cond_branch
.L90:
	mov	r2, r9
	cmp	r2, #0x10
	bls	.L96	@cond_branch
	mov	r1, #0x8
	mov	r4, r9
	sub	r4, r4, #0x8
	cmp	r1, r4
	bge	.L96	@cond_branch
	ldr	r0, .L102+0x18
	ldr	r6, [r0]
	ldr	r0, .L102+0x1c
	ldr	r5, [r0]
	mov	r7, ip
	lsl	r0, r7, #0x2
	add	r2, r0, r3
	mov	r7, #0x88
	mov	r3, r8
	add	r3, r3, #0x80
.L100:
	str	r6, [r2]
	strb	r7, [r2]
	add	r0, r1, #0
	sub	r0, r0, #0x78
	strb	r0, [r2, #0x1]
	add	r2, r2, #0x4
	str	r5, [r2]
	strb	r3, [r2]
	strb	r0, [r2, #0x1]
	add	r2, r2, #0x4
	add	r1, r1, #0x8
	cmp	r1, r4
	blt	.L100	@cond_branch
.L96:
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L103:
	.align	2, 0
.L102:
	.word	sSubsprite_RedOutline1
	.word	sSubsprite_RedOutline2
	.word	sSubsprite_RedOutline7
	.word	sSubsprite_RedOutline8
	.word	sSubsprite_RedOutline3
	.word	sSubsprite_RedOutline6
	.word	sSubsprite_RedOutline4
	.word	sSubsprite_RedOutline5
.Lfe12:
	.size	 ListMenuSetUpRedOutlineCursorSpriteOamTable,.Lfe12-ListMenuSetUpRedOutlineCursorSpriteOamTable
	.align	2, 0
	.globl	ListMenuAddRedOutlineCursorObject
	.type	 ListMenuAddRedOutlineCursorObject,function
	.thumb_func
ListMenuAddRedOutlineCursorObject:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x28
	add	r6, r0, #0
	ldr	r0, .L108
	str	r0, [sp, #0x18]
	ldr	r5, .L108+0x4
	add	r0, sp, #0x18
	ldr	r1, [r0, #0x4]
	and	r1, r1, r5
	mov	r2, #0x80
	lsl	r2, r2, #0x1
	orr	r1, r1, r2
	ldrh	r2, [r6, #0x6]
	lsl	r2, r2, #0x10
	ldr	r3, .L108+0x8
	and	r1, r1, r3
	orr	r1, r1, r2
	str	r1, [r0, #0x4]
	bl	LoadCompressedSpriteSheet
	ldrh	r2, [r6, #0x8]
	ldr	r7, .L108+0x8
	cmp	r2, r7
	bne	.L105	@cond_branch
	ldr	r0, .L108+0xc
	ldrb	r1, [r6, #0xa]
	lsl	r1, r1, #0x14
	mov	r2, #0x80
	lsl	r2, r2, #0x11
	add	r1, r1, r2
	lsr	r1, r1, #0x10
	mov	r2, #0x20
	bl	LoadPalette
	b	.L106
.L109:
	.align	2, 0
.L108:
	.word	sSelectorOutlineGfx
	.word	-0x10000
	.word	0xffff
	.word	sRedArrowPal
.L105:
	ldr	r0, .L110
	str	r0, [sp, #0x20]
	add	r0, sp, #0x20
	ldr	r1, [r0, #0x4]
	and	r1, r1, r5
	orr	r1, r1, r2
	str	r1, [r0, #0x4]
	bl	LoadSpritePalette
.L106:
	ldr	r0, .L110+0x4
	mov	r1, #0x0
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r4, r0, #0
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	ldr	r1, .L110+0x8
	add	r5, r0, r1
	ldrh	r0, [r6, #0x6]
	mov	r3, #0x0
	mov	r8, r3
	strh	r0, [r5, #0xe]
	ldrh	r0, [r6, #0x8]
	strh	r0, [r5, #0x10]
	ldrh	r0, [r6, #0x2]
	ldrh	r1, [r6, #0x4]
	bl	ListMenuGetRedOutlineCursorSpriteCount
	strb	r0, [r5]
	ldrb	r0, [r5]
	lsl	r0, r0, #0x2
	bl	Alloc
	add	r2, r0, #0
	str	r2, [r5, #0x8]
	str	r2, [r5, #0x4]
	ldrh	r0, [r6, #0x2]
	ldrh	r1, [r6, #0x4]
	bl	ListMenuSetUpRedOutlineCursorSpriteOamTable
	mov	r1, sp
	ldr	r0, .L110+0xc
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	mov	r1, sp
	ldrh	r0, [r6, #0x6]
	strh	r0, [r1]
	ldrh	r0, [r6, #0x8]
	strh	r0, [r1, #0x2]
	ldrb	r1, [r6]
	add	r1, r1, #0x78
	ldrb	r2, [r6, #0x1]
	add	r2, r2, #0x78
	mov	r0, sp
	mov	r3, #0x0
	bl	CreateSprite
	strb	r0, [r5, #0xc]
	ldrb	r1, [r5, #0xc]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r7, .L110+0x10
	add	r0, r0, r7
	add	r1, r5, #0
	bl	SetSubspriteTables
	ldrb	r0, [r5, #0xc]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r7
	ldrb	r2, [r1, #0x5]
	mov	r0, #0xd
	neg	r0, r0
	and	r0, r0, r2
	strb	r0, [r1, #0x5]
	ldrb	r1, [r5, #0xc]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r7
	add	r0, r0, #0x43
	mov	r1, r8
	strb	r1, [r0]
	ldrb	r1, [r5, #0xc]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r7
	add	r0, r0, #0x42
	ldrb	r2, [r0]
	mov	r1, #0x40
	neg	r1, r1
	and	r1, r1, r2
	strb	r1, [r0]
	ldrh	r1, [r6, #0x8]
	ldr	r0, .L110+0x14
	cmp	r1, r0
	bne	.L107	@cond_branch
	ldrb	r0, [r5, #0xc]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r7
	ldrb	r2, [r6, #0xa]
	lsl	r2, r2, #0x4
	ldrb	r3, [r1, #0x5]
	mov	r0, #0xf
	and	r0, r0, r3
	orr	r0, r0, r2
	strb	r0, [r1, #0x5]
.L107:
	add	r0, r4, #0
	add	sp, sp, #0x28
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L111:
	.align	2, 0
.L110:
	.word	sRedArrowPal
	.word	Task_RedOutlineCursor
	.word	gTasks+0x8
	.word	gDummySpriteTemplate
	.word	gSprites
	.word	0xffff
.Lfe13:
	.size	 ListMenuAddRedOutlineCursorObject,.Lfe13-ListMenuAddRedOutlineCursorObject
	.align	2, 0
	.globl	ListMenuUpdateRedOutlineCursorObject
	.type	 ListMenuUpdateRedOutlineCursorObject,function
	.thumb_func
ListMenuUpdateRedOutlineCursorObject:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	lsl	r3, r0, #0x2
	add	r3, r3, r0
	lsl	r3, r3, #0x3
	ldr	r0, .L113
	add	r3, r3, r0
	ldr	r5, .L113+0x4
	ldrb	r4, [r3, #0xc]
	lsl	r0, r4, #0x4
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	add	r0, r0, r5
	add	r1, r1, #0x78
	strh	r1, [r0, #0x20]
	ldrb	r1, [r3, #0xc]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r5
	add	r2, r2, #0x78
	strh	r2, [r0, #0x22]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L114:
	.align	2, 0
.L113:
	.word	gTasks+0x8
	.word	gSprites
.Lfe14:
	.size	 ListMenuUpdateRedOutlineCursorObject,.Lfe14-ListMenuUpdateRedOutlineCursorObject
	.align	2, 0
	.globl	ListMenuRemoveRedOutlineCursorObject
	.type	 ListMenuRemoveRedOutlineCursorObject,function
	.thumb_func
ListMenuRemoveRedOutlineCursorObject:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r5, r0, #0
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	ldr	r1, .L118
	add	r4, r0, r1
	ldr	r0, [r4, #0x8]
	bl	Free
	ldrh	r0, [r4, #0xe]
	ldr	r6, .L118+0x4
	cmp	r0, r6
	beq	.L116	@cond_branch
	bl	FreeSpriteTilesByTag
.L116:
	ldrh	r0, [r4, #0x10]
	cmp	r0, r6
	beq	.L117	@cond_branch
	bl	FreeSpritePaletteByTag
.L117:
	ldrb	r1, [r4, #0xc]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L118+0x8
	add	r0, r0, r1
	bl	DestroySprite
	add	r0, r5, #0
	bl	DestroyTask
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L119:
	.align	2, 0
.L118:
	.word	gTasks+0x8
	.word	0xffff
	.word	gSprites
.Lfe15:
	.size	 ListMenuRemoveRedOutlineCursorObject,.Lfe15-ListMenuRemoveRedOutlineCursorObject
	.align	2, 0
	.type	 SpriteCallback_RedArrowCursor,function
	.thumb_func
SpriteCallback_RedArrowCursor:
	push	{lr}
	add	r2, r0, #0
	ldr	r1, .L122
	ldrh	r3, [r2, #0x2e]
	lsl	r0, r3, #0x18
	lsr	r0, r0, #0x17
	add	r0, r0, r1
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	bge	.L121	@cond_branch
	add	r0, r0, #0x3f
.L121:
	asr	r0, r0, #0x6
	strh	r0, [r2, #0x24]
	add	r0, r3, #0
	add	r0, r0, #0x8
	strh	r0, [r2, #0x2e]
	pop	{r0}
	bx	r0
.L123:
	.align	2, 0
.L122:
	.word	gSineTable
.Lfe16:
	.size	 SpriteCallback_RedArrowCursor,.Lfe16-SpriteCallback_RedArrowCursor
	.align	2, 0
	.type	 Task_RedArrowCursor,function
	.thumb_func
Task_RedArrowCursor:
	bx	lr
.Lfe17:
	.size	 Task_RedArrowCursor,.Lfe17-Task_RedArrowCursor
	.align	2, 0
	.type	 ListMenuAddRedArrowCursorObject,function
	.thumb_func
ListMenuAddRedArrowCursorObject:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x28
	add	r5, r0, #0
	ldr	r0, .L129
	str	r0, [sp, #0x18]
	ldr	r6, .L129+0x4
	add	r0, sp, #0x18
	ldr	r1, [r0, #0x4]
	and	r1, r1, r6
	mov	r2, #0x80
	orr	r1, r1, r2
	ldrh	r2, [r5, #0x6]
	lsl	r2, r2, #0x10
	ldr	r4, .L129+0x8
	and	r1, r1, r4
	orr	r1, r1, r2
	str	r1, [r0, #0x4]
	bl	LoadCompressedSpriteSheet
	ldrh	r2, [r5, #0x8]
	cmp	r2, r4
	bne	.L126	@cond_branch
	ldr	r0, .L129+0xc
	ldrb	r1, [r5, #0xa]
	lsl	r1, r1, #0x14
	mov	r2, #0x80
	lsl	r2, r2, #0x11
	add	r1, r1, r2
	lsr	r1, r1, #0x10
	mov	r2, #0x20
	bl	LoadPalette
	b	.L127
.L130:
	.align	2, 0
.L129:
	.word	sRedArrowGfx
	.word	-0x10000
	.word	0xffff
	.word	sRedArrowPal
.L126:
	ldr	r0, .L131
	str	r0, [sp, #0x20]
	add	r0, sp, #0x20
	ldr	r1, [r0, #0x4]
	and	r1, r1, r6
	orr	r1, r1, r2
	str	r1, [r0, #0x4]
	bl	LoadSpritePalette
.L127:
	ldr	r0, .L131+0x4
	mov	r1, #0x0
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r6, r0, #0
	lsl	r0, r6, #0x2
	add	r0, r0, r6
	lsl	r0, r0, #0x3
	ldr	r1, .L131+0x8
	add	r4, r0, r1
	ldrh	r0, [r5, #0x6]
	strh	r0, [r4, #0x2]
	ldrh	r0, [r5, #0x8]
	strh	r0, [r4, #0x4]
	mov	r1, sp
	ldr	r0, .L131+0xc
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	mov	r1, sp
	ldrh	r0, [r5, #0x6]
	strh	r0, [r1]
	ldrh	r0, [r5, #0x8]
	strh	r0, [r1, #0x2]
	ldrb	r1, [r5]
	ldrb	r2, [r5, #0x1]
	mov	r0, sp
	mov	r3, #0x0
	bl	CreateSprite
	strb	r0, [r4]
	ldr	r3, .L131+0x10
	ldrb	r1, [r4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	mov	r2, #0x8
	strh	r2, [r0, #0x24]
	ldrb	r1, [r4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	strh	r2, [r0, #0x26]
	ldrh	r1, [r5, #0x8]
	ldr	r0, .L131+0x14
	cmp	r1, r0
	bne	.L128	@cond_branch
	ldrb	r0, [r4]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r3
	ldrb	r2, [r5, #0xa]
	lsl	r2, r2, #0x4
	ldrb	r3, [r1, #0x5]
	mov	r0, #0xf
	and	r0, r0, r3
	orr	r0, r0, r2
	strb	r0, [r1, #0x5]
.L128:
	add	r0, r6, #0
	add	sp, sp, #0x28
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L132:
	.align	2, 0
.L131:
	.word	sRedArrowPal
	.word	Task_RedArrowCursor
	.word	gTasks+0x8
	.word	sSpriteTemplate_RedArrowCursor
	.word	gSprites
	.word	0xffff
.Lfe18:
	.size	 ListMenuAddRedArrowCursorObject,.Lfe18-ListMenuAddRedArrowCursorObject
	.align	2, 0
	.type	 ListMenuUpdateRedArrowCursorObject,function
	.thumb_func
ListMenuUpdateRedArrowCursorObject:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r3, r0, #0x2
	add	r3, r3, r0
	lsl	r3, r3, #0x3
	ldr	r0, .L134
	add	r3, r3, r0
	ldr	r5, .L134+0x4
	ldrb	r4, [r3]
	lsl	r0, r4, #0x4
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	add	r0, r0, r5
	strh	r1, [r0, #0x20]
	ldrb	r1, [r3]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r5
	strh	r2, [r0, #0x22]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L135:
	.align	2, 0
.L134:
	.word	gTasks+0x8
	.word	gSprites
.Lfe19:
	.size	 ListMenuUpdateRedArrowCursorObject,.Lfe19-ListMenuUpdateRedArrowCursorObject
	.align	2, 0
	.type	 ListMenuRemoveRedArrowCursorObject,function
	.thumb_func
ListMenuRemoveRedArrowCursorObject:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r5, r0, #0
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	ldr	r1, .L139
	add	r4, r0, r1
	ldrh	r0, [r4, #0x2]
	ldr	r6, .L139+0x4
	cmp	r0, r6
	beq	.L137	@cond_branch
	bl	FreeSpriteTilesByTag
.L137:
	ldrh	r0, [r4, #0x4]
	cmp	r0, r6
	beq	.L138	@cond_branch
	bl	FreeSpritePaletteByTag
.L138:
	ldrb	r1, [r4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L139+0x8
	add	r0, r0, r1
	bl	DestroySprite
	add	r0, r5, #0
	bl	DestroyTask
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L140:
	.align	2, 0
.L139:
	.word	gTasks+0x8
	.word	0xffff
	.word	gSprites
.Lfe20:
	.size	 ListMenuRemoveRedArrowCursorObject,.Lfe20-ListMenuRemoveRedArrowCursorObject
.text
	.align	2, 0 @ Don't pad with nop

