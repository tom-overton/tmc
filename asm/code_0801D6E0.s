	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801D6E0
sub_0801D6E0: @ 0x0801D6E0
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2]
	adds r3, r1, #0
	bics r3, r0
	strh r3, [r2, #2]
	cmp r1, r0
	bne _0801D70A
	ldrb r0, [r2, #7]
	subs r0, #1
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D704
	movs r0, #4
	strb r0, [r2, #7]
	strh r1, [r2, #4]
	b _0801D710
_0801D704:
	movs r0, #0
	strh r0, [r2, #4]
	b _0801D710
_0801D70A:
	movs r0, #0x14
	strb r0, [r2, #7]
	strh r3, [r2, #4]
_0801D710:
	strh r1, [r2]
	pop {pc}

	thumb_func_start sub_0801D714
sub_0801D714: @ 0x0801D714
	push {r4, lr}
	ldr r1, _0801D748 @ =gUnk_080FF850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
_0801D71E:
	ldrb r3, [r4, #2]
	ldrb r0, [r4, #3]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #0
	bne _0801D72C
	movs r2, #0x10
_0801D72C:
	ldrh r0, [r4]
	lsls r0, r0, #5
	ldr r1, _0801D74C @ =gUnk_085A2E80
	adds r0, r0, r1
	adds r1, r3, #0
	bl sub_0801D754
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D750
	adds r4, #4
	b _0801D71E
	.align 2, 0
_0801D748: .4byte gUnk_080FF850
_0801D74C: .4byte gUnk_085A2E80
_0801D750:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801D754
sub_0801D754: @ 0x0801D754
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r5, r2, #5
	movs r3, #1
	lsls r3, r1
	subs r2, #1
	ldr r4, _0801D790 @ =gUnk_0200B644
	ldr r7, _0801D794 @ =gUnk_020176A0
	cmp r2, #0
	ble _0801D772
_0801D768:
	lsls r0, r3, #1
	orrs r3, r0
	subs r2, #1
	cmp r2, #0
	bgt _0801D768
_0801D772:
	ldr r0, [r4]
	orrs r0, r3
	str r0, [r4]
	lsls r0, r1, #5
	adds r0, r0, r7
	ldr r2, _0801D798 @ =0x040000D4
	str r6, [r2]
	str r0, [r2, #4]
	lsrs r0, r5, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D790: .4byte gUnk_0200B644
_0801D794: .4byte gUnk_020176A0
_0801D798: .4byte 0x040000D4

	thumb_func_start sub_0801D79C
sub_0801D79C: @ 0x0801D79C
	ldr r3, _0801D7B4 @ =gUnk_020176A0
	lsls r2, r0, #1
	adds r2, r2, r3
	strh r1, [r2]
	ldr r2, _0801D7B8 @ =gUnk_0200B644
	lsrs r0, r0, #4
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0801D7B4: .4byte gUnk_020176A0
_0801D7B8: .4byte gUnk_0200B644

	thumb_func_start sub_0801D7BC
sub_0801D7BC: @ 0x0801D7BC
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _0801D7D4
	ldr r1, _0801D7CC @ =gUnk_03000F50
	ldr r0, _0801D7D0 @ =0x0000E0FF
	b _0801D7D8
	.align 2, 0
_0801D7CC: .4byte gUnk_03000F50
_0801D7D0: .4byte 0x0000E0FF
_0801D7D4:
	ldr r1, _0801D7E4 @ =gUnk_03000F50
	ldr r0, _0801D7E8 @ =0x0000FFFF
_0801D7D8:
	strh r0, [r1, #6]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0801D79C
	pop {pc}
	.align 2, 0
_0801D7E4: .4byte gUnk_03000F50
_0801D7E8: .4byte 0x0000FFFF

	thumb_func_start sub_0801D7EC
sub_0801D7EC: @ 0x0801D7EC
	push {r4, r5, r6, lr}
	ldr r1, _0801D814 @ =gUnk_08100AA8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r6, #0x80
	lsls r6, r6, #0x12
	ldr r5, _0801D818 @ =0x040000D4
_0801D7FC:
	movs r2, #0
	ldrb r1, [r4, #3]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0xd
	beq _0801D894
	cmp r1, #0xd
	bhi _0801D81C
	cmp r1, #7
	beq _0801D842
	b _0801D836
	.align 2, 0
_0801D814: .4byte gUnk_08100AA8
_0801D818: .4byte 0x040000D4
_0801D81C:
	cmp r1, #0xe
	beq _0801D826
	cmp r1, #0xf
	beq _0801D82E
	b _0801D836
_0801D826:
	ldrb r0, [r6, #7]
	cmp r0, #1
	bls _0801D83E
	b _0801D842
_0801D82E:
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _0801D83E
	b _0801D842
_0801D836:
	ldrb r0, [r6, #7]
	cmp r1, r0
	bne _0801D83E
	movs r2, #1
_0801D83E:
	cmp r2, #0
	beq _0801D888
_0801D842:
	ldr r0, [r4]
	ldr r1, _0801D868 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _0801D86C @ =gUnk_085A2E80
	adds r2, r0, r1
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0801D87C
	ldr r0, _0801D870 @ =0x05FFFFFF
	cmp r1, r0
	bls _0801D874
	adds r0, r2, #0
	bl LZ77UnCompVram
	b _0801D888
	.align 2, 0
_0801D868: .4byte 0x00FFFFFF
_0801D86C: .4byte gUnk_085A2E80
_0801D870: .4byte 0x05FFFFFF
_0801D874:
	adds r0, r2, #0
	bl LZ77UnCompWram
	b _0801D888
_0801D87C:
	str r2, [r5]
	str r1, [r5, #4]
	lsrs r0, r0, #1
	orrs r0, r3
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0801D888:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r1, r0
	adds r4, #0xc
	cmp r1, #0
	bne _0801D7FC
_0801D894:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801D898
sub_0801D898: @ 0x0801D898
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	movs r1, #0x20
	mov ip, r1
	cmp r0, #0
	beq _0801D8B2
	movs r0, #0x40
	mov ip, r0
_0801D8B2:
	ldr r0, _0801D8D8 @ =0x00007FFF
	ands r3, r0
	ldr r1, _0801D8DC @ =0x040000D4
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r2, r6
	lsls r7, r6, #1
	mov r0, ip
	lsls r6, r0, #1
_0801D8C4:
	str r4, [r1]
	str r5, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, r4, r7
	adds r5, r5, r6
	subs r3, #1
	cmp r3, #0
	bne _0801D8C4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D8D8: .4byte 0x00007FFF
_0801D8DC: .4byte 0x040000D4

	thumb_func_start sub_0801D8E0
sub_0801D8E0: @ 0x0801D8E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	movs r0, #3
	add ip, r0
	subs r0, #7
	mov r1, ip
	ands r1, r0
	mov ip, r1
	ldr r6, _0801D90C @ =gUnk_02035540
	mov sb, r6
	ldrh r7, [r6]
	movs r5, #1
	movs r3, #0x80
	lsls r3, r3, #5
	add r3, sb
	subs r4, r3, r1
	movs r2, #0
	b _0801D926
	.align 2, 0
_0801D90C: .4byte gUnk_02035540
_0801D910:
	cmp r1, r4
	bhi _0801D918
	cmp r3, r0
	bls _0801D952
_0801D918:
	cmp r4, r1
	bhi _0801D920
	cmp r0, r3
	bls _0801D952
_0801D920:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801D926:
	cmp r2, r7
	bhs _0801D94A
	lsls r0, r2, #2
	add r0, sb
	ldrh r1, [r0, #2]
	ldr r6, _0801D95C @ =gUnk_02035540
	adds r1, r1, r6
	ldrh r0, [r0, #4]
	adds r0, r0, r6
	cmp r1, r4
	bhi _0801D940
	cmp r4, r0
	bls _0801D952
_0801D940:
	cmp r1, r3
	bhi _0801D910
	cmp r3, r0
	bhi _0801D910
	movs r5, #0
_0801D94A:
	lsls r0, r7, #2
	mov sl, r0
	cmp r5, #0
	bne _0801D9D8
_0801D952:
	movs r1, #0
	mov r8, r1
	lsls r6, r7, #2
	mov sl, r6
	b _0801D970
	.align 2, 0
_0801D95C: .4byte gUnk_02035540
_0801D960:
	movs r5, #0
_0801D962:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, r7
	bhs _0801D9D4
_0801D970:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldrh r0, [r0, #2]
	ldr r6, _0801D994 @ =gUnk_02035540
	adds r3, r0, r6
	mov r0, ip
	subs r4, r3, r0
	movs r5, #0
	mov r0, sl
	adds r0, #2
	add r0, sb
	adds r0, #4
	cmp r4, r0
	blo _0801D962
	movs r5, #1
	movs r2, #0
	b _0801D9AE
	.align 2, 0
_0801D994: .4byte gUnk_02035540
_0801D998:
	cmp r1, r4
	bhi _0801D9A0
	cmp r3, r0
	bls _0801D960
_0801D9A0:
	cmp r4, r1
	bhi _0801D9A8
	cmp r0, r3
	bls _0801D960
_0801D9A8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801D9AE:
	cmp r2, r7
	bhs _0801D9D0
	lsls r0, r2, #2
	add r0, sb
	ldrh r1, [r0, #2]
	adds r1, r1, r6
	ldrh r0, [r0, #4]
	adds r0, r0, r6
	cmp r1, r4
	bhi _0801D9C6
	cmp r4, r0
	blo _0801D960
_0801D9C6:
	cmp r1, r3
	bhs _0801D998
	cmp r3, r0
	bhi _0801D998
	movs r5, #0
_0801D9D0:
	cmp r5, #0
	beq _0801D962
_0801D9D4:
	cmp r5, #0
	beq _0801DA00
_0801D9D8:
	ldr r0, _0801D9FC @ =gUnk_02035542
	mov r1, sl
	adds r2, r1, r0
	subs r3, r0, #2
	subs r1, r4, r3
	strh r1, [r2]
	adds r0, #2
	add r0, sl
	add r1, ip
	strh r1, [r0]
	adds r0, r7, #1
	strh r0, [r3]
	adds r0, r4, #0
	mov r1, ip
	bl sub_0801D630
	adds r0, r4, #0
	b _0801DA02
	.align 2, 0
_0801D9FC: .4byte gUnk_02035542
_0801DA00:
	movs r0, #0
_0801DA02:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801DA0C
sub_0801DA0C: @ 0x0801DA0C
	push {r4, r5, lr}
	ldr r3, _0801DA44 @ =gUnk_02035540
	subs r1, r0, r3
	ldr r0, _0801DA48 @ =0x00000FFF
	cmp r1, r0
	bhi _0801DA74
	adds r4, r3, #0
	ldrh r5, [r4]
	adds r4, #2
	movs r2, #0
	cmp r2, r5
	bhs _0801DA74
	ldrh r0, [r4]
	cmp r0, r1
	bne _0801DA4C
	lsls r0, r5, #2
	subs r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4]
	strh r2, [r0]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r4, #2]
	strh r2, [r0]
	subs r0, r5, #1
	strh r0, [r3]
	b _0801DA74
	.align 2, 0
_0801DA44: .4byte gUnk_02035540
_0801DA48: .4byte 0x00000FFF
_0801DA4C:
	adds r4, #4
	adds r2, #1
	cmp r2, r5
	bhs _0801DA74
	ldrh r0, [r4]
	cmp r0, r1
	bne _0801DA4C
	lsls r1, r5, #2
	ldr r3, _0801DA78 @ =gUnk_0203553E
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r4]
	movs r2, #0
	strh r2, [r1]
	adds r1, #2
	ldrh r0, [r1]
	strh r0, [r4, #2]
	strh r2, [r1]
	subs r0, r5, #1
	strh r0, [r3, #2]
_0801DA74:
	pop {r4, r5, pc}
	.align 2, 0
_0801DA78: .4byte gUnk_0203553E

	thumb_func_start sub_0801DA7C
sub_0801DA7C: @ 0x0801DA7C
	push {lr}
	ldr r0, _0801DA8C @ =gUnk_02035540
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_0801D630
	pop {pc}
	.align 2, 0
_0801DA8C: .4byte gUnk_02035540

	thumb_func_start sub_0801DA90
sub_0801DA90: @ 0x0801DA90
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0801DAEC @ =gUnk_03001000
	ldrb r0, [r1]
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0801DAF0 @ =gUnk_03003DE0
	strb r3, [r0]
	ldr r0, _0801DAF4 @ =gUnk_03000FD0
	strb r3, [r0]
	ldr r5, _0801DAF8 @ =gUnk_03000F50
	adds r0, r5, #0
	adds r0, #0x6d
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	ldr r1, _0801DAFC @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0801DB00 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0801DB04 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r3, [r0]
	bl sub_0801DB10
	bl sub_0801DB34
	ldr r0, _0801DB08 @ =0x0600C000
	movs r1, #0x20
	bl sub_0801D630
	ldr r0, _0801DB0C @ =gUnk_02034CB0
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_0801D630
	strh r4, [r5, #0xe]
	pop {r4, r5, pc}
	.align 2, 0
_0801DAEC: .4byte gUnk_03001000
_0801DAF0: .4byte gUnk_03003DE0
_0801DAF4: .4byte gUnk_03000FD0
_0801DAF8: .4byte gUnk_03000F50
_0801DAFC: .4byte 0x040000B0
_0801DB00: .4byte 0x0000C5FF
_0801DB04: .4byte 0x00007FFF
_0801DB08: .4byte 0x0600C000
_0801DB0C: .4byte gUnk_02034CB0

	thumb_func_start sub_0801DB10
sub_0801DB10: @ 0x0801DB10
	push {r4, lr}
	ldr r3, _0801DB30 @ =gUnk_03000020
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r0, #0x80
	movs r4, #0xa8
	lsls r4, r4, #2
	adds r2, r4, #0
_0801DB20:
	strh r2, [r3]
	adds r3, #8
	strh r2, [r1]
	adds r1, #8
	subs r0, #1
	cmp r0, #0
	bne _0801DB20
	pop {r4, pc}
	.align 2, 0
_0801DB30: .4byte gUnk_03000020

	thumb_func_start sub_0801DB34
sub_0801DB34: @ 0x0801DB34
	push {r4, lr}
	ldr r4, _0801DB6C @ =gUnk_03000F50
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D630
	ldr r0, _0801DB70 @ =gUnk_02034CB0
	str r0, [r4, #0x10]
	ldr r0, _0801DB74 @ =0x00001F0C
	strh r0, [r4, #8]
	ldr r0, _0801DB78 @ =gUnk_02021F30
	str r0, [r4, #0x1c]
	ldr r0, _0801DB7C @ =0x00001C01
	strh r0, [r4, #0x14]
	ldr r0, _0801DB80 @ =gUnk_020344B0
	str r0, [r4, #0x28]
	ldr r0, _0801DB84 @ =0x00001D02
	strh r0, [r4, #0x20]
	ldr r0, _0801DB88 @ =gUnk_02001A40
	str r0, [r4, #0x34]
	ldr r0, _0801DB8C @ =0x00001E03
	strh r0, [r4, #0x2c]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4]
	ldr r0, _0801DB90 @ =0x0000FFFF
	strh r0, [r4, #6]
	pop {r4, pc}
	.align 2, 0
_0801DB6C: .4byte gUnk_03000F50
_0801DB70: .4byte gUnk_02034CB0
_0801DB74: .4byte 0x00001F0C
_0801DB78: .4byte gUnk_02021F30
_0801DB7C: .4byte 0x00001C01
_0801DB80: .4byte gUnk_020344B0
_0801DB84: .4byte 0x00001D02
_0801DB88: .4byte gUnk_02001A40
_0801DB8C: .4byte 0x00001E03
_0801DB90: .4byte 0x0000FFFF

	thumb_func_start sub_0801DB94
sub_0801DB94: @ 0x0801DB94
	ldr r0, _0801DB9C @ =gUnk_030010A0
	ldrh r0, [r0, #0x1e]
	lsrs r0, r0, #0xb
	bx lr
	.align 2, 0
_0801DB9C: .4byte gUnk_030010A0

	thumb_func_start sub_0801DBA0
sub_0801DBA0: @ 0x0801DBA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r0, r5, #0
	bl sub_0801D630
	movs r0, #1
	strb r0, [r5]
	ldr r2, _0801DBE4 @ =gUnk_030010A0
	ldrh r0, [r2, #0x1c]
	lsrs r0, r0, #4
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #1]
	ldrh r0, [r2, #0x1e]
	lsrs r0, r0, #4
	ands r0, r1
	strb r0, [r5, #2]
	adds r5, #3
	ldr r1, _0801DBE8 @ =gUnk_080C9C50
	ldr r0, _0801DBEC @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r6, [r4]
	b _0801DD3A
	.align 2, 0
_0801DBE4: .4byte gUnk_030010A0
_0801DBE8: .4byte gUnk_080C9C50
_0801DBEC: .4byte gUnk_02033A90
_0801DBF0:
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	movs r2, #3
	bl sub_0804B0FC
	adds r4, r0, #0
	cmp r4, #0
	bne _0801DC04
	adds r6, #8
	b _0801DD3A
_0801DC04:
	adds r0, r6, #0
	bl sub_0801DF10
	mov r8, r0
	bl sub_0805279C
	movs r1, #8
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #0
	beq _0801DCAE
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801DCAE
	movs r3, #0xfc
	lsls r3, r3, #2
	ldr r7, _0801DC84 @ =0x000007FF
_0801DC26:
	ldrb r0, [r4]
	cmp r0, #3
	bgt _0801DCA6
	cmp r0, #2
	blt _0801DCA6
	ldrb r1, [r4, #1]
	mov r0, r8
	str r3, [sp]
	bl GetProgressFlagWithOffset
	ldr r3, [sp]
	cmp r0, #0
	bne _0801DCA6
	ldr r0, _0801DC88 @ =gUnk_0811E214
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r5]
	ldrb r0, [r4]
	cmp r0, #2
	bne _0801DC8C
	ldrh r0, [r4, #4]
	lsls r0, r0, #4
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	ldrh r1, [r2]
	ands r1, r7
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r0, [r4, #4]
	lsrs r0, r0, #2
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	ldrh r1, [r2, #2]
	ands r1, r7
	b _0801DC9E
	.align 2, 0
_0801DC84: .4byte 0x000007FF
_0801DC88: .4byte gUnk_0811E214
_0801DC8C:
	ldrh r0, [r2]
	ands r0, r7
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r0, [r2, #2]
	ands r0, r7
	ldrh r1, [r4, #6]
_0801DC9E:
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #2]
	adds r5, #3
_0801DCA6:
	adds r4, #8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801DC26
_0801DCAE:
	bl sub_0805279C
	cmp r0, #0
	beq _0801DD16
	ldrb r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801DD16
	ldr r0, _0801DD4C @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	adds r0, #1
	bl GetProgressFlag
	cmp r0, #0
	bne _0801DD16
	ldr r0, _0801DD50 @ =gUnk_0811E214
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r2, r1, r0
	movs r0, #4
	strb r0, [r5]
	ldrh r0, [r2, #4]
	lsrs r0, r0, #1
	ldrh r1, [r2]
	adds r0, r0, r1
	asrs r1, r0, #4
	adds r0, r1, #0
	cmp r1, #0
	bge _0801DCF8
	adds r0, #0x7f
_0801DCF8:
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	strb r0, [r5, #1]
	ldrh r0, [r2, #6]
	lsrs r0, r0, #1
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	asrs r1, r0, #4
	adds r0, r1, #0
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	strb r0, [r5, #2]
	adds r5, #3
_0801DD16:
	ldr r2, _0801DD54 @ =gUnk_030010A0
	ldrh r0, [r6]
	ldrh r1, [r2, #0x16]
	cmp r0, r1
	bne _0801DD38
	movs r0, #3
	strb r0, [r5]
	ldrh r0, [r2, #0x18]
	lsrs r0, r0, #4
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #1]
	ldrh r0, [r2, #0x1a]
	lsrs r0, r0, #4
	ands r0, r1
	strb r0, [r5, #2]
	adds r5, #3
_0801DD38:
	mov r6, sb
_0801DD3A:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801DD42
	b _0801DBF0
_0801DD42:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801DD4C: .4byte gUnk_02033A90
_0801DD50: .4byte gUnk_0811E214
_0801DD54: .4byte gUnk_030010A0

	thumb_func_start sub_0801DD58
sub_0801DD58: @ 0x0801DD58
	ldr r2, _0801DD7C @ =gUnk_0811E214
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	ldr r3, [r0]
	adds r3, r3, r2
	ldr r0, _0801DD80 @ =gUnk_02033A90
	ldr r1, _0801DD84 @ =0x0000085C
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r3]
	strh r1, [r2, #4]
	ldr r1, [r0]
	ldrh r0, [r3, #2]
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_0801DD7C: .4byte gUnk_0811E214
_0801DD80: .4byte gUnk_02033A90
_0801DD84: .4byte 0x0000085C

	thumb_func_start sub_0801DD88
sub_0801DD88: @ 0x0801DD88
	push {lr}
	ldr r0, _0801DD98 @ =gUnk_0201AEE0
	ldr r1, _0801DD9C @ =0x06006000
	movs r2, #0x80
	lsls r2, r2, #6
	bl sub_08000E96
	pop {pc}
	.align 2, 0
_0801DD98: .4byte gUnk_0201AEE0
_0801DD9C: .4byte 0x06006000

	thumb_func_start sub_0801DDA0
sub_0801DDA0: @ 0x0801DDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	bl sub_08052690
	cmp r0, #0
	bne _0801DDB8
	b _0801DEEA
_0801DDB8:
	ldr r1, _0801DDD8 @ =gUnk_080C9C50
	ldr r0, _0801DDDC @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, _0801DDE0 @ =gUnk_02019EE0
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_0801D630
	b _0801DEE2
	.align 2, 0
_0801DDD8: .4byte gUnk_080C9C50
_0801DDDC: .4byte gUnk_02033A90
_0801DDE0: .4byte gUnk_02019EE0
_0801DDE4:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	movs r2, #3
	bl sub_0804B0FC
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_0801DF10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldrh r2, [r4]
	ldr r0, _0801DE14 @ =gUnk_02032EC0
	ldrh r3, [r0, #0x20]
	ldr r1, _0801DE18 @ =0x0000FFFF
	ands r1, r2
	ldr r0, _0801DE18 @ =0x0000FFFF
	ands r0, r3
	cmp r1, r0
	bne _0801DE1C
	movs r3, #8
	b _0801DE36
	.align 2, 0
_0801DE14: .4byte gUnk_02032EC0
_0801DE18: .4byte 0x0000FFFF
_0801DE1C:
	bl sub_080527CC
	cmp r0, #0
	beq _0801DE28
	movs r0, #2
	str r0, [sp, #0xc]
_0801DE28:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801DF90
	cmp r0, #0
	beq _0801DE38
	movs r3, #3
_0801DE36:
	str r3, [sp, #0xc]
_0801DE38:
	ldrb r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801DE46
	movs r0, #0
	str r0, [sp, #0xc]
_0801DE46:
	adds r3, r4, #0
	adds r3, #8
	str r3, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0801DEE0
	ldr r2, _0801DEF8 @ =0x040000D4
	ldr r0, [r4, #4]
	ldr r1, _0801DEFC @ =gUnk_08324AE4
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0801DF00 @ =gUnk_02019EE0
	str r0, [r2, #4]
	ldr r0, _0801DF04 @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801DF08 @ =gUnk_0811E214
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [r2]
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	str r0, [sp]
	ldrh r0, [r2, #2]
	ldr r1, _0801DF0C @ =0x000007FF
	ands r0, r1
	lsrs r0, r0, #4
	str r0, [sp, #4]
	ldrh r0, [r2, #4]
	lsrs r7, r0, #4
	ldrh r0, [r2, #6]
	lsrs r0, r0, #4
	mov sl, r0
	adds r0, r7, #3
	lsrs r0, r0, #2
	str r0, [sp, #8]
	movs r6, #0
	cmp r6, sl
	bhs _0801DEE0
_0801DEA0:
	ldr r3, [sp, #8]
	adds r1, r6, #0
	muls r1, r3, r1
	ldr r0, _0801DF00 @ =gUnk_02019EE0
	adds r1, r1, r0
	mov r8, r1
	movs r5, #0
	adds r0, r6, #1
	mov sb, r0
	cmp r5, r7
	bhs _0801DEDA
_0801DEB6:
	ldr r3, [sp]
	adds r4, r3, r5
	adds r0, r5, #0
	mov r1, r8
	bl sub_0801DF60
	ldr r1, [sp, #0xc]
	bl sub_0801DF78
	adds r2, r0, #0
	adds r0, r4, #0
	ldr r3, [sp, #4]
	adds r1, r3, r6
	bl sub_0801DF28
	adds r5, #1
	cmp r5, r7
	blo _0801DEB6
_0801DEDA:
	mov r6, sb
	cmp r6, sl
	blo _0801DEA0
_0801DEE0:
	ldr r4, [sp, #0x10]
_0801DEE2:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801DEEA
	b _0801DDE4
_0801DEEA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801DEF8: .4byte 0x040000D4
_0801DEFC: .4byte gUnk_08324AE4
_0801DF00: .4byte gUnk_02019EE0
_0801DF04: .4byte 0x84000100
_0801DF08: .4byte gUnk_0811E214
_0801DF0C: .4byte 0x000007FF

	thumb_func_start sub_0801DF10
sub_0801DF10: @ 0x0801DF10
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #1
	bne _0801DF20
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0801DF26
_0801DF20:
	ldrb r0, [r1]
	bl sub_08052D58
_0801DF26:
	pop {pc}

	thumb_func_start sub_0801DF28
sub_0801DF28: @ 0x0801DF28
	push {r4, lr}
	lsrs r4, r1, #3
	lsls r4, r4, #4
	lsrs r3, r0, #3
	adds r4, r4, r3
	lsls r4, r4, #5
	ldr r3, _0801DF58 @ =gUnk_0201AEE0
	adds r4, r4, r3
	movs r3, #7
	ands r1, r3
	lsls r1, r1, #2
	adds r4, r4, r1
	ands r0, r3
	lsls r0, r0, #2
	lsls r2, r0
	ldr r1, _0801DF5C @ =gUnk_080C9460
	adds r0, r0, r1
	ldr r1, [r4]
	ldr r0, [r0]
	ands r1, r0
	orrs r1, r2
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
_0801DF58: .4byte gUnk_0201AEE0
_0801DF5C: .4byte gUnk_080C9460

	thumb_func_start sub_0801DF60
sub_0801DF60: @ 0x0801DF60
	adds r3, r0, #0
	lsrs r0, r3, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #3
	adds r1, r2, #0
	bics r1, r3
	lsls r1, r1, #1
	asrs r0, r1
	ands r0, r2
	bx lr
	.align 2, 0

	thumb_func_start sub_0801DF78
sub_0801DF78: @ 0x0801DF78
	push {lr}
	cmp r0, #2
	beq _0801DF88
	cmp r0, #2
	blo _0801DF8E
	cmp r0, #3
	beq _0801DF8C
	b _0801DF8E
_0801DF88:
	adds r0, r1, #0
	b _0801DF8E
_0801DF8C:
	movs r0, #7
_0801DF8E:
	pop {pc}

	thumb_func_start sub_0801DF90
sub_0801DF90: @ 0x0801DF90
	push {lr}
	adds r2, r1, #0
	cmp r0, #0
	bne _0801DFAA
	b _0801DFB0
_0801DF9A:
	ldrb r1, [r0, #1]
	adds r0, r2, #0
	bl GetProgressFlagWithOffset
	b _0801DFB2
_0801DFA4:
	cmp r1, #1
	beq _0801DF9A
	adds r0, #8
_0801DFAA:
	ldrb r1, [r0]
	cmp r1, #0
	bne _0801DFA4
_0801DFB0:
	movs r0, #0
_0801DFB2:
	pop {pc}

	thumb_func_start sub_0801DFB4
sub_0801DFB4: @ 0x0801DFB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, _0801E004 @ =gUnk_02022740
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0801D630
	strh r4, [r7, #6]
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r0, r8
	str r0, [r7, #0xc]
	ldr r0, _0801E008 @ =gUnk_03003DF0
	ldrb r0, [r0, #2]
	strb r0, [r7, #3]
	mov r1, r8
	cmp r1, #0
	beq _0801DFF8
	ldrb r1, [r1, #0x11]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r7, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x11]
_0801DFF8:
	movs r0, #0
	strb r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E004: .4byte gUnk_02022740
_0801E008: .4byte gUnk_03003DF0

	thumb_func_start sub_0801E00C
sub_0801E00C: @ 0x0801E00C
	push {r4, lr}
	ldr r1, _0801E024 @ =gUnk_080C9CAC
	ldr r4, _0801E028 @ =gUnk_02022740
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0801E024: .4byte gUnk_080C9CAC
_0801E028: .4byte gUnk_02022740

	thumb_func_start sub_0801E02C
sub_0801E02C: @ 0x0801E02C
	push {r4, lr}
	ldr r4, _0801E040 @ =gUnk_02022740
	ldrh r0, [r4, #6]
	bl sub_0801E0E0
	movs r0, #3
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
	.align 2, 0
_0801E040: .4byte gUnk_02022740

	thumb_func_start sub_0801E044
sub_0801E044: @ 0x0801E044
	push {lr}
	ldr r0, _0801E06C @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0801E06A
	movs r0, #4
	movs r1, #0
	bl sub_080A7138
	ldr r0, _0801E070 @ =gUnk_02022740
	movs r1, #4
	strb r1, [r0]
	movs r1, #2
	strb r1, [r0, #1]
	movs r0, #0x6b
	bl sub_080A3268
_0801E06A:
	pop {pc}
	.align 2, 0
_0801E06C: .4byte gUnk_02000050
_0801E070: .4byte gUnk_02022740

	thumb_func_start sub_0801E074
sub_0801E074: @ 0x0801E074
	push {lr}
	ldr r0, _0801E084 @ =gUnk_02022740
	ldrb r1, [r0]
	cmp r1, #5
	beq _0801E088
	cmp r1, #6
	beq _0801E08C
	b _0801E098
	.align 2, 0
_0801E084: .4byte gUnk_02022740
_0801E088:
	ldrh r0, [r0, #8]
	b _0801E08E
_0801E08C:
	ldrh r0, [r0, #0xa]
_0801E08E:
	bl sub_0801E0E0
	ldr r1, _0801E09C @ =gUnk_02022740
	movs r0, #3
	strb r0, [r1, #1]
_0801E098:
	pop {pc}
	.align 2, 0
_0801E09C: .4byte gUnk_02022740

	thumb_func_start sub_0801E0A0
sub_0801E0A0: @ 0x0801E0A0
	push {r4, lr}
	ldr r0, _0801E0D8 @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0801E0D4
	ldr r4, _0801E0DC @ =gUnk_02022740
	ldr r3, [r4, #0xc]
	cmp r3, #0
	beq _0801E0C8
	ldrb r0, [r4, #4]
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
_0801E0C8:
	ldrb r0, [r4]
	movs r1, #1
	cmp r0, #6
	bne _0801E0D2
	movs r1, #2
_0801E0D2:
	strb r1, [r4]
_0801E0D4:
	pop {r4, pc}
	.align 2, 0
_0801E0D8: .4byte gUnk_02000050
_0801E0DC: .4byte gUnk_02022740

	thumb_func_start sub_0801E0E0
sub_0801E0E0: @ 0x0801E0E0
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0801E102
	ldr r0, _0801E0F8 @ =gUnk_02022740
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0801E0FC
	adds r0, r2, #0
	bl sub_08056398
	b _0801E102
	.align 2, 0
_0801E0F8: .4byte gUnk_02022740
_0801E0FC:
	adds r0, r2, #0
	bl sub_08056378
_0801E102:
	pop {pc}

	thumb_func_start sub_0801E104
sub_0801E104: @ 0x0801E104
	ldr r1, _0801E118 @ =gUnk_03000F50
	ldrh r2, [r1]
	ldr r0, _0801E11C @ =0x00009FFF
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	adds r1, #0x6c
	strb r2, [r1]
	bx lr
	.align 2, 0
_0801E118: .4byte gUnk_03000F50
_0801E11C: .4byte 0x00009FFF

	thumb_func_start sub_0801E120
sub_0801E120: @ 0x0801E120
	ldr r3, _0801E14C @ =gUnk_03000F50
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	movs r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x60
	ldr r0, _0801E150 @ =0x00003F37
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x58
	strh r2, [r0]
	subs r1, #6
	movs r0, #0xa0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801E14C: .4byte gUnk_03000F50
_0801E150: .4byte 0x00003F37

	thumb_func_start sub_0801E154
sub_0801E154: @ 0x0801E154
	push {lr}
	movs r1, #0
	bl sub_0801E24C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801E160
sub_0801E160: @ 0x0801E160
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r5, _0801E1A8 @ =gUnk_03003DE4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r4, _0801E1AC @ =gUnk_02017AA0
	adds r0, r0, r4
	movs r1, #0xa0
	lsls r1, r1, #4
	bl sub_0801D630
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	bl sub_0801E290
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r4
	ldr r1, _0801E1B0 @ =0x04000040
	ldr r2, _0801E1B4 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E1A8: .4byte gUnk_03003DE4
_0801E1AC: .4byte gUnk_02017AA0
_0801E1B0: .4byte 0x04000040
_0801E1B4: .4byte 0xA2600001

	thumb_func_start sub_0801E1B8
sub_0801E1B8: @ 0x0801E1B8
	push {r4, lr}
	ldr r2, _0801E1E8 @ =gUnk_03000F50
	mov ip, r2
	ldrh r3, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r2, r4, #0
	movs r4, #0
	orrs r2, r3
	mov r3, ip
	strh r2, [r3]
	mov r2, ip
	adds r2, #0x60
	strh r0, [r2]
	mov r0, ip
	adds r0, #0x62
	strh r1, [r0]
	subs r0, #0xa
	strh r4, [r0]
	mov r1, ip
	adds r1, #0x5c
	movs r0, #0xa0
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0801E1E8: .4byte gUnk_03000F50

	thumb_func_start sub_0801E1EC
sub_0801E1EC: @ 0x0801E1EC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	ldr r6, _0801E23C @ =gUnk_03003DE4
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r5, _0801E240 @ =gUnk_02017AA0
	adds r0, r0, r5
	movs r1, #0xa0
	lsls r1, r1, #4
	bl sub_0801D630
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801E24C
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl sub_0801E290
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r5
	ldr r1, _0801E244 @ =0x04000040
	ldr r2, _0801E248 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E23C: .4byte gUnk_03003DE4
_0801E240: .4byte gUnk_02017AA0
_0801E244: .4byte 0x04000040
_0801E248: .4byte 0xA2600001

	thumb_func_start sub_0801E24C
sub_0801E24C: @ 0x0801E24C
	push {r4, r5, lr}
	lsls r1, r1, #1
	ldr r2, _0801E278 @ =gUnk_02018EE0
	adds r5, r1, r2
	movs r3, #0
	adds r2, r0, #0
	lsls r4, r2, #1
	movs r0, #3
	subs r1, r0, r4
	cmp r3, r2
	bgt _0801E28E
	adds r4, r4, r5
_0801E264:
	lsls r0, r3, #1
	adds r0, r0, r5
	strh r2, [r0]
	strh r3, [r4]
	cmp r1, #0
	bge _0801E27C
	adds r1, #6
	lsls r0, r3, #2
	adds r1, r1, r0
	b _0801E288
	.align 2, 0
_0801E278: .4byte gUnk_02018EE0
_0801E27C:
	adds r1, #0xa
	subs r0, r3, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	subs r4, #2
	subs r2, #1
_0801E288:
	adds r3, #1
	cmp r3, r2
	ble _0801E264
_0801E28E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801E290
sub_0801E290: @ 0x0801E290
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r6, r2, #0
	ldr r0, _0801E2BC @ =gUnk_03003DE4
	ldrb r0, [r0]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #9
	lsls r0, r1, #1
	ldr r3, _0801E2C0 @ =gUnk_02017AA0
	adds r0, r0, r3
	adds r2, r2, r0
	adds r4, r2, #0
	adds r5, r1, #0
	mov sb, r5
	ldr r0, _0801E2C4 @ =gUnk_02018EE0
	mov r8, r0
	b _0801E30A
	.align 2, 0
_0801E2BC: .4byte gUnk_03003DE4
_0801E2C0: .4byte gUnk_02017AA0
_0801E2C4: .4byte gUnk_02018EE0
_0801E2C8:
	mov r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r7, #2
	add r8, r7
	mov r3, ip
	subs r1, r3, r0
	adds r3, r3, r0
	cmp r1, #0
	bge _0801E2DE
	movs r1, #0
_0801E2DE:
	cmp r3, #0xef
	ble _0801E2E4
	movs r3, #0xf0
_0801E2E4:
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0801E2F2
	strb r3, [r4]
	strb r1, [r4, #1]
_0801E2F2:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0801E2FE
	strb r3, [r2]
	strb r1, [r2, #1]
_0801E2FE:
	subs r4, #2
	adds r2, #2
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	adds r5, #1
_0801E30A:
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bne _0801E2C8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801E31C
sub_0801E31C: @ 0x0801E31C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	mov sl, r2
	mov sb, r3
	ldr r0, _0801E3AC @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E3B0 @ =gUnk_02017AA0
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #4
	bl sub_0801D630
	cmp sl, sb
	bge _0801E3DC
	movs r6, #0
	mov r8, sl
	mov r7, r8
	mov r0, r8
	lsls r1, r0, #1
	movs r0, #3
	subs r5, r0, r1
	cmp r6, r8
	ble _0801E35E
	b _0801E45E
_0801E35E:
	mov r1, r8
	lsls r0, r1, #2
	ldr r4, _0801E3B4 @ =gUnk_02018EE0
	adds r0, r0, r4
	str r0, [sp, #0x10]
	mov r1, sb
	mov r0, r8
	muls r0, r1, r0
	str r0, [sp, #0x14]
	movs r3, #0
_0801E372:
	adds r0, r3, #0
	mov r1, sl
	str r3, [sp, #0x18]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r6, #2
	ldr r4, _0801E3B4 @ =gUnk_02018EE0
	adds r1, r2, r4
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	str r0, [r1]
	ldr r3, [sp, #0x18]
	cmp r5, #0
	bge _0801E3B8
	adds r0, r5, #6
	adds r5, r0, r2
	b _0801E3D2
	.align 2, 0
_0801E3AC: .4byte gUnk_03003DE4
_0801E3B0: .4byte gUnk_02017AA0
_0801E3B4: .4byte gUnk_02018EE0
_0801E3B8:
	adds r1, r5, #0
	adds r1, #0xa
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r5, r1, r0
	ldr r4, [sp, #0x10]
	subs r4, #4
	str r4, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, sb
	subs r0, r0, r1
	str r0, [sp, #0x14]
	subs r7, #1
_0801E3D2:
	add r3, sb
	adds r6, #1
	cmp r6, r7
	ble _0801E372
	b _0801E45E
_0801E3DC:
	movs r6, #0
	mov r8, sb
	mov r7, r8
	mov r4, r8
	lsls r1, r4, #1
	movs r0, #3
	subs r5, r0, r1
	cmp r6, r8
	bgt _0801E45E
	lsls r0, r4, #2
	ldr r1, _0801E438 @ =gUnk_02018EE0
	adds r0, r0, r1
	str r0, [sp, #8]
	mov r0, sl
	mov r4, r8
	muls r4, r0, r4
	str r4, [sp, #0xc]
	movs r3, #0
_0801E400:
	adds r0, r3, #0
	mov r1, sb
	str r3, [sp, #0x18]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	mov r1, sb
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r6, #2
	ldr r4, _0801E438 @ =gUnk_02018EE0
	adds r1, r2, r4
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #8]
	str r0, [r1]
	ldr r3, [sp, #0x18]
	cmp r5, #0
	bge _0801E43C
	adds r0, r5, #6
	adds r5, r0, r2
	b _0801E456
	.align 2, 0
_0801E438: .4byte gUnk_02018EE0
_0801E43C:
	adds r1, r5, #0
	adds r1, #0xa
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r5, r1, r0
	ldr r4, [sp, #8]
	subs r4, #4
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, sl
	subs r0, r0, r1
	str r0, [sp, #0xc]
	subs r7, #1
_0801E456:
	add r3, sl
	adds r6, #1
	cmp r6, r7
	ble _0801E400
_0801E45E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r8
	bl sub_0801E290
	ldr r0, _0801E48C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E490 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0801E494 @ =0x04000040
	ldr r2, _0801E498 @ =0xA2600001
	bl sub_0805622C
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E48C: .4byte gUnk_03003DE4
_0801E490: .4byte gUnk_02017AA0
_0801E494: .4byte 0x04000040
_0801E498: .4byte 0xA2600001

	thumb_func_start sub_0801E49C
sub_0801E49C: @ 0x0801E49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r1, [sp, #4]
	mov sb, r2
	adds r5, r3, #0
	ldr r0, _0801E5E4 @ =0x0000FFFF
	movs r2, #0xf0
	lsls r2, r2, #3
	ldr r1, _0801E5E8 @ =gUnk_02018EE0
	bl sub_0801D5EC
	adds r3, r5, #0
	subs r3, #0x40
	movs r2, #0xff
	ands r3, r2
	ldr r1, _0801E5EC @ =gUnk_080C9160
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	mov r4, r8
	adds r7, r4, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r3, r3, r0
	mov sl, r3
	adds r3, r5, #0
	adds r3, #0x68
	ands r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	mov r4, r8
	adds r6, r4, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r4, r3, r0
	adds r3, r5, #0
	subs r3, #0xe8
	ands r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	mov r2, r8
	adds r5, r2, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	adds r2, r2, r0
	mov r8, r2
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0801E64C
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r5, #0
	mov r3, r8
	bl sub_0801E64C
	movs r0, #2
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0801E64C
	ldr r5, _0801E5F0 @ =gUnk_03003DE4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r6, _0801E5F4 @ =gUnk_02017AA0
	adds r0, r0, r6
	movs r1, #0xa0
	lsls r1, r1, #4
	bl sub_0801D630
	ldr r2, _0801E5E8 @ =gUnk_02018EE0
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r1, r0, r6
	movs r3, #0xa0
	mov sl, r3
_0801E5B0:
	ldr r7, [r2]
	ldr r6, [r2, #4]
	ldr r5, [r2, #8]
	adds r2, #0xc
	cmp r7, r6
	ble _0801E5C2
	adds r4, r7, #0
	adds r7, r6, #0
	adds r6, r4, #0
_0801E5C2:
	cmp r7, r5
	ble _0801E5CC
	adds r4, r7, #0
	adds r7, r5, #0
	adds r5, r4, #0
_0801E5CC:
	cmp r6, r5
	ble _0801E5D6
	adds r4, r6, #0
	adds r6, r5, #0
	adds r5, r4, #0
_0801E5D6:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0801E5F8
	strb r5, [r1]
	strb r7, [r1, #1]
	b _0801E60A
	.align 2, 0
_0801E5E4: .4byte 0x0000FFFF
_0801E5E8: .4byte gUnk_02018EE0
_0801E5EC: .4byte gUnk_080C9160
_0801E5F0: .4byte gUnk_03003DE4
_0801E5F4: .4byte gUnk_02017AA0
_0801E5F8:
	cmp r6, r7
	beq _0801E602
	strb r5, [r1]
	strb r6, [r1, #1]
	b _0801E60A
_0801E602:
	cmp r5, r7
	beq _0801E60A
	strb r7, [r1, #1]
	strb r7, [r1]
_0801E60A:
	movs r4, #1
	rsbs r4, r4, #0
	add sl, r4
	adds r1, #2
	mov r0, sl
	cmp r0, #0
	bgt _0801E5B0
	ldr r0, _0801E63C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E640 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0801E644 @ =0x04000040
	ldr r2, _0801E648 @ =0xA2600001
	bl sub_0805622C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E63C: .4byte gUnk_03003DE4
_0801E640: .4byte gUnk_02017AA0
_0801E644: .4byte 0x04000040
_0801E648: .4byte 0xA2600001

	thumb_func_start sub_0801E64C
sub_0801E64C: @ 0x0801E64C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	ldr r7, _0801E6C4 @ =gUnk_02018EE0
	cmp r4, #0
	bge _0801E65E
	cmp r6, #0
	blt _0801E6C2
_0801E65E:
	cmp r4, #0x9f
	ble _0801E666
	cmp r6, #0x9f
	bgt _0801E6C2
_0801E666:
	cmp r4, r6
	ble _0801E676
	adds r1, r4, #0
	adds r4, r6, #0
	adds r6, r1, #0
	adds r1, r5, #0
	adds r5, r2, #0
	adds r2, r1, #0
_0801E676:
	cmp r4, r6
	beq _0801E6C2
	subs r0, r2, r5
	lsls r0, r0, #0x10
	subs r1, r6, r4
	bl Div
	adds r3, r0, #0
	cmp r4, #0
	bge _0801E694
	rsbs r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #0x10
	adds r5, r5, r0
	movs r4, #0
_0801E694:
	cmp r6, #0x9f
	ble _0801E69A
	movs r6, #0x9f
_0801E69A:
	lsls r2, r5, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r0, r7
_0801E6A8:
	cmp r5, #0
	bge _0801E6AE
	movs r5, #0
_0801E6AE:
	cmp r5, #0xf0
	ble _0801E6B4
	movs r5, #0xf0
_0801E6B4:
	str r5, [r7]
	adds r2, r2, r3
	asrs r5, r2, #0x10
	adds r4, #1
	adds r7, #0xc
	cmp r4, r6
	ble _0801E6A8
_0801E6C2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E6C4: .4byte gUnk_02018EE0

	thumb_func_start sub_0801E6C8
sub_0801E6C8: @ 0x0801E6C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	subs r0, r4, #1
	cmp r0, #0x63
	bhi _0801E722
	movs r1, #0
	ldr r5, _0801E724 @ =gUnk_02022740
	ldr r3, _0801E728 @ =gUnk_02002C01
	movs r2, #0xf1
_0801E6DA:
	adds r0, r1, r3
	ldrb r6, [r0]
	cmp r4, r6
	bne _0801E6E4
	strb r2, [r0]
_0801E6E4:
	adds r1, #1
	cmp r1, #0x7f
	bls _0801E6DA
	ldr r0, [r5, #0xc]
	bl sub_08002632
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x7e
	bhi _0801E70A
	ldr r0, _0801E72C @ =gUnk_02002A40
	ldr r2, _0801E730 @ =0x000001C1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf1
	bne _0801E70A
	movs r0, #0xf2
	strb r0, [r1]
_0801E70A:
	movs r1, #0
	ldr r0, _0801E734 @ =gUnk_03003DF0
	movs r2, #0xf1
	adds r0, #0xb
_0801E712:
	ldrb r3, [r0]
	cmp r4, r3
	bne _0801E71A
	strb r2, [r0]
_0801E71A:
	adds r0, #0xc
	adds r1, #1
	cmp r1, #0x1f
	bls _0801E712
_0801E722:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E724: .4byte gUnk_02022740
_0801E728: .4byte gUnk_02002C01
_0801E72C: .4byte gUnk_02002A40
_0801E730: .4byte 0x000001C1
_0801E734: .4byte gUnk_03003DF0

	thumb_func_start sub_0801E738
sub_0801E738: @ 0x0801E738
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E82C
	adds r0, r4, #0
	subs r0, #0x65
	cmp r0, #0x10
	bhi _0801E790
	adds r0, r4, #0
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	bge _0801E76E
	movs r1, #0
	ldr r0, _0801E794 @ =gUnk_02002A40
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801E76E
_0801E764:
	adds r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E764
_0801E76E:
	cmp r1, #0x11
	bhi _0801E790
	ldr r2, _0801E794 @ =gUnk_02002A40
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r0, r1, r0
	strb r4, [r0]
	adds r3, #0x13
	adds r0, r2, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	cmp r0, #0x63
	ble _0801E78E
	movs r0, #0x63
_0801E78E:
	strb r0, [r1]
_0801E790:
	pop {r4, pc}
	.align 2, 0
_0801E794: .4byte gUnk_02002A40

	thumb_func_start sub_0801E798
sub_0801E798: @ 0x0801E798
	push {r4, lr}
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	blt _0801E7C4
	ldr r2, _0801E7C8 @ =gUnk_02002A40
	ldr r3, _0801E7CC @ =0x0000012B
	adds r0, r2, r3
	adds r3, r1, r0
	ldrb r0, [r3]
	subs r0, #1
	cmp r0, #0
	bgt _0801E7C2
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r0, r2, r4
	adds r0, r1, r0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
_0801E7C2:
	strb r0, [r3]
_0801E7C4:
	pop {r4, pc}
	.align 2, 0
_0801E7C8: .4byte gUnk_02002A40
_0801E7CC: .4byte 0x0000012B

	thumb_func_start sub_0801E7D0
sub_0801E7D0: @ 0x0801E7D0
	push {lr}
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	blt _0801E7F0
	ldr r0, _0801E7E8 @ =gUnk_02002A40
	ldr r2, _0801E7EC @ =0x0000012B
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	b _0801E7F2
	.align 2, 0
_0801E7E8: .4byte gUnk_02002A40
_0801E7EC: .4byte 0x0000012B
_0801E7F0:
	movs r0, #0
_0801E7F2:
	pop {pc}

	thumb_func_start sub_0801E7F4
sub_0801E7F4: @ 0x0801E7F4
	push {lr}
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x63
	bhi _0801E80C
	ldr r0, _0801E808 @ =gUnk_02002C81
	bl sub_0801D5A8
	b _0801E80E
	.align 2, 0
_0801E808: .4byte gUnk_02002C81
_0801E80C:
	movs r0, #0
_0801E80E:
	pop {pc}

	thumb_func_start sub_0801E810
sub_0801E810: @ 0x0801E810
	push {lr}
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x63
	bhi _0801E828
	ldr r0, _0801E824 @ =gUnk_02002C8E
	bl sub_0801D5A8
	b _0801E82A
	.align 2, 0
_0801E824: .4byte gUnk_02002C8E
_0801E828:
	movs r0, #0
_0801E82A:
	pop {pc}

	thumb_func_start sub_0801E82C
sub_0801E82C: @ 0x0801E82C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0801E8AC @ =gUnk_02002B54
	movs r5, #0
	adds r2, r1, #4
_0801E83C:
	ldrb r0, [r2, #0x13]
	adds r3, r1, #4
	mov sl, r3
	cmp r0, #0
	bne _0801E848
	strb r0, [r2]
_0801E848:
	adds r2, #1
	adds r5, #1
	cmp r5, #0x12
	bls _0801E83C
	movs r0, #0
	strb r0, [r1, #0x16]
	adds r2, r1, #0
	adds r2, #0x29
	strb r0, [r2]
	movs r5, #0
	movs r0, #0x17
	adds r0, r0, r1
	mov sb, r0
	movs r3, #0x18
	adds r3, r3, r1
	mov r8, r3
	adds r7, r1, #4
	adds r6, r1, #5
_0801E86C:
	mov r1, sl
	adds r0, r1, r5
	ldrb r0, [r0]
	subs r0, #0x65
	cmp r0, #0x10
	bls _0801E890
	movs r4, #0x12
	subs r4, r4, r5
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_0801D66C
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl sub_0801D66C
_0801E890:
	movs r3, #1
	add sb, r3
	add r8, r3
	adds r7, #1
	adds r6, #1
	adds r5, #1
	cmp r5, #0x11
	bls _0801E86C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E8AC: .4byte gUnk_02002B54

	thumb_func_start sub_0801E8B0
sub_0801E8B0: @ 0x0801E8B0
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r3, _0801E8C4 @ =gUnk_02002B58
_0801E8B8:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r2, r0
	bne _0801E8C8
	adds r0, r1, #0
	b _0801E8D2
	.align 2, 0
_0801E8C4: .4byte gUnk_02002B58
_0801E8C8:
	adds r1, #1
	cmp r1, #0x11
	bls _0801E8B8
	movs r0, #1
	rsbs r0, r0, #0
_0801E8D2:
	pop {pc}

	thumb_func_start sub_0801E8D4
sub_0801E8D4: @ 0x0801E8D4
	push {r4, r5, lr}
	movs r5, #0xa
_0801E8D8:
	adds r0, r5, #0
	bl sub_0801E7F4
	cmp r0, #0
	beq _0801E990
	adds r0, r5, #0
	bl sub_0801E810
	cmp r0, #0
	bne _0801E990
	ldr r1, _0801E910 @ =gUnk_080C9CBC
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801E914 @ =gUnk_080FE320
	adds r2, r0, r1
	ldrh r3, [r2, #0x12]
	ldrb r0, [r2, #0x10]
	cmp r0, #0xa
	bhi _0801E97C
	lsls r0, r0, #2
	ldr r1, _0801E918 @ =_0801E91C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E910: .4byte gUnk_080C9CBC
_0801E914: .4byte gUnk_080FE320
_0801E918: .4byte _0801E91C
_0801E91C: @ jump table
	.4byte _0801E948 @ case 0
	.4byte _0801E94C @ case 1
	.4byte _0801E950 @ case 2
	.4byte _0801E954 @ case 3
	.4byte _0801E958 @ case 4
	.4byte _0801E95C @ case 5
	.4byte _0801E962 @ case 6
	.4byte _0801E968 @ case 7
	.4byte _0801E96E @ case 8
	.4byte _0801E972 @ case 9
	.4byte _0801E978 @ case 10
_0801E948:
	movs r4, #0
	b _0801E97C
_0801E94C:
	ldrb r4, [r2, #0x11]
	b _0801E97C
_0801E950:
	movs r4, #0xf
	b _0801E97C
_0801E954:
	movs r4, #0x10
	b _0801E97C
_0801E958:
	movs r4, #0x11
	b _0801E97C
_0801E95C:
	movs r4, #4
	movs r3, #0x83
	b _0801E97C
_0801E962:
	movs r4, #4
	movs r3, #0x84
	b _0801E97C
_0801E968:
	movs r4, #4
	movs r3, #0x87
	b _0801E97C
_0801E96E:
	movs r4, #4
	b _0801E97A
_0801E972:
	movs r4, #4
	movs r3, #0x8b
	b _0801E97C
_0801E978:
	movs r4, #5
_0801E97A:
	movs r3, #0x88
_0801E97C:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0807CB24
	cmp r0, #0
	beq _0801E990
	ldr r0, _0801E998 @ =gUnk_02002C8E
	adds r1, r5, #0
	bl sub_0801D5BC
_0801E990:
	adds r5, #1
	cmp r5, #0x64
	bls _0801E8D8
	pop {r4, r5, pc}
	.align 2, 0
_0801E998: .4byte gUnk_02002C8E

	thumb_func_start sub_0801E99C
sub_0801E99C: @ 0x0801E99C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08002632
	mov r8, r0
	ldr r1, _0801E9E4 @ =gUnk_08001DCC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r0, #0x67
	bl sub_0807CA84
	cmp r0, #0
	beq _0801EA56
	ldr r1, _0801E9E8 @ =gUnk_02002A40
	ldrb r0, [r7]
	ldrb r2, [r1, #8]
	cmp r0, r2
	bhi _0801EA56
	ldr r2, _0801E9EC @ =0x000001C1
	adds r0, r1, r2
	add r0, r8
	ldrb r5, [r0]
	subs r2, #0x80
	adds r0, r1, r2
	add r0, r8
	ldrb r6, [r0]
	adds r4, r6, r7
_0801E9D6:
	cmp r5, #0xf1
	beq _0801E9F6
	cmp r5, #0xf1
	bhi _0801E9F0
	cmp r5, #0
	beq _0801E9F6
	b _0801EA10
	.align 2, 0
_0801E9E4: .4byte gUnk_08001DCC
_0801E9E8: .4byte gUnk_02002A40
_0801E9EC: .4byte 0x000001C1
_0801E9F0:
	cmp r5, #0xf2
	beq _0801EA0A
	b _0801EA10
_0801E9F6:
	ldrb r5, [r4, #5]
	cmp r5, #0
	beq _0801EA10
	cmp r5, #0xff
	beq _0801EA14
	adds r0, r5, #0
	bl sub_0801E7F4
	cmp r0, #0
	beq _0801EA10
_0801EA0A:
	adds r4, #1
	adds r6, #1
	ldrb r5, [r4, #5]
_0801EA10:
	cmp r5, #0xff
	bne _0801EA1C
_0801EA14:
	adds r0, r7, #0
	bl sub_0801EA74
	adds r5, r0, #0
_0801EA1C:
	cmp r5, #0
	beq _0801EA32
	cmp r5, #0xf2
	beq _0801E9D6
	adds r0, r5, #0
	bl sub_0801E7F4
	cmp r0, #0
	beq _0801EA34
	movs r5, #0xf1
	b _0801E9D6
_0801EA32:
	movs r5, #0xf3
_0801EA34:
	ldr r1, _0801EA5C @ =gUnk_02002A40
	ldr r2, _0801EA60 @ =0x000001C1
	adds r0, r1, r2
	add r0, r8
	strb r5, [r0]
	subs r2, #0x80
	adds r0, r1, r2
	add r0, r8
	strb r6, [r0]
	bl sub_08000E50
	ldrb r4, [r7, #1]
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	bhi _0801EA64
_0801EA56:
	movs r0, #0
	b _0801EA6E
	.align 2, 0
_0801EA5C: .4byte gUnk_02002A40
_0801EA60: .4byte 0x000001C1
_0801EA64:
	subs r0, r5, #1
	cmp r0, #0x63
	bls _0801EA6C
	movs r5, #0
_0801EA6C:
	adds r0, r5, #0
_0801EA6E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801EA74
sub_0801EA74: @ 0x0801EA74
	push {r4, r5, r6, lr}
	bl sub_08000E50
	movs r1, #0x12
	bl __modsi3
	adds r5, r0, #0
	movs r6, #0
_0801EA84:
	ldr r0, _0801EA98 @ =gUnk_080CA11C
	adds r0, r5, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_0801E7F4
	cmp r0, #0
	bne _0801EA9C
	adds r0, r4, #0
	b _0801EAAE
	.align 2, 0
_0801EA98: .4byte gUnk_080CA11C
_0801EA9C:
	adds r0, r5, #1
	movs r1, #0x12
	bl __modsi3
	adds r5, r0, #0
	adds r6, #1
	cmp r6, #0x11
	bls _0801EA84
	movs r0, #0xf2
_0801EAAE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0801EAB0
sub_0801EAB0: @ 0x0801EAB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801EACC @ =gUnk_080CA130
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0801EACC: .4byte gUnk_080CA130

	thumb_func_start sub_0801EAD0
sub_0801EAD0: @ 0x0801EAD0
	push {lr}
	ldr r2, _0801EAE4 @ =gUnk_080CA148
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801EAE4: .4byte gUnk_080CA148

	thumb_func_start sub_0801EAE8
sub_0801EAE8: @ 0x0801EAE8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801EAFC
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0801EAFC:
	ldr r1, _0801EB08 @ =gUnk_080CA130
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0801EB08: .4byte gUnk_080CA130

	thumb_func_start sub_0801EB0C
sub_0801EB0C: @ 0x0801EB0C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0801EB1E
	adds r0, r1, #0
	bl sub_0804A7D4
	b _0801EB28
_0801EB1E:
	adds r0, r1, #0
	movs r1, #0xf1
	movs r2, #0
	bl sub_0804A7E0
_0801EB28:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801EB2C
sub_0801EB2C: @ 0x0801EB2C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0801EB50
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _0801EB50
	adds r0, r4, #0
	bl sub_0801ECFC
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _0801EB60
_0801EB50:
	ldr r0, _0801EB64 @ =gUnk_080CA158
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0801EB60:
	pop {r4, pc}
	.align 2, 0
_0801EB64: .4byte gUnk_080CA158

	thumb_func_start sub_0801EB68
sub_0801EB68: @ 0x0801EB68
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801EB74
sub_0801EB74: @ 0x0801EB74
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0801EB7C
sub_0801EB7C: @ 0x0801EB7C
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0801EB84
sub_0801EB84: @ 0x0801EB84
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #2
	bl sub_08004276
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_3
nullsub_3: @ 0x0801EB98
	bx lr
	.align 2, 0

	thumb_func_start sub_0801EB9C
sub_0801EB9C: @ 0x0801EB9C
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0801EBC0
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r2, #0x10]
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	b _0801EBC6
_0801EBC0:
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0801EBC6:
	pop {pc}

	thumb_func_start sub_0801EBC8
sub_0801EBC8: @ 0x0801EBC8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0801EBDE
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
_0801EBDE:
	strb r0, [r4, #0x14]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0801ECFC
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0801EBF4
sub_0801EBF4: @ 0x0801EBF4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EC1E
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _0801EC28 @ =gUnk_080CA170
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0801ED14
_0801EC1E:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0801EC28: .4byte gUnk_080CA170

	thumb_func_start sub_0801EC2C
sub_0801EC2C: @ 0x0801EC2C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080AEF88
	adds r0, r5, #0
	bl sub_08004274
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EC7E
	adds r0, r5, #0
	bl sub_0801EDEC
	cmp r0, #0
	beq _0801EC78
	ldr r1, _0801EC74 @ =gUnk_080CA174
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r4, [r0]
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	cmp r4, r0
	bhi _0801EC78
	strb r1, [r5, #0xc]
	ldrb r1, [r5, #0x14]
	adds r1, #4
	adds r0, r5, #0
	bl sub_08004260
	b _0801EC7E
	.align 2, 0
_0801EC74: .4byte gUnk_080CA174
_0801EC78:
	adds r0, r5, #0
	bl sub_0801ECFC
_0801EC7E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801EC80
sub_0801EC80: @ 0x0801EC80
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801ECD8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0801ECD8
	ldrb r0, [r4, #0x15]
	strb r0, [r2, #0x15]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	ldr r0, _0801ECF0 @ =gUnk_080CA176
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, _0801ECF4 @ =0x0000FFFD
	strh r0, [r2, #0x36]
	ldrb r1, [r5]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5]
	ldr r0, _0801ECF8 @ =0x0000018D
	bl sub_08004488
_0801ECD8:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801ECEC
	adds r0, r4, #0
	bl sub_0801ECFC
_0801ECEC:
	pop {r4, r5, pc}
	.align 2, 0
_0801ECF0: .4byte gUnk_080CA176
_0801ECF4: .4byte 0x0000FFFD
_0801ECF8: .4byte 0x0000018D

	thumb_func_start sub_0801ECFC
sub_0801ECFC: @ 0x0801ECFC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x18
	strb r0, [r4, #0xe]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801ED14
sub_0801ED14: @ 0x0801ED14
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0801ED7E
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0801ED4C
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0801ED46
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0801ED46
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801EDC4
_0801ED46:
	bl sub_08000E50
	b _0801EDD0
_0801ED4C:
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801ED78
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _0801ED74 @ =gUnk_080CA17E
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	b _0801EDD0
	.align 2, 0
_0801ED74: .4byte gUnk_080CA17E
_0801ED78:
	bl sub_08000E50
	b _0801EDD0
_0801ED7E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801EDC4
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0801ED9A
	bl sub_08000E50
	b _0801EDD0
_0801ED9A:
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801EDC4
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _0801EDC0 @ =gUnk_080CA17E
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	b _0801EDD0
	.align 2, 0
_0801EDC0: .4byte gUnk_080CA17E
_0801EDC4:
	ldr r0, _0801EDE8 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r0, #4
_0801EDD0:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0
_0801EDE8: .4byte gUnk_020000B0

	thumb_func_start sub_0801EDEC
sub_0801EDEC: @ 0x0801EDEC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _0801EE12
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	ldrb r4, [r4, #0x15]
	cmp r0, r4
	bne _0801EE12
	movs r0, #1
	b _0801EE14
_0801EE12:
	movs r0, #0
_0801EE14:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801EE18
sub_0801EE18: @ 0x0801EE18
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r4, r0, #0
	cmp r4, #0
	beq _0801EE9E
	cmp r4, #2
	beq _0801EE40
	ldr r0, _0801EE3C @ =gUnk_080012C8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0801EEE0
	.align 2, 0
_0801EE3C: .4byte gUnk_080012C8
_0801EE40:
	adds r2, r5, #0
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r4, r0
	beq _0801EE9E
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0801EE9E
	cmp r0, #1
	bgt _0801EE66
	cmp r0, #0
	beq _0801EE6C
	b _0801EE9E
_0801EE66:
	cmp r0, #2
	beq _0801EE96
	b _0801EE9E
_0801EE6C:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801EE9E
	movs r0, #6
	strb r0, [r5, #0xc]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0x20
	strh r0, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #5
	bl sub_08004260
	b _0801EE9E
_0801EE96:
	adds r0, r5, #0
	bl sub_080043A8
	b _0801EEE0
_0801EE9E:
	adds r0, r5, #0
	adds r0, #0x81
	strb r4, [r0]
	ldr r4, _0801EED0 @ =gUnk_080CA21C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r0, [r5, #0x68]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x1c
	bne _0801EED4
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _0801EEE0
	.align 2, 0
_0801EED0: .4byte gUnk_080CA21C
_0801EED4:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0801EEE0
	adds r0, r5, #0
	bl sub_0801FB34
_0801EEE0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801EEE4
sub_0801EEE4: @ 0x0801EEE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801EF0C
	cmp r0, #1
	bgt _0801EEF8
	cmp r0, #0
	beq _0801EEFE
	b _0801EF38
_0801EEF8:
	cmp r0, #2
	beq _0801EF28
	b _0801EF38
_0801EEFE:
	adds r0, r4, #0
	bl sub_0801F3AC
	ldr r0, _0801EF08 @ =gUnk_080CA234
	b _0801EF14
	.align 2, 0
_0801EF08: .4byte gUnk_080CA234
_0801EF0C:
	adds r0, r4, #0
	bl sub_0801F764
	ldr r0, _0801EF24 @ =gUnk_080CA25C
_0801EF14:
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0801EF38
	.align 2, 0
_0801EF24: .4byte gUnk_080CA25C
_0801EF28:
	ldr r0, _0801EF3C @ =gUnk_080CA288
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0801EF38:
	pop {r4, pc}
	.align 2, 0
_0801EF3C: .4byte gUnk_080CA288

	thumb_func_start sub_0801EF40
sub_0801EF40: @ 0x0801EF40
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801EF68
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x8e
	beq _0801EF58
	cmp r0, #0x95
	bne _0801EF68
_0801EF58:
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_0801EF68:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r6, [r0]
	adds r7, r0, #0
	cmp r6, #0
	beq _0801EFB0
	subs r0, #4
	ldrb r0, [r0]
	cmp r0, #0x94
	bne _0801EF94
	adds r0, r4, #0
	bl sub_0801FB68
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _0801EFC0
_0801EF94:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, r6
	beq _0801EFC4
	adds r0, r4, #0
	bl sub_0801FB68
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _0801EFC4
_0801EFB0:
	adds r0, r4, #0
	bl sub_0804AA1C
	str r6, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #9
	bl sub_08004260
_0801EFC0:
	adds r5, r4, #0
	adds r5, #0x80
_0801EFC4:
	ldrb r0, [r7]
	strb r0, [r5]
	ldr r1, _0801EFD4 @ =gUnk_080CA21C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801EFD4: .4byte gUnk_080CA21C

	thumb_func_start sub_0801EFD8
sub_0801EFD8: @ 0x0801EFD8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _0801F000
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F000
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _0801F028
_0801F000:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	beq _0801F018
	adds r0, r4, #0
	bl sub_0801FB68
	adds r0, r4, #0
	movs r1, #8
	bl sub_08004260
_0801F018:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
_0801F028:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F02C
sub_0801F02C: @ 0x0801F02C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801F03E
	adds r0, r4, #0
	bl sub_08004274
_0801F03E:
	adds r0, r4, #0
	bl sub_08001318
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F048
sub_0801F048: @ 0x0801F048
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801F068
	adds r0, r4, #0
	bl sub_0804A7D4
	b _0801F082
_0801F068:
	cmp r0, #1
	bne _0801F078
	adds r0, r4, #0
	movs r1, #0xf2
	movs r2, #0
	bl sub_0804A7E0
	b _0801F082
_0801F078:
	adds r0, r4, #0
	movs r1, #0xf1
	movs r2, #0
	bl sub_0804A7E0
_0801F082:
	pop {r4, pc}

	thumb_func_start sub_0801F084
sub_0801F084: @ 0x0801F084
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801F09A
	adds r0, r4, #0
	bl sub_08004274
_0801F09A:
	adds r0, r4, #0
	bl sub_08001242
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F0A4
sub_0801F0A4: @ 0x0801F0A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r4, #0x82
	strb r2, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_4
nullsub_4: @ 0x0801F0C4
	bx lr
	.align 2, 0

	thumb_func_start sub_0801F0C8
sub_0801F0C8: @ 0x0801F0C8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F12A
	movs r4, #3
	movs r0, #3
	strb r0, [r5, #0xc]
	bl sub_08000E50
	ands r0, r4
	adds r0, #0xc
	strb r0, [r5, #0xe]
	bl sub_08000E50
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r5, #0x15]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08004260
_0801F12A:
	pop {r4, r5, pc}

	thumb_func_start sub_0801F12C
sub_0801F12C: @ 0x0801F12C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F140
	adds r0, r4, #0
	bl sub_0801F328
	b _0801F1AC
_0801F140:
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801F158
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F158:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F1AC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x38
	bl sub_08049F64
	cmp r0, #0
	beq _0801F18A
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801FBE4
	b _0801F1AC
_0801F18A:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F1A6
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	adds r0, #0xc
	strb r0, [r4, #0xe]
	b _0801F1AC
_0801F1A6:
	adds r0, r4, #0
	bl sub_0801F328
_0801F1AC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F1B0
sub_0801F1B0: @ 0x0801F1B0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F1FA
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F1DE
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5a
	strb r0, [r1]
	adds r0, #0xd1
	bl sub_08004488
_0801F1DE:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0801F200
	adds r0, r4, #0
	bl sub_08004274
	b _0801F200
_0801F1FA:
	adds r0, r4, #0
	bl sub_08004274
_0801F200:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F226
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F220
	adds r0, r4, #0
	bl sub_0801F328
	b _0801F226
_0801F220:
	adds r0, r4, #0
	bl sub_0801F340
_0801F226:
	pop {r4, pc}

	thumb_func_start sub_0801F228
sub_0801F228: @ 0x0801F228
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F246
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F246:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F250
sub_0801F250: @ 0x0801F250
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F26C
	adds r0, r4, #0
	bl sub_0801F360
_0801F26C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F270
sub_0801F270: @ 0x0801F270
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801F28C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F28C:
	adds r0, r4, #0
	bl sub_080AF160
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	bne _0801F2CA
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F2CA
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F2C6
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _0801F2CA
_0801F2C6:
	movs r0, #8
	strb r0, [r4, #0xe]
_0801F2CA:
	pop {r4, pc}

	thumb_func_start sub_0801F2CC
sub_0801F2CC: @ 0x0801F2CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F2F6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_0801F2F6:
	pop {r4, pc}

	thumb_func_start sub_0801F2F8
sub_0801F2F8: @ 0x0801F2F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F324
	adds r0, r4, #0
	bl sub_0801F340
	adds r0, r4, #0
	bl sub_0804AA1C
_0801F324:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F328
sub_0801F328: @ 0x0801F328
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #5
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F340
sub_0801F340: @ 0x0801F340
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	movs r1, #0x20
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0x5c
	strb r1, [r2]
	movs r1, #2
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F360
sub_0801F360: @ 0x0801F360
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x38
	ands r0, r1
	adds r0, #0xb4
	strb r0, [r4, #0xe]
	bl sub_08000E50
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F3AC
sub_0801F3AC: @ 0x0801F3AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #9
	beq _0801F426
	cmp r0, #0
	beq _0801F426
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0801F408
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F3DE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F400
_0801F3DE:
	ldrb r2, [r4, #0xc]
	cmp r2, #1
	bne _0801F426
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0801F426
_0801F400:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0801F426
	b _0801F40E
_0801F408:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0801F416
_0801F40E:
	adds r0, r4, #0
	bl sub_0801F328
	b _0801F426
_0801F416:
	cmp r0, #7
	bne _0801F426
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08004260
_0801F426:
	pop {r4, r5, pc}

	thumb_func_start sub_0801F428
sub_0801F428: @ 0x0801F428
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl sub_08000E50
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r0, #2
	strb r4, [r0]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0801F488
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08004260
_0801F488:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801F48C
sub_0801F48C: @ 0x0801F48C
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0801F494
sub_0801F494: @ 0x0801F494
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F4E8
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0801F4E8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F4EC
sub_0801F4EC: @ 0x0801F4EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F504
	movs r0, #4
	strb r0, [r4, #0xc]
_0801F504:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F508
sub_0801F508: @ 0x0801F508
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F51C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	b _0801F55C
_0801F51C:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	adds r5, r0, #0
	ands r5, r1
	movs r0, #7
	ands r5, r0
	cmp r5, #0
	bne _0801F566
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x38
	bl sub_08049F64
	cmp r0, #0
	beq _0801F566
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0801F556
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801FBE4
	b _0801F580
_0801F556:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x78
_0801F55C:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F580
_0801F566:
	cmp r5, #4
	bne _0801F574
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F574:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
_0801F580:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801F584
sub_0801F584: @ 0x0801F584
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F5CE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F5B2
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5b
	strb r0, [r1]
	adds r0, #0xd0
	bl sub_08004488
_0801F5B2:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0801F5D4
	adds r0, r4, #0
	bl sub_08004274
	b _0801F5D4
_0801F5CE:
	adds r0, r4, #0
	bl sub_08004274
_0801F5D4:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F618
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F5FC
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F618
_0801F5FC:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0801F618:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F61C
sub_0801F61C: @ 0x0801F61C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F630
	movs r0, #4
	strb r0, [r1, #0xc]
_0801F630:
	adds r0, r1, #0
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0801F638
sub_0801F638: @ 0x0801F638
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F684
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0801F684:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F688
sub_0801F688: @ 0x0801F688
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801F69A
	subs r0, #1
	strb r0, [r5]
_0801F69A:
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	bne _0801F6AA
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801F6C2
_0801F6AA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AF160
	adds r0, r4, #0
	bl sub_08004274
	b _0801F6C8
_0801F6C2:
	adds r0, r4, #0
	bl sub_0801F748
_0801F6C8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801F6CC
sub_0801F6CC: @ 0x0801F6CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F6F6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_0801F6F6:
	pop {r4, pc}

	thumb_func_start sub_0801F6F8
sub_0801F6F8: @ 0x0801F6F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F72E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804AA1C
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0801F72E:
	pop {r4, pc}

	thumb_func_start sub_0801F730
sub_0801F730: @ 0x0801F730
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #5
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F748
sub_0801F748: @ 0x0801F748
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #6
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #4
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F764
sub_0801F764: @ 0x0801F764
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xa
	beq _0801F7D6
	cmp r0, #0
	beq _0801F7D6
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0801F7B8
	ldrb r6, [r4, #0xc]
	cmp r6, #1
	bne _0801F7D6
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F79C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F7D6
_0801F79C:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r6, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0801F7D6
_0801F7B8:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _0801F7C6
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F7D6
_0801F7C6:
	cmp r0, #8
	bne _0801F7D6
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08004260
_0801F7D6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0801F7D8
sub_0801F7D8: @ 0x0801F7D8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r4, #0x82
	strb r5, [r4]
	pop {r4, r5, pc}

	thumb_func_start sub_0801F7FC
sub_0801F7FC: @ 0x0801F7FC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0801F83E
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F822
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F83E
_0801F822:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0801F83E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801F840
sub_0801F840: @ 0x0801F840
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F880
	adds r0, r4, #0
	bl sub_0801FB14
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
_0801F880:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F884
sub_0801F884: @ 0x0801F884
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0801F898
	subs r0, #1
	strb r0, [r4, #0xf]
	b _0801F8BC
_0801F898:
	adds r0, r4, #0
	movs r1, #0x1b
	bl sub_0804A9FC
	adds r1, r0, #0
	cmp r1, #0
	beq _0801F8BC
	movs r0, #0x40
	strb r0, [r1, #0xb]
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0xa5
	strb r0, [r1]
	adds r0, #0xee
	bl sub_08004488
_0801F8BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F8C0
sub_0801F8C0: @ 0x0801F8C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F8D4
	adds r0, r4, #0
	bl sub_0801FAE0
	b _0801F938
_0801F8D4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801F8E8
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F938
_0801F8E8:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	adds r5, r0, #0
	ands r5, r1
	movs r0, #7
	ands r5, r0
	cmp r5, #0
	bne _0801F91C
	ldr r0, _0801F918 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x38
	bl sub_08049F1C
	cmp r0, #0
	beq _0801F91C
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801FBE4
	b _0801F938
	.align 2, 0
_0801F918: .4byte gUnk_020000B0
_0801F91C:
	cmp r5, #4
	bne _0801F92C
	ldr r0, _0801F93C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_0801F92C:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
_0801F938:
	pop {r4, r5, pc}
	.align 2, 0
_0801F93C: .4byte gUnk_020000B0

	thumb_func_start sub_0801F940
sub_0801F940: @ 0x0801F940
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F988
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F966
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
	ldr r0, _0801F984 @ =0x0000012B
	bl sub_08004488
_0801F966:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0801F98E
	adds r0, r4, #0
	bl sub_08004274
	b _0801F98E
	.align 2, 0
_0801F984: .4byte 0x0000012B
_0801F988:
	adds r0, r4, #0
	bl sub_08004274
_0801F98E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F9C2
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F9AE
	adds r0, r4, #0
	bl sub_0801FAE0
	b _0801F9C2
_0801F9AE:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0801F9C2:
	pop {r4, pc}

	thumb_func_start sub_0801F9C4
sub_0801F9C4: @ 0x0801F9C4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F9D8
	movs r0, #4
	strb r0, [r1, #0xc]
_0801F9D8:
	adds r0, r1, #0
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0801F9E0
sub_0801F9E0: @ 0x0801F9E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FA2C
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0801FA2C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FA30
sub_0801FA30: @ 0x0801FA30
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801FA54
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AF160
	adds r0, r4, #0
	bl sub_08004274
	b _0801FA74
_0801FA54:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801FA6E
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08004260
	b _0801FA74
_0801FA6E:
	adds r0, r4, #0
	bl sub_0801FAF8
_0801FA74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FA78
sub_0801FA78: @ 0x0801FA78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FAA8
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0804AA1C
_0801FAA8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FAAC
sub_0801FAAC: @ 0x0801FAAC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FADC
	adds r0, r4, #0
	bl sub_0801FB14
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804AA1C
_0801FADC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FAE0
sub_0801FAE0: @ 0x0801FAE0
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #5
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FAF8
sub_0801FAF8: @ 0x0801FAF8
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #6
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #4
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FB14
sub_0801FB14: @ 0x0801FB14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0801FB34
sub_0801FB34: @ 0x0801FB34
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x68]
	cmp r3, #0
	beq _0801FB62
	ldr r2, _0801FB64 @ =gUnk_080CA2B4
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #1
	bl sub_0806FA90
	ldr r1, [r4, #0x68]
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_0801FB62:
	pop {r4, pc}
	.align 2, 0
_0801FB64: .4byte gUnk_080CA2B4

	thumb_func_start sub_0801FB68
sub_0801FB68: @ 0x0801FB68
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801FB88
	cmp r0, #1
	bgt _0801FB7C
	cmp r0, #0
	beq _0801FB82
	b _0801FBC8
_0801FB7C:
	cmp r0, #2
	beq _0801FBB6
	b _0801FBC8
_0801FB82:
	movs r0, #9
	strb r0, [r4, #0xc]
	b _0801FBC8
_0801FB88:
	movs r0, #0xa
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	b _0801FBC8
_0801FBB6:
	movs r0, #0xa
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0804AA1C
_0801FBC8:
	movs r0, #0
	str r0, [r4, #0x20]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FBD0
sub_0801FBD0: @ 0x0801FBD0
	push {lr}
	bl sub_080002B8
	cmp r0, #0x10
	beq _0801FBDE
	movs r0, #0
	b _0801FBE0
_0801FBDE:
	movs r0, #1
_0801FBE0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FBE4
sub_0801FBE4: @ 0x0801FBE4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0801FC08
sub_0801FC08: @ 0x0801FC08
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801FC24 @ =gUnk_080CA49C
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0801FC24: .4byte gUnk_080CA49C

	thumb_func_start sub_0801FC28
sub_0801FC28: @ 0x0801FC28
	push {lr}
	ldr r2, _0801FC3C @ =gUnk_080CA4B4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801FC3C: .4byte gUnk_080CA4B4

	thumb_func_start sub_0801FC40
sub_0801FC40: @ 0x0801FC40
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _0801FC5C
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0801FC6E
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #1
	strh r0, [r1]
	b _0801FC6E
_0801FC5C:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801FC6E
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0801FC6E:
	ldr r1, _0801FC78 @ =gUnk_080CA49C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0801FC78: .4byte gUnk_080CA49C

	thumb_func_start sub_0801FC7C
sub_0801FC7C: @ 0x0801FC7C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0801FC8E
	adds r0, r1, #0
	bl sub_0804A7D4
	b _0801FC98
_0801FC8E:
	adds r0, r1, #0
	movs r1, #0xf1
	movs r2, #0
	bl sub_0804A7E0
_0801FC98:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FC9C
sub_0801FC9C: @ 0x0801FC9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	pop {r4, pc}

	thumb_func_start sub_0801FCB0
sub_0801FCB0: @ 0x0801FCB0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FD28
	bl sub_08000E50
	movs r1, #0x1f
	ands r1, r0
	adds r0, r5, #0
	bl sub_0801FE68
	cmp r0, #0
	beq _0801FD1C
	movs r0, #2
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldr r0, _0801FD14 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _0801FD18 @ =gUnk_080CA4C8
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r5, #0
	bl sub_08016A04
	b _0801FD28
	.align 2, 0
_0801FD14: .4byte gUnk_020000B0
_0801FD18: .4byte gUnk_080CA4C8
_0801FD1C:
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	adds r0, #8
	strb r0, [r5, #0xe]
_0801FD28:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801FD2C
sub_0801FD2C: @ 0x0801FD2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FD66
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FD54
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0xb4
	b _0801FD5A
_0801FD54:
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0x6e
_0801FD5A:
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0801FD7C
_0801FD66:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FD7C
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_0801FD7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FD80
sub_0801FD80: @ 0x0801FD80
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FED4
	adds r0, r4, #0
	bl sub_08004274
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801FDB2
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0801FDB2:
	pop {r4, pc}

	thumb_func_start sub_0801FDB4
sub_0801FDB4: @ 0x0801FDB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FED4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FDE0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0xf4
	ands r0, r1
	strb r0, [r4, #0x18]
_0801FDE0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FDE4
sub_0801FDE4: @ 0x0801FDE4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r7, _0801FE04 @ =gUnk_020000B0
	ldr r0, [r7]
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080002D4
	cmp r0, #0
	beq _0801FE34
	b _0801FE5C
	.align 2, 0
_0801FE04: .4byte gUnk_020000B0
_0801FE08:
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r1, r0, #0
	ands r4, r1
	adds r0, r4, #0
	adds r0, #8
	strh r0, [r6, #0x2e]
	ands r5, r1
	adds r0, r5, #0
	adds r0, #8
	strh r0, [r6, #0x32]
	ldr r0, _0801FE30 @ =gUnk_020000B0
	ldr r0, [r0]
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #1
	b _0801FE5E
	.align 2, 0
_0801FE30: .4byte gUnk_020000B0
_0801FE34:
	ldr r0, [r7]
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080002BC
	adds r3, r0, #0
	ldr r1, _0801FE60 @ =gUnk_080CA4CA
	ldrh r0, [r1]
	ldr r2, _0801FE64 @ =0x0000FFFF
	cmp r0, r2
	beq _0801FE5C
_0801FE4E:
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, r3
	beq _0801FE08
	ldrh r0, [r1]
	cmp r0, r2
	bne _0801FE4E
_0801FE5C:
	movs r0, #0
_0801FE5E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801FE60: .4byte gUnk_080CA4CA
_0801FE64: .4byte 0x0000FFFF

	thumb_func_start sub_0801FE68
sub_0801FE68: @ 0x0801FE68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801FE82
_0801FE7E:
	movs r0, #0
	b _0801FEC4
_0801FE82:
	ldr r0, _0801FECC @ =gUnk_020000B0
	ldr r0, [r0]
	ldr r5, [r0, #0x2c]
	ldr r4, [r0, #0x30]
	ldr r1, _0801FED0 @ =gUnk_080C9160
	lsls r0, r6, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0xb
	mov sb, r0
	lsls r0, r6, #4
	adds r0, #0x80
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0xb
	mov r8, r0
	movs r6, #0
_0801FEA8:
	add r5, sb
	mov r2, r8
	subs r4, r4, r2
	asrs r1, r5, #0x10
	asrs r2, r4, #0x10
	adds r0, r7, #0
	bl sub_0801FDE4
	cmp r0, #0
	beq _0801FE7E
	adds r6, #1
	cmp r6, #7
	bls _0801FEA8
	movs r0, #1
_0801FEC4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801FECC: .4byte gUnk_020000B0
_0801FED0: .4byte gUnk_080C9160

	thumb_func_start sub_0801FED4
sub_0801FED4: @ 0x0801FED4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801FEEA
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #1
	strh r0, [r1]
_0801FEEA:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	lsls r1, r1, #5
	strh r1, [r4, #0x24]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FF28
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801FF4E
	ldr r0, _0801FF24 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _0801FF4E
	.align 2, 0
_0801FF24: .4byte gUnk_020000B0
_0801FF28:
	adds r0, r1, #0
	adds r0, #0x40
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801FF4E
	ldr r0, _0801FF58 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_0801FF4E:
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}
	.align 2, 0
_0801FF58: .4byte gUnk_020000B0

	thumb_func_start sub_0801FF5C
sub_0801FF5C: @ 0x0801FF5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FF84
	ldr r1, _0801FF80 @ =gUnk_080CA570
	adds r0, r4, #0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _0801FF94
	.align 2, 0
_0801FF80: .4byte gUnk_080CA570
_0801FF84:
	ldr r0, _0801FF98 @ =gUnk_080CA588
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0801FF94:
	pop {r4, pc}
	.align 2, 0
_0801FF98: .4byte gUnk_080CA588

	thumb_func_start sub_0801FF9C
sub_0801FF9C: @ 0x0801FF9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801FFD4 @ =gUnk_080CA590
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801FFD2
	ldr r2, _0801FFD8 @ =gUnk_080CA5B8
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x36]
_0801FFD2:
	pop {r4, pc}
	.align 2, 0
_0801FFD4: .4byte gUnk_080CA590
_0801FFD8: .4byte gUnk_080CA5B8

	thumb_func_start sub_0801FFDC
sub_0801FFDC: @ 0x0801FFDC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x82
	ldrb r0, [r6]
	cmp r0, #0
	beq _08020068
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	cmp r1, #0x94
	bne _08020018
	movs r0, #3
	movs r1, #1
	bl sub_0804AA60
	adds r5, r0, #0
	cmp r5, #0
	beq _08020010
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA24
	ldrh r0, [r5, #0x36]
	subs r0, #8
	strh r0, [r5, #0x36]
_08020010:
	movs r0, #0
	strb r0, [r6]
	movs r0, #2
	b _0802001E
_08020018:
	cmp r1, #0x9b
	bne _08020042
	movs r0, #1
_0802001E:
	strb r0, [r4, #0x14]
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x3d
	movs r0, #0xe2
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _08020068
_08020042:
	cmp r1, #0x80
	bne _08020068
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08020068
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x24]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08004274
_08020068:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802007A
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802007A:
	ldr r1, _08020084 @ =gUnk_080CA570
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08020084: .4byte gUnk_080CA570

	thumb_func_start sub_08020088
sub_08020088: @ 0x08020088
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0802009C
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080200AC
_0802009C:
	ldr r0, _080200B0 @ =gUnk_080CA5BC
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080200AC:
	pop {r4, pc}
	.align 2, 0
_080200B0: .4byte gUnk_080CA5BC

	thumb_func_start sub_080200B4
sub_080200B4: @ 0x080200B4
	push {lr}
	adds r2, r0, #0
	movs r1, #1
	strb r1, [r2, #0xd]
	movs r0, #0x3c
	strb r0, [r2, #0x1d]
	ldrb r3, [r2, #0x14]
	cmp r3, #0
	bne _080200E2
	strb r1, [r2, #0x14]
	movs r0, #5
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x71
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x81
	strb r3, [r0]
	ldrb r1, [r2, #0x14]
	adds r0, r2, #0
	bl sub_08004260
_080200E2:
	pop {pc}

	thumb_func_start sub_080200E4
sub_080200E4: @ 0x080200E4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080200EC
sub_080200EC: @ 0x080200EC
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_080200F4
sub_080200F4: @ 0x080200F4
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_5
nullsub_5: @ 0x08020100
	bx lr
	.align 2, 0

	thumb_func_start sub_08020104
sub_08020104: @ 0x08020104
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08020128
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r2, #0x10]
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	b _0802012E
_08020128:
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0802012E:
	pop {pc}

	thumb_func_start sub_08020130
sub_08020130: @ 0x08020130
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r5, #1
	strb r5, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	bl sub_08000E50
	strb r0, [r4, #0xf]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	bl sub_08000E50
	ands r0, r5
	movs r1, #0xfe
	cmp r0, #0
	beq _08020162
	movs r1, #2
_08020162:
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08020180
sub_08020180: @ 0x08020180
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #0
	beq _08020192
	subs r0, #1
	strb r0, [r5]
_08020192:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080201D4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080201D4
	ldrb r1, [r4, #0xf]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080201D4
	ldr r0, _0802021C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x30
	bl sub_08049F1C
	cmp r0, #0
	beq _080201D4
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
_080201D4:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802020C
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08020604
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0802020C
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	movs r2, #0xfe
	cmp r1, #0
	beq _08020206
	movs r2, #2
_08020206:
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
_0802020C:
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, pc}
	.align 2, 0
_0802021C: .4byte gUnk_020000B0

	thumb_func_start sub_08020220
sub_08020220: @ 0x08020220
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08020284
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0802024C
	lsrs r0, r0, #0x1c
	movs r1, #3
	ands r0, r1
	movs r1, #4
	subs r1, r1, r0
	adds r0, r5, #0
	bl sub_08004276
	b _08020292
_0802024C:
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x78
	strb r0, [r5, #0xe]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	ldr r0, _0802027C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _08020280 @ =gUnk_080CA5D4
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	b _0802028A
	.align 2, 0
_0802027C: .4byte gUnk_020000B0
_08020280: .4byte gUnk_080CA5D4
_08020284:
	adds r0, r5, #0
	bl sub_080205F8
_0802028A:
	adds r0, r5, #0
	movs r1, #4
	bl sub_08004276
_08020292:
	pop {r4, r5, pc}

	thumb_func_start sub_08020294
sub_08020294: @ 0x08020294
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080202F8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080202B4
	adds r0, r4, #0
	bl sub_080205F8
_080202B4:
	ldrb r1, [r4, #0xe]
	cmp r1, #0x3c
	bls _080202E6
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080202C8
	ldrh r0, [r4, #0x24]
	adds r0, #4
	strh r0, [r4, #0x24]
_080202C8:
	ldr r0, _080202F0 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080202E6
	ldr r0, _080202F4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080202E6:
	adds r0, r4, #0
	bl sub_080AEFE0
	b _080202FE
	.align 2, 0
_080202F0: .4byte gUnk_030010A0
_080202F4: .4byte gUnk_020000B0
_080202F8:
	adds r0, r4, #0
	bl sub_080205F8
_080202FE:
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004276
	pop {r4, pc}

	thumb_func_start sub_08020308
sub_08020308: @ 0x08020308
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08020332
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08004274
	b _0802034E
_08020332:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08020340
	ldrh r0, [r4, #0x24]
	subs r0, #8
	strh r0, [r4, #0x24]
_08020340:
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004276
_0802034E:
	pop {r4, pc}

	thumb_func_start sub_08020350
sub_08020350: @ 0x08020350
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	beq _08020398
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _0802037C
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x71
	strb r0, [r1]
_0802037C:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xff
	bne _0802038A
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
_0802038A:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	b _080203BE
_08020398:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080203BE
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x96
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x71
	strb r0, [r1]
_080203BE:
	pop {r4, pc}

	thumb_func_start sub_080203C0
sub_080203C0: @ 0x080203C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080203DC
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080203DC
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080203DC:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _080203F2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020418
_080203F2:
	movs r0, #9
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0804AA1C
	movs r0, #5
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
_08020418:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802041C
sub_0802041C: @ 0x0802041C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08020438
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020438
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08020438:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0802044E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020466
_0802044E:
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0804AA1C
_08020466:
	pop {r4, pc}

	thumb_func_start sub_08020468
sub_08020468: @ 0x08020468
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080204A6
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080204A2
	movs r0, #9
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _080204A6
_080204A2:
	movs r0, #1
	strb r0, [r4, #0xe]
_080204A6:
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080204C4
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r5]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080204C4:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080204D6
	adds r0, r4, #0
	bl sub_0800442E
	b _080204DC
_080204D6:
	adds r0, r4, #0
	bl sub_080AEF88
_080204DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080204E0
sub_080204E0: @ 0x080204E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802051A
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x3f
	movs r0, #0x70
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	strb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0802053A
_0802051A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802052A
	adds r0, r4, #0
	bl sub_0800442E
	b _0802053A
_0802052A:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_080AEF88
_0802053A:
	pop {r4, pc}

	thumb_func_start sub_0802053C
sub_0802053C: @ 0x0802053C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0x28
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r0
	orrs r2, r1
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r3
	strb r1, [r4, #0x1b]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r2, r0
	strb r2, [r4, #0x18]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	bl sub_08000E50
	movs r1, #0x10
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08020590
sub_08020590: @ 0x08020590
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080205AE
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080205F2
_080205AE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _080205C8
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080205C8:
	ldr r0, [r4, #0x34]
	ldr r1, _080205F4 @ =0xFFFF4000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _080205F2
	movs r0, #0x28
	strb r0, [r4, #0xf]
	bl sub_08000E50
	movs r1, #0x10
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0x15]
_080205F2:
	pop {r4, r5, pc}
	.align 2, 0
_080205F4: .4byte 0xFFFF4000

	thumb_func_start sub_080205F8
sub_080205F8: @ 0x080205F8
	movs r1, #4
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_08020604
sub_08020604: @ 0x08020604
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08020624
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08020624
	adds r0, r4, #0
	bl sub_08049EE4
	b _08020632
_08020624:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
_08020632:
	strb r0, [r4, #0x15]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020638
sub_08020638: @ 0x08020638
	push {lr}
	ldr r1, _08020644 @ =gUnk_080CA66C
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08020644: .4byte gUnk_080CA66C

	thumb_func_start sub_08020648
sub_08020648: @ 0x08020648
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08020AD0
	ldr r1, _08020664 @ =gUnk_080CA684
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08020664: .4byte gUnk_080CA684

	thumb_func_start sub_08020668
sub_08020668: @ 0x08020668
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, #0x22
	bne _080206A2
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080206A2
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	movs r0, #0x23
	strb r0, [r2]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_080206A2:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x80
	beq _080206D0
	ldrb r0, [r4, #0xc]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080206D0
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_08004260
_080206D0:
	ldrb r0, [r5]
	cmp r0, #0x93
	bne _080206DC
	adds r0, r4, #0
	bl sub_08020648
_080206DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080206E0
sub_080206E0: @ 0x080206E0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08020AD0
	cmp r0, #0
	beq _080206F6
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	b _08020730
_080206F6:
	adds r0, r4, #0
	bl sub_08020B6C
	cmp r0, #0
	beq _0802072A
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r1, [r5]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_080AE58C
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r1, [r0]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_080AE7E8
	b _08020730
_0802072A:
	adds r0, r4, #0
	bl sub_08001324
_08020730:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08020734
sub_08020734: @ 0x08020734
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _08020764
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _08020764
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_08004260
	b _08020774
_08020764:
	ldr r0, _08020778 @ =gUnk_080CA6A4
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08020774:
	pop {r4, pc}
	.align 2, 0
_08020778: .4byte gUnk_080CA6A4

	thumb_func_start sub_0802077C
sub_0802077C: @ 0x0802077C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_08020788
sub_08020788: @ 0x08020788
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08020790
sub_08020790: @ 0x08020790
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_08020798
sub_08020798: @ 0x08020798
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_6
nullsub_6: @ 0x080207A4
	bx lr
	.align 2, 0

	thumb_func_start sub_080207A8
sub_080207A8: @ 0x080207A8
	push {lr}
	movs r3, #4
	movs r1, #4
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x29
	adds r1, r1, r0
	mov ip, r1
	ldrb r2, [r1]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	mov r2, ip
	strb r1, [r2]
	adds r3, r0, #0
	adds r3, #0x3a
	ldrb r2, [r3]
	movs r1, #0xfb
	ands r1, r2
	strb r1, [r3]
	ldrb r1, [r0, #0x15]
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	movs r1, #0xc0
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	movs r1, #0x80
	strh r1, [r0, #0x24]
	ldrb r1, [r0, #0x14]
	adds r1, #0x10
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_080207F4
sub_080207F4: @ 0x080207F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r0, #0x30
	strb r0, [r4, #0x16]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08020A30
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020820
sub_08020820: @ 0x08020820
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0802084A
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0802084A
	strb r5, [r4, #0xe]
_0802084A:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020872
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020872
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
_08020872:
	pop {r4, r5, pc}

	thumb_func_start sub_08020874
sub_08020874: @ 0x08020874
	push {lr}
	ldr r2, _08020888 @ =gUnk_080CA6BC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08020888: .4byte gUnk_080CA6BC

	thumb_func_start sub_0802088C
sub_0802088C: @ 0x0802088C
	movs r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r1, _080208B0 @ =gLinkEntity
	ldrb r1, [r1, #0x14]
	adds r2, r0, #0
	adds r2, #0x85
	strb r1, [r2]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080208B0: .4byte gLinkEntity

	thumb_func_start sub_080208B4
sub_080208B4: @ 0x080208B4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0x85
	ldrb r0, [r4]
	ldr r5, _080208EC @ =gLinkEntity
	ldrb r1, [r5, #0x14]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	beq _080208E6
	ldrb r0, [r2, #0x14]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r1, #0x10
	adds r0, r2, #0
	bl sub_08004260
_080208E6:
	ldrb r0, [r5, #0x14]
	strb r0, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_080208EC: .4byte gLinkEntity

	thumb_func_start sub_080208F0
sub_080208F0: @ 0x080208F0
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x18
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08020904
sub_08020904: @ 0x08020904
	push {lr}
	movs r1, #4
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0xff
	strb r1, [r0, #0x15]
	ldrb r1, [r0, #0x14]
	adds r1, #0x10
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_08020920
sub_08020920: @ 0x08020920
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020936
	adds r0, r1, #0
	bl sub_08020A30
_08020936:
	pop {pc}

	thumb_func_start sub_08020938
sub_08020938: @ 0x08020938
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08020950
	adds r0, r4, #0
	bl sub_08004274
_08020950:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08020980
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020978
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl sub_08004260
_08020978:
	adds r0, r4, #0
	bl sub_08078930
	b _0802099C
_08020980:
	cmp r0, #1
	bne _0802098C
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_0802098C:
	ldrb r1, [r4, #0x15]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0802099C
	adds r0, r4, #0
	bl sub_080AEFE0
_0802099C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080209A0
sub_080209A0: @ 0x080209A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080209E2
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x22
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08020A30
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _080209F0
_080209E2:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080209F0
	adds r0, r4, #0
	bl sub_08078930
_080209F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080209F4
sub_080209F4: @ 0x080209F4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xe0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _08020A14
	movs r1, #7
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
_08020A14:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020A24
	adds r0, r4, #0
	bl sub_08004274
_08020A24:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020A28
sub_08020A28: @ 0x08020A28
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_08020A30
sub_08020A30: @ 0x08020A30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldrb r0, [r5]
	cmp r0, #1
	bhi _08020A68
	bl sub_08000E50
	ldr r2, _08020A64 @ =gUnk_080CA6CC
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	cmp r0, #0
	bne _08020A68
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _08020A7A
	.align 2, 0
_08020A64: .4byte gUnk_080CA6CC
_08020A68:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x84
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08020A7C
_08020A7A:
	pop {r4, r5, pc}

	thumb_func_start sub_08020A7C
sub_08020A7C: @ 0x08020A7C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08000E50
	ldrb r5, [r6, #0x15]
	ldr r4, _08020ACC @ =gUnk_080CA6D4
	movs r1, #3
	bl __modsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r4, #0x18
	ands r5, r4
	adds r0, r6, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08020ABA
	adds r0, r6, #0
	bl sub_08049EE4
	adds r0, #4
	ands r0, r4
	movs r1, #0x10
	eors r1, r5
	cmp r1, r0
	bne _08020ABA
	adds r5, r1, #0
_08020ABA:
	strb r5, [r6, #0x15]
	lsrs r0, r5, #3
	strb r0, [r6, #0x14]
	ldrb r1, [r6, #0x14]
	adds r0, r6, #0
	bl sub_08004260
	pop {r4, r5, r6, pc}
	.align 2, 0
_08020ACC: .4byte gUnk_080CA6D4

	thumb_func_start sub_08020AD0
sub_08020AD0: @ 0x08020AD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08020B6C
	cmp r0, #0
	beq _08020B68
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08020B68
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _08020B5C @ =gUnk_03000BF0
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r5, #0
	bl sub_080002B0
	lsls r0, r0, #0x10
	ldr r1, _08020B60 @ =0xFF8F0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020B68
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r2, [r4, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	adds r0, #8
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	ands r1, r0
	adds r1, #0xd
	strh r1, [r4, #0x32]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r1, [r4, #0x14]
	adds r1, #0x14
	adds r0, r4, #0
	bl sub_08004260
	ldr r0, _08020B64 @ =0x00004034
	ldrb r2, [r6]
	adds r1, r5, #0
	bl sub_0800015E
	movs r0, #1
	b _08020B6A
	.align 2, 0
_08020B5C: .4byte gUnk_03000BF0
_08020B60: .4byte 0xFF8F0000
_08020B64: .4byte 0x00004034
_08020B68:
	movs r0, #0
_08020B6A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08020B6C
sub_08020B6C: @ 0x08020B6C
	push {lr}
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #0x10
	cmp r0, #3
	bls _08020B7C
	movs r0, #0
	b _08020B7E
_08020B7C:
	movs r0, #1
_08020B7E:
	pop {pc}

	thumb_func_start sub_08020B80
sub_08020B80: @ 0x08020B80
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08020B9C @ =gUnk_080CAA98
	bl sub_0800129E
	movs r3, #0x16
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08020B9C: .4byte gUnk_080CAA98

	thumb_func_start sub_08020BA0
sub_08020BA0: @ 0x08020BA0
	push {lr}
	ldr r2, _08020BB4 @ =gUnk_080CAAB0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08020BB4: .4byte gUnk_080CAAB0

	thumb_func_start sub_08020BB8
sub_08020BB8: @ 0x08020BB8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r2, #0x7f
	adds r1, r2, #0
	ands r1, r0
	cmp r1, #0x1c
	beq _08020BE0
	cmp r1, #0x1c
	bgt _08020BD4
	cmp r1, #0x16
	beq _08020C24
	b _08020D32
_08020BD4:
	cmp r1, #0x4b
	beq _08020C68
	cmp r1, #0x4c
	bne _08020BDE
	b _08020CF0
_08020BDE:
	b _08020D32
_08020BE0:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	ldr r1, _08020C20 @ =gUnk_080CAB0C
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #0x10
	eors r2, r0
	adds r2, #4
	movs r0, #0x18
	ands r2, r0
	asrs r2, r2, #3
	adds r0, r4, #0
	movs r1, #8
	bl sub_08021218
	adds r0, r4, #0
	bl sub_08021588
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	b _08020CE2
	.align 2, 0
_08020C20: .4byte gUnk_080CAB0C
_08020C24:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	ldr r1, _08020C64 @ =gUnk_080CAB10
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #0x10
	eors r2, r0
	adds r2, #4
	movs r0, #0x18
	ands r2, r0
	asrs r2, r2, #3
	adds r0, r4, #0
	movs r1, #8
	bl sub_08021218
	adds r0, r4, #0
	bl sub_08021588
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	b _08020CE2
	.align 2, 0
_08020C64: .4byte gUnk_080CAB10
_08020C68:
	ldrb r0, [r4, #0xc]
	adds r6, r4, #0
	adds r6, #0x45
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #0xd
	beq _08020D58
	cmp r0, #0xf
	beq _08020D58
	cmp r0, #0x13
	beq _08020D58
	cmp r0, #0x12
	beq _08020D58
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #4
	blt _08020CC0
	cmp r0, #6
	ble _08020CAC
	cmp r0, #0xc
	bgt _08020CC0
	cmp r0, #8
	blt _08020CC0
	ldr r0, _08020CA8 @ =gUnk_080CAB04
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7a
	b _08020CC6
	.align 2, 0
_08020CA8: .4byte gUnk_080CAB04
_08020CAC:
	ldr r0, _08020CBC @ =gUnk_080CAB00
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7a
	b _08020CC6
	.align 2, 0
_08020CBC: .4byte gUnk_080CAB00
_08020CC0:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0
_08020CC6:
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08021218
	ldr r0, _08020CEC @ =0x0000015D
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08021588
_08020CE2:
	adds r6, r4, #0
	adds r6, #0x45
	adds r5, r4, #0
	adds r5, #0x78
	b _08020D58
	.align 2, 0
_08020CEC: .4byte 0x0000015D
_08020CF0:
	ldrb r0, [r4, #0xc]
	adds r6, r4, #0
	adds r6, #0x45
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #0xf
	bne _08020D58
	movs r1, #0xff
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08020D0E
	adds r0, #0x41
	ldrb r0, [r0]
	adds r1, r2, #0
	ands r1, r0
_08020D0E:
	cmp r1, #2
	bne _08020D28
	ldr r0, _08020D24 @ =gUnk_080CAB08
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_080213D0
	b _08020D58
	.align 2, 0
_08020D24: .4byte gUnk_080CAB08
_08020D28:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080213D0
	b _08020D58
_08020D32:
	adds r2, r4, #0
	adds r2, #0x45
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r1, [r2]
	adds r6, r2, #0
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r1, r0
	beq _08020D58
	adds r0, r4, #0
	bl sub_08021588
	adds r0, r4, #0
	bl sub_08021390
	adds r0, r4, #0
	bl sub_0804AA1C
_08020D58:
	ldrb r0, [r6]
	strb r0, [r5]
	ldr r1, _08020D68 @ =gUnk_080CAA98
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08020D68: .4byte gUnk_080CAA98

	thumb_func_start nullsub_129
nullsub_129: @ 0x08020D6C
	bx lr
	.align 2, 0

	thumb_func_start sub_08020D70
sub_08020D70: @ 0x08020D70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	subs r0, #0x30
	ldrb r1, [r0]
	adds r0, #0x33
	strb r1, [r0]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl sub_08021218
	pop {r4, pc}

	thumb_func_start sub_08020D9C
sub_08020D9C: @ 0x08020D9C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08020DB0
	adds r0, r4, #0
	bl sub_080213F0
_08020DB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020DB4
sub_08020DB4: @ 0x08020DB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020DD0
	adds r0, r4, #0
	bl sub_08021390
_08020DD0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020DD4
sub_08020DD4: @ 0x08020DD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080214FC
	cmp r0, #0
	beq _08020DE8
	adds r0, r4, #0
	bl sub_080213F0
	b _08020E26
_08020DE8:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08020E08
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08021218
	b _08020E26
_08020E08:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020E1A
	adds r0, r4, #0
	bl sub_08021540
_08020E1A:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080042B8
_08020E26:
	pop {r4, pc}

	thumb_func_start sub_08020E28
sub_08020E28: @ 0x08020E28
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020E44
	adds r0, r4, #0
	bl sub_080213B0
_08020E44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020E48
sub_08020E48: @ 0x08020E48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080214FC
	cmp r0, #0
	beq _08020E5C
	adds r0, r4, #0
	bl sub_080213F0
	b _08020E76
_08020E5C:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020E76
	adds r0, r4, #0
	bl sub_080213B0
_08020E76:
	pop {r4, pc}

	thumb_func_start sub_08020E78
sub_08020E78: @ 0x08020E78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020E94
	adds r0, r4, #0
	bl sub_08021390
_08020E94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020E98
sub_08020E98: @ 0x08020E98
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0x38
	bl sub_08049F64
	cmp r0, #0
	beq _08020EF6
	ldr r5, _08020EDC @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_0802169C
	cmp r0, #0
	bne _08020ECA
	ldr r0, [r5]
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _08020EE0
_08020ECA:
	movs r0, #8
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08021218
	b _08020F26
	.align 2, 0
_08020EDC: .4byte gUnk_020000B0
_08020EE0:
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0802124C
	adds r0, r4, #0
	bl sub_08021644
	b _08020F26
_08020EF6:
	ldr r0, _08020F08 @ =gUnk_020000B0
	ldr r1, [r0]
	cmp r1, #0
	bne _08020F0C
	adds r0, r4, #0
	bl sub_08021414
	b _08020F26
	.align 2, 0
_08020F08: .4byte gUnk_020000B0
_08020F0C:
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_0802124C
	adds r0, r4, #0
	bl sub_08021644
_08020F26:
	pop {r4, r5, pc}

	thumb_func_start sub_08020F28
sub_08020F28: @ 0x08020F28
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020F44
	adds r0, r4, #0
	bl sub_08021400
_08020F44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020F48
sub_08020F48: @ 0x08020F48
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _08020FA4
	ldr r5, _08020F98 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_08021664
	cmp r0, #0
	beq _08020F9C
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #9
	bl sub_0804A044
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08020F9C
	movs r0, #0xe
	strb r0, [r4, #0xc]
	lsrs r2, r2, #3
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08021218
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A98C
	cmp r0, #0
	beq _08020FAA
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	b _08020FAA
	.align 2, 0
_08020F98: .4byte gUnk_020000B0
_08020F9C:
	adds r0, r4, #0
	bl sub_08021424
	b _08020FAA
_08020FA4:
	adds r0, r4, #0
	bl sub_08021390
_08020FAA:
	pop {r4, r5, pc}

	thumb_func_start sub_08020FAC
sub_08020FAC: @ 0x08020FAC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020FDC
	adds r1, r2, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	cmp r0, #0
	beq _08020FCC
	subs r0, #1
	strb r0, [r1]
	b _08020FE2
_08020FCC:
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08021390
	b _08020FE2
_08020FDC:
	adds r0, r2, #0
	bl sub_080042B8
_08020FE2:
	pop {pc}

	thumb_func_start sub_08020FE4
sub_08020FE4: @ 0x08020FE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802100C
	movs r0, #0xc
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #9
	bl sub_08021218
	adds r0, r4, #0
	bl sub_0804AA1C
_0802100C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021010
sub_08021010: @ 0x08021010
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021034
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x56
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080213F0
_08021034:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021038
sub_08021038: @ 0x08021038
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08021066
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021066
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _0802105E
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_0802105E:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_08004488
_08021066:
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021090
	adds r0, r4, #0
	bl sub_08021588
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021088
	subs r0, #1
	b _080210A2
_08021088:
	adds r0, r4, #0
	bl sub_08021390
	b _080210A4
_08021090:
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r5]
	cmp r0, #4
	bne _080210A4
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
_080210A2:
	strb r0, [r1]
_080210A4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080210A8
sub_080210A8: @ 0x080210A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080210D4
	movs r0, #0
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08021588
	ldr r0, _080210D0 @ =0x0000015D
	bl sub_08004488
	b _080210E2
	.align 2, 0
_080210D0: .4byte 0x0000015D
_080210D4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080210E2
	adds r0, r4, #0
	bl sub_08021390
_080210E2:
	pop {r4, pc}

	thumb_func_start sub_080210E4
sub_080210E4: @ 0x080210E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802111A
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl sub_0804A98C
	cmp r0, #0
	beq _08021112
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_08021112:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_08004488
_0802111A:
	adds r0, r4, #0
	bl sub_08021644
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08021154
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	beq _0802114A
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08021154
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021154
_0802114A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080213D0
	b _0802116C
_08021154:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802116C
	adds r0, r4, #0
	movs r1, #0
	bl sub_080213D0
_0802116C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021170
sub_08021170: @ 0x08021170
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021198
	adds r1, r2, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021190
	subs r0, #1
	strb r0, [r1]
	b _0802119E
_08021190:
	adds r0, r2, #0
	bl sub_08021390
	b _0802119E
_08021198:
	adds r0, r2, #0
	bl sub_080042B8
_0802119E:
	pop {pc}

	thumb_func_start sub_080211A0
sub_080211A0: @ 0x080211A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080214FC
	cmp r0, #0
	beq _080211B4
	adds r0, r4, #0
	bl sub_08021390
	b _080211CE
_080211B4:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080211CE
	adds r0, r4, #0
	bl sub_080213B0
_080211CE:
	pop {r4, pc}

	thumb_func_start sub_080211D0
sub_080211D0: @ 0x080211D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0802159C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080211F2
	adds r0, r4, #0
	bl sub_08021390
_080211F2:
	pop {r4, pc}

	thumb_func_start sub_080211F4
sub_080211F4: @ 0x080211F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08021600
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021216
	adds r0, r4, #0
	bl sub_08021390
_08021216:
	pop {r4, pc}

	thumb_func_start sub_08021218
sub_08021218: @ 0x08021218
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x74
	ldrb r0, [r4]
	cmp r0, r1
	bne _0802122C
	ldrb r0, [r3, #0x14]
	cmp r0, r2
	beq _08021244
_0802122C:
	strb r2, [r3, #0x14]
	strb r1, [r4]
	lsls r0, r1, #1
	ldr r1, _08021248 @ =gUnk_080CAB14
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	strh r1, [r3, #0x12]
	ldrb r1, [r0]
	adds r1, r1, r2
	adds r0, r3, #0
	bl sub_080042AC
_08021244:
	pop {r4, pc}
	.align 2, 0
_08021248: .4byte gUnk_080CAB14

	thumb_func_start sub_0802124C
sub_0802124C: @ 0x0802124C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0x15]
	bl sub_08021274
	adds r2, r0, #0
	cmp r2, #0xff
	beq _0802126C
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08021218
	b _08021272
_0802126C:
	adds r0, r4, #0
	bl sub_080042B8
_08021272:
	pop {r4, pc}

	thumb_func_start sub_08021274
sub_08021274: @ 0x08021274
	push {lr}
	adds r2, r0, #0
	movs r0, #7
	ands r0, r1
	subs r0, #3
	cmp r0, #2
	bhi _0802129A
	movs r3, #0x18
	adds r0, r1, #0
	ands r0, r3
	lsrs r0, r0, #3
	cmp r0, r2
	beq _080212AA
	adds r0, r1, #0
	adds r0, #8
	ands r0, r3
	lsrs r0, r0, #3
	cmp r0, r2
	beq _080212AA
_0802129A:
	adds r0, r1, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r1, r0, #3
	cmp r2, r1
	beq _080212AA
	adds r0, r1, #0
	b _080212AC
_080212AA:
	movs r0, #0xff
_080212AC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080212B0
sub_080212B0: @ 0x080212B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #1
	beq _080212D0
	cmp r0, #2
	beq _080212DC
	movs r0, #1
	strb r0, [r1]
	ldr r4, _080212CC @ =gUnk_080CAB3A
	b _080212E2
	.align 2, 0
_080212CC: .4byte gUnk_080CAB3A
_080212D0:
	movs r0, #2
	strb r0, [r1]
	ldr r4, _080212D8 @ =gUnk_080CAB42
	b _080212E2
	.align 2, 0
_080212D8: .4byte gUnk_080CAB42
_080212DC:
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0802131C @ =gUnk_080CAB4A
_080212E2:
	bl sub_08000E50
	movs r1, #7
	ands r1, r0
	adds r1, r1, r4
	ldrb r2, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _08021306
	cmp r2, #2
	bne _08021306
	ldr r4, _08021320 @ =gUnk_080CAB52
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	adds r1, r1, r4
	ldrb r2, [r1]
_08021306:
	movs r0, #0
	str r0, [r5, #0x54]
	ldr r1, _08021324 @ =gUnk_080CAB58
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0802131C: .4byte gUnk_080CAB4A
_08021320: .4byte gUnk_080CAB52
_08021324: .4byte gUnk_080CAB58

	thumb_func_start sub_08021328
sub_08021328: @ 0x08021328
	push {lr}
	movs r1, #0xd
	strb r1, [r0, #0xc]
	ldr r2, _08021348 @ =gUnk_080CAB68
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x7c
	strb r2, [r1]
	ldrb r2, [r0, #0x14]
	movs r1, #0xc
	bl sub_08021218
	pop {pc}
	.align 2, 0
_08021348: .4byte gUnk_080CAB68

	thumb_func_start sub_0802134C
sub_0802134C: @ 0x0802134C
	push {lr}
	movs r1, #0xf
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x76
	movs r1, #0x78
	strh r1, [r2]
	ldrb r2, [r0, #0x14]
	movs r1, #0xe
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021370
sub_08021370: @ 0x08021370
	push {lr}
	movs r1, #0x12
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #0x10
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021380
sub_08021380: @ 0x08021380
	push {lr}
	movs r1, #0x13
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #0x11
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021390
sub_08021390: @ 0x08021390
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0x56
	strb r1, [r2]
	ldrb r2, [r0, #0x14]
	movs r1, #6
	bl sub_08021218
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080213B0
sub_080213B0: @ 0x080213B0
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #1
	strb r1, [r0, #0xe]
	movs r1, #0xc0
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x76
	movs r1, #0xf0
	strh r1, [r2]
	ldrb r2, [r0, #0x14]
	movs r1, #3
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_080213D0
sub_080213D0: @ 0x080213D0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08021218
	adds r0, r4, #0
	bl sub_08021588
	pop {r4, pc}

	thumb_func_start sub_080213F0
sub_080213F0: @ 0x080213F0
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #1
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021400
sub_08021400: @ 0x08021400
	push {lr}
	movs r1, #9
	strb r1, [r0, #0xc]
	movs r1, #0x60
	strh r1, [r0, #0x24]
	ldrb r2, [r0, #0x14]
	movs r1, #0xa
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021414
sub_08021414: @ 0x08021414
	push {lr}
	movs r1, #0x11
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #5
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021424
sub_08021424: @ 0x08021424
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08021450 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r1, r0, #0
	ldrb r0, [r5, #0x14]
	bl sub_08021274
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08021454
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08021218
	b _08021456
	.align 2, 0
_08021450: .4byte gUnk_020000B0
_08021454:
	ldrb r4, [r5, #0x14]
_08021456:
	cmp r4, #1
	beq _08021490
	cmp r4, #1
	blo _08021478
	cmp r4, #2
	beq _080214A8
	ldr r0, _08021474 @ =gUnk_020000B0
	ldr r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	adds r2, #0x24
	movs r4, #0x32
	ldrsh r3, [r1, r4]
	b _080214B8
	.align 2, 0
_08021474: .4byte gUnk_020000B0
_08021478:
	ldr r0, _0802148C @ =gUnk_020000B0
	ldr r0, [r0]
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r4, #0x32
	ldrsh r0, [r0, r4]
	adds r3, r0, #0
	adds r3, #0x2c
	b _080214B8
	.align 2, 0
_0802148C: .4byte gUnk_020000B0
_08021490:
	ldr r0, _080214A4 @ =gUnk_020000B0
	ldr r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	subs r2, #0x24
	movs r4, #0x32
	ldrsh r3, [r1, r4]
	b _080214B8
	.align 2, 0
_080214A4: .4byte gUnk_020000B0
_080214A8:
	ldr r0, _080214F0 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r4, #0x32
	ldrsh r0, [r0, r4]
	adds r3, r0, #0
	subs r3, #0x1d
_080214B8:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	subs r0, r2, r0
	adds r0, #3
	cmp r0, #6
	bhi _080214D0
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	subs r0, r3, r0
	adds r0, #2
	cmp r0, #4
	bls _080214E8
_080214D0:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	bl sub_080045D4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080214F4
_080214E8:
	adds r0, r5, #0
	bl sub_080212B0
	b _080214FA
	.align 2, 0
_080214F0: .4byte gUnk_020000B0
_080214F4:
	adds r0, r5, #0
	bl sub_080042B8
_080214FA:
	pop {r4, r5, pc}

	thumb_func_start sub_080214FC
sub_080214FC: @ 0x080214FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802153C
	ldr r0, _08021538 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	subs r0, r2, r0
	subs r0, #2
	cmp r0, #4
	bhi _0802153C
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	movs r0, #1
	b _0802153E
	.align 2, 0
_08021538: .4byte gUnk_020000B0
_0802153C:
	movs r0, #0
_0802153E:
	pop {r4, pc}

	thumb_func_start sub_08021540
sub_08021540: @ 0x08021540
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08021566
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08021566
	adds r0, r4, #0
	bl sub_08049EE4
	adds r1, r0, #4
	b _08021568
_08021566:
	lsrs r1, r5, #0x10
_08021568:
	movs r0, #0x18
	ands r1, r0
	strb r1, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	bl sub_08021274
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08021582
	adds r0, r4, #0
	movs r1, #3
	bl sub_08021218
_08021582:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	pop {r4, r5, pc}

	thumb_func_start sub_08021588
sub_08021588: @ 0x08021588
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x54]
	cmp r1, #0
	beq _08021598
	movs r0, #0
	str r0, [r1, #0x50]
	str r0, [r2, #0x54]
_08021598:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802159C
sub_0802159C: @ 0x0802159C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #1
	bne _080215D4
	movs r0, #0
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl sub_0804A98C
	cmp r0, #0
	beq _080215CA
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_080215CA:
	movs r0, #0x8b
	lsls r0, r0, #1
	bl sub_08004488
	b _080215F8
_080215D4:
	cmp r0, #2
	bne _080215E4
	movs r0, #0
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08021588
	b _080215F8
_080215E4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080215F8
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080215FC @ =0x00000115
	bl sub_08004488
_080215F8:
	pop {r4, pc}
	.align 2, 0
_080215FC: .4byte 0x00000115

	thumb_func_start sub_08021600
sub_08021600: @ 0x08021600
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _08021634
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x1b
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_0804A98C
	cmp r0, #0
	beq _0802162A
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_0802162A:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_08004488
	b _08021642
_08021634:
	cmp r0, #2
	bne _08021642
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08021588
_08021642:
	pop {r4, pc}

	thumb_func_start sub_08021644
sub_08021644: @ 0x08021644
	push {lr}
	adds r2, r0, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021660
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x7d
	bl sub_08004488
_08021660:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08021664
sub_08021664: @ 0x08021664
	push {lr}
	ldrb r2, [r0, #0x14]
	cmp r2, #1
	beq _08021690
	cmp r2, #1
	bgt _08021676
	cmp r2, #0
	beq _08021680
	b _08021698
_08021676:
	cmp r2, #2
	beq _08021688
	cmp r2, #3
	beq _08021690
	b _08021698
_08021680:
	movs r2, #0x22
	bl sub_08049F1C
	b _0802169A
_08021688:
	movs r2, #0x13
	bl sub_08049F1C
	b _0802169A
_08021690:
	movs r2, #0x1a
	bl sub_08049F1C
	b _0802169A
_08021698:
	movs r0, #0
_0802169A:
	pop {pc}

	thumb_func_start sub_0802169C
sub_0802169C: @ 0x0802169C
	push {lr}
	ldrb r2, [r0, #0x14]
	cmp r2, #1
	beq _080216C0
	cmp r2, #1
	bgt _080216AE
	cmp r2, #0
	beq _080216B8
	b _080216CE
_080216AE:
	cmp r2, #2
	beq _080216BC
	cmp r2, #3
	beq _080216C0
	b _080216CE
_080216B8:
	movs r2, #0x2c
	b _080216C2
_080216BC:
	movs r2, #0x1d
	b _080216C2
_080216C0:
	movs r2, #0x24
_080216C2:
	bl sub_08049F1C
	cmp r0, #0
	bne _080216CE
	movs r0, #1
	b _080216D0
_080216CE:
	movs r0, #0
_080216D0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080216D4
sub_080216D4: @ 0x080216D4
	push {lr}
	ldr r1, _080216E0 @ =gUnk_080CB570
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_080216E0: .4byte gUnk_080CB570

	thumb_func_start sub_080216E4
sub_080216E4: @ 0x080216E4
	push {lr}
	ldr r2, _080216F8 @ =gUnk_080CB588
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080216F8: .4byte gUnk_080CB588

	thumb_func_start sub_080216FC
sub_080216FC: @ 0x080216FC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802171A
	adds r0, r2, #0
	movs r1, #3
	movs r2, #0x80
	bl CreateFX
	bl sub_0805E780
_0802171A:
	pop {pc}

	thumb_func_start nullsub_7
nullsub_7: @ 0x0802171C
	bx lr
	.align 2, 0

	thumb_func_start sub_08021720
sub_08021720: @ 0x08021720
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0xa]
	strb r1, [r0, #0x1e]
	ldrb r2, [r0, #0x19]
	movs r1, #0x3f
	ands r1, r2
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x19]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_08
nullsub_08: @ 0x08021754
	bx lr
	.align 2, 0

	thumb_func_start sub_08021758
sub_08021758: @ 0x08021758
	push {lr}
	ldr r1, _08021764 @ =gUnk_080CB590
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08021764: .4byte gUnk_080CB590

	thumb_func_start sub_08021768
sub_08021768: @ 0x08021768
	push {lr}
	ldr r2, _0802177C @ =gUnk_080CB5A8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802177C: .4byte gUnk_080CB5A8

	thumb_func_start sub_08021780
sub_08021780: @ 0x08021780
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	beq _08021792
	cmp r0, #0x93
	beq _080217F4
	b _080217FA
_08021792:
	ldr r0, _080217A4 @ =gUnk_03003F80
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _080217A8
	adds r0, r4, #0
	bl sub_08021768
	b _080217FA
	.align 2, 0
_080217A4: .4byte gUnk_03003F80
_080217A8:
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080217EC @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA6C
	ldr r0, _080217F0 @ =0x0000FFFF
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x87
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _080217FA
	.align 2, 0
_080217EC: .4byte gLinkEntity
_080217F0: .4byte 0x0000FFFF
_080217F4:
	adds r0, r4, #0
	bl sub_08021768
_080217FA:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _08021808
	subs r0, #3
	strb r1, [r0]
_08021808:
	ldr r1, _08021814 @ =gUnk_080CB590
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08021814: .4byte gUnk_080CB590

	thumb_func_start sub_08021818
sub_08021818: @ 0x08021818
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _0802182A
	adds r0, r3, #0
	bl sub_0804A7D4
	b _08021844
_0802182A:
	ldr r2, [r3, #0x50]
	cmp r2, #0
	beq _0802183A
	ldrb r0, [r2, #0xf]
	subs r0, #1
	movs r1, #0
	strb r0, [r2, #0xf]
	str r1, [r3, #0x50]
_0802183A:
	adds r0, r3, #0
	movs r1, #0xf0
	movs r2, #0
	bl sub_0804A7E0
_08021844:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08021848
sub_08021848: @ 0x08021848
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	adds r1, r0, #0
	cmp r1, #0
	beq _0802186C
	ldr r0, _08021868 @ =gUnk_080CB5C8
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802187A
	.align 2, 0
_08021868: .4byte gUnk_080CB5C8
_0802186C:
	movs r0, #3
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0802187A:
	pop {r4, pc}

	thumb_func_start sub_0802187C
sub_0802187C: @ 0x0802187C
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_130
nullsub_130: @ 0x08021884
	bx lr
	.align 2, 0

	thumb_func_start sub_08021888
sub_08021888: @ 0x08021888
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0802189A
	adds r0, r4, #0
	bl sub_08021818
_0802189A:
	pop {r4, pc}

	thumb_func_start sub_0802189C
sub_0802189C: @ 0x0802189C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_080218B4
sub_080218B4: @ 0x080218B4
	push {lr}
	ldr r2, _080218C8 @ =gUnk_080CB5D4
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080218C8: .4byte gUnk_080CB5D4

	thumb_func_start sub_080218CC
sub_080218CC: @ 0x080218CC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _08021916
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r4, r0, #0
	bl sub_08000E50
	movs r1, #0x10
	eors r4, r1
	ldr r2, _08021980 @ =gUnk_080CB5DC
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r5, #0x20]
_08021916:
	adds r0, r5, #0
	bl sub_08004274
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08021948
	adds r0, r5, #0
	bl sub_080AEFE0
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08021948
	adds r0, r5, #0
	adds r0, #0x59
	strb r6, [r0]
_08021948:
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802197C
	movs r0, #2
	strb r0, [r5, #0xc]
	bl sub_08000E50
	movs r1, #0x38
	ands r0, r1
	adds r0, #8
	strb r0, [r5, #0xe]
	movs r0, #1
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
_0802197C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08021980: .4byte gUnk_080CB5DC

	thumb_func_start sub_08021984
sub_08021984: @ 0x08021984
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080219C2
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _08021A08 @ =0x0000FF80
	strh r0, [r4, #0x36]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	ldr r0, _08021A0C @ =0x0000012D
	bl sub_08004488
_080219C2:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08021A04
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08016A04
_08021A04:
	pop {r4, pc}
	.align 2, 0
_08021A08: .4byte 0x0000FF80
_08021A0C: .4byte 0x0000012D

	thumb_func_start sub_08021A10
sub_08021A10: @ 0x08021A10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r1, _08021A60 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0x78
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _08021A5E
	adds r0, r4, #0
	bl sub_08021D00
	cmp r0, #0
	bne _08021A5E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021A5E
	movs r0, #3
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08021D44
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08021A5E:
	pop {r4, pc}
	.align 2, 0
_08021A60: .4byte gLinkEntity

	thumb_func_start sub_08021A64
sub_08021A64: @ 0x08021A64
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08021D00
	cmp r0, #0
	bne _08021AD4
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021A96
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08021A96:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _08021AC8
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	cmp r1, #0xff
	bne _08021AC2
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _08021AD4
_08021AC2:
	adds r0, r4, #0
	bl sub_08021D44
_08021AC8:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
_08021AD4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08021AD8
sub_08021AD8: @ 0x08021AD8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08021B3A
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08021B1E
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	bne _08021B16
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _08021B60
_08021B16:
	strb r0, [r4, #0x15]
	movs r0, #0x7c
	bl sub_08004488
_08021B1E:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08021B3A
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #1
	strb r0, [r1]
_08021B3A:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021B60
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08021B60:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021B64
sub_08021B64: @ 0x08021B64
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08021B88 @ =gUnk_03003F80
	ldr r1, [r0, #0x30]
	movs r2, #4
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _08021B8C
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	str r1, [r4, #0x34]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _08021C4E
	.align 2, 0
_08021B88: .4byte gUnk_03003F80
_08021B8C:
	movs r5, #1
	adds r0, r6, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _08021BBA
	cmp r0, #0x14
	beq _08021BBA
	bl sub_0807953C
	cmp r0, #0
	beq _08021BAE
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, r0, #0
	adds r5, #8
_08021BAE:
	ldrb r0, [r4, #0xe]
	subs r5, r0, r5
	cmp r5, #0
	bge _08021BB8
	movs r5, #0
_08021BB8:
	strb r5, [r4, #0xe]
_08021BBA:
	ldr r0, [r6, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08021BC8
	movs r5, #0
_08021BC8:
	cmp r5, #0
	bne _08021C04
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x87
	strb r5, [r0]
	ldr r2, _08021BEC @ =gLinkEntity
	ldrb r1, [r2, #0x15]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08021BF0
	movs r0, #0x10
	b _08021BF6
	.align 2, 0
_08021BEC: .4byte gLinkEntity
_08021BF0:
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
_08021BF6:
	eors r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	b _08021C4E
_08021C04:
	ldrb r1, [r6, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6, #0x1a]
	adds r1, r6, #0
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08021C50 @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA6C
	ldr r2, _08021C54 @ =gUnk_080CB5E4
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #0xe
	ands r0, r1
	lsrs r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
_08021C4E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08021C50: .4byte gLinkEntity
_08021C54: .4byte gUnk_080CB5E4

	thumb_func_start sub_08021C58
sub_08021C58: @ 0x08021C58
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08021C8A
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08021C8A
	adds r0, r4, #0
	adds r0, #0x59
	strb r5, [r0]
_08021C8A:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021CCC
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r2, #0x3c
	strb r2, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x86
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08021CCC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08021CD0
sub_08021CD0: @ 0x08021CD0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021CE6
	adds r0, r4, #0
	bl sub_08004274
_08021CE6:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	beq _08021CFE
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08021CFE:
	pop {r4, pc}

	thumb_func_start sub_08021D00
sub_08021D00: @ 0x08021D00
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021D16
	subs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _08021D40
_08021D16:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_08049F64
	cmp r0, #0
	bne _08021D28
	movs r0, #0
	b _08021D40
_08021D28:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	movs r0, #1
_08021D40:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021D44
sub_08021D44: @ 0x08021D44
	push {lr}
	adds r2, r0, #0
	adds r1, #4
	movs r0, #0x18
	ands r1, r0
	strb r1, [r2, #0x15]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08021D5E
	movs r0, #0xc0
	lsls r0, r0, #1
	b _08021D60
_08021D5E:
	movs r0, #0xc0
_08021D60:
	strh r0, [r2, #0x24]
	pop {pc}

	thumb_func_start sub_08021D64
sub_08021D64: @ 0x08021D64
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08021D7C @ =gUnk_080CB69C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08021D7C: .4byte gUnk_080CB69C

	thumb_func_start sub_08021D80
sub_08021D80: @ 0x08021D80
	push {lr}
	ldr r2, _08021D94 @ =gUnk_080CB6B4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08021D94: .4byte gUnk_080CB6B4

	thumb_func_start sub_08021D98
sub_08021D98: @ 0x08021D98
	push {lr}
	ldr r1, _08021DA4 @ =gUnk_080CB69C
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08021DA4: .4byte gUnk_080CB69C

	thumb_func_start sub_08021DA8
sub_08021DA8: @ 0x08021DA8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08021DC4
	ldr r0, _08021DC8 @ =gUnk_080CB6C4
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08021DC4:
	pop {r4, pc}
	.align 2, 0
_08021DC8: .4byte gUnk_080CB6C4

	thumb_func_start sub_08021DCC
sub_08021DCC: @ 0x08021DCC
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_08021DD4
sub_08021DD4: @ 0x08021DD4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08021DDC
sub_08021DDC: @ 0x08021DDC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08021DEE
	adds r0, r4, #0
	bl sub_0804A7D4
_08021DEE:
	pop {r4, pc}

	thumb_func_start sub_08021DF0
sub_08021DF0: @ 0x08021DF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08021E14
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08021E48 @ =0x0000FFF0
	strh r0, [r4, #0x36]
_08021E14:
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #1
	strb r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r4, #0
	bl sub_08021EF0
	pop {r4, pc}
	.align 2, 0
_08021E48: .4byte 0x0000FFF0

	thumb_func_start sub_08021E4C
sub_08021E4C: @ 0x08021E4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	beq _08021E5E
	subs r0, #1
	strh r0, [r1]
_08021E5E:
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _08021E6C
	subs r0, #1
	strh r0, [r1]
_08021E6C:
	adds r0, r4, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08021E8A
	adds r0, r4, #0
	bl sub_08021F24
	b _08021E90
_08021E8A:
	adds r0, r4, #0
	bl sub_080AEFB4
_08021E90:
	ldr r1, _08021EA0 @ =gUnk_080CB6D0
	ldrb r0, [r5]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x63
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08021EA0: .4byte gUnk_080CB6D0

	thumb_func_start sub_08021EA4
sub_08021EA4: @ 0x08021EA4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021EBA
	adds r0, r1, #0
	bl sub_08021EF0
_08021EBA:
	pop {pc}

	thumb_func_start sub_08021EBC
sub_08021EBC: @ 0x08021EBC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08021ECC
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08021EE8
_08021ECC:
	ldr r0, _08021EEC @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x70
	bl sub_0806FCB8
	cmp r0, #0
	beq _08021EE8
	adds r0, r4, #0
	bl sub_08021EF0
_08021EE8:
	pop {r4, pc}
	.align 2, 0
_08021EEC: .4byte gLinkEntity

	thumb_func_start sub_08021EF0
sub_08021EF0: @ 0x08021EF0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08021F20 @ =gUnk_080CB6D6
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_08021F20: .4byte gUnk_080CB6D6

	thumb_func_start sub_08021F24
sub_08021F24: @ 0x08021F24
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021F48
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08021F44 @ =gUnk_080CB6F6
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	b _08021F6E
	.align 2, 0
_08021F44: .4byte gUnk_080CB6F6
_08021F48:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021F80
	ldr r0, _08021F7C @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x70
	bl sub_0806FCB8
	cmp r0, #0
	bne _08021F80
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
_08021F6E:
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _08021FA4
	.align 2, 0
_08021F7C: .4byte gLinkEntity
_08021F80:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08021F94
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	b _08021F9A
_08021F94:
	adds r0, r4, #0
	bl sub_08049EE4
_08021F9A:
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08021FA4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021FA8
sub_08021FA8: @ 0x08021FA8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08021FD4 @ =gUnk_080CB734
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _08021FD8 @ =gUnk_080CB8A4
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r4, #0x1e]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x48]
	pop {r4, r5, pc}
	.align 2, 0
_08021FD4: .4byte gUnk_080CB734
_08021FD8: .4byte gUnk_080CB8A4

	thumb_func_start sub_08021FDC
sub_08021FDC: @ 0x08021FDC
	push {lr}
	ldr r2, _08021FF0 @ =gUnk_080CB74C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08021FF0: .4byte gUnk_080CB74C

	thumb_func_start sub_08021FF4
sub_08021FF4: @ 0x08021FF4
	push {lr}
	ldr r1, _08022000 @ =gUnk_080CB734
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08022000: .4byte gUnk_080CB734

	thumb_func_start sub_08022004
sub_08022004: @ 0x08022004
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl CreateFX
	adds r0, r4, #0
	bl sub_08049CF4
	bl sub_0805E780
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022034
sub_08022034: @ 0x08022034
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	movs r0, #3
	ands r0, r1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08022098 @ =gUnk_080CB764
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080221C0
	pop {r4, pc}
	.align 2, 0
_08022098: .4byte gUnk_080CB764

	thumb_func_start sub_0802209C
sub_0802209C: @ 0x0802209C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080220D2
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r1, [r1]
	movs r2, #0x10
	movs r3, #0x10
	bl sub_0806FBFC
	cmp r0, #0
	beq _080220D6
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x12
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xb]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	b _080220D6
_080220D2:
	subs r0, #1
	strb r0, [r4, #0xe]
_080220D6:
	pop {r4, pc}

	thumb_func_start sub_080220D8
sub_080220D8: @ 0x080220D8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080220EC
	movs r0, #3
	strb r0, [r1, #0xc]
_080220EC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080220F0
sub_080220F0: @ 0x080220F0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022160
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x78
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x44
	strb r1, [r0]
	ldrb r1, [r5, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802215C @ =gUnk_080CB76C
	adds r4, r0, r1
	movs r6, #0
_08022124:
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08022148
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
_08022148:
	adds r6, #1
	adds r4, #2
	cmp r6, #5
	bls _08022124
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
	b _08022170
	.align 2, 0
_0802215C: .4byte gUnk_080CB76C
_08022160:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022170
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #4
	strb r0, [r1]
_08022170:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08022174
sub_08022174: @ 0x08022174
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022196
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xb]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_08022196:
	pop {r4, pc}

	thumb_func_start sub_08022198
sub_08022198: @ 0x08022198
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080221BC
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
_080221BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080221C0
sub_080221C0: @ 0x080221C0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r6, r0]
	ldr r1, _08022220 @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	ldr r1, _08022224 @ =gUnk_080B4488
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r4, r0
	adds r0, r6, #0
	adds r0, #0x7e
	strh r4, [r0]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldr r1, _08022228 @ =gUnk_080CB79C
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r2, [r5]
	adds r1, r4, #0
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_08022220: .4byte gUnk_03000BF0
_08022224: .4byte gUnk_080B4488
_08022228: .4byte gUnk_080CB79C

	thumb_func_start sub_0802222C
sub_0802222C: @ 0x0802222C
	push {lr}
	ldr r1, _08022238 @ =gUnk_080CB948
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08022238: .4byte gUnk_080CB948

	thumb_func_start sub_0802223C
sub_0802223C: @ 0x0802223C
	push {lr}
	ldr r2, _08022250 @ =gUnk_080CB960
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022250: .4byte gUnk_080CB960

	thumb_func_start sub_08022254
sub_08022254: @ 0x08022254
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022344
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #4
	cmp r0, #0x18
	bhi _08022356
	lsls r0, r0, #2
	ldr r1, _0802227C @ =_08022280
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802227C: .4byte _08022280
_08022280: @ jump table
	.4byte _080222E4 @ case 0
	.4byte _080222E4 @ case 1
	.4byte _080222E4 @ case 2
	.4byte _08022356 @ case 3
	.4byte _080222E4 @ case 4
	.4byte _080222E4 @ case 5
	.4byte _080222E4 @ case 6
	.4byte _080222E4 @ case 7
	.4byte _080222E4 @ case 8
	.4byte _080222E4 @ case 9
	.4byte _08022356 @ case 10
	.4byte _08022356 @ case 11
	.4byte _080222E4 @ case 12
	.4byte _080222E4 @ case 13
	.4byte _080222E4 @ case 14
	.4byte _08022356 @ case 15
	.4byte _08022356 @ case 16
	.4byte _08022356 @ case 17
	.4byte _080222F2 @ case 18
	.4byte _08022356 @ case 19
	.4byte _080222E4 @ case 20
	.4byte _080222E4 @ case 21
	.4byte _080222E4 @ case 22
	.4byte _08022356 @ case 23
	.4byte _080222F2 @ case 24
_080222E4:
	ldr r0, _08022340 @ =gUnk_03003F80
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022356
_080222F2:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	movs r0, #1
	movs r1, #1
	bl sub_0804AA60
	adds r5, r0, #0
	cmp r5, #0
	beq _08022356
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804A4E4
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	str r5, [r4, #0x54]
	b _08022356
	.align 2, 0
_08022340: .4byte gUnk_03003F80
_08022344:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x94
	beq _08022356
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08022356:
	ldr r1, _08022360 @ =gUnk_080CB948
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08022360: .4byte gUnk_080CB948

	thumb_func_start nullsub_131
nullsub_131: @ 0x08022364
	bx lr
	.align 2, 0

	thumb_func_start sub_08022368
sub_08022368: @ 0x08022368
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022390
sub_08022390: @ 0x08022390
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080223D4
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080223C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	bl sub_08000E50
	movs r1, #4
	ands r0, r1
	strb r0, [r4, #0xf]
_080223C0:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080223CE
	adds r0, r4, #0
	bl sub_080AEF88
	b _080223DA
_080223CE:
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080223DA
_080223D4:
	bl sub_08000E50
	strb r0, [r4, #0xe]
_080223DA:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080223E4
sub_080223E4: @ 0x080223E4
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _0802240A
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x94
	strb r0, [r1]
	subs r1, #4
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #5
	movs r0, #0xc
	strb r0, [r1]
	ldrb r1, [r3, #0x15]
	adds r0, r2, #0
	adds r0, #0x3e
	strb r1, [r0]
_0802240A:
	adds r0, r3, #0
	bl sub_0805E7BC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022414
sub_08022414: @ 0x08022414
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08022430 @ =gUnk_080CBA28
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08022430: .4byte gUnk_080CBA28

	thumb_func_start sub_08022434
sub_08022434: @ 0x08022434
	push {lr}
	ldr r2, _08022448 @ =gUnk_080CBA40
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022448: .4byte gUnk_080CBA40

	thumb_func_start sub_0802244C
sub_0802244C: @ 0x0802244C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802245C
	b _08022582
_0802245C:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x65
	bne _08022522
	adds r0, #2
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #2
	cmp r0, #0x18
	bhi _08022540
	lsls r0, r0, #2
	ldr r1, _08022480 @ =_08022484
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022480: .4byte _08022484
_08022484: @ jump table
	.4byte _080224E8 @ case 0
	.4byte _080224E8 @ case 1
	.4byte _08022540 @ case 2
	.4byte _08022540 @ case 3
	.4byte _08022540 @ case 4
	.4byte _08022540 @ case 5
	.4byte _08022508 @ case 6
	.4byte _08022508 @ case 7
	.4byte _08022508 @ case 8
	.4byte _08022508 @ case 9
	.4byte _08022508 @ case 10
	.4byte _08022540 @ case 11
	.4byte _08022540 @ case 12
	.4byte _08022540 @ case 13
	.4byte _08022540 @ case 14
	.4byte _08022540 @ case 15
	.4byte _08022540 @ case 16
	.4byte _08022540 @ case 17
	.4byte _08022540 @ case 18
	.4byte _08022540 @ case 19
	.4byte _08022508 @ case 20
	.4byte _08022540 @ case 21
	.4byte _08022508 @ case 22
	.4byte _08022508 @ case 23
	.4byte _08022508 @ case 24
_080224E8:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0x5c
	strb r0, [r6]
	ldr r0, _08022504 @ =gUnk_080FD468
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _08022540
	.align 2, 0
_08022504: .4byte gUnk_080FD468
_08022508:
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x5c
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _08022540
_08022522:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x94
	bne _08022540
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08022540:
	adds r0, r4, #0
	adds r0, #0x80
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r2, [r0]
	adds r5, r1, #0
	adds r7, r0, #0
	ldrb r0, [r5]
	cmp r2, r0
	beq _08022566
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x5c
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _0802258E
_08022566:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0802258E
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	movs r0, #0xca
	lsls r0, r0, #1
	bl sub_08004488
	b _0802258E
_08022582:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	adds r7, r4, #0
	adds r7, #0x80
_0802258E:
	ldrb r0, [r5]
	strb r0, [r7]
	ldr r1, _0802259C @ =gUnk_080CBA28
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802259C: .4byte gUnk_080CBA28

	thumb_func_start sub_080225A0
sub_080225A0: @ 0x080225A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	bne _080225B2
	adds r0, r4, #0
	bl sub_08004274
_080225B2:
	adds r0, r4, #0
	bl sub_08001318
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080225BC
sub_080225BC: @ 0x080225BC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080225DE
	adds r0, r4, #0
	bl sub_0804A7D4
	b _080225E4
_080225DE:
	adds r0, r4, #0
	bl sub_08004274
_080225E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_9
nullsub_9: @ 0x080225E8
	bx lr
	.align 2, 0

	thumb_func_start sub_080225EC
sub_080225EC: @ 0x080225EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x5a
	strb r0, [r1]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0802261A
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0802264C
_0802261A:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	ldr r0, _08022650 @ =0x0000FF80
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
_0802264C:
	pop {r4, pc}
	.align 2, 0
_08022650: .4byte 0x0000FF80

	thumb_func_start sub_08022654
sub_08022654: @ 0x08022654
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _0802268C
	cmp r0, #1
	bgt _08022668
	cmp r0, #0
	beq _0802266E
	b _080226E4
_08022668:
	cmp r0, #2
	beq _080226BE
	b _080226E4
_0802266E:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080226E4
	movs r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _080226E8 @ =0x0000012D
	bl sub_080A3268
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0802268C:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080226E4
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	movs r0, #0x7d
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08016A04
_080226BE:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080226E4
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_080226E4:
	pop {r4, pc}
	.align 2, 0
_080226E8: .4byte 0x0000012D

	thumb_func_start sub_080226EC
sub_080226EC: @ 0x080226EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08022776
	adds r0, r4, #0
	bl sub_080228CC
	cmp r0, #0
	beq _0802271A
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0802277C
_0802271A:
	adds r0, r4, #0
	bl sub_080228F0
	cmp r0, #0
	beq _08022758
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r0, _08022754 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5a
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _0802277C
	.align 2, 0
_08022754: .4byte gUnk_020000B0
_08022758:
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08022770
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_08022770:
	adds r0, r4, #0
	bl sub_080AEF88
_08022776:
	adds r0, r4, #0
	bl sub_08004274
_0802277C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022780
sub_08022780: @ 0x08022780
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080227AA
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	movs r0, #0xca
	lsls r0, r0, #1
	bl sub_08004488
_080227AA:
	pop {r4, pc}

	thumb_func_start sub_080227AC
sub_080227AC: @ 0x080227AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080227CC
	ldr r0, _080227C8 @ =gUnk_080FD470
	b _080227CE
	.align 2, 0
_080227C8: .4byte gUnk_080FD470
_080227CC:
	ldr r0, _08022814 @ =gUnk_080FD468
_080227CE:
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080227EE
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
_080227EE:
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022812
	strb r3, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08022818 @ =gUnk_080CBA60
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08022812:
	pop {r4, pc}
	.align 2, 0
_08022814: .4byte gUnk_080FD468
_08022818: .4byte gUnk_080CBA60

	thumb_func_start sub_0802281C
sub_0802281C: @ 0x0802281C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022852
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0804AA1C
_08022852:
	pop {r4, pc}

	thumb_func_start sub_08022854
sub_08022854: @ 0x08022854
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022898
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08022898
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	movs r0, #0x7d
	bl sub_08004488
_08022898:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802289C
sub_0802289C: @ 0x0802289C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080228CA
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_080228CA:
	pop {r4, pc}

	thumb_func_start sub_080228CC
sub_080228CC: @ 0x080228CC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _080228E8
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0x28
	bl sub_08049F64
	cmp r0, #0
	beq _080228EC
	movs r0, #1
	b _080228EE
_080228E8:
	subs r0, #1
	strb r0, [r1, #0xf]
_080228EC:
	movs r0, #0
_080228EE:
	pop {pc}

	thumb_func_start sub_080228F0
sub_080228F0: @ 0x080228F0
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x81
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022910
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0x40
	bl sub_08049F64
	cmp r0, #0
	beq _08022914
	movs r0, #1
	b _08022916
_08022910:
	subs r0, #1
	strb r0, [r2]
_08022914:
	movs r0, #0
_08022916:
	pop {pc}

	thumb_func_start sub_08022918
sub_08022918: @ 0x08022918
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08022930 @ =gUnk_080CBB64
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08022930: .4byte gUnk_080CBB64

	thumb_func_start sub_08022934
sub_08022934: @ 0x08022934
	push {lr}
	ldr r2, _08022948 @ =gUnk_080CBB7C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022948: .4byte gUnk_080CBB7C

	thumb_func_start sub_0802294C
sub_0802294C: @ 0x0802294C
	push {lr}
	ldr r1, _08022958 @ =gUnk_080CBB64
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08022958: .4byte gUnk_080CBB64

	thumb_func_start nullsub_132
nullsub_132: @ 0x0802295C
	bx lr
	.align 2, 0

	thumb_func_start sub_08022960
sub_08022960: @ 0x08022960
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	bl sub_08022A88
	pop {r4, pc}

	thumb_func_start sub_08022970
sub_08022970: @ 0x08022970
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022986
	adds r0, r1, #0
	bl sub_08022AA4
_08022986:
	pop {pc}

	thumb_func_start sub_08022988
sub_08022988: @ 0x08022988
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080229A6
	adds r0, r4, #0
	bl sub_08022B20
	cmp r0, #0
	beq _080229A6
	adds r0, r4, #0
	bl sub_08022B0C
	b _080229F6
_080229A6:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080229C6
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080229F6
	movs r0, #1
	strb r0, [r4, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xd6
	bl sub_08004488
_080229C6:
	adds r0, r4, #0
	bl sub_080AEF88
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	adds r1, r0, #0
	cmp r1, #0
	bne _080229F6
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080229F0
	adds r0, r4, #0
	bl sub_08022A88
	b _080229F6
_080229F0:
	movs r0, #4
	strb r0, [r4, #0xf]
	strb r1, [r4, #0x1e]
_080229F6:
	pop {r4, pc}

	thumb_func_start sub_080229F8
sub_080229F8: @ 0x080229F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _08022A3C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08022A30
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	strb r1, [r4, #0x1e]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08022B44
	b _08022A3C
_08022A30:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xd6
	bl sub_08004488
_08022A3C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022A40
sub_08022A40: @ 0x08022A40
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08022A58
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022A86
	movs r0, #1
	strb r0, [r4, #0x1e]
_08022A58:
	adds r0, r4, #0
	bl sub_080AEF88
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08022A86
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022A80
	adds r0, r4, #0
	bl sub_08022A88
	b _08022A86
_08022A80:
	adds r0, r4, #0
	bl sub_08022B44
_08022A86:
	pop {r4, pc}

	thumb_func_start sub_08022A88
sub_08022A88: @ 0x08022A88
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0xe]
	strb r5, [r4, #0x1e]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08022AA4
sub_08022AA4: @ 0x08022AA4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r1, #3
	adds r0, r5, #0
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08022AE0
	lsrs r0, r5, #8
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08022AE0
	adds r0, r4, #0
	bl sub_08049EE4
	b _08022AE6
_08022AE0:
	lsrs r0, r5, #0x10
	movs r1, #0x1f
	ands r0, r1
_08022AE6:
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08022B08
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_08022B08:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08022B0C
sub_08022B0C: @ 0x08022B0C
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	movs r1, #8
	strb r1, [r0, #0xf]
	bl sub_08022B44
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022B20
sub_08022B20: @ 0x08022B20
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl sub_08049DF4
	cmp r0, #0
	beq _08022B40
	ldr r1, _08022B3C @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0x24
	movs r3, #0x24
	bl sub_080041A0
	b _08022B42
	.align 2, 0
_08022B3C: .4byte gLinkEntity
_08022B40:
	movs r0, #0
_08022B42:
	pop {r4, pc}

	thumb_func_start sub_08022B44
sub_08022B44: @ 0x08022B44
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	ldr r1, _08022B84 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	strb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08022B7A
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_08022B7A:
	movs r0, #0xd6
	bl sub_08004488
	pop {r4, pc}
	.align 2, 0
_08022B84: .4byte gLinkEntity

	thumb_func_start sub_08022B88
sub_08022B88: @ 0x08022B88
	push {lr}
	ldr r2, _08022B9C @ =gUnk_080CBB90
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022B9C: .4byte gUnk_080CBB90

	thumb_func_start sub_08022BA0
sub_08022BA0: @ 0x08022BA0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r1, _08022BD0 @ =gUnk_080CBBA0
	adds r0, r4, #0
	bl sub_0800129E
	adds r0, r4, #0
	bl sub_08022EAC
	pop {r4, pc}
	.align 2, 0
_08022BD0: .4byte gUnk_080CBBA0

	thumb_func_start sub_08022BD4
sub_08022BD4: @ 0x08022BD4
	push {lr}
	ldr r2, _08022BE8 @ =gUnk_080CBBB4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022BE8: .4byte gUnk_080CBBB4

	thumb_func_start sub_08022BEC
sub_08022BEC: @ 0x08022BEC
	push {lr}
	adds r2, r0, #0
	movs r0, #0x7a
	adds r0, r0, r2
	mov ip, r0
	adds r3, r2, #0
	adds r3, #0x45
	ldrb r0, [r0]
	ldrb r1, [r3]
	cmp r0, r1
	beq _08022C0A
	adds r1, r2, #0
	adds r1, #0x7b
	movs r0, #0x1e
	strb r0, [r1]
_08022C0A:
	ldrb r0, [r3]
	mov r1, ip
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xe]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r2, #0x14]
	strb r0, [r2, #0x1e]
	ldr r0, [r2, #0x54]
	adds r3, r2, #0
	adds r3, #0x3d
	ldrb r1, [r3]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r2, #0x7c]
	ldrb r1, [r3]
	adds r0, #0x3d
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldrb r1, [r3]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r1, _08022C54 @ =gUnk_080CBBA0
	adds r0, r2, #0
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08022C54: .4byte gUnk_080CBBA0

	thumb_func_start sub_08022C58
sub_08022C58: @ 0x08022C58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldrb r1, [r7, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7, #0x10]
	ldr r0, _08022D3C @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _08022D34
	movs r0, #0xd
	movs r1, #1
	bl sub_0804AA60
	mov sb, r0
	str r0, [r7, #0x54]
	mov r2, sb
	adds r2, #0x29
	ldrb r1, [r2]
	movs r4, #8
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #5
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	str r7, [r0, #0x50]
	adds r0, r7, #0
	mov r1, sb
	bl sub_0806FA24
	movs r0, #0xd
	movs r1, #2
	bl sub_0804AA60
	adds r6, r0, #0
	mov r1, sb
	str r6, [r1, #0x54]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
	str r7, [r6, #0x50]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806FA24
	movs r0, #0xd
	movs r1, #3
	bl sub_0804AA60
	adds r5, r0, #0
	str r5, [r6, #0x54]
	adds r1, r5, #0
	adds r1, #0x29
	ldrb r0, [r1]
	ands r4, r0
	mov r0, r8
	orrs r4, r0
	strb r4, [r1]
	str r7, [r5, #0x50]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0806FA24
	adds r0, r7, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xe]
	strb r0, [r7, #0xf]
	ldrb r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	str r7, [r7, #0x50]
	mov r1, sb
	str r1, [r7, #0x54]
	str r6, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r5, [r0]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r7, #0x15]
	ldrb r0, [r7, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r7, #0x14]
	strb r0, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x35
	strb r1, [r0]
_08022D34:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08022D3C: .4byte gUnk_03003DBC

	thumb_func_start sub_08022D40
sub_08022D40: @ 0x08022D40
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r1, [r2]
	cmp r1, #0
	beq _08022D66
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022D8E
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	b _08022D8A
_08022D66:
	adds r0, r4, #0
	bl sub_08022F14
	adds r0, r4, #0
	bl sub_080AEF88
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08022D8E
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
_08022D8A:
	strb r0, [r4, #0x14]
	strb r0, [r4, #0x1e]
_08022D8E:
	pop {r4, pc}

	thumb_func_start sub_08022D90
sub_08022D90: @ 0x08022D90
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08022DE0
	ldr r1, _08022DDC @ =gUnk_080CBBBC
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r4, [r5, #0x50]
	ldrb r2, [r4, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	adds r4, #0x38
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	b _08022DE6
	.align 2, 0
_08022DDC: .4byte gUnk_080CBBBC
_08022DE0:
	adds r0, r5, #0
	bl sub_0805E7BC
_08022DE6:
	pop {r4, r5, pc}

	thumb_func_start sub_08022DE8
sub_08022DE8: @ 0x08022DE8
	push {lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x7c
	movs r1, #0x88
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, [r3, #0x50]
	ldrb r0, [r0, #0x14]
	strb r0, [r3, #0x14]
	adds r2, r3, #0
	adds r2, #0x84
	ldrb r1, [r3, #0x14]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #0xa]
	cmp r0, #3
	beq _08022E38
	adds r0, #7
	b _08022E3C
_08022E38:
	ldrb r0, [r3, #0x14]
	adds r0, #0xa
_08022E3C:
	strb r0, [r3, #0x1e]
	pop {pc}

	thumb_func_start sub_08022E40
sub_08022E40: @ 0x08022E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2e]
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r2, [r4, #0x50]
	adds r2, #0x79
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #7
	ands r0, r3
	adds r0, #0x7c
	adds r0, r4, r0
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #8
	lsrs r1, r1, #4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r5, [r4, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	subs r1, #8
	ldrh r0, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r2]
	adds r0, #1
	ands r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	lsrs r1, r0
	movs r0, #7
	ands r1, r0
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _08022EA2
	adds r0, r1, #0
	adds r0, #0xa
	strb r0, [r4, #0x1e]
	b _08022EA8
_08022EA2:
	adds r0, r4, #0
	bl sub_08022EAC
_08022EA8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08022EAC
sub_08022EAC: @ 0x08022EAC
	push {r4, r5, lr}
	mov ip, r0
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _08022F12
	ldr r0, [r0, #0x50]
	adds r0, #0x79
	ldrb r0, [r0]
	movs r4, #7
	adds r3, r4, #0
	ands r3, r0
	adds r3, r3, r1
	adds r3, #0x7c
	mov r0, ip
	ldrh r1, [r0, #0x2e]
	adds r0, #0x74
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r1, #8
	movs r5, #0xf
	ands r1, r5
	mov r2, ip
	ldrh r0, [r2, #0x32]
	adds r2, #0x76
	ldrb r2, [r2]
	subs r0, r0, r2
	adds r0, #8
	ands r0, r5
	lsls r0, r0, #4
	adds r1, r1, r0
	strb r1, [r3]
	mov r1, ip
	ldr r0, [r1, #0x50]
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #2
	mov r2, ip
	ldrb r1, [r2, #0x14]
	ands r4, r1
	lsls r4, r0
	movs r2, #0xf
	lsls r2, r0
	mov r0, ip
	ldr r1, [r0, #0x54]
	adds r1, #0x84
	ldr r0, [r1]
	bics r0, r2
	orrs r4, r0
	str r4, [r1]
_08022F12:
	pop {r4, r5, pc}

	thumb_func_start sub_08022F14
sub_08022F14: @ 0x08022F14
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08022F4E
	adds r0, r4, #0
	bl sub_08049EE4
	ldrb r1, [r4, #0x15]
	subs r2, r0, r1
	movs r1, #0x1f
	ands r2, r1
	adds r0, r2, #4
	ands r0, r1
	cmp r0, #8
	bls _08022F4E
	movs r0, #8
	strb r0, [r4, #0xf]
	cmp r2, #0xf
	bhi _08022F46
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #1
	b _08022F4C
_08022F46:
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0xff
_08022F4C:
	strb r0, [r1]
_08022F4E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022F9E
	movs r0, #4
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #0
	bne _08022F84
	movs r0, #8
	strb r0, [r4, #0xf]
	bl sub_08000E50
	ldr r2, _08022FA0 @ =gUnk_080CBBC4
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5]
_08022F84:
	ldrb r0, [r5]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	strb r0, [r4, #0x1e]
_08022F9E:
	pop {r4, r5, pc}
	.align 2, 0
_08022FA0: .4byte gUnk_080CBBC4

	thumb_func_start sub_08022FA4
sub_08022FA4: @ 0x08022FA4
	push {lr}
	ldr r1, _08022FB0 @ =gUnk_080CBBC8
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08022FB0: .4byte gUnk_080CBBC8

	thumb_func_start sub_08022FB4
sub_08022FB4: @ 0x08022FB4
	push {lr}
	ldr r2, _08022FC8 @ =gUnk_080CBBDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022FC8: .4byte gUnk_080CBBDC

	thumb_func_start nullsub_133
nullsub_133: @ 0x08022FCC
	bx lr
	.align 2, 0

	thumb_func_start sub_08022FD0
sub_08022FD0: @ 0x08022FD0
	push {lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	movs r1, #0
	bl sub_08023000
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022FEC
sub_08022FEC: @ 0x08022FEC
	push {lr}
	movs r1, #0x80
	bl sub_08023000
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022FF8
sub_08022FF8: @ 0x08022FF8
	bx lr
	.align 2, 0

	thumb_func_start sub_08022FFC
sub_08022FFC: @ 0x08022FFC
	bx lr
	.align 2, 0

	thumb_func_start sub_08023000
sub_08023000: @ 0x08023000
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0x80
	bne _0802300E
	bl sub_080042B8
	b _08023014
_0802300E:
	adds r0, r4, #0
	bl sub_080042AC
_08023014:
	movs r2, #0x80
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _08023022
	rsbs r2, r2, #0
_08023022:
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0x80
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}

	thumb_func_start sub_08023038
sub_08023038: @ 0x08023038
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r5, [r4, #0x2e]
	ldrh r6, [r4, #0x32]
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	bne _0802306C
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08023052
	adds r0, r4, #0
	bl sub_0802390C
_08023052:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldr r1, _08023068 @ =gUnk_080CBC38
	adds r0, r4, #0
	bl sub_0800129E
	b _08023090
	.align 2, 0
_08023068: .4byte gUnk_080CBC38
_0802306C:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08023088
	cmp r1, #8
	beq _08023080
	adds r0, r4, #0
	bl sub_080235BC
	b _08023090
_08023080:
	adds r0, r4, #0
	bl sub_08023730
	b _08023090
_08023088:
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080230CA
_08023090:
	ldr r0, [r4, #0x50]
	adds r2, r0, #0
	adds r2, #0x7c
	adds r0, #0x7d
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080230CA
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080230CA
	ldrb r2, [r2]
	subs r2, #1
	movs r0, #0xf
	ands r2, r0
	adds r2, #0x78
	adds r2, r1, r2
	ldrh r1, [r4, #0x2e]
	subs r1, r1, r5
	adds r1, #8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #4
	ldrh r0, [r4, #0x32]
	subs r0, r0, r6
	adds r0, #8
	ands r0, r3
	orrs r1, r0
	strb r1, [r2]
_080230CA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080230CC
sub_080230CC: @ 0x080230CC
	push {lr}
	ldr r2, _080230E0 @ =gUnk_080CBC50
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080230E0: .4byte gUnk_080CBC50

	thumb_func_start sub_080230E4
sub_080230E4: @ 0x080230E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0xff
	bne _08023132
	movs r2, #0
	movs r0, #7
	strb r0, [r5, #0xc]
	movs r3, #1
	strb r3, [r5, #0xe]
	strb r2, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x85
	strb r0, [r1]
	subs r1, #2
	movs r0, #0xf8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7f
	strb r2, [r0]
	subs r0, #4
	strb r2, [r0]
	subs r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0x80
	beq _0802311E
	cmp r0, #0x9e
	bne _08023128
_0802311E:
	strb r2, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0x14
	b _08023130
_08023128:
	strb r3, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #8
_08023130:
	strb r0, [r1]
_08023132:
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802318A
	adds r0, r5, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802318A
	ldrb r0, [r5, #0xc]
	cmp r0, #7
	bne _0802318A
	ldr r4, _08023194 @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r4, #0x3d
	movs r0, #0xec
	strb r0, [r4]
	ldr r2, _08023198 @ =gUnk_03003F80
	movs r0, #0x41
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	ldr r1, _0802319C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r2, #0x30]
_0802318A:
	ldr r1, _080231A0 @ =gUnk_080CBC38
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08023194: .4byte gLinkEntity
_08023198: .4byte gUnk_03003F80
_0802319C: .4byte 0xFFF7FFFF
_080231A0: .4byte gUnk_080CBC38

	thumb_func_start sub_080231A4
sub_080231A4: @ 0x080231A4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x7c
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	bl sub_08001324

	thumb_func_start nullsub_134
nullsub_134: @ 0x080231B4
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_135
nullsub_135: @ 0x080231B8
	bx lr
	.align 2, 0

	thumb_func_start sub_080231BC
sub_080231BC: @ 0x080231BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08023280 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x3f
	bhi _0802327E
	movs r0, #0xf
	movs r1, #1
	bl sub_0804AA60
	adds r4, r0, #0
	str r4, [r6, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #2
	bl sub_0804AA60
	adds r5, r0, #0
	str r5, [r4, #0x54]
	str r6, [r5, #0x50]
	movs r0, #0xf
	movs r1, #3
	bl sub_0804AA60
	adds r4, r0, #0
	str r4, [r5, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #4
	bl sub_0804AA60
	adds r5, r0, #0
	str r5, [r4, #0x54]
	str r6, [r5, #0x50]
	movs r0, #0xf
	movs r1, #5
	bl sub_0804AA60
	adds r4, r0, #0
	str r4, [r5, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #6
	bl sub_0804AA60
	adds r5, r0, #0
	str r5, [r4, #0x54]
	str r6, [r5, #0x50]
	movs r0, #0xf
	movs r1, #7
	bl sub_0804AA60
	adds r4, r0, #0
	str r4, [r5, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #8
	bl sub_0804AA60
	str r0, [r4, #0x54]
	str r4, [r0, #0x74]
	str r6, [r0, #0x50]
	movs r1, #0
	str r1, [r0, #0x54]
	adds r0, r6, #0
	bl sub_0804A720
	movs r0, #6
	strb r0, [r6, #0xc]
	movs r1, #0x1e
	strb r1, [r6, #0xe]
	str r6, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrb r1, [r6, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r6, #0x1a]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r6, #0x15]
	ldrb r0, [r6, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r6, #0x14]
	ldrb r1, [r6, #0x14]
	adds r0, r6, #0
	bl sub_08004260
_0802327E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023280: .4byte gUnk_03003DBC

	thumb_func_start nullsub_136
nullsub_136: @ 0x08023284
	bx lr
	.align 2, 0

	thumb_func_start sub_08023288
sub_08023288: @ 0x08023288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08023324
	ldrb r1, [r7, #0xe]
	adds r0, r1, #1
	strb r0, [r7, #0xe]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08023324
	bl sub_08000E50
	adds r4, r0, #0
	movs r0, #0x1e
	ands r4, r0
	movs r0, #0
	mov r8, r0
	ldr r2, _08023308 @ =gLinkEntity
	mov sb, r2
	ldr r0, _0802330C @ =gUnk_080CBC70
	mov sl, r0
_080232C2:
	mov r2, sb
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	mov r2, sl
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	mov r0, sb
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	adds r0, r4, #1
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, _08023310 @ =gUnk_03001198
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080002A4
	bl sub_08023A38
	cmp r0, #0
	beq _08023314
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08023990
	b _08023324
	.align 2, 0
_08023308: .4byte gLinkEntity
_0802330C: .4byte gUnk_080CBC70
_08023310: .4byte gUnk_03001198
_08023314:
	adds r4, #2
	movs r0, #0x1e
	ands r4, r0
	movs r2, #1
	add r8, r2
	mov r0, r8
	cmp r0, #0xf
	bls _080232C2
_08023324:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08023330
sub_08023330: @ 0x08023330
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023394
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x19
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x78
	movs r4, #0
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_08000E50
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r5, #0x15]
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r4, [r0]
	adds r0, #4
	strb r4, [r0]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08023A88
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	bl sub_0806FA24
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
_08023394:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08023398
sub_08023398: @ 0x08023398
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, #3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080233C0
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _080233C0
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #1
	strh r0, [r1]
_080233C0:
	adds r4, r5, #0
	adds r4, #0x78
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08023416
	adds r0, r5, #0
	bl sub_080002A0
	bl sub_08023A38
	cmp r0, #0
	beq _08023412
	movs r0, #5
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x7f
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x85
	strb r0, [r1]
	ldr r1, [r5, #0x54]
	movs r0, #1
	strb r0, [r1, #0xe]
	adds r0, r5, #0
	bl sub_08023A68
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	b _0802349C
_08023412:
	movs r0, #0x28
	strh r0, [r4]
_08023416:
	adds r0, r5, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023426
	adds r0, r5, #0
	bl sub_08023AB0
_08023426:
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08023440
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802349C
	movs r0, #0x19
	strb r0, [r5, #0xe]
	b _0802349C
_08023440:
	ldr r4, [r5, #0x2c]
	ldr r6, [r5, #0x30]
	adds r0, r5, #0
	bl sub_080AEF88
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	bne _08023460
	ldr r0, [r5, #0x30]
	cmp r0, r6
	bne _08023460
	adds r1, r5, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08023460:
	ldr r0, _080234A0 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0802349C
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08004596
	ldrb r0, [r5, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	ldrb r1, [r5, #0x14]
	cmp r0, r1
	beq _0802349C
	strb r0, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	adds r1, r0, r1
	adds r0, r5, #0
	bl sub_08004260
_0802349C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080234A0: .4byte gUnk_030010A0

	thumb_func_start sub_080234A4
sub_080234A4: @ 0x080234A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	beq _080234D6
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0xa
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
_080234D6:
	pop {r4, pc}

	thumb_func_start sub_080234D8
sub_080234D8: @ 0x080234D8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802351A
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x1a]
	subs r0, #0x12
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r4, #0x1a]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08023A88
_0802351A:
	pop {r4, pc}

	thumb_func_start sub_0802351C
sub_0802351C: @ 0x0802351C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _0802355A
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	beq _08023534
	ldr r0, _080235A8 @ =gLinkEntity
	ldrb r0, [r0, #0x1e]
	cmp r0, #0xff
	bne _0802355A
_08023534:
	movs r0, #0
	strb r0, [r7, #0xe]
	ldr r1, [r7, #0x54]
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r7, #0x54]
	adds r0, r7, #0
	adds r0, #0x80
	ldrb r0, [r0]
	strb r0, [r1, #0xf]
	ldr r0, [r7, #0x54]
	ldrb r1, [r0, #0x14]
	adds r1, #1
	bl sub_08004260
	ldrb r1, [r7, #0x14]
	adds r0, r7, #0
	bl sub_08004260
_0802355A:
	adds r0, r7, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080235B4
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _080235B8
	ldr r5, _080235A8 @ =gLinkEntity
	ldrb r0, [r7, #0x14]
	movs r4, #7
	adds r2, r4, #0
	ands r2, r0
	strb r2, [r5, #0x14]
	ldr r3, _080235AC @ =gUnk_03003F80
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r3, #0x30]
	ldr r6, _080235B0 @ =gUnk_080CBC90
	adds r2, r2, r6
	movs r3, #0
	ldrsb r3, [r2, r3]
	lsls r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_0806FA48
	ldrb r0, [r7, #0x14]
	ands r4, r0
	adds r4, r4, r6
	ldrb r0, [r4]
	rsbs r0, r0, #0
	adds r5, #0x63
	strb r0, [r5]
	b _080235B8
	.align 2, 0
_080235A8: .4byte gLinkEntity
_080235AC: .4byte gUnk_03003F80
_080235B0: .4byte gUnk_080CBC90
_080235B4:
	movs r0, #4
	strb r0, [r7, #0xc]
_080235B8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080235BC
sub_080235BC: @ 0x080235BC
	push {lr}
	ldr r2, _080235D0 @ =gUnk_080CBC98
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080235D0: .4byte gUnk_080CBC98

	thumb_func_start sub_080235D4
sub_080235D4: @ 0x080235D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080239F0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080235F6
	movs r0, #0x10
	b _080235F8
_080235F6:
	movs r0, #0x12
_080235F8:
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08023604
sub_08023604: @ 0x08023604
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0x88
	beq _08023640
	movs r1, #0
	movs r0, #2
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xe]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	bl sub_08023644
_08023640:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08023644
sub_08023644: @ 0x08023644
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _08023692
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08023692
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _08023692
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _08023692
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	strb r2, [r0, #0xe]
	adds r0, r4, #0
	bl sub_080239F0
_08023692:
	adds r0, r5, #0
	adds r0, #0x7c
	adds r1, r5, #0
	adds r1, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080236F2
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	adds r1, #0x78
	adds r1, r4, r1
	ldrb r0, [r1]
	lsrs r0, r0, #4
	ldr r3, _080236F4 @ =0x0000FFF8
	adds r0, r0, r3
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	ldrb r0, [r1]
	ands r2, r0
	adds r2, r2, r3
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_080236F2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080236F4: .4byte 0x0000FFF8

	thumb_func_start sub_080236F8
sub_080236F8: @ 0x080236F8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802372E
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x54]
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r4, #0x54]
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	strb r0, [r1, #0xf]
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x14]
	adds r1, #1
	bl sub_08004260
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_0802372E:
	pop {r4, pc}

	thumb_func_start sub_08023730
sub_08023730: @ 0x08023730
	push {lr}
	ldr r2, _08023744 @ =gUnk_080CBCA8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08023744: .4byte gUnk_080CBCA8

	thumb_func_start sub_08023748
sub_08023748: @ 0x08023748
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0x14]
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080239F0
	adds r0, r4, #0
	bl sub_08023A68
	pop {r4, pc}

	thumb_func_start sub_0802376C
sub_0802376C: @ 0x0802376C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0802379A
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _0802379A
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08004274
_0802379A:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r4
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0x88
	beq _080237D4
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x50]
	adds r0, #0x7f
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_08023A88
	adds r0, r4, #0
	bl sub_080237D8
_080237D4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080237D8
sub_080237D8: @ 0x080237D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _0802382E
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802382E
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0802382E
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0802382E
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x7f
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080239F0
	adds r0, r4, #0
	bl sub_08023A68
_0802382E:
	adds r0, r5, #0
	adds r0, #0x7c
	adds r1, r5, #0
	adds r1, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0802388E
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	adds r1, #0x78
	adds r1, r4, r1
	ldrb r0, [r1]
	lsrs r0, r0, #4
	ldr r3, _08023890 @ =0x0000FFF8
	adds r0, r0, r3
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	ldrb r0, [r1]
	ands r2, r0
	adds r2, r2, r3
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0802388E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023890: .4byte 0x0000FFF8

	thumb_func_start sub_08023894
sub_08023894: @ 0x08023894
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023900
	movs r0, #2
	strb r0, [r5, #0xc]
	ldr r0, [r5, #0x50]
	adds r0, #0x7f
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08004260
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08023900
	ldr r2, _08023904 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r4, _08023908 @ =gLinkEntity
	ldrh r0, [r5, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	ldr r0, [r5, #0x74]
	adds r1, r5, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xc
	strb r0, [r1]
	subs r0, #0x1c
	bl sub_080526A0
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
_08023900:
	pop {r4, r5, pc}
	.align 2, 0
_08023904: .4byte gUnk_03003F80
_08023908: .4byte gLinkEntity

	thumb_func_start sub_0802390C
sub_0802390C: @ 0x0802390C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023932
	ldr r2, [r5, #0x54]
	adds r3, r5, #0
	adds r3, #0x3d
_08023922:
	ldrb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3d
	strb r0, [r1]
	ldr r2, [r2, #0x54]
	cmp r2, #0
	bne _08023922
	b _0802398C
_08023932:
	ldr r2, [r5, #0x54]
	b _0802393C
_08023936:
	ldr r2, [r2, #0x54]
	cmp r2, #0
	beq _0802398C
_0802393C:
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023936
	movs r0, #0x45
	adds r0, r0, r2
	mov ip, r0
	ldrb r1, [r0]
	movs r4, #0xff
	subs r0, r4, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08023936
	adds r0, r1, #0
	orrs r0, r4
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x45
	ldrb r0, [r1]
	cmp r0, r3
	blo _0802397A
	subs r0, r0, r3
	b _0802397C
_0802397A:
	movs r0, #0
_0802397C:
	strb r0, [r1]
	adds r2, r5, #0
_08023980:
	adds r0, r2, #0
	adds r0, #0x3d
	strb r4, [r0]
	ldr r2, [r2, #0x54]
	cmp r2, #0
	bne _08023980
_0802398C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08023990
sub_08023990: @ 0x08023990
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	ldrb r3, [r5, #0x18]
	subs r0, #7
	ands r0, r3
	movs r3, #1
	orrs r0, r3
	strb r0, [r5, #0x18]
	movs r0, #0x55
	strb r0, [r5, #0x1a]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r0, [r4]
	movs r3, #7
	orrs r0, r3
	strb r0, [r4]
	strh r1, [r5, #0x2e]
	strh r2, [r5, #0x32]
	ldr r0, _080239EC @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_08016A04
	adds r0, r5, #0
	movs r1, #0x16
	bl sub_08004260
	ldr r4, [r5, #0x54]
_080239D4:
	adds r0, r4, #0
	bl sub_080239F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r4, [r4, #0x54]
	cmp r4, #0
	bne _080239D4
	pop {r4, r5, pc}
	.align 2, 0
_080239EC: .4byte gLinkEntity

	thumb_func_start sub_080239F0
sub_080239F0: @ 0x080239F0
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x78
	movs r0, #0x88
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	bx lr

	thumb_func_start sub_08023A38
sub_08023A38: @ 0x08023A38
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x1a
	beq _08023A5A
	cmp r1, #0x29
	beq _08023A5A
	ldr r0, _08023A60 @ =gUnk_080B37A0
	adds r0, r1, r0
	ldrb r1, [r0]
	cmp r1, #9
	beq _08023A5A
	cmp r1, #0xb
	beq _08023A5A
	cmp r1, #0xa
	beq _08023A5A
	cmp r1, #0xc
	bne _08023A64
_08023A5A:
	movs r0, #1
	b _08023A66
	.align 2, 0
_08023A60: .4byte gUnk_080B37A0
_08023A64:
	movs r0, #0
_08023A66:
	pop {pc}

	thumb_func_start sub_08023A68
sub_08023A68: @ 0x08023A68
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
	bl sub_0801D2B4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x17
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08023A88
sub_08023A88: @ 0x08023A88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x22
	bl sub_0801D2B4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004260
	pop {r4, r5, pc}

	thumb_func_start sub_08023AB0
sub_08023AB0: @ 0x08023AB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x7b
	ldrb r0, [r7]
	cmp r0, #8
	bne _08023AF6
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r0, [r5]
	adds r6, r0, #0
	cmp r6, #0
	bne _08023B00
	adds r0, r4, #0
	bl sub_08023B38
	cmp r0, #0
	beq _08023ADE
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0x1d
	bhi _08023B34
_08023ADE:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x85
	strb r0, [r1]
	strb r6, [r7]
	movs r0, #0x1e
	strb r0, [r5]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _08023B34
_08023AF6:
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r0, [r5]
	cmp r0, #0
	beq _08023B06
_08023B00:
	subs r0, #1
	strb r0, [r5]
	b _08023B34
_08023B06:
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0x59
	bls _08023B34
	adds r0, r4, #0
	bl sub_08023B38
	cmp r0, #0
	beq _08023B34
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x87
	strb r0, [r1]
	movs r0, #8
	strb r0, [r7]
	movs r0, #0xa
	strb r0, [r5]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_08023B34:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08023B38
sub_08023B38: @ 0x08023B38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r5, r0, #0
	cmp r5, #0
	bne _08023B4C
	movs r0, #0
	b _08023B8E
_08023B4C:
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	ldr r3, _08023B90 @ =gUnk_080CBCB8
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r2, r1
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r3, #0
	movs r4, #0x2e
	ldrsh r0, [r5, r4]
	subs r0, r0, r2
	adds r0, #0x14
	cmp r0, #0x28
	bhi _08023B8C
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	subs r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x28
	bhi _08023B8C
	movs r3, #1
_08023B8C:
	adds r0, r3, #0
_08023B8E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023B90: .4byte gUnk_080CBCB8

	thumb_func_start sub_08023B94
sub_08023B94: @ 0x08023B94
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08023BAC
	ldr r1, _08023BA8 @ =gUnk_080CBDBC
	adds r0, r5, #0
	bl sub_0800129E
	b _08023BEC
	.align 2, 0
_08023BA8: .4byte gUnk_080CBDBC
_08023BAC:
	cmp r0, #0
	bne _08023C00
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08023BD8
	adds r0, r5, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08023BD8
	ldr r0, _08023BD4 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08023C06
	.align 2, 0
_08023BD4: .4byte gUnk_080012C8
_08023BD8:
	ldr r4, _08023BFC @ =gUnk_080CBDD4
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_08023BEC:
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _08023C06
	.align 2, 0
_08023BFC: .4byte gUnk_080CBDD4
_08023C00:
	adds r0, r5, #0
	bl sub_08023E10
_08023C06:
	pop {r4, r5, pc}

	thumb_func_start sub_08023C08
sub_08023C08: @ 0x08023C08
	push {lr}
	ldr r2, _08023C1C @ =gUnk_080CBDEC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08023C1C: .4byte gUnk_080CBDEC

	thumb_func_start sub_08023C20
sub_08023C20: @ 0x08023C20
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023C34
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08023C34:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08023C48
	ldr r1, _08023C44 @ =gUnk_080CBDBC
	adds r0, r4, #0
	bl sub_0804AA30
	b _08023C50
	.align 2, 0
_08023C44: .4byte gUnk_080CBDBC
_08023C48:
	ldr r1, _08023C54 @ =gUnk_080CBDD4
	adds r0, r4, #0
	bl sub_0804AA30
_08023C50:
	pop {r4, pc}
	.align 2, 0
_08023C54: .4byte gUnk_080CBDD4

	thumb_func_start nullsub_137
nullsub_137: @ 0x08023C58
	bx lr
	.align 2, 0

	thumb_func_start sub_08023C5C
sub_08023C5C: @ 0x08023C5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x30
	ands r0, r1
	adds r0, #0xb4
	strb r0, [r4, #0xe]
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08023C8C
sub_08023C8C: @ 0x08023C8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08023E54
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023CDC
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	beq _08023CBC
	movs r0, #8
	strb r0, [r4, #0xe]
	b _08023CDC
_08023CBC:
	bl sub_08000E50
	movs r1, #0x30
	ands r0, r1
	adds r0, #0xb4
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08023E9C
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_08023CDC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08023CE0
sub_08023CE0: @ 0x08023CE0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08023D48
	cmp r0, #1
	bgt _08023CF4
	cmp r0, #0
	beq _08023CFA
	b _08023DC0
_08023CF4:
	cmp r0, #2
	beq _08023D6E
	b _08023DC0
_08023CFA:
	adds r0, r4, #0
	bl sub_0804A720
	ldrb r1, [r4, #0xb]
	cmp r1, #1
	bne _08023D1C
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08023D12
	strb r1, [r4, #0xe]
_08023D12:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08023D20
_08023D1C:
	movs r0, #1
	strb r0, [r4, #0xc]
_08023D20:
	ldr r0, _08023D44 @ =0x0000FF80
	strh r0, [r4, #0x36]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _08023E0A
	.align 2, 0
_08023D44: .4byte 0x0000FF80
_08023D48:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x20
	bl sub_08049F64
	cmp r0, #0
	beq _08023E0A
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08023D64
	movs r0, #8
	strb r0, [r4, #0xe]
_08023D64:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08023E0A
_08023D6E:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08023D94
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023E0A
	ldr r0, _08023D90 @ =0x0000012D
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _08023E0A
	.align 2, 0
_08023D90: .4byte 0x0000012D
_08023D94:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08023E0A
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x84
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08016A04
	b _08023E0A
_08023DC0:
	adds r0, r4, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	cmp r1, #0
	beq _08023E0A
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023DF2
	movs r0, #0x10
	movs r1, #1
	bl sub_0804AA60
	adds r1, r0, #0
	cmp r1, #0
	beq _08023E0A
	adds r0, r4, #0
	bl sub_0804A4E4
	bl sub_0805E780
	b _08023E0A
_08023DF2:
	ldr r1, _08023E0C @ =gUnk_080CBDF4
	ldrb r0, [r2]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r4, #0x32]
	strb r1, [r2]
_08023E0A:
	pop {r4, pc}
	.align 2, 0
_08023E0C: .4byte gUnk_080CBDF4

	thumb_func_start sub_08023E10
sub_08023E10: @ 0x08023E10
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08023E36
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
_08023E36:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023E50
	adds r0, r4, #0
	bl sub_0805E7BC
_08023E50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08023E54
sub_08023E54: @ 0x08023E54
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bls _08023E94
	movs r0, #0
	strb r0, [r4, #0xf]
	movs r0, #0x10
	movs r1, #2
	bl sub_0804AA60
	adds r5, r0, #0
	cmp r5, #0
	beq _08023E94
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	ldr r1, _08023E98 @ =gUnk_080CBDF7
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA48
_08023E94:
	pop {r4, r5, pc}
	.align 2, 0
_08023E98: .4byte gUnk_080CBDF7

	thumb_func_start sub_08023E9C
sub_08023E9C: @ 0x08023E9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08000E50
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08023EC2
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08023EC2
	adds r0, r5, #0
	bl sub_08049EE4
	adds r0, #4
	b _08023F1C
_08023EC2:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08023F0A
	movs r0, #6
	ands r0, r6
	cmp r0, #0
	beq _08023F0A
	ldr r0, _08023F00 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	ldrb r2, [r5, #0x15]
	subs r1, r0, r2
	cmp r1, #0
	beq _08023F22
	adds r0, r1, #4
	movs r3, #0x1f
	ands r0, r3
	cmp r0, #8
	bls _08023F22
	ands r1, r3
	cmp r1, #0xf
	bhi _08023F04
	adds r0, r2, #0
	adds r0, #8
	b _08023F1C
	.align 2, 0
_08023F00: .4byte gUnk_020000B0
_08023F04:
	adds r0, r2, #0
	subs r0, #8
	b _08023F1C
_08023F0A:
	ldr r4, _08023F24 @ =gUnk_080CBDFF
	lsrs r0, r6, #4
	movs r1, #3
	bl __modsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	ldrb r1, [r5, #0x15]
	adds r0, r0, r1
_08023F1C:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_08023F22:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023F24: .4byte gUnk_080CBDFF

	thumb_func_start sub_08023F28
sub_08023F28: @ 0x08023F28
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08023F40 @ =gUnk_080CBEC4
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08023F40: .4byte gUnk_080CBEC4

	thumb_func_start sub_08023F44
sub_08023F44: @ 0x08023F44
	push {lr}
	ldr r2, _08023F58 @ =gUnk_080CBEDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08023F58: .4byte gUnk_080CBEDC

	thumb_func_start sub_08023F5C
sub_08023F5C: @ 0x08023F5C
	push {r4, lr}
	mov ip, r0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x6e
	beq _08023FC8
	mov r0, ip
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08023FD0
	mov r1, ip
	adds r1, #0x86
	movs r0, #0x30
	strb r0, [r1]
	mov r2, ip
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #3
	bne _08023FD0
	mov r1, ip
	ldrb r0, [r1, #0xc]
	cmp r0, #6
	bne _08023FD0
	subs r2, #3
	ldrb r0, [r2]
	cmp r0, #1
	beq _08023FA0
	cmp r0, #2
	beq _08023FB8
	b _08023FD0
_08023FA0:
	movs r0, #0
	ldr r1, _08023FC4 @ =0x0000FFF0
	mov r3, ip
	strh r1, [r3, #0x36]
	adds r3, #0x82
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x78
	strh r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08023FB8:
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	b _08023FD0
	.align 2, 0
_08023FC4: .4byte 0x0000FFF0
_08023FC8:
	mov r1, ip
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_08023FD0:
	ldr r1, _08023FDC @ =gUnk_080CBEC4
	mov r0, ip
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08023FDC: .4byte gUnk_080CBEC4

	thumb_func_start sub_08023FE0
sub_08023FE0: @ 0x08023FE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001324

	thumb_func_start sub_08023FE8
sub_08023FE8: @ 0x08023FE8
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08023FF0
sub_08023FF0: @ 0x08023FF0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _08024022
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _08024022
	movs r2, #1
	strb r2, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x77
	strb r0, [r1]
	strb r2, [r4, #0xe]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	b _08024032
_08024022:
	ldr r0, _08024034 @ =gUnk_080CBEF8
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08024032:
	pop {r4, pc}
	.align 2, 0
_08024034: .4byte gUnk_080CBEF8

	thumb_func_start sub_08024038
sub_08024038: @ 0x08024038
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_08024048
sub_08024048: @ 0x08024048
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F4E8
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08024058
sub_08024058: @ 0x08024058
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_08024060
sub_08024060: @ 0x08024060
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, #0x6e
	beq _0802408C
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	movs r0, #0x6e
	strb r0, [r2]
	ldr r0, _08024094 @ =gLinkEntity
	ldrb r1, [r0, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x19]
_0802408C:
	adds r0, r3, #0
	bl sub_08004274
	pop {pc}
	.align 2, 0
_08024094: .4byte gLinkEntity

	thumb_func_start nullsub_138
nullsub_138: @ 0x08024098
	bx lr
	.align 2, 0

	thumb_func_start sub_0802409C
sub_0802409C: @ 0x0802409C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080A29BC
	pop {r4, pc}

	thumb_func_start sub_080240B8
sub_080240B8: @ 0x080240B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_08000E50
	movs r1, #0xc0
	ands r1, r0
	lsrs r7, r1, #3
	adds r0, r4, #0
	bl sub_0804A720
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #8
	ands r0, r7
	cmp r0, #0
	beq _080240FC
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq _080240F4
	adds r0, r1, #0
	subs r0, #0x20
	b _080240F8
_080240F4:
	adds r0, r1, #0
	adds r0, #0x20
_080240F8:
	strh r0, [r4, #0x32]
	b _08024114
_080240FC:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq _0802410E
	adds r0, r1, #0
	subs r0, #0x20
	b _08024112
_0802410E:
	adds r0, r1, #0
	adds r0, #0x20
_08024112:
	strh r0, [r4, #0x2e]
_08024114:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08024120
	cmp r0, #1
	beq _0802412C
	b _08024136
_08024120:
	adds r1, r4, #0
	adds r1, #0x78
	ldr r0, _08024128 @ =0x0000FFF0
	b _08024132
	.align 2, 0
_08024128: .4byte 0x0000FFF0
_0802412C:
	adds r1, r4, #0
	adds r1, #0x78
	ldr r0, _080241BC @ =0x0000FFD0
_08024132:
	strh r0, [r1]
	strh r0, [r4, #0x36]
_08024136:
	adds r0, r4, #0
	bl sub_08016A04
	bl sub_08052660
	cmp r0, #0
	beq _08024150
	ldrb r0, [r4, #0x1b]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x1b]
_08024150:
	bl sub_08000E50
	movs r1, #0x40
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x81
	movs r6, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	strb r6, [r0]
	adds r5, r4, #0
	adds r5, #0x83
	movs r0, #0x80
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x86
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	strb r6, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080249DC
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080241B8
	strb r6, [r5]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _080241B8
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	ldrh r0, [r1, #0x32]
	adds r0, #0x10
	strh r0, [r1, #0x32]
_080241B8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080241BC: .4byte 0x0000FFD0

	thumb_func_start sub_080241C0
sub_080241C0: @ 0x080241C0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08024940
	adds r6, r4, #0
	adds r6, #0x80
	ldrb r5, [r6]
	cmp r5, #0
	beq _080241D8
	cmp r5, #1
	beq _08024238
	b _08024296
_080241D8:
	ldr r0, _08024218 @ =gUnk_03003F80
	ldrb r0, [r0, #0xf]
	movs r2, #0x40
	cmp r0, #0
	beq _080241E4
	movs r2, #0xa0
_080241E4:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08049F64
	cmp r0, #0
	beq _08024220
	adds r0, r4, #0
	movs r1, #3
	bl sub_08049FDC
	cmp r0, #0
	beq _08024220
	ldr r0, _0802421C @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x1e
	beq _08024220
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	strh r5, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08024A14
	b _08024296
	.align 2, 0
_08024218: .4byte gUnk_03003F80
_0802421C: .4byte gLinkEntity
_08024220:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024296
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08024A14
	b _08024296
_08024238:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024296
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08024290
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802426C
	adds r0, r4, #0
	bl sub_08024C94
	ldrb r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5]
	b _08024296
_0802426C:
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r6]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08024E00
	adds r0, r4, #0
	bl sub_08024E1C
	ldrb r2, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08024A14
	b _08024296
_08024290:
	adds r0, r4, #0
	bl sub_08024C94
_08024296:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08024298
sub_08024298: @ 0x08024298
	push {lr}
	bl sub_08024D00
	pop {pc}

	thumb_func_start sub_080242A0
sub_080242A0: @ 0x080242A0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08024940
	adds r0, r4, #0
	bl sub_08024CC0
	cmp r0, #0
	beq _08024334
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080242F0
	ldr r0, _080242E4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024E00
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080242E8
	strh r5, [r4, #0x24]
	b _08024306
	.align 2, 0
_080242E4: .4byte gUnk_020000B0
_080242E8:
	adds r0, r4, #0
	bl sub_08024E1C
	b _08024306
_080242F0:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08024306
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08024A14
_08024306:
	ldr r0, _08024338 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08049F1C
	cmp r0, #0
	beq _08024334
	adds r0, r4, #0
	movs r1, #3
	bl sub_08049FDC
	cmp r0, #0
	beq _08024334
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x24]
_08024334:
	pop {r4, r5, pc}
	.align 2, 0
_08024338: .4byte gUnk_020000B0

	thumb_func_start sub_0802433C
sub_0802433C: @ 0x0802433C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08024940
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	cmp r0, #0
	beq _08024354
	cmp r0, #1
	beq _0802437A
	b _080243B6
_08024354:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080243B6
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024E00
	b _080243B6
_0802437A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080243A0
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	b _080243B6
_080243A0:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r3
	cmp r0, #0
	bne _080243B6
	adds r0, r4, #0
	movs r1, #2
	movs r2, #4
	bl sub_08024A14
_080243B6:
	pop {r4, pc}

	thumb_func_start sub_080243B8
sub_080243B8: @ 0x080243B8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08024940
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #1
	beq _0802446A
	cmp r0, #1
	bgt _080243D4
	cmp r0, #0
	beq _080243DA
	b _080244E4
_080243D4:
	cmp r0, #2
	beq _08024486
	b _080244E4
_080243DA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	beq _08024462
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _080243F2
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08024406
_080243F2:
	movs r0, #2
	strb r0, [r5]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	movs r1, #0x80
	strh r1, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	b _080244E4
_08024406:
	ldr r0, _08024434 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08049F1C
	cmp r0, #0
	beq _08024438
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, #0xe2
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x80
	strb r0, [r1]
	ldr r1, [r4, #0x54]
	movs r0, #2
	strb r0, [r1, #0xc]
	b _080244E4
	.align 2, 0
_08024434: .4byte gUnk_020000B0
_08024438:
	ldrb r0, [r4, #0xe]
	subs r2, r0, #1
	strb r2, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _08024462
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _080244E4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1e
	adds r2, #1
	adds r0, r4, #0
	movs r1, #2
	bl sub_08024A14
	b _080244E4
_08024462:
	adds r0, r4, #0
	bl sub_08024C7C
	b _080244E4
_0802446A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080244E4
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	b _080244E4
_08024486:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080244E4
	movs r0, #6
	strb r0, [r4, #0xc]
	strb r1, [r5]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08024B38
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080244D8
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #1
	beq _080244C4
	cmp r0, #3
	bne _080244C8
	movs r0, #4
	b _080244CA
_080244C4:
	movs r0, #0x14
	b _080244CA
_080244C8:
	movs r0, #0x30
_080244CA:
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #8
	bl sub_08024A14
	b _080244E4
_080244D8:
	strb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl sub_08024A14
_080244E4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080244E8
sub_080244E8: @ 0x080244E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	bl sub_08024940
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #7
	bls _08024502
	b _08024924
_08024502:
	lsls r0, r0, #2
	ldr r1, _0802450C @ =_08024510
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802450C: .4byte _08024510
_08024510: @ jump table
	.4byte _08024530 @ case 0
	.4byte _080245A6 @ case 1
	.4byte _080245E4 @ case 2
	.4byte _080247F4 @ case 3
	.4byte _08024818 @ case 4
	.4byte _08024836 @ case 5
	.4byte _080248AE @ case 6
	.4byte _0802490A @ case 7
_08024530:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024592
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _08024584 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #1
	bl sub_080002E0
	adds r2, r0, #0
	cmp r2, #0
	bne _08024588
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r2, [r5, #0xf]
	strh r2, [r5, #0x24]
	b _08024924
	.align 2, 0
_08024584: .4byte gUnk_03000BF0
_08024588:
	movs r0, #0x30
	strb r0, [r5, #0xe]
	movs r0, #4
	strb r0, [r5, #0xf]
	b _08024924
_08024592:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	ands r0, r1
	cmp r0, #0
	beq _080245A0
	b _08024924
_080245A0:
	adds r0, r5, #0
	movs r1, #1
	b _08024902
_080245A6:
	ldrh r0, [r5, #0x36]
	adds r0, #1
	strh r0, [r5, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x10
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080245BA
	b _08024924
_080245BA:
	adds r1, r5, #0
	adds r1, #0x82
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	strh r2, [r0]
	adds r0, r5, #0
	bl sub_08024AD8
	cmp r0, #0
	beq _080245D4
	b _0802482A
_080245D4:
	adds r0, r5, #0
	bl sub_08024C94
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	movs r1, #0x40
	b _080247EE
_080245E4:
	adds r0, r5, #0
	bl sub_08024AD8
	cmp r0, #0
	bne _080245F0
	b _080247E0
_080245F0:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802462C
	movs r7, #0x24
	ldrsh r0, [r5, r7]
	cmp r0, #0
	beq _0802460C
	strh r1, [r5, #0x24]
	b _08024612
_0802460C:
	adds r0, r5, #0
	bl sub_08024E1C
_08024612:
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08024E00
	adds r0, r5, #0
	bl sub_080249DC
	b _08024642
_0802462C:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _08024642
	adds r0, r5, #0
	movs r1, #1
	movs r2, #8
	bl sub_08024A14
_08024642:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r1, [r6]
	movs r0, #0x3f
	mov sb, r0
	ands r0, r1
	cmp r0, #2
	beq _0802474C
	cmp r0, #2
	bgt _0802465C
	cmp r0, #1
	beq _080246E4
	b _08024924
_0802465C:
	cmp r0, #3
	beq _08024662
	b _08024924
_08024662:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08024670
	b _08024924
_08024670:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r5, #0xe]
	movs r0, #0x10
	strb r0, [r5, #0x15]
	movs r4, #0
	strh r2, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x84
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080249DC
	ldr r2, _080246DC @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r1, r5, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, _080246E0 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0xa]
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, #0
	bne _080246D6
	b _08024924
_080246D6:
	strb r4, [r2]
	b _08024924
	.align 2, 0
_080246DC: .4byte gLinkEntity
_080246E0: .4byte gUnk_03003F80
_080246E4:
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	movs r2, #6
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	bne _080246F6
	b _08024924
_080246F6:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r5, #0xe]
	ldrb r1, [r6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6]
	ldr r0, [r5, #0x54]
	adds r1, r5, #0
	bl sub_0806FA24
	ldrh r0, [r5, #0x36]
	subs r0, #0xe
	strh r0, [r5, #0x36]
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	ldrb r2, [r6]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0804A98C
	adds r4, r0, #0
	cmp r4, #0
	bne _08024736
	b _08024924
_08024736:
	str r5, [r4, #0x50]
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	ldr r1, [r5, #0x54]
	str r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FA24
	str r4, [r5, #0x54]
	b _08024924
_0802474C:
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	movs r2, #6
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	bne _0802475E
	b _08024924
_0802475E:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r5, #0xe]
	ldrb r1, [r6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6]
	ldr r4, [r5, #0x54]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldr r3, _080247DC @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	mov r7, sb
	ands r1, r7
	movs r7, #0x32
	ldrsh r2, [r4, r7]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	mov r3, sb
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	adds r0, r4, #0
	bl sub_0805E7BC
	ldrh r0, [r5, #0x36]
	subs r0, #0xe
	strh r0, [r5, #0x36]
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	ldrb r2, [r6]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0804A98C
	adds r4, r0, #0
	cmp r4, #0
	bne _080247D0
	b _08024924
_080247D0:
	str r5, [r4, #0x50]
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	str r4, [r5, #0x54]
	b _08024924
	.align 2, 0
_080247DC: .4byte gUnk_03000BF0
_080247E0:
	adds r0, r5, #0
	bl sub_08024C94
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x40
_080247EE:
	orrs r0, r1
	strb r0, [r2]
	b _08024924
_080247F4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08024804
	b _08024924
_08024804:
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	strb r2, [r5, #0xf]
	strh r2, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x82
	b _0802482E
_08024818:
	ldrh r0, [r5, #0x36]
	subs r0, #2
	strh r0, [r5, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x3c
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08024924
_0802482A:
	adds r1, r5, #0
	adds r1, #0x80
_0802482E:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08024924
_08024836:
	ldrh r2, [r5, #0x36]
	movs r4, #0x36
	ldrsh r1, [r5, r4]
	movs r0, #0x30
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802484A
	adds r0, r2, #1
	strh r0, [r5, #0x36]
	b _08024924
_0802484A:
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802485E
	movs r0, #0
	strb r0, [r1]
	subs r1, #0xa
	ldr r0, _08024884 @ =0x0000FFD0
	strh r0, [r1]
_0802485E:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	blt _080248A6
	cmp r0, #2
	ble _08024888
	cmp r0, #3
	bne _080248A6
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0x2f
	bls _08024924
	adds r0, r5, #0
	bl sub_08024F50
	b _08024924
	.align 2, 0
_08024884: .4byte 0x0000FFD0
_08024888:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc0
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_080249DC
	b _08024924
_080248A6:
	adds r0, r5, #0
	bl sub_08024C7C
	b _08024924
_080248AE:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _080248F2
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080248E8
	movs r0, #0xc0
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x80
	strb r3, [r0]
	movs r1, #0x40
	movs r0, #0x40
	strh r0, [r5, #0x24]
	strb r1, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #0
	b _08024902
_080248E8:
	movs r0, #0x40
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	b _08024924
_080248F2:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08024924
	adds r0, r5, #0
	movs r1, #2
_08024902:
	movs r2, #8
	bl sub_08024A14
	b _08024924
_0802490A:
	ldr r0, _0802493C @ =gLinkEntity
	movs r7, #0x36
	ldrsh r1, [r0, r7]
	cmp r1, #0
	bne _08024924
	adds r0, r5, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08024B38
_08024924:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _08024934
	adds r0, r5, #0
	bl sub_08024E4C
_08024934:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802493C: .4byte gLinkEntity

	thumb_func_start sub_08024940
sub_08024940: @ 0x08024940
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	movs r0, #0x70
	ands r5, r0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08024962
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_080249F4
_08024962:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802497C
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x36]
	cmp r5, #0
	beq _0802497C
	adds r0, #2
	strh r0, [r4, #0x36]
_0802497C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0802498A
	bl sub_08052660
	cmp r0, #0
	beq _080249CE
_0802498A:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080249A2
	adds r0, r4, #0
	bl sub_08049EE4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080249F4
_080249A2:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080249BC
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, #0x18
	ands r0, r1
	strb r0, [r2]
	b _080249CE
_080249BC:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2]
_080249CE:
	adds r0, r4, #0
	bl sub_080AEFB4
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, pc}

	thumb_func_start sub_080249DC
sub_080249DC: @ 0x080249DC
	push {lr}
	ldrb r1, [r0, #0x15]
	adds r1, #2
	movs r2, #0x1c
	ands r1, r2
	lsrs r1, r1, #2
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080249F4
sub_080249F4: @ 0x080249F4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x15]
	adds r1, r0, #2
	movs r0, #0x1f
	ands r1, r0
	lsrs r1, r1, #2
	ldrb r0, [r2, #0x14]
	cmp r1, r0
	beq _08024A12
	strb r1, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r0, r2, #0
	bl sub_08004260
_08024A12:
	pop {pc}

	thumb_func_start sub_08024A14
sub_08024A14: @ 0x08024A14
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r6, #0
	cmp r5, #1
	beq _08024A40
	cmp r5, #1
	blo _08024A30
	cmp r5, #2
	beq _08024A5E
	cmp r5, #3
	beq _08024A84
	b _08024A9E
_08024A30:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _08024A9C
_08024A40:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08024C48
	cmp r0, #0
	beq _08024A9E
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _08024A9C
_08024A5E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	beq _08024A9E
	ldr r0, _08024A80 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _08024A9C
	.align 2, 0
_08024A80: .4byte gUnk_020000B0
_08024A84:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	beq _08024A9E
	ldr r0, _08024AD4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_08024A9C:
	movs r6, #1
_08024A9E:
	cmp r5, #0
	beq _08024ABA
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08024ABA
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08024ABA
	movs r6, #0
_08024ABA:
	cmp r6, #0
	bne _08024AC8
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	bl sub_08024A14
_08024AC8:
	adds r0, r4, #0
	bl sub_080249DC
	strb r7, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08024AD4: .4byte gUnk_020000B0

	thumb_func_start sub_08024AD8
sub_08024AD8: @ 0x08024AD8
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x83
	ldrb r2, [r3]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _08024B2A
	movs r1, #0
	movs r0, #0x3f
	ands r0, r2
	cmp r0, #3
	bne _08024B12
	ldr r0, _08024B0C @ =gUnk_03003F80
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _08024B10
	ldr r0, [r4, #0x54]
	str r1, [r0, #0x50]
	str r1, [r4, #0x54]
	movs r0, #0xc0
	strb r0, [r3]
	movs r0, #0
	b _08024B34
	.align 2, 0
_08024B0C: .4byte gUnk_03003F80
_08024B10:
	movs r1, #1
_08024B12:
	adds r0, r4, #0
	bl sub_08024C48
	cmp r0, #0
	bne _08024B32
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
	movs r0, #0
	b _08024B34
_08024B2A:
	adds r0, r4, #0
	bl sub_08024B38
	b _08024B34
_08024B32:
	movs r0, #1
_08024B34:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08024B38
sub_08024B38: @ 0x08024B38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r0, _08024B5C @ =gUnk_03003F80
	ldrb r3, [r0, #0xf]
	adds r2, r3, #0
	adds r1, r0, #0
	cmp r2, #0
	beq _08024BA0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	bne _08024B62
	cmp r2, #3
	bls _08024B60
	subs r0, r3, #3
	strb r0, [r1, #0xf]
	b _08024B62
	.align 2, 0
_08024B5C: .4byte gUnk_03003F80
_08024B60:
	strb r7, [r1, #0xf]
_08024B62:
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _08024BA0
	adds r0, r5, #0
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	beq _08024C3C
	ldr r4, _08024B9C @ =gUnk_020000B0
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #0xa0
	bl sub_08049F1C
	cmp r0, #0
	beq _08024C3C
	movs r7, #1
	ldr r0, [r4]
	str r0, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #3
	orrs r0, r1
	movs r1, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _08024C3C
	.align 2, 0
_08024B9C: .4byte gUnk_020000B0
_08024BA0:
	movs r0, #8
	movs r1, #2
	movs r2, #2
	bl sub_0805EB00
	adds r4, r0, #0
	cmp r4, #0
	beq _08024BF0
	adds r6, r5, #0
	adds r6, #0x83
	b _08024BC4
_08024BB6:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805EB64
	adds r4, r0, #0
	cmp r4, #0
	beq _08024BF0
_08024BC4:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	beq _08024BB6
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08024BB6
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa0
	bl sub_08049F1C
	cmp r0, #0
	beq _08024BB6
	movs r7, #1
	str r4, [r5, #0x54]
	ldrb r0, [r6]
	movs r1, #1
	orrs r1, r0
	movs r0, #0xbf
	ands r1, r0
	strb r1, [r6]
_08024BF0:
	cmp r7, #0
	bne _08024C42
	movs r0, #6
	movs r1, #5
	movs r2, #6
	bl sub_0805EB00
	adds r4, r0, #0
	cmp r4, #0
	beq _08024C3C
	adds r6, r5, #0
	adds r6, #0x83
	b _08024C18
_08024C0A:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805EB64
	adds r4, r0, #0
	cmp r4, #0
	beq _08024C3C
_08024C18:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08024C0A
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa0
	bl sub_08049F1C
	cmp r0, #0
	beq _08024C0A
	movs r7, #1
	str r4, [r5, #0x54]
	ldrb r0, [r6]
	movs r1, #2
	orrs r1, r0
	movs r0, #0xbf
	ands r1, r0
	strb r1, [r6]
_08024C3C:
	cmp r7, #0
	bne _08024C42
	str r7, [r5, #0x54]
_08024C42:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08024C48
sub_08024C48: @ 0x08024C48
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r4, #1
	cmp r1, #0
	beq _08024C60
	movs r0, #3
	bl sub_08049DF4
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	b _08024C78
_08024C60:
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _08024C74
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _08024C74
	movs r5, #0x36
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08024C78
_08024C74:
	str r1, [r3, #0x54]
	movs r4, #0
_08024C78:
	adds r0, r4, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08024C7C
sub_08024C7C: @ 0x08024C7C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r2, #0
	movs r1, #0x40
	strh r1, [r0, #0x24]
	strb r2, [r0, #0xe]
	movs r1, #0
	movs r2, #0x20
	bl sub_08024A14
	pop {pc}

	thumb_func_start sub_08024C94
sub_08024C94: @ 0x08024C94
	push {lr}
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x80
	strb r2, [r1]
	movs r1, #0x40
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	movs r1, #0xc0
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0x80
	strb r1, [r2]
	ldrb r2, [r0, #0xf]
	movs r1, #3
	bl sub_08024A14
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08024CC0
sub_08024CC0: @ 0x08024CC0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	movs r1, #1
	bl sub_08024C48
	cmp r0, #0
	bne _08024CD4
	movs r5, #0
	b _08024CF8
_08024CD4:
	ldr r0, _08024CFC @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x50
	bl sub_08049F1C
	cmp r0, #0
	beq _08024CF0
	adds r0, r4, #0
	movs r1, #3
	bl sub_08049FDC
	cmp r0, #0
	bne _08024CF8
_08024CF0:
	movs r5, #0
	adds r0, r4, #0
	bl sub_08024C7C
_08024CF8:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0
_08024CFC: .4byte gUnk_020000B0

	thumb_func_start sub_08024D00
sub_08024D00: @ 0x08024D00
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	ldrb r0, [r1]
	cmp r0, #0
	beq _08024D1A
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08004274
	b _08024D20
_08024D1A:
	adds r0, r4, #0
	bl sub_08024940
_08024D20:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024D46
	adds r0, r4, #0
	bl sub_08024B38
	cmp r0, #0
	beq _08024D46
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
	b _08024DFC
_08024D46:
	adds r0, r4, #0
	bl sub_08024CC0
	cmp r0, #0
	beq _08024DFC
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	beq _08024D60
	cmp r0, #1
	beq _08024DAE
	b _08024DFC
_08024D60:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024DFC
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_08000E50
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _08024D90
	adds r1, r2, #4
	b _08024D94
_08024D90:
	adds r1, r2, #0
	adds r1, #0x1c
_08024D94:
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r3]
	movs r1, #0x40
	eors r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0x10
	bl sub_08024A14
	b _08024DFC
_08024DAE:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08024DCE
	strb r0, [r1]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	b _08024DFC
_08024DCE:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _08024DFC
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024DEA
	adds r1, #1
	b _08024DEC
_08024DEA:
	adds r1, #0x1f
_08024DEC:
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080249DC
_08024DFC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08024E00
sub_08024E00: @ 0x08024E00
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08024E34
	ldr r1, _08024E18 @ =gUnk_080CBF10
	lsls r0, r0, #1
	orrs r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	pop {r4, r5, pc}
	.align 2, 0
_08024E18: .4byte gUnk_080CBF10

	thumb_func_start sub_08024E1C
sub_08024E1C: @ 0x08024E1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08024E34
	ldr r1, _08024E30 @ =gUnk_080CBF18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	pop {r4, pc}
	.align 2, 0
_08024E30: .4byte gUnk_080CBF18

	thumb_func_start sub_08024E34
sub_08024E34: @ 0x08024E34
	push {lr}
	bl sub_08000E50
	movs r1, #0x3c
	ands r1, r0
	lsrs r1, r1, #2
	ldr r0, _08024E48 @ =gUnk_080CBF20
	adds r1, r1, r0
	ldrb r0, [r1]
	pop {pc}
	.align 2, 0
_08024E48: .4byte gUnk_080CBF20

	thumb_func_start sub_08024E4C
sub_08024E4C: @ 0x08024E4C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _08024F46
	ldrb r0, [r4, #0xf]
	adds r0, #1
	movs r7, #0
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0xf]
	bl sub_0807953C
	cmp r0, #0
	beq _08024E84
	bl sub_08000E50
	adds r3, r4, #0
	adds r3, #0x84
	ldrb r2, [r3]
	adds r2, #1
	movs r1, #1
	ands r1, r0
	adds r2, r2, r1
	strb r2, [r3]
_08024E84:
	ldr r0, _08024EC8 @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x87
	cmp r0, #0
	beq _08024E9A
	adds r5, r2, #0
	ldrb r0, [r5]
	cmp r0, #4
	bne _08024ECC
_08024E9A:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0x30
	strb r0, [r1]
	strb r7, [r2]
	adds r0, r4, #0
	bl sub_08024F50
	adds r0, r4, #0
	adds r0, #0x80
	strb r7, [r0]
	movs r1, #0x40
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r1, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl sub_08024A14
	b _08024F46
	.align 2, 0
_08024EC8: .4byte gUnk_02002A40
_08024ECC:
	ldr r6, _08024F48 @ =gLinkEntity
	bl sub_08077B2C
	ldr r2, _08024F4C @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrb r0, [r2, #0xa]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #0xe
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3a
	strb r7, [r0]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0806FA48
	adds r1, r6, #0
	adds r1, #0x63
	movs r0, #0x1a
	strb r0, [r1]
	movs r0, #4
	strb r0, [r6, #0x14]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3d
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08024F46
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #8
	strb r0, [r1]
	subs r0, #0xa
	bl sub_080526A0
	adds r0, r6, #0
	movs r1, #0x7a
	bl sub_0800449C
_08024F46:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08024F48: .4byte gLinkEntity
_08024F4C: .4byte gUnk_03003F80

	thumb_func_start sub_08024F50
sub_08024F50: @ 0x08024F50
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08024FDC @ =gUnk_03003F80
	movs r4, #0
	strb r4, [r2, #0xa]
	ldr r0, [r2, #0x30]
	ldr r1, _08024FE0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r5, _08024FE4 @ =gLinkEntity
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806FA24
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r3, #0
	strh r4, [r5, #0x24]
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x29
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0
	ldrsb r0, [r1, r0]
	strh r0, [r5, #0x36]
	strb r3, [r1]
	adds r2, r6, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x84
	strb r3, [r0]
	movs r0, #0x80
	strh r0, [r6, #0x24]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08024FDC: .4byte gUnk_03003F80
_08024FE0: .4byte 0xFFFFFEFF
_08024FE4: .4byte gLinkEntity

	thumb_func_start sub_08024FE8
sub_08024FE8: @ 0x08024FE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08025004 @ =gUnk_080CBF9C
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08025004: .4byte gUnk_080CBF9C

	thumb_func_start sub_08025008
sub_08025008: @ 0x08025008
	push {lr}
	ldr r2, _0802501C @ =gUnk_080CBFB4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802501C: .4byte gUnk_080CBFB4

	thumb_func_start sub_08025020
sub_08025020: @ 0x08025020
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	blt _080250C2
	cmp r1, #3
	ble _0802510C
	cmp r1, #0x1b
	bne _080250C2
	adds r0, r4, #0
	bl sub_0804AA1C
	ldr r1, _08025058 @ =gUnk_080CBFE8
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r3, r4, #0
	adds r3, #0x82
	ldrb r0, [r3]
	cmp r1, r0
	bhs _0802505C
	subs r0, r0, r1
	strb r0, [r3]
	b _08025078
	.align 2, 0
_08025058: .4byte gUnk_080CBFE8
_0802505C:
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #0
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #0x45
	movs r0, #0x83
	strb r0, [r1]
	strb r2, [r3]
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D2B4
_08025078:
	movs r2, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ble _0802508A
	str r2, [r4, #0x20]
_0802508A:
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x42
	strb r2, [r0]
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802510C
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #6
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5]
	b _0802510C
_080250C2:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x82
	bne _0802510C
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0802510C
	movs r0, #0x21
	movs r1, #2
	movs r2, #0
	bl sub_080A2960
	adds r2, r0, #0
	cmp r2, #0
	beq _08025104
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0806FA24
_08025104:
	movs r0, #0xc3
	lsls r0, r0, #1
	bl sub_08004488
_0802510C:
	ldr r1, _08025118 @ =gUnk_080CBF9C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08025118: .4byte gUnk_080CBF9C

	thumb_func_start sub_0802511C
sub_0802511C: @ 0x0802511C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08025142
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _08025142
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025142
	adds r0, r4, #0
	bl sub_08025B18
_08025142:
	adds r0, r4, #0
	bl sub_0804A7D4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802514C
sub_0802514C: @ 0x0802514C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08025178
	ldr r0, _08025174 @ =gUnk_080CBFEC
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802517E
	.align 2, 0
_08025174: .4byte gUnk_080CBFEC
_08025178:
	adds r0, r4, #0
	bl sub_08025C2C
_0802517E:
	pop {r4, pc}

	thumb_func_start sub_08025180
sub_08025180: @ 0x08025180
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #0x15]
	movs r1, #0x10
	eors r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0804AA1C
	pop {r4, pc}

	thumb_func_start sub_080251AC
sub_080251AC: @ 0x080251AC
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x82
	ldrb r0, [r3]
	cmp r0, #3
	bls _080251D8
	subs r0, #3
	strb r0, [r3]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080251F4
	adds r0, r4, #0
	bl sub_08025BD4
	b _080251F4
_080251D8:
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #0
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #0x45
	movs r0, #0x83
	strb r0, [r1]
	strb r2, [r3]
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D2B4
_080251F4:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080251FC
sub_080251FC: @ 0x080251FC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r1, r4, #0
	adds r1, #0x82
	movs r5, #0
	movs r0, #0xf0
	strb r0, [r1]
	bl sub_08000E50
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_080256B4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08025230
sub_08025230: @ 0x08025230
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _08025242
	subs r0, #1
	strb r0, [r1]
_08025242:
	adds r0, r4, #0
	bl sub_08025C44
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025270
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	adds r0, #4
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08025C60
	strb r0, [r4, #0x15]
_08025270:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802528C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _08025290
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	b _08025290
_0802528C:
	movs r0, #0x1e
	strb r0, [r4, #0xf]
_08025290:
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	bne _080252D8
	adds r0, r4, #0
	bl sub_0802571C
	cmp r0, #0
	beq _080252DC
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080252D4 @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x86
	strh r1, [r0]
	b _080252DC
	.align 2, 0
_080252D4: .4byte gUnk_03000BF0
_080252D8:
	subs r0, #1
	strh r0, [r1]
_080252DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080252E0
sub_080252E0: @ 0x080252E0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x7c
	ldrh r2, [r2]
	adds r3, r4, #0
	adds r3, #0x7e
	ldrh r3, [r3]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08025C44
	adds r0, r4, #0
	bl sub_08004274
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _08025348 @ =gUnk_03000BF0
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r2, [r0]
	cmp r5, r2
	bne _0802534C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025352
	adds r0, r4, #0
	bl sub_080256B4
	b _08025352
	.align 2, 0
_08025348: .4byte gUnk_03000BF0
_0802534C:
	strh r5, [r0]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
_08025352:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r1, r0
	bne _08025388
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	cmp r0, r1
	bne _08025388
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08025388:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802538C
sub_0802538C: @ 0x0802538C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802539C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080253CC
_0802539C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080253AE
	adds r0, r4, #0
	bl sub_08004274
	b _080253CC
_080253AE:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r1, [r4, #0x20]
	ldr r0, _080253D0 @ =0x00001FFF
	cmp r1, r0
	bgt _080253CC
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_080253CC:
	pop {r4, pc}
	.align 2, 0
_080253D0: .4byte 0x00001FFF

	thumb_func_start sub_080253D4
sub_080253D4: @ 0x080253D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0802541A
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080253FE
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	b _0802541A
_080253FE:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08025A54
	adds r0, r4, #0
	bl sub_08025AE8
_0802541A:
	pop {r4, pc}

	thumb_func_start sub_0802541C
sub_0802541C: @ 0x0802541C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08025448
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08025448:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802544C
sub_0802544C: @ 0x0802544C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08025460
	adds r0, r4, #0
	bl sub_08004274
	b _0802547A
_08025460:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802547A
	adds r0, r4, #0
	bl sub_080256B4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0802547A:
	pop {r4, pc}

	thumb_func_start sub_0802547C
sub_0802547C: @ 0x0802547C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	ldrb r1, [r4, #0xe]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802549E
	adds r0, r4, #0
	bl sub_08025BD4
_0802549E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080254B0
	adds r0, r4, #0
	bl sub_08025C2C
_080254B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080254B4
sub_080254B4: @ 0x080254B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802550C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08025512
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _080254F6
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x82
	strb r0, [r1]
	adds r1, #0x43
	movs r0, #0xf0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080256B4
	b _08025502
_080254F6:
	movs r0, #0xc
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08025502:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _08025512
_0802550C:
	adds r0, r4, #0
	bl sub_08004274
_08025512:
	pop {r4, pc}

	thumb_func_start sub_08025514
sub_08025514: @ 0x08025514
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0802594C
	cmp r0, #0
	beq _08025542
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x78
	strb r0, [r1]
	b _08025550
_08025542:
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	bls _08025550
	movs r0, #0xa
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strb r0, [r4, #0xe]
_08025550:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08025554
sub_08025554: @ 0x08025554
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	bne _0802556C
	adds r0, r4, #0
	bl sub_080256B4
	b _080255A8
_0802556C:
	ldrb r1, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08025580
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_08025580:
	adds r0, r4, #0
	bl sub_08025C44
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08025598
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080255A8
_08025598:
	adds r0, r4, #0
	bl sub_080258C4
	cmp r0, #0
	bne _080255A8
	adds r0, r4, #0
	bl sub_080256B4
_080255A8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080255AC
sub_080255AC: @ 0x080255AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r6, r0, #0
	cmp r6, #0
	bne _080255C4
	adds r0, r5, #0
	bl sub_080256B4
	b _08025638
_080255C4:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _080255D2
	subs r0, #1
	strb r0, [r1]
_080255D2:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802560C
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	adds r0, #4
	strb r0, [r5, #0xe]
	bl sub_08000E50
	adds r4, r0, #0
	movs r0, #0xf
	ands r4, r0
	cmp r4, #7
	bgt _080255FA
	subs r4, #1
_080255FA:
	subs r4, #7
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080045C4
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
_0802560C:
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	bne _08025628
	adds r0, r5, #0
	bl sub_080258C4
	cmp r0, #0
	bne _0802562C
	adds r0, r5, #0
	bl sub_080256B4
	b _0802562C
_08025628:
	subs r0, #1
	strh r0, [r1]
_0802562C:
	adds r0, r5, #0
	bl sub_08025C44
	adds r0, r5, #0
	bl sub_08004274
_08025638:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802563C
sub_0802563C: @ 0x0802563C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r0, [r2]
	subs r1, r0, #1
	strh r1, [r2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _08025678
	adds r0, r4, #0
	movs r1, #0x28
	bl sub_0801D2B4
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x82
	strb r0, [r1]
	adds r1, #0x43
	movs r0, #0xf0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080256B4
	adds r0, r4, #0
	bl sub_0804AA1C
	b _080256B0
_08025678:
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x77
	bhi _080256B0
	ldr r0, _080256A4 @ =gUnk_080CBFF8
	lsrs r1, r1, #0x14
	adds r1, r1, r0
	ldrb r1, [r1]
	ldrh r2, [r2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080256B0
	adds r0, r1, #1
	ands r2, r0
	cmp r2, #0
	beq _080256A8
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D2B4
	b _080256B0
	.align 2, 0
_080256A4: .4byte gUnk_080CBFF8
_080256A8:
	adds r0, r4, #0
	movs r1, #0x28
	bl sub_0801D2B4
_080256B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080256B4
sub_080256B4: @ 0x080256B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	adds r0, #4
	strb r0, [r5, #0xe]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	bl sub_08000E50
	ldrb r4, [r5, #0x15]
	adds r4, #7
	movs r1, #7
	bl __modsi3
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r0, #0x1c
	ands r4, r0
	strb r4, [r5, #0x15]
	bl sub_08000E50
	ldr r2, _08025718 @ =gUnk_080CC000
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	movs r4, #0
	strh r1, [r0]
	bl sub_08000E50
	movs r1, #0x18
	bl __modsi3
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x7a
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08025718: .4byte gUnk_080CC000

	thumb_func_start sub_0802571C
sub_0802571C: @ 0x0802571C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _080257B0 @ =gUnk_03000BF0
	mov sb, r0
	ldrh r0, [r7, #0x2e]
	mov r2, sb
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r0, #8
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r7, #0x32]
	mov r3, sb
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	adds r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r7, #0
	adds r0, #0x7a
	ldrb r4, [r0]
	movs r3, #0
	ldr r0, _080257B4 @ =gUnk_080CC020
	mov r8, r0
_08025764:
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #1
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	str r3, [sp, #4]
	bl sub_080257EC
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _080257B8
	mov r3, sb
	ldrh r0, [r3, #6]
	adds r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldrh r0, [r3, #8]
	adds r0, r5, r0
	adds r1, #2
	strh r0, [r1]
	movs r0, #1
	b _080257E0
	.align 2, 0
_080257B0: .4byte gUnk_03000BF0
_080257B4: .4byte gUnk_080CC020
_080257B8:
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x2f
	bls _080257C4
	movs r4, #0
_080257C4:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08025764
	adds r0, r7, #0
	adds r0, #0x7a
	strb r4, [r0]
	adds r1, r7, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
_080257E0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080257EC
sub_080257EC: @ 0x080257EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	cmp r2, r0
	beq _08025822
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08025822
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258AA
_08025822:
	adds r5, r7, #0
	subs r5, #0x10
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	mov r8, r4
	cmp r2, r0
	beq _08025852
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08025852
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258AA
_08025852:
	adds r4, r6, #0
	subs r4, #0x10
	mov r0, r8
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	adds r1, r4, #0
	cmp r2, r0
	beq _08025882
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08025882
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258AA
_08025882:
	mov r0, r8
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_080002A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080258B0 @ =0x00000312
	cmp r2, r0
	beq _080258BC
	ldr r0, _080258B4 @ =gUnk_080B37A0
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _080258BC
	ldr r0, _080258B8 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080258BC
_080258AA:
	movs r0, #1
	b _080258BE
	.align 2, 0
_080258B0: .4byte 0x00000312
_080258B4: .4byte gUnk_080B37A0
_080258B8: .4byte gUnk_080B3E80
_080258BC:
	movs r0, #0
_080258BE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080258C4
sub_080258C4: @ 0x080258C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08025922
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r3, r1, r0
	adds r0, r3, #0
	muls r0, r3, r0
	adds r3, r0, #0
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r3, r3, r0
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802591A
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r1, [r0]
	cmp r1, #0
	bne _0802591A
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bgt _0802591A
	movs r0, #9
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _08025942
_0802591A:
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r3, r0
	ble _08025926
_08025922:
	movs r0, #0
	b _08025944
_08025926:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	bl sub_08000E50
	ldr r2, _08025948 @ =gUnk_080CC050
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
_08025942:
	movs r0, #1
_08025944:
	pop {r4, pc}
	.align 2, 0
_08025948: .4byte gUnk_080CC050

	thumb_func_start sub_0802594C
sub_0802594C: @ 0x0802594C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	ldr r0, _08025A20 @ =gUnk_080CC090
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r0, sl
	adds r0, #0x38
	ldrb r0, [r0]
	mov sb, r0
	ldr r3, _08025A24 @ =gUnk_03000BF0
	mov r1, sl
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	adds r0, #8
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r2, r1, #0
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r1, sl
	ldrh r0, [r1, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	adds r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_08025996:
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldr r1, [sp]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldr r1, [sp, #4]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r0, r4, #0x10
	str r0, [sp, #8]
	asrs r4, r4, #0x10
	lsrs r1, r5, #0x10
	str r1, [sp, #0xc]
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r0, r0, r4
	mov r8, r0
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	subs r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sb
	str r3, [sp, #0x10]
	bl sub_080002D4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	ldr r3, [sp, #0x10]
	orrs r6, r3
	orrs r4, r6
	orrs r4, r0
	lsls r4, r4, #0x18
	cmp r4, #0
	beq _08025A28
	adds r7, #2
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0x7f
	bne _08025996
	movs r0, #0
	b _08025A44
	.align 2, 0
_08025A20: .4byte gUnk_080CC090
_08025A24: .4byte gUnk_03000BF0
_08025A28:
	ldr r2, _08025A50 @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	mov r1, sl
	adds r1, #0x7c
	strh r0, [r1]
	ldrh r0, [r2, #8]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	mov r1, sl
	adds r1, #0x7e
	strh r0, [r1]
	movs r0, #1
_08025A44:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025A50: .4byte gUnk_03000BF0

	thumb_func_start sub_08025A54
sub_08025A54: @ 0x08025A54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r1, r0, #0
	adds r1, #0x38
	ldrb r1, [r1]
	mov sb, r1
	ldr r3, _08025AB0 @ =gUnk_03000BF0
	ldrh r2, [r0, #0x2e]
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	ldrh r1, [r0, #0x32]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	ldr r4, _08025AB4 @ =gUnk_080CC0A0
	movs r5, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	movs r6, #0x3f
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
_08025A82:
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	asrs r0, r0, #4
	ands r0, r6
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r7, r1
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, sb
	bl sub_08025AB8
	adds r5, #1
	adds r4, #2
	cmp r5, #3
	bls _08025A82
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025AB0: .4byte gUnk_03000BF0
_08025AB4: .4byte gUnk_080CC0A0

	thumb_func_start sub_08025AB8
sub_08025AB8: @ 0x08025AB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080002E0
	cmp r0, #0
	bne _08025AD6
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	cmp r0, #0xa
	beq _08025ADA
_08025AD6:
	movs r0, #0
	b _08025AE6
_08025ADA:
	movs r0, #0x61
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0807B7D8
	movs r0, #1
_08025AE6:
	pop {r4, r5, pc}

	thumb_func_start sub_08025AE8
sub_08025AE8: @ 0x08025AE8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x22
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08025B00
	ldr r0, [r1, #0x30]
	subs r0, #1
	str r0, [r1, #0x30]
_08025B00:
	adds r0, r4, #0
	movs r1, #0x23
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08025B16
	ldr r0, [r1, #0x30]
	adds r0, #1
	str r0, [r1, #0x30]
_08025B16:
	pop {r4, pc}

	thumb_func_start sub_08025B18
sub_08025B18: @ 0x08025B18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _08025BC8 @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	str r1, [sp]
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	ldrh r0, [r2, #8]
	subs r1, r1, r0
	str r1, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	mov sl, r0
	ldr r5, _08025BCC @ =gUnk_080CC0A8
	movs r7, #0
	movs r1, #0x3f
	mov r8, r1
	movs r2, #0x10
	rsbs r2, r2, #0
	mov sb, r2
_08025B52:
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldr r1, [sp]
	adds r0, r1, r0
	asrs r0, r0, #4
	mov r2, r8
	ands r0, r2
	movs r1, #1
	ldrsb r1, [r5, r1]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	asrs r1, r1, #4
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, sl
	bl sub_08025AB8
	movs r0, #0x21
	movs r1, #2
	movs r2, #0
	bl sub_080A2960
	adds r4, r0, #0
	cmp r4, #0
	beq _08025BB4
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r5, r3]
	lsls r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA48
	ldrh r1, [r4, #0x2e]
	mov r0, sb
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x2e]
	ldrh r1, [r4, #0x32]
	mov r0, sb
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x32]
	ldr r0, _08025BD0 @ =0x0000FFFF
	strh r0, [r4, #0x36]
_08025BB4:
	adds r7, #1
	adds r5, #2
	cmp r7, #8
	bls _08025B52
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025BC8: .4byte gUnk_03000BF0
_08025BCC: .4byte gUnk_080CC0A8
_08025BD0: .4byte 0x0000FFFF

	thumb_func_start sub_08025BD4
sub_08025BD4: @ 0x08025BD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025C22
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08025C22
	movs r0, #0x21
	movs r1, #0
	movs r2, #0
	bl sub_080A2960
	adds r4, r0, #0
	cmp r4, #0
	beq _08025C22
	ldr r3, _08025C24 @ =gUnk_080CC0BA
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	adds r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA48
	ldr r0, _08025C28 @ =0x0000FFF6
	strh r0, [r4, #0x36]
_08025C22:
	pop {r4, r5, pc}
	.align 2, 0
_08025C24: .4byte gUnk_080CC0BA
_08025C28: .4byte 0x0000FFF6

	thumb_func_start sub_08025C2C
sub_08025C2C: @ 0x08025C2C
	push {lr}
	movs r2, #0
	movs r1, #8
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x80
	strb r2, [r1]
	movs r1, #8
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08025C44
sub_08025C44: @ 0x08025C44
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025C58
	movs r0, #0
	b _08025C5E
_08025C58:
	adds r0, r2, #0
	bl sub_080AEF88
_08025C5E:
	pop {pc}

	thumb_func_start sub_08025C60
sub_08025C60: @ 0x08025C60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08025C80
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08025C80
	adds r0, r4, #0
	bl sub_08049EE4
	b _08025C98
_08025C80:
	bl sub_08000E50
	ldr r2, _08025C9C @ =gUnk_080CC0C2
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrb r4, [r4, #0x15]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
_08025C98:
	pop {r4, pc}
	.align 2, 0
_08025C9C: .4byte gUnk_080CC0C2

	thumb_func_start sub_08025CA0
sub_08025CA0: @ 0x08025CA0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08025CB8 @ =gUnk_080CC19C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08025CB8: .4byte gUnk_080CC19C

	thumb_func_start sub_08025CBC
sub_08025CBC: @ 0x08025CBC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001324

	thumb_func_start sub_08025CC4
sub_08025CC4: @ 0x08025CC4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08025CD0
	adds r0, r4, #0
	bl sub_08027870
_08025CD0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08025CD4
sub_08025CD4: @ 0x08025CD4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r3, [r4, #0xa]
	cmp r3, #0
	bne _08025DA4
	ldrb r0, [r4, #0xd]
	cmp r0, #0xc
	beq _08025CFE
	movs r0, #0xc
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r3, [r0, #3]
	ldr r0, [r4, #0x54]
	movs r1, #9
	bl sub_080042AC
	b _08025D9C
_08025CFE:
	adds r5, r4, #0
	adds r5, #0x84
	ldr r0, [r5]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08025D10
	cmp r0, #1
	beq _08025D28
	b _08025D9C
_08025D10:
	adds r0, r4, #0
	movs r1, #0x3f
	bl sub_08027C7C
	ldr r0, [r5]
	movs r1, #1
	strb r1, [r0, #3]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x78
	strb r0, [r1]
	b _08025D9C
_08025D28:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08025D84
	ldr r1, [r4, #0x54]
	adds r1, #0x6d
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x68]
	adds r1, #0x6d
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x50]
	adds r1, #0x6d
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x68]
	adds r0, #0x45
	strb r3, [r0]
	adds r1, #0x45
	strb r3, [r1]
	adds r2, #0x45
	strb r3, [r2]
	ldr r0, _08025D80 @ =gUnk_02034490
	strb r3, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080A3268
	adds r0, r4, #0
	bl sub_0804A7D4
	b _08025D9C
	.align 2, 0
_08025D80: .4byte gUnk_02034490
_08025D84:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x3f
	cmp r0, #0x50
	bhi _08025D96
	movs r1, #0xf
	cmp r0, #0x1e
	bls _08025D96
	movs r1, #0x1f
_08025D96:
	adds r0, r4, #0
	bl sub_08027C7C
_08025D9C:
	adds r0, r4, #0
	bl sub_08027870
	b _08025DBC
_08025DA4:
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08025DBC
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_0805E780
_08025DBC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08025DC0
sub_08025DC0: @ 0x08025DC0
	push {lr}
	ldr r2, _08025DD4 @ =gUnk_080CC1B0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08025DD4: .4byte gUnk_080CC1B0

	thumb_func_start sub_08025DD8
sub_08025DD8: @ 0x08025DD8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0xa]
	cmp r1, #8
	bne _08025DF2
	movs r0, #4
	strb r0, [r5, #0xa]
	ldr r0, [r5, #0x54]
	ldr r0, [r0, #0x48]
	str r0, [r5, #0x48]
	b _0802605E
_08025DF2:
	ldr r6, _08025E48 @ =gUnk_080CC1B8
	movs r4, #3
	movs r3, #3
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #1]
	movs r1, #0x29
	adds r1, r1, r5
	mov ip, r1
	movs r1, #7
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x76
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r5, #0x19]
	orrs r0, r4
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0xa]
	ands r3, r0
	cmp r3, #1
	bne _08025E4C
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
	b _08025E58
	.align 2, 0
_08025E48: .4byte gUnk_080CC1B8
_08025E4C:
	lsls r0, r3, #2
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08004260
_08025E58:
	ldrb r0, [r5, #0xa]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	beq _08025E86
	cmp r6, #0
	bge _08025E68
	b _08026050
_08025E68:
	cmp r6, #3
	ble _08025E6E
	b _08026050
_08025E6E:
	ldr r4, [r5, #0x48]
	adds r0, r5, #0
	bl sub_0806FBD8
	adds r1, r0, #0
	cmp r1, #0
	beq _08025E7E
	b _08026020
_08025E7E:
	ldr r0, [r5, #0x68]
	adds r0, #0x45
	strb r1, [r0]
	b _0802605E
_08025E86:
	strb r0, [r5, #0xb]
	movs r0, #0x10
	bl sub_0801D8E0
	adds r4, r5, #0
	adds r4, #0x84
	str r0, [r4]
	cmp r0, #0
	beq _08025EA2
	adds r0, r5, #0
	bl sub_0806FBD8
	cmp r0, #0
	bne _08025EAA
_08025EA2:
	adds r0, r5, #0
	bl sub_0804A7D4
	b _0802605E
_08025EAA:
	ldr r0, [r4]
	str r0, [r5, #0x64]
	ldr r2, [r5, #0x48]
	ldr r1, _0802601C @ =gUnk_080FD238
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #2]
	strb r0, [r2, #2]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #3]
	strb r0, [r2, #3]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #4]
	strb r0, [r2, #4]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #5]
	strb r0, [r2, #5]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #6]
	strb r0, [r2, #6]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #7]
	strb r0, [r2, #7]
	strb r6, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	movs r7, #1
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r4]
	strb r6, [r0, #6]
	ldr r0, [r4]
	strb r6, [r0, #5]
	ldr r1, [r4]
	movs r0, #0xf
	strb r0, [r1, #1]
	ldr r0, [r4]
	strb r6, [r0, #3]
	ldr r0, [r4]
	strb r6, [r0, #4]
	ldr r1, [r4]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0xe]
	ldrb r0, [r5, #0xa]
	movs r1, #3
	orrs r1, r0
	movs r0, #0x13
	bl sub_0804AA60
	adds r2, r0, #0
	str r2, [r5, #0x68]
	cmp r2, #0
	beq _08025F46
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r5, #0x68]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r5, #0x68]
	ldrh r0, [r5, #0x32]
	subs r0, #0xe
	strh r0, [r1, #0x32]
	ldr r1, [r5, #0x68]
	movs r0, #0xe
	strb r0, [r1, #0xe]
	ldr r0, [r5, #0x68]
	str r5, [r0, #0x50]
	ldr r0, [r5, #0x68]
	str r5, [r0, #0x68]
_08025F46:
	ldrb r0, [r5, #0xa]
	movs r1, #2
	orrs r1, r0
	movs r0, #0x13
	bl sub_0804AA60
	adds r2, r0, #0
	str r2, [r5, #0x50]
	cmp r2, #0
	beq _08025F8C
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r5, #0x50]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x68]
	ldrh r0, [r0, #0x32]
	subs r0, #0x12
	strh r0, [r1, #0x32]
	ldr r1, [r5, #0x50]
	movs r0, #0x12
	strb r0, [r1, #0xe]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x68]
	str r0, [r1, #0x50]
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x54]
	ldr r0, [r5, #0x50]
	str r5, [r0, #0x68]
_08025F8C:
	ldrb r0, [r5, #0xa]
	adds r1, r7, #0
	orrs r1, r0
	movs r0, #0x13
	bl sub_0804AA60
	adds r2, r0, #0
	str r2, [r5, #0x54]
	cmp r2, #0
	beq _08025FD6
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r5, #0x54]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0x32]
	subs r0, #0xe
	strh r0, [r1, #0x32]
	ldr r1, [r5, #0x54]
	movs r0, #0xe
	strb r0, [r1, #0xe]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r5, #0x54]
	str r5, [r0, #0x54]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
	ldr r0, [r5, #0x54]
	str r5, [r0, #0x68]
_08025FD6:
	movs r0, #0x13
	movs r1, #8
	bl sub_0804AA60
	adds r1, r0, #0
	cmp r1, #0
	beq _08025FE6
	str r5, [r1, #0x54]
_08025FE6:
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #1
	movs r3, #0
	bl sub_080A2988
	adds r1, r0, #0
	cmp r1, #0
	beq _08025FFC
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
_08025FFC:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08026050
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #3
	movs r3, #0
	bl sub_080A2988
	adds r1, r0, #0
	cmp r1, #0
	beq _08026050
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
	b _08026050
	.align 2, 0
_0802601C: .4byte gUnk_080FD238
_08026020:
	ldr r1, [r5, #0x48]
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #1]
	strb r0, [r1, #1]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #2]
	strb r0, [r1, #2]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #3]
	strb r0, [r1, #3]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #4]
	strb r0, [r1, #4]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #5]
	strb r0, [r1, #5]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #6]
	strb r0, [r1, #6]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #7]
	strb r0, [r1, #7]
_08026050:
	ldrb r1, [r5, #0xa]
	movs r0, #3
	ands r0, r1
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08026060
_0802605E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08026060
sub_08026060: @ 0x08026060
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802608C @ =gUnk_080CC1C8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, #4
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_0802608C: .4byte gUnk_080CC1C8

	thumb_func_start sub_08026090
sub_08026090: @ 0x08026090
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080260EA
	ldr r0, [r4, #0x54]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080260B8
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xfa
	strb r0, [r4, #0xe]
	ldr r0, _080260D4 @ =gUnk_03000BF0
	str r4, [r0, #0x30]
_080260B8:
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x10]
	strb r1, [r4, #0x10]
	ldr r1, [r0, #0x48]
	str r1, [r4, #0x48]
	adds r0, #0x3f
	ldrb r1, [r0]
	cmp r1, #0x7e
	bne _080260D8
	adds r0, r4, #0
	adds r0, #0x3f
	strb r1, [r0]
	b _080260E0
	.align 2, 0
_080260D4: .4byte gUnk_03000BF0
_080260D8:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x7c
	strb r0, [r1]
_080260E0:
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	bl sub_0806FA24
	b _08026106
_080260EA:
	bl sub_08078B48
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08026106
	ldr r1, _08026108 @ =gUnk_03000BF0
	ldr r0, _0802610C @ =gLinkEntity
	str r0, [r1, #0x30]
	bl sub_0805E780
_08026106:
	pop {r4, pc}
	.align 2, 0
_08026108: .4byte gUnk_03000BF0
_0802610C: .4byte gLinkEntity

	thumb_func_start sub_08026110
sub_08026110: @ 0x08026110
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, _08026144 @ =gUnk_080CC1DC
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08026160
	ldrb r1, [r2, #5]
	cmp r1, #0
	beq _08026160
	ldrb r0, [r6, #0xd]
	cmp r0, #8
	bne _08026148
	adds r0, r1, #0
	subs r0, #0x40
	b _0802614C
	.align 2, 0
_08026144: .4byte gUnk_080CC1DC
_08026148:
	adds r0, r1, #0
	subs r0, #0x20
_0802614C:
	strb r0, [r2, #5]
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #5
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08026160
	movs r0, #0
	strb r0, [r1, #5]
_08026160:
	adds r2, r6, #0
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #0x76
	adds r1, r1, r6
	mov ip, r1
	adds r7, r6, #0
	adds r7, #0x7a
	cmp r0, #0
	beq _08026230
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	bne _080261D2
	ldrb r1, [r2]
	lsls r1, r1, #0xc
	ldr r0, [r6, #0x74]
	subs r0, r0, r1
	str r0, [r6, #0x74]
	ldrb r1, [r2]
	lsls r1, r1, #0xc
	ldr r0, [r6, #0x78]
	subs r0, r0, r1
	str r0, [r6, #0x78]
	mov r0, ip
	ldrh r2, [r0]
	adds r4, r6, #0
	adds r4, #0x82
	ldrb r1, [r4]
	adds r3, r6, #0
	adds r3, #0x84
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	bgt _080261AA
	mov r0, ip
	strh r1, [r0]
_080261AA:
	ldrh r2, [r7]
	ldrb r1, [r4]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	bgt _080261BA
	strh r1, [r7]
_080261BA:
	mov r1, ip
	ldrh r2, [r1]
	ldrb r1, [r4]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	bgt _08026230
	ldrh r0, [r7]
	cmp r0, r1
	bgt _08026230
	b _08026228
_080261D2:
	ldrb r1, [r2]
	lsls r1, r1, #0xc
	ldr r0, [r6, #0x74]
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldrb r1, [r2]
	lsls r1, r1, #0xc
	ldr r0, [r6, #0x78]
	adds r0, r0, r1
	str r0, [r6, #0x78]
	mov r0, ip
	ldrh r2, [r0]
	adds r4, r6, #0
	adds r4, #0x81
	ldrb r1, [r4]
	adds r3, r6, #0
	adds r3, #0x84
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	blt _08026202
	mov r0, ip
	strh r1, [r0]
_08026202:
	ldrh r2, [r7]
	ldrb r1, [r4]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	blt _08026212
	strh r1, [r7]
_08026212:
	mov r1, ip
	ldrh r2, [r1]
	ldrb r1, [r4]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	adds r1, r1, r0
	cmp r2, r1
	blt _08026230
	ldrh r0, [r7]
	cmp r0, r1
	blt _08026230
_08026228:
	ldrb r0, [r6, #0xe]
	movs r1, #1
	eors r0, r1
	strb r0, [r6, #0xe]
_08026230:
	ldr r5, [r6, #0x48]
	mov r0, ip
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #3
	subs r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #6]
	ldr r5, [r6, #0x48]
	ldrh r1, [r7]
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #7]
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08026268
	adds r0, r6, #0
	bl sub_0800445C
_08026268:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802626C
sub_0802626C: @ 0x0802626C
	push {lr}
	ldr r2, _0802629C @ =gUnk_02034490
	movs r1, #1
	strb r1, [r2]
	ldr r2, _080262A0 @ =gUnk_080CC20C
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldrb r1, [r1, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, _080262A4 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x17
	beq _08026298
	cmp r0, #0xf
	beq _08026298
	bl sub_08078B48
_08026298:
	pop {pc}
	.align 2, 0
_0802629C: .4byte gUnk_02034490
_080262A0: .4byte gUnk_080CC20C
_080262A4: .4byte gLinkEntity

	thumb_func_start sub_080262A8
sub_080262A8: @ 0x080262A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x82
	movs r6, #0
	movs r0, #0x90
	strb r0, [r1]
	subs r1, #1
	movs r0, #0xb0
	strb r0, [r1]
	subs r1, #1
	movs r0, #8
	strb r0, [r1]
	movs r5, #1
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	bl sub_080276F4
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080262EC
	ldr r1, _080262E8 @ =gUnk_03003F80
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r5, [r0, #3]
	b _0802631A
	.align 2, 0
_080262E8: .4byte gUnk_03003F80
_080262EC:
	adds r0, r4, #0
	adds r0, #0x7c
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #3]
	ldr r0, _0802631C @ =gLinkEntity
	strb r6, [r0, #0x14]
	ldr r0, _08026320 @ =gUnk_03000BF0
	str r4, [r0, #0x30]
	strb r5, [r0, #0xe]
	ldr r0, _08026324 @ =0x00004022
	movs r1, #0xb2
	lsls r1, r1, #2
	movs r2, #1
	bl sub_0800015E
_0802631A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802631C: .4byte gLinkEntity
_08026320: .4byte gUnk_03000BF0
_08026324: .4byte 0x00004022

	thumb_func_start sub_08026328
sub_08026328: @ 0x08026328
	push {lr}
	adds r2, r0, #0
	ldr r0, _08026354 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x17
	beq _08026352
	adds r1, r2, #0
	adds r1, #0x7d
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	movs r0, #0xa
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
_08026352:
	pop {pc}
	.align 2, 0
_08026354: .4byte gLinkEntity

	thumb_func_start sub_08026358
sub_08026358: @ 0x08026358
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _08026398 @ =gLinkEntity
	ldrb r0, [r4, #0xc]
	cmp r0, #0xf
	beq _080263B0
	adds r1, r3, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080263A0
	adds r0, r3, #0
	adds r0, #0x7c
	strb r2, [r0]
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	strb r2, [r4, #0x14]
	ldr r1, _0802639C @ =gUnk_03000BF0
	str r3, [r1, #0x30]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _080263B0
	.align 2, 0
_08026398: .4byte gLinkEntity
_0802639C: .4byte gUnk_03000BF0
_080263A0:
	cmp r2, #0x60
	bhi _080263B0
	cmp r2, #0x5b
	bhi _080263AC
	movs r0, #4
	b _080263AE
_080263AC:
	movs r0, #2
_080263AE:
	strb r0, [r4, #0x14]
_080263B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080263B4
sub_080263B4: @ 0x080263B4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x7d
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	subs r0, #1
	mov r1, ip
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xff
	bne _08026410
	ldr r2, _08026400 @ =gUnk_080CC234
	adds r3, r4, #0
	adds r3, #0x7c
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	ldrb r1, [r0]
	mov r0, ip
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0xff
	bne _08026404
	movs r0, #0x78
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _08026410
	.align 2, 0
_08026400: .4byte gUnk_080CC234
_08026404:
	ldrb r2, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0x49
	movs r3, #0
	bl sub_080A2988
_08026410:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08026414
sub_08026414: @ 0x08026414
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08026474
	ldr r0, _08026478 @ =0x0000FF40
	strh r0, [r7, #0x36]
	ldr r6, [r7, #0x54]
	ldr r5, [r7, #0x50]
	ldr r4, [r7, #0x68]
	ldrb r2, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r3, #1
	orrs r0, r3
	strb r0, [r4, #0x18]
	ldrb r2, [r5, #0x18]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r5, #0x18]
	ldrb r2, [r6, #0x18]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r6, #0x18]
	ldrb r0, [r7, #0x18]
	ands r1, r0
	orrs r1, r3
	strb r1, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	movs r0, #0xd1
	lsls r0, r0, #1
	bl sub_080A3268
_08026474:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026478: .4byte 0x0000FF40

	thumb_func_start sub_0802647C
sub_0802647C: @ 0x0802647C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	bl sub_08003FC4
	cmp r0, #0
	bne _080264A6
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
	ldr r0, _080264A8 @ =0x000001A1
	bl sub_080A3268
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_080264A6:
	pop {r4, pc}
	.align 2, 0
_080264A8: .4byte 0x000001A1

	thumb_func_start sub_080264AC
sub_080264AC: @ 0x080264AC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xd0
	movs r2, #8
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #6
	beq _080264D2
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_08027D20
_080264D2:
	pop {r4, pc}

	thumb_func_start sub_080264D4
sub_080264D4: @ 0x080264D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080279E8
	cmp r0, #0
	beq _08026504
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl sub_080276F4
	movs r0, #0x2e
	bl sub_080A3268
_08026504:
	adds r0, r4, #0
	bl sub_080277F8
	pop {r4, pc}

	thumb_func_start sub_0802650C
sub_0802650C: @ 0x0802650C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x54]
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802652C
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	ldr r1, _08026534 @ =gUnk_03000BF0
	ldr r0, _08026538 @ =gLinkEntity
	str r0, [r1, #0x30]
_0802652C:
	adds r0, r2, #0
	bl sub_08027870
	pop {pc}
	.align 2, 0
_08026534: .4byte gUnk_03000BF0
_08026538: .4byte gLinkEntity

	thumb_func_start sub_0802653C
sub_0802653C: @ 0x0802653C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08026578 @ =gUnk_03000BF0
	ldrh r5, [r1]
	cmp r5, #0
	bne _08026572
	movs r0, #4
	strb r0, [r1, #0xe]
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #4
	bl sub_08027B98
	adds r0, r4, #0
	movs r1, #0
	bl sub_08027548
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_080042AC
	ldr r0, _0802657C @ =gUnk_02034490
	strb r5, [r0]
_08026572:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_08026578: .4byte gUnk_03000BF0
_0802657C: .4byte gUnk_02034490

	thumb_func_start sub_08026580
sub_08026580: @ 0x08026580
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08027AA4
	adds r7, r5, #0
	adds r7, #0x84
	ldr r0, [r7]
	ldrb r0, [r0, #1]
	cmp r0, #0x40
	bne _0802659C
	adds r0, r5, #0
	bl sub_08027BBC
	b _0802662C
_0802659C:
	adds r1, r5, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r1, #0
	cmp r0, #0xff
	bne _08026626
	movs r0, #0
	strh r0, [r5, #0x24]
	movs r0, #2
	strb r0, [r5, #0xd]
	adds r4, r5, #0
	adds r4, #0x7c
	movs r0, #0x3c
	strb r0, [r4]
	ldr r1, _080265E4 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
	ldr r0, [r7]
	ldrb r0, [r0, #4]
	adds r2, r4, #0
	cmp r0, #2
	bne _080265E8
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0x48
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	b _080265EE
	.align 2, 0
_080265E4: .4byte gLinkEntity
_080265E8:
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0x10
_080265EE:
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	movs r0, #0xa0
	ands r0, r1
	cmp r0, #0
	beq _08026608
	movs r0, #0
	strb r0, [r6]
	strb r0, [r2]
	b _08026626
_08026608:
	bl sub_08000E50
	ldr r2, _08026630 @ =gUnk_080CC24F
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r1, r0, #1
	strb r1, [r6]
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _08026626
	lsls r0, r1, #1
	strb r0, [r6]
_08026626:
	adds r0, r5, #0
	bl sub_08027870
_0802662C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026630: .4byte gUnk_080CC24F

	thumb_func_start sub_08026634
sub_08026634: @ 0x08026634
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08027AA4
	cmp r0, #0
	beq _08026644
	b _08026748
_08026644:
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080266D6
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08026748
	adds r1, #8
	ldr r2, [r1]
	ldrb r3, [r2, #1]
	movs r0, #0x40
	ands r0, r3
	adds r5, r1, #0
	cmp r0, #0
	bne _080266B0
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0802668C
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r1, [r5]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080266B0
	movs r0, #1
	b _080266AE
_0802668C:
	movs r0, #1
	strb r0, [r2, #1]
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _080266B0
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080266B0
	ldr r1, [r5]
	movs r0, #4
	strb r0, [r1]
	ldr r1, [r5]
	movs r0, #0x81
_080266AE:
	strb r0, [r1, #1]
_080266B0:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xd]
	ldr r0, [r5]
	strb r1, [r0, #3]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0x90
	movs r3, #0xc
	bl sub_08027B98
	movs r0, #0xe0
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _08026742
_080266D6:
	ldr r0, _08026700 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080266EC
	ldr r1, _08026704 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_080266EC:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _08026708
	movs r0, #0x80
	lsls r0, r0, #1
	b _0802670A
	.align 2, 0
_08026700: .4byte gUnk_030010A0
_08026704: .4byte gLinkEntity
_08026708:
	movs r0, #0xc0
_0802670A:
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802672C
	ldr r0, _0802674C @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08026726
	movs r0, #0xcf
	lsls r0, r0, #1
	bl sub_080A3268
_08026726:
	adds r0, r4, #0
	bl sub_080AEF88
_0802672C:
	adds r0, r4, #0
	adds r0, #0x76
	adds r1, r4, #0
	adds r1, #0x81
	ldrh r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08026742
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_08026742:
	adds r0, r4, #0
	bl sub_08027870
_08026748:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_0802674C: .4byte gUnk_030010A0

	thumb_func_start sub_08026750
sub_08026750: @ 0x08026750
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08027AA4
	ldr r1, _08026770 @ =gUnk_080CC258
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08026770: .4byte gUnk_080CC258

	thumb_func_start sub_08026774
sub_08026774: @ 0x08026774
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	adds r1, #0x83
	ldr r0, [r4, #0x50]
	adds r0, #0x83
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r1, r0
	ldr r0, [r4, #0x68]
	adds r0, #0x83
	ldrb r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _080267C6
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080267CC
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x40
	bl sub_08027B98
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #3]
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl sub_080042AC
_080267C6:
	adds r0, r4, #0
	bl sub_080277F8
_080267CC:
	add sp, #4
	pop {r4, pc}

	thumb_func_start sub_080267D0
sub_080267D0: @ 0x080267D0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0xf0
	movs r2, #8
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #1
	beq _08026802
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0xc0
	movs r3, #0x20
	bl sub_08027B98
	ldr r0, [r4, #0x54]
	movs r1, #2
	bl sub_080042AC
_08026802:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08026808
sub_08026808: @ 0x08026808
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x54]
	ldr r7, [r4, #0x68]
	ldr r6, [r4, #0x50]
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r0, [r1]
	cmp r0, #0xbf
	bhi _08026820
	adds r0, #4
	strh r0, [r1]
_08026820:
	adds r5, r2, #0
	adds r5, #0x7a
	ldrh r0, [r5]
	cmp r0, #0xb0
	bls _08026830
	subs r0, #8
	strh r0, [r5]
	b _08026860
_08026830:
	ldr r1, _08026868 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r1, #0xa0
	strh r1, [r5]
	adds r0, r6, #0
	adds r0, #0x7a
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x7a
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080276F4
	movs r0, #0xd1
	lsls r0, r0, #1
	bl sub_080A3268
_08026860:
	adds r0, r4, #0
	bl sub_080277F8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026868: .4byte gLinkEntity

	thumb_func_start sub_0802686C
sub_0802686C: @ 0x0802686C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	bl sub_08003FC4
	adds r5, r0, #0
	cmp r5, #0
	beq _08026888
	adds r0, r4, #0
	bl sub_080AEF88
	b _080268BE
_08026888:
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
	movs r0, #5
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r5, [r0, #3]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x80
	bl sub_08027B98
	adds r0, r4, #0
	bl sub_08027870
	ldr r0, [r4, #0x54]
	movs r1, #3
	bl sub_080042AC
	ldr r0, _080268C4 @ =0x000001A1
	bl sub_080A3268
_080268BE:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_080268C4: .4byte 0x000001A1

	thumb_func_start sub_080268C8
sub_080268C8: @ 0x080268C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08027AA4
	ldr r1, _080268E8 @ =gUnk_080CC264
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080268E8: .4byte gUnk_080CC264

	thumb_func_start sub_080268EC
sub_080268EC: @ 0x080268EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xd0
	movs r2, #8
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08026912
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_08027D20
_08026912:
	pop {r4, pc}

	thumb_func_start sub_08026914
sub_08026914: @ 0x08026914
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_080279E8
	cmp r0, #0
	beq _08026942
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #4
	bl sub_08027B98
	adds r0, r4, #0
	movs r1, #0
	bl sub_08027548
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_080042AC
_08026942:
	adds r0, r4, #0
	bl sub_080277F8
	add sp, #4
	pop {r4, pc}

	thumb_func_start sub_0802694C
sub_0802694C: @ 0x0802694C
	push {lr}
	ldr r2, _08026964 @ =gUnk_080CC26C
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldrb r1, [r1, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08026964: .4byte gUnk_080CC26C

	thumb_func_start sub_08026968
sub_08026968: @ 0x08026968
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7d
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0802698C
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _080269C0
_0802698C:
	ldr r6, [r2, #0x54]
	ldr r4, [r2, #0x68]
	ldr r5, [r2, #0x50]
	ldrb r1, [r2, #0x15]
	movs r0, #0x10
	ands r0, r1
	ldr r3, _080269C8 @ =0xFFFFFF00
	cmp r0, #0
	beq _080269A2
	movs r3, #0x80
	lsls r3, r3, #1
_080269A2:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
_080269C0:
	adds r0, r2, #0
	bl sub_08027870
	pop {r4, r5, r6, pc}
	.align 2, 0
_080269C8: .4byte 0xFFFFFF00

	thumb_func_start sub_080269CC
sub_080269CC: @ 0x080269CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r7, #0
	ldr r5, [r6, #0x54]
	ldr r0, [r6, #0x68]
	mov sl, r0
	ldr r1, [r6, #0x50]
	mov sb, r1
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	mov r8, r1
	cmp r0, #0
	beq _080269F8
	ldr r0, _08026A18 @ =0xFFFFFD00
	mov r8, r0
_080269F8:
	mov r0, sl
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x20
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _08026A1C
	mov r1, sl
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A1E
	.align 2, 0
_08026A18: .4byte 0xFFFFFD00
_08026A1C:
	movs r7, #1
_08026A1E:
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x44
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x87
	bhi _08026A3C
	mov r1, sb
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A3E
_08026A3C:
	adds r7, #1
_08026A3E:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r4, r0, #0
	adds r4, #0x40
	adds r0, #0x20
	cmp r0, #0x40
	bls _08026A7E
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026A6C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	beq _08026A7E
	adds r0, r5, #0
	movs r1, #6
	bl sub_080042AC
	b _08026A7E
_08026A6C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #5
	beq _08026A7E
	adds r0, r5, #0
	movs r1, #5
	bl sub_080042AC
_08026A7E:
	lsls r0, r4, #0x18
	cmp r0, #0
	blt _08026A90
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	b _08026A92
_08026A90:
	adds r7, #1
_08026A92:
	cmp r7, #3
	beq _08026A98
	b _08026BB8
_08026A98:
	ldrb r1, [r6, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #0x10]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
	movs r0, #0x20
	movs r1, #0
	bl sub_08080964
	ldr r0, _08026B24 @ =0x0000010B
	bl sub_080A3268
	adds r0, r6, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	adds r4, r0, #0
	cmp r4, #0
	beq _08026B4E
	movs r0, #0xc9
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	ldrb r1, [r6, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026B28
	ldrh r0, [r4, #0x2e]
	subs r0, #0x38
	b _08026B2C
	.align 2, 0
_08026B24: .4byte 0x0000010B
_08026B28:
	ldrh r0, [r4, #0x2e]
	adds r0, #0x38
_08026B2C:
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	movs r1, #0x3e
	bl sub_080ADF80
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _08026B46
	adds r0, r4, #0
	movs r1, #0x2b
	bl sub_0801D040
	b _08026B4E
_08026B46:
	adds r0, r4, #0
	movs r1, #0x2c
	bl sub_0801D040
_08026B4E:
	ldr r3, [r6, #0x50]
	ldr r2, [r6, #0x54]
	ldr r0, [r6, #0x68]
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	adds r2, #0x84
	strb r1, [r2]
	adds r3, #0x84
	strb r1, [r3]
	mov r0, sb
	adds r0, #0x7a
	movs r1, #0x98
	strh r1, [r0]
	mov r0, sl
	adds r0, #0x7a
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x7a
	strh r1, [r0]
	bl sub_08000E50
	ldr r2, _08026BB4 @ =gUnk_080CC278
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r7, r6, #0
	adds r7, #0x7c
	strb r0, [r7]
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #0xa
	movs r3, #0
	bl sub_080A2988
	adds r4, r0, #0
	cmp r4, #0
	beq _08026BD4
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r7]
	str r0, [r1]
	b _08026BD4
	.align 2, 0
_08026BB4: .4byte gUnk_080CC278
_08026BB8:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0xef
	bhi _08026BD4
	ldr r0, [r5, #0x74]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x74]
	ldr r0, [r5, #0x78]
	ldr r1, _08026BE4 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r5, #0x78]
_08026BD4:
	adds r0, r6, #0
	bl sub_08027870
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08026BE4: .4byte 0xFFFF8000

	thumb_func_start sub_08026BE8
sub_08026BE8: @ 0x08026BE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	adds r3, r5, #0
	adds r3, #0x3b
	ldrb r1, [r3]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _08026C34
	movs r0, #7
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r2, [r0, #3]
	adds r1, #1
	movs r0, #0x2d
	strb r0, [r1]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08026C30 @ =0x00000155
	bl sub_080A3268
	b _08026C38
	.align 2, 0
_08026C30: .4byte 0x00000155
_08026C34:
	subs r0, #1
	strb r0, [r1]
_08026C38:
	adds r0, r4, #0
	bl sub_08027870
	pop {r4, r5, pc}

	thumb_func_start sub_08026C40
sub_08026C40: @ 0x08026C40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x54]
	ldr r7, [r5, #0x68]
	ldr r6, [r5, #0x50]
	adds r2, r5, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0
	beq _08026CCC
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _08026C9C
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08026C82
	ldr r0, [r4, #0x74]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x78]
	b _08026E12
_08026C82:
	ldr r0, [r4, #0x74]
	ldr r3, _08026C94 @ =0xFFFE0000
	adds r0, r0, r3
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x78]
	ldr r1, _08026C98 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x78]
	b _08026E12
	.align 2, 0
_08026C94: .4byte 0xFFFE0000
_08026C98: .4byte 0xFFFF0000
_08026C9C:
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026CBA
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	beq _08026CCC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080042AC
	b _08026CCC
_08026CBA:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #7
	beq _08026CCC
	adds r0, r4, #0
	movs r1, #7
	bl sub_080042AC
_08026CCC:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _08026CF0
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	ldr r2, _08026CEC @ =0xFFFFFD00
	cmp r0, #0
	beq _08026D00
	movs r2, #0xc0
	lsls r2, r2, #2
	b _08026D00
	.align 2, 0
_08026CEC: .4byte 0xFFFFFD00
_08026CF0:
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	ldr r2, _08026D30 @ =0xFFFFFB80
	cmp r0, #0
	beq _08026D00
	movs r2, #0x90
	lsls r2, r2, #3
_08026D00:
	adds r0, r7, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08026D34
	adds r1, r7, #0
	adds r1, #0x82
	lsls r0, r2, #1
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	b _08026D7E
	.align 2, 0
_08026D30: .4byte 0xFFFFFB80
_08026D34:
	adds r0, r7, #0
	adds r0, #0x82
	movs r1, #0
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08026D60
	adds r1, r6, #0
	adds r1, #0x82
	lsls r0, r2, #1
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	b _08026D7E
_08026D60:
	adds r0, r6, #0
	adds r0, #0x82
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08026D84
	adds r1, r4, #0
	adds r1, #0x82
	lsls r0, r2, #1
	ldrh r2, [r1]
_08026D7E:
	adds r0, r0, r2
	strh r0, [r1]
	b _08026D8A
_08026D84:
	adds r0, r4, #0
	adds r0, #0x82
	strh r1, [r0]
_08026D8A:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _08026DA4
	ldr r0, [r4, #0x74]
	ldr r3, _08026DA0 @ =0xFFFC0000
	adds r0, r0, r3
	str r0, [r4, #0x74]
	b _08026DA8
	.align 2, 0
_08026DA0: .4byte 0xFFFC0000
_08026DA4:
	movs r0, #0xa0
	strh r0, [r1]
_08026DA8:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0x9f
	bhi _08026DBE
	ldr r0, [r4, #0x78]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x78]
	b _08026E0C
_08026DBE:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	bl sub_080276F4
	adds r0, r4, #0
	adds r0, #0x7d
	movs r2, #0
	strb r2, [r0]
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08026DEE
	adds r1, r6, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
_08026DEE:
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #4
	mov r3, r8
	strb r0, [r3]
	strb r2, [r6, #0xf]
	strb r2, [r7, #0xf]
	strb r2, [r4, #0xf]
	str r2, [sp]
	adds r0, r5, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #0x10
	bl sub_08027B98
_08026E0C:
	adds r0, r5, #0
	bl sub_08027870
_08026E12:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08026E1C
sub_08026E1C: @ 0x08026E1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	adds r6, r0, #0
	cmp r6, #0
	bne _08026EE0
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xf]
	ldr r1, [r4, #0x50]
	ldrb r1, [r1, #0xf]
	ldr r2, [r4, #0x68]
	adds r0, r0, r1
	ldrb r2, [r2, #0xf]
	adds r0, r0, r2
	cmp r0, #0xa
	ble _08026EF2
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	mov r8, r1
	movs r7, #0
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08027C54
	adds r5, r4, #0
	adds r5, #0x84
	cmp r0, #0
	beq _08026E72
	ldr r1, [r5]
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	ldr r0, [r4, #0x54]
	adds r0, #0x45
	movs r1, #0xff
	strb r1, [r0]
_08026E72:
	ldr r1, [r5]
	ldrb r0, [r1, #4]
	cmp r0, #3
	bne _08026EA0
	adds r0, r4, #0
	adds r0, #0x45
	strb r6, [r0]
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	ldr r3, [r4, #0x54]
	ldr r2, [r4, #0x50]
	ldr r0, [r4, #0x68]
	strb r1, [r0, #0x10]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	strb r0, [r3, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	b _08026F14
_08026EA0:
	movs r0, #4
	strb r0, [r1]
	ldr r1, [r5]
	movs r0, #0x81
	strb r0, [r1, #1]
	ldrb r0, [r4, #0x10]
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x7d
	strb r0, [r1]
	movs r0, #0xb
	strb r0, [r4, #0xd]
	ldr r0, [r5]
	strb r6, [r0, #3]
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_080042AC
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x80
	bl sub_08027B98
	ldr r1, [r5]
	movs r0, #0x21
	strb r0, [r1, #1]
	b _08026EF2
_08026EE0:
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, [r1]
	str r2, [r0, #8]
	ldr r0, [r1]
	strb r2, [r0, #6]
_08026EF2:
	adds r0, r4, #0
	bl sub_08027C54
	cmp r0, #0
	beq _08026F14
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _08026F14
	adds r0, r4, #0
	movs r1, #0x3f
	bl sub_08027C7C
	bl sub_08078B48
_08026F14:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08026F1C
sub_08026F1C: @ 0x08026F1C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7c
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08026F70
	adds r0, r4, #0
	bl sub_080279E8
	cmp r0, #0
	beq _08026F68
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r2, #0
	strb r2, [r0, #3]
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5]
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0x80
	bl sub_08027B98
	ldrb r0, [r5]
	cmp r0, #2
	bne _08026F68
	adds r0, r4, #0
	movs r1, #0
	bl sub_08027548
_08026F68:
	adds r0, r4, #0
	bl sub_080277F8
	b _08026FA0
_08026F70:
	adds r0, r4, #0
	movs r1, #0xf0
	movs r2, #0x10
	bl sub_080277B8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08026FA0
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0xc0
	movs r3, #0x20
	bl sub_08027B98
_08026FA0:
	add sp, #4
	pop {r4, r5, pc}

	thumb_func_start sub_08026FA4
sub_08026FA4: @ 0x08026FA4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r0, [r4, #0x10]
	movs r5, #0x7f
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r4, #0x10]
	ldr r3, [r4, #0x54]
	ldr r2, [r4, #0x50]
	ldr r0, [r4, #0x68]
	strb r1, [r0, #0x10]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	strb r0, [r3, #0x10]
	adds r3, r4, #0
	adds r3, #0x7c
	ldrb r0, [r3]
	cmp r0, #0
	beq _08026FD2
	movs r0, #1
	strb r0, [r3]
_08026FD2:
	ldr r2, [r4, #0x54]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0x97
	bhi _08026FFE
	movs r1, #0x80
	lsls r1, r1, #9
	ldrb r0, [r3]
	lsls r1, r0
	ldr r0, [r2, #0x78]
	adds r0, r0, r1
	str r0, [r2, #0x78]
	ldr r2, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldrb r3, [r3]
	lsls r1, r3
	ldr r0, [r2, #0x74]
	subs r0, r0, r1
	str r0, [r2, #0x74]
	b _0802705C
_08026FFE:
	movs r0, #7
	strb r0, [r4, #0xd]
	ldrb r1, [r2, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #3]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x2d
	strb r0, [r1]
	ldr r0, _08027044 @ =0x00000155
	bl sub_080A3268
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08027048
	ldr r1, [r4, #0x54]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802705C
	adds r0, r1, #0
	movs r1, #8
	bl sub_080042AC
	b _0802705C
	.align 2, 0
_08027044: .4byte 0x00000155
_08027048:
	ldr r1, [r4, #0x54]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #7
	beq _0802705C
	adds r0, r1, #0
	movs r1, #7
	bl sub_080042AC
_0802705C:
	adds r0, r4, #0
	bl sub_08027870
	pop {r4, r5, pc}

	thumb_func_start sub_08027064
sub_08027064: @ 0x08027064
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r6, [r5, #0x54]
	ldr r0, [r5, #0x68]
	mov sb, r0
	ldr r1, [r5, #0x50]
	mov r8, r1
	movs r0, #0x60
	strh r0, [r5, #0x24]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08027098
	ldr r0, _080270C8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08027098
	movs r0, #0x7c
	bl sub_080A3268
_08027098:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r3, [r0]
	ldrb r1, [r3, #3]
	adds r7, r0, #0
	cmp r1, #0
	beq _080270E0
	ldr r0, _080270CC @ =gLinkEntity
	movs r2, #0x32
	ldrsh r4, [r5, r2]
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	cmp r4, r2
	beq _080270E0
	ldr r0, _080270C8 @ =gUnk_030010A0
	ldr r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080270D4
	cmp r4, r2
	ble _080270D0
	strb r1, [r3, #0xc]
	b _080270D4
	.align 2, 0
_080270C8: .4byte gUnk_030010A0
_080270CC: .4byte gLinkEntity
_080270D0:
	movs r0, #0x10
	strb r0, [r3, #0xc]
_080270D4:
	ldr r0, [r7]
	ldrb r0, [r0, #0xc]
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AEF88
_080270E0:
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #1
	bne _080270FC
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0802710E
	movs r0, #0x18
	b _08027110
_080270FC:
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0802710E
	movs r0, #0x18
	b _08027110
_0802710E:
	movs r0, #8
_08027110:
	strb r0, [r5, #0x15]
	ldr r1, [r7]
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08027152
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	ldrh r1, [r1, #0xe]
	cmp r0, r1
	bne _0802714A
	mov r0, r8
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	mov r0, sb
	adds r0, #0x84
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x84
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x7c
	movs r0, #0x1e
	strb r0, [r1]
	ldr r1, [r7]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _080271FE
_0802714A:
	adds r0, r5, #0
	bl sub_080AEF88
	b _080271FE
_08027152:
	adds r0, r6, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080271E6
	mov r0, sb
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080271E6
	mov r0, r8
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080271E6
	adds r1, r5, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080271FE
	mov r0, r8
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	mov r0, sb
	adds r0, #0x84
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r3, #0
	ldr r0, [r7]
	ldrb r0, [r0, #3]
	cmp r0, #1
	bls _080271B2
	ldr r0, _080271DC @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	movs r3, #8
	cmp r1, r0
	ble _080271B2
	movs r3, #0x18
_080271B2:
	ldr r2, [r7]
	ldrb r1, [r2, #3]
	cmp r1, #5
	beq _080271C0
	ldrb r0, [r5, #0x15]
	cmp r0, r3
	bne _080271E0
_080271C0:
	movs r4, #0
	movs r0, #6
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #7
	movs r2, #1
	bl sub_080276F4
	ldr r0, [r7]
	strb r4, [r0, #3]
	adds r1, r5, #0
	adds r1, #0x7d
	movs r0, #0xf
	b _080271FC
	.align 2, 0
_080271DC: .4byte gLinkEntity
_080271E0:
	adds r0, r1, #1
	strb r0, [r2, #3]
	b _080271FE
_080271E6:
	ldr r0, [r7]
	ldrb r0, [r0, #3]
	cmp r0, #4
	beq _080271F6
	adds r1, r5, #0
	adds r1, #0x7c
	movs r0, #0x1e
	b _080271FC
_080271F6:
	adds r1, r5, #0
	adds r1, #0x7c
	movs r0, #0x3c
_080271FC:
	strb r0, [r1]
_080271FE:
	adds r0, r5, #0
	bl sub_08027870
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802720C
sub_0802720C: @ 0x0802720C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #0xc
	bhi _080272CA
	lsls r0, r0, #2
	ldr r1, _08027228 @ =_0802722C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027228: .4byte _0802722C
_0802722C: @ jump table
	.4byte _080272C4 @ case 0
	.4byte _08027260 @ case 1
	.4byte _08027260 @ case 2
	.4byte _0802726E @ case 3
	.4byte _080272AA @ case 4
	.4byte _0802726E @ case 5
	.4byte _080272CA @ case 6
	.4byte _080272CA @ case 7
	.4byte _08027282 @ case 8
	.4byte _080272CA @ case 9
	.4byte _080272A0 @ case 10
	.4byte _080272CA @ case 11
	.4byte _08027260 @ case 12
_08027260:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0xa0
	strh r0, [r1]
	subs r1, #4
	strh r0, [r1]
	b _080272AA
_0802726E:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	beq _080272CA
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0
	strb r0, [r1]
	b _080272AA
_08027282:
	ldrb r0, [r4, #0xf]
	cmp r0, #3
	bhi _080272CA
	adds r0, r4, #0
	bl sub_0802757C
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080272CA
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	b _080272CA
_080272A0:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0
	bne _080272B2
_080272AA:
	adds r0, r4, #0
	bl sub_0802757C
	b _080272CA
_080272B2:
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r1]
	cmp r0, #0
	beq _080272CA
	movs r0, #0
	strb r0, [r2]
	strb r0, [r1]
	b _080272CA
_080272C4:
	adds r0, r4, #0
	bl sub_0802757C
_080272CA:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x34]
	str r0, [r4, #0x34]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080272D4
sub_080272D4: @ 0x080272D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x50]
	ldrb r0, [r0, #0xd]
	cmp r0, #0xc
	bls _080272E2
	b _08027532
_080272E2:
	lsls r0, r0, #2
	ldr r1, _080272EC @ =_080272F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080272EC: .4byte _080272F0
_080272F0: @ jump table
	.4byte _08027508 @ case 0
	.4byte _08027324 @ case 1
	.4byte _08027324 @ case 2
	.4byte _08027332 @ case 3
	.4byte _0802733E @ case 4
	.4byte _08027332 @ case 5
	.4byte _08027368 @ case 6
	.4byte _08027532 @ case 7
	.4byte _08027346 @ case 8
	.4byte _08027454 @ case 9
	.4byte _0802748C @ case 10
	.4byte _08027532 @ case 11
	.4byte _08027324 @ case 12
_08027324:
	adds r1, r6, #0
	adds r1, #0x7a
	movs r0, #0xa0
	strh r0, [r1]
	subs r1, #4
	strh r0, [r1]
	b _0802733E
_08027332:
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802733E
	b _08027532
_0802733E:
	adds r0, r6, #0
	bl sub_0802757C
	b _08027532
_08027346:
	ldrb r0, [r6, #0xf]
	cmp r0, #2
	bls _0802734E
	b _08027532
_0802734E:
	adds r0, r6, #0
	bl sub_0802757C
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027360
	b _08027532
_08027360:
	ldrb r0, [r6, #0xf]
	adds r0, #1
	strb r0, [r6, #0xf]
	b _08027532
_08027368:
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #3
	adds r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #6]
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsrs r1, r1, #6
	strb r1, [r5, #7]
	adds r0, r6, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _080273A4
	b _08027532
_080273A4:
	adds r0, r6, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027444
	adds r2, r6, #0
	adds r2, #0x3d
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08027444
	ldr r0, [r6, #0x54]
	ldr r0, [r0, #0x68]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r6, #0x54]
	ldr r0, [r0, #0x50]
	ldrb r1, [r2]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r6, #0x54]
	ldrb r1, [r2]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r6, #0x54]
	bl sub_08027D20
	adds r2, r0, #0
	cmp r2, #0
	beq _08027406
	ldrh r0, [r6, #0x2e]
	adds r0, #1
	strh r0, [r2, #0x2e]
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r0, #0x20
	adds r1, r2, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x62
	strb r1, [r0]
_08027406:
	ldr r0, [r6, #0x54]
	bl sub_08027C54
	cmp r0, #0
	beq _0802741C
	ldr r0, [r6, #0x54]
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #2
	beq _08027428
_0802741C:
	ldr r0, _08027424 @ =0x00000127
	bl sub_080A3268
	b _08027444
	.align 2, 0
_08027424: .4byte 0x00000127
_08027428:
	bl sub_08078B48
	ldr r0, _0802744C @ =gUnk_03000BF0
	ldr r2, [r6, #0x54]
	str r2, [r0, #0x30]
	ldr r1, _08027450 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	movs r0, #9
	strb r0, [r2, #0xd]
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080A3268
_08027444:
	adds r0, r6, #0
	bl sub_08027A60
	b _08027484
	.align 2, 0
_0802744C: .4byte gUnk_03000BF0
_08027450: .4byte gUnk_02034490
_08027454:
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #3
	adds r1, r1, r0
	lsrs r1, r1, #7
	strb r1, [r5, #6]
	ldr r5, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsrs r1, r1, #6
	strb r1, [r5, #7]
_08027484:
	adds r0, r6, #0
	bl sub_0800445C
	b _08027532
_0802748C:
	adds r2, r6, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802749E
	adds r0, r6, #0
	bl sub_0802757C
	b _080274AE
_0802749E:
	adds r1, r6, #0
	adds r1, #0x84
	ldrb r0, [r1]
	cmp r0, #0
	beq _080274AE
	movs r0, #0
	strb r0, [r2]
	strb r0, [r1]
_080274AE:
	adds r2, r6, #0
	adds r2, #0x83
	adds r0, r6, #0
	adds r0, #0x81
	ldrb r1, [r0]
	lsrs r0, r1, #1
	ldrb r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _080274F4
	lsls r0, r2, #0x18
	cmp r0, #0
	ble _080274E0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _08027532
	adds r0, r6, #0
	movs r1, #0xc
	bl sub_080042AC
	b _08027532
_080274E0:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _08027532
	adds r0, r6, #0
	movs r1, #0xb
	bl sub_080042AC
	b _08027532
_080274F4:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08027532
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_080042AC
	b _08027532
_08027508:
	ldr r0, [r6, #0x54]
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #8
	bne _08027532
	adds r0, r6, #0
	bl sub_0802757C
	adds r0, r6, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #1
	bne _08027532
	adds r1, r6, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _08027532
	subs r0, #4
	strb r0, [r1]
_08027532:
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x34]
	str r0, [r6, #0x34]
	adds r1, r6, #0
	adds r1, #0x41
	movs r0, #0
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_080042B8
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08027548
sub_08027548: @ 0x08027548
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xff
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb0
	movs r3, #8
	bl sub_08027B98
	adds r0, r4, #0
	adds r0, #0x7d
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_080276F4
	add sp, #4
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802757C
sub_0802757C: @ 0x0802757C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x7d
	ldrb r1, [r6]
	cmp r1, #0
	beq _080275BA
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080275AE
	ldr r0, [r5, #0x54]
	adds r0, #0x7d
	ldrb r0, [r0]
	movs r1, #0x83
	adds r1, r1, r5
	mov sl, r1
	cmp r0, #0
	beq _08027676
	movs r0, #0
	strb r0, [r6]
	b _08027676
_080275AE:
	subs r0, r1, #1
	strb r0, [r6]
	movs r2, #0x83
	adds r2, r2, r5
	mov sl, r2
	b _08027676
_080275BA:
	movs r0, #0x85
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	mov sb, r1
	cmp r1, #1
	bne _0802761E
	adds r1, r5, #0
	adds r1, #0x82
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x83
	adds r2, r5, #0
	adds r2, #0x81
	movs r4, #0
	ldrsb r4, [r0, r4]
	movs r3, #0
	ldrsb r3, [r2, r3]
	mov r8, r1
	mov sl, r0
	adds r7, r2, #0
	cmp r4, r3
	blt _08027676
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08027616
	ldr r1, [r5, #0x50]
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, #0x86
	ldrh r1, [r1]
	bl __divsi3
	adds r0, #1
	strb r0, [r6]
	b _0802761A
_08027616:
	mov r2, sb
	strb r2, [r6]
_0802761A:
	ldrb r0, [r7]
	b _08027670
_0802761E:
	adds r2, r5, #0
	adds r2, #0x82
	adds r1, r5, #0
	adds r1, #0x86
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x83
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r3, [r0]
	mov r8, r2
	mov sl, r1
	adds r7, r0, #0
	cmn r4, r3
	bgt _08027676
	movs r1, #1
	mov r2, ip
	strb r1, [r2]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0802766A
	ldr r1, [r5, #0x50]
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, #0x86
	ldrh r1, [r1]
	bl __divsi3
	adds r0, #1
	strb r0, [r6]
	b _0802766C
_0802766A:
	strb r1, [r6]
_0802766C:
	ldrb r0, [r7]
	rsbs r0, r0, #0
_08027670:
	lsls r0, r0, #8
	mov r1, r8
	strh r0, [r1]
_08027676:
	ldr r2, [r5, #0x50]
	adds r0, r2, #0
	adds r0, #0x63
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	adds r0, r2, #0
	adds r0, #0x62
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #8
	mov r0, sl
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0806F62C
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080276D2
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x2c]
	str r0, [r1, #0x2c]
	ldr r0, [r5, #0x54]
	ldrb r1, [r0, #0xe]
	lsls r1, r1, #8
	adds r2, r0, #0
	adds r2, #0x83
	ldrb r2, [r2]
	bl sub_0806F62C
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x54]
	ldrb r2, [r1, #0xa]
	bl sub_080279AC
_080276D2:
	ldr r0, [r5, #0x68]
	ldrb r2, [r5, #0xa]
	adds r1, r5, #0
	bl sub_080279AC
	mov r1, sl
	ldrb r0, [r1]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x7f
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080276F4
sub_080276F4: @ 0x080276F4
	push {r4, r5, r6, r7, lr}
	adds r6, r2, #0
	ldr r5, [r0, #0x54]
	ldr r4, [r0, #0x68]
	ldr r0, [r0, #0x50]
	mov ip, r0
	adds r0, #0x84
	movs r2, #0
	strb r2, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	strb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x84
	strb r2, [r0]
	mov r0, ip
	adds r0, #0x7e
	movs r7, #0
	strh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x7e
	strh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x7e
	strh r2, [r0]
	mov r0, ip
	adds r0, #0x7d
	strb r7, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r7, [r0]
	ldr r0, _080277AC @ =gUnk_080CC27C
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r2, [r0]
	adds r3, r5, #0
	adds r3, #0x86
	strh r2, [r3]
	ldrb r0, [r0, #2]
	adds r2, r5, #0
	adds r2, #0x81
	strb r0, [r2]
	ldr r0, _080277B0 @ =gUnk_080CC2BC
	adds r0, r1, r0
	ldrh r2, [r0]
	adds r3, r4, #0
	adds r3, #0x86
	strh r2, [r3]
	ldrb r0, [r0, #2]
	adds r2, r4, #0
	adds r2, #0x81
	strb r0, [r2]
	ldr r0, _080277B4 @ =gUnk_080CC29C
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r2, ip
	adds r2, #0x86
	strh r0, [r2]
	ldrb r0, [r1, #2]
	mov r1, ip
	adds r1, #0x81
	strb r0, [r1]
	cmp r6, #0
	bne _080277AA
	mov r0, ip
	adds r0, #0x85
	strb r7, [r0]
	adds r0, r4, #0
	adds r0, #0x85
	strb r7, [r0]
	adds r0, r5, #0
	adds r0, #0x85
	strb r7, [r0]
	mov r0, ip
	adds r0, #0x82
	strh r6, [r0]
	adds r0, r4, #0
	adds r0, #0x82
	strh r6, [r0]
	adds r0, r5, #0
	adds r0, #0x82
	strh r6, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #7
	ldrh r1, [r2]
	bl __divsi3
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x7d
	strb r0, [r1]
_080277AA:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080277AC: .4byte gUnk_080CC27C
_080277B0: .4byte gUnk_080CC2BC
_080277B4: .4byte gUnk_080CC29C

	thumb_func_start sub_080277B8
sub_080277B8: @ 0x080277B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x54]
	adds r3, r1, #0
	adds r3, #0x7a
	ldrh r0, [r3]
	cmp r4, r0
	bls _080277DC
	adds r0, r0, r2
	strh r0, [r3]
	ldr r0, [r1, #0x74]
	ldr r2, _080277D8 @ =0xFFFE8000
	adds r0, r0, r2
	str r0, [r1, #0x74]
	b _080277F0
	.align 2, 0
_080277D8: .4byte 0xFFFE8000
_080277DC:
	strh r4, [r3]
	adds r1, #0x7c
	movs r0, #8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_080277F0:
	adds r0, r5, #0
	bl sub_080277F8
	pop {r4, r5, pc}

	thumb_func_start sub_080277F8
sub_080277F8: @ 0x080277F8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r3, [r6, #0x54]
	ldr r5, [r6, #0x68]
	ldr r4, [r6, #0x50]
	ldrh r2, [r6, #0x2e]
	strh r2, [r5, #0x2e]
	movs r7, #0xe
	strb r7, [r5, #0xe]
	ldrh r0, [r6, #0x32]
	subs r0, #0xe
	strh r0, [r5, #0x32]
	strh r2, [r4, #0x2e]
	movs r0, #0x7a
	adds r0, r0, r3
	mov ip, r0
	ldrh r1, [r0]
	subs r1, #0xa0
	asrs r1, r1, #4
	movs r0, #0x12
	subs r0, r0, r1
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xe]
	ldrh r0, [r5, #0x32]
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	strh r2, [r3, #0x2e]
	mov r1, ip
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _0802784E
	subs r0, #0xa0
	asrs r0, r0, #2
	movs r1, #0xe
	subs r1, r1, r0
	strb r1, [r3, #0xe]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08027850
	movs r0, #0
	strb r0, [r3, #0xe]
	b _08027850
_0802784E:
	strb r7, [r3, #0xe]
_08027850:
	ldrb r1, [r3, #0xe]
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r3, #0x32]
	ldr r0, [r3, #0x74]
	str r0, [r4, #0x74]
	ldr r0, [r3, #0x78]
	str r0, [r4, #0x78]
	ldr r0, [r3, #0x74]
	str r0, [r5, #0x74]
	ldr r0, [r3, #0x78]
	str r0, [r5, #0x78]
	adds r0, r6, #0
	bl sub_08027984
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08027870
sub_08027870: @ 0x08027870
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, [r7, #0x54]
	ldr r5, [r7, #0x68]
	ldr r6, [r7, #0x50]
	ldr r0, [r4, #0x74]
	str r0, [r6, #0x74]
	ldr r0, [r4, #0x78]
	str r0, [r6, #0x78]
	ldr r0, [r4, #0x74]
	str r0, [r5, #0x74]
	ldr r0, [r4, #0x78]
	str r0, [r5, #0x78]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r6, #0
	adds r1, #0x7f
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _080278C2
	movs r0, #0xe
	b _080278CC
_080278C2:
	ldrh r1, [r1]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #3
	adds r0, #0xe
_080278CC:
	strb r0, [r5, #0xe]
	adds r1, r6, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0xa0
	bls _080278EA
	adds r2, r4, #0
	adds r2, #0x7a
	ldrh r1, [r2]
	subs r1, #0xa0
	asrs r1, r1, #4
	movs r0, #0x12
	subs r0, r0, r1
	strb r0, [r6, #0xe]
	b _080278FA
_080278EA:
	ldrh r1, [r1]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #2
	adds r0, #0x12
	strb r0, [r6, #0xe]
	adds r2, r4, #0
	adds r2, #0x7a
_080278FA:
	adds r0, r2, #0
	ldrh r1, [r0]
	cmp r1, #0xa0
	bls _0802791A
	adds r0, r1, #0
	subs r0, #0xa0
	asrs r0, r0, #2
	movs r1, #0xe
	subs r1, r1, r0
	strb r1, [r4, #0xe]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08027934
	movs r0, #0
	b _08027932
_0802791A:
	cmp r1, #0x7f
	bhi _08027928
	ldrh r1, [r0]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #2
	b _08027930
_08027928:
	ldrh r1, [r2]
	movs r0, #0xa0
	subs r0, r0, r1
	asrs r0, r0, #1
_08027930:
	adds r0, #0xe
_08027932:
	strb r0, [r4, #0xe]
_08027934:
	ldr r0, [r7, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r7, #0x30]
	str r0, [r5, #0x30]
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0806F62C
	ldr r0, [r5, #0x2c]
	str r0, [r6, #0x2c]
	ldr r0, [r5, #0x30]
	str r0, [r6, #0x30]
	ldrb r1, [r6, #0xe]
	lsls r1, r1, #8
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r0, r6, #0
	bl sub_0806F62C
	ldr r0, [r6, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r6, #0x30]
	str r0, [r4, #0x30]
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #8
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r7, #0
	bl sub_08027984
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08027984
sub_08027984: @ 0x08027984
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	ldr r5, [r4, #0x68]
	ldr r6, [r4, #0x50]
	ldrb r2, [r1, #0xa]
	bl sub_080279AC
	ldrb r2, [r5, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080279AC
	ldrb r2, [r6, #0xa]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080279AC
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080279AC
sub_080279AC: @ 0x080279AC
	push {r4, r5, r6, lr}
	mov ip, r1
	movs r3, #4
	subs r3, r3, r2
	ldrh r1, [r1, #0x2e]
	ldrh r4, [r0, #0x2e]
	subs r1, r1, r4
	mov r6, ip
	adds r6, #0x62
	strb r1, [r6]
	mov r2, ip
	ldrh r1, [r2, #0x32]
	ldrh r2, [r0, #0x32]
	adds r0, r2, r3
	subs r1, r1, r0
	mov r5, ip
	adds r5, #0x63
	strb r1, [r5]
	mov r0, ip
	strh r4, [r0, #0x2e]
	adds r2, r2, r3
	strh r2, [r0, #0x32]
	ldr r1, [r0, #0x48]
	ldrb r0, [r6]
	strb r0, [r1]
	mov r2, ip
	ldr r1, [r2, #0x48]
	ldrb r0, [r5]
	strb r0, [r1, #1]
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080279E8
sub_080279E8: @ 0x080279E8
	push {r4, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r4, [r2, #0x54]
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08027A20
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, #0xe
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	subs r1, r1, r0
	cmp r1, #0x80
	bne _08027A58
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r0, #1
	str r0, [sp]
	adds r0, r2, #0
	movs r2, #0xa0
	movs r3, #0x20
	bl sub_08027B98
	b _08027A58
_08027A20:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #0xa0
	bls _08027A30
	subs r0, r1, #4
	b _08027A32
_08027A30:
	movs r0, #0xa0
_08027A32:
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r1, r0, #0
	cmp r2, #0xa0
	bls _08027A44
	subs r0, r2, #4
	b _08027A46
_08027A44:
	movs r0, #0xa0
_08027A46:
	strh r0, [r1]
	ldrh r0, [r3]
	cmp r0, #0xa0
	bne _08027A58
	ldrh r0, [r1]
	cmp r0, #0xa0
	bne _08027A58
	movs r0, #1
	b _08027A5A
_08027A58:
	movs r0, #0
_08027A5A:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08027A60
sub_08027A60: @ 0x08027A60
	push {lr}
	adds r2, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027A78
	ldr r0, [r2, #0x74]
	movs r1, #0x80
	lsls r1, r1, #7
	b _08027A7C
_08027A78:
	ldr r0, [r2, #0x74]
	ldr r1, _08027AA0 @ =0xFFFFC000
_08027A7C:
	adds r0, r0, r1
	str r0, [r2, #0x74]
	adds r3, r2, #0
	adds r3, #0x7c
	ldrb r0, [r3]
	adds r2, r0, #1
	strb r2, [r3]
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x28
	bne _08027A9C
	movs r1, #0x80
	movs r0, #0x80
	ands r2, r0
	eors r2, r1
	strb r2, [r3]
_08027A9C:
	pop {pc}
	.align 2, 0
_08027AA0: .4byte 0xFFFFC000

	thumb_func_start sub_08027AA4
sub_08027AA4: @ 0x08027AA4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08027B94
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08027AC2
	cmp r0, #0x1b
	beq _08027B44
	b _08027B94
_08027AC2:
	movs r0, #0x84
	bl sub_080A3268
	ldrb r3, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #9
	bl sub_080A2988
	ldr r0, _08027B3C @ =0x00000155
	bl sub_080A3268
	adds r0, r5, #0
	adds r0, #0x84
	ldr r4, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #3
	strb r0, [r1]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldrb r0, [r4, #6]
	movs r1, #3
	bl __divsi3
	adds r1, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x15
	ldrb r2, [r4, #5]
	cmp r0, r2
	beq _08027B06
	lsls r0, r1, #3
	strb r0, [r4, #5]
_08027B06:
	movs r0, #0xb4
	str r0, [r4, #8]
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08027B94
	movs r0, #0x40
	strb r0, [r4, #1]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r5, #0xd]
	cmp r0, #2
	bne _08027B2A
	adds r0, r5, #0
	bl sub_08027BBC
_08027B2A:
	adds r0, r5, #0
	bl sub_08027D20
	ldr r0, _08027B40 @ =0x00000127
	bl sub_080A3268
_08027B36:
	movs r0, #1
	b _08027B96
	.align 2, 0
_08027B3C: .4byte 0x00000155
_08027B40: .4byte 0x00000127
_08027B44:
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
	ldr r0, [r5, #0x4c]
	ldrb r0, [r0, #0xa]
	adds r0, #1
	cmp r0, #2
	beq _08027B74
	cmp r0, #2
	bgt _08027B60
	cmp r0, #1
	beq _08027B84
	b _08027B36
_08027B60:
	cmp r0, #3
	bne _08027B36
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x1a
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xe0
	lsls r0, r0, #1
	b _08027B90
_08027B74:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	b _08027B90
_08027B84:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #4
	adds r0, #0xf0
_08027B90:
	strh r0, [r1]
	b _08027B36
_08027B94:
	movs r0, #0
_08027B96:
	pop {r4, r5, pc}

	thumb_func_start sub_08027B98
sub_08027B98: @ 0x08027B98
	push {r4, lr}
	mov ip, r0
	ldr r4, [sp, #8]
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #1
	strb r2, [r0]
	subs r0, #1
	strb r3, [r0]
	cmp r4, #0xff
	beq _08027BB4
	mov r0, ip
	strb r4, [r0, #0xe]
	b _08027BBA
_08027BB4:
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0xe]
_08027BBA:
	pop {r4, pc}

	thumb_func_start sub_08027BBC
sub_08027BBC: @ 0x08027BBC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r0, #0xa
	strb r0, [r6, #0xd]
	adds r5, r6, #0
	adds r5, #0x84
	ldr r0, [r5]
	strb r4, [r0, #1]
	adds r0, r6, #0
	movs r1, #7
	movs r2, #1
	bl sub_080276F4
	ldr r0, [r6, #0x54]
	adds r0, #0x7d
	strb r4, [r0]
	movs r3, #0
	strh r4, [r6, #0x24]
	ldr r0, [r5]
	strb r3, [r0, #3]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r0, [r5]
	ldrh r0, [r0, #0xe]
	cmp r1, r0
	ble _08027C0A
	movs r0, #0x18
	strb r0, [r6, #0x15]
	ldr r2, [r6, #0x54]
	ldr r1, [r6, #0x50]
	ldr r0, [r6, #0x68]
	adds r0, #0x85
	strb r3, [r0]
	adds r1, #0x85
	strb r3, [r1]
	adds r2, #0x85
	strb r3, [r2]
	b _08027C22
_08027C0A:
	movs r0, #8
	strb r0, [r6, #0x15]
	ldr r3, [r6, #0x54]
	ldr r2, [r6, #0x50]
	ldr r0, [r6, #0x68]
	adds r0, #0x85
	movs r1, #1
	strb r1, [r0]
	adds r2, #0x85
	strb r1, [r2]
	adds r3, #0x85
	strb r1, [r3]
_08027C22:
	ldrb r0, [r6, #0x15]
	lsrs r0, r0, #2
	strb r0, [r6, #0x14]
	ldr r0, _08027C44 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _08027C52
	cmp r1, r0
	ble _08027C48
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #0
	b _08027C50
	.align 2, 0
_08027C44: .4byte gLinkEntity
_08027C48:
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #0x10
_08027C50:
	strb r0, [r1, #0xc]
_08027C52:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08027C54
sub_08027C54: @ 0x08027C54
	push {lr}
	ldr r2, _08027C74 @ =gUnk_080CC2DC
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldrb r1, [r1, #4]
	adds r1, r1, r2
	ldr r0, [r0, #0x54]
	adds r0, #0x45
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bhi _08027C78
	movs r0, #0
	b _08027C7A
	.align 2, 0
_08027C74: .4byte gUnk_080CC2DC
_08027C78:
	movs r0, #1
_08027C7A:
	pop {pc}

	thumb_func_start sub_08027C7C
sub_08027C7C: @ 0x08027C7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x54]
	bl sub_08027C9C
	ldr r0, [r4, #0x68]
	adds r1, r5, #0
	bl sub_08027C9C
	ldr r0, [r4, #0x50]
	adds r1, r5, #0
	bl sub_08027C9C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08027C9C
sub_08027C9C: @ 0x08027C9C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08000E50
	ands r0, r4
	cmp r0, #0
	bne _08027D1E
	adds r0, r5, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _08027D1E
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #6]
	subs r0, r0, r1
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	bl sub_08000E50
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #6]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r4, #0x2e]
	adds r1, r1, r0
	strh r1, [r4, #0x2e]
	adds r0, r5, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #7]
	subs r0, r0, r1
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	bl sub_08000E50
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #7]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08027D1E:
	pop {r4, r5, pc}

	thumb_func_start sub_08027D20
sub_08027D20: @ 0x08027D20
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	adds r4, r0, #0
	cmp r4, #0
	beq _08027D66
	movs r0, #0xc9
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x3e
	bl sub_080ADF80
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08027D5E
	adds r0, r4, #0
	movs r1, #0x2b
	bl sub_0801D040
	b _08027D66
_08027D5E:
	adds r0, r4, #0
	movs r1, #0x2c
	bl sub_0801D040
_08027D66:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08027D6C
sub_08027D6C: @ 0x08027D6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08027D88 @ =gUnk_080CC6FC
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08027D88: .4byte gUnk_080CC6FC

	thumb_func_start sub_08027D8C
sub_08027D8C: @ 0x08027D8C
	push {lr}
	ldr r2, _08027DA0 @ =gUnk_080CC714
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08027DA0: .4byte gUnk_080CC714

	thumb_func_start sub_08027DA4
sub_08027DA4: @ 0x08027DA4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, #1
	bne _08027DC4
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x8c
	strb r0, [r2]
	b _08027E0E
_08027DC4:
	ldrb r0, [r4, #0xc]
	cmp r0, #7
	bne _08027DD2
	adds r0, r4, #0
	bl sub_0802810C
	b _08027E0E
_08027DD2:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08027E0E
	movs r1, #0x7f
	ands r1, r2
	cmp r1, #0
	bne _08027E0E
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x5f
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08027E38 @ =gLinkEntity
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
_08027E0E:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027E1C
	movs r0, #0x20
	strb r0, [r4, #0xe]
_08027E1C:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027E2E
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08027E2E:
	ldr r1, _08027E3C @ =gUnk_080CC6FC
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08027E38: .4byte gLinkEntity
_08027E3C: .4byte gUnk_080CC6FC

	thumb_func_start sub_08027E40
sub_08027E40: @ 0x08027E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bne _08027E62
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _08027E62
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	ldrb r0, [r5]
	bl sub_08028224
_08027E62:
	adds r0, r4, #0
	bl sub_0804A7D4
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_139
nullsub_139: @ 0x08027E6C
	bx lr
	.align 2, 0

	thumb_func_start sub_08027E70
sub_08027E70: @ 0x08027E70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r3, [r4, #0xa]
	cmp r3, #1
	beq _08027EA6
	cmp r3, #1
	bgt _08027E88
	cmp r3, #0
	beq _08027E8E
	b _08027EE4
_08027E88:
	cmp r3, #2
	beq _08027EC4
	b _08027EE4
_08027E8E:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strb r3, [r4, #0xe]
	b _08027EE4
_08027EA6:
	movs r2, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _08027EE4
_08027EC4:
	movs r3, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r3, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08027EE4:
	movs r0, #0
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	strb r0, [r4, #0x14]
	adds r1, #1
	strb r0, [r1]
	subs r1, #3
	movs r0, #0xff
	strb r0, [r1]
	pop {r4, pc}

	thumb_func_start sub_08027EFC
sub_08027EFC: @ 0x08027EFC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #1
	beq _08027F7C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08027F68
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08027F32
	bl sub_08000E50
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0
	beq _08027F32
	adds r0, r4, #0
	bl sub_08049EE4
	b _08027F38
_08027F32:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
_08027F38:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08027F5A
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	movs r0, #8
	strb r0, [r4, #0xe]
_08027F5A:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	b _08027F7C
_08027F68:
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08027F7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_12
nullsub_12: @ 0x08027F80
	bx lr
	.align 2, 0

	thumb_func_start sub_08027F84
sub_08027F84: @ 0x08027F84
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08027FB0
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #9
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080A29BC
_08027FB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08027FB4
sub_08027FB4: @ 0x08027FB4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08027FD6
	movs r1, #1
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r0, [r2, #0xe]
	adds r3, r2, #0
	adds r3, #0x3b
	ldrb r0, [r3]
	orrs r0, r1
	strb r0, [r3]
_08027FD6:
	adds r0, r2, #0
	bl sub_08004274
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08027FE0
sub_08027FE0: @ 0x08027FE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08028028
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	movs r2, #8
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x41
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08028028:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802802C
sub_0802802C: @ 0x0802802C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802805A
	movs r2, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r4, #0x15]
	strb r2, [r4, #0xe]
	adds r0, r4, #0
	bl sub_080A29BC
_0802805A:
	pop {r4, pc}

	thumb_func_start sub_0802805C
sub_0802805C: @ 0x0802805C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #2
	bl sub_08004276
	bl sub_0807953C
	cmp r0, #0
	beq _0802807E
	bl sub_08000E50
	ldrb r2, [r5, #0xf]
	adds r2, #1
	movs r1, #1
	ands r1, r0
	adds r2, r2, r1
	strb r2, [r5, #0xf]
_0802807E:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x18
	bhi _0802808E
	ldr r0, _08028098 @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802809C
_0802808E:
	adds r0, r5, #0
	bl sub_0802810C
	b _08028102
	.align 2, 0
_08028098: .4byte gUnk_02002A40
_0802809C:
	bl sub_08077B2C
	ldr r2, _08028104 @ =gUnk_03003F80
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r4, _08028108 @ =gLinkEntity
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA48
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl sub_080700C8
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r0, [r0, #1]
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080280F0
	adds r0, r5, #0
	bl sub_080281A0
_080280F0:
	ldrb r1, [r5, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08028102
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_08028102:
	pop {r4, r5, pc}
	.align 2, 0
_08028104: .4byte gUnk_03003F80
_08028108: .4byte gLinkEntity

	thumb_func_start sub_0802810C
sub_0802810C: @ 0x0802810C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08028198 @ =gUnk_03003F80
	movs r1, #0
	movs r0, #0x41
	strb r0, [r2, #2]
	strb r1, [r2, #0xa]
	ldr r0, [r2, #0x30]
	subs r1, #0x11
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _0802819C @ =gLinkEntity
	mov ip, r0
	ldrb r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	movs r3, #0
	mov r2, ip
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	mov r5, ip
	adds r5, #0x29
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r5]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	mov r1, ip
	adds r1, #0x63
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, ip
	strh r0, [r2, #0x36]
	strb r3, [r1]
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x50
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08028196
	movs r0, #0xee
	strb r0, [r1]
_08028196:
	pop {r4, r5, pc}
	.align 2, 0
_08028198: .4byte gUnk_03003F80
_0802819C: .4byte gLinkEntity

	thumb_func_start sub_080281A0
sub_080281A0: @ 0x080281A0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x19
	strb r0, [r4, #0xf]
	movs r0, #0xe
	bl sub_080281E0
	cmp r0, #0
	beq _080281BA
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0xe
	b _080281CA
_080281BA:
	movs r0, #0xd
	bl sub_080281E0
	cmp r0, #0
	beq _080281D6
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0xd
_080281CA:
	strb r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #3
	bl sub_08056378
	b _080281DE
_080281D6:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080526A0
_080281DE:
	pop {r4, pc}

	thumb_func_start sub_080281E0
sub_080281E0: @ 0x080281E0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	bl sub_0807CA84
	cmp r0, #1
	bne _0802821A
	ldr r6, _08028220 @ =gUnk_02002A40
	adds r5, r6, #0
	adds r5, #0xb4
	ldrb r0, [r5]
	bl sub_080544B4
	cmp r0, #0
	beq _08028200
	strb r4, [r5]
_08028200:
	adds r5, r6, #0
	adds r5, #0xb5
	ldrb r0, [r5]
	bl sub_080544B4
	cmp r0, #0
	beq _08028210
	strb r4, [r5]
_08028210:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807CAA0
	movs r4, #1
_0802821A:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08028220: .4byte gUnk_02002A40

	thumb_func_start sub_08028224
sub_08028224: @ 0x08028224
	push {lr}
	movs r1, #0
	movs r2, #1
	bl sub_080A7C18
	ldr r0, _08028238 @ =0x00000579
	bl sub_08056378
	pop {pc}
	.align 2, 0
_08028238: .4byte 0x00000579

	thumb_func_start sub_0802823C
sub_0802823C: @ 0x0802823C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08028268 @ =gUnk_080CC790
	bl sub_0800129E
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08028266
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _08028266
	adds r0, r4, #0
	bl sub_0806FA24
_08028266:
	pop {r4, pc}
	.align 2, 0
_08028268: .4byte gUnk_080CC790

	thumb_func_start sub_0802826C
sub_0802826C: @ 0x0802826C
	push {lr}
	ldr r2, _08028280 @ =gUnk_080CC7A8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08028280: .4byte gUnk_080CC7A8

	thumb_func_start sub_08028284
sub_08028284: @ 0x08028284
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028298
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08028298:
	ldr r1, _080282BC @ =gUnk_080CC790
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080282DE
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _080282C0
	adds r0, r4, #0
	bl sub_08028754
	b _080282DE
	.align 2, 0
_080282BC: .4byte gUnk_080CC790
_080282C0:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080282DE
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #7
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08028784
_080282DE:
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	adds r0, #0x3d
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r5, [r0]
	cmp r5, #0
	bne _0802830C
	movs r0, #0
	strh r5, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080287E0
	ldr r0, [r4, #0x54]
	bl sub_0805E7BC
	str r5, [r4, #0x54]
_0802830C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_13
nullsub_13: @ 0x08028310
	bx lr
	.align 2, 0

	thumb_func_start sub_08028314
sub_08028314: @ 0x08028314
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	adds r0, #5
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	subs r0, #7
	strb r1, [r0]
	adds r0, #8
	strb r2, [r0]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802835E
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #1
	strb r0, [r4, #0x14]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080287E0
	b _08028368
_0802835E:
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08028604
_08028368:
	movs r0, #3
	bl sub_080A7EE0
	cmp r0, #0
	beq _08028376
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_08028376:
	pop {r4, pc}

	thumb_func_start sub_08028378
sub_08028378: @ 0x08028378
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802838A
	subs r0, #1
	strb r0, [r1]
_0802838A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080283B8
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r2
	cmp r0, #0xf
	bls _080283B0
	adds r0, r4, #0
	bl sub_08028728
	b _080283FC
_080283B0:
	adds r0, r4, #0
	bl sub_08028604
	b _080283FC
_080283B8:
	adds r0, r4, #0
	bl sub_080286CC
	cmp r0, #0
	beq _080283CE
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_080283CE:
	adds r0, r4, #0
	bl sub_080288A4
	cmp r0, #0
	beq _080283FC
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080287E0
_080283FC:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xb
	bls _08028414
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028418
	adds r0, r4, #0
	bl sub_08028754
	b _08028418
_08028414:
	adds r0, #1
	strb r0, [r4, #0xf]
_08028418:
	adds r0, r4, #0
	bl sub_08028858
	pop {r4, pc}

	thumb_func_start sub_08028420
sub_08028420: @ 0x08028420
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802844C
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08028604
	b _08028462
_0802844C:
	adds r0, r4, #0
	bl sub_080286CC
	cmp r0, #0
	beq _08028462
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_08028462:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xb
	bls _0802847A
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802847E
	adds r0, r4, #0
	bl sub_08028754
	b _0802847E
_0802847A:
	adds r0, #1
	strb r0, [r4, #0xf]
_0802847E:
	adds r0, r4, #0
	bl sub_08028858
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028488
sub_08028488: @ 0x08028488
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08028520
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	beq _080284D2
	cmp r1, #2
	ble _080284F0
	cmp r1, #3
	beq _080284B4
	cmp r1, #4
	beq _080284E6
	b _080284F0
_080284B4:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_08004488
	b _0802850A
_080284D2:
	strb r1, [r4, #0xc]
	strh r2, [r4, #0x24]
	bl sub_08000E50
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x40
	b _08028508
_080284E6:
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_080284F0:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r3]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	bl sub_08000E50
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x22
_08028508:
	strb r1, [r4, #0xe]
_0802850A:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080287E0
_08028520:
	adds r0, r4, #0
	bl sub_08028858
	pop {r4, pc}

	thumb_func_start sub_08028528
sub_08028528: @ 0x08028528
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r5, r0, #0
	cmp r5, #0
	bne _08028542
	strb r5, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028728
	b _08028600
_08028542:
	adds r0, r4, #0
	bl sub_080288C0
	ldr r1, _08028590 @ =gUnk_080CC944
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #6]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #7]
	strb r0, [r1, #7]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _08028594
	movs r0, #0
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08028784
	adds r1, r4, #0
	adds r1, #0x7b
	b _080285EE
	.align 2, 0
_08028590: .4byte gUnk_080CC944
_08028594:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _080285BC
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	adds r5, r0, #0
	ldrb r0, [r4, #0x15]
	adds r1, r5, #0
	bl sub_08028828
	cmp r0, #0
	beq _080285BC
	strb r5, [r4, #0x15]
_080285BC:
	ldrb r1, [r4, #0xe]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080285D6
	movs r0, #0xf0
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFX
_080285D6:
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bne _080285EE
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_080285EE:
	ldrb r0, [r1]
	cmp r0, #0x20
	bls _080285FA
	adds r0, r4, #0
	bl sub_080AEF88
_080285FA:
	adds r0, r4, #0
	bl sub_08004274
_08028600:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08028604
sub_08028604: @ 0x08028604
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0
	strb r1, [r4, #0xf]
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #1
	bne _080286B0
	bl sub_08000E50
	ldr r2, _08028650 @ =gUnk_080CC7BC
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08028658
	bl sub_08000E50
	ldr r2, _08028654 @ =gUnk_080CC7D0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x18
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _080286B8
	.align 2, 0
_08028650: .4byte gUnk_080CC7BC
_08028654: .4byte gUnk_080CC7D0
_08028658:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r5, r0, #0
	adds r6, r4, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0
	bne _08028684
	bl sub_08000E50
	ldr r2, _08028680 @ =gUnk_080CC7C0
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	b _080286A2
	.align 2, 0
_08028680: .4byte gUnk_080CC7C0
_08028684:
	bl sub_08000E50
	ldr r2, _080286AC @ =gUnk_080CC7C0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	ldrb r0, [r4, #0xe]
	adds r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_080286A2:
	adds r0, r5, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _080286B8
	.align 2, 0
_080286AC: .4byte gUnk_080CC7C0
_080286B0:
	movs r0, #0xc
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x24]
	ldrb r0, [r4, #0x15]
_080286B8:
	lsrs r5, r0, #2
	ldrb r0, [r4, #0x14]
	cmp r5, r0
	beq _080286C8
	strb r5, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080287E0
_080286C8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080286CC
sub_080286CC: @ 0x080286CC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028724
	movs r0, #1
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _08028724
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _080286FC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x30
	bl sub_0806FC80
	cmp r0, #0
	bne _08028720
_080286FC:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_0806FC80
	cmp r0, #0
	beq _08028724
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	ldrb r5, [r5, #0x14]
	cmp r0, r5
	bne _08028724
_08028720:
	movs r0, #1
	b _08028726
_08028724:
	movs r0, #0
_08028726:
	pop {r4, r5, pc}

	thumb_func_start sub_08028728
sub_08028728: @ 0x08028728
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080287B4
	adds r4, #0x82
	movs r0, #2
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_08028754
sub_08028754: @ 0x08028754
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	movs r2, #0
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080287B4
	adds r4, #0x82
	movs r0, #3
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028784
sub_08028784: @ 0x08028784
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	movs r1, #0
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080287B4
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	strb r0, [r4, #0xe]
	adds r4, #0x82
	movs r0, #4
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_080287B4
sub_080287B4: @ 0x080287B4
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0x20
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	movs r0, #0
	strh r1, [r2, #0x24]
	adds r1, r2, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080287E0
	pop {pc}

	thumb_func_start sub_080287E0
sub_080287E0: @ 0x080287E0
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x14]
	lsrs r2, r0, #1
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0802881E
	lsls r0, r0, #2
	ldr r1, _080287FC @ =_08028800
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080287FC: .4byte _08028800
_08028800: @ jump table
	.4byte _0802881E @ case 0
	.4byte _08028814 @ case 1
	.4byte _0802881C @ case 2
	.4byte _08028818 @ case 3
	.4byte _08028814 @ case 4
_08028814:
	adds r2, #4
	b _0802881E
_08028818:
	adds r2, #8
	b _0802881E
_0802881C:
	adds r2, #0xc
_0802881E:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_08028828
sub_08028828: @ 0x08028828
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r0, r3, #4
	movs r2, #0x18
	ands r0, r2
	adds r1, r4, #4
	ands r1, r2
	cmp r0, r1
	bne _08028852
	adds r0, r3, #5
	movs r1, #7
	ands r0, r1
	adds r2, r4, #5
	ands r2, r1
	cmp r0, #2
	bhi _08028852
	cmp r2, #2
	bhi _08028852
	movs r0, #1
	b _08028854
_08028852:
	movs r0, #0
_08028854:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028858
sub_08028858: @ 0x08028858
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080288C0
	ldr r1, _080288A0 @ =gUnk_080CC944
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #6]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #7]
	strb r0, [r1, #7]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028890
	strh r0, [r4, #0x24]
_08028890:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_080288A0: .4byte gUnk_080CC944

	thumb_func_start sub_080288A4
sub_080288A4: @ 0x080288A4
	ldr r2, _080288BC @ =gUnk_080CC7D8
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r0, #0x2a]
	ldrh r1, [r1]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_080288BC: .4byte gUnk_080CC7D8

	thumb_func_start sub_080288C0
sub_080288C0: @ 0x080288C0
	push {lr}
	mov ip, r0
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq _08028908
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028908
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	rsbs r0, r0, #0
	subs r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #9
	movs r3, #0
	strh r0, [r1]
	adds r2, #0x42
	ldrb r1, [r2]
	mov r0, ip
	adds r0, #0x42
	strb r1, [r0]
	strb r3, [r2]
_08028908:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802890C
sub_0802890C: @ 0x0802890C
	push {lr}
	ldr r1, _08028918 @ =gUnk_080CC9C8
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08028918: .4byte gUnk_080CC9C8

	thumb_func_start sub_0802891C
sub_0802891C: @ 0x0802891C
	push {lr}
	ldr r2, _08028930 @ =gUnk_080CC9E0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08028930: .4byte gUnk_080CC9E0

	thumb_func_start sub_08028934
sub_08028934: @ 0x08028934
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #1
	bne _08028988
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x42
	bne _08028988
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080290E0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08028982
	ldrh r0, [r1, #0x36]
	subs r0, #8
	strh r0, [r1, #0x36]
_08028982:
	ldr r0, _0802898C @ =0x000001BB
	bl sub_08004488
_08028988:
	pop {r4, pc}
	.align 2, 0
_0802898C: .4byte 0x000001BB

	thumb_func_start nullsub_140
nullsub_140: @ 0x08028990
	bx lr
	.align 2, 0

	thumb_func_start sub_08028994
sub_08028994: @ 0x08028994
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x78
	movs r5, #0
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	strb r5, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08028E9C
	ldr r0, [r4, #0x7c]
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080289D4
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080289FC
_080289D4:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb1
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0802925C
	adds r0, r4, #0
	movs r1, #0
	bl sub_080290E0
	b _08028A42
_080289FC:
	strb r5, [r4, #0xe]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08028A44 @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x76
	strh r1, [r0]
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	subs r1, #0x34
	movs r0, #0x41
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08028FFC
_08028A42:
	pop {r4, r5, pc}
	.align 2, 0
_08028A44: .4byte gUnk_03000BF0

	thumb_func_start sub_08028A48
sub_08028A48: @ 0x08028A48
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08028A5A
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08028A72
_08028A5A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08028F98
	cmp r0, #0
	beq _08028A72
	adds r0, r4, #0
	bl sub_08029078
	strb r5, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xf]
_08028A72:
	pop {r4, r5, pc}

	thumb_func_start sub_08028A74
sub_08028A74: @ 0x08028A74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bls _08028A84
	b _08028BA6
_08028A84:
	lsls r0, r0, #2
	ldr r1, _08028A90 @ =_08028A94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08028A90: .4byte _08028A94
_08028A94: @ jump table
	.4byte _08028AA8 @ case 0
	.4byte _08028ACA @ case 1
	.4byte _08028B1A @ case 2
	.4byte _08028B54 @ case 3
	.4byte _08028B76 @ case 4
_08028AA8:
	movs r6, #1
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028BA6
	strb r6, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028FDC
	b _08028B6C
_08028ACA:
	movs r6, #1
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08028AF6
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028FDC
	adds r0, r4, #0
	movs r1, #2
	bl sub_080290E0
	b _08028BA6
_08028AF6:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _08028BA6
	adds r0, r4, #0
	bl sub_08028FDC
	cmp r0, #0
	beq _08028B14
	adds r0, r4, #0
	movs r1, #1
	bl sub_080290E0
_08028B14:
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08028BA6
_08028B1A:
	movs r6, #1
	adds r0, r4, #0
	bl sub_080290FC
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08028BA6
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08028BA6
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldrb r1, [r5]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r4, #0xd]
	b _08028BA6
_08028B54:
	movs r6, #2
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028BA6
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x50
	strb r0, [r4, #0xe]
_08028B6C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080290E0
	b _08028BA6
_08028B76:
	movs r6, #2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028BA6
	adds r0, r4, #0
	movs r1, #0
	bl sub_08028F98
	adds r5, r0, #0
	cmp r5, #0
	beq _08028BB4
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028FDC
	b _08028BC2
_08028BA6:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08028F98
	adds r5, r0, #0
	cmp r5, #0
	bne _08028BC2
_08028BB4:
	adds r0, r4, #0
	bl sub_08028FFC
	strb r5, [r4, #0xd]
	movs r0, #0x50
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
_08028BC2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08028BC4
sub_08028BC4: @ 0x08028BC4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08028BD4
	cmp r0, #1
	beq _08028C14
	b _08028C76
_08028BD4:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08028C0E
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028C76
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08028FDC
	adds r0, r4, #0
	movs r1, #5
	bl sub_080290E0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08028C76
_08028C0E:
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08028C76
_08028C14:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028C76
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #5
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080290E0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r2, r0, #0
	cmp r2, #0
	beq _08028C66
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2, #0x36]
	subs r0, #0xc
	strh r0, [r2, #0x36]
	adds r0, r2, #0
	movs r1, #2
	bl sub_0805E3A0
_08028C66:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	adds r0, r4, #0
	bl sub_0802925C
_08028C76:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}

	thumb_func_start sub_08028C84
sub_08028C84: @ 0x08028C84
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028CD2
	movs r0, #0x30
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r5, r0, #0
	cmp r5, #0
	beq _08028CB4
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08028CD2
	adds r0, r4, #0
	bl sub_0804AA1C
	b _08028CD2
_08028CB4:
	adds r0, r4, #0
	bl sub_08028FDC
	adds r1, r4, #0
	adds r1, #0x80
	cmp r0, #0
	bne _08028CC8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08028CD2
_08028CC8:
	strb r5, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080290E0
_08028CD2:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08028F0C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08028CE8
sub_08028CE8: @ 0x08028CE8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x7c]
	ldr r0, _08028D30 @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08028DCC
	adds r0, r5, #0
	bl sub_0802915C
	cmp r0, #0
	beq _08028DCC
	bl sub_08056338
	cmp r0, #0
	bne _08028DCC
	ldr r0, _08028D34 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r1, [r6, #2]
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08028DC0
	adds r0, r5, #0
	bl sub_080291DC
	cmp r0, #0
	beq _08028D3C
	ldr r0, _08028D38 @ =0x00002904
	bl sub_08056378
	movs r0, #0
	bl sub_08078A90
	b _08028DCC
	.align 2, 0
_08028D30: .4byte gUnk_02000050
_08028D34: .4byte gUnk_02002A40
_08028D38: .4byte 0x00002904
_08028D3C:
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	bl sub_080526CC
	ldrb r0, [r6]
	lsrs r7, r0, #2
	cmp r7, #1
	beq _08028D9C
	cmp r7, #1
	bgt _08028D56
	cmp r7, #0
	beq _08028D5C
	b _08028DCC
_08028D56:
	cmp r7, #2
	beq _08028DAA
	b _08028DCC
_08028D5C:
	ldrb r1, [r6, #9]
	cmp r1, #0xff
	bne _08028D70
	ldr r4, _08028D98 @ =gUnk_080CC9C0
	bl sub_08000E50
	movs r1, #7
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
_08028D70:
	ldrb r0, [r6, #8]
	movs r2, #0
	bl sub_080A7C00
	movs r0, #6
	strb r0, [r5, #0xc]
	movs r0, #4
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x81
	strb r7, [r0]
	adds r0, r5, #0
	movs r1, #3
	bl sub_080290E0
	movs r0, #0x87
	bl sub_0807CCB4
	b _08028DE2
	.align 2, 0
_08028D98: .4byte gUnk_080CC9C0
_08028D9C:
	ldrb r0, [r6, #8]
	ldrb r1, [r6, #9]
	movs r2, #0
	bl sub_080A7C00
	movs r0, #4
	b _08028DB6
_08028DAA:
	ldrb r0, [r6, #8]
	ldrb r1, [r6, #9]
	movs r2, #0
	bl sub_080A7C00
	movs r0, #8
_08028DB6:
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_0802922C
	b _08028DE2
_08028DC0:
	ldr r0, _08028DE4 @ =0x00002903
	bl sub_08056378
	movs r0, #0
	bl sub_08078A90
_08028DCC:
	adds r0, r5, #0
	bl sub_0800445C
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x30
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E0
_08028DE2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08028DE4: .4byte 0x00002903

	thumb_func_start sub_08028DE8
sub_08028DE8: @ 0x08028DE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08028E08 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _08028E0C
	adds r4, #0x81
	ldrb r0, [r4]
	cmp r0, #0
	bne _08028E3A
	movs r0, #1
	bl sub_08078A90
	movs r0, #1
	strb r0, [r4]
	b _08028E3A
	.align 2, 0
_08028E08: .4byte gLinkEntity
_08028E0C:
	ldr r0, _08028E3C @ =0x00002902
	bl sub_08056378
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	movs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08028EDC
	movs r0, #0
	bl sub_08078A90
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08004274
_08028E3A:
	pop {r4, pc}
	.align 2, 0
_08028E3C: .4byte 0x00002902

	thumb_func_start sub_08028E40
sub_08028E40: @ 0x08028E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08028E80 @ =gUnk_02000050
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _08028E72
	ldr r5, [r4, #0x7c]
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrh r0, [r5, #0xa]
	bl sub_0807CBD0
	cmp r0, #0
	bne _08028E6C
	ldrh r0, [r5, #0xa]
	bl sub_0807CCB4
_08028E6C:
	movs r0, #0
	bl sub_08078A90
_08028E72:
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, pc}
	.align 2, 0
_08028E80: .4byte gUnk_02000050

	thumb_func_start sub_08028E84
sub_08028E84: @ 0x08028E84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08028E98
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
_08028E98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028E9C
sub_08028E9C: @ 0x08028E9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r6, _08028ED8 @ =gUnk_080CC954
	adds r4, r1, r6
	adds r0, r4, #0
	bl sub_08029198
	cmp r0, #0
	beq _08028ECA
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08028ECA
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r6
_08028ECA:
	str r4, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08028ED8: .4byte gUnk_080CC954

	thumb_func_start sub_08028EDC
sub_08028EDC: @ 0x08028EDC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x7c]
	adds r0, r4, #0
	bl sub_08029198
	cmp r0, #0
	beq _08028F04
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08028F04
	ldrh r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08028F08 @ =gUnk_080CC954
	adds r4, r1, r0
	str r4, [r5, #0x7c]
_08028F04:
	pop {r4, r5, pc}
	.align 2, 0
_08028F08: .4byte gUnk_080CC954

	thumb_func_start sub_08028F0C
sub_08028F0C: @ 0x08028F0C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08028F2C
	movs r1, #0
	movs r0, #8
	strb r0, [r5, #0xc]
	strb r1, [r2]
	adds r0, r5, #0
	bl sub_0806F118
	b _08028F90
_08028F2C:
	cmp r0, #0
	beq _08028F90
	ldr r6, [r5, #0x7c]
	movs r4, #0
	strb r4, [r2]
	adds r0, r5, #0
	bl sub_0804AA1C
	adds r0, r5, #0
	bl sub_0806EDC4
	lsls r0, r0, #3
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #3
	bl sub_080290E0
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	adds r0, r6, #0
	bl sub_08029198
	cmp r0, #0
	beq _08028F6A
	ldrh r4, [r6, #6]
	b _08028F84
_08028F6A:
	ldrb r1, [r6]
	movs r0, #0xfc
	ands r0, r1
	cmp r0, #0xc
	beq _08028F78
	movs r0, #5
	b _08028F7A
_08028F78:
	movs r0, #7
_08028F7A:
	strb r0, [r5, #0xc]
	ldrh r4, [r6, #4]
	movs r0, #1
	bl sub_08078A90
_08028F84:
	adds r0, r4, #0
	bl sub_08056378
	ldr r1, _08028F94 @ =gUnk_02000050
	ldrh r0, [r6, #2]
	str r0, [r1, #0x10]
_08028F90:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08028F94: .4byte gUnk_02000050

	thumb_func_start sub_08028F98
sub_08028F98: @ 0x08028F98
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _08028FD4
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x28
	movs r3, #0x28
	bl sub_080041A0
	cmp r0, #0
	bne _08028FD4
	cmp r5, #2
	beq _08028FD8
	movs r3, #0x50
	cmp r5, #0
	beq _08028FC6
	movs r3, #0x58
_08028FC6:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080041A0
	cmp r0, #0
	bne _08028FD8
_08028FD4:
	movs r0, #0
	b _08028FDA
_08028FD8:
	movs r0, #1
_08028FDA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08028FDC
sub_08028FDC: @ 0x08028FDC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #4
	movs r0, #0x18
	ands r1, r0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _08028FF8
	strb r1, [r4, #0x15]
	movs r0, #1
	b _08028FFA
_08028FF8:
	movs r0, #0
_08028FFA:
	pop {r4, pc}

	thumb_func_start sub_08028FFC
sub_08028FFC: @ 0x08028FFC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080AE068
	adds r0, r4, #0
	bl sub_0801D230
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #0xe8
	strh r0, [r1]
	ldrb r1, [r4, #0x1a]
	subs r0, #0xf8
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xa7
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	ldr r0, _08029074 @ =0x00004022
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	pop {r4, pc}
	.align 2, 0
_08029074: .4byte 0x00004022

	thumb_func_start sub_08029078
sub_08029078: @ 0x08029078
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_080ADF80
	cmp r0, #0
	bne _080290AE
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080290DE
_080290AE:
	adds r0, r4, #0
	movs r1, #0x6e
	bl sub_0801D040
	movs r0, #0xd0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08028FDC
	adds r0, r4, #0
	movs r1, #1
	bl sub_080290E0
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_080290DE:
	pop {r4, pc}

	thumb_func_start sub_080290E0
sub_080290E0: @ 0x080290E0
	push {lr}
	adds r3, r1, #0
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #3
	ldr r2, _080290F8 @ =gUnk_080CCA04
	adds r3, r3, r2
	ldrb r2, [r3]
	orrs r1, r2
	bl sub_08004260
	pop {pc}
	.align 2, 0
_080290F8: .4byte gUnk_080CCA04

	thumb_func_start sub_080290FC
sub_080290FC: @ 0x080290FC
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _08029158
	subs r1, r0, #1
	strb r1, [r2, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _08029158
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08029158
	ldrb r4, [r2, #0x15]
	movs r0, #0x10
	ands r0, r4
	movs r5, #1
	cmp r0, #0
	beq _08029128
	subs r5, #2
_08029128:
	movs r3, #8
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08029146
	movs r4, #0x2e
	ldrsh r0, [r2, r4]
	ands r1, r3
	cmp r1, #0
	beq _08029140
	subs r0, r0, r5
	b _08029142
_08029140:
	adds r0, r0, r5
_08029142:
	strh r0, [r2, #0x2e]
	b _08029158
_08029146:
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	ands r1, r3
	cmp r1, #0
	bne _08029154
	subs r0, r0, r5
	b _08029156
_08029154:
	adds r0, r0, r5
_08029156:
	strh r0, [r2, #0x32]
_08029158:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802915C
sub_0802915C: @ 0x0802915C
	push {lr}
	ldr r0, [r0, #0x7c]
	ldrb r0, [r0, #8]
	cmp r0, #0x5c
	beq _08029190
	cmp r0, #0x5c
	bgt _08029174
	cmp r0, #0x1c
	beq _08029186
	cmp r0, #0x44
	beq _0802917E
	b _08029194
_08029174:
	cmp r0, #0x6c
	beq _08029190
	cmp r0, #0x6f
	beq _08029190
	b _08029194
_0802917E:
	movs r0, #0x44
	bl sub_0807CA84
	b _0802918C
_08029186:
	movs r0, #0x5a
	bl GetProgressFlag
_0802918C:
	cmp r0, #0
	bne _08029194
_08029190:
	movs r0, #1
	b _08029196
_08029194:
	movs r0, #0
_08029196:
	pop {pc}

	thumb_func_start sub_08029198
sub_08029198: @ 0x08029198
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	cmp r0, #0xc
	beq _080291CA
	ldrb r0, [r2, #8]
	cmp r0, #0x1c
	beq _080291BC
	cmp r0, #0x1c
	bgt _080291B6
	cmp r0, #9
	beq _080291C4
	b _080291D8
_080291B6:
	cmp r0, #0x44
	beq _080291C4
	b _080291D8
_080291BC:
	movs r0, #0x5a
	bl GetProgressFlag
	b _080291D0
_080291C4:
	bl sub_0807CA84
	b _080291D0
_080291CA:
	ldrh r0, [r2, #0xa]
	bl sub_0807CBD0
_080291D0:
	cmp r0, #0
	beq _080291D8
	movs r0, #1
	b _080291DA
_080291D8:
	movs r0, #0
_080291DA:
	pop {pc}

	thumb_func_start sub_080291DC
sub_080291DC: @ 0x080291DC
	push {lr}
	ldr r0, [r0, #0x7c]
	ldrb r0, [r0, #8]
	cmp r0, #0x6c
	beq _080291EC
	cmp r0, #0x6f
	beq _08029204
	b _08029228
_080291EC:
	ldr r2, _080291FC @ =gUnk_080FD5A0
	ldr r1, _08029200 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xac
	b _08029212
	.align 2, 0
_080291FC: .4byte gUnk_080FD5A0
_08029200: .4byte gUnk_02002A40
_08029204:
	ldr r2, _08029220 @ =gUnk_080FD5A4
	ldr r1, _08029224 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xaf
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xad
_08029212:
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhi _08029228
	movs r0, #1
	b _0802922A
	.align 2, 0
_08029220: .4byte gUnk_080FD5A4
_08029224: .4byte gUnk_02002A40
_08029228:
	movs r0, #0
_0802922A:
	pop {pc}

	thumb_func_start sub_0802922C
sub_0802922C: @ 0x0802922C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #6
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x81
	strb r0, [r1]
	ldr r0, [r4, #0x7c]
	ldrb r0, [r0, #8]
	cmp r0, #0x6c
	beq _08029252
	cmp r0, #0x6c
	bgt _08029252
	cmp r0, #0x1c
	bne _08029252
	movs r0, #0x5a
	bl sub_0807CD04
_08029252:
	adds r0, r4, #0
	movs r1, #3
	bl sub_080290E0
	pop {r4, pc}

	thumb_func_start sub_0802925C
sub_0802925C: @ 0x0802925C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029270
sub_08029270: @ 0x08029270
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08029296
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #0xe
	bl sub_08004260
	b _0802929C
_08029296:
	adds r0, r2, #0
	bl sub_08004274
_0802929C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080292A0
sub_080292A0: @ 0x080292A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080292F8
	adds r0, r5, #0
	bl sub_080043E8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080292CE
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bne _080292C4
	adds r0, r5, #0
	bl sub_080296D8
_080292C4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001290
	b _080292FE
_080292CE:
	ldr r4, _080292F4 @ =gUnk_080CCC00
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _080292FE
	.align 2, 0
_080292F4: .4byte gUnk_080CCC00
_080292F8:
	adds r0, r5, #0
	bl sub_080293DC
_080292FE:
	pop {r4, r5, pc}

	thumb_func_start sub_08029300
sub_08029300: @ 0x08029300
	push {lr}
	ldr r2, _08029314 @ =gUnk_080CCC18
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08029314: .4byte gUnk_080CCC18

	thumb_func_start sub_08029318
sub_08029318: @ 0x08029318
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x8e
	bne _0802932C
	adds r0, r4, #0
	bl sub_08029770
	b _080293A6
_0802932C:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _08029338
	adds r0, r4, #0
	bl sub_080296D8
_08029338:
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _08029394
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bne _08029356
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl sub_08004260
_08029356:
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x41
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08029390 @ =gLinkEntity
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r1, r4, #0
	adds r1, #0x80
	strb r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
	b _080293A6
	.align 2, 0
_08029390: .4byte gLinkEntity
_08029394:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080293A6
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080293A6:
	ldr r1, _080293B0 @ =gUnk_080CCC00
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_080293B0: .4byte gUnk_080CCC00

	thumb_func_start sub_080293B4
sub_080293B4: @ 0x080293B4
	push {lr}
	ldr r3, _080293D4 @ =gUnk_080CCC34
	adds r1, r0, #0
	adds r1, #0x84
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	ldrb r2, [r0, #0xa]
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r1, #0xff
	bl sub_0804A7E0
	pop {pc}
	.align 2, 0
_080293D4: .4byte gUnk_080CCC34

	thumb_func_start nullsub_141
nullsub_141: @ 0x080293D8
	bx lr
	.align 2, 0

	thumb_func_start sub_080293DC
sub_080293DC: @ 0x080293DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _08029408 @ =gUnk_080CCC3C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08029408: .4byte gUnk_080CCC3C

	thumb_func_start sub_0802940C
sub_0802940C: @ 0x0802940C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	movs r0, #0x17
	bl sub_0804AA60
	adds r5, r0, #0
	cmp r5, #0
	beq _0802944A
	adds r0, r4, #0
	bl sub_0804A720
	str r4, [r5, #0x50]
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xb]
	str r5, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080297F0
_0802944A:
	pop {r4, r5, pc}

	thumb_func_start sub_0802944C
sub_0802944C: @ 0x0802944C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080296C8
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029470
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08029470
	adds r0, r4, #0
	bl sub_08029770
_08029470:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029474
sub_08029474: @ 0x08029474
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080296C8
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080294C0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	ldr r1, _080294BC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	ldr r0, [r4, #0x54]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	bl sub_08004260
	b _080294D2
	.align 2, 0
_080294BC: .4byte gLinkEntity
_080294C0:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080294D2
	strb r1, [r3]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_080294D2:
	pop {r4, pc}

	thumb_func_start sub_080294D4
sub_080294D4: @ 0x080294D4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802951C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029508
	movs r0, #8
	strb r0, [r4, #0xe]
	ldr r1, _08029518 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	adds r0, r4, #0
	bl sub_0802969C
_08029508:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080296C8
	b _08029538
	.align 2, 0
_08029518: .4byte gLinkEntity
_0802951C:
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	ldr r0, [r4, #0x54]
	movs r1, #7
	bl sub_08004260
_08029538:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802953C
sub_0802953C: @ 0x0802953C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080296C8
	adds r0, r5, #0
	bl sub_080296C8
	bl sub_0807953C
	cmp r0, #0
	beq _08029558
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
_08029558:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08029562
	subs r0, #1
	strb r0, [r5, #0xe]
_08029562:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x2d
	bhi _08029572
	ldr r0, _08029580 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	bne _08029584
_08029572:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _08029584
	adds r0, r5, #0
	bl sub_080296D8
	b _080295FE
	.align 2, 0
_08029580: .4byte gUnk_02002A40
_08029584:
	bl sub_08077B2C
	ldr r2, _08029600 @ =gUnk_03003F80
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r4, _08029604 @ =gLinkEntity
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA48
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl sub_080700C8
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r0, [r0, #1]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080295FE
	movs r0, #0x41
	strb r0, [r1]
	ldr r0, _08029608 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	beq _080295FE
	ldr r1, _0802960C @ =gUnk_080CCC44
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_080526CC
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
_080295FE:
	pop {r4, r5, pc}
	.align 2, 0
_08029600: .4byte gUnk_03003F80
_08029604: .4byte gLinkEntity
_08029608: .4byte gUnk_02002A40
_0802960C: .4byte gUnk_080CCC44

	thumb_func_start sub_08029610
sub_08029610: @ 0x08029610
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029628
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0xe]
_08029628:
	adds r0, r1, #0
	bl sub_080296C8
	pop {pc}

	thumb_func_start sub_08029630
sub_08029630: @ 0x08029630
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080296C8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802965E
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r0, r4, #0
	bl sub_080297F0
_0802965E:
	pop {r4, pc}

	thumb_func_start sub_08029660
sub_08029660: @ 0x08029660
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0xd1
	strh r1, [r0, #0x12]
	ldr r2, _08029684 @ =gUnk_080CCC47
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r0, #0x1a]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0, #0x1a]
	bx lr
	.align 2, 0
_08029684: .4byte gUnk_080CCC47

	thumb_func_start sub_08029688
sub_08029688: @ 0x08029688
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802969A
	adds r0, r1, #0
	bl sub_0805E7BC
_0802969A:
	pop {pc}

	thumb_func_start sub_0802969C
sub_0802969C: @ 0x0802969C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080296C4
	lsrs r4, r1, #4
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _080296C4
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08004260
	ldr r0, [r5, #0x54]
	adds r1, r4, #4
	bl sub_08004260
_080296C4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080296C8
sub_080296C8: @ 0x080296C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r0, [r4, #0x54]
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080296D8
sub_080296D8: @ 0x080296D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08029764 @ =gUnk_03003F80
	movs r0, #0x41
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _08029768 @ =gLinkEntity
	mov ip, r0
	ldrb r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
	adds r1, #0x3d
	movs r0, #0xa6
	strb r0, [r1]
	movs r3, #0
	ldr r0, _0802976C @ =0x0000FFFE
	mov r1, ip
	strh r0, [r1, #0x36]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	mov r5, ip
	adds r5, #0x29
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r5]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	mov r0, ip
	adds r0, #0x63
	strb r3, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	mov r1, ip
	strh r0, [r1, #0x24]
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08029762
	movs r0, #0xf4
	strb r0, [r1]
_08029762:
	pop {r4, r5, pc}
	.align 2, 0
_08029764: .4byte gUnk_03003F80
_08029768: .4byte gLinkEntity
_0802976C: .4byte 0x0000FFFE

	thumb_func_start sub_08029770
sub_08029770: @ 0x08029770
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x73
	bl sub_080ADF80
	cmp r0, #0
	beq _080297E8
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xd1
	strh r0, [r4, #0x12]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x8d
	strb r0, [r1]
	ldr r0, _080297EC @ =gUnk_080FD260
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080A29BC
_080297E8:
	pop {r4, pc}
	.align 2, 0
_080297EC: .4byte gUnk_080FD260

	thumb_func_start sub_080297F0
sub_080297F0: @ 0x080297F0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x8e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080AE068
	ldr r0, _08029850 @ =0x00000143
	strh r0, [r4, #0x12]
	ldr r1, _08029854 @ =gUnk_080CCC47
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #9
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x54
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_08029850: .4byte 0x00000143
_08029854: .4byte gUnk_080CCC47

	thumb_func_start sub_08029858
sub_08029858: @ 0x08029858
	push {lr}
	ldr r2, _0802986C @ =gUnk_080CCD44
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802986C: .4byte gUnk_080CCD44

	thumb_func_start sub_08029870
sub_08029870: @ 0x08029870
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08029888 @ =gUnk_080CCD60
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08029888: .4byte gUnk_080CCD60

	thumb_func_start sub_0802988C
sub_0802988C: @ 0x0802988C
	push {lr}
	ldr r2, _080298A0 @ =gUnk_080CCD78
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080298A0: .4byte gUnk_080CCD78

	thumb_func_start sub_080298A4
sub_080298A4: @ 0x080298A4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _08029970
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1e
	bhi _08029948
	lsls r0, r1, #2
	ldr r1, _080298C8 @ =_080298CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080298C8: .4byte _080298CC
_080298CC: @ jump table
	.4byte _08029970 @ case 0
	.4byte _08029970 @ case 1
	.4byte _08029970 @ case 2
	.4byte _08029970 @ case 3
	.4byte _08029948 @ case 4
	.4byte _08029948 @ case 5
	.4byte _08029948 @ case 6
	.4byte _08029948 @ case 7
	.4byte _08029948 @ case 8
	.4byte _08029948 @ case 9
	.4byte _08029948 @ case 10
	.4byte _08029948 @ case 11
	.4byte _08029948 @ case 12
	.4byte _08029948 @ case 13
	.4byte _08029948 @ case 14
	.4byte _08029970 @ case 15
	.4byte _08029948 @ case 16
	.4byte _08029948 @ case 17
	.4byte _08029948 @ case 18
	.4byte _08029970 @ case 19
	.4byte _08029948 @ case 20
	.4byte _08029948 @ case 21
	.4byte _08029948 @ case 22
	.4byte _08029948 @ case 23
	.4byte _08029948 @ case 24
	.4byte _08029948 @ case 25
	.4byte _08029948 @ case 26
	.4byte _08029970 @ case 27
	.4byte _08029948 @ case 28
	.4byte _08029948 @ case 29
	.4byte _08029970 @ case 30
_08029948:
	movs r1, #0
	movs r4, #2
	strb r4, [r5, #0xc]
	strb r1, [r5, #0xe]
	adds r2, r5, #0
	adds r2, #0x3f
	movs r0, #0x6b
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x77
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0x7f
	bl sub_0801D2B4
	movs r0, #0xfe
	bl sub_08004488
	ldr r0, [r5, #0x54]
	strb r4, [r0, #0xc]
_08029970:
	ldr r1, _0802997C @ =gUnk_080CCD60
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0802997C: .4byte gUnk_080CCD60

	thumb_func_start sub_08029980
sub_08029980: @ 0x08029980
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _08029990
	subs r0, #1
	strb r0, [r1, #0xf]
	b _08029996
_08029990:
	adds r0, r1, #0
	bl sub_0804A7D4
_08029996:
	pop {pc}

	thumb_func_start nullsub_14
nullsub_14: @ 0x08029998
	bx lr
	.align 2, 0

	thumb_func_start sub_0802999C
sub_0802999C: @ 0x0802999C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08029A90 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _08029A8E
	movs r0, #0x18
	movs r1, #1
	bl sub_0804AA60
	adds r4, r0, #0
	str r7, [r4, #0x50]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_0806FA48
	str r4, [r7, #0x54]
	movs r0, #0x18
	movs r1, #2
	bl sub_0804AA60
	adds r5, r0, #0
	str r7, [r5, #0x50]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #4
	bl sub_0806FA48
	str r5, [r4, #0x54]
	movs r0, #0x18
	movs r1, #3
	bl sub_0804AA60
	adds r4, r0, #0
	str r7, [r4, #0x50]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #3
	bl sub_0806FA48
	str r4, [r5, #0x54]
	movs r0, #0x18
	movs r1, #4
	bl sub_0804AA60
	adds r5, r0, #0
	str r7, [r5, #0x50]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #2
	bl sub_0806FA48
	str r5, [r4, #0x54]
	movs r0, #0x18
	movs r1, #5
	bl sub_0804AA60
	adds r6, r0, #0
	str r7, [r6, #0x50]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA48
	str r6, [r5, #0x54]
	movs r0, #0x18
	movs r1, #6
	bl sub_0804AA60
	adds r4, r0, #0
	str r7, [r4, #0x54]
	str r7, [r4, #0x50]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0806FA48
	str r4, [r6, #0x54]
	movs r4, #1
	strb r4, [r7, #0xc]
	ldrb r1, [r7, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	strb r0, [r7, #0x15]
	movs r2, #0
	movs r0, #0xa0
	strh r0, [r7, #0x24]
	movs r0, #0xff
	strb r0, [r7, #0x14]
	ldr r0, [r7, #0x30]
	adds r0, #6
	str r0, [r7, #0x30]
	str r7, [r7, #0x50]
	adds r1, r7, #0
	adds r1, #0x74
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x75
	strb r2, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, r7, #0
	bl sub_08029E0C
	adds r0, r7, #0
	bl sub_08029EEC
_08029A8E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08029A90: .4byte gUnk_03003DBC

	thumb_func_start sub_08029A94
sub_08029A94: @ 0x08029A94
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0802A098
	pop {r4, pc}

	thumb_func_start sub_08029AA4
sub_08029AA4: @ 0x08029AA4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029ADA
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #0x84
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	adds r2, r1, #0
	adds r2, #0x3f
	movs r0, #0x6a
	strb r0, [r2]
	adds r2, #0x3b
	adds r0, #0xfe
	strh r0, [r2]
	subs r2, #5
	movs r0, #4
	strb r0, [r2]
	adds r0, r1, #0
	bl sub_08029EEC
	ldr r0, _08029ADC @ =0x0000019D
	bl sub_08004488
_08029ADA:
	pop {pc}
	.align 2, 0
_08029ADC: .4byte 0x0000019D

	thumb_func_start sub_08029AE0
sub_08029AE0: @ 0x08029AE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0802A16C
	adds r0, r4, #0
	bl sub_0802A098
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08029B28
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
	subs r1, #5
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08029EEC
	adds r0, r4, #0
	movs r1, #0x77
	bl sub_0801D2B4
	movs r0, #0xc1
	lsls r0, r0, #1
	bl sub_08004488
_08029B28:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029B2C
sub_08029B2C: @ 0x08029B2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A14C
	cmp r0, #0
	beq _08029B7A
	adds r2, r4, #0
	adds r2, #0x86
	ldrb r0, [r2]
	cmp r0, #0
	beq _08029B60
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029B8A
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	adds r0, r4, #0
	bl sub_0805E7BC
	b _08029B8A
_08029B60:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #4
	subs r1, r1, r0
	movs r0, #0x5a
	subs r0, r0, r1
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r2]
	b _08029B8A
_08029B7A:
	ldr r0, _08029B8C @ =gUnk_080CCD88
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08029B8A:
	pop {r4, pc}
	.align 2, 0
_08029B8C: .4byte gUnk_080CCD88

	thumb_func_start sub_08029B90
sub_08029B90: @ 0x08029B90
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0802A058
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _08029BBA
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _08029BC2
_08029BBA:
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_08029BC2:
	pop {r4, pc}

	thumb_func_start sub_08029BC4
sub_08029BC4: @ 0x08029BC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0802A18C
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	adds r0, r4, #0
	bl sub_08029FE4
	cmp r0, #0
	beq _08029BF2
	ldrb r0, [r4, #0xa]
	movs r2, #4
	cmp r0, #1
	bhi _08029BE8
	movs r2, #0
_08029BE8:
	ldrb r1, [r4, #0x14]
	adds r1, r1, r2
	adds r0, r4, #0
	bl sub_08004260
_08029BF2:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	subs r1, r1, r5
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	adds r0, r4, #0
	bl sub_08029FB4
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08029C08
sub_08029C08: @ 0x08029C08
	movs r1, #3
	strb r1, [r0, #0xc]
	ldr r2, _08029C28 @ =gUnk_080CCDA0
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #0xe]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0x6b
	strb r1, [r2]
	ldr r1, [r0, #0x54]
	movs r0, #2
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08029C28: .4byte gUnk_080CCDA0

	thumb_func_start sub_08029C2C
sub_08029C2C: @ 0x08029C2C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029C4E
	movs r0, #4
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #0x7f
	bl sub_0801D2B4
	movs r0, #0x6c
	bl sub_08004488
_08029C4E:
	pop {pc}

	thumb_func_start sub_08029C50
sub_08029C50: @ 0x08029C50
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029C68
	movs r0, #5
	strb r0, [r1, #0xc]
	adds r1, #0x3f
	movs r0, #0x6a
	strb r0, [r1]
_08029C68:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08029C6C
sub_08029C6C: @ 0x08029C6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A18C
	adds r0, r4, #0
	bl sub_08029BC4
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	beq _08029C90
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x77
	bl sub_0801D2B4
	b _08029C96
_08029C90:
	adds r0, r4, #0
	bl sub_0802A16C
_08029C96:
	pop {r4, pc}

	thumb_func_start sub_08029C98
sub_08029C98: @ 0x08029C98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A14C
	cmp r0, #0
	beq _08029CB6
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	adds r0, r4, #0
	bl sub_0805E7BC
	b _08029CC6
_08029CB6:
	ldr r0, _08029CC8 @ =gUnk_080CCDA8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08029CC6:
	pop {r4, pc}
	.align 2, 0
_08029CC8: .4byte gUnk_080CCDA8

	thumb_func_start sub_08029CCC
sub_08029CCC: @ 0x08029CCC
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0802A058
	adds r0, r4, #0
	movs r1, #8
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08029CF0
sub_08029CF0: @ 0x08029CF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08029FE4
	cmp r0, #0
	beq _08029D06
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_08029D06:
	pop {r4, pc}

	thumb_func_start sub_08029D08
sub_08029D08: @ 0x08029D08
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0x47
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_08029D14
sub_08029D14: @ 0x08029D14
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08029D42
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029D70
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #0x7f
	bl sub_0801D2B4
	movs r0, #0x6c
	bl sub_08004488
	b _08029D70
_08029D42:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08029D70
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6c
	strb r0, [r1]
	ldr r0, _08029D74 @ =gUnk_080FD298
	str r0, [r4, #0x48]
	movs r0, #0x6b
	bl sub_08004488
_08029D70:
	pop {r4, pc}
	.align 2, 0
_08029D74: .4byte gUnk_080FD298

	thumb_func_start sub_08029D78
sub_08029D78: @ 0x08029D78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A0F8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029DA6
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6a
	strb r0, [r1]
	ldr r0, _08029DA8 @ =gUnk_080FD2A0
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_08004260
_08029DA6:
	pop {r4, pc}
	.align 2, 0
_08029DA8: .4byte gUnk_080FD2A0

	thumb_func_start sub_08029DAC
sub_08029DAC: @ 0x08029DAC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08029DD8
	movs r0, #6
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	adds r0, #0x77
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_08029DD8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029DDC
sub_08029DDC: @ 0x08029DDC
	movs r1, #7
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08029DE4
sub_08029DE4: @ 0x08029DE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08029CF0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	beq _08029E02
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x77
	bl sub_0801D2B4
	b _08029E08
_08029E02:
	adds r0, r4, #0
	bl sub_0802A16C
_08029E08:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029E0C
sub_08029E0C: @ 0x08029E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _08029EE0 @ =gUnk_080CCDC8
	adds r1, r1, r0
	str r1, [sp]
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	subs r1, #1
	mov sl, r1
	bl sub_08000E50
	adds r1, r0, #0
	movs r0, #0xf
	ands r0, r1
	movs r1, #3
	bl __modsi3
	mov sb, r0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _08029EE4 @ =gUnk_03000BF0
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	mov r8, r0
	movs r2, #0x3f
	ands r0, r2
	mov r8, r0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	movs r7, #0
_08029E72:
	ldr r0, [sp]
	add r0, sb
	ldrb r4, [r0]
	lsrs r0, r4, #3
	lsls r0, r0, #1
	ldr r1, _08029EE8 @ =gUnk_080B4488
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	add r0, r8
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	adds r6, r5, #0
	adds r6, #0x74
	cmp r0, #0
	bne _08029EA6
	str r4, [sp, #4]
	ldrb r1, [r5, #0x15]
	ldrb r0, [r6]
	subs r0, r1, r0
	subs r1, r4, r1
	cmp r0, r1
	bne _08029EBA
_08029EA6:
	mov r0, sb
	add r0, sl
	adds r0, #3
	movs r1, #3
	bl __modsi3
	mov sb, r0
	adds r7, #1
	cmp r7, #2
	bls _08029E72
_08029EBA:
	cmp r7, #3
	bne _08029EC0
	ldr r4, [sp, #4]
_08029EC0:
	ldrb r1, [r5, #0x15]
	ldrb r0, [r6]
	cmp r0, r1
	beq _08029ECA
	strb r1, [r6]
_08029ECA:
	strb r4, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08029F0C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08029EE0: .4byte gUnk_080CCDC8
_08029EE4: .4byte gUnk_03000BF0
_08029EE8: .4byte gUnk_080B4488

	thumb_func_start sub_08029EEC
sub_08029EEC: @ 0x08029EEC
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x15]
	adds r2, r3, #0
	adds r2, #0x75
	lsrs r0, r0, #3
	ldrb r2, [r2]
	adds r1, r0, r2
	ldrb r0, [r3, #0x14]
	cmp r1, r0
	beq _08029F0A
	strb r1, [r3, #0x14]
	adds r0, r3, #0
	bl sub_080042AC
_08029F0A:
	pop {pc}

	thumb_func_start sub_08029F0C
sub_08029F0C: @ 0x08029F0C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _08029F30
	cmp r0, #1
	bgt _08029F22
	cmp r0, #0
	beq _08029F2C
	b _08029F44
_08029F22:
	cmp r0, #2
	beq _08029F36
	cmp r0, #3
	beq _08029F3C
	b _08029F44
_08029F2C:
	ldrh r0, [r1, #0x32]
	b _08029F3E
_08029F30:
	ldrh r0, [r1, #0x2e]
	adds r0, #0x10
	b _08029F40
_08029F36:
	ldrh r0, [r1, #0x32]
	adds r0, #0x10
	b _08029F40
_08029F3C:
	ldrh r0, [r1, #0x2e]
_08029F3E:
	subs r0, #0x10
_08029F40:
	adds r1, #0x78
	strh r0, [r1]
_08029F44:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08029F48
sub_08029F48: @ 0x08029F48
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _08029F78
	cmp r0, #1
	bgt _08029F5E
	cmp r0, #0
	beq _08029F68
	b _08029FB0
_08029F5E:
	cmp r0, #2
	beq _08029F88
	cmp r0, #3
	beq _08029F9C
	b _08029FB0
_08029F68:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	bgt _08029FB0
	b _08029F96
_08029F78:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	blt _08029FB0
	b _08029FAA
_08029F88:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	blt _08029FB0
_08029F96:
	strh r0, [r2, #0x32]
	movs r0, #1
	b _08029FB2
_08029F9C:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	bgt _08029FB0
_08029FAA:
	strh r0, [r2, #0x2e]
	movs r0, #1
	b _08029FB2
_08029FB0:
	movs r0, #0
_08029FB2:
	pop {pc}

	thumb_func_start sub_08029FB4
sub_08029FB4: @ 0x08029FB4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r6, [r0, #0x54]
	adds r6, #0x78
	ldr r0, [r0, #0x50]
	adds r0, #0x7e
	ldrb r0, [r0]
	movs r1, #0xe
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r6, r0
	adds r5, #8
	movs r0, #0xf
	ands r5, r0
	adds r4, #8
	ands r4, r0
	lsls r4, r4, #4
	orrs r5, r4
	strb r5, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08029FE4
sub_08029FE4: @ 0x08029FE4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x78
	ldr r0, [r5, #0x50]
	adds r0, #0x7e
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #0xe
	bl __modsi3
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	subs r0, #8
	lsrs r1, r1, #4
	subs r1, #8
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
	lsrs r6, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r5, #0x32]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	adds r0, r5, #0
	bl sub_08004274
	movs r1, #0xff
	cmp r4, #0
	beq _0802A032
	movs r1, #3
	cmp r4, #0
	ble _0802A032
	movs r1, #1
_0802A032:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0802A042
	movs r1, #0
	cmp r0, #0
	ble _0802A042
	movs r1, #2
_0802A042:
	cmp r1, #0xff
	beq _0802A052
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	beq _0802A052
	strb r1, [r5, #0x14]
	movs r0, #1
	b _0802A054
_0802A052:
	movs r0, #0
_0802A054:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802A058
sub_0802A058: @ 0x0802A058
	adds r2, r0, #0
	adds r0, #0x78
	movs r1, #0x88
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A098
sub_0802A098: @ 0x0802A098
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, #0xe
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802A0B8
	strb r0, [r5]
_0802A0B8:
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08029F48
	cmp r0, #0
	beq _0802A0E4
	adds r0, r4, #0
	bl sub_08029E0C
	adds r0, r4, #0
	bl sub_08029EEC
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_0802A0E4:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	subs r1, r1, r5
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	adds r0, r4, #0
	bl sub_08029FB4
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802A0F8
sub_0802A0F8: @ 0x0802A0F8
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x45
	ldrb r4, [r0]
	cmp r4, #0
	beq _0802A134
	subs r0, #4
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A14A
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802A14A
	adds r2, r3, #0
	movs r3, #0
	adds r4, r1, #0
_0802A122:
	ldr r2, [r2, #0x54]
	ldrb r0, [r4]
	adds r1, r2, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r3, #1
	cmp r3, #5
	bls _0802A122
	b _0802A14A
_0802A134:
	ldr r2, [r3, #0x50]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r0, [r3, #0x50]
	adds r0, #0x45
	strb r4, [r0]
	ldr r1, [r3, #0x50]
	movs r0, #0x69
	strb r0, [r1, #0xf]
_0802A14A:
	pop {r4, pc}

	thumb_func_start sub_0802A14C
sub_0802A14C: @ 0x0802A14C
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A166
	adds r0, r1, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A168
_0802A166:
	movs r2, #1
_0802A168:
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_0802A16C
sub_0802A16C: @ 0x0802A16C
	push {lr}
	ldr r3, _0802A188 @ =gUnk_080CCDD4
	ldr r1, [r0, #0x50]
	adds r1, #0x7a
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	bl sub_0801D2B4
	pop {pc}
	.align 2, 0
_0802A188: .4byte gUnk_080CCDD4

	thumb_func_start sub_0802A18C
sub_0802A18C: @ 0x0802A18C
	push {lr}
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A234
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1e
	bhi _0802A22C
	lsls r0, r0, #2
	ldr r1, _0802A1AC @ =_0802A1B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802A1AC: .4byte _0802A1B0
_0802A1B0: @ jump table
	.4byte _0802A234 @ case 0
	.4byte _0802A234 @ case 1
	.4byte _0802A234 @ case 2
	.4byte _0802A234 @ case 3
	.4byte _0802A22C @ case 4
	.4byte _0802A22C @ case 5
	.4byte _0802A22C @ case 6
	.4byte _0802A22C @ case 7
	.4byte _0802A22C @ case 8
	.4byte _0802A22C @ case 9
	.4byte _0802A22C @ case 10
	.4byte _0802A22C @ case 11
	.4byte _0802A22C @ case 12
	.4byte _0802A22C @ case 13
	.4byte _0802A22C @ case 14
	.4byte _0802A234 @ case 15
	.4byte _0802A22C @ case 16
	.4byte _0802A22C @ case 17
	.4byte _0802A22C @ case 18
	.4byte _0802A234 @ case 19
	.4byte _0802A22C @ case 20
	.4byte _0802A22C @ case 21
	.4byte _0802A22C @ case 22
	.4byte _0802A22C @ case 23
	.4byte _0802A22C @ case 24
	.4byte _0802A22C @ case 25
	.4byte _0802A22C @ case 26
	.4byte _0802A234 @ case 27
	.4byte _0802A22C @ case 28
	.4byte _0802A22C @ case 29
	.4byte _0802A234 @ case 30
_0802A22C:
	movs r0, #0x97
	lsls r0, r0, #1
	bl sub_08004488
_0802A234:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802A238
sub_0802A238: @ 0x0802A238
	push {lr}
	ldr r2, _0802A24C @ =gUnk_080CD030
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802A24C: .4byte gUnk_080CD030

	thumb_func_start sub_0802A250
sub_0802A250: @ 0x0802A250
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xe]
	ldr r0, _0802A2A8 @ =0xFFFD0000
	str r0, [r5, #0x20]
	bl sub_08000E50
	ldr r1, _0802A2AC @ =gUnk_080CD03C
	movs r4, #3
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r5, #0x24]
	bl sub_08000E50
	ldr r1, _0802A2B0 @ =gUnk_080CD040
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #0x18
	strb r0, [r5, #0x15]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r5, #0
	bl sub_08016A04
	movs r0, #0x66
	movs r1, #0
	movs r2, #0
	bl sub_080A2960
	cmp r0, #0
	beq _0802A2A6
	str r5, [r0, #0x50]
_0802A2A6:
	pop {r4, r5, pc}
	.align 2, 0
_0802A2A8: .4byte 0xFFFD0000
_0802A2AC: .4byte gUnk_080CD03C
_0802A2B0: .4byte gUnk_080CD040

	thumb_func_start sub_0802A2B4
sub_0802A2B4: @ 0x0802A2B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _0802A2DC
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x84
	bl sub_08004488
	b _0802A2E2
_0802A2DC:
	adds r0, r4, #0
	bl sub_0806F69C
_0802A2E2:
	adds r0, r4, #0
	bl sub_0802A39C
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802A2FA
	adds r0, r4, #0
	bl sub_0802A334
_0802A2FA:
	pop {r4, pc}

	thumb_func_start sub_0802A2FC
sub_0802A2FC: @ 0x0802A2FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A31A
	adds r0, r4, #0
	bl sub_0805E7BC
	b _0802A332
_0802A31A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A32C
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _0802A332
_0802A32C:
	adds r0, r4, #0
	bl sub_0802A39C
_0802A332:
	pop {r4, pc}

	thumb_func_start sub_0802A334
sub_0802A334: @ 0x0802A334
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802A380 @ =gUnk_03000BF0
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	ldr r3, _0802A384 @ =gUnk_03000F50
	subs r1, r1, r0
	ldrh r5, [r3, #0x16]
	adds r1, r1, r5
	asrs r1, r1, #3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	movs r5, #0xc
	ldrsh r2, [r2, r5]
	subs r0, r0, r2
	ldrh r3, [r3, #0x18]
	adds r0, r0, r3
	asrs r0, r0, #3
	ldr r3, _0802A388 @ =gUnk_02001A40
	movs r2, #0x1f
	ands r1, r2
	ands r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A38C
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	b _0802A392
	.align 2, 0
_0802A380: .4byte gUnk_03000BF0
_0802A384: .4byte gUnk_03000F50
_0802A388: .4byte gUnk_02001A40
_0802A38C:
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
_0802A392:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08016A04
	pop {r4, r5, pc}

	thumb_func_start sub_0802A39C
sub_0802A39C: @ 0x0802A39C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0802A3EC @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802A3F0 @ =gUnk_03000BF0
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	ldr r3, _0802A3F4 @ =gUnk_03000F50
	subs r1, r1, r0
	ldrh r6, [r3, #0x16]
	adds r1, r1, r6
	asrs r1, r1, #3
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	movs r4, #0xc
	ldrsh r2, [r2, r4]
	subs r0, r0, r2
	ldrh r3, [r3, #0x18]
	adds r0, r0, r3
	subs r0, #0xa
	asrs r0, r0, #3
	ldr r3, _0802A3F8 @ =gUnk_02001A40
	movs r2, #0x1f
	ands r1, r2
	ands r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	movs r6, #0x80
	lsls r6, r6, #3
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A3FC
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802A402
	.align 2, 0
_0802A3EC: .4byte gLinkEntity
_0802A3F0: .4byte gUnk_03000BF0
_0802A3F4: .4byte gUnk_03000F50
_0802A3F8: .4byte gUnk_02001A40
_0802A3FC:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802A402:
	strb r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802A408
sub_0802A408: @ 0x0802A408
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802A430 @ =gUnk_080CD07C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802A430: .4byte gUnk_080CD07C

	thumb_func_start sub_0802A434
sub_0802A434: @ 0x0802A434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A78C
	ldr r1, _0802A450 @ =gUnk_080CD094
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0802A450: .4byte gUnk_080CD094

	thumb_func_start sub_0802A454
sub_0802A454: @ 0x0802A454
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x75
	beq _0802A4A8
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r2, #0x7f
	adds r1, r2, #0
	ands r1, r0
	cmp r1, #0
	beq _0802A474
	cmp r1, #0x1e
	bne _0802A4A8
_0802A474:
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _0802A4D8 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	adds r2, r4, #0
	adds r2, #0x7e
	strh r0, [r2]
	ldrh r2, [r1, #0x32]
	adds r0, r4, #0
	adds r0, #0x80
	strh r2, [r0]
	ldrh r0, [r1, #0x36]
	adds r1, r4, #0
	adds r1, #0x82
	strh r0, [r1]
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _0802A4A8
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0802A4A8:
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _0802A4BC
	cmp r1, #4
	bls _0802A4BC
	subs r0, #4
	strb r0, [r2]
_0802A4BC:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A4CE
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802A4CE:
	ldr r1, _0802A4DC @ =gUnk_080CD07C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0802A4D8: .4byte gLinkEntity
_0802A4DC: .4byte gUnk_080CD07C

	thumb_func_start nullsub_142
nullsub_142: @ 0x0802A4E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A4E4
sub_0802A4E4: @ 0x0802A4E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	bl sub_08000E50
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r1, [r0]
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r4, #0
	bl sub_0802A7D0
	pop {r4, pc}

	thumb_func_start sub_0802A534
sub_0802A534: @ 0x0802A534
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A548
	subs r0, #1
	strh r0, [r1]
	b _0802A5B0
_0802A548:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802A5B0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A5B0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r2, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #0x32]
	strh r0, [r4, #0x32]
	ldr r0, _0802A5B4 @ =0x0000FF80
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0802A7D0
_0802A5B0:
	pop {r4, pc}
	.align 2, 0
_0802A5B4: .4byte 0x0000FF80

	thumb_func_start sub_0802A5B8
sub_0802A5B8: @ 0x0802A5B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A5E8
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802A60E
	ldr r0, _0802A5E4 @ =0x0000012D
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0802A60E
	.align 2, 0
_0802A5E4: .4byte 0x0000012D
_0802A5E8:
	ldrh r0, [r4, #0x36]
	adds r0, #3
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0802A60E
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strh r2, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0802A60E:
	pop {r4, pc}

	thumb_func_start sub_0802A610
sub_0802A610: @ 0x0802A610
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0802A7D0
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802A63A
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0802A64C
_0802A63A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A64C
	strb r2, [r3]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x75
	strb r0, [r1]
_0802A64C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802A650
sub_0802A650: @ 0x0802A650
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldrh r0, [r4, #0x36]
	subs r0, #2
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0802A69A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x74
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
_0802A69A:
	pop {r4, pc}

	thumb_func_start sub_0802A69C
sub_0802A69C: @ 0x0802A69C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldr r2, _0802A6E4 @ =gUnk_03003F80
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0xa]
	ldrb r1, [r2, #0x1a]
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r1, _0802A6E8 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	strh r0, [r1, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r1, #0x32]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x36]
	movs r3, #0x36
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _0802A6F0
	cmp r0, r1
	bge _0802A6EC
	subs r0, r2, #1
	b _0802A6EE
	.align 2, 0
_0802A6E4: .4byte gUnk_03003F80
_0802A6E8: .4byte gLinkEntity
_0802A6EC:
	adds r0, r2, #1
_0802A6EE:
	strh r0, [r4, #0x36]
_0802A6F0:
	adds r0, r4, #0
	bl sub_08004274
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802A712
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0802A72E
_0802A712:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A72E
	strb r2, [r3]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #3
	strb r0, [r1]
	ldr r2, _0802A730 @ =gLinkEntity
	ldrb r1, [r2, #0x18]
	subs r0, #7
	ands r0, r1
	strb r0, [r2, #0x18]
_0802A72E:
	pop {r4, pc}
	.align 2, 0
_0802A730: .4byte gLinkEntity

	thumb_func_start sub_0802A734
sub_0802A734: @ 0x0802A734
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802A768
	bl sub_0805E5A8
	ldr r1, _0802A760 @ =gUnk_0813AB1C
	ldr r0, _0802A764 @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08080840
	b _0802A780
	.align 2, 0
_0802A760: .4byte gUnk_0813AB1C
_0802A764: .4byte gUnk_02033A90
_0802A768:
	ldr r0, [r4, #0x34]
	ldr r1, _0802A784 @ =0xFFFE0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r1, _0802A788 @ =gUnk_03003F80
	ldrb r0, [r1, #0xa]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0xa]
	ldrb r0, [r1, #0x1a]
	orrs r0, r2
	strb r0, [r1, #0x1a]
_0802A780:
	pop {r4, pc}
	.align 2, 0
_0802A784: .4byte 0xFFFE0000
_0802A788: .4byte gUnk_03003F80

	thumb_func_start sub_0802A78C
sub_0802A78C: @ 0x0802A78C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0802A7CC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802A7BC
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802A7CC
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A7CC
	subs r0, #1
	strh r0, [r1]
	b _0802A7CC
_0802A7BC:
	ldrb r0, [r4, #0xb]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, #1
	adds r0, r4, #0
	adds r0, #0x7a
	strh r1, [r0]
_0802A7CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802A7D0
sub_0802A7D0: @ 0x0802A7D0
	push {r4, lr}
	ldr r3, _0802A800 @ =gUnk_080CD0B0
	movs r1, #0x7d
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	adds r2, r1, #1
	mov r4, ip
	strb r2, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_0802A800: .4byte gUnk_080CD0B0

	thumb_func_start sub_0802A804
sub_0802A804: @ 0x0802A804
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0802A830
	adds r0, r5, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _0802A830
	ldr r0, _0802A82C @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0802A844
	.align 2, 0
_0802A82C: .4byte gUnk_080012C8
_0802A830:
	ldr r4, _0802A848 @ =gUnk_080CD0F0
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0802A844:
	pop {r4, r5, pc}
	.align 2, 0
_0802A848: .4byte gUnk_080CD0F0

	thumb_func_start sub_0802A84C
sub_0802A84C: @ 0x0802A84C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0802A878
	cmp r0, #3
	beq _0802A894
	ldr r0, _0802A874 @ =gUnk_080CD108
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0802AD54
	b _0802A8A4
	.align 2, 0
_0802A874: .4byte gUnk_080CD108
_0802A878:
	ldr r0, _0802A890 @ =gUnk_080CD120
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0802B048
	b _0802A8A4
	.align 2, 0
_0802A890: .4byte gUnk_080CD120
_0802A894:
	ldr r0, _0802A8A8 @ =gUnk_080CD134
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0802A8A4:
	pop {r4, pc}
	.align 2, 0
_0802A8A8: .4byte gUnk_080CD134

	thumb_func_start sub_0802A8AC
sub_0802A8AC: @ 0x0802A8AC
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x81
	movs r0, #0
	strb r0, [r2]
	ldrb r0, [r1, #0xa]
	cmp r0, #1
	bhi _0802A8C6
	adds r0, r1, #0
	movs r1, #0
	bl sub_08004260
_0802A8C6:
	pop {pc}

	thumb_func_start sub_0802A8C8
sub_0802A8C8: @ 0x0802A8C8
	push {lr}
	ldr r2, _0802A8DC @ =gUnk_080CD140
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802A8DC: .4byte gUnk_080CD140

	thumb_func_start sub_0802A8E0
sub_0802A8E0: @ 0x0802A8E0
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A8EC
sub_0802A8EC: @ 0x0802A8EC
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802A8F4
sub_0802A8F4: @ 0x0802A8F4
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0802A8FC
sub_0802A8FC: @ 0x0802A8FC
	push {lr}
	adds r2, r0, #0
	ldr r0, _0802A914 @ =gUnk_03003F80
	ldrb r0, [r0, #0x1c]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _0802A912
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0802A912:
	pop {pc}
	.align 2, 0
_0802A914: .4byte gUnk_03003F80

	thumb_func_start nullsub_143
nullsub_143: @ 0x0802A918
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A91C
sub_0802A91C: @ 0x0802A91C
	adds r0, #0x45
	movs r1, #0
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0802A924
sub_0802A924: @ 0x0802A924
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	movs r6, #1
	movs r0, #1
	strb r0, [r7, #0xc]
	strb r5, [r7, #0xd]
	strb r5, [r7, #0xe]
	strb r5, [r7, #0xf]
	ldr r0, _0802A9A0 @ =gUnk_080CD16C
	str r0, [r7, #0x48]
	movs r4, #0
	ldr r0, _0802A9A4 @ =0x0000FFD0
	strh r0, [r7, #0x36]
	bl sub_08000E50
	ands r0, r6
	adds r1, r7, #0
	adds r1, #0x80
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x82
	strh r5, [r0]
	subs r0, #7
	strb r4, [r0]
	adds r0, #6
	strb r4, [r0]
	subs r0, #7
	strb r4, [r0]
	subs r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	subs r1, #0x48
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r7, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r7, #0x1b]
	ldrb r0, [r7, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r7, #0x19]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldrb r1, [r7, #0xa]
	adds r1, #1
	adds r0, r7, #0
	bl sub_08004260
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802A9A0: .4byte gUnk_080CD16C
_0802A9A4: .4byte 0x0000FFD0

	thumb_func_start sub_0802A9A8
sub_0802A9A8: @ 0x0802A9A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802A9B8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _0802AA3E
_0802A9B8:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802A9DE
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802AA38
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802ACDC
	b _0802AA38
_0802A9DE:
	ldr r0, _0802AA14 @ =gUnk_03000BF0
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _0802AA3E
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AA18
	ldrh r0, [r2, #0xa]
	subs r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #8
	b _0802AA26
	.align 2, 0
_0802AA14: .4byte gUnk_03000BF0
_0802AA18:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #0x18
_0802AA26:
	strb r0, [r4, #0x15]
	ldrh r0, [r2, #0xc]
	adds r0, #0x40
	strh r0, [r4, #0x32]
	movs r0, #0x80
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0802ADDC
_0802AA38:
	adds r0, r4, #0
	bl sub_0802AC40
_0802AA3E:
	pop {r4, pc}

	thumb_func_start sub_0802AA40
sub_0802AA40: @ 0x0802AA40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AA66
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802ACDC
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802AA66:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802AA72
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802AABE
_0802AA72:
	ldr r2, [r4, #0x54]
	cmp r2, #0
	beq _0802AABE
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _0802AA82
	str r0, [r4, #0x54]
	b _0802AABE
_0802AA82:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r0, #0
	adds r1, #0x18
	movs r0, #0x18
	ands r1, r0
	adds r3, r4, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0x20
	bls _0802AA9E
	strb r1, [r4, #0x15]
_0802AA9E:
	ldrb r0, [r4, #0x15]
	cmp r0, r1
	bne _0802AABE
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	strb r1, [r3]
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x96
	strb r0, [r2, #0xe]
_0802AABE:
	pop {r4, pc}

	thumb_func_start sub_0802AAC0
sub_0802AAC0: @ 0x0802AAC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r6, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AADE
	adds r0, r4, #0
	movs r1, #4
	bl sub_0802AD1C
_0802AADE:
	adds r2, r4, #0
	adds r2, #0x81
	ldrb r5, [r2]
	cmp r5, #0
	beq _0802AB0E
	ldr r1, [r4, #0x54]
	cmp r1, #0
	bne _0802AAF2
	strb r1, [r2]
	b _0802AB3C
_0802AAF2:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0802AAFE
	strb r0, [r2]
	str r0, [r4, #0x54]
	b _0802AB3C
_0802AAFE:
	ldrb r3, [r1, #0xe]
	cmp r3, #0
	bne _0802AB3C
	ldrb r0, [r1, #0xf]
	cmp r0, #0x50
	bhi _0802AB3C
	strb r3, [r2]
	b _0802AB3C
_0802AB0E:
	movs r3, #4
	strb r3, [r4, #0xc]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	strb r5, [r0]
	adds r0, #1
	strb r3, [r0]
	ldrb r0, [r4, #0x15]
	orrs r0, r6
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0802AB3C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802AB40
sub_0802AB40: @ 0x0802AB40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	adds r3, r4, #0
	adds r3, #0x78
	ldrb r0, [r3]
	cmp r0, #1
	beq _0802AB94
	cmp r0, #1
	bgt _0802AB5C
	cmp r0, #0
	beq _0802AB62
	b _0802AC04
_0802AB5C:
	cmp r0, #2
	beq _0802ABC2
	b _0802AC04
_0802AB62:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0802AB86
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AC04
	movs r0, #4
	strb r0, [r1]
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	b _0802AC04
_0802AB86:
	movs r0, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x30
	strb r0, [r1]
	b _0802ABB6
_0802AB94:
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802ABAE
	movs r0, #2
	strb r0, [r3]
	movs r0, #4
	strb r0, [r2]
	b _0802AC04
_0802ABAE:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0802AC04
_0802ABB6:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _0802AC04
_0802ABC2:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x30
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802ABF2
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AC04
	movs r0, #4
	strb r0, [r1]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #4
	bl sub_0802ACDC
	b _0802AC04
_0802ABF2:
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x24]
	ldrb r1, [r4, #0xa]
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
_0802AC04:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802AC08
sub_0802AC08: @ 0x0802AC08
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802AC36
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802ACDC
	adds r0, r4, #0
	bl sub_0802ADDC
_0802AC36:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802AC40
sub_0802AC40: @ 0x0802AC40
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802ACA2
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	bne _0802AC72
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	b _0802ACD8
_0802AC72:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802AC92
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #8
	beq _0802ACDA
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0802ACD6
_0802AC92:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	beq _0802ACDA
	b _0802ACCE
_0802ACA2:
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	beq _0802ACDA
	movs r0, #1
	strb r0, [r5]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802ACC8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0802ACD6
_0802ACC8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
_0802ACCE:
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
_0802ACD6:
	orrs r0, r1
_0802ACD8:
	strb r0, [r2]
_0802ACDA:
	pop {r4, r5, pc}

	thumb_func_start sub_0802ACDC
sub_0802ACDC: @ 0x0802ACDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ACF8
	ldr r0, _0802ACF4 @ =gUnk_03000BF0
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	adds r1, #0x20
	b _0802AD00
	.align 2, 0
_0802ACF4: .4byte gUnk_03000BF0
_0802ACF8:
	ldr r0, _0802AD18 @ =gUnk_03000BF0
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	adds r1, #0xd0
_0802AD00:
	movs r3, #0xc
	ldrsh r2, [r0, r3]
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	strb r5, [r4, #0xf]
	pop {r4, r5, pc}
	.align 2, 0
_0802AD18: .4byte gUnk_03000BF0

	thumb_func_start sub_0802AD1C
sub_0802AD1C: @ 0x0802AD1C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0802AD48
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	subs r2, #0x18
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	adds r0, r4, #0
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	strb r5, [r4, #0xf]
	b _0802AD50
_0802AD48:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802ACDC
_0802AD50:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802AD54
sub_0802AD54: @ 0x0802AD54
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x82
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802ADAE
	ldr r4, _0802AD7C @ =gUnk_03000BF0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802AD80
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	bl sub_0805E7BC
	b _0802ADD8
	.align 2, 0
_0802AD7C: .4byte gUnk_03000BF0
_0802AD80:
	ldrh r1, [r4, #8]
	movs r0, #0x32
	ldrsh r3, [r2, r0]
	cmp r1, r3
	bgt _0802AD94
	ldrh r0, [r4, #0x20]
	adds r0, r1, r0
	adds r0, #0x20
	cmp r0, r3
	bge _0802ADA0
_0802AD94:
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0802ADAE
_0802ADA0:
	ldrb r0, [r2, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #0x18]
_0802ADAE:
	adds r0, r2, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ADD8
	ldr r0, [r2, #0x54]
	cmp r0, #0
	beq _0802ADC4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802ADD8
_0802ADC4:
	movs r1, #4
	strb r1, [r2, #0xc]
	movs r0, #0xc0
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_0802ADD8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802ADDC
sub_0802ADDC: @ 0x0802ADDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	adds r1, #2
	movs r0, #0x1b
	bl sub_0804AA60
	adds r5, r0, #0
	cmp r5, #0
	beq _0802AE20
	adds r0, r4, #0
	bl sub_0802B234
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	strb r1, [r5, #0xb]
	str r4, [r5, #0x50]
	str r5, [r4, #0x54]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA24
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802AE20
	subs r1, #7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802AE20:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802AE24
sub_0802AE24: @ 0x0802AE24
	push {lr}
	mov ip, r0
	movs r2, #0
	movs r3, #1
	strb r3, [r0, #0xc]
	movs r0, #0xf0
	mov r1, ip
	strb r0, [r1, #0xe]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x20]
	ldr r0, _0802AE64 @ =gUnk_080CD174
	str r0, [r1, #0x48]
	adds r1, #0x3c
	movs r0, #3
	strb r0, [r1]
	mov r0, ip
	strb r2, [r0, #0x16]
	movs r0, #2
	mov r1, ip
	strb r0, [r1, #0x1c]
	mov r0, ip
	adds r0, #0x81
	strb r2, [r0]
	subs r0, #6
	strb r3, [r0]
	mov r0, ip
	movs r1, #3
	bl sub_08004260
	pop {pc}
	.align 2, 0
_0802AE64: .4byte gUnk_080CD174

	thumb_func_start sub_0802AE68
sub_0802AE68: @ 0x0802AE68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802B250
	adds r1, r0, #0
	cmp r1, #0
	bne _0802AE8A
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802B264
	b _0802AEBA
_0802AE8A:
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AEA8
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0802AEBA
_0802AEA8:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802B264
_0802AEBA:
	pop {r4, pc}

	thumb_func_start sub_0802AEBC
sub_0802AEBC: @ 0x0802AEBC
	push {lr}
	ldr r2, _0802AED0 @ =gUnk_080CD158
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802AED0: .4byte gUnk_080CD158

	thumb_func_start sub_0802AED4
sub_0802AED4: @ 0x0802AED4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r0, [r5]
	cmp r0, #1
	bhi _0802AEFC
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802AF0C
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0802AF0C
_0802AEFC:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0802AF0C
	adds r0, r4, #0
	bl sub_08078930
_0802AF0C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802AF24
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AF24
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
_0802AF24:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802AF28
sub_0802AF28: @ 0x0802AF28
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08079BD8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0802AF50
sub_0802AF50: @ 0x0802AF50
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0802AF58
sub_0802AF58: @ 0x0802AF58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802AF74
sub_0802AF74: @ 0x0802AF74
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	movs r1, #3
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xe]
	cmp r0, #0x3c
	bls _0802AF8A
	movs r0, #0x3c
	strb r0, [r2, #0xe]
_0802AF8A:
	adds r0, r2, #0
	bl sub_08004274
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802AF94
sub_0802AF94: @ 0x0802AF94
	push {lr}
	bl sub_0805E7BC
	pop {pc}

	thumb_func_start sub_0802AF9C
sub_0802AF9C: @ 0x0802AF9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AFC6
	ldr r0, [r4, #0x50]
	adds r1, r0, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802AFC0
	subs r0, #1
	strb r0, [r1]
_0802AFC0:
	adds r0, r4, #0
	bl sub_0805E7BC
_0802AFC6:
	pop {r4, pc}

	thumb_func_start sub_0802AFC8
sub_0802AFC8: @ 0x0802AFC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	movs r7, #8
	cmp r0, #0x28
	bhi _0802B022
	movs r7, #4
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802AFEC
	adds r0, r2, #0
	subs r0, #0x10
	b _0802AFF0
_0802AFEC:
	adds r0, r2, #0
	adds r0, #0x10
_0802AFF0:
	strh r0, [r1]
	adds r5, r1, #0
	ldrh r2, [r5]
	movs r6, #0xf0
	adds r3, r6, #0
	ands r3, r2
	subs r0, r3, #1
	cmp r0, #0x7f
	bls _0802B00C
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	eors r0, r2
	strh r0, [r5]
_0802B00C:
	ldrh r0, [r1]
	adds r3, r6, #0
	ands r3, r0
	movs r2, #0x98
	lsls r2, r2, #1
	subs r2, r2, r3
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_0802B022:
	ldrb r0, [r4, #0xf]
	ands r0, r7
	cmp r0, #0
	beq _0802B03A
	ldrb r0, [r4, #0x1a]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1a]
	b _0802B044
_0802B03A:
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
_0802B044:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802B048
sub_0802B048: @ 0x0802B048
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B080
	ldr r0, _0802B074 @ =gUnk_03000BF0
	ldrh r1, [r0, #8]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	cmp r1, r2
	bgt _0802B06A
	ldrh r0, [r0, #0x20]
	adds r0, r1, r0
	adds r0, #0x20
	cmp r0, r2
	bge _0802B078
_0802B06A:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802B07E
	.align 2, 0
_0802B074: .4byte gUnk_03000BF0
_0802B078:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802B07E:
	strb r0, [r4, #0x10]
_0802B080:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _0802B0CA
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0802B0CA
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r3, [r4, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	lsrs r1, r1, #0x1d
	ldrb r3, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1b]
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1b]
_0802B0CA:
	ldrb r2, [r4, #0xc]
	cmp r2, #4
	beq _0802B19E
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B19E
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B10E
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802B19E
	movs r0, #0x50
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	strh r1, [r0]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0802B19E
_0802B10E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802B19E
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802B198
	cmp r2, #2
	bne _0802B12E
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _0802B12E
	ldr r0, _0802B188 @ =gUnk_03003F80
	strb r1, [r0, #5]
_0802B12E:
	adds r0, r4, #0
	bl sub_0805EC60
	movs r5, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldr r0, _0802B18C @ =gUnk_080CD17C
	str r0, [r4, #0x48]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_08078954
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0802B16C
	adds r0, r1, #0
	adds r0, #0x81
	strb r5, [r0]
_0802B16C:
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	adds r5, r0, #0
	cmp r5, #0
	beq _0802B190
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	b _0802B19E
	.align 2, 0
_0802B188: .4byte gUnk_03003F80
_0802B18C: .4byte gUnk_080CD17C
_0802B190:
	adds r0, r4, #0
	bl sub_0805E7BC
	b _0802B19E
_0802B198:
	adds r0, r4, #0
	bl sub_0802AFC8
_0802B19E:
	pop {r4, r5, pc}

	thumb_func_start sub_0802B1A0
sub_0802B1A0: @ 0x0802B1A0
	push {lr}
	movs r1, #0
	movs r2, #1
	strb r2, [r0, #0xc]
	strb r1, [r0, #0xe]
	movs r1, #0x4f
	strb r1, [r0, #0xf]
	adds r1, r0, #0
	adds r1, #0x81
	strb r2, [r1]
	movs r1, #0
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_0802B1BC
sub_0802B1BC: @ 0x0802B1BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B1CA
	subs r0, #1
	strb r0, [r4, #0xe]
_0802B1CA:
	adds r0, r4, #0
	bl sub_0802B250
	adds r1, r0, #0
	cmp r1, #0
	bne _0802B1E2
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0802B264
	b _0802B200
_0802B1E2:
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B1F6
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0806FA24
	b _0802B200
_0802B1F6:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0802B264
_0802B200:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B204
sub_0802B204: @ 0x0802B204
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_080044EC
	cmp r0, #1
	bne _0802B232
	movs r0, #0x22
	movs r1, #1
	bl sub_0804AA60
	adds r4, r0, #0
	cmp r4, #0
	beq _0802B22E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r0, [r5, #0x50]
	str r0, [r4, #0x50]
_0802B22E:
	bl sub_0805E780
_0802B232:
	pop {r4, r5, pc}

	thumb_func_start sub_0802B234
sub_0802B234: @ 0x0802B234
	push {r4, lr}
	movs r4, #0
	bl sub_080002A0
	ldr r1, _0802B24C @ =0xFFFFFE3C
	adds r0, r0, r1
	cmp r0, #1
	bls _0802B246
	movs r4, #1
_0802B246:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0802B24C: .4byte 0xFFFFFE3C

	thumb_func_start sub_0802B250
sub_0802B250: @ 0x0802B250
	push {lr}
	ldr r1, [r0, #0x50]
	cmp r1, #0
	beq _0802B260
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0802B260
	movs r1, #0
_0802B260:
	adds r0, r1, #0
	pop {pc}

	thumb_func_start sub_0802B264
sub_0802B264: @ 0x0802B264
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	beq _0802B294
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
	b _0802B2A2
_0802B294:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0802B2A2:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B2AC
sub_0802B2AC: @ 0x0802B2AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0802B2C4 @ =gUnk_080CD234
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0802B2C4: .4byte gUnk_080CD234

	thumb_func_start sub_0802B2C8
sub_0802B2C8: @ 0x0802B2C8
	push {lr}
	ldr r2, _0802B2DC @ =gUnk_080CD24C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B2DC: .4byte gUnk_080CD24C

	thumb_func_start sub_0802B2E0
sub_0802B2E0: @ 0x0802B2E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802B334
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x14
	bne _0802B334
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0802B334
	str r1, [r4, #0x54]
	movs r0, #0xe
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0806FA24
_0802B334:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_15
nullsub_15: @ 0x0802B338
	bx lr
	.align 2, 0

	thumb_func_start sub_0802B33C
sub_0802B33C: @ 0x0802B33C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x15]
	movs r0, #0x78
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B35C
sub_0802B35C: @ 0x0802B35C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AEF88
	movs r3, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802B374
	movs r3, #1
_0802B374:
	ldrh r0, [r4, #0x2a]
	adds r2, r0, #0
	cmp r2, #0
	bne _0802B3A4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802B38A
	b _0802B4A6
_0802B38A:
	movs r0, #0x78
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	cmp r3, #0
	beq _0802B39A
	adds r1, r0, #0
	adds r1, #8
	b _0802B39E
_0802B39A:
	adds r1, r0, #0
	adds r1, #0x18
_0802B39E:
	movs r0, #0x18
	ands r0, r1
	b _0802B4A4
_0802B3A4:
	movs r0, #0x78
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	movs r1, #0x18
	ands r1, r0
	cmp r1, #8
	beq _0802B474
	cmp r1, #8
	bgt _0802B3BC
	cmp r1, #0
	beq _0802B3C6
	b _0802B4A6
_0802B3BC:
	cmp r1, #0x10
	beq _0802B404
	cmp r1, #0x18
	beq _0802B442
	b _0802B4A6
_0802B3C6:
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _0802B3D8
	movs r0, #8
	cmp r3, #0
	beq _0802B4A4
	movs r0, #0x18
	b _0802B4A4
_0802B3D8:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bne _0802B3EE
	cmp r3, #0
	beq _0802B3EE
	movs r0, #8
	strb r0, [r4, #0x15]
_0802B3EE:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bne _0802B4A6
	cmp r3, #0
	bne _0802B4A6
	movs r0, #0x18
	b _0802B4A4
_0802B404:
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	beq _0802B416
	movs r0, #0x18
	cmp r3, #0
	beq _0802B4A4
	movs r0, #8
	b _0802B4A4
_0802B416:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _0802B42C
	cmp r3, #0
	bne _0802B42C
	movs r0, #8
	strb r0, [r4, #0x15]
_0802B42C:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _0802B4A6
	cmp r3, #0
	beq _0802B4A6
	movs r0, #0x18
	b _0802B4A4
_0802B442:
	movs r1, #0xe0
	lsls r1, r1, #4
	ands r1, r2
	cmp r1, #0
	beq _0802B458
	rsbs r0, r3, #0
	orrs r0, r3
	asrs r0, r0, #0x1f
	movs r1, #0x10
	ands r0, r1
	b _0802B4A4
_0802B458:
	movs r0, #0xe
	ands r0, r2
	cmp r0, #4
	bne _0802B466
	cmp r3, #0
	beq _0802B466
	strb r1, [r4, #0x15]
_0802B466:
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0x40
	bne _0802B4A6
	cmp r3, #0
	bne _0802B4A6
	b _0802B4A2
_0802B474:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802B488
	movs r0, #0
	cmp r3, #0
	bne _0802B4A4
	movs r0, #0x10
	b _0802B4A4
_0802B488:
	movs r0, #0xe
	ands r0, r2
	cmp r0, #2
	bne _0802B496
	cmp r3, #0
	bne _0802B496
	strb r3, [r4, #0x15]
_0802B496:
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0x20
	bne _0802B4A6
	cmp r3, #0
	beq _0802B4A6
_0802B4A2:
	movs r0, #0x10
_0802B4A4:
	strb r0, [r4, #0x15]
_0802B4A6:
	pop {r4, pc}

	thumb_func_start sub_0802B4A8
sub_0802B4A8: @ 0x0802B4A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B4D6
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x60
	movs r3, #0
	bl sub_080A2988
	adds r1, r0, #0
	cmp r1, #0
	beq _0802B4D0
	ldrh r0, [r1, #0x32]
	subs r0, #4
	strh r0, [r1, #0x32]
_0802B4D0:
	adds r0, r4, #0
	bl sub_0805E7BC
_0802B4D6:
	pop {r4, pc}

	thumb_func_start sub_0802B4D8
sub_0802B4D8: @ 0x0802B4D8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _0802B4FC
	ldr r0, _0802B4F8 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0802B510
	.align 2, 0
_0802B4F8: .4byte gUnk_080012C8
_0802B4FC:
	ldr r4, _0802B514 @ =gUnk_080CD27C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0802B510:
	pop {r4, r5, pc}
	.align 2, 0
_0802B514: .4byte gUnk_080CD27C

	thumb_func_start sub_0802B518
sub_0802B518: @ 0x0802B518
	push {lr}
	ldr r2, _0802B52C @ =gUnk_080CD298
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B52C: .4byte gUnk_080CD298

	thumb_func_start sub_0802B530
sub_0802B530: @ 0x0802B530
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802B540
sub_0802B540: @ 0x0802B540
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B550
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802B56A
_0802B550:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xc
	bl sub_0804A024
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0802B56A
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r1, [r4, #0x15]
_0802B56A:
	pop {r4, pc}

	thumb_func_start sub_0802B56C
sub_0802B56C: @ 0x0802B56C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802B586
	movs r0, #0x40
	strh r0, [r4, #0x24]
_0802B586:
	adds r0, r4, #0
	bl sub_080AF038
	cmp r0, #0
	beq _0802B5B8
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802B5A2
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0802B5A2:
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _0802B5B4 @ =0x0000021F
	cmp r1, r0
	bgt _0802B5C4
	adds r0, r2, #4
	strh r0, [r4, #0x24]
	b _0802B5C4
	.align 2, 0
_0802B5B4: .4byte 0x0000021F
_0802B5B8:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0802B5C4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B5C8
sub_0802B5C8: @ 0x0802B5C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802B5EE
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0802B5EE:
	pop {r4, pc}

	thumb_func_start sub_0802B5F0
sub_0802B5F0: @ 0x0802B5F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802B60C @ =gUnk_080CD2D8
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0802B60C: .4byte gUnk_080CD2D8

	thumb_func_start sub_0802B610
sub_0802B610: @ 0x0802B610
	push {lr}
	ldr r2, _0802B624 @ =gUnk_080CD2F0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B624: .4byte gUnk_080CD2F0

	thumb_func_start sub_0802B628
sub_0802B628: @ 0x0802B628
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1d
	bhi _0802B706
	lsls r0, r1, #2
	ldr r1, _0802B644 @ =_0802B648
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B644: .4byte _0802B648
_0802B648: @ jump table
	.4byte _0802B6C0 @ case 0
	.4byte _0802B706 @ case 1
	.4byte _0802B6CC @ case 2
	.4byte _0802B6CC @ case 3
	.4byte _0802B6C0 @ case 4
	.4byte _0802B6C0 @ case 5
	.4byte _0802B6C0 @ case 6
	.4byte _0802B706 @ case 7
	.4byte _0802B6C0 @ case 8
	.4byte _0802B6C0 @ case 9
	.4byte _0802B6C0 @ case 10
	.4byte _0802B6C0 @ case 11
	.4byte _0802B6C0 @ case 12
	.4byte _0802B706 @ case 13
	.4byte _0802B706 @ case 14
	.4byte _0802B706 @ case 15
	.4byte _0802B706 @ case 16
	.4byte _0802B706 @ case 17
	.4byte _0802B706 @ case 18
	.4byte _0802B706 @ case 19
	.4byte _0802B706 @ case 20
	.4byte _0802B706 @ case 21
	.4byte _0802B6CC @ case 22
	.4byte _0802B706 @ case 23
	.4byte _0802B6CC @ case 24
	.4byte _0802B6CC @ case 25
	.4byte _0802B6CC @ case 26
	.4byte _0802B706 @ case 27
	.4byte _0802B706 @ case 28
	.4byte _0802B6CC @ case 29
_0802B6C0:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _0802B706
	movs r0, #1
	strb r0, [r4, #0xe]
	b _0802B706
_0802B6CC:
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	bhi _0802B706
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r1, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x64
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #9
	bl sub_08004260
_0802B706:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B718
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802B718:
	ldr r1, _0802B724 @ =gUnk_080CD2D8
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0802B724: .4byte gUnk_080CD2D8

	thumb_func_start nullsub_144
nullsub_144: @ 0x0802B728
	bx lr
	.align 2, 0

	thumb_func_start sub_0802B72C
sub_0802B72C: @ 0x0802B72C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0802B7A4
	pop {r4, pc}

	thumb_func_start sub_0802B744
sub_0802B744: @ 0x0802B744
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802B780
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xc
	bl sub_0804A024
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0802B780
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x18
	ands r1, r0
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08004260
	b _0802B7A2
_0802B780:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B794
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	b _0802B7A0
_0802B794:
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0802B7A2
	movs r0, #1
_0802B7A0:
	strb r0, [r4, #0xe]
_0802B7A2:
	pop {r4, pc}

	thumb_func_start sub_0802B7A4
sub_0802B7A4: @ 0x0802B7A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B7F4
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _0802B7F8 @ =gUnk_080CD314
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0802B960
	ldrb r0, [r4, #0x15]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xff
	beq _0802B7F4
	lsrs r2, r1, #0x1b
	ldrb r0, [r4, #0x14]
	cmp r2, r0
	beq _0802B7F4
	movs r1, #3
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08004260
_0802B7F4:
	pop {r4, pc}
	.align 2, 0
_0802B7F8: .4byte gUnk_080CD314

	thumb_func_start sub_0802B7FC
sub_0802B7FC: @ 0x0802B7FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B81E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_0802B81E:
	pop {r4, pc}

	thumb_func_start sub_0802B820
sub_0802B820: @ 0x0802B820
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	cmp r0, #0
	bne _0802B830
	movs r0, #1
	strb r0, [r4, #0xe]
_0802B830:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B84A
	adds r0, r4, #0
	bl sub_0802B9B4
	b _0802B87E
_0802B84A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802B878
	ldrb r1, [r4, #0xe]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802B87E
	ldr r0, _0802B874 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _0802B87E
	.align 2, 0
_0802B874: .4byte gUnk_020000B0
_0802B878:
	adds r0, r4, #0
	bl sub_0802B9B4
_0802B87E:
	pop {r4, pc}

	thumb_func_start sub_0802B880
sub_0802B880: @ 0x0802B880
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B8AC
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #0x3c
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #3
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r0, r2, #0
	bl sub_08004260
_0802B8AC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802B8B0
sub_0802B8B0: @ 0x0802B8B0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _0802B8CC
	cmp r0, #1
	beq _0802B8D4
	b _0802B8DA
_0802B8CC:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x96
	strb r0, [r4, #0xe]
_0802B8D4:
	ldr r0, _0802B8DC @ =0x0000012B
	bl sub_08004488
_0802B8DA:
	pop {r4, pc}
	.align 2, 0
_0802B8DC: .4byte 0x0000012B

	thumb_func_start sub_0802B8E0
sub_0802B8E0: @ 0x0802B8E0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r1, r0, #1
	strb r1, [r3, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0802B91C
	adds r4, r0, #0
	lsrs r0, r4, #0x18
	cmp r0, #0x3b
	bhi _0802B940
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0802B940
	adds r3, #0x62
	ldr r2, _0802B918 @ =gUnk_080CD318
	lsrs r0, r4, #0x19
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r3]
	adds r0, r0, r1
	strb r0, [r3]
	b _0802B940
	.align 2, 0
_0802B918: .4byte gUnk_080CD318
_0802B91C:
	movs r0, #8
	strb r0, [r3, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r3, #0x20]
	movs r0, #0x60
	strh r0, [r3, #0x24]
	adds r1, r3, #0
	adds r1, #0x3f
	movs r0, #0x63
	strb r0, [r1]
	ldrb r1, [r3, #0x14]
	adds r0, r3, #0
	bl sub_08004260
	ldr r0, _0802B944 @ =0x0000012B
	bl sub_08004488
_0802B940:
	pop {r4, pc}
	.align 2, 0
_0802B944: .4byte 0x0000012B

	thumb_func_start sub_0802B948
sub_0802B948: @ 0x0802B948
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _0802B95E
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
_0802B95E:
	pop {r4, pc}

	thumb_func_start sub_0802B960
sub_0802B960: @ 0x0802B960
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802B986
	bl sub_08000E50
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _0802B9A6
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #4
	b _0802B9AA
_0802B986:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802B9A6
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0802B9A6
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	b _0802B9AA
_0802B9A6:
	bl sub_08000E50
_0802B9AA:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B9B4
sub_0802B9B4: @ 0x0802B9B4
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #3
	movs r2, #3
	ands r1, r2
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	adds r1, #4
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802B9D4
sub_0802B9D4: @ 0x0802B9D4
	push {lr}
	ldr r2, _0802B9E8 @ =gUnk_080CD3C4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B9E8: .4byte gUnk_080CD3C4

	thumb_func_start sub_0802B9EC
sub_0802B9EC: @ 0x0802B9EC
	adds r2, r0, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	ldr r1, _0802BA14 @ =gUnk_080CD3D4
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r0, #0xc
	ldrh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	adds r0, #0xa
	ldrh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	bx lr
	.align 2, 0
_0802BA14: .4byte gUnk_080CD3D4

	thumb_func_start sub_0802BA18
sub_0802BA18: @ 0x0802BA18
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0xe
	bl sub_0804A024
	adds r5, r0, #0
	cmp r5, #0xff
	beq _0802BA88
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802BB2C
	cmp r0, #0
	bne _0802BA88
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	strb r5, [r4, #0x15]
	lsrs r0, r5, #3
	cmp r0, #1
	beq _0802BA60
	cmp r0, #1
	blo _0802BA58
	cmp r0, #2
	beq _0802BA6C
	cmp r0, #3
	beq _0802BA78
	b _0802BA88
_0802BA58:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r4, #0x32]
	b _0802BA7E
_0802BA60:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	b _0802BA82
_0802BA6C:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	b _0802BA82
_0802BA78:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r4, #0x2e]
_0802BA7E:
	ldrh r1, [r1]
	subs r0, r0, r1
_0802BA82:
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
_0802BA88:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802BA8C
sub_0802BA8C: @ 0x0802BA8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF038
	cmp r0, #0
	beq _0802BADE
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _0802BAC4
	cmp r0, #1
	bgt _0802BAAA
	cmp r0, #0
	beq _0802BAB4
	b _0802BAFA
_0802BAAA:
	cmp r0, #2
	beq _0802BAD0
	cmp r0, #3
	beq _0802BAE6
	b _0802BAFA
_0802BAB4:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0802BAFA
	b _0802BADE
_0802BAC4:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	b _0802BADA
_0802BAD0:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
_0802BADA:
	cmp r1, r0
	bgt _0802BAFA
_0802BADE:
	adds r0, r4, #0
	bl sub_0802BB10
	b _0802BAFA
_0802BAE6:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0802BAFA
	adds r0, r4, #0
	bl sub_0802BB10
_0802BAFA:
	pop {r4, pc}

	thumb_func_start sub_0802BAFC
sub_0802BAFC: @ 0x0802BAFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF038
	cmp r0, #0
	bne _0802BB0C
	movs r0, #1
	strb r0, [r4, #0xc]
_0802BB0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802BB10
sub_0802BB10: @ 0x0802BB10
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0xc0
	strh r1, [r0, #0x24]
	ldrb r1, [r0, #0x15]
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	movs r0, #0x74
	bl sub_08004488
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802BB2C
sub_0802BB2C: @ 0x0802BB2C
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r4, _0802BB60 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0802BB3C
	ldr r4, _0802BB64 @ =gUnk_0200D654
_0802BB3C:
	lsrs r3, r1, #2
	ldr r0, _0802BB68 @ =gUnk_080CD3DC
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r3, #0
	bl sub_080AE4CC
	pop {r4, pc}
	.align 2, 0
_0802BB60: .4byte gUnk_02027EB4
_0802BB64: .4byte gUnk_0200D654
_0802BB68: .4byte gUnk_080CD3DC

	thumb_func_start sub_0802BB6C
sub_0802BB6C: @ 0x0802BB6C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802BB94
	ldr r1, _0802BB90 @ =gUnk_080CD3E4
	adds r0, r4, #0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _0802BBA4
	.align 2, 0
_0802BB90: .4byte gUnk_080CD3E4
_0802BB94:
	ldr r0, _0802BBA8 @ =gUnk_080CD3FC
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0802BBA4:
	pop {r4, pc}
	.align 2, 0
_0802BBA8: .4byte gUnk_080CD3FC

	thumb_func_start sub_0802BBAC
sub_0802BBAC: @ 0x0802BBAC
	push {lr}
	ldr r2, _0802BBC0 @ =gUnk_080CD408
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802BBC0: .4byte gUnk_080CD408

	thumb_func_start sub_0802BBC4
sub_0802BBC4: @ 0x0802BBC4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0802BBFE
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	beq _0802BBEA
	cmp r1, #0
	blt _0802BBFE
	cmp r1, #3
	bgt _0802BBFE
	cmp r1, #2
	blt _0802BBFE
_0802BBEA:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _0802BBFE
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802C218
_0802BBFE:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BC10
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802BC10:
	ldr r1, _0802BC1C @ =gUnk_080CD3E4
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0802BC1C: .4byte gUnk_080CD3E4

	thumb_func_start sub_0802BC20
sub_0802BC20: @ 0x0802BC20
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0802BC4C
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0802BC6C
	ldr r0, _0802BC48 @ =gUnk_080CD42C
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802BC6C
	.align 2, 0
_0802BC48: .4byte gUnk_080CD42C
_0802BC4C:
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0802BC5C
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0802BC6C
_0802BC5C:
	ldr r0, _0802BC70 @ =gUnk_080CD438
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0802BC6C:
	pop {r4, pc}
	.align 2, 0
_0802BC70: .4byte gUnk_080CD438

	thumb_func_start sub_0802BC74
sub_0802BC74: @ 0x0802BC74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802C1C0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0x1d]
	ldr r0, _0802BC9C @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	movs r1, #2
	eors r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_0802BC9C: .4byte gLinkEntity

	thumb_func_start sub_0802BCA0
sub_0802BCA0: @ 0x0802BCA0
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802BCA8
sub_0802BCA8: @ 0x0802BCA8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r0, #0x19
	beq _0802BCFA
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0x19
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	movs r0, #0x20
	movs r1, #1
	bl sub_0804AA60
	adds r1, r0, #0
	cmp r1, #0
	beq _0802BCF0
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #0x14]
	adds r0, r4, #0
	bl sub_0806FA24
_0802BCF0:
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
_0802BCFA:
	pop {r4, pc}

	thumb_func_start sub_0802BCFC
sub_0802BCFC: @ 0x0802BCFC
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BD08
sub_0802BD08: @ 0x0802BD08
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0802BD10
sub_0802BD10: @ 0x0802BD10
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #2
	bl sub_08004276
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_145
nullsub_145: @ 0x0802BD24
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BD28
sub_0802BD28: @ 0x0802BD28
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802BD4C
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r2, #0x10]
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	b _0802BD52
_0802BD4C:
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0802BD52:
	pop {pc}

	thumb_func_start sub_0802BD54
sub_0802BD54: @ 0x0802BD54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	movs r0, #0x3c
	strb r0, [r4, #0x1d]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0802BD8C
sub_0802BD8C: @ 0x0802BD8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802BD9C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802BDDE
_0802BD9C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802BDCA
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_0804A024
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0802BDCA
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802BDCA
	adds r0, r4, #0
	bl sub_0802C058
	b _0802BDDE
_0802BDCA:
	adds r0, r4, #0
	bl sub_0802C020
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0802BDDE
	adds r0, r4, #0
	bl sub_0802C058
_0802BDDE:
	pop {r4, pc}

	thumb_func_start sub_0802BDE0
sub_0802BDE0: @ 0x0802BDE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802C06C
	cmp r0, #0
	beq _0802BDFE
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0xff
	strb r0, [r1]
	b _0802BE16
_0802BDFE:
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0xf
	ands r0, r1
	adds r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
_0802BE16:
	pop {r4, pc}

	thumb_func_start sub_0802BE18
sub_0802BE18: @ 0x0802BE18
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802BE3E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0802BE44
_0802BE3E:
	adds r0, r4, #0
	bl sub_0802C18C
_0802BE44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802BE48
sub_0802BE48: @ 0x0802BE48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	cmp r0, #0
	bne _0802BE64
	adds r0, r4, #0
	bl sub_0802C218
	movs r0, #8
	movs r1, #0
	bl sub_08080964
	b _0802BE7E
_0802BE64:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0802C1CC
	adds r0, r4, #0
	bl sub_0802C0E8
	cmp r0, #0
	beq _0802BE7E
	movs r0, #5
	strb r0, [r4, #0xc]
_0802BE7E:
	pop {r4, pc}

	thumb_func_start sub_0802BE80
sub_0802BE80: @ 0x0802BE80
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x24]
	subs r0, #0x20
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0802BE98
	adds r0, r4, #0
	bl sub_0802C1CC
_0802BE98:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802BEAE
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_0802C18C
	b _0802BEBA
_0802BEAE:
	adds r0, r4, #0
	bl sub_0802C1C0
	ldrb r0, [r4, #0xe]
	adds r0, #0x1e
	strb r0, [r4, #0xe]
_0802BEBA:
	pop {r4, pc}

	thumb_func_start sub_0802BEBC
sub_0802BEBC: @ 0x0802BEBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x15]
	movs r4, #0x10
	eors r0, r4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AEFE0
	ldrb r0, [r5, #0x15]
	eors r0, r4
	strb r0, [r5, #0x15]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #0
	bne _0802BEE8
	adds r0, r5, #0
	bl sub_0802C1C0
_0802BEE8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802BEEC
sub_0802BEEC: @ 0x0802BEEC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802BF1E
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0802BF3A
	ldrb r0, [r4, #0x14]
	movs r1, #2
	eors r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	b _0802BF3A
_0802BF1E:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0802BF3A
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_0802BF3A:
	pop {r4, pc}

	thumb_func_start sub_0802BF3C
sub_0802BF3C: @ 0x0802BF3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802BF76
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0802C020
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _0802BF76
	strb r0, [r4, #0x14]
	adds r1, r0, #4
	adds r0, r4, #0
	bl sub_08004260
_0802BF76:
	pop {r4, pc}

	thumb_func_start sub_0802BF78
sub_0802BF78: @ 0x0802BF78
	push {lr}
	movs r2, #1
	strb r2, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0x3b
	movs r1, #4
	strb r1, [r3]
	strb r2, [r0, #0x1c]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	ldrb r1, [r0, #0x14]
	adds r1, #8
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_0802BF98
sub_0802BF98: @ 0x0802BF98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0802BFBC
	ldr r0, _0802BFB8 @ =gUnk_080CD450
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802BFCC
	.align 2, 0
_0802BFB8: .4byte gUnk_080CD450
_0802BFBC:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_0802BFCC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802BFD0
sub_0802BFD0: @ 0x0802BFD0
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BFD8
sub_0802BFD8: @ 0x0802BFD8
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802BFE0
sub_0802BFE0: @ 0x0802BFE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0802BFF2
	adds r0, r4, #0
	bl sub_0805E7BC
_0802BFF2:
	pop {r4, pc}

	thumb_func_start sub_0802BFF4
sub_0802BFF4: @ 0x0802BFF4
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C01C
	adds r0, r3, #0
	bl sub_0805E7BC
_0802C01C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802C020
sub_0802C020: @ 0x0802C020
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08000E50
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802C03E
	movs r6, #1
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _0802C044
_0802C03E:
	movs r0, #0x18
	ands r0, r4
	b _0802C056
_0802C044:
	adds r0, r5, #0
	bl sub_08049EE4
	lsrs r1, r4, #0x10
	ands r1, r6
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x18
	ands r0, r1
_0802C056:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802C058
sub_0802C058: @ 0x0802C058
	push {lr}
	movs r2, #2
	strb r2, [r0, #0xc]
	strb r1, [r0, #0x15]
	lsrs r1, r1, #3
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_0802C06C
sub_0802C06C: @ 0x0802C06C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldr r3, [r0, #0x48]
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r6, r2, r1
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	movs r1, #1
	ldrsb r1, [r3, r1]
	adds r5, r2, r1
	ldr r3, _0802C0CC @ =gUnk_080CD45C
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #2
	adds r2, r1, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov sb, r2
	adds r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r8, r1
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _0802C0D0 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0802C0B2
	ldr r7, _0802C0D4 @ =gUnk_0200D654
_0802C0B2:
	movs r4, #0
_0802C0B4:
	add r6, sb
	add r5, r8
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_080AE4CC
	cmp r0, #0
	beq _0802C0D8
	movs r0, #0
	b _0802C0E0
	.align 2, 0
_0802C0CC: .4byte gUnk_080CD45C
_0802C0D0: .4byte gUnk_02027EB4
_0802C0D4: .4byte gUnk_0200D654
_0802C0D8:
	adds r4, #1
	cmp r4, #7
	bls _0802C0B4
	movs r0, #1
_0802C0E0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802C0E8
sub_0802C0E8: @ 0x0802C0E8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C0FC
	movs r0, #1
	b _0802C178
_0802C0FC:
	ldrb r3, [r5, #0x15]
	lsrs r3, r3, #2
	ldr r0, _0802C17C @ =gUnk_080CD45C
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	ldr r4, [r5, #0x48]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r2, r0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r1, #1
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r2, r0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _0802C180 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0802C140
	ldr r7, _0802C184 @ =gUnk_0200D654
_0802C140:
	movs r5, #0
	ldr r1, _0802C188 @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	subs r0, r6, r0
	asrs r0, r0, #4
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r1, #8]
	subs r1, r4, r1
	asrs r1, r1, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #9
	bl sub_0806FC24
	cmp r0, #0
	bne _0802C176
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080AE4CC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_0802C176:
	adds r0, r5, #0
_0802C178:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802C17C: .4byte gUnk_080CD45C
_0802C180: .4byte gUnk_02027EB4
_0802C184: .4byte gUnk_0200D654
_0802C188: .4byte gUnk_03000BF0

	thumb_func_start sub_0802C18C
sub_0802C18C: @ 0x0802C18C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x78
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0802C1BC
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0x40
	bl sub_080A2960
	adds r1, r0, #0
	cmp r1, #0
	beq _0802C1BC
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806FA48
_0802C1BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802C1C0
sub_0802C1C0: @ 0x0802C1C0
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C1CC
sub_0802C1CC: @ 0x0802C1CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0x14]
	lsls r4, r4, #2
	ldr r0, _0802C214 @ =gUnk_080CD464
	adds r4, r4, r0
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r3, r3, r0
	adds r0, r5, #0
	movs r1, #9
	bl sub_08008796
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r0, #2
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	movs r0, #3
	ldrsb r0, [r4, r0]
	adds r3, r3, r0
	adds r0, r5, #0
	movs r1, #9
	bl sub_08008796
	pop {r4, r5, pc}
	.align 2, 0
_0802C214: .4byte gUnk_080CD464

	thumb_func_start sub_0802C218
sub_0802C218: @ 0x0802C218
	movs r1, #6
	strb r1, [r0, #0xc]
	movs r1, #0xe0
	strh r1, [r0, #0x24]
	movs r1, #0xc0
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_0802C228
sub_0802C228: @ 0x0802C228
	push {lr}
	ldr r1, _0802C234 @ =gUnk_080CD540
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_0802C234: .4byte gUnk_080CD540

	thumb_func_start sub_0802C238
sub_0802C238: @ 0x0802C238
	push {lr}
	ldr r2, _0802C24C @ =gUnk_080CD558
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802C24C: .4byte gUnk_080CD558

	thumb_func_start sub_0802C250
sub_0802C250: @ 0x0802C250
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C254
sub_0802C254: @ 0x0802C254
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C258
sub_0802C258: @ 0x0802C258
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #2
	strb r0, [r4, #0xe]
	bl sub_08000E50
	adds r2, r0, #0
	movs r0, #0x70
	ands r2, r0
	adds r3, r4, #0
	adds r3, #0x7a
	movs r1, #0
	strh r2, [r3]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0802C288
	cmp r0, #2
	beq _0802C290
	b _0802C29C
_0802C288:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r0, #0
	b _0802C296
_0802C290:
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r5, #0
_0802C296:
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_0802C29C:
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x82
	strh r0, [r1]
	ldr r0, _0802C310 @ =0x0000FFF0
	strh r0, [r4, #0x36]
	subs r1, #0x4a
	movs r0, #3
	strb r0, [r1]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x7c
	strh r2, [r0]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802C314 @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0802C62C
	adds r0, r4, #0
	bl sub_0802C4B0
	pop {r4, r5, pc}
	.align 2, 0
_0802C310: .4byte 0x0000FFF0
_0802C314: .4byte gUnk_03000BF0

	thumb_func_start sub_0802C318
sub_0802C318: @ 0x0802C318
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802C330
	movs r0, #2
	strb r0, [r2, #0xc]
_0802C330:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802C334
sub_0802C334: @ 0x0802C334
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x7c
	ldrh r0, [r3]
	cmp r0, #0
	bne _0802C36A
	ldr r0, _0802C3C4 @ =gUnk_03000BF0
	ldrh r1, [r0, #8]
	ldr r2, _0802C3C8 @ =gLinkEntity
	cmp r2, #0
	bne _0802C34E
	b _0802C4AA
_0802C34E:
	movs r5, #0x32
	ldrsh r0, [r2, r5]
	subs r0, r0, r1
	cmp r0, #0x38
	bhi _0802C35A
	b _0802C4AA
_0802C35A:
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_0802C36A:
	adds r0, r4, #0
	bl sub_08004274
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802C3C4 @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	adds r0, #6
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802C3CC
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_08004488
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0xc
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0802C4B0
	b _0802C48C
	.align 2, 0
_0802C3C4: .4byte gUnk_03000BF0
_0802C3C8: .4byte gLinkEntity
_0802C3CC:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _0802C442
	subs r0, r1, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0802C3EA
	cmp r0, #8
	beq _0802C3F4
	b _0802C442
_0802C3EA:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _0802C442
_0802C3F4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802C442
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802C442
	movs r6, #0
	movs r5, #1
_0802C408:
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _0802C420
	ldrh r0, [r2, #0x2e]
	adds r0, #0xc
	subs r0, r0, r6
	strh r0, [r2, #0x2e]
_0802C420:
	adds r6, #0x18
	subs r5, #1
	cmp r5, #0
	bge _0802C408
	adds r0, r4, #0
	bl sub_0802C62C
	bl sub_08000E50
	movs r1, #0xff
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	b _0802C4AA
_0802C442:
	ldr r0, _0802C45C @ =gUnk_03000BF0
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #0x20]
	adds r1, r1, r0
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	subs r5, r1, r0
	cmp r5, #4
	ble _0802C460
	adds r0, r4, #0
	bl sub_080AEFB4
	b _0802C48C
	.align 2, 0
_0802C45C: .4byte gUnk_03000BF0
_0802C460:
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	subs r0, r0, r5
	cmp r0, #0x38
	ble _0802C48C
	adds r0, r4, #0
	bl sub_0802C62C
	bl sub_08000E50
	movs r1, #0x7f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0802C48C
	strb r0, [r4, #0xc]
_0802C48C:
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08016A04
_0802C4AA:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start nullsub_148
nullsub_148: @ 0x0802C4AC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C4B0
sub_0802C4B0: @ 0x0802C4B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	adds r1, r0, #0
	ldr r0, _0802C4D8 @ =0x000001AB
	cmp r1, r0
	blo _0802C4E4
	adds r0, #4
	cmp r1, r0
	bls _0802C4DC
	adds r0, #0x15
	cmp r1, r0
	beq _0802C4E0
	b _0802C4E4
	.align 2, 0
_0802C4D8: .4byte 0x000001AB
_0802C4DC:
	movs r6, #8
	b _0802C4E6
_0802C4E0:
	movs r6, #4
	b _0802C4E6
_0802C4E4:
	movs r6, #0
_0802C4E6:
	bl sub_08000E50
	adds r4, r0, #0
	movs r0, #7
	ands r4, r0
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0802C518
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	beq _0802C50C
	ldr r0, _0802C508 @ =gUnk_080CD568
	movs r1, #2
	orrs r1, r6
	b _0802C532
	.align 2, 0
_0802C508: .4byte gUnk_080CD568
_0802C50C:
	ldr r0, _0802C514 @ =gUnk_080CD568
	lsls r1, r6, #1
	b _0802C534
	.align 2, 0
_0802C514: .4byte gUnk_080CD568
_0802C518:
	movs r2, #3
	ands r4, r2
	cmp r4, #0
	beq _0802C52C
	ldr r0, _0802C528 @ =gUnk_080CD568
	movs r1, #1
	orrs r1, r6
	b _0802C532
	.align 2, 0
_0802C528: .4byte gUnk_080CD568
_0802C52C:
	ldr r0, _0802C570 @ =gUnk_080CD568
	adds r1, r6, #0
	orrs r1, r2
_0802C532:
	lsls r1, r1, #1
_0802C534:
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r5, #0x24]
	bl sub_08000E50
	adds r4, r0, #0
	movs r0, #7
	ands r4, r0
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0802C584
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0802C55E
	movs r0, #0
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
_0802C55E:
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	beq _0802C578
	ldr r0, _0802C574 @ =gUnk_080CD580
	movs r1, #1
	orrs r1, r6
	b _0802C5B2
	.align 2, 0
_0802C570: .4byte gUnk_080CD568
_0802C574: .4byte gUnk_080CD580
_0802C578:
	ldr r0, _0802C580 @ =gUnk_080CD580
	adds r0, r6, r0
	ldrb r0, [r0]
	b _0802C5B6
	.align 2, 0
_0802C580: .4byte gUnk_080CD580
_0802C584:
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	beq _0802C596
	movs r0, #1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08004260
_0802C596:
	movs r2, #3
	ands r4, r2
	cmp r4, #0
	beq _0802C5AC
	ldr r0, _0802C5A8 @ =gUnk_080CD580
	movs r1, #2
	orrs r1, r6
	b _0802C5B2
	.align 2, 0
_0802C5A8: .4byte gUnk_080CD580
_0802C5AC:
	ldr r0, _0802C5E4 @ =gUnk_080CD580
	adds r1, r6, #0
	orrs r1, r2
_0802C5B2:
	adds r1, r1, r0
	ldrb r0, [r1]
_0802C5B6:
	strb r0, [r5, #0x15]
	bl sub_08000E50
	adds r4, r0, #0
	movs r0, #7
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0802C5FC
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	beq _0802C5EC
	adds r2, r5, #0
	adds r2, #0x84
	ldr r1, _0802C5E8 @ =gUnk_080CD58C
	movs r0, #1
	orrs r6, r0
	b _0802C61A
	.align 2, 0
_0802C5E4: .4byte gUnk_080CD580
_0802C5E8: .4byte gUnk_080CD58C
_0802C5EC:
	adds r2, r5, #0
	adds r2, #0x84
	ldr r1, _0802C5F8 @ =gUnk_080CD58C
	orrs r6, r0
	b _0802C61A
	.align 2, 0
_0802C5F8: .4byte gUnk_080CD58C
_0802C5FC:
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	beq _0802C614
	adds r2, r5, #0
	adds r2, #0x84
	ldr r1, _0802C610 @ =gUnk_080CD58C
	movs r0, #2
	orrs r6, r0
	b _0802C61A
	.align 2, 0
_0802C610: .4byte gUnk_080CD58C
_0802C614:
	adds r2, r5, #0
	adds r2, #0x84
	ldr r1, _0802C628 @ =gUnk_080CD58C
_0802C61A:
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r2]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802C628: .4byte gUnk_080CD58C

	thumb_func_start sub_0802C62C
sub_0802C62C: @ 0x0802C62C
	adds r3, r0, #0
	movs r2, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r3, #0x32]
	adds r0, r3, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r3, #0x2e]
	ldrb r1, [r3, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #0x18]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x7c
	strh r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C660
sub_0802C660: @ 0x0802C660
	push {lr}
	ldr r1, _0802C66C @ =gUnk_080CD5D4
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_0802C66C: .4byte gUnk_080CD5D4

	thumb_func_start sub_0802C670
sub_0802C670: @ 0x0802C670
	push {lr}
	ldr r2, _0802C684 @ =gUnk_080CD5EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802C684: .4byte gUnk_080CD5EC

	thumb_func_start sub_0802C688
sub_0802C688: @ 0x0802C688
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802C69A
	b _0802C79E
_0802C69A:
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x16
	bhi _0802C740
	lsls r0, r0, #2
	ldr r1, _0802C6AC @ =_0802C6B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C6AC: .4byte _0802C6B0
_0802C6B0: @ jump table
	.4byte _0802C70C @ case 0
	.4byte _0802C70C @ case 1
	.4byte _0802C740 @ case 2
	.4byte _0802C740 @ case 3
	.4byte _0802C740 @ case 4
	.4byte _0802C740 @ case 5
	.4byte _0802C740 @ case 6
	.4byte _0802C740 @ case 7
	.4byte _0802C740 @ case 8
	.4byte _0802C740 @ case 9
	.4byte _0802C740 @ case 10
	.4byte _0802C740 @ case 11
	.4byte _0802C740 @ case 12
	.4byte _0802C740 @ case 13
	.4byte _0802C72C @ case 14
	.4byte _0802C740 @ case 15
	.4byte _0802C740 @ case 16
	.4byte _0802C740 @ case 17
	.4byte _0802C740 @ case 18
	.4byte _0802C740 @ case 19
	.4byte _0802C72C @ case 20
	.4byte _0802C72C @ case 21
	.4byte _0802C72C @ case 22
_0802C70C:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C7A6
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802C728 @ =gLinkEntity
	adds r0, #0x42
	movs r1, #4
	strb r1, [r0]
	b _0802C7A6
	.align 2, 0
_0802C728: .4byte gLinkEntity
_0802C72C:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802C7A6
_0802C740:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x1c
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802C75E
	cmp r0, #2
	beq _0802C770
	b _0802C79E
_0802C75E:
	adds r0, r4, #0
	bl sub_0802CB68
	ldr r0, _0802C76C @ =0x0000014D
	bl sub_08004488
	b _0802C79E
	.align 2, 0
_0802C76C: .4byte 0x0000014D
_0802C770:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
	movs r1, #1
	strb r1, [r4, #0xf]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r4, #0
	bl sub_08004260
_0802C79E:
	ldr r1, _0802C7A8 @ =gUnk_080CD5D4
	adds r0, r4, #0
	bl sub_0804AA30
_0802C7A6:
	pop {r4, pc}
	.align 2, 0
_0802C7A8: .4byte gUnk_080CD5D4

	thumb_func_start sub_0802C7AC
sub_0802C7AC: @ 0x0802C7AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0802C7F6
	adds r0, r4, #0
	bl sub_0806F520
	adds r1, r0, #0
	cmp r1, #0
	bne _0802C7F6
	strb r1, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xf]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	beq _0802C7E2
	movs r1, #0x80
	cmp r0, #0
	beq _0802C7E0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
_0802C7E0:
	strh r1, [r4, #0x24]
_0802C7E2:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #0
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	b _0802C816
_0802C7F6:
	ldr r0, _0802C818 @ =0x0000FFFF
	strh r0, [r4, #0x36]
	ldr r1, _0802C81C @ =gUnk_080CD600
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802C816
	adds r0, r4, #0
	bl sub_08004274
_0802C816:
	pop {r4, pc}
	.align 2, 0
_0802C818: .4byte 0x0000FFFF
_0802C81C: .4byte gUnk_080CD600

	thumb_func_start sub_0802C820
sub_0802C820: @ 0x0802C820
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C82C
sub_0802C82C: @ 0x0802C82C
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802C834
sub_0802C834: @ 0x0802C834
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0802C83C
sub_0802C83C: @ 0x0802C83C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802C88C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C884
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _0802C86C @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	movs r1, #6
	ands r1, r0
	cmp r1, #2
	beq _0802C870
	cmp r1, #6
	beq _0802C876
	b _0802C87C
	.align 2, 0
_0802C86C: .4byte gLinkEntity
_0802C870:
	ldrh r0, [r4, #0x2e]
	subs r0, #6
	b _0802C87A
_0802C876:
	ldrh r0, [r4, #0x2e]
	adds r0, #6
_0802C87A:
	strh r0, [r4, #0x2e]
_0802C87C:
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802C8B2
_0802C884:
	adds r0, r4, #0
	bl sub_0802CC18
	b _0802C8A2
_0802C88C:
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r4, #0
	bl sub_08004260
_0802C8A2:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
_0802C8B2:
	pop {r4, pc}

	thumb_func_start nullsub_149
nullsub_149: @ 0x0802C8B4
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C8B8
sub_0802C8B8: @ 0x0802C8B8
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	bl sub_0802CBC4
	pop {pc}

	thumb_func_start sub_0802C8C4
sub_0802C8C4: @ 0x0802C8C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A7D4
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	pop {r4, pc}

	thumb_func_start sub_0802C8D8
sub_0802C8D8: @ 0x0802C8D8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #0x15]
	strb r4, [r5, #0x16]
	movs r0, #0x12
	strb r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x82
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	subs r0, #3
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #4
	adds r0, r5, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802C91C
sub_0802C91C: @ 0x0802C91C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C97A
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802C950
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #2
	orrs r1, r0
	adds r0, r4, #0
	bl sub_08004260
_0802C950:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802C964
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802C9B4
_0802C964:
	movs r0, #0xf
	ands r1, r0
	cmp r1, #8
	bne _0802C972
	adds r0, r4, #0
	bl sub_080A29FC
_0802C972:
	adds r0, r4, #0
	bl sub_0802CC18
	b _0802C9B4
_0802C97A:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802C992
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r0, r4, #0
	bl sub_08004260
_0802C992:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C9B4
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	adds r1, #8
	movs r0, #0x1c
	ands r1, r0
	strb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r0, r4, #0
	bl sub_08004260
_0802C9B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802C9B8
sub_0802C9B8: @ 0x0802C9B8
	push {lr}
	ldr r2, _0802C9CC @ =gUnk_080CD618
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802C9CC: .4byte gUnk_080CD618

	thumb_func_start sub_0802C9D0
sub_0802C9D0: @ 0x0802C9D0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	strb r2, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_0802CC18
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0802CA10
sub_0802CA10: @ 0x0802CA10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802CA30 @ =gUnk_03003F80
	ldrb r0, [r0, #5]
	cmp r0, #5
	beq _0802CA42
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CA34
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802CA66
	.align 2, 0
_0802CA30: .4byte gUnk_03003F80
_0802CA34:
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08004274
	b _0802CA66
_0802CA42:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0802CA68 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	movs r1, #4
	orrs r0, r1
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08004274
_0802CA66:
	pop {r4, pc}
	.align 2, 0
_0802CA68: .4byte gLinkEntity

	thumb_func_start sub_0802CA6C
sub_0802CA6C: @ 0x0802CA6C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CA84
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802CA90
_0802CA84:
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08004274
_0802CA90:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802CA94
sub_0802CA94: @ 0x0802CA94
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	movs r0, #3
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	movs r0, #1
	strb r0, [r3, #0xf]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r3, #0x20]
	movs r0, #0
	strh r2, [r3, #0x24]
	adds r1, r3, #0
	adds r1, #0x83
	strb r0, [r1]
	subs r1, #2
	strb r0, [r1]
	ldr r0, _0802CAF4 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	movs r0, #4
	orrs r1, r0
	movs r0, #0x1c
	ands r1, r0
	strb r1, [r3, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r3, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0
_0802CAF4: .4byte gLinkEntity

	thumb_func_start sub_0802CAF8
sub_0802CAF8: @ 0x0802CAF8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CB10
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802CB62
_0802CB10:
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CB30
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802CB30
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_0802CB30:
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08078930
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802CB5C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802CB5C
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
_0802CB5C:
	adds r0, r4, #0
	bl sub_08004274
_0802CB62:
	pop {r4, pc}

	thumb_func_start nullsub_150
nullsub_150: @ 0x0802CB64
	bx lr
	.align 2, 0

	thumb_func_start sub_0802CB68
sub_0802CB68: @ 0x0802CB68
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	bl sub_08000E50
	adds r2, r0, #0
	movs r0, #0x18
	ands r2, r0
	movs r0, #4
	orrs r2, r0
	orrs r2, r4
	strb r2, [r5, #0x15]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CBB2
	movs r0, #0xc8
	strb r0, [r5, #0xe]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	lsrs r1, r2, #4
	movs r0, #2
	orrs r1, r0
	adds r0, r5, #0
	bl sub_08004260
	b _0802CBC2
_0802CBB2:
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	lsrs r1, r2, #4
	adds r0, r5, #0
	bl sub_08004260
_0802CBC2:
	pop {r4, r5, pc}

	thumb_func_start sub_0802CBC4
sub_0802CBC4: @ 0x0802CBC4
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x45
	strb r2, [r0]
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CBF0
	bl sub_08079184
_0802CBF0:
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	adds r2, r0, #0
	cmp r2, #0
	beq _0802CC14
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
_0802CC14:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802CC18
sub_0802CC18: @ 0x0802CC18
	push {lr}
	adds r1, r0, #0
	adds r1, #0x80
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CC34
	movs r0, #0x1c
	strb r0, [r1]
	ldr r0, _0802CC38 @ =0x0000014D
	bl sub_08004488
_0802CC34:
	pop {pc}
	.align 2, 0
_0802CC38: .4byte 0x0000014D

	thumb_func_start sub_0802CC3C
sub_0802CC3C: @ 0x0802CC3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802CC64 @ =gUnk_080CD6FC
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802CC64: .4byte gUnk_080CD6FC

	thumb_func_start sub_0802CC68
sub_0802CC68: @ 0x0802CC68
	push {lr}
	ldr r2, _0802CC7C @ =gUnk_080CD714
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802CC7C: .4byte gUnk_080CD714

	thumb_func_start sub_0802CC80
sub_0802CC80: @ 0x0802CC80
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r5, #0x7f
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	blt _0802CCB8
	cmp r1, #1
	ble _0802CC9A
	cmp r1, #0x1e
	bne _0802CCB8
_0802CC9A:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	ldr r2, _0802CCD4 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0x10]
_0802CCB8:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CCCA
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802CCCA:
	ldr r1, _0802CCD8 @ =gUnk_080CD6FC
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0802CCD4: .4byte gLinkEntity
_0802CCD8: .4byte gUnk_080CD6FC

	thumb_func_start nullsub_151
nullsub_151: @ 0x0802CCDC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802CCE0
sub_0802CCE0: @ 0x0802CCE0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	bl sub_08000E50
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	ldr r0, _0802CD50 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	bl sub_08000E50
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
	lsrs r0, r0, #8
	movs r1, #0x60
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0802CF64
	adds r0, r4, #0
	bl sub_0802CFD8
	pop {r4, r5, pc}
	.align 2, 0
_0802CD50: .4byte 0x0000FFFE

	thumb_func_start sub_0802CD54
sub_0802CD54: @ 0x0802CD54
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	bl sub_0802CFD8
	adds r1, r5, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802CD76
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802CDC8
_0802CD76:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802CDC8
	adds r6, r5, #0
	adds r6, #0x7b
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802CDC4
	movs r0, #2
	strb r0, [r5, #0xc]
	bl sub_08000E50
	adds r4, r0, #0
	lsrs r0, r4, #0x10
	strb r0, [r5, #0xe]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	bl sub_08000E50
	ldr r2, _0802CDC0 @ =gUnk_080CD728
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	lsrs r4, r4, #0x18
	movs r0, #0x60
	ands r4, r0
	strb r4, [r6]
	b _0802CDE4
	.align 2, 0
_0802CDC0: .4byte gUnk_080CD728
_0802CDC4:
	subs r0, #1
	strb r0, [r6]
_0802CDC8:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CDDE
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_0802CF64
_0802CDDE:
	adds r0, r5, #0
	bl sub_0806F69C
_0802CDE4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802CDE8
sub_0802CDE8: @ 0x0802CDE8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802CE3C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802CE3C
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0802CE2E
	ldr r0, _0802CE38 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	adds r0, r4, #0
	bl sub_0802CF8C
_0802CE2E:
	adds r0, r4, #0
	bl sub_0806F69C
	b _0802CE58
	.align 2, 0
_0802CE38: .4byte gUnk_020000B0
_0802CE3C:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	bl sub_08000E50
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x96
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
_0802CE58:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0802CFD8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802CE68
sub_0802CE68: @ 0x0802CE68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0802CED4 @ =gUnk_03003F80
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0xa]
	ldrb r1, [r2, #0x1a]
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r5, _0802CED8 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	bne _0802CEAC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_0802CEAC:
	adds r0, r4, #0
	bl sub_0802CFD8
	adds r0, r4, #0
	bl sub_08004274
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802CEDC
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0802CEF0
	.align 2, 0
_0802CED4: .4byte gUnk_03003F80
_0802CED8: .4byte gLinkEntity
_0802CEDC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802CEF0
	strb r2, [r3]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
_0802CEF0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802CEF4
sub_0802CEF4: @ 0x0802CEF4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802CFD8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CF28
	bl sub_0805E5A8
	ldr r1, _0802CF20 @ =gUnk_0813AB1C
	ldr r0, _0802CF24 @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08080840
	b _0802CF5A
	.align 2, 0
_0802CF20: .4byte gUnk_0813AB1C
_0802CF24: .4byte gUnk_02033A90
_0802CF28:
	ldr r0, [r4, #0x34]
	ldr r1, _0802CF5C @ =0xFFFE0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x30
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0802CF4A
	ldrb r0, [r4, #0x18]
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r4, #0x18]
_0802CF4A:
	ldr r1, _0802CF60 @ =gUnk_03003F80
	ldrb r0, [r1, #0xa]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0xa]
	ldrb r0, [r1, #0x1a]
	orrs r0, r2
	strb r0, [r1, #0x1a]
_0802CF5A:
	pop {r4, pc}
	.align 2, 0
_0802CF5C: .4byte 0xFFFE0000
_0802CF60: .4byte gUnk_03003F80

	thumb_func_start sub_0802CF64
sub_0802CF64: @ 0x0802CF64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0802CF76
	bl sub_08000E50
	b _0802CF7E
_0802CF76:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #2
_0802CF7E:
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0802CF8C
	pop {r4, pc}

	thumb_func_start sub_0802CF8C
sub_0802CF8C: @ 0x0802CF8C
	push {r4, lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x15]
	adds r2, r1, #2
	movs r0, #0x1c
	ands r2, r0
	ldrb r4, [r3, #0x14]
	lsls r0, r4, #2
	subs r0, r2, r0
	adds r0, #6
	cmp r0, #0xc
	bls _0802CFA8
	lsrs r0, r2, #2
	b _0802CFB8
_0802CFA8:
	adds r0, r1, #1
	movs r1, #7
	ands r0, r1
	cmp r0, #2
	ble _0802CFD0
	lsrs r0, r2, #2
	cmp r0, r4
	beq _0802CFD0
_0802CFB8:
	strb r0, [r3, #0x14]
	lsrs r0, r2, #3
	lsls r0, r0, #2
	ldr r1, _0802CFD4 @ =gUnk_080CD730
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r1, [r2, #2]
	adds r0, #2
	strh r1, [r0]
_0802CFD0:
	pop {r4, pc}
	.align 2, 0
_0802CFD4: .4byte gUnk_080CD730

	thumb_func_start sub_0802CFD8
sub_0802CFD8: @ 0x0802CFD8
	push {lr}
	mov ip, r0
	ldr r2, _0802D014 @ =gUnk_080CD740
	mov r3, ip
	adds r3, #0x7a
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r0, ip
	adds r0, #0x74
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r1, r1, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r0, ip
	adds r0, #0x76
	ldrh r3, [r0]
	mov r0, ip
	bl sub_0805EC9C
	pop {pc}
	.align 2, 0
_0802D014: .4byte gUnk_080CD740

	thumb_func_start sub_0802D018
sub_0802D018: @ 0x0802D018
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0802D030 @ =gUnk_080CD748
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0802D030: .4byte gUnk_080CD748

	thumb_func_start sub_0802D034
sub_0802D034: @ 0x0802D034
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0802D0F4
	cmp r0, #1
	bgt _0802D04C
	cmp r0, #0
	beq _0802D104
	b _0802D148
_0802D04C:
	cmp r0, #2
	bne _0802D148
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	bne _0802D090
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xe]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x74
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	ldr r1, _0802D088 @ =gUnk_03000F50
	ldrb r2, [r2]
	adds r0, r1, #0
	adds r0, #0x68
	strh r2, [r0]
	adds r1, #0x66
	ldr r0, _0802D08C @ =0x00001442
	strh r0, [r1]
	movs r0, #0xf6
	bl sub_080A3268
	b _0802D148
	.align 2, 0
_0802D088: .4byte gUnk_03000F50
_0802D08C: .4byte 0x00001442
_0802D090:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802D0D2
	adds r3, r4, #0
	adds r3, #0x75
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r2, _0802D0EC @ =gUnk_03000F50
	ldrb r1, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #8
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bne _0802D0D2
	ldr r0, _0802D0F0 @ =gLinkEntity
	bl sub_0807AABC
	bl sub_0805E780
_0802D0D2:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802D148
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D148
	movs r0, #0xf7
	bl sub_080A3268
	b _0802D148
	.align 2, 0
_0802D0EC: .4byte gUnk_03000F50
_0802D0F0: .4byte gLinkEntity
_0802D0F4:
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080A3268
	adds r0, r4, #0
	bl sub_0804A7D4
	b _0802D148
_0802D104:
	ldr r5, _0802D14C @ =gUnk_03003F80
	movs r0, #1
	strb r0, [r5, #0x14]
	ldr r1, _0802D150 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	adds r0, r4, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _0802D128
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xfa
	strb r0, [r1]
_0802D128:
	ldr r1, _0802D154 @ =gUnk_080CD75C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0802E518
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E7E4
_0802D148:
	pop {r4, r5, pc}
	.align 2, 0
_0802D14C: .4byte gUnk_03003F80
_0802D150: .4byte gLinkEntity
_0802D154: .4byte gUnk_080CD75C

	thumb_func_start sub_0802D158
sub_0802D158: @ 0x0802D158
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r0, _0802D16C @ =gUnk_02034490
	strb r1, [r0]
	movs r0, #7
	movs r1, #8
	bl sub_08050054
	pop {pc}
	.align 2, 0
_0802D16C: .4byte gUnk_02034490

	thumb_func_start sub_0802D170
sub_0802D170: @ 0x0802D170
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0802D1F0 @ =gUnk_03000FD0
	ldrb r3, [r0]
	cmp r3, #0
	bne _0802D216
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _0802D1FC
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #0x10
	strb r1, [r0, #1]
	ldr r0, [r4]
	strb r1, [r0, #0x19]
	ldr r0, [r4]
	movs r1, #0x40
	movs r2, #2
	bl sub_0802EB08
	cmp r0, #0
	bne _0802D216
	ldr r0, [r4]
	bl sub_0802EA88
	cmp r0, #0
	bne _0802D216
	movs r0, #2
	strb r0, [r5, #0xc]
	ldr r2, _0802D1F4 @ =gLinkEntity
	ldr r4, _0802D1F8 @ =gUnk_03000BF0
	ldrh r0, [r4, #6]
	adds r0, #0x98
	movs r1, #0
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #8]
	adds r0, #0xd8
	strh r0, [r2, #0x32]
	strb r1, [r2, #0x14]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r2, r6]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #2
	bl sub_0807BA8C
	str r5, [r4, #0x30]
	movs r0, #6
	movs r1, #8
	bl sub_08050054
	b _0802D216
	.align 2, 0
_0802D1F0: .4byte gUnk_03000FD0
_0802D1F4: .4byte gLinkEntity
_0802D1F8: .4byte gUnk_03000BF0
_0802D1FC:
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x80
	strb r3, [r0]
	adds r2, r5, #0
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	ldr r0, [r2]
	strb r3, [r0, #0x19]
_0802D216:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802D218
sub_0802D218: @ 0x0802D218
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldr r0, [r5]
	movs r1, #0x40
	movs r2, #2
	bl sub_0802EB08
	adds r1, r0, #0
	cmp r1, #0
	bne _0802D254
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x7c
	movs r0, #0xb4
	strh r0, [r2]
	ldr r0, [r5]
	ldr r1, [r0, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
	ldrh r3, [r2]
	adds r0, r4, #0
	movs r1, #0x67
	movs r2, #2
	bl sub_080A2988
_0802D254:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802D258
sub_0802D258: @ 0x0802D258
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802D276
	adds r0, r5, #0
	bl sub_0802E1D0
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _0802D288
	strb r0, [r5, #0xc]
	b _0802D334
_0802D276:
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802D288
	adds r0, r5, #0
	movs r1, #0x4e
	bl sub_08004260
_0802D288:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0802D2B4
	ldr r1, _0802D2B0 @ =gUnk_080CD774
	ldrb r0, [r5, #0xf]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r1, [r5, #0xf]
	movs r0, #0x3f
	ands r0, r1
	adds r0, #2
	strb r0, [r5, #0xf]
	b _0802D2B8
	.align 2, 0
_0802D2B0: .4byte gUnk_080CD774
_0802D2B4:
	subs r0, #1
	strb r0, [r5, #0xe]
_0802D2B8:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bhi _0802D2D0
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA48
	b _0802D2E4
_0802D2D0:
	adds r4, r5, #0
	adds r4, #0x84
	cmp r0, #0xff
	beq _0802D2E4
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA68
_0802D2E4:
	ldr r5, _0802D338 @ =gUnk_030010A0
	ldr r0, [r5]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0802D2F8
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080A3268
_0802D2F8:
	ldr r0, [r5]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802D32E
	bl sub_08000E50
	movs r1, #5
	ands r1, r0
	ldr r0, [r4]
	lsls r1, r1, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	cmp r0, #0
	beq _0802D32E
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0802D32E:
	ldr r0, [r4]
	bl sub_0802E768
_0802D334:
	pop {r4, r5, pc}
	.align 2, 0
_0802D338: .4byte gUnk_030010A0

	thumb_func_start sub_0802D33C
sub_0802D33C: @ 0x0802D33C
	push {r4, r5, r6, r7, lr}
	adds r0, #0x84
	ldr r6, [r0]
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x3c
	adds r5, r7, #0
_0802D34A:
	ldm r5!, {r0}
	bl sub_0805E7BC
	adds r4, #1
	cmp r4, #3
	bls _0802D34A
	lsls r1, r4, #2
	adds r1, r7, r1
	ldr r0, [r1]
	adds r0, #0x45
	movs r3, #0
	strb r3, [r0]
	ldr r1, [r1]
	adds r1, #0x6d
	ldrb r2, [r1]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r6, #0x50]
	adds r0, #0x45
	strb r3, [r0]
	ldr r0, [r6, #0x50]
	strb r3, [r0, #0xb]
	ldr r3, [r6, #0x50]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	bl sub_0805E780
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802D394
sub_0802D394: @ 0x0802D394
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802D3B4 @ =gUnk_080CD7B8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	pop {r4, pc}
	.align 2, 0
_0802D3B4: .4byte gUnk_080CD7B8

	thumb_func_start sub_0802D3B8
sub_0802D3B8: @ 0x0802D3B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #3
	bl GetProgressFlag
	cmp r0, #0
	beq _0802D3DE
	ldr r2, _0802D3F4 @ =gUnk_03000F50
	ldrh r1, [r2]
	ldr r0, _0802D3F8 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802D3FC @ =gLinkEntity
	bl sub_0807AABC
	bl sub_0805E780
_0802D3DE:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0802D3EA
	b _0802D63C
_0802D3EA:
	lsls r0, r0, #2
	ldr r1, _0802D400 @ =_0802D404
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D3F4: .4byte gUnk_03000F50
_0802D3F8: .4byte 0x0000FDFF
_0802D3FC: .4byte gLinkEntity
_0802D400: .4byte _0802D404
_0802D404: @ jump table
	.4byte _0802D420 @ case 0
	.4byte _0802D544 @ case 1
	.4byte _0802D58C @ case 2
	.4byte _0802D5A8 @ case 3
	.4byte _0802D5EC @ case 4
	.4byte _0802D5F6 @ case 5
	.4byte _0802D61A @ case 6
_0802D420:
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x75
	strb r2, [r0]
	adds r0, #0xb
	strb r2, [r0]
	subs r0, #7
	strb r2, [r0]
	movs r0, #0x96
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_0802EB9C
	movs r0, #0x54
	bl sub_0801D8E0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r5, #0
	bne _0802D470
	adds r0, r4, #0
	bl sub_0804A7D4
	bl sub_0805E780
_0802D470:
	ldr r0, [r7]
	str r0, [r4, #0x64]
	movs r6, #0
	movs r0, #0
	mov r8, r0
_0802D47A:
	movs r0, #0x24
	movs r1, #1
	bl sub_0804AA60
	str r0, [r4, #0x54]
	adds r3, r6, #1
	cmp r0, #0
	beq _0802D4D6
	strb r3, [r0, #0xb]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	adds r1, #0x38
	strb r0, [r1]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r4, #0x54]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldrh r2, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	lsls r2, r6, #2
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r4, #0x54]
	str r1, [r0]
	adds r2, r5, r2
	movs r0, #0x10
	strb r0, [r2, #1]
	mov r0, r8
	strb r0, [r2, #0x19]
	adds r0, r5, #0
	adds r0, #0x35
	mov r1, r8
	strb r1, [r0]
_0802D4D6:
	adds r6, r3, #0
	cmp r6, #4
	bls _0802D47A
	movs r0, #0x24
	movs r1, #2
	bl sub_0804AA60
	adds r2, r0, #0
	str r2, [r4, #0x54]
	cmp r2, #0
	beq _0802D52E
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	movs r3, #0
	strh r0, [r1, #0x2e]
	ldr r2, [r4, #0x54]
	adds r1, r6, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x50]
	movs r0, #0x10
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x2d
	strb r3, [r0]
	adds r0, #8
	strb r3, [r0]
_0802D52E:
	ldr r0, _0802D540 @ =gUnk_03003F80
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x4c
	bl sub_08004260
	b _0802D63C
	.align 2, 0
_0802D540: .4byte gUnk_03003F80
_0802D544:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802D55C
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
_0802D55C:
	ldr r1, _0802D588 @ =gUnk_080CD7C4
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	adds r3, r4, #0
	adds r3, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x24
	bl sub_08004260
	b _0802D63C
	.align 2, 0
_0802D588: .4byte gUnk_080CD7C4
_0802D58C:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	b _0802D63C
_0802D5A8:
	ldr r0, _0802D5E8 @ =gUnk_080CD884
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x12
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r4, #0
	movs r1, #0x4f
	bl sub_08004260
	b _0802D63C
	.align 2, 0
_0802D5E8: .4byte gUnk_080CD884
_0802D5EC:
	adds r0, r4, #0
	movs r1, #0x2c
	bl sub_080042AC
	b _0802D63C
_0802D5F6:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r4, #0
	movs r1, #0x2d
	bl sub_080042AC
	b _0802D63C
_0802D61A:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r4, #0
	movs r1, #0x50
	bl sub_08004260
_0802D63C:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802D648
	adds r0, r4, #0
	bl sub_0802D86C
_0802D648:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802D650
sub_0802D650: @ 0x0802D650
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802D670 @ =gUnk_080CD7E4
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, #0x84
	ldr r0, [r4]
	bl sub_0802E7E4
	pop {r4, pc}
	.align 2, 0
_0802D670: .4byte gUnk_080CD7E4

	thumb_func_start sub_0802D674
sub_0802D674: @ 0x0802D674
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0802D6B4 @ =gUnk_02034490
	movs r7, #1
	strb r7, [r0]
	ldr r5, _0802D6B8 @ =gLinkEntity
	ldr r6, [r5, #0x34]
	cmp r6, #0
	bne _0802D6EC
	ldr r0, [r4, #0x7c]
	cmp r0, #0x96
	bne _0802D692
	ldr r0, _0802D6BC @ =0x00000127
	bl sub_080A3268
_0802D692:
	ldr r0, [r4, #0x7c]
	subs r1, r0, #1
	str r1, [r4, #0x7c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802D6C4
	strb r7, [r4, #0xd]
	movs r0, #0x5a
	str r0, [r4, #0x7c]
	ldr r0, _0802D6C0 @ =gUnk_03000BF0
	str r4, [r0, #0x30]
	ldr r0, _0802D6BC @ =0x00000127
	bl sub_080A3268
	b _0802D6EC
	.align 2, 0
_0802D6B4: .4byte gUnk_02034490
_0802D6B8: .4byte gLinkEntity
_0802D6BC: .4byte 0x00000127
_0802D6C0: .4byte gUnk_03000BF0
_0802D6C4:
	cmp r1, #0x3c
	bhi _0802D6DC
	cmp r1, #0x3c
	bne _0802D6D8
	movs r2, #0x18
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_080A2CFC
_0802D6D8:
	strb r6, [r5, #0x14]
	b _0802D6EC
_0802D6DC:
	cmp r1, #0x59
	bhi _0802D6E4
	movs r0, #2
	b _0802D6EA
_0802D6E4:
	cmp r1, #0x77
	bhi _0802D6EC
	movs r0, #6
_0802D6EA:
	strb r0, [r5, #0x14]
_0802D6EC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802D6F0
sub_0802D6F0: @ 0x0802D6F0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x7c]
	subs r0, #1
	str r0, [r2, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802D712
	movs r0, #2
	strb r0, [r2, #0xd]
	movs r0, #0x5a
	str r0, [r2, #0x7c]
	movs r0, #0x96
	movs r1, #0
	bl sub_08080964
_0802D712:
	pop {pc}

	thumb_func_start sub_0802D714
sub_0802D714: @ 0x0802D714
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	subs r0, #1
	str r0, [r4, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802D77A
	adds r0, r4, #0
	adds r0, #0x84
	ldr r5, [r0]
	movs r1, #0
	movs r3, #0
	movs r2, #0x10
	adds r0, r5, #0
_0802D734:
	strh r3, [r0, #0x18]
	strb r2, [r0, #1]
	adds r0, #4
	adds r1, #1
	cmp r1, #5
	bls _0802D734
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x4d
	bl sub_08004260
	movs r0, #0x24
	movs r1, #5
	bl sub_0804AA60
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0802D774
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x38]
	adds r0, #0x84
	str r5, [r0]
_0802D774:
	ldr r1, [r5, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
_0802D77A:
	pop {r4, r5, pc}

	thumb_func_start sub_0802D77C
sub_0802D77C: @ 0x0802D77C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802D7B0 @ =gUnk_030010A0
	ldr r4, [r0]
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne _0802D7AC
	adds r0, r5, #0
	bl sub_0802E430
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _0802D7AC
	strb r4, [r5, #0xf]
	strb r4, [r5, #0xe]
	movs r0, #4
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
_0802D7AC:
	pop {r4, r5, pc}
	.align 2, 0
_0802D7B0: .4byte gUnk_030010A0

	thumb_func_start sub_0802D7B4
sub_0802D7B4: @ 0x0802D7B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D82C
	ldr r4, _0802D7FC @ =gUnk_080CD7F8
	ldrb r2, [r5, #0xf]
	adds r0, r2, r4
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802D810
	strb r3, [r5, #0xf]
	strb r3, [r5, #0xe]
	movs r2, #1
	strb r2, [r5, #0xc]
	strb r3, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	ldr r1, _0802D800 @ =gUnk_03000BF0
	ldr r0, _0802D804 @ =gLinkEntity
	str r0, [r1, #0x30]
	ldr r0, _0802D808 @ =gUnk_03003F80
	adds r0, #0x8b
	strb r2, [r0]
	ldr r0, _0802D80C @ =gUnk_02034490
	strb r3, [r0]
	movs r0, #0x2e
	bl sub_080A3268
	b _0802D868
	.align 2, 0
_0802D7FC: .4byte gUnk_080CD7F8
_0802D800: .4byte gUnk_03000BF0
_0802D804: .4byte gLinkEntity
_0802D808: .4byte gUnk_03003F80
_0802D80C: .4byte gUnk_02034490
_0802D810:
	strb r1, [r5, #0xe]
	adds r0, r2, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0xf]
	adds r0, #2
	strb r0, [r5, #0xf]
	ldr r0, _0802D828 @ =0x00000127
	bl sub_080A3268
	b _0802D830
	.align 2, 0
_0802D828: .4byte 0x00000127
_0802D82C:
	subs r0, #1
	strb r0, [r5, #0xe]
_0802D830:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bhi _0802D848
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA48
	b _0802D85C
_0802D848:
	adds r4, r5, #0
	adds r4, #0x84
	cmp r0, #0xff
	beq _0802D85C
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA68
_0802D85C:
	ldr r0, [r4]
	bl sub_0802E768
	adds r0, r5, #0
	bl sub_0802E518
_0802D868:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802D86C
sub_0802D86C: @ 0x0802D86C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0802D878
	b _0802DB7E
_0802D878:
	lsls r0, r0, #2
	ldr r1, _0802D884 @ =_0802D888
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D884: .4byte _0802D888
_0802D888: @ jump table
	.4byte _0802DB64 @ case 0
	.4byte _0802D8A4 @ case 1
	.4byte _0802D8CE @ case 2
	.4byte _0802DA54 @ case 3
	.4byte _0802D94C @ case 4
	.4byte _0802D9A2 @ case 5
	.4byte _0802D9F8 @ case 6
_0802D8A4:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802D8CE
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D8BE
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0802D8C6
_0802D8BE:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802D8CC
_0802D8C6:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802D8CC:
	strb r0, [r4, #0x10]
_0802D8CE:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802D8DE
	b _0802DB7E
_0802D8DE:
	ldr r0, [r4, #0x50]
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D918
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0802D906
	adds r0, r4, #0
	bl sub_0801D230
	adds r0, r4, #0
	movs r1, #0xc9
	bl sub_0801D040
	b _0802D918
_0802D906:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0801D230
	adds r0, r4, #0
	movs r1, #0xca
	bl sub_0801D040
_0802D918:
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D924
	b _0802DB7E
_0802D924:
	ldr r1, _0802D944 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #8
	movs r3, #8
	bl sub_080041A0
	cmp r0, #0
	bne _0802D936
	b _0802DB7E
_0802D936:
	ldr r0, _0802D948 @ =gUnk_03003F80
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfc
	strb r1, [r0]
	b _0802DB7E
	.align 2, 0
_0802D944: .4byte gLinkEntity
_0802D948: .4byte gUnk_03003F80
_0802D94C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D95E
	adds r0, r4, #0
	bl sub_080042B8
	b _0802DB7E
_0802D95E:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	adds r2, r0, #0
	cmp r2, #0
	beq _0802D970
	b _0802DB7E
_0802D970:
	ldr r0, [r4, #0x50]
	adds r0, #0x7b
	movs r1, #1
	strb r1, [r0]
	strb r2, [r4, #0xe]
_0802D97A:
	ldrb r3, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x67
	movs r2, #0
	bl sub_080A2988
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0802D97A
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_080A3268
_0802D99C:
	bl sub_0805E780
	b _0802DB7E
_0802D9A2:
	ldr r0, _0802D9F4 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D9B8
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _0802D9B8
	b _0802DB7E
_0802D9B8:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802D9CE
	b _0802DB7E
_0802D9CE:
	movs r0, #0x24
	movs r1, #6
	bl sub_0804AA60
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802D99C
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x38]
	adds r0, #0x84
	ldr r1, [r2]
	str r1, [r0]
	b _0802D99C
	.align 2, 0
_0802D9F4: .4byte gUnk_030010A0
_0802D9F8:
	ldr r0, _0802DA50 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802DA0E
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _0802DA0E
	b _0802DB7E
_0802DA0E:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802DA24
	b _0802DB7E
_0802DA24:
	movs r0, #0x24
	movs r1, #3
	bl sub_0804AA60
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802D99C
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0xe]
	ldr r2, [r1]
	ldr r0, [r4, #0x54]
	str r0, [r2, #0x38]
	adds r0, #0x84
	ldr r1, [r1]
	str r1, [r0]
	b _0802D99C
	.align 2, 0
_0802DA50: .4byte gUnk_030010A0
_0802DA54:
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802DA96
	subs r0, r1, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802DA96
	adds r5, r4, #0
	adds r5, #0x75
	ldrb r0, [r5]
	adds r0, #2
	strb r0, [r5]
	ldr r7, _0802DAD4 @ =gUnk_080CD884
	ldrb r0, [r5]
	adds r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r6]
	cmp r0, #0
	beq _0802DA96
	adds r0, r4, #0
	bl sub_0801D230
	ldrb r0, [r5]
	adds r0, #1
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D040
_0802DA96:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802DAD8
	ldrb r2, [r6]
	cmp r2, #0
	bne _0802DAD8
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1d
	bne _0802DB20
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x50]
	movs r0, #4
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x50]
	strb r2, [r0, #0xb]
	ldr r0, [r4, #0x50]
	adds r0, #0x7b
	strb r2, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_080A3268
	b _0802DB20
	.align 2, 0
_0802DAD4: .4byte gUnk_080CD884
_0802DAD8:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldrb r1, [r4, #0xe]
	adds r3, r0, #0
	ldrb r0, [r2, #1]
	cmp r1, r0
	beq _0802DB20
	adds r0, r1, #0
	ldrb r1, [r2, #1]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	ble _0802DB08
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bls _0802DB1A
	movs r0, #0x28
	b _0802DB18
_0802DB08:
	ldrb r0, [r4, #0x1e]
	subs r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bhi _0802DB1A
	movs r0, #0x30
_0802DB18:
	strb r0, [r4, #0x1e]
_0802DB1A:
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0xe]
_0802DB20:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ble _0802DB7E
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _0802DB7E
	movs r0, #0x24
	movs r1, #4
	bl sub_0804AA60
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802DB7E
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x38]
	adds r0, #0x84
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FA24
	b _0802D99C
_0802DB64:
	ldr r1, _0802DB80 @ =gUnk_080CD810
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E7E4
_0802DB7E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802DB80: .4byte gUnk_080CD810

	thumb_func_start sub_0802DB84
sub_0802DB84: @ 0x0802DB84
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0802DBB0 @ =gLinkEntity
	bl sub_080045C4
	strb r0, [r5, #0x15]
	adds r1, r5, #0
	adds r1, #0x84
	ldr r2, [r1]
	ldrb r1, [r2, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0802DBB4
	movs r0, #1
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
	b _0802DC1A
	.align 2, 0
_0802DBB0: .4byte gLinkEntity
_0802DBB4:
	ldrb r0, [r2, #1]
	ldrb r1, [r5, #0x15]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	ble _0802DBCE
	movs r3, #0
	ldrb r1, [r5, #0xe]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0xe]
	b _0802DBD2
_0802DBCE:
	movs r3, #1
	strb r3, [r5, #0xe]
_0802DBD2:
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802DBF0
	cmp r0, #1
	bgt _0802DBE6
	cmp r0, #0
	beq _0802DBEC
	b _0802DBF8
_0802DBE6:
	cmp r0, #2
	beq _0802DBF4
	b _0802DBF8
_0802DBEC:
	movs r0, #0x30
	b _0802DBF6
_0802DBF0:
	movs r0, #0x40
	b _0802DBF6
_0802DBF4:
	movs r0, #0x50
_0802DBF6:
	strh r0, [r5, #0x24]
_0802DBF8:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #0x24
	ldrsh r2, [r5, r1]
	movs r1, #5
	bl sub_0802EA48
	ldr r0, [r4]
	bl sub_0802E768
	adds r0, r5, #0
	bl sub_0802E518
	adds r0, r5, #0
	bl sub_0802EBC4
_0802DC1A:
	pop {r4, r5, pc}

	thumb_func_start sub_0802DC1C
sub_0802DC1C: @ 0x0802DC1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0802DC40 @ =gLinkEntity
	bl sub_080045C4
	adds r3, r0, #0
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	subs r3, r0, r3
	movs r0, #0x1f
	ands r3, r0
	cmp r3, #0x10
	bls _0802DC44
	cmp r3, #0x1d
	bhi _0802DC54
	b _0802DC48
	.align 2, 0
_0802DC40: .4byte gLinkEntity
_0802DC44:
	cmp r3, #2
	bls _0802DC54
_0802DC48:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldr r1, [r1]
	ldr r1, [r1, #0x50]
	strb r0, [r1, #0xe]
	b _0802DCDE
_0802DC54:
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802DC6A
	subs r0, r1, #1
	strb r0, [r6]
	adds r4, r5, #0
	adds r4, #0x84
	b _0802DCC6
_0802DC6A:
	ldrb r0, [r5, #0xe]
	movs r3, #0
	cmp r0, #1
	bne _0802DC74
	movs r3, #1
_0802DC74:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #5
	movs r2, #0x20
	bl sub_0802EA48
	ldr r1, [r4]
	ldrh r0, [r1]
	ldrh r1, [r1, #0x14]
	movs r2, #4
	bl sub_0802EA18
	cmp r0, #0
	beq _0802DCC6
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bne _0802DCAC
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	subs r0, #4
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0xff
	orrs r0, r1
	strh r0, [r2, #0x14]
	b _0802DCBA
_0802DCAC:
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	adds r1, #4
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #8
	strh r1, [r0, #0x14]
_0802DCBA:
	ldrb r0, [r5, #0xe]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0xe]
	movs r0, #0xc
	strb r0, [r6]
_0802DCC6:
	adds r0, r5, #0
	bl sub_0802E9B0
	ldr r0, [r4]
	bl sub_0802E768
	adds r0, r5, #0
	bl sub_0802E518
	adds r0, r5, #0
	bl sub_0802EBC4
_0802DCDE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802DCE0
sub_0802DCE0: @ 0x0802DCE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldr r0, [r5]
	ldr r1, [r0, #0x50]
	ldrb r0, [r1, #0xe]
	cmp r0, #0xc
	beq _0802DD44
	ldr r1, _0802DD1C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldr r2, [r5]
	ldrb r1, [r2, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0802DD20
	ldr r1, [r2, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #4
	strb r0, [r1]
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0802DDD0
	.align 2, 0
_0802DD1C: .4byte gLinkEntity
_0802DD20:
	ldrb r0, [r2, #0x15]
	ldrb r1, [r4, #0x15]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x10
	ble _0802DD32
	movs r3, #0
_0802DD32:
	adds r0, r2, #0
	movs r1, #5
	movs r2, #0x20
	bl sub_0802EA48
	ldr r0, [r5]
	bl sub_0802E768
	b _0802DDD0
_0802DD44:
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	bhi _0802DD74
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DD6E
	movs r2, #4
	strb r2, [r1]
	ldr r1, [r5]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, [r1]
	strb r2, [r0, #0xf]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	b _0802DDD0
_0802DD6E:
	subs r0, #1
	strb r0, [r1]
	b _0802DDD0
_0802DD74:
	ldrb r6, [r1, #0xf]
	cmp r6, #0
	bne _0802DDD0
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802DDB2
	ldr r0, [r5]
	ldrb r0, [r0, #0x15]
	strb r0, [r1, #0x15]
	ldr r2, [r4, #0x54]
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0xb]
	ldr r1, [r4, #0x54]
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r4, #0x54]
	ldr r0, [r5]
	ldr r0, [r0, #0x3c]
	str r0, [r1, #0x54]
_0802DDB2:
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	strb r6, [r0, #0xe]
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DDC8
	movs r0, #1
	strb r0, [r1]
	b _0802DDD0
_0802DDC8:
	strb r6, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0802EB9C
_0802DDD0:
	adds r0, r4, #0
	bl sub_0802E518
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802DDD8
sub_0802DDD8: @ 0x0802DDD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r0, #0x76
	ldrb r0, [r0]
	movs r7, #4
	cmp r0, #0
	beq _0802DE06
	movs r7, #6
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802DE06
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0802DE06
	movs r7, #0xc
_0802DE06:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0802DE2E
	cmp r0, #0
	bge _0802DE12
	b _0802DF9A
_0802DE12:
	cmp r0, #2
	ble _0802DE18
	b _0802DF9A
_0802DE18:
	adds r6, r5, #0
	adds r6, #0x84
	cmp r0, #1
	beq _0802DEFE
	adds r0, r5, #0
	adds r0, #0x76
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _0802DE76
	b _0802DE6C
_0802DE2E:
	adds r6, r5, #0
	adds r6, #0x84
	ldr r0, [r6]
	bl sub_0802EA88
	cmp r0, #0
	beq _0802DE3E
	b _0802DF9A
_0802DE3E:
	movs r4, #1
	strb r4, [r5, #0xb]
	strb r0, [r5, #0xf]
	bl sub_08000E50
	ands r0, r4
	cmp r0, #0
	bne _0802DE58
	strb r0, [r5, #0x15]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	adds r0, r0, r7
	b _0802DE60
_0802DE58:
	strb r4, [r5, #0x15]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	subs r0, r0, r7
_0802DE60:
	movs r1, #0x1f
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x7a
	strb r0, [r1]
	b _0802DF9A
_0802DE6C:
	movs r2, #1
	movs r0, #2
	mov r8, r0
	movs r4, #1
	b _0802DE7E
_0802DE76:
	movs r2, #2
	movs r1, #6
	mov r8, r1
	movs r4, #0
_0802DE7E:
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldr r0, [r0, #0x50]
	ldrb r0, [r0, #0xf]
	adds r6, r1, #0
	cmp r0, #1
	bne _0802DEC4
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804A98C
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _0802DEC4
	ldr r0, [r6]
	ldrb r0, [r0, #0x15]
	strb r0, [r1, #0x15]
	ldr r2, [r5, #0x54]
	ldr r0, [r6]
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0xb]
	ldr r1, [r5, #0x54]
	ldr r0, [r6]
	ldr r0, [r0, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r5, #0x54]
	ldr r0, [r6]
	ldr r0, [r0, #0x3c]
	str r0, [r1, #0x54]
_0802DEC4:
	adds r1, r5, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0802DEF4
	strb r4, [r1]
	ldr r1, [r6]
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #2
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, [r1]
	mov r1, r8
	strb r1, [r0, #0xf]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0802DEF8
	strb r2, [r5, #0xf]
	b _0802DEF8
_0802DEF4:
	subs r0, #1
	strb r0, [r1]
_0802DEF8:
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _0802DF0C
_0802DEFE:
	ldr r0, [r6]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA48
	b _0802DF2E
_0802DF0C:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DF22
	ldr r0, [r6]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x20
	bl sub_0802EA48
	b _0802DF2E
_0802DF22:
	ldr r0, [r6]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x10
	bl sub_0802EA48
_0802DF2E:
	adds r4, r6, #0
	ldr r0, [r4]
	bl sub_0802E768
	adds r2, r5, #0
	adds r2, #0x7a
	ldr r1, [r4]
	ldrb r0, [r2]
	ldrb r1, [r1, #0x15]
	cmp r0, r1
	bne _0802DF9A
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _0802DF8A
	movs r0, #2
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #0x15]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0x15]
	adds r3, r0, #0
	cmp r3, #1
	bne _0802DF6C
	lsls r0, r7, #1
	ldrb r1, [r2]
	subs r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r2]
	strb r3, [r5, #0xe]
	b _0802DF80
_0802DF6C:
	lsls r0, r7, #1
	ldrb r1, [r2]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0xe]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0xe]
_0802DF80:
	ldr r0, [r6]
	ldr r1, [r0, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
	b _0802DF9A
_0802DF8A:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldr r1, [r6]
	ldr r1, [r1, #0x50]
	strb r0, [r1, #0xe]
	adds r0, r5, #0
	bl sub_0802EB9C
_0802DF9A:
	adds r0, r5, #0
	bl sub_0802E518
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802DFA8
sub_0802DFA8: @ 0x0802DFA8
	push {lr}
	ldr r2, _0802DFBC @ =gUnk_080CD828
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802DFBC: .4byte gUnk_080CD828

	thumb_func_start sub_0802DFC0
sub_0802DFC0: @ 0x0802DFC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x84
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	beq _0802DFF8
	cmp r1, #4
	bls _0802DFDC
	movs r0, #0
	b _0802DFDE
_0802DFDC:
	movs r0, #1
_0802DFDE:
	strb r0, [r5, #0x15]
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #0
	movs r2, #0x20
	bl sub_0802EA48
	ldr r0, [r4]
	bl sub_0802EA88
	b _0802E026
_0802DFF8:
	adds r0, r2, #0
	bl sub_0802EA88
	cmp r0, #0
	bne _0802E026
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802E026
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r0, [r4]
	ldr r1, [r0, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	ldr r0, _0802E030 @ =0x00000127
	bl sub_080A3268
_0802E026:
	adds r0, r5, #0
	bl sub_0802E518
	pop {r4, r5, pc}
	.align 2, 0
_0802E030: .4byte 0x00000127

	thumb_func_start sub_0802E034
sub_0802E034: @ 0x0802E034
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r5, [r0]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802E04A
	movs r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0
	b _0802E058
_0802E04A:
	movs r0, #3
	strb r0, [r4, #0x15]
	ldr r1, _0802E078 @ =gUnk_080CD840
	ldrb r0, [r5, #1]
	lsrs r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
_0802E058:
	ldrb r1, [r5, #0x19]
	cmp r0, r1
	beq _0802E07C
	ldrb r3, [r4, #0x15]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x40
	bl sub_0802EA68
	adds r0, r5, #0
	movs r1, #0x40
	movs r2, #2
	bl sub_0802EB08
	b _0802E0B0
	.align 2, 0
_0802E078: .4byte gUnk_080CD840
_0802E07C:
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #2
	bl sub_0802EB08
	cmp r0, #0
	bne _0802E0B0
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	bne _0802E0A6
	adds r1, r4, #0
	adds r1, #0x7c
	movs r2, #0
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #4
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	strb r2, [r0, #0xe]
_0802E0A6:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r5, #0x19]
_0802E0B0:
	adds r0, r4, #0
	bl sub_0802E518
	pop {r4, r5, pc}

	thumb_func_start sub_0802E0B8
sub_0802E0B8: @ 0x0802E0B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x32]
	subs r0, #4
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0800445C
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	cmp r2, #0
	beq _0802E0F4
	ldr r1, _0802E128 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _0802E0F4
	ldr r0, _0802E12C @ =gUnk_03003F80
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfa
	strb r1, [r0]
_0802E0F4:
	ldr r0, _0802E130 @ =gUnk_080CD844
	adds r3, r4, #0
	adds r3, #0x79
	ldrb r5, [r3]
	movs r6, #0x7f
	adds r1, r6, #0
	ands r1, r5
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r1]
	ldrb r1, [r2]
	cmp r0, r1
	blo _0802E158
	cmp r5, #1
	bls _0802E134
	movs r0, #0
	strb r0, [r2]
	strb r0, [r4, #0xc]
	bl sub_08078B48
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080A3268
	b _0802E1CA
	.align 2, 0
_0802E128: .4byte gLinkEntity
_0802E12C: .4byte gUnk_03003F80
_0802E130: .4byte gUnk_080CD844
_0802E134:
	ldrb r1, [r4, #0x10]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0xff
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0x78
	bls _0802E158
	movs r0, #0x78
	strh r0, [r1]
_0802E158:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _0802E18C @ =0xFFFF0000
	adds r5, r0, #0
	cmp r1, r2
	bne _0802E190
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #0
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0x4e
	bl sub_08004260
	b _0802E1C4
	.align 2, 0
_0802E18C: .4byte 0xFFFF0000
_0802E190:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802E1B2
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0802E1B2
	ldr r0, _0802E1CC @ =0x00000127
	bl sub_080A3268
_0802E1B2:
	ldrh r0, [r5]
	cmp r0, #0x77
	bhi _0802E1C4
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_0802E1C4:
	adds r0, r4, #0
	bl sub_0802E518
_0802E1CA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802E1CC: .4byte 0x00000127

	thumb_func_start sub_0802E1D0
sub_0802E1D0: @ 0x0802E1D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802E1F6
	adds r0, r5, #0
	bl sub_08004274
_0802E1F6:
	ldrb r0, [r4]
	movs r2, #0x3f
	ands r2, r0
	cmp r2, #0
	beq _0802E218
	ldr r1, _0802E280 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _0802E218
	ldr r0, _0802E284 @ =gUnk_03003F80
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfa
	strb r1, [r0]
_0802E218:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E2F0
	movs r4, #0
	mov r2, r8
	adds r2, #0x30
	adds r7, r5, #0
	adds r7, #0x7c
	ldr r0, _0802E288 @ =gUnk_03000F50
	mov sb, r0
	movs r1, #0x66
	add r1, sb
	mov sl, r1
_0802E23A:
	adds r1, r2, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802E2EA
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0802E2F0
	mov r1, r8
	ldr r0, [r1, #0x3c]
	movs r1, #0xc
	movs r2, #0
	bl CreateFX
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080A3268
	cmp r4, #5
	bne _0802E2F0
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802E28C
	movs r0, #0xf0
	strh r0, [r7]
	movs r1, #0
	bl sub_08080964
	b _0802E2E4
	.align 2, 0
_0802E280: .4byte gLinkEntity
_0802E284: .4byte gUnk_03003F80
_0802E288: .4byte gUnk_03000F50
_0802E28C:
	adds r4, r7, #0
	strh r6, [r4]
	movs r0, #0x7c
	adds r0, r0, r5
	mov r8, r0
	adds r6, r5, #0
	adds r6, #0x74
	adds r7, r5, #0
	adds r7, #0x75
_0802E29E:
	ldrh r3, [r4]
	adds r0, r5, #0
	movs r1, #0x67
	movs r2, #1
	bl sub_080A2988
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0802E29E
	movs r0, #0
	strb r0, [r6]
	movs r0, #0x10
	strb r0, [r7]
	movs r0, #0xb
	mov r1, r8
	strh r0, [r1]
	ldrb r1, [r6]
	ldrb r0, [r7]
	lsls r0, r0, #8
	orrs r1, r0
	mov r0, sb
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
_0802E2E4:
	movs r0, #5
	strb r0, [r5, #0xb]
	b _0802E2F0
_0802E2EA:
	adds r4, #1
	cmp r4, #5
	bls _0802E23A
_0802E2F0:
	adds r0, r5, #0
	bl sub_0802E518
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802E300
sub_0802E300: @ 0x0802E300
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802E31E
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	adds r5, r1, #0
	b _0802E35E
_0802E31E:
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x7c
	cmp r0, #0x10
	beq _0802E35E
	ldrh r0, [r5]
	cmp r0, #0
	beq _0802E364
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E40C
	movs r0, #0xb
	strh r0, [r5]
	adds r3, r4, #0
	adds r3, #0x75
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _0802E3A0 @ =gUnk_03000F50
	ldrb r1, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #8
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
_0802E35E:
	ldrh r0, [r5]
	cmp r0, #0
	bne _0802E40C
_0802E364:
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802E3A4
	adds r3, r4, #0
	adds r3, #0x75
	ldrb r0, [r3]
	cmp r0, #0x10
	beq _0802E3A4
	movs r0, #0xb
	strh r0, [r5]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r2, _0802E3A0 @ =gUnk_03000F50
	ldrb r1, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #8
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
	b _0802E428
	.align 2, 0
_0802E3A0: .4byte gUnk_03000F50
_0802E3A4:
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r5, [r0]
	ldr r1, _0802E408 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	lsls r0, r0, #3
	movs r2, #0
	adds r6, r4, #0
	adds r6, #0x80
	movs r3, #0
	adds r1, r5, #0
_0802E3CA:
	strh r3, [r1, #0x18]
	strb r0, [r1, #1]
	adds r1, #4
	adds r2, #1
	cmp r2, #5
	bls _0802E3CA
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	strb r1, [r6]
	adds r0, r4, #0
	movs r1, #0x4d
	bl sub_08004260
	movs r0, #0x24
	movs r1, #5
	bl sub_0804AA60
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0802E400
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x38]
	adds r0, #0x84
	str r5, [r0]
_0802E400:
	ldr r1, [r5, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	b _0802E422
	.align 2, 0
_0802E408: .4byte gLinkEntity
_0802E40C:
	ldr r0, _0802E42C @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802E422
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #3
	bl sub_0804A98C
_0802E422:
	adds r0, r4, #0
	bl sub_0802E518
_0802E428:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802E42C: .4byte gUnk_030010A0

	thumb_func_start sub_0802E430
sub_0802E430: @ 0x0802E430
	push {lr}
	ldr r2, _0802E444 @ =gUnk_080CD848
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802E444: .4byte gUnk_080CD848

	thumb_func_start sub_0802E448
sub_0802E448: @ 0x0802E448
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x84
	ldr r6, [r0]
	movs r5, #5
_0802E452:
	adds r0, r6, #0
	adds r0, #0x30
	adds r4, r0, r5
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802E46E
	ldr r0, [r6, #0x3c]
	movs r1, #0xc
	movs r2, #0
	bl CreateFX
	movs r0, #0x7d
	bl sub_080A3268
_0802E46E:
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _0802E48A
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0802E490
	cmp r5, #0
	bne _0802E490
	movs r0, #1
	strb r0, [r7, #0xb]
	b _0802E490
_0802E48A:
	subs r5, #1
	cmp r5, #0
	bge _0802E452
_0802E490:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #9
	bhi _0802E4A6
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0x40
	movs r3, #3
	bl sub_0802EA68
_0802E4A6:
	adds r0, r7, #0
	bl sub_08004274
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E768
	adds r0, r7, #0
	bl sub_0802E518
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802E4C0
sub_0802E4C0: @ 0x0802E4C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802E510
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	beq _0802E50A
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802E502
	adds r0, r4, #0
	adds r0, #0x76
	strb r2, [r0]
	adds r1, #2
	movs r0, #3
	strb r0, [r1]
_0802E502:
	adds r0, r4, #0
	bl sub_0802EBC4
	b _0802E510
_0802E50A:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0802E510:
	adds r0, r4, #0
	bl sub_0802E518
	pop {r4, pc}

	thumb_func_start sub_0802E518
sub_0802E518: @ 0x0802E518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	adds r0, #0x84
	ldr r0, [r0]
	mov sb, r0
	ldr r1, [r0, #0x3c]
	ldr r0, [r1, #0x50]
	bl sub_0806FA24
	mov r0, sb
	ldr r1, [r0, #0x3c]
	ldrb r0, [r0, #1]
	strb r0, [r1, #0x15]
	mov r1, sb
	ldrb r6, [r1, #1]
	cmp r6, #0x10
	bls _0802E54C
	movs r0, #0xf
	eors r6, r0
	adds r6, #1
	ands r6, r0
_0802E54C:
	cmp r6, #0x10
	bne _0802E552
	movs r6, #0xf
_0802E552:
	mov r2, sb
	ldr r1, [r2, #0x3c]
	movs r0, #0xf
	eors r6, r0
	adds r0, r6, #0
	adds r0, #0x12
	lsls r0, r0, #8
	strh r0, [r1, #0x24]
	ldr r0, [r2, #0x3c]
	bl sub_0806F69C
	movs r6, #0
	movs r0, #0x3c
	add r0, sb
	mov sl, r0
	mov r1, sb
	adds r1, #0x30
	str r1, [sp, #4]
	ldr r2, [sp]
	adds r2, #0x80
	str r2, [sp, #8]
	movs r7, #0x80
	lsls r7, r7, #1
_0802E580:
	lsls r0, r6, #2
	add r0, sl
	ldr r0, [r0]
	adds r1, r6, #1
	mov r8, r1
	lsls r4, r1, #2
	mov r2, sl
	adds r5, r2, r4
	ldr r1, [r5]
	bl sub_0806FA24
	add r4, sb
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #4
	ldr r1, _0802E644 @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #4]
	adds r6, r1, r6
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	adds r1, r0, #0
	ldrb r0, [r4, #1]
	lsls r0, r0, #4
	ldr r2, _0802E644 @ =gUnk_080C9160
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #4
	adds r0, #0x80
	ldr r1, _0802E644 @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
	mov r6, r8
	cmp r6, #4
	bls _0802E580
	mov r1, sb
	ldr r0, [r1, #0x50]
	ldrb r1, [r0, #0xe]
	adds r2, r0, #0
	cmp r1, #0x18
	bne _0802E662
	mov r1, sb
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #3
	lsls r7, r0, #2
	mov r0, sb
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xc
	bls _0802E648
	adds r7, #3
	b _0802E64C
	.align 2, 0
_0802E644: .4byte gUnk_080C9160
_0802E648:
	lsrs r0, r1, #0x1a
	adds r7, r7, r0
_0802E64C:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x18
	cmp r0, r1
	beq _0802E6E8
	adds r0, r2, #0
	bl sub_080042AC
	b _0802E6E8
_0802E662:
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802E688
	mov r0, sb
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0802E7CC
	mov r0, sb
	ldr r2, [r0, #0x50]
	ldrb r1, [r2, #0x14]
	lsrs r0, r1, #1
	adds r7, r1, r0
	lsrs r0, r7, #2
	ldrb r2, [r2, #0xe]
	adds r7, r0, r2
	b _0802E6CA
_0802E688:
	ldr r0, [sp]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0802E6C0
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r3, [r0]
	mov r1, sb
	ldrb r0, [r1, #0x15]
	lsrs r2, r0, #3
	adds r0, r2, #0
	adds r0, #0x2f
	cmp r3, r0
	bne _0802E6BA
	ldr r0, [sp]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	adds r7, r3, #0
	cmp r0, #0
	beq _0802E6CA
_0802E6BA:
	adds r7, r2, #0
	adds r7, #0x28
	b _0802E6CA
_0802E6C0:
	mov r2, sb
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x2f
_0802E6CA:
	mov r0, sb
	ldr r1, [r0, #0x50]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r7
	beq _0802E6E2
	adds r0, r1, #0
	adds r1, r7, #0
	bl sub_080042AC
	b _0802E6E8
_0802E6E2:
	adds r0, r1, #0
	bl sub_080042B8
_0802E6E8:
	movs r6, #0
_0802E6EA:
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802E72E
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	mov r0, sb
	movs r2, #0
	movs r3, #0
	bl sub_0802E7CC
	lsls r5, r6, #2
	mov r2, sl
	adds r0, r2, r5
	ldr r0, [r0]
	ldrb r1, [r0, #0x14]
	lsrs r0, r1, #1
	adds r7, r1, r0
	lsrs r7, r7, #2
	adds r4, r6, #1
	lsls r0, r4, #2
	add r0, sb
	ldrb r0, [r0, #0x19]
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r7, r7, r1
	adds r1, r5, #0
	b _0802E73E
_0802E72E:
	lsls r1, r6, #2
	mov r2, sb
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	lsrs r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x48
	adds r4, r6, #1
_0802E73E:
	mov r2, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r7
	beq _0802E756
	adds r0, r1, #0
	adds r1, r7, #0
	bl sub_08004260
_0802E756:
	adds r6, r4, #0
	cmp r6, #4
	bls _0802E6EA
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802E768
sub_0802E768: @ 0x0802E768
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r6, #0x1f
_0802E770:
	lsls r3, r2, #2
	adds r0, r4, r3
	ldrb r1, [r0, #1]
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r4, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r6
	adds r5, r2, #0
	cmp r0, #0x10
	ble _0802E790
	cmp r0, #0x1e
	bgt _0802E798
	adds r1, #1
	b _0802E796
_0802E790:
	cmp r0, #1
	ble _0802E798
	subs r1, #1
_0802E796:
	ands r1, r6
_0802E798:
	adds r0, r4, r3
	strb r1, [r0, #1]
	ldrb r1, [r0, #0x19]
	lsls r0, r5, #2
	adds r0, r4, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	movs r2, #0x1f
	ands r0, r2
	cmp r0, #0x10
	ble _0802E7B6
	cmp r0, #0x1d
	bgt _0802E7BE
	adds r1, #1
	b _0802E7BC
_0802E7B6:
	cmp r0, #2
	ble _0802E7BE
	subs r1, #1
_0802E7BC:
	ands r1, r2
_0802E7BE:
	adds r0, r4, r3
	strb r1, [r0, #0x19]
	adds r2, r5, #0
	cmp r2, #4
	bls _0802E770
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802E7CC
sub_0802E7CC: @ 0x0802E7CC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r0, #0
	adds r2, #0x3c
	adds r2, r2, r1
	ldr r3, [r2]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r3, #0x14]
	ldr r0, [r2]
	ldrb r0, [r0, #0x14]
	bx lr

	thumb_func_start sub_0802E7E4
sub_0802E7E4: @ 0x0802E7E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E8D0
	movs r6, #0
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r0, #0x30
	add r0, ip
	mov r8, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov sl, r1
	movs r2, #4
	rsbs r2, r2, #0
	mov sb, r2
_0802E818:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r6, #1
	mov r1, r8
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E852
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E860
_0802E852:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E860:
	adds r5, #1
	cmp r5, #5
	bls _0802E818
	movs r5, #0
	movs r2, #7
	mov sb, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
_0802E872:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bhi _0802E8BA
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E8BA:
	cmp r5, #4
	bls _0802E872
	mov r1, ip
	ldr r0, [r1, #0x38]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	b _0802E9A4
_0802E8D0:
	movs r6, #5
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r2, #0x30
	add r2, ip
	mov r8, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov sl, r0
	movs r1, #4
	rsbs r1, r1, #0
	mov sb, r1
_0802E8EA:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	subs r6, #1
	mov r2, r8
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E924
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E932
_0802E924:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E932:
	adds r5, #1
	cmp r5, #5
	bls _0802E8EA
	movs r5, #0
	movs r0, #7
	mov sb, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov r8, r1
_0802E944:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bls _0802E98C
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E98C:
	cmp r5, #4
	bls _0802E944
	mov r1, ip
	ldr r2, [r1, #0x38]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
_0802E9A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802E9B0
sub_0802E9B0: @ 0x0802E9B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802E9D0 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_080041DC
	lsrs r2, r0, #4
	cmp r2, #0x5f
	bgt _0802E9D4
	movs r2, #0xa
	b _0802E9EA
	.align 2, 0
_0802E9D0: .4byte gLinkEntity
_0802E9D4:
	adds r1, r2, #0
	subs r1, #0x60
	cmp r1, #0
	bge _0802E9DE
	adds r1, #3
_0802E9DE:
	asrs r1, r1, #2
	movs r0, #0xa
	subs r2, r0, r1
	cmp r2, #3
	bgt _0802E9EA
	movs r2, #4
_0802E9EA:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r2, r0
	beq _0802EA10
	cmp r2, r0
	ble _0802EA04
	ldrh r0, [r3, #0x2c]
	adds r0, #0x20
	b _0802EA08
_0802EA04:
	ldrh r0, [r3, #0x2c]
	subs r0, #0x20
_0802EA08:
	ldr r2, _0802EA14 @ =0x00001FFF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3, #0x2c]
_0802EA10:
	pop {r4, pc}
	.align 2, 0
_0802EA14: .4byte 0x00001FFF

	thumb_func_start sub_0802EA18
sub_0802EA18: @ 0x0802EA18
	push {lr}
	adds r3, r2, #0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	subs r1, r1, r0
	ldr r0, _0802EA40 @ =0x00001FFF
	ands r1, r0
	lsls r3, r3, #8
	subs r2, r2, r3
	cmp r1, r2
	blo _0802EA44
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r3, r2
	cmp r1, r0
	bhi _0802EA44
	movs r0, #0
	b _0802EA46
	.align 2, 0
_0802EA40: .4byte 0x00001FFF
_0802EA44:
	movs r0, #1
_0802EA46:
	pop {pc}

	thumb_func_start sub_0802EA48
sub_0802EA48: @ 0x0802EA48
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	bne _0802EA52
	rsbs r2, r2, #0
_0802EA52:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r1, r1, r2
	ldr r3, _0802EA64 @ =0x00001FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0802EA64: .4byte 0x00001FFF

	thumb_func_start sub_0802EA68
sub_0802EA68: @ 0x0802EA68
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #2
	bne _0802EA72
	rsbs r2, r2, #0
_0802EA72:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r1, [r0, #0x18]
	adds r1, r1, r2
	ldr r3, _0802EA84 @ =0x00001FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0, #0x18]
	pop {r4, pc}
	.align 2, 0
_0802EA84: .4byte 0x00001FFF

	thumb_func_start sub_0802EA88
sub_0802EA88: @ 0x0802EA88
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
_0802EA90:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #1]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _0802EAC2
	movs r6, #1
	ldrb r0, [r1, #1]
	ldrb r1, [r4, #1]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x10
	ble _0802EAB6
	movs r3, #0
_0802EAB6:
	adds r0, r5, #0
	adds r1, r2, #0
	movs r2, #0x20
	bl sub_0802EA48
	b _0802EAC8
_0802EAC2:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EA90
_0802EAC8:
	movs r3, #0
	movs r4, #0x1f
_0802EACC:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #1]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EAEE
	cmp r0, #0x1e
	bgt _0802EAF6
	adds r3, #1
	b _0802EAF4
_0802EAEE:
	cmp r0, #1
	ble _0802EAF6
	subs r3, #1
_0802EAF4:
	ands r3, r4
_0802EAF6:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #1]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EACC
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802EB08
sub_0802EB08: @ 0x0802EB08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0
	mov r8, r0
	movs r3, #0
_0802EB1A:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #0x19]
	ldrb r3, [r1, #0x19]
	cmp r0, r3
	beq _0802EB4E
	movs r0, #1
	mov r8, r0
	ldrb r0, [r1, #0x19]
	ldrb r1, [r4, #0x19]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #2
	cmp r0, #0x10
	ble _0802EB42
	movs r3, #3
_0802EB42:
	adds r0, r5, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl sub_0802EA68
	b _0802EB54
_0802EB4E:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EB1A
_0802EB54:
	movs r3, #0
	movs r4, #0x1f
	rsbs r6, r7, #0
	ands r6, r4
_0802EB5C:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #0x19]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EB7E
	cmp r6, r0
	ble _0802EB86
	adds r3, #1
	b _0802EB84
_0802EB7E:
	cmp r7, r0
	bge _0802EB86
	subs r3, #1
_0802EB84:
	ands r3, r4
_0802EB86:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #0x19]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EB5C
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802EB9C
sub_0802EB9C: @ 0x0802EB9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802EBBC @ =gUnk_080CD850
	bl sub_080028F4
	ldr r1, _0802EBC0 @ =gUnk_080CD854
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	adds r4, #0x75
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0802EBBC: .4byte gUnk_080CD850
_0802EBC0: .4byte gUnk_080CD854

	thumb_func_start sub_0802EBC4
sub_0802EBC4: @ 0x0802EBC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r6, r0, #0
	cmp r6, #0
	bne _0802EC66
	ldr r1, _0802EC18 @ =gUnk_080CD86C
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080028F4
	ldr r2, _0802EC1C @ =gUnk_080CD878
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x75
	ldrb r0, [r1]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _0802EC60
	strb r6, [r2]
	ldrb r1, [r5]
	cmp r1, #0
	bne _0802EC20
	adds r0, r4, #0
	adds r0, #0x76
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #3
	strb r0, [r1]
	b _0802EC56
	.align 2, 0
_0802EC18: .4byte gUnk_080CD86C
_0802EC1C: .4byte gUnk_080CD878
_0802EC20:
	bl sub_08000E50
	adds r1, r0, #0
	movs r5, #1
	ands r1, r5
	adds r3, r4, #0
	adds r3, #0x76
	ldrb r0, [r3]
	cmp r1, r0
	beq _0802EC3E
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x77
	strb r5, [r0]
	b _0802EC56
_0802EC3E:
	adds r2, r4, #0
	adds r2, #0x77
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802EC54
	eors r1, r5
	strb r5, [r2]
_0802EC54:
	strb r1, [r3]
_0802EC56:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	b _0802EC6A
_0802EC60:
	movs r0, #2
	strb r0, [r4, #0xd]
	b _0802EC6A
_0802EC66:
	subs r0, #1
	strb r0, [r1]
_0802EC6A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802EC6C
sub_0802EC6C: @ 0x0802EC6C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802EC94 @ =gUnk_080CDE34
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802EC94: .4byte gUnk_080CDE34

	thumb_func_start sub_0802EC98
sub_0802EC98: @ 0x0802EC98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802ECBC @ =gUnk_080CDE4C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _0802ECB8
	adds r0, r4, #0
	bl sub_0802EF90
_0802ECB8:
	pop {r4, pc}
	.align 2, 0
_0802ECBC: .4byte gUnk_080CDE4C

	thumb_func_start sub_0802ECC0
sub_0802ECC0: @ 0x0802ECC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802ED2A
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	ldr r3, _0802ED00 @ =gUnk_030010A0
	cmp r1, #0
	bne _0802ECEE
	adds r2, r3, #0
	adds r2, #0x39
	adds r0, r3, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #2
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0802ECEE:
	ldr r0, _0802ED04 @ =gUnk_03000BF0
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0802ED08
	ldrb r1, [r5]
	adds r0, r3, #0
	adds r0, #0x3a
	b _0802ED0E
	.align 2, 0
_0802ED00: .4byte gUnk_030010A0
_0802ED04: .4byte gUnk_03000BF0
_0802ED08:
	ldrb r1, [r5]
	adds r0, r3, #0
	adds r0, #0x3b
_0802ED0E:
	strb r1, [r0]
	adds r6, r4, #0
	adds r6, #0x79
	ldrb r0, [r6]
	ldrb r1, [r5]
	cmp r0, r1
	beq _0802ED24
	movs r0, #0xbd
	lsls r0, r0, #1
	bl sub_08004488
_0802ED24:
	ldrb r0, [r5]
	strb r0, [r6]
	b _0802ED52
_0802ED2A:
	cmp r0, #1
	bne _0802ED52
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0802ED3E
	rsbs r0, r0, #0
	strb r0, [r1]
_0802ED3E:
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0802ED4E
	movs r0, #0xe5
	bl sub_08004488
_0802ED4E:
	movs r0, #0xff
	strb r0, [r5]
_0802ED52:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ED64
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802ED64:
	ldr r1, _0802ED70 @ =gUnk_080CDE34
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802ED70: .4byte gUnk_080CDE34

	thumb_func_start sub_0802ED74
sub_0802ED74: @ 0x0802ED74
	push {lr}
	ldr r2, _0802ED88 @ =gUnk_080CDE5C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802ED88: .4byte gUnk_080CDE5C

	thumb_func_start sub_0802ED8C
sub_0802ED8C: @ 0x0802ED8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802EDD0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _0802EE0A
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0802EE0A
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x34
	strb r0, [r1, #9]
	str r4, [r1, #0x14]
	adds r0, r1, #0
	movs r1, #8
	bl sub_0805EA2C
	movs r0, #0x25
	movs r1, #2
	bl sub_0804AA60
	str r4, [r0, #0x50]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0802EDD4 @ =gUnk_03000BF0
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0802EDDC
	ldr r0, _0802EDD8 @ =gUnk_030010A0
	adds r0, #0x3a
	b _0802EDE0
	.align 2, 0
_0802EDD0: .4byte gUnk_03003DBC
_0802EDD4: .4byte gUnk_03000BF0
_0802EDD8: .4byte gUnk_030010A0
_0802EDDC:
	ldr r0, _0802EE0C @ =gUnk_030010A0
	adds r0, #0x3b
_0802EDE0:
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r1, #0x34
	strb r0, [r1]
	bl sub_08000E50
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802EFB8
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0802EF58
_0802EE0A:
	pop {r4, pc}
	.align 2, 0
_0802EE0C: .4byte gUnk_030010A0

	thumb_func_start sub_0802EE10
sub_0802EE10: @ 0x0802EE10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802F04C
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0802EE20
sub_0802EE20: @ 0x0802EE20
	push {lr}
	ldr r2, _0802EE34 @ =gUnk_080CDE64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802EE34: .4byte gUnk_080CDE64

	thumb_func_start sub_0802EE38
sub_0802EE38: @ 0x0802EE38
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802EE84 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _0802EE82
	movs r0, #0x25
	movs r1, #3
	bl sub_0804AA60
	str r5, [r0, #0x50]
	movs r0, #1
	strb r0, [r5, #0xc]
	bl sub_08000E50
	adds r4, r0, #0
	movs r1, #3
	ands r0, r1
	adds r0, #1
	strb r0, [r5, #0xe]
	bl sub_08000E50
	lsrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x78
	strb r0, [r1]
	ldr r1, _0802EE88 @ =gUnk_080CDE6C
	lsrs r4, r4, #0x10
	movs r0, #3
	ands r4, r0
	adds r4, r4, r1
	ldrb r0, [r4]
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08004260
_0802EE82:
	pop {r4, r5, pc}
	.align 2, 0
_0802EE84: .4byte gUnk_03003DBC
_0802EE88: .4byte gUnk_080CDE6C

	thumb_func_start sub_0802EE8C
sub_0802EE8C: @ 0x0802EE8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0802EEA8
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x45
	strb r2, [r0]
	b _0802EEB4
_0802EEA8:
	adds r0, r4, #0
	bl sub_0802F04C
	adds r0, r4, #0
	bl sub_08004274
_0802EEB4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802EEB8
sub_0802EEB8: @ 0x0802EEB8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802EEC8
	bl sub_0805E780
_0802EEC8:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0802EED6
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x14]
_0802EED6:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	ldr r1, _0802EF14 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #1
	movs r1, #0x1e
	ands r0, r1
	ldr r1, _0802EF18 @ =gUnk_080CDE70
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r1, [r4, #0x1e]
	cmp r2, r1
	beq _0802EF00
	ldrb r0, [r0, #1]
	cmp r0, r1
	beq _0802EF00
	strb r2, [r4, #0x1e]
_0802EF00:
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0802EF14: .4byte gLinkEntity
_0802EF18: .4byte gUnk_080CDE70

	thumb_func_start sub_0802EF1C
sub_0802EF1C: @ 0x0802EF1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802EF2C
	bl sub_0805E780
_0802EF2C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0802EF4A
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x11
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x19
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
_0802EF4A:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	movs r0, #0
	strh r0, [r4, #0x36]
	pop {r4, pc}

	thumb_func_start sub_0802EF58
sub_0802EF58: @ 0x0802EF58
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_0802EF5E:
	movs r0, #0x25
	movs r1, #1
	bl sub_0804AA60
	adds r4, r0, #0
	cmp r4, #0
	beq _0802EF86
	strb r5, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	str r6, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
_0802EF86:
	adds r5, #1
	cmp r5, #6
	bls _0802EF5E
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802EF90
sub_0802EF90: @ 0x0802EF90
	push {r4, lr}
	ldr r4, _0802EFB4 @ =gUnk_080CDE90
	adds r3, r0, #0
	adds r3, #0x78
	ldrb r1, [r3]
	adds r2, r1, #1
	strb r2, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #7
	ands r1, r2
	adds r1, r1, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x36]
	pop {r4, pc}
	.align 2, 0
_0802EFB4: .4byte gUnk_080CDE90

	thumb_func_start sub_0802EFB8
sub_0802EFB8: @ 0x0802EFB8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r6, r0, #0
	lsrs r0, r6, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802EFD2
	movs r5, #0x18
	ands r5, r6
	b _0802EFE0
_0802EFD2:
	ldr r0, _0802F01C @ =gLinkEntity
	adds r1, r4, #0
	bl sub_080045C4
	adds r5, r0, #4
	movs r0, #0x18
	ands r5, r0
_0802EFE0:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0802F020 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r7, #0x32
	ldrsh r1, [r4, r7]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r2, _0802F024 @ =gUnk_080B4488
	lsrs r1, r5, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	beq _0802F028
	movs r0, #0xff
	strb r0, [r4, #0x15]
	b _0802F044
	.align 2, 0
_0802F01C: .4byte gLinkEntity
_0802F020: .4byte gUnk_03000BF0
_0802F024: .4byte gUnk_080B4488
_0802F028:
	movs r1, #3
	adds r0, r6, #0
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	strb r5, [r4, #0x15]
	ldr r2, _0802F048 @ =gUnk_080CDE98
	lsrs r0, r6, #0x18
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
_0802F044:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802F048: .4byte gUnk_080CDE98

	thumb_func_start sub_0802F04C
sub_0802F04C: @ 0x0802F04C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r1, #0x32
	ldrsh r6, [r4, r1]
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0802F06A
	adds r0, r4, #0
	bl sub_0802EFB8
	b _0802F112
_0802F06A:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _0802F098
	cmp r0, #1
	bgt _0802F07C
	cmp r0, #0
	beq _0802F082
	b _0802F0DC
_0802F07C:
	cmp r0, #2
	beq _0802F0AE
	b _0802F0DC
_0802F082:
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #8
	ble _0802F102
	ldrh r1, [r4, #0x32]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	bgt _0802F102
	b _0802F0C2
_0802F098:
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #7
	bgt _0802F102
	ldrh r1, [r4, #0x2e]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #7
	ble _0802F102
	b _0802F0F0
_0802F0AE:
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #7
	bgt _0802F102
	ldrh r1, [r4, #0x32]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #7
	ble _0802F102
_0802F0C2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, _0802F0D8 @ =0x0000FFF0
	ands r0, r1
	adds r6, r0, #0
	adds r6, #8
	b _0802F102
	.align 2, 0
_0802F0D8: .4byte 0x0000FFF0
_0802F0DC:
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #8
	ble _0802F102
	ldrh r1, [r4, #0x2e]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	bgt _0802F102
_0802F0F0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r1, _0802F114 @ =0x0000FFF0
	ands r0, r1
	adds r5, r0, #0
	adds r5, #8
_0802F102:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0802F112
	strh r5, [r4, #0x2e]
	strh r6, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0802EFB8
_0802F112:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802F114: .4byte 0x0000FFF0

	thumb_func_start sub_0802F118
sub_0802F118: @ 0x0802F118
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802F134 @ =gUnk_080CDED0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0802F134: .4byte gUnk_080CDED0

	thumb_func_start sub_0802F138
sub_0802F138: @ 0x0802F138
	push {lr}
	ldr r2, _0802F14C @ =gUnk_080CDEE8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802F14C: .4byte gUnk_080CDEE8

	thumb_func_start sub_0802F150
sub_0802F150: @ 0x0802F150
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F164
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802F164:
	ldr r1, _0802F18C @ =gUnk_080CDED0
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F1E8
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x14
	beq _0802F196
	cmp r0, #0x14
	bgt _0802F190
	cmp r0, #0xe
	beq _0802F1E0
	b _0802F1E8
	.align 2, 0
_0802F18C: .4byte gUnk_080CDED0
_0802F190:
	cmp r0, #0x15
	beq _0802F1E0
	b _0802F1E8
_0802F196:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802F1A8
	movs r0, #0xc0
	b _0802F1B6
_0802F1A8:
	bl sub_08000E50
	ldr r2, _0802F1DC @ =gUnk_080CDEF8
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
_0802F1B6:
	strb r0, [r4, #0xe]
	movs r1, #0
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0802F1CE
	ldr r0, [r4, #0x20]
	asrs r0, r0, #2
_0802F1CE:
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0802F1E8
	.align 2, 0
_0802F1DC: .4byte gUnk_080CDEF8
_0802F1E0:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_0802F1E8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_16
nullsub_16: @ 0x0802F1EC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802F1F0
sub_0802F1F0: @ 0x0802F1F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001242
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0802F20C
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08003FC4
_0802F20C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802F210
sub_0802F210: @ 0x0802F210
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	bl sub_08000E50
	ldr r2, _0802F280 @ =gUnk_080CDEF8
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5, #0xe]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	ldrb r1, [r5, #0xe]
	adds r0, r0, r1
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x7c
	strb r4, [r0]
	ldrb r0, [r5, #0xa]
	movs r2, #0xa0
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0
	bne _0802F258
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r1, r0, #0
_0802F258:
	adds r0, r5, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrb r0, [r5, #0xa]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0
	bne _0802F270
	movs r0, #0xa0
	lsls r0, r0, #6
	adds r1, r0, #0
_0802F270:
	adds r0, r5, #0
	adds r0, #0x82
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0
_0802F280: .4byte gUnk_080CDEF8

	thumb_func_start sub_0802F284
sub_0802F284: @ 0x0802F284
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0x60
	bls _0802F298
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004276
	b _0802F29E
_0802F298:
	adds r0, r4, #0
	bl sub_08004274
_0802F29E:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802F2AA
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802F2FE
_0802F2AA:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802F2E4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F2FE
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #4
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_0802F45C
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0802F2FE
_0802F2E4:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F2FE
	movs r0, #0x40
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0802F2FE:
	pop {r4, pc}

	thumb_func_start sub_0802F300
sub_0802F300: @ 0x0802F300
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AEF88
	movs r0, #0x36
	ldrsh r6, [r4, r0]
	bl sub_08000E50
	adds r5, r0, #0
	movs r0, #0xf
	ands r5, r0
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802F364
	movs r0, #0
	movs r2, #3
	strb r2, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802F33C
	movs r5, #0
_0802F33C:
	cmp r5, #0
	bne _0802F344
	movs r0, #0xc0
	b _0802F350
_0802F344:
	ldr r0, _0802F360 @ =gUnk_080CDEF8
	adds r1, r5, #0
	ands r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r5
_0802F350:
	strb r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	b _0802F3F0
	.align 2, 0
_0802F360: .4byte gUnk_080CDEF8
_0802F364:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802F374
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	b _0802F38C
_0802F374:
	adds r0, r4, #0
	bl sub_080002B8
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x50
	bne _0802F38C
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_0802F38C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F3AC
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802F3AC
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F45C
_0802F3AC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0802F3C6
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r6, r0
	bge _0802F3C6
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	movs r0, #1
	strb r0, [r4, #0xd]
_0802F3C6:
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r6, r0
	bge _0802F3DA
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	b _0802F3E4
_0802F3DA:
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
_0802F3E4:
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
_0802F3F0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802F3F4
sub_0802F3F4: @ 0x0802F3F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F45A
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #1
	bhi _0802F44C
	ldrb r0, [r4, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F44C
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #4
	str r0, [r4, #0x20]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0802F45C
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0802F45A
_0802F44C:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_08004260
_0802F45A:
	pop {r4, pc}

	thumb_func_start sub_0802F45C
sub_0802F45C: @ 0x0802F45C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802F472
	adds r0, r4, #0
	bl sub_08049EE4
	strb r0, [r4, #0x15]
	b _0802F49E
_0802F472:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802F48A
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _0802F49E
_0802F48A:
	bl sub_08000E50
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x18
	ldrb r0, [r4, #0x15]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_0802F49E:
	pop {r4, pc}

	thumb_func_start sub_0802F4A0
sub_0802F4A0: @ 0x0802F4A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802F4C8 @ =gUnk_080CDF50
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802F4C8: .4byte gUnk_080CDF50

	thumb_func_start sub_0802F4CC
sub_0802F4CC: @ 0x0802F4CC
	push {lr}
	ldr r2, _0802F4E0 @ =gUnk_080CDF68
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802F4E0: .4byte gUnk_080CDF68

	thumb_func_start sub_0802F4E4
sub_0802F4E4: @ 0x0802F4E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F4F8
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802F4F8:
	ldr r1, _0802F558 @ =gUnk_080CDF50
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	bne _0802F536
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl sub_080A2960
	adds r2, r0, #0
	cmp r2, #0
	beq _0802F536
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r2, #0x50]
_0802F536:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F556
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_0802F556:
	pop {r4, pc}
	.align 2, 0
_0802F558: .4byte gUnk_080CDF50

	thumb_func_start sub_0802F55C
sub_0802F55C: @ 0x0802F55C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802F594
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r2, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	ldrb r0, [r4, #0xe]
	bl sub_0804B128
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0802FA48
	adds r0, r4, #0
	bl sub_0802FA88
	b _0802F5B8
_0802F594:
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F888
_0802F5B8:
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0802F5D0
	str r1, [r4, #0x50]
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
_0802F5D0:
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0802F5DC
sub_0802F5DC: @ 0x0802F5DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r3, [r2]
	cmp r3, #1
	beq _0802F62A
	cmp r3, #1
	bgt _0802F5F4
	cmp r3, #0
	beq _0802F60A
	b _0802F660
_0802F5F4:
	cmp r3, #0xff
	bne _0802F660
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802F660
	strb r0, [r2]
	b _0802F660
_0802F60A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F660
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x10
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _0802F660
_0802F62A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802F660
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r2]
	movs r0, #0x28
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #3
	ldr r2, [r5, #0x50]
	movs r4, #1
	strb r3, [r2, #0xe]
	ldrb r3, [r2, #0x18]
	subs r0, #0x2c
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #0x18]
	movs r0, #4
	orrs r1, r0
	adds r0, r5, #0
	bl sub_08004260
_0802F660:
	adds r0, r5, #0
	bl sub_0802F9C8
	pop {r4, r5, pc}

	thumb_func_start sub_0802F668
sub_0802F668: @ 0x0802F668
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802F6F0
	cmp r0, #1
	bgt _0802F680
	cmp r0, #0
	beq _0802F68A
	b _0802F7A2
_0802F680:
	cmp r0, #2
	beq _0802F742
	cmp r0, #3
	beq _0802F76C
	b _0802F7A2
_0802F68A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802F69E
	cmp r1, #8
	beq _0802F6B6
	b _0802F7A2
_0802F69E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x38
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x50]
	ldrb r1, [r2, #0x18]
	subs r0, #0x3c
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0802F7A2
_0802F6B6:
	ldr r1, _0802F6EC @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_080041A0
	cmp r0, #0
	beq _0802F7A2
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _0802F7A2
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0802F7A2
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	b _0802F7A2
	.align 2, 0
_0802F6EC: .4byte gLinkEntity
_0802F6F0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0802F7A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
	b _0802F7A2
_0802F742:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F7A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0802F7A2
_0802F76C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802F7A2
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	bl sub_0802F8E4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
_0802F7A2:
	adds r0, r4, #0
	bl sub_0802F9C8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802F7AC
sub_0802F7AC: @ 0x0802F7AC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0802FA88
	adds r0, r4, #0
	bl sub_0802F9C8
	ldr r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F86E
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	cmp r1, #1
	beq _0802F7EA
	cmp r1, #1
	bgt _0802F7DA
	cmp r1, #0
	beq _0802F7E0
	b _0802F884
_0802F7DA:
	cmp r1, #2
	beq _0802F818
	b _0802F884
_0802F7E0:
	movs r0, #1
	strb r0, [r2]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	b _0802F884
_0802F7EA:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F884
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	movs r2, #1
	strb r1, [r5, #0xe]
	ldrb r1, [r5, #0x18]
	subs r0, #0x2c
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	movs r0, #4
	orrs r1, r0
	b _0802F844
_0802F818:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802F84C
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x30
	strb r0, [r4, #0xe]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
_0802F844:
	adds r0, r4, #0
	bl sub_08004260
	b _0802F884
_0802F84C:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0802F884
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	bl sub_0804A98C
	adds r5, r0, #0
	cmp r5, #0
	beq _0802F884
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _0802F884
_0802F86E:
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802F884
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r5, #0x18]
	subs r0, #4
	ands r0, r1
	strb r0, [r5, #0x18]
_0802F884:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802F888
sub_0802F888: @ 0x0802F888
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_08049F84
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802F8DC @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r4, #0
	adds r5, #0x84
	strh r1, [r5]
	ldrh r0, [r5]
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	bl sub_080001DA
	adds r4, #0x86
	strh r0, [r4]
	ldr r0, _0802F8E0 @ =0x00004071
	ldrh r1, [r5]
	ldrb r2, [r6]
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802F8DC: .4byte gUnk_03000BF0
_0802F8E0: .4byte 0x00004071

	thumb_func_start sub_0802F8E4
sub_0802F8E4: @ 0x0802F8E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _0802F9AE
	movs r0, #1
	str r0, [sp]
	adds r1, r7, #0
	adds r1, #0x70
	str r1, [sp, #0xc]
	adds r2, r7, #0
	adds r2, #0x6e
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x72
	str r0, [sp, #0x10]
	subs r1, #1
	str r1, [sp, #8]
	movs r2, #0x38
	adds r2, r2, r7
	mov r8, r2
	movs r0, #8
	mov sl, r0
	ldr r1, _0802F9BC @ =gUnk_03000BF0
	mov sb, r1
_0802F920:
	bl sub_08000E50
	adds r4, r0, #0
	ldr r2, [sp, #0xc]
	ldrh r5, [r2]
	ldr r1, _0802F9C0 @ =0x00007FF0
	ands r0, r1
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	lsls r1, r1, #3
	bl __modsi3
	adds r6, r5, r0
	mov r0, sl
	orrs r6, r0
	lsrs r4, r4, #0x10
	ldr r1, [sp, #0x10]
	ldrh r5, [r1]
	ldr r2, _0802F9C0 @ =0x00007FF0
	ands r4, r2
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r0, r4, #0
	bl __modsi3
	adds r5, r5, r0
	mov r1, sl
	orrs r5, r1
	mov r2, sb
	ldrh r0, [r2, #6]
	subs r0, r6, r0
	lsrs r4, r0, #4
	movs r1, #0x3f
	ands r4, r1
	ldrh r0, [r2, #8]
	subs r0, r5, r0
	lsrs r0, r0, #4
	ands r0, r1
	lsls r0, r0, #6
	orrs r4, r0
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002E0
	cmp r0, #0
	bne _0802F9A2
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r4, #0
	bl sub_080001DA
	ldr r1, _0802F9C4 @ =0x00004071
	cmp r0, r1
	beq _0802F9A2
	strh r6, [r7, #0x2e]
	strh r5, [r7, #0x32]
	adds r0, r7, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0802F9A2
	movs r0, #0
	str r0, [sp]
_0802F9A2:
	ldr r1, [sp]
	cmp r1, #0
	bne _0802F920
	adds r0, r7, #0
	bl sub_0802F888
_0802F9AE:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802F9BC: .4byte gUnk_03000BF0
_0802F9C0: .4byte 0x00007FF0
_0802F9C4: .4byte 0x00004071

	thumb_func_start sub_0802F9C8
sub_0802F9C8: @ 0x0802F9C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0802FA44
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r0, [r5]
	adds r6, r5, #0
	cmp r0, #0
	beq _0802FA20
	subs r0, #1
	strb r0, [r5]
	movs r1, #0xff
	ands r0, r1
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0802F9F8
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	b _0802FA02
_0802F9F8:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
_0802FA02:
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802FA3E
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802FA3E
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _0802FA3E
_0802FA20:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802FA3E
	adds r0, r4, #0
	bl sub_080AEF88
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802FA3E
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0x28
	strb r0, [r5]
_0802FA3E:
	adds r0, r4, #0
	bl sub_08004274
_0802FA44:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802FA48
sub_0802FA48: @ 0x0802FA48
	push {r4, lr}
	mov ip, r0
	ldr r4, [r0, #0x54]
	mov r2, ip
	adds r2, #0x80
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r3, r4, r0
	ldrh r1, [r3]
	ldr r0, _0802FA80 @ =0x0000FFFF
	cmp r1, r0
	bne _0802FA66
	movs r0, #0
	strb r0, [r2]
	adds r3, r4, #0
_0802FA66:
	ldr r2, _0802FA84 @ =gUnk_03000BF0
	ldrh r0, [r3]
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x78
	strh r0, [r1]
	ldrh r0, [r3, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, #2
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0802FA80: .4byte 0x0000FFFF
_0802FA84: .4byte gUnk_03000BF0

	thumb_func_start sub_0802FA88
sub_0802FA88: @ 0x0802FA88
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	adds r5, r4, #0
	adds r5, #0x78
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x7a
	ldrh r2, [r6]
	movs r3, #2
	bl sub_0806FCB8
	cmp r0, #0
	beq _0802FAF6
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802FA48
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5]
	ldrh r3, [r6]
	bl sub_080045D4
	adds r2, r0, #0
	strb r2, [r4, #0x15]
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _0802FAEA
	lsrs r1, r2, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r4, #0
	bl sub_08004260
	b _0802FAF2
_0802FAEA:
	lsrs r1, r2, #3
	adds r0, r4, #0
	bl sub_08004260
_0802FAF2:
	movs r7, #1
	b _0802FB2A
_0802FAF6:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5]
	ldrh r3, [r6]
	bl sub_080045D4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08004596
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r2, r0, #2
	ldrb r0, [r4, #0x14]
	cmp r2, r0
	beq _0802FB2A
	strb r2, [r4, #0x14]
	lsrs r1, r2, #1
	adds r0, r4, #0
	bl sub_08004260
_0802FB2A:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802FB30
sub_0802FB30: @ 0x0802FB30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802FB58 @ =gUnk_080CDFC4
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802FB58: .4byte gUnk_080CDFC4

	thumb_func_start sub_0802FB5C
sub_0802FB5C: @ 0x0802FB5C
	push {lr}
	ldr r2, _0802FB70 @ =gUnk_080CDFDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802FB70: .4byte gUnk_080CDFDC

	thumb_func_start sub_0802FB74
sub_0802FB74: @ 0x0802FB74
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FB88
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802FB88:
	ldr r1, _0802FBB4 @ =gUnk_080CDFC4
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FBB0
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_0802FBB0:
	pop {r4, pc}
	.align 2, 0
_0802FBB4: .4byte gUnk_080CDFC4

	thumb_func_start sub_0802FBB8
sub_0802FBB8: @ 0x0802FBB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F888
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0802FBF6
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
_0802FBF6:
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802FC04
sub_0802FC04: @ 0x0802FC04
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r3, [r2]
	cmp r3, #1
	beq _0802FC52
	cmp r3, #1
	bgt _0802FC1C
	cmp r3, #0
	beq _0802FC32
	b _0802FC88
_0802FC1C:
	cmp r3, #0xff
	bne _0802FC88
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802FC88
	strb r0, [r2]
	b _0802FC88
_0802FC32:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FC88
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xe
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _0802FC88
_0802FC52:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802FC88
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r2]
	movs r0, #0x20
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #3
	ldr r2, [r5, #0x54]
	movs r4, #1
	strb r3, [r2, #0xe]
	ldrb r3, [r2, #0x18]
	subs r0, #0x24
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #0x18]
	movs r0, #4
	orrs r1, r0
	adds r0, r5, #0
	bl sub_08004260
_0802FC88:
	adds r0, r5, #0
	bl sub_0802F9C8
	pop {r4, r5, pc}

	thumb_func_start sub_0802FC90
sub_0802FC90: @ 0x0802FC90
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802FD18
	cmp r0, #1
	bgt _0802FCA8
	cmp r0, #0
	beq _0802FCB2
	b _0802FDCA
_0802FCA8:
	cmp r0, #2
	beq _0802FD6A
	cmp r0, #3
	beq _0802FD94
	b _0802FDCA
_0802FCB2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802FCC6
	cmp r1, #6
	beq _0802FCDE
	b _0802FDCA
_0802FCC6:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x38
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #0x3c
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0802FDCA
_0802FCDE:
	ldr r1, _0802FD14 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_080041A0
	cmp r0, #0
	beq _0802FDCA
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _0802FDCA
	adds r0, r4, #0
	movs r1, #8
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0802FDCA
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	b _0802FDCA
	.align 2, 0
_0802FD14: .4byte gLinkEntity
_0802FD18:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0802FDCA
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
	b _0802FDCA
_0802FD6A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FDCA
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0802FDCA
_0802FD94:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802FDCA
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	bl sub_0802F8E4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
_0802FDCA:
	adds r0, r4, #0
	bl sub_0802F9C8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802FDD4
sub_0802FDD4: @ 0x0802FDD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802FDFC @ =gUnk_080CE074
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802FDFC: .4byte gUnk_080CE074

	thumb_func_start sub_0802FE00
sub_0802FE00: @ 0x0802FE00
	push {lr}
	ldr r2, _0802FE14 @ =gUnk_080CE08C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802FE14: .4byte gUnk_080CE08C

	thumb_func_start sub_0802FE18
sub_0802FE18: @ 0x0802FE18
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FE2C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802FE2C:
	ldr r1, _0802FE8C @ =gUnk_080CE074
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	bne _0802FE6A
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl sub_080A2960
	adds r2, r0, #0
	cmp r2, #0
	beq _0802FE6A
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r2, #0x50]
_0802FE6A:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FE8A
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_0802FE8A:
	pop {r4, pc}
	.align 2, 0
_0802FE8C: .4byte gUnk_080CE074

	thumb_func_start sub_0802FE90
sub_0802FE90: @ 0x0802FE90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F888
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0802FECE
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
_0802FECE:
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802FEDC
sub_0802FEDC: @ 0x0802FEDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r3, [r2]
	cmp r3, #1
	beq _0802FF2A
	cmp r3, #1
	bgt _0802FEF4
	cmp r3, #0
	beq _0802FF0A
	b _0802FF60
_0802FEF4:
	cmp r3, #0xff
	bne _0802FF60
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802FF60
	strb r0, [r2]
	b _0802FF60
_0802FF0A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FF60
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xc
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _0802FF60
_0802FF2A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802FF60
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r2]
	movs r0, #0x20
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #3
	ldr r2, [r5, #0x54]
	movs r4, #1
	strb r3, [r2, #0xe]
	ldrb r3, [r2, #0x18]
	subs r0, #0x24
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #0x18]
	movs r0, #4
	orrs r1, r0
	adds r0, r5, #0
	bl sub_08004260
_0802FF60:
	adds r0, r5, #0
	bl sub_0802F9C8
	pop {r4, r5, pc}

	thumb_func_start sub_0802FF68
sub_0802FF68: @ 0x0802FF68
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802FFF0
	cmp r0, #1
	bgt _0802FF80
	cmp r0, #0
	beq _0802FF8A
	b _080300A2
_0802FF80:
	cmp r0, #2
	beq _08030042
	cmp r0, #3
	beq _0803006C
	b _080300A2
_0802FF8A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802FF9E
	cmp r1, #0xa
	beq _0802FFB6
	b _080300A2
_0802FF9E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x38
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #0x3c
	ands r0, r1
	strb r0, [r2, #0x18]
	b _080300A2
_0802FFB6:
	ldr r1, _0802FFEC @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_080041A0
	cmp r0, #0
	beq _080300A2
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _080300A2
	adds r0, r4, #0
	movs r1, #9
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _080300A2
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	b _080300A2
	.align 2, 0
_0802FFEC: .4byte gLinkEntity
_0802FFF0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _080300A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
	b _080300A2
_08030042:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080300A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x18
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080300A2
_0803006C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080300A2
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	bl sub_0802F8E4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
_080300A2:
	adds r0, r4, #0
	bl sub_0802F9C8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080300AC
sub_080300AC: @ 0x080300AC
	push {r4, lr}
	ldr r4, _080300C0 @ =gUnk_0300110C
	adds r0, r4, #0
	movs r1, #0x44
	bl sub_0801D630
	adds r4, #0x42
	movs r0, #0xff
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080300C0: .4byte gUnk_0300110C

	thumb_func_start sub_080300C4
sub_080300C4: @ 0x080300C4
	push {lr}
	ldr r2, _080300E4 @ =gUnk_030010A0
	adds r0, r2, #0
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0xff
	bne _080300E2
	adds r0, r2, #0
	adds r0, #0xac
	movs r1, #0
	strh r1, [r0]
	subs r0, #0x40
	movs r1, #0x40
	bl sub_0801D630
_080300E2:
	pop {pc}
	.align 2, 0
_080300E4: .4byte gUnk_030010A0

	thumb_func_start sub_080300E8
sub_080300E8: @ 0x080300E8
	push {lr}
	ldr r1, _08030110 @ =gUnk_030010A0
	adds r3, r1, #0
	adds r3, #0xae
	ldrh r0, [r3]
	cmp r0, #0xff
	beq _0803010C
	lsls r0, r0, #2
	adds r1, #0x6c
	adds r0, r0, r1
	ldr r2, _08030114 @ =gLinkEntity
	ldrh r1, [r0]
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #2]
	adds r0, #0xc
	strh r0, [r2, #0x32]
	movs r0, #0xff
	strh r0, [r3]
_0803010C:
	pop {pc}
	.align 2, 0
_08030110: .4byte gUnk_030010A0
_08030114: .4byte gLinkEntity

	thumb_func_start sub_08030118
sub_08030118: @ 0x08030118
	push {lr}
	adds r2, r0, #0
	ldr r0, _0803013C @ =gUnk_030010A0
	adds r0, #0xac
	ldrh r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08030140
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x67
	bl sub_0807CC9C
	b _0803014C
	.align 2, 0
_0803013C: .4byte gUnk_030010A0
_08030140:
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x67
	bl sub_0807CD20
_0803014C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08030150
sub_08030150: @ 0x08030150
	push {r4, r5, lr}
	mov ip, r0
	ldr r2, _08030194 @ =gUnk_030010A0
	adds r5, r2, #0
	adds r5, #0xac
	mov r3, ip
	adds r3, #0x80
	ldrb r4, [r3]
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r5]
	bics r1, r0
	mov r0, ip
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r4
	orrs r1, r0
	strh r1, [r5]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, #0x6c
	adds r0, r0, r2
	mov r4, ip
	ldrh r1, [r4, #0x2e]
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r4, #0x32]
	strh r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08030194: .4byte gUnk_030010A0

	thumb_func_start sub_08030198
sub_08030198: @ 0x08030198
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080301B8 @ =gUnk_080CE124
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	adds r0, r4, #0
	bl sub_08030150
	pop {r4, pc}
	.align 2, 0
_080301B8: .4byte gUnk_080CE124

	thumb_func_start sub_080301BC
sub_080301BC: @ 0x080301BC
	push {lr}
	ldr r2, _080301D0 @ =gUnk_080CE13C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080301D0: .4byte gUnk_080CE13C

	thumb_func_start sub_080301D4
sub_080301D4: @ 0x080301D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _080301EE
	ldr r1, [r4, #0x4c]
	ldr r0, _08030238 @ =gLinkEntity
	cmp r1, r0
	bne _080301EE
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
_080301EE:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r5, r4, #0
	adds r5, #0x81
	cmp r1, #0
	beq _08030216
	ldrb r0, [r5]
	cmp r1, r0
	beq _08030216
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #6
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080309E8
_08030216:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030228
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08030228:
	ldrb r0, [r6]
	strb r0, [r5]
	ldr r1, _0803023C @ =gUnk_080CE124
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030238: .4byte gLinkEntity
_0803023C: .4byte gUnk_080CE124

	thumb_func_start sub_08030240
sub_08030240: @ 0x08030240
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	bne _08030260
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08030260
	adds r0, r4, #0
	bl sub_08004274
_08030260:
	adds r0, r4, #0
	bl sub_08001242
	pop {r4, pc}

	thumb_func_start nullsub_17
nullsub_17: @ 0x08030268
	bx lr
	.align 2, 0

	thumb_func_start sub_0803026C
sub_0803026C: @ 0x0803026C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xe]
	adds r3, r4, #0
	adds r3, #0x80
	strb r0, [r3]
	ldrb r2, [r3]
	lsls r0, r2, #2
	ldr r5, _080302A8 @ =gUnk_0300110C
	adds r0, r0, r5
	ldrh r1, [r0]
	cmp r1, #0
	beq _080302AC
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x84
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r0, [r0]
	ldrb r3, [r3]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	str r0, [r2]
	b _080302BA
	.align 2, 0
_080302A8: .4byte gUnk_0300110C
_080302AC:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, _08030304 @ =0x0000047D
	asrs r1, r2
	movs r2, #1
	ands r1, r2
	str r1, [r0]
_080302BA:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080302C6
	bl sub_0804B128
	str r0, [r4, #0x7c]
_080302C6:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x81
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08030580
	adds r0, r4, #0
	bl sub_080307EC
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	bne _08030302
	ldr r0, _08030308 @ =gUnk_03000BF0
	ldrh r0, [r0, #8]
	adds r0, #0x80
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08030302
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl sub_080309C8
_08030302:
	pop {r4, r5, pc}
	.align 2, 0
_08030304: .4byte 0x0000047D
_08030308: .4byte gUnk_03000BF0

	thumb_func_start sub_0803030C
sub_0803030C: @ 0x0803030C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0803086C
	adds r5, r0, #0
	cmp r5, #0
	bne _08030334
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _08030334
	adds r0, r4, #0
	bl sub_08030650
	cmp r0, #0
	beq _08030334
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xd]
_08030334:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08030338
sub_08030338: @ 0x08030338
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803034C
	adds r0, r4, #0
	bl sub_080309A8
	b _08030368
_0803034C:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004276
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _08030368
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x25
	bne _08030368
	movs r0, #0x19
	strb r0, [r4, #0x1e]
_08030368:
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	adds r1, r2, #0
	cmp r1, #1
	bne _0803039C
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0803037C
	strb r1, [r4, #0xd]
_0803037C:
	ldrb r0, [r4, #0xe]
	adds r2, r0, #1
	strb r2, [r4, #0xe]
	ands r1, r2
	cmp r1, #0
	beq _0803042C
	ldr r1, _08030398 @ =gUnk_080CE160
	movs r0, #6
	ands r2, r0
	lsrs r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08030426
	.align 2, 0
_08030398: .4byte gUnk_080CE160
_0803039C:
	cmp r1, #2
	bne _080303D4
	movs r0, #0
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _080303C0
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #0xb
	strb r0, [r1]
	adds r1, #4
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080303D0 @ =gUnk_080FD2F0
	str r0, [r4, #0x48]
_080303C0:
	adds r0, r4, #0
	bl sub_08030834
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_08004488
	b _0803042C
	.align 2, 0
_080303D0: .4byte gUnk_080FD2F0
_080303D4:
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08030426
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _08030412
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x7a
	movs r1, #0
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080306C4
	adds r0, r4, #0
	bl sub_080309E8
	b _0803042C
_08030412:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1a
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	b _0803042C
_08030426:
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
_0803042C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030430
sub_08030430: @ 0x08030430
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08030A04
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0803044A
	adds r0, r4, #0
	bl sub_08004274
_0803044A:
	adds r0, r4, #0
	bl sub_080309A8
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803045E
	subs r0, #1
	strh r0, [r1]
_0803045E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030470
	adds r0, r4, #0
	bl sub_080306C4
_08030470:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030474
sub_08030474: @ 0x08030474
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803049C
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080309E8
	b _080304BA
_0803049C:
	adds r0, r4, #0
	bl sub_080305BC
	cmp r0, #0
	beq _080304AE
	adds r0, r4, #0
	bl sub_08030590
	b _080304BA
_080304AE:
	adds r0, r4, #0
	bl sub_080307D4
	adds r0, r4, #0
	bl sub_080309A8
_080304BA:
	pop {r4, pc}

	thumb_func_start sub_080304BC
sub_080304BC: @ 0x080304BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080309A8
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080304DE
	adds r0, r4, #0
	bl sub_08030580
	b _080304F0
_080304DE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080304F0
	strb r2, [r3]
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_08004488
_080304F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080304F4
sub_080304F4: @ 0x080304F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080309A8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030520
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #5
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080307EC
_08030520:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030524
sub_08030524: @ 0x08030524
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803053E
	adds r0, r2, #0
	bl sub_080309A8
	b _08030552
_0803053E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08030552
	movs r0, #0
	strb r0, [r3]
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_08004488
_08030552:
	pop {pc}

	thumb_func_start sub_08030554
sub_08030554: @ 0x08030554
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080309A8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803057C
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080306C4
_0803057C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030580
sub_08030580: @ 0x08030580
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #4
	bl sub_080309C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08030590
sub_08030590: @ 0x08030590
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #1
	strb r0, [r1]
	adds r1, #4
	strb r0, [r1]
	ldr r0, _080305B8 @ =gUnk_080FD2F8
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #5
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080307EC
	pop {r4, pc}
	.align 2, 0
_080305B8: .4byte gUnk_080FD2F8

	thumb_func_start sub_080305BC
sub_080305BC: @ 0x080305BC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2e]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0
	cmp r0, #8
	bne _080305D0
	movs r3, #1
_080305D0:
	ldrh r0, [r4, #0x32]
	ands r2, r0
	cmp r2, #8
	bne _080305DC
	movs r0, #2
	orrs r3, r0
_080305DC:
	cmp r3, #3
	bne _080305E4
	movs r0, #1
	b _0803064C
_080305E4:
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803061E
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _08030608
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803064A
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	b _08030648
_08030608:
	cmp r2, #8
	ble _08030610
	movs r0, #0x10
	b _08030612
_08030610:
	movs r0, #0
_08030612:
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803064A
_0803061E:
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	bne _08030638
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803064A
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	b _08030648
_08030638:
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	ble _08030646
	movs r0, #8
	b _08030648
_08030646:
	movs r0, #0x18
_08030648:
	strb r0, [r4, #0x15]
_0803064A:
	movs r0, #0
_0803064C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030650
sub_08030650: @ 0x08030650
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08030668
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080306B6
_08030664:
	movs r0, #1
	b _080306B8
_08030668:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _08030698
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080306B6
	ldr r0, _08030694 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r0, #0x10
	cmp r0, #0x20
	bhi _080306B6
	b _08030664
	.align 2, 0
_08030694: .4byte gUnk_020000B0
_08030698:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080306B6
	ldr r0, _080306BC @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r0, _080306C0 @ =gUnk_03000BF0
	ldrh r0, [r0, #6]
	adds r0, #0xa8
	cmp r1, r0
	blt _08030664
_080306B6:
	movs r0, #0
_080306B8:
	pop {r4, pc}
	.align 2, 0
_080306BC: .4byte gUnk_020000B0
_080306C0: .4byte gUnk_03000BF0

	thumb_func_start sub_080306C4
sub_080306C4: @ 0x080306C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080307C0
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	beq _080307C0
	movs r0, #0x18
	strb r0, [r4, #0xe]
	ldr r0, _080307B0 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r5, r0, #0
	cmp r5, #0xff
	beq _080307CC
	movs r0, #0
	mov r8, r0
	bl sub_08000E50
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _0803070E
	ldrb r0, [r4, #0x14]
	adds r6, r4, #0
	adds r6, #0x82
	cmp r0, #0xff
	bne _0803072A
_0803070E:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #3
	beq _0803072A
	adds r0, r5, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r1, #1
	mov r8, r1
_0803072A:
	mov r7, r8
	cmp r7, #0
	bne _08030746
	bl sub_08000E50
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #3
	adds r1, #4
	adds r1, r5, r1
	movs r0, #0x18
	ands r1, r0
	strb r1, [r4, #0x15]
_08030746:
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r1, _080307B4 @ =gUnk_02027EB4
	mov ip, r1
	cmp r0, #2
	bne _08030758
	ldr r7, _080307B8 @ =gUnk_0200D654
	mov ip, r7
_08030758:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r3, _080307BC @ =gUnk_080CE164
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	adds r2, r0, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r7, #0x32
	ldrsh r2, [r4, r7]
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, ip
	movs r3, #0
	bl sub_080AE4CC
	cmp r0, #0
	beq _0803079E
	movs r0, #4
	adds r1, r5, #0
	ands r1, r0
	eors r1, r0
	lsls r1, r1, #1
	movs r0, #0x10
	ands r5, r0
	orrs r1, r5
	strb r1, [r4, #0x15]
	movs r0, #0
	mov r8, r0
_0803079E:
	adds r0, r4, #0
	bl sub_080307D4
	ldrb r0, [r6]
	lsls r0, r0, #1
	mov r1, r8
	orrs r0, r1
	strb r0, [r6]
	b _080307CC
	.align 2, 0
_080307B0: .4byte gUnk_020000B0
_080307B4: .4byte gUnk_02027EB4
_080307B8: .4byte gUnk_0200D654
_080307BC: .4byte gUnk_080CE164
_080307C0:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
_080307CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080307D4
sub_080307D4: @ 0x080307D4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r2, #0x14]
	cmp r1, r0
	beq _080307EA
	strb r1, [r2, #0x14]
	adds r0, r2, #0
	bl sub_080309C8
_080307EA:
	pop {pc}

	thumb_func_start sub_080307EC
sub_080307EC: @ 0x080307EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _0803082C @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r5, #0x78
	strh r0, [r5]
	ldr r0, _08030830 @ =0x00004022
	ldrb r2, [r6]
	adds r1, r4, #0
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803082C: .4byte gUnk_03000BF0
_08030830: .4byte 0x00004022

	thumb_func_start sub_08030834
sub_08030834: @ 0x08030834
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r5, [r1]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _08030868 @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r0, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030868: .4byte gUnk_03000BF0

	thumb_func_start sub_0803086C
sub_0803086C: @ 0x0803086C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	bne _08030880
	b _0803099C
_08030880:
	ldr r0, _08030928 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803088E
	b _0803098A
_0803088E:
	ldr r0, _0803092C @ =gUnk_03000BF0
	mov sb, r0
	ldrh r0, [r5, #0x2e]
	mov r2, sb
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r5, #0x32]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	mov r3, sb
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	movs r0, #0x38
	adds r0, r0, r5
	mov r8, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	ldr r1, _08030930 @ =0x00004049
	mov sl, r1
	cmp r0, sl
	bne _08030950
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #2
	movs r3, #0xc
	bl sub_0800293E
	cmp r0, #0
	beq _0803093C
	subs r1, r6, #4
	adds r0, r7, #0
	movs r2, #2
	movs r3, #4
	bl sub_0800293E
	cmp r0, #0
	beq _0803098A
	ldr r2, _08030934 @ =gLinkEntity
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x7c]
	bl sub_08080840
	ldr r0, _08030938 @ =gUnk_030010A0
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r1, [r1]
	adds r0, #0xae
	strh r1, [r0]
	movs r0, #1
	b _0803099E
	.align 2, 0
_08030928: .4byte gUnk_03003F80
_0803092C: .4byte gUnk_03000BF0
_08030930: .4byte 0x00004049
_08030934: .4byte gLinkEntity
_08030938: .4byte gUnk_030010A0
_0803093C:
	ldr r0, _0803094C @ =0x00004022
	mov r3, r8
	ldrb r2, [r3]
	adds r1, r4, #0
	bl sub_0800015E
	b _0803098A
	.align 2, 0
_0803094C: .4byte 0x00004022
_08030950:
	adds r1, r6, #6
	adds r0, r7, #0
	movs r2, #2
	movs r3, #5
	bl sub_0800293E
	cmp r0, #0
	beq _0803098A
	movs r4, #0x2e
	ldrsh r1, [r5, r4]
	mov r2, sb
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, r8
	ldrb r2, [r0]
	mov r0, sl
	bl sub_0800015E
_0803098A:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0803099C:
	movs r0, #0
_0803099E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080309A8
sub_080309A8: @ 0x080309A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _080309C4
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x25
	bne _080309C4
	movs r0, #0x19
	strb r0, [r4, #0x1e]
_080309C4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080309C8
sub_080309C8: @ 0x080309C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004260
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _080309E4
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x25
	bne _080309E4
	movs r0, #0x19
	strb r0, [r4, #0x1e]
_080309E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080309E8
sub_080309E8: @ 0x080309E8
	push {lr}
	adds r1, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #4
	bhi _080309FA
	movs r0, #0x90
	lsls r0, r0, #1
	b _08030A00
_080309FA:
	cmp r0, #8
	bhi _08030A02
	movs r0, #0xe0
_08030A00:
	strh r0, [r1, #0x24]
_08030A02:
	pop {pc}

	thumb_func_start sub_08030A04
sub_08030A04: @ 0x08030A04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08030A24
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
	ldr r0, _08030A28 @ =0x00000101
	bl sub_08004488
_08030A24:
	pop {r4, pc}
	.align 2, 0
_08030A28: .4byte 0x00000101

	thumb_func_start sub_08030A2C
sub_08030A2C: @ 0x08030A2C
	push {lr}
	ldr r1, _08030A38 @ =gUnk_080CE288
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08030A38: .4byte gUnk_080CE288

	thumb_func_start sub_08030A3C
sub_08030A3C: @ 0x08030A3C
	push {lr}
	ldr r2, _08030A50 @ =gUnk_080CE2A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08030A50: .4byte gUnk_080CE2A0

	thumb_func_start sub_08030A54
sub_08030A54: @ 0x08030A54
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r6, [r0]
	cmp r6, #0x95
	beq _08030A68
	adds r5, r4, #0
	adds r5, #0x45
	cmp r6, #0x8e
	bne _08030B0E
_08030A68:
	ldr r2, [r4, #0x4c]
	ldrb r0, [r2, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0x10
	eors r0, r1
	asrs r0, r0, #3
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	bne _08030B0E
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	beq _08030AC0
	movs r3, #0x32
	ldrsh r0, [r2, r3]
	movs r3, #0x36
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r3, #0x36
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	subs r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x10
	bhi _08030B0E
	cmp r6, #0x8e
	bne _08030AAE
	movs r0, #0
	b _08030AB2
_08030AAE:
	ldrb r0, [r5]
	subs r0, #1
_08030AB2:
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0xfe
	b _08030AE0
_08030AC0:
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r0, #8
	cmp r0, #0x10
	bhi _08030B0E
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08030AEC
	adds r0, r4, #0
	bl sub_08031320
	movs r0, #0x86
	lsls r0, r0, #1
_08030AE0:
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08031344
	b _08030B0E
_08030AEC:
	cmp r6, #0x8e
	bne _08030AF4
	strb r3, [r5]
	b _08030AFA
_08030AF4:
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_08030AFA:
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0xfe
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08031344
_08030B0E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030B24
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x78
	strb r0, [r1]
_08030B24:
	ldr r1, _08030B30 @ =gUnk_080CE288
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030B30: .4byte gUnk_080CE288

	thumb_func_start sub_08030B34
sub_08030B34: @ 0x08030B34
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08030B52
	subs r0, #1
	strb r0, [r1]
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	b _08030B70
_08030B52:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08030B6A
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
_08030B6A:
	adds r0, r4, #0
	bl sub_0804A7D4
_08030B70:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_18
nullsub_18: @ 0x08030B74
	bx lr
	.align 2, 0

	thumb_func_start sub_08030B78
sub_08030B78: @ 0x08030B78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x14]
	ldrh r2, [r4, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	ands r1, r0
	adds r1, #0xc
	strh r1, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r1, #8
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08030F00
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, #0
	beq _08030BE0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08004260
	b _08030BE8
_08030BE0:
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_08004260
_08030BE8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030BEC
sub_08030BEC: @ 0x08030BEC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _08030C08
	bl sub_0807CBE4
	cmp r0, #0
	beq _08030C08
	adds r0, r4, #0
	bl sub_08031320
_08030C08:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030C0C
sub_08030C0C: @ 0x08030C0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08030C1C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08030C68
_08030C1C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08030C68
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x48]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldr r2, _08030C6C @ =gUnk_020000B0
	ldr r3, [r2]
	movs r5, #0x2e
	ldrsh r2, [r3, r5]
	movs r5, #0x32
	ldrsh r3, [r3, r5]
	bl sub_080045D4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08004260
_08030C68:
	pop {r4, r5, pc}
	.align 2, 0
_08030C6C: .4byte gUnk_020000B0

	thumb_func_start sub_08030C70
sub_08030C70: @ 0x08030C70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08030C98
	ldr r2, _08030C94 @ =gUnk_080CE2BC
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	b _08030CCC
	.align 2, 0
_08030C94: .4byte gUnk_080CE2BC
_08030C98:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030CCC
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #0x10]
	movs r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08030E58
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08030FB4
_08030CCC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030CD0
sub_08030CD0: @ 0x08030CD0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #1
	beq _08030D0C
	cmp r0, #2
	beq _08030D1A
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08030D66
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08030D66
	b _08030D5A
_08030D0C:
	adds r0, r4, #0
	bl sub_08031024
	adds r0, r4, #0
	bl sub_08030E3C
	b _08030D66
_08030D1A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030D34
	adds r0, r4, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
_08030D34:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030D44
	adds r0, r4, #0
	bl sub_08031250
_08030D44:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08030D66
	adds r0, r4, #0
	bl sub_08030E70
	b _08030D66
_08030D5A:
	movs r0, #0
	movs r1, #5
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
_08030D66:
	pop {r4, r5, pc}

	thumb_func_start sub_08030D68
sub_08030D68: @ 0x08030D68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #1
	beq _08030DA0
	cmp r0, #2
	beq _08030DC4
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030E1C
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08030DFC
	b _08030DF4
_08030DA0:
	ldrb r0, [r4, #0x14]
	adds r1, r0, #0
	cmp r1, #2
	beq _08030DBC
	cmp r1, #2
	bls _08030DB0
	subs r0, #1
	b _08030DB2
_08030DB0:
	adds r0, #1
_08030DB2:
	movs r1, #3
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x7f
	strb r0, [r1]
_08030DBC:
	adds r0, r4, #0
	bl sub_08030E3C
	b _08030E1C
_08030DC4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030DDE
	adds r0, r4, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
_08030DDE:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08030E1C
	adds r0, r4, #0
	bl sub_08030E70
	b _08030E1C
_08030DF4:
	adds r0, r4, #0
	bl sub_08030E58
	b _08030E1C
_08030DFC:
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	bne _08030E1C
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08030F00
_08030E1C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030E20
sub_08030E20: @ 0x08030E20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030E3A
	movs r0, #2
	strb r0, [r4, #0xc]
_08030E3A:
	pop {r4, pc}

	thumb_func_start sub_08030E3C
sub_08030E3C: @ 0x08030E3C
	push {lr}
	adds r2, r0, #0
	adds r2, #0x5a
	movs r1, #0
	strb r1, [r2]
	movs r1, #0x8c
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	ldr r0, _08030E54 @ =0x00000157
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08030E54: .4byte 0x00000157

	thumb_func_start sub_08030E58
sub_08030E58: @ 0x08030E58
	adds r2, r0, #0
	movs r0, #0
	movs r1, #4
	strb r1, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x7a
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	bx lr

	thumb_func_start sub_08030E70
sub_08030E70: @ 0x08030E70
	push {lr}
	bl sub_08030E80
	movs r0, #0xac
	lsls r0, r0, #1
	bl sub_08004488
	pop {pc}

	thumb_func_start sub_08030E80
sub_08030E80: @ 0x08030E80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0x14]
	lsls r5, r0, #2
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl sub_080A2960
	adds r4, r0, #0
	cmp r4, #0
	beq _08030EC0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r1, _08030EFC @ =gUnk_080CE2F4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	adds r0, r5, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_08030EC0:
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl sub_080A2960
	adds r4, r0, #0
	cmp r4, #0
	beq _08030EFA
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r1, _08030EFC @ =gUnk_080CE2F4
	adds r0, r5, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	adds r0, r5, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_08030EFA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030EFC: .4byte gUnk_080CE2F4

	thumb_func_start sub_08030F00
sub_08030F00: @ 0x08030F00
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _08030FAC @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	adds r0, #8
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	adds r1, #0x14
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x80
	strh r0, [r1]
	adds r0, r4, #1
	mov sl, r0
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x82
	strh r0, [r1]
	movs r3, #0x40
	adds r3, r3, r4
	mov sb, r3
	ldrb r1, [r6]
	mov r0, sb
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x84
	strh r0, [r1]
	movs r0, #0x41
	adds r0, r0, r4
	mov r8, r0
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x86
	strh r0, [r1]
	ldr r5, _08030FB0 @ =0x00004022
	ldrb r2, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800015E
	ldrb r2, [r6]
	adds r0, r5, #0
	mov r1, sl
	bl sub_0800015E
	ldrb r2, [r6]
	adds r0, r5, #0
	mov r1, sb
	bl sub_0800015E
	ldrb r2, [r6]
	adds r0, r5, #0
	mov r1, r8
	bl sub_0800015E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030FAC: .4byte gUnk_03000BF0
_08030FB0: .4byte 0x00004022

	thumb_func_start sub_08030FB4
sub_08030FB4: @ 0x08030FB4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r6, r0]
	ldr r1, _08031020 @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	adds r0, #8
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r1, [r1, #8]
	adds r1, #0x14
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r0, r6, #0
	adds r0, #0x80
	ldrh r0, [r0]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r2, [r5]
	adds r1, r4, #0
	bl sub_0800015E
	adds r0, r6, #0
	adds r0, #0x82
	ldrh r0, [r0]
	adds r1, r4, #1
	ldrb r2, [r5]
	bl sub_0800015E
	adds r0, r6, #0
	adds r0, #0x84
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r2, [r5]
	bl sub_0800015E
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r4, #0x41
	ldrb r2, [r5]
	adds r1, r4, #0
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_08031020: .4byte gUnk_03000BF0

	thumb_func_start sub_08031024
sub_08031024: @ 0x08031024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #1
	bl sub_08049FDC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r2, r7, #0
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #0
	bne _08031084
	cmp r1, #0
	beq _08031074
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r2, [r7, #0x48]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r7, r3]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldr r2, _08031070 @ =gUnk_020000B0
	ldr r3, [r2]
	movs r4, #0x2e
	ldrsh r2, [r3, r4]
	movs r4, #0x32
	ldrsh r3, [r3, r4]
	b _080311E8
	.align 2, 0
_08031070: .4byte gUnk_020000B0
_08031074:
	movs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x78
	strb r1, [r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	b _080311D8
_08031084:
	cmp r1, #0
	beq _0803108E
	movs r0, #0
	strb r0, [r2]
	b _080311EE
_0803108E:
	adds r0, r7, #0
	adds r0, #0x78
	ldrb r2, [r0]
	adds r1, r2, #0
	mov sl, r0
	cmp r1, #0
	bne _0803109E
	b _080311D4
_0803109E:
	cmp r1, #1
	bne _080310E2
	movs r0, #0x80
	orrs r0, r2
	mov r3, sl
	strb r0, [r3]
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r7, #0
	adds r3, #0x76
	ldrh r3, [r3]
	bl sub_080045D4
	strb r0, [r7, #0x15]
	adds r0, #4
	movs r2, #0x18
	ands r0, r2
	adds r1, r7, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrb r3, [r7, #0x15]
	cmp r0, r3
	bhs _080310DC
	adds r0, #8
	ands r0, r2
	b _080310F0
_080310DC:
	subs r0, #8
	ands r0, r2
	b _080310F0
_080310E2:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080310F2
	ldrb r0, [r7, #0x15]
	movs r1, #0x10
	eors r0, r1
_080310F0:
	strb r0, [r7, #0x15]
_080310F2:
	mov r4, sl
	ldrb r2, [r4]
	movs r0, #0x70
	ands r0, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031120
	lsrs r0, r0, #0x19
	movs r1, #0x8f
	ands r1, r2
	orrs r0, r1
	strb r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080311EE
	adds r0, r7, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	strb r0, [r7, #0x15]
	movs r0, #0
	strb r0, [r4]
	b _080311EE
_08031120:
	movs r0, #0x7b
	adds r0, r0, r7
	mov sb, r0
	ldrb r4, [r0]
	lsrs r4, r4, #1
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r5, _080311B4 @ =gUnk_080CE2C0
	adds r1, r4, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r4, #1
	adds r2, r2, r5
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r3, #0x38
	adds r3, r3, r7
	mov r8, r3
	ldrb r2, [r3]
	bl sub_080002A4
	adds r6, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	adds r1, r4, #2
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r4, #3
	adds r4, r4, r5
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	bl sub_080002A4
	adds r1, r0, #0
	ldr r2, _080311B8 @ =gUnk_080B3E80
	adds r6, r6, r2
	ldrb r0, [r6]
	mov r3, sb
	cmp r0, #0
	bne _08031194
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080311C8
_08031194:
	movs r0, #1
	cmp r0, #0
	beq _080311C8
	ldrb r0, [r7, #0x15]
	lsrs r0, r0, #3
	ldrb r4, [r7, #0x14]
	cmp r0, r4
	bne _080311BC
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x20
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	b _080311EE
	.align 2, 0
_080311B4: .4byte gUnk_080CE2C0
_080311B8: .4byte gUnk_080B3E80
_080311BC:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _080311EE
_080311C8:
	ldrb r0, [r3]
	movs r1, #0
	strb r0, [r7, #0x15]
	mov r3, sl
	strb r1, [r3]
	b _080311EE
_080311D4:
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
_080311D8:
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r7, #0
	adds r3, #0x76
	ldrh r3, [r3]
_080311E8:
	bl sub_080045D4
	strb r0, [r7, #0x15]
_080311EE:
	ldrb r0, [r7, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #3
	ldrb r3, [r7, #0x14]
	cmp r0, r3
	bne _0803120C
	adds r1, r7, #0
	adds r1, #0x7a
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0x14]
	adds r1, #5
	b _08031232
_0803120C:
	adds r1, r7, #0
	adds r1, #0x7a
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r7, #0x15]
	ldrb r2, [r7, #0x14]
	lsls r1, r2, #3
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	bls _08031228
	subs r0, r2, #1
	b _0803122A
_08031228:
	adds r0, r2, #1
_0803122A:
	movs r1, #3
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0x7f
_08031232:
	strb r0, [r1]
	ldrb r0, [r7, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0
	strb r0, [r7, #0x15]
	strh r1, [r7, #0x2c]
	strh r1, [r7, #0x30]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08031250
sub_08031250: @ 0x08031250
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r4, [r6, #0x14]
	lsls r4, r4, #2
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r5, _0803130C @ =gUnk_080CE2C0
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r0, r4, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	adds r0, r6, #0
	movs r1, #9
	bl sub_08008796
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	adds r0, r4, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r4, #3
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r3, r3, r0
	adds r0, r6, #0
	movs r1, #9
	bl sub_08008796
	adds r2, r6, #0
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #0
	beq _08031316
	movs r3, #0
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	adds r1, r6, #0
	adds r1, #0x74
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r0, #4
	bhi _080312C8
	strh r1, [r6, #0x2e]
	movs r3, #0x80
_080312C8:
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	adds r1, r6, #0
	adds r1, #0x76
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r0, #4
	bhi _080312E2
	strh r1, [r6, #0x32]
	ldrb r0, [r2]
	orrs r3, r0
	strb r3, [r2]
_080312E2:
	ldrb r1, [r2]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0803131C
	adds r0, r6, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803131C
	adds r2, r6, #0
	adds r2, #0x78
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08031310
	movs r0, #0x82
	strb r0, [r2]
	b _0803131C
	.align 2, 0
_0803130C: .4byte gUnk_080CE2C0
_08031310:
	movs r0, #1
	strb r0, [r2]
	b _0803131C
_08031316:
	adds r0, r6, #0
	bl sub_080AEF88
_0803131C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08031320
sub_08031320: @ 0x08031320
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	ldr r1, _08031340 @ =gUnk_080FD308
	str r1, [r0, #0x48]
	movs r1, #0xa
	bl sub_08004260
	pop {pc}
	.align 2, 0
_08031340: .4byte gUnk_080FD308

	thumb_func_start sub_08031344
sub_08031344: @ 0x08031344
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x4c]
	bl sub_08017A90
	adds r3, r0, #0
	cmp r3, #0
	beq _0803136C
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #1
	ldr r1, _08031370 @ =gUnk_080CE304
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r3, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r1, [r0, #1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r1, [r0]
_0803136C:
	pop {pc}
	.align 2, 0
_08031370: .4byte gUnk_080CE304

	thumb_func_start sub_08031374
sub_08031374: @ 0x08031374
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08031390 @ =gUnk_080CE448
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08031390: .4byte gUnk_080CE448

	thumb_func_start sub_08031394
sub_08031394: @ 0x08031394
	push {lr}
	ldr r2, _080313A8 @ =gUnk_080CE460
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080313A8: .4byte gUnk_080CE460

	thumb_func_start sub_080313AC
sub_080313AC: @ 0x080313AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _080313C8
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08031600
_080313C8:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080313DA
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080313DA:
	ldr r1, _080313E4 @ =gUnk_080CE448
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_080313E4: .4byte gUnk_080CE448

	thumb_func_start sub_080313E8
sub_080313E8: @ 0x080313E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08031404
	ldr r0, _08031408 @ =gUnk_080CE470
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08031404:
	pop {r4, pc}
	.align 2, 0
_08031408: .4byte gUnk_080CE470

	thumb_func_start sub_0803140C
sub_0803140C: @ 0x0803140C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_08031418
sub_08031418: @ 0x08031418
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08031420
sub_08031420: @ 0x08031420
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08031432
	adds r0, r4, #0
	bl sub_0804A7D4
_08031432:
	pop {r4, pc}

	thumb_func_start sub_08031434
sub_08031434: @ 0x08031434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	rsbs r0, r0, #0
	adds r3, r0, #0
	movs r0, #0xff
	strb r0, [r4, #0x14]
	movs r2, #1
	strb r2, [r4, #0x1c]
	ldrh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08031460
	adds r0, r4, #0
	bl sub_08031600
	b _0803147A
_08031460:
	strb r2, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _0803147C @ =0x0000FF80
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0x1e]
	orrs r0, r3
	strb r0, [r4, #0x1e]
_0803147A:
	pop {r4, pc}
	.align 2, 0
_0803147C: .4byte 0x0000FF80

	thumb_func_start sub_08031480
sub_08031480: @ 0x08031480
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080314CC
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08031496
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080314FA
_08031496:
	adds r0, r4, #0
	bl sub_08031600
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	ldr r0, _080314C8 @ =0x0000012D
	bl sub_080A3268
	b _080314FA
	.align 2, 0
_080314C8: .4byte 0x0000012D
_080314CC:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080314FA
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08016A04
	movs r0, #0x84
	bl sub_08004488
_080314FA:
	pop {r4, pc}

	thumb_func_start sub_080314FC
sub_080314FC: @ 0x080314FC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08031510
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080315BA
_08031510:
	adds r5, r4, #0
	adds r5, #0x78
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803151E
	subs r0, #1
	strb r0, [r5]
_0803151E:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08031578
	ldrb r0, [r5]
	cmp r0, #0
	bne _080315A2
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080315A2
	ldr r0, _08031574 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_0804A044
	adds r1, r0, #0
	cmp r1, #0xff
	beq _080315A2
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x7a
	strh r0, [r2]
	strb r1, [r4, #0x15]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	b _080315BA
	.align 2, 0
_08031574: .4byte gUnk_020000B0
_08031578:
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080315A2
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _080315A2
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_080315A2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080315B4
	adds r0, r4, #0
	bl sub_08031600
_080315B4:
	adds r0, r4, #0
	bl sub_0803163C
_080315BA:
	pop {r4, r5, pc}

	thumb_func_start sub_080315BC
sub_080315BC: @ 0x080315BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080315D4
	subs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004276
	b _080315FC
_080315D4:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _080315EE
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803163C
	cmp r0, #0
	bne _080315FC
_080315EE:
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08031600
_080315FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031600
sub_08031600: @ 0x08031600
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x30
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _08031638
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_08031638:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803163C
sub_0803163C: @ 0x0803163C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080002B8
	cmp r0, #0x13
	bne _08031652
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	lsrs r0, r0, #1
	b _08031658
_08031652:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
_08031658:
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031664
sub_08031664: @ 0x08031664
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803167C @ =gUnk_080CE530
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803167C: .4byte gUnk_080CE530

	thumb_func_start sub_08031680
sub_08031680: @ 0x08031680
	push {lr}
	ldr r2, _08031694 @ =gUnk_080CE548
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08031694: .4byte gUnk_080CE548

	thumb_func_start nullsub_152
nullsub_152: @ 0x08031698
	bx lr
	.align 2, 0

	thumb_func_start sub_0803169C
sub_0803169C: @ 0x0803169C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080316C4
	movs r2, #1
	strb r2, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r2, [r4, #0xf]
	b _080316D4
_080316C4:
	ldr r0, _080316D8 @ =gUnk_080CE554
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080316D4:
	pop {r4, pc}
	.align 2, 0
_080316D8: .4byte gUnk_080CE554

	thumb_func_start sub_080316DC
sub_080316DC: @ 0x080316DC
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_080316E8
sub_080316E8: @ 0x080316E8
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080316F0
sub_080316F0: @ 0x080316F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08031702
	adds r0, r4, #0
	bl sub_0804A7D4
_08031702:
	pop {r4, pc}

	thumb_func_start sub_08031704
sub_08031704: @ 0x08031704
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	bl sub_080317F8
	pop {r4, pc}

	thumb_func_start sub_08031714
sub_08031714: @ 0x08031714
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080317B4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803176E
	bl sub_08000E50
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08031750
	ldrb r1, [r4, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031750
	adds r0, r4, #0
	bl sub_08049EE4
	b _08031766
_08031750:
	ldrb r0, [r4, #0x15]
	adds r0, #0x18
	strb r0, [r4, #0x15]
	bl sub_08000E50
	movs r1, #0xe
	ands r0, r1
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
_08031766:
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080317E0
_0803176E:
	pop {r4, pc}

	thumb_func_start sub_08031770
sub_08031770: @ 0x08031770
	push {r4, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	adds r4, #0x80
	ldrh r0, [r4]
	cmp r0, #0
	beq _08031790
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080317B2
	adds r0, r1, #0
	bl sub_08031840
	b _080317B2
_08031790:
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _080317AA
	bl sub_08000E50
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	b _080317B2
_080317AA:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080317B2
	str r0, [r1, #0x54]
_080317B2:
	pop {r4, pc}

	thumb_func_start sub_080317B4
sub_080317B4: @ 0x080317B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000E50
	movs r1, #0x30
	ands r1, r0
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	cmp r1, #0
	beq _080317D0
	movs r1, #0xc
	rsbs r1, r1, #0
	adds r0, r1, #0
_080317D0:
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080317E0
sub_080317E0: @ 0x080317E0
	push {lr}
	ldrb r1, [r0, #0x15]
	adds r1, #2
	movs r2, #0x1c
	ands r1, r2
	lsrs r1, r1, #2
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080317F8
sub_080317F8: @ 0x080317F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	movs r5, #1
	strb r5, [r4, #0xc]
	movs r6, #0
	ldr r1, _08031838 @ =0x0000FFF4
	strh r1, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x38
	strb r5, [r1]
	adds r3, r4, #0
	adds r3, #0x3c
	ldrb r2, [r3]
	movs r1, #0x10
	orrs r1, r2
	strb r1, [r3]
	strb r5, [r4, #0x1c]
	strb r0, [r4, #0x15]
	ldr r0, _0803183C @ =gUnk_080CE560
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_080317E0
	strb r6, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08031838: .4byte 0x0000FFF4
_0803183C: .4byte gUnk_080CE560

	thumb_func_start sub_08031840
sub_08031840: @ 0x08031840
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	movs r0, #0x2d
	bl sub_0804AA60
	adds r4, r0, #0
	cmp r4, #0
	beq _08031862
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	movs r0, #1
	strb r0, [r4, #0xb]
_08031862:
	pop {r4, r5, pc}

	thumb_func_start sub_08031864
sub_08031864: @ 0x08031864
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r4, r0, #0
	cmp r4, #0
	beq _0803189C
	adds r0, r5, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08031886
	adds r0, r5, #0
	bl sub_08032338
_08031886:
	ldr r0, _08031898 @ =gUnk_080012C8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _080318BE
	.align 2, 0
_08031898: .4byte gUnk_080012C8
_0803189C:
	ldr r4, _080318C0 @ =gUnk_080CE56C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
_080318BE:
	pop {r4, r5, pc}
	.align 2, 0
_080318C0: .4byte gUnk_080CE56C

	thumb_func_start sub_080318C4
sub_080318C4: @ 0x080318C4
	push {lr}
	ldr r2, _080318D8 @ =gUnk_080CE584
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080318D8: .4byte gUnk_080CE584

	thumb_func_start sub_080318DC
sub_080318DC: @ 0x080318DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080318FA
	b _08031A36
_080318FA:
	ldrb r0, [r4, #0xa]
	adds r5, r4, #0
	adds r5, #0x42
	cmp r0, #1
	bne _080319DE
	ldrb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x45
	str r1, [sp]
	cmp r0, #6
	bhi _080319AC
	ldrb r0, [r5]
	cmp r0, #0
	beq _080319AC
	ldr r3, [r4, #0x54]
	movs r0, #0x29
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0x3e
	adds r1, r1, r4
	mov sl, r1
	cmp r3, #0
	beq _08031960
	ldr r0, [r4, #0x50]
	str r0, [r3, #0x50]
	movs r0, #5
	mov ip, r0
	movs r1, #0x39
	rsbs r1, r1, #0
	mov r8, r1
	movs r7, #8
	movs r6, #0xf4
_0803193A:
	mov r0, ip
	strb r0, [r3, #0xc]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	mov r1, r8
	ands r1, r0
	orrs r1, r7
	strb r1, [r2]
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0803195A
	strb r6, [r1]
_0803195A:
	ldr r3, [r3, #0x54]
	cmp r3, #0
	bne _0803193A
_08031960:
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _0803196C
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	b _08031974
_0803196C:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08031974
	str r4, [r4, #0x50]
_08031974:
	movs r0, #9
	strb r0, [r4, #0xc]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0803199C
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080319A2
_0803199C:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_080319A2:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_08004260
_080319AC:
	ldr r1, [sp]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319DE
	bl sub_08000E50
	adds r2, r4, #0
	adds r2, #0x3e
	movs r1, #7
	ands r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	subs r0, #4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r5]
	adds r0, r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_08032338
_080319DE:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08031A36
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08031A36
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080319FC
	movs r0, #8
	b _080319FE
_080319FC:
	movs r0, #9
_080319FE:
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08031A14
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _08031A1A
_08031A14:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_08031A1A:
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_08004260
_08031A36:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031A48
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08031A48:
	ldr r1, _08031A5C @ =gUnk_080CE56C
	adds r0, r4, #0
	bl sub_0804AA30
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08031A5C: .4byte gUnk_080CE56C

	thumb_func_start sub_08031A60
sub_08031A60: @ 0x08031A60
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08031A7A
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
_08031A7A:
	adds r0, r4, #0
	bl sub_08001324

	thumb_func_start nullsub_153
nullsub_153: @ 0x08031A80
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_154
nullsub_154: @ 0x08031A84
	bx lr
	.align 2, 0

	thumb_func_start sub_08031A88
sub_08031A88: @ 0x08031A88
	push {lr}
	ldr r2, _08031A9C @ =gUnk_080CE58C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08031A9C: .4byte gUnk_080CE58C

	thumb_func_start sub_08031AA0
sub_08031AA0: @ 0x08031AA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	bl sub_08000E50
	adds r4, #0x79
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031AC8
sub_08031AC8: @ 0x08031AC8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _08031AD8
	subs r0, #1
	strb r0, [r6, #0xe]
	b _08031B44
_08031AD8:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08031B44
	bl sub_08000E50
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x74
	ldrh r4, [r0]
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r7, r4, #0
	subs r7, #0x20
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r4, [r0]
	lsrs r5, r5, #4
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #4
	adds r4, r4, r0
	subs r4, #0x20
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080002D4
	cmp r0, #0
	bne _08031B44
	movs r0, #2
	strb r0, [r6, #0xc]
	ldrb r1, [r6, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #0x18]
	strh r7, [r6, #0x2e]
	strh r4, [r6, #0x32]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08004260
_08031B44:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08031B48
sub_08031B48: @ 0x08031B48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031B6C
	movs r0, #0
	strb r0, [r2]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _08031B90
_08031B6C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031B90
	movs r0, #3
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08031B94 @ =gUnk_080CE5B0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08031B90:
	pop {r4, pc}
	.align 2, 0
_08031B94: .4byte gUnk_080CE5B0

	thumb_func_start sub_08031B98
sub_08031B98: @ 0x08031B98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08031E04
	cmp r0, #0
	beq _08031BDA
	movs r0, #5
	strb r0, [r4, #0xc]
	ldr r0, _08031BC4 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08031BC8
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _08031BCE
	.align 2, 0
_08031BC4: .4byte gUnk_020000B0
_08031BC8:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_08031BCE:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	b _08031C1A
_08031BDA:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031BFA
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08031BFA
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
_08031BFA:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08031C1A
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08031C1A:
	pop {r4, pc}

	thumb_func_start sub_08031C1C
sub_08031C1C: @ 0x08031C1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031C50
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08031C54 @ =gUnk_080CE5B8
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08031C50:
	pop {r4, pc}
	.align 2, 0
_08031C54: .4byte gUnk_080CE5B8

	thumb_func_start sub_08031C58
sub_08031C58: @ 0x08031C58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	bl sub_08004274
	adds r3, r7, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08031D54
	ldr r0, _08031D50 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x42
	bhi _08031D66
	bl sub_08000E50
	adds r6, r0, #0
	movs r0, #3
	mov sb, r0
	ands r6, r0
	movs r0, #0x2e
	movs r1, #1
	bl sub_0804AA60
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	mov r0, r8
	strb r0, [r4, #0xb]
	mov r0, r8
	str r0, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl sub_0804AA60
	adds r5, r0, #0
	str r5, [r4, #0x54]
	movs r0, #1
	strb r0, [r5, #0xb]
	str r4, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl sub_0804AA60
	adds r4, r0, #0
	str r4, [r5, #0x54]
	movs r0, #2
	strb r0, [r4, #0xb]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl sub_0804AA60
	adds r5, r0, #0
	str r5, [r4, #0x54]
	mov r0, sb
	strb r0, [r5, #0xb]
	str r4, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl sub_0804AA60
	adds r1, r0, #0
	str r1, [r5, #0x54]
	movs r0, #4
	strb r0, [r1, #0xb]
	str r5, [r1, #0x50]
	mov r0, r8
	str r0, [r1, #0x54]
	adds r0, r1, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	bl sub_08031E48
	movs r0, #6
	strb r0, [r7, #0xc]
	movs r0, #0x14
	strb r0, [r7, #0xe]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #7
	bl sub_08004260
	b _08031D66
	.align 2, 0
_08031D50: .4byte gUnk_03003DBC
_08031D54:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031D66
	strb r2, [r3]
	ldrb r1, [r7, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7, #0x10]
_08031D66:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08031D70
sub_08031D70: @ 0x08031D70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08031D9C
	movs r0, #7
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #5
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #9
	ands r0, r1
	strb r0, [r4, #0x18]
_08031D9C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031DA0
sub_08031DA0: @ 0x08031DA0
	push {lr}
	adds r1, r0, #0
	ldrb r2, [r1, #0xe]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	bne _08031DC2
	cmp r2, #0x50
	bne _08031DBA
	adds r0, r1, #0
	bl sub_0805E7BC
	b _08031DC2
_08031DBA:
	movs r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0xb4
	strb r0, [r1, #0xe]
_08031DC2:
	pop {pc}

	thumb_func_start sub_08031DC4
sub_08031DC4: @ 0x08031DC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031DE8
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0xb8
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08031E00
_08031DE8:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _08031E00
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_08031E00:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08031E04
sub_08031E04: @ 0x08031E04
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08031E44
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r3, #6
	ands r3, r0
	ldr r0, _08031E40 @ =gUnk_080CE5C0
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r3, #0x50
	bl sub_0806FCB8
	b _08031E46
	.align 2, 0
_08031E40: .4byte gUnk_080CE5C0
_08031E44:
	movs r0, #0
_08031E46:
	pop {r4, pc}

	thumb_func_start sub_08031E48
sub_08031E48: @ 0x08031E48
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0806FA24
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6c
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	str r5, [r4, #0x7c]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08031E90
sub_08031E90: @ 0x08031E90
	push {lr}
	ldr r2, _08031EA4 @ =gUnk_080CE5C8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08031EA4: .4byte gUnk_080CE5C8

	thumb_func_start sub_08031EA8
sub_08031EA8: @ 0x08031EA8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0xb]
	movs r1, #4
	subs r1, r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r4, #0x36]
	bl sub_08000E50
	adds r1, r4, #0
	adds r1, #0x79
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08031EE8
sub_08031EE8: @ 0x08031EE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, _08031F4C @ =0xFFFFE800
	adds r1, r1, r0
	str r1, [r4, #0x20]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08031F1E
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08031F10
	ldr r0, _08031F50 @ =0x0000012B
	bl sub_08004488
_08031F10:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_08031F1E:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08031F2E
	adds r0, r4, #0
	bl sub_08004274
_08031F2E:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _08031F48
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
_08031F48:
	pop {r4, pc}
	.align 2, 0
_08031F4C: .4byte 0xFFFFE800
_08031F50: .4byte 0x0000012B

	thumb_func_start sub_08031F54
sub_08031F54: @ 0x08031F54
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08031FAC @ =gUnk_080CE5F0
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08003FC4
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bgt _08031FAA
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #0x36]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08031FA2
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08031FA2:
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
_08031FAA:
	pop {r4, pc}
	.align 2, 0
_08031FAC: .4byte gUnk_080CE5F0

	thumb_func_start sub_08031FB0
sub_08031FB0: @ 0x08031FB0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032006
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _08031FD8
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032006
_08031FD8:
	movs r4, #0
	movs r0, #4
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x76
	strb r4, [r0]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _08031FFE
	adds r0, r5, #0
	movs r1, #9
	bl sub_08004260
	b _08032006
_08031FFE:
	adds r0, r5, #0
	movs r1, #8
	bl sub_08004260
_08032006:
	pop {r4, r5, pc}

	thumb_func_start sub_08032008
sub_08032008: @ 0x08032008
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_080322A4
	adds r7, r0, #0
	cmp r7, #0
	beq _08032018
	b _08032144
_08032018:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080320D4
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08032060
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08032052
	ldr r0, _0803205C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08032052:
	adds r0, r4, #0
	adds r0, #0x76
	strb r7, [r0]
	b _080320AC
	.align 2, 0
_0803205C: .4byte gUnk_020000B0
_08032060:
	adds r1, r4, #0
	adds r1, #0x76
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803207C
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004596
	b _080320AC
_0803207C:
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803209E
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803209E
	adds r0, r4, #0
	bl sub_08049EE4
	b _080320A6
_0803209E:
	bl sub_08000E50
	movs r1, #0x1e
	ands r0, r1
_080320A6:
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
_080320AC:
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080320CC
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080320CC:
	adds r0, r4, #0
	bl sub_080AEF88
	b _0803213E
_080320D4:
	adds r6, r4, #0
	adds r6, #0x77
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803210E
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803213E
	movs r0, #1
	strb r0, [r6]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080322E8
	adds r0, r4, #0
	bl sub_0806F69C
	b _0803213E
_0803210E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080322E8
	adds r0, r4, #0
	bl sub_0806F69C
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0803213E
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0803213E
	strb r7, [r6]
_0803213E:
	adds r0, r4, #0
	bl sub_08004274
_08032144:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08032148
sub_08032148: @ 0x08032148
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _0803215E
	adds r0, r4, #0
	bl sub_08032290
_0803215E:
	pop {r4, pc}

	thumb_func_start sub_08032160
sub_08032160: @ 0x08032160
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080321C2
	movs r0, #7
	strb r0, [r4, #0xc]
	ldr r2, _08032190 @ =gUnk_080CE5FA
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #0xb]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	cmp r0, #0xf
	bls _08032194
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _0803219C
	.align 2, 0
_08032190: .4byte gUnk_080CE5FA
_08032194:
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_0803219C:
	strb r0, [r4, #0x18]
	movs r0, #0xf0
	strh r0, [r4, #0x24]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08004260
_080321C2:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080321E6
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080321E2
	movs r2, #0
_080321D0:
	adds r0, r1, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080321DC
	strb r2, [r1, #0xe]
_080321DC:
	ldr r1, [r1, #0x50]
	cmp r1, #0
	bne _080321D0
_080321E2:
	movs r0, #0
	strb r0, [r4, #0xe]
_080321E6:
	pop {r4, pc}

	thumb_func_start sub_080321E8
sub_080321E8: @ 0x080321E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08032202
	movs r0, #8
	strb r0, [r4, #0xc]
_08032202:
	pop {r4, pc}

	thumb_func_start sub_08032204
sub_08032204: @ 0x08032204
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08032230
	movs r0, #0
	strb r0, [r2]
	bl sub_08000E50
	movs r1, #0x30
	ands r0, r1
	adds r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
	b _08032244
_08032230:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032244
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08004260
_08032244:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032248
sub_08032248: @ 0x08032248
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _0803228E
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032276
	ldr r1, [r4, #0x7c]
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	adds r0, r4, #0
	bl sub_0805E7BC
	b _0803228E
_08032276:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _0803228E
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_0803228E:
	pop {r4, r5, pc}

	thumb_func_start sub_08032290
sub_08032290: @ 0x08032290
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0xe]
	movs r1, #0xb
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080322A4
sub_080322A4: @ 0x080322A4
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x54]
	cmp r3, #0
	beq _080322E2
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	adds r0, #8
	movs r4, #0x36
	ldrsh r1, [r2, r4]
	cmp r0, r1
	blt _080322E2
	adds r0, r1, #0
	cmp r0, #0
	beq _080322D8
	movs r0, #5
	strb r0, [r2, #0xc]
	ldrh r0, [r3, #0x36]
	adds r0, #8
	strh r0, [r2, #0x36]
	adds r0, r2, #0
	movs r1, #0xb
	bl sub_08004260
	movs r0, #1
	b _080322E4
_080322D8:
	adds r0, r2, #0
	bl sub_08032290
	movs r0, #1
	b _080322E4
_080322E2:
	movs r0, #0
_080322E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080322E8
sub_080322E8: @ 0x080322E8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x78
	ldrb r0, [r2]
	cmp r0, #0
	beq _08032316
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032334
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _08032334
_08032316:
	ldrb r1, [r3, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08032334
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	cmp r1, r0
	beq _08032334
	movs r0, #6
	strb r0, [r2]
_08032334:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032338
sub_08032338: @ 0x08032338
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x7c]
	ldrb r0, [r1, #0xe]
	adds r0, #0xf
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	beq _08032354
	adds r1, r2, #0
	adds r1, #0x6c
	movs r0, #0
	strb r0, [r1]
_08032354:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032358
sub_08032358: @ 0x08032358
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0803237C
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x74
	adds r0, r4, #0
	bl sub_080A2CC0
_0803237C:
	ldrb r1, [r4, #0x15]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0803238E
	adds r0, r4, #0
	bl sub_0806F69C
_0803238E:
	adds r5, r4, #0
	adds r5, #0x74
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080323BA
	ldrb r1, [r4, #0x15]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080323AE
	movs r0, #0x74
	bl sub_08004488
_080323AE:
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_080A2CC0
_080323BA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080323BC
sub_080323BC: @ 0x080323BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080323D8 @ =gUnk_080CE7B0
	bl sub_0800129E
	movs r3, #0x12
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_080323D8: .4byte gUnk_080CE7B0

	thumb_func_start sub_080323DC
sub_080323DC: @ 0x080323DC
	push {lr}
	ldr r2, _080323F0 @ =gUnk_080CE7C8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080323F0: .4byte gUnk_080CE7C8

	thumb_func_start sub_080323F4
sub_080323F4: @ 0x080323F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0803242C
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	adds r1, #4
	movs r0, #0x18
	ands r1, r0
	movs r0, #0x10
	eors r1, r0
	strb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_080042AC
	adds r5, r4, #0
	adds r5, #0x43
	b _08032446
_0803242C:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x43
	cmp r0, #0xcc
	bne _08032446
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803244C
	adds r0, r4, #0
	bl sub_0803275C
_08032446:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032454
_0803244C:
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08032454:
	ldr r1, _08032460 @ =gUnk_080CE7B0
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08032460: .4byte gUnk_080CE7B0

	thumb_func_start nullsub_155
nullsub_155: @ 0x08032464
	bx lr
	.align 2, 0

	thumb_func_start sub_08032468
sub_08032468: @ 0x08032468
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_080326FC
	adds r0, r4, #0
	bl sub_08032740
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803248C
sub_0803248C: @ 0x0803248C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080325E8
	cmp r0, #0
	bne _080324C8
	adds r0, r4, #0
	bl sub_0803271C
	cmp r0, #0
	bne _080324C8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080324B4
	adds r0, r4, #0
	bl sub_08032650
_080324B4:
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080324C2
	movs r0, #1
	strb r0, [r4, #0xe]
_080324C2:
	adds r0, r4, #0
	bl sub_080042B8
_080324C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080324CC
sub_080324CC: @ 0x080324CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080325E8
	cmp r0, #0
	bne _080324F8
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080324F8
	adds r0, r4, #0
	bl sub_080326FC
	adds r0, r4, #0
	bl sub_08032740
_080324F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080324FC
sub_080324FC: @ 0x080324FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08032524
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032572
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
_08032524:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xf]
	subs r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08032564
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x76
	movs r0, #0x46
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	strh r3, [r0]
	adds r0, #3
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080327C8
	b _08032572
_08032564:
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08032572
	adds r0, r4, #0
	bl sub_08032794
_08032572:
	pop {r4, pc}

	thumb_func_start sub_08032574
sub_08032574: @ 0x08032574
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0803258A
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080325A4
_0803258A:
	adds r5, r4, #0
	adds r5, #0x76
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080325A4
	adds r0, r4, #0
	bl sub_080AEFE0
	cmp r0, #0
	bne _080325AC
_080325A4:
	adds r0, r4, #0
	bl sub_0803275C
	b _080325C2
_080325AC:
	adds r0, r4, #0
	bl sub_080042B8
	ldrh r1, [r5]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080325C2
	adds r0, r4, #0
	bl sub_08032794
_080325C2:
	pop {r4, r5, pc}

	thumb_func_start sub_080325C4
sub_080325C4: @ 0x080325C4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080325E4
	adds r0, r4, #0
	bl sub_080325E8
	cmp r0, #0
	bne _080325E4
	adds r0, r4, #0
	bl sub_08032784
_080325E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080325E8
sub_080325E8: @ 0x080325E8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0803264C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803264C
	ldr r5, _08032648 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x68
	movs r3, #0x40
	bl sub_080041A0
	cmp r0, #0
	beq _0803264C
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_080045C4
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	movs r5, #0x18
	adds r1, r5, #0
	ands r1, r2
	subs r0, r0, r1
	adds r0, #2
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #4
	bhi _0803264C
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	ldrb r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #1
	b _0803264E
	.align 2, 0
_08032648: .4byte gUnk_020000B0
_0803264C:
	movs r0, #0
_0803264E:
	pop {r4, r5, pc}

	thumb_func_start sub_08032650
sub_08032650: @ 0x08032650
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	ldr r1, _08032680 @ =gUnk_080CE7E0
	movs r0, #0xf
	ands r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803267A
	lsrs r0, r5, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08032684
_0803267A:
	lsrs r0, r5, #0x10
	b _0803268C
	.align 2, 0
_08032680: .4byte gUnk_080CE7E0
_08032684:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
_0803268C:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0803269C
	pop {r4, r5, pc}

	thumb_func_start sub_0803269C
sub_0803269C: @ 0x0803269C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	subs r0, r2, #3
	movs r1, #7
	ands r0, r1
	cmp r0, #2
	bhi _080326D6
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r2, r0, #3
	ldrb r0, [r3, #0x14]
	subs r0, r0, r2
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	bls _080326F8
	strb r2, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0xfc
	ands r1, r0
	adds r1, r1, r2
	adds r0, r3, #0
	bl sub_080042AC
	b _080326F8
_080326D6:
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r2, r0, #3
	ldrb r0, [r3, #0x14]
	cmp r2, r0
	beq _080326F8
	strb r2, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0xfc
	ands r1, r0
	adds r1, r1, r2
	adds r0, r3, #0
	bl sub_080042AC
_080326F8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080326FC
sub_080326FC: @ 0x080326FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _08032718 @ =gUnk_080CE7F0
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r4, #0x74
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08032718: .4byte gUnk_080CE7F0

	thumb_func_start sub_0803271C
sub_0803271C: @ 0x0803271C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08032734
	movs r0, #0
	b _0803273C
_08032734:
	adds r0, r2, #0
	bl sub_08032784
	movs r0, #1
_0803273C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032740
sub_08032740: @ 0x08032740
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08032650
	pop {r4, pc}

	thumb_func_start sub_0803275C
sub_0803275C: @ 0x0803275C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080042AC
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0803269C
	adds r0, r4, #0
	bl sub_080327E0
	pop {r4, pc}

	thumb_func_start sub_08032784
sub_08032784: @ 0x08032784
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0x14]
	adds r1, #8
	bl sub_080042AC
	pop {pc}

	thumb_func_start sub_08032794
sub_08032794: @ 0x08032794
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFX
	adds r5, r0, #0
	cmp r5, #0
	beq _080327C2
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	ldr r1, _080327C4 @ =gUnk_080CE810
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA48
_080327C2:
	pop {r4, r5, pc}
	.align 2, 0
_080327C4: .4byte gUnk_080CE810

	thumb_func_start sub_080327C8
sub_080327C8: @ 0x080327C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xb
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _080327DC
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_080327DC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080327E0
sub_080327E0: @ 0x080327E0
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x54]
	cmp r1, #0
	beq _080327F0
	movs r0, #0
	str r0, [r1, #0x50]
	str r0, [r2, #0x54]
_080327F0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080327F4
sub_080327F4: @ 0x080327F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803280C @ =gUnk_080CE978
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803280C: .4byte gUnk_080CE978

	thumb_func_start sub_08032810
sub_08032810: @ 0x08032810
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08032840 @ =gUnk_080CE990
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803283C
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803283C
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_0803283C:
	pop {r4, pc}
	.align 2, 0
_08032840: .4byte gUnk_080CE990

	thumb_func_start sub_08032844
sub_08032844: @ 0x08032844
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080328AE
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08032896
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r3, #0x10
	strb r3, [r4, #0xf]
	ldrb r2, [r4, #0x15]
	adds r0, r2, #4
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08032886
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08032882
	adds r0, r2, #2
	b _08032884
_08032882:
	subs r0, r2, #2
_08032884:
	strb r0, [r4, #0x15]
_08032886:
	ldrb r1, [r4, #0x15]
	movs r0, #0x20
	subs r0, r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08032AF4
	b _080328AE
_08032896:
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080328AE
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080328AE:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080328B8
sub_080328B8: @ 0x080328B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080328FC @ =gUnk_080CE9A4
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080328F8
	movs r1, #2
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08032AF4
_080328F8:
	pop {r4, pc}
	.align 2, 0
_080328FC: .4byte gUnk_080CE9A4

	thumb_func_start sub_08032900
sub_08032900: @ 0x08032900
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803290C
sub_0803290C: @ 0x0803290C
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08032914
sub_08032914: @ 0x08032914
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08032926
	adds r0, r4, #0
	bl sub_0804A7D4
_08032926:
	pop {r4, pc}

	thumb_func_start sub_08032928
sub_08032928: @ 0x08032928
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r5, #1
	strb r5, [r6, #0xc]
	strb r4, [r6, #0xf]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r6, #0x15]
	adds r0, r6, #0
	adds r0, #0x80
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	strb r5, [r6, #0x1c]
	adds r2, r6, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r1, [r6, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6, #0x1b]
	ldrh r1, [r6, #0x2e]
	adds r0, r6, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r6, #0x32]
	adds r1, r6, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_08016A04
	adds r0, r6, #0
	bl sub_08032AF4
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803298C
sub_0803298C: @ 0x0803298C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08032AB0
	adds r0, r4, #0
	bl sub_08004274
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _080329E2
	ldr r5, _080329E4 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x88
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _080329E2
	ldr r0, [r5]
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	adds r0, #8
	cmp r1, r0
	ble _080329E2
	movs r1, #0
	movs r2, #2
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x81
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_08032AF4
_080329E2:
	pop {r4, r5, pc}
	.align 2, 0
_080329E4: .4byte gUnk_020000B0

	thumb_func_start sub_080329E8
sub_080329E8: @ 0x080329E8
	push {lr}
	bl sub_08032B38
	pop {pc}

	thumb_func_start sub_080329F0
sub_080329F0: @ 0x080329F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080040A8
	cmp r0, #0
	bne _08032A3A
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	ldrh r0, [r4, #0x36]
	adds r0, #8
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08032A46
_08032A3A:
	adds r0, r4, #0
	bl sub_08032B10
	adds r0, r4, #0
	bl sub_08004274
_08032A46:
	pop {r4, pc}

	thumb_func_start sub_08032A48
sub_08032A48: @ 0x08032A48
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080040A8
	adds r5, r0, #0
	cmp r5, #0
	bne _08032AAE
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	strb r5, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x81
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r4, #0
	bl sub_08032AF4
_08032AAE:
	pop {r4, r5, pc}

	thumb_func_start sub_08032AB0
sub_08032AB0: @ 0x08032AB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032AF0
	ldrb r0, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x80
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	beq _08032AD6
	strb r0, [r4, #0x15]
_08032AD6:
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r2, [r5]
	movs r0, #0x10
	adds r1, r0, #0
	ands r1, r2
	ldrb r2, [r4, #0x15]
	ands r0, r2
	cmp r1, r0
	beq _08032AF0
	adds r0, r4, #0
	bl sub_08032AF4
_08032AF0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08032AF4
sub_08032AF4: @ 0x08032AF4
	push {lr}
	ldrb r2, [r0, #0x15]
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	adds r2, r0, #0
	adds r2, #0x81
	ldrb r2, [r2]
	adds r1, r1, r2
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032B10
sub_08032B10: @ 0x08032B10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	pop {r4, pc}

	thumb_func_start sub_08032B38
sub_08032B38: @ 0x08032B38
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x84
	ldrb r0, [r2]
	cmp r0, #1
	beq _08032B88
	cmp r0, #1
	bgt _08032B50
	cmp r0, #0
	beq _08032B56
	b _08032C6A
_08032B50:
	cmp r0, #2
	beq _08032BB2
	b _08032C6A
_08032B56:
	ldrb r1, [r5, #0xe]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08032B68
	ldrh r0, [r5, #0x36]
	subs r0, #1
	strh r0, [r5, #0x36]
_08032B68:
	subs r0, r1, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C6A
	strb r3, [r2]
	movs r0, #0x18
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #2
	b _08032BA8
_08032B88:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C6A
	movs r0, #2
	strb r0, [r2]
	movs r0, #8
	strb r0, [r5, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #4
_08032BA8:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08032AF4
	b _08032C6A
_08032BB2:
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	subs r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r6, r1, #0
	cmp r0, #0
	bne _08032BF4
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r3, [r2]
	strb r3, [r5, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	ldrb r2, [r5, #0x15]
	adds r0, r2, #0
	adds r0, #0x18
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032BEC
	movs r0, #0x10
	subs r0, r0, r2
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
_08032BEC:
	adds r0, r5, #0
	bl sub_08032AF4
	b _08032C64
_08032BF4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C64
	movs r0, #8
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x15]
	adds r4, r5, #0
	adds r4, #0x80
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08004596
	ldrb r3, [r5, #0x15]
	adds r0, r3, #0
	adds r0, #0x18
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032C46
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _08032C3E
	ands r3, r0
	cmp r3, #0
	beq _08032C3A
	movs r0, #0x12
	b _08032C3C
_08032C3A:
	movs r0, #0xe
_08032C3C:
	strb r0, [r4]
_08032C3E:
	ldrb r0, [r4]
	strb r0, [r5, #0x15]
	movs r0, #1
	strh r0, [r6]
_08032C46:
	ldrb r2, [r4]
	movs r0, #0x10
	adds r1, r0, #0
	ands r1, r2
	lsls r1, r1, #0x18
	ldrb r2, [r5, #0x15]
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x1c
	cmp r1, r0
	beq _08032C64
	adds r1, r2, #4
	adds r0, r5, #0
	bl sub_08004260
_08032C64:
	adds r0, r5, #0
	bl sub_08032B10
_08032C6A:
	adds r0, r5, #0
	bl sub_08004274
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08032C74
sub_08032C74: @ 0x08032C74
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08032C90 @ =gUnk_080CEA1C
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08032C90: .4byte gUnk_080CEA1C

	thumb_func_start sub_08032C94
sub_08032C94: @ 0x08032C94
	push {lr}
	ldr r2, _08032CA8 @ =gUnk_080CEA34
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08032CA8: .4byte gUnk_080CEA34

	thumb_func_start sub_08032CAC
sub_08032CAC: @ 0x08032CAC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032CC0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08032CC0:
	ldr r1, _08032D18 @ =gUnk_080CEA1C
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032D3A
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #3
	bgt _08032D2C
	cmp r0, #2
	blt _08032D2C
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	movs r1, #0xc8
	cmp r0, #0
	beq _08032CF0
	movs r1, #0x5a
_08032CF0:
	strb r1, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	ldrb r5, [r4, #0x15]
	bl sub_08000E50
	movs r1, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08032D1C
	adds r2, r5, #4
	b _08032D20
	.align 2, 0
_08032D18: .4byte gUnk_080CEA1C
_08032D1C:
	adds r2, r5, #0
	adds r2, #0x1c
_08032D20:
	movs r1, #0
	movs r0, #0x1f
	ands r0, r2
	strb r0, [r4, #0x15]
	strh r1, [r4, #0x24]
	b _08032D3A
_08032D2C:
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08033174
_08032D3A:
	pop {r4, r5, pc}

	thumb_func_start sub_08032D3C
sub_08032D3C: @ 0x08032D3C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032D66
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	adds r0, r4, #0
	bl sub_080331E8
_08032D66:
	adds r0, r4, #0
	bl sub_08001324

	thumb_func_start nullsub_156
nullsub_156: @ 0x08032D6C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_157
nullsub_157: @ 0x08032D70
	bx lr
	.align 2, 0

	thumb_func_start sub_08032D74
sub_08032D74: @ 0x08032D74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	bl sub_08033058
	pop {r4, pc}

	thumb_func_start sub_08032D84
sub_08032D84: @ 0x08032D84
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032D9C
	adds r0, r4, #0
	bl sub_080330C0
	b _08032DAC
_08032D9C:
	adds r0, r4, #0
	bl sub_08033364
	cmp r0, #0
	beq _08032DAC
	adds r0, r4, #0
	bl sub_08033100
_08032DAC:
	adds r0, r4, #0
	bl sub_08032F64
	pop {r4, pc}

	thumb_func_start sub_08032DB4
sub_08032DB4: @ 0x08032DB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032DCA
	adds r0, r4, #0
	bl sub_08033058
_08032DCA:
	adds r0, r4, #0
	bl sub_08032F48
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032DD4
sub_08032DD4: @ 0x08032DD4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032E3C
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080331B4
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032E18
	ldrb r0, [r4, #0x15]
	adds r0, #0x1c
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	b _08032E28
_08032E18:
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
_08032E28:
	strb r0, [r2]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	b _08032E4E
_08032E3C:
	adds r0, r4, #0
	bl sub_08032F90
	adds r0, r4, #0
	bl sub_080331E8
	adds r0, r4, #0
	bl sub_08032F64
_08032E4E:
	pop {r4, pc}

	thumb_func_start sub_08032E50
sub_08032E50: @ 0x08032E50
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032E70
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08033174
	b _08032E82
_08032E70:
	adds r0, r4, #0
	bl sub_08033000
	adds r0, r4, #0
	bl sub_080331E8
	adds r0, r4, #0
	bl sub_08032F64
_08032E82:
	pop {r4, pc}

	thumb_func_start sub_08032E84
sub_08032E84: @ 0x08032E84
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032EA4
	adds r0, r4, #0
	bl sub_08033320
	adds r0, r4, #0
	bl sub_080330C0
	b _08032EC0
_08032EA4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08032EC0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08032EC0
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080332A8
_08032EC0:
	adds r0, r4, #0
	bl sub_080331E8
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032ED0
sub_08032ED0: @ 0x08032ED0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08032F48
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032F06
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	adds r0, r4, #0
	bl sub_080331E8
_08032F06:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	ands r0, r5
	cmp r0, #0
	bne _08032F20
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08033174
_08032F20:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08032F24
sub_08032F24: @ 0x08032F24
	push {lr}
	adds r2, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032F38
	movs r1, #0
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	b _08032F3C
_08032F38:
	movs r1, #4
	ldrb r0, [r2, #0x14]
_08032F3C:
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032F48
sub_08032F48: @ 0x08032F48
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	bne _08032F5A
	adds r0, r4, #0
	bl sub_08004274
_08032F5A:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032F64
sub_08032F64: @ 0x08032F64
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08032F82
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
_08032F82:
	adds r0, r4, #0
	bl sub_08032F48
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}

	thumb_func_start sub_08032F90
sub_08032F90: @ 0x08032F90
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08032FC0
	ldrb r0, [r2, #0xe]
	cmp r0, #0x10
	bne _08032FA8
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
_08032FA8:
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032FFE
	movs r0, #8
	strb r0, [r2, #0xf]
	adds r0, r2, #0
	bl sub_08033280
	b _08032FFE
_08032FC0:
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032FFE
	movs r0, #4
	strb r0, [r2, #0xf]
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032FE4
	ldrb r0, [r2, #0x15]
	adds r0, #0x1c
	b _08032FE8
_08032FE4:
	ldrb r0, [r2, #0x15]
	adds r0, #4
_08032FE8:
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #2
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl sub_08004260
_08032FFE:
	pop {pc}

	thumb_func_start sub_08033000
sub_08033000: @ 0x08033000
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033056
	movs r0, #0x10
	strb r0, [r2, #0xf]
	adds r3, r2, #0
	adds r3, #0x82
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033034
	ldrb r0, [r2, #0x15]
	adds r0, #0x18
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r2, #0x15]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	b _08033044
_08033034:
	ldrb r0, [r2, #0x15]
	adds r0, #8
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r2, #0x15]
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
_08033044:
	strb r0, [r3]
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #2
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl sub_08004260
_08033056:
	pop {pc}

	thumb_func_start sub_08033058
sub_08033058: @ 0x08033058
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #1
	strb r6, [r5, #0xc]
	adds r0, #0x80
	strb r6, [r0]
	bl sub_08000E50
	ldr r1, _080330A0 @ =gUnk_080CEA50
	movs r4, #3
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080330A8
	bl sub_08000E50
	ands r0, r4
	cmp r0, #0
	beq _080330A8
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl sub_08000E50
	ldr r1, _080330A4 @ =gUnk_080CEA54
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, r0, r4
	b _080330AC
	.align 2, 0
_080330A0: .4byte gUnk_080CEA50
_080330A4: .4byte gUnk_080CEA54
_080330A8:
	bl sub_08000E50
_080330AC:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08032F24
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080330C0
sub_080330C0: @ 0x080330C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080330E2
	bl sub_08000E50
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x18
	b _080330E4
_080330E2:
	movs r0, #6
_080330E4:
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	pop {r4, pc}

	thumb_func_start sub_08033100
sub_08033100: @ 0x08033100
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	bne _08033132
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	b _08033150
_08033132:
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080331B4
	ldrb r0, [r4, #0xe]
	adds r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xf]
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_08033150:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	bl sub_08000E50
	movs r1, #0x80
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	pop {r4, pc}

	thumb_func_start sub_08033174
sub_08033174: @ 0x08033174
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x80
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080331A4
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	adds r0, #0x18
	b _080331A6
_080331A4:
	movs r0, #0xc
_080331A6:
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08032F24
	pop {r4, pc}

	thumb_func_start sub_080331B4
sub_080331B4: @ 0x080331B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r1, r0, #0
	movs r0, #0xf0
	ands r1, r0
	movs r2, #0x1e
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080331D0
	movs r2, #0x3c
	b _080331E4
_080331D0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080331DA
	movs r2, #0x2d
_080331DA:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _080331E4
	movs r2, #0x4b
_080331E4:
	strb r2, [r4, #0xe]
	pop {r4, pc}

	thumb_func_start sub_080331E8
sub_080331E8: @ 0x080331E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r3, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #5
	beq _08033220
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803320C
	movs r0, #0xf
	b _0803320E
_0803320C:
	movs r0, #7
_0803320E:
	ands r2, r0
	strb r2, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08033238
	movs r3, #1
	ldrb r0, [r5, #0x14]
	lsls r6, r0, #1
	b _08033238
_08033220:
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	cmp r0, #0
	bne _08033238
	movs r3, #1
	ldrb r0, [r5, #0x15]
	lsrs r6, r0, #1
_08033238:
	cmp r3, #0
	beq _08033278
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _08033278
	ldr r2, _0803327C @ =gUnk_080CEA56
	adds r2, r6, r2
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r0, [r3]
	movs r1, #0x20
	eors r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r2, r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_08004488
_08033278:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803327C: .4byte gUnk_080CEA56

	thumb_func_start sub_08033280
sub_08033280: @ 0x08033280
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _080332A4
	strb r0, [r4, #0x14]
	adds r1, r0, #4
	adds r0, r4, #0
	bl sub_08004260
_080332A4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080332A8
sub_080332A8: @ 0x080332A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r6, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r0, [r5]
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	ldrb r0, [r4, #0x15]
	strb r0, [r5]
	strb r6, [r4, #0x15]
	ldrb r0, [r5]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r6, r0, #2
	ldrb r0, [r4, #0x14]
	cmp r6, r0
	beq _080332E4
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080332E8
_080332E4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080332E8
sub_080332E8: @ 0x080332E8
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x82
	movs r0, #0
	strb r0, [r3]
	ldrb r0, [r4, #0x14]
	subs r2, r1, r0
	cmp r2, #0
	ble _08033304
	cmp r2, #4
	bgt _08033310
	movs r0, #1
	b _08033312
_08033304:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08033310
	movs r0, #1
	b _08033312
_08033310:
	movs r0, #2
_08033312:
	strb r0, [r3]
	strb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08033320
sub_08033320: @ 0x08033320
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	lsls r5, r0, #2
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08033360
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	cmp r1, #1
	beq _08033350
	cmp r1, #2
	beq _08033354
	bl sub_08000E50
	movs r1, #0x10
	ands r1, r0
	movs r0, #0x1c
	cmp r1, #0
	beq _08033356
_08033350:
	movs r0, #4
	b _08033356
_08033354:
	movs r0, #0x1c
_08033356:
	adds r0, r0, r5
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _08033362
_08033360:
	strb r5, [r4, #0x15]
_08033362:
	pop {r4, r5, pc}

	thumb_func_start sub_08033364
sub_08033364: @ 0x08033364
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _080333B4
	ldrb r0, [r4, #0xa]
	movs r3, #0x38
	cmp r0, #0
	beq _0803337E
	movs r3, #0x48
_0803337E:
	adds r0, r4, #0
	adds r2, r3, #0
	bl sub_080041A0
	cmp r0, #0
	beq _080333B4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080333AA
	ldr r0, _080333B0 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r1, #2
	movs r0, #0x1c
	ands r1, r0
	lsrs r1, r1, #2
	ldrb r0, [r4, #0x14]
	cmp r0, r1
	bne _080333B4
_080333AA:
	movs r0, #1
	b _080333B6
	.align 2, 0
_080333B0: .4byte gUnk_020000B0
_080333B4:
	movs r0, #0
_080333B6:
	pop {r4, pc}

	thumb_func_start sub_080333B8
sub_080333B8: @ 0x080333B8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080333D0 @ =gUnk_080CEB38
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080333D0: .4byte gUnk_080CEB38

	thumb_func_start sub_080333D4
sub_080333D4: @ 0x080333D4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0803340E
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0xf
	ands r0, r1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0803340E
	bl sub_0804B128
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x76
	adds r0, r4, #0
	bl sub_080A2CC0
_0803340E:
	ldr r2, _08033444 @ =gUnk_080CEB50
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	movs r1, #7
	ands r0, r1
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08033440
	adds r0, r4, #0
	bl sub_0803350C
_08033440:
	pop {r4, pc}
	.align 2, 0
_08033444: .4byte gUnk_080CEB50

	thumb_func_start sub_08033448
sub_08033448: @ 0x08033448
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #1
	cmp r0, #0x1d
	bhi _080334E0
	lsls r0, r0, #2
	ldr r1, _08033464 @ =_08033468
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033464: .4byte _08033468
_08033468: @ jump table
	.4byte _080334FA @ case 0
	.4byte _080334E0 @ case 1
	.4byte _080334E0 @ case 2
	.4byte _080334E0 @ case 3
	.4byte _080334E0 @ case 4
	.4byte _080334E0 @ case 5
	.4byte _080334E0 @ case 6
	.4byte _080334E0 @ case 7
	.4byte _080334E0 @ case 8
	.4byte _080334E0 @ case 9
	.4byte _080334E0 @ case 10
	.4byte _080334E0 @ case 11
	.4byte _080334E0 @ case 12
	.4byte _080334E0 @ case 13
	.4byte _080334FA @ case 14
	.4byte _080334E0 @ case 15
	.4byte _080334E0 @ case 16
	.4byte _080334E0 @ case 17
	.4byte _080334FA @ case 18
	.4byte _080334E0 @ case 19
	.4byte _080334E0 @ case 20
	.4byte _080334E0 @ case 21
	.4byte _080334E0 @ case 22
	.4byte _080334E0 @ case 23
	.4byte _080334E0 @ case 24
	.4byte _080334E0 @ case 25
	.4byte _080334FA @ case 26
	.4byte _080334E0 @ case 27
	.4byte _080334FA @ case 28
	.4byte _080334FA @ case 29
_080334E0:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0
	bl sub_080A2960
	adds r1, r0, #0
	cmp r1, #0
	beq _080334F6
	adds r0, r4, #0
	bl sub_0806FA24
_080334F6:
	bl sub_0805E780
_080334FA:
	ldr r1, _08033504 @ =gUnk_080CEB38
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08033504: .4byte gUnk_080CEB38

	thumb_func_start nullsub_158
nullsub_158: @ 0x08033508
	bx lr
	.align 2, 0

	thumb_func_start sub_0803350C
sub_0803350C: @ 0x0803350C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08033520
	adds r0, r4, #0
	bl sub_0806F69C
_08033520:
	adds r2, r4, #0
	adds r2, #0x76
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803353A
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	bl sub_080A2CC0
_0803353A:
	pop {r4, pc}

	thumb_func_start sub_0803353C
sub_0803353C: @ 0x0803353C
	push {lr}
	ldr r1, _08033548 @ =gUnk_080CEB74
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08033548: .4byte gUnk_080CEB74

	thumb_func_start sub_0803354C
sub_0803354C: @ 0x0803354C
	push {lr}
	ldr r2, _08033560 @ =gUnk_080CEB8C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08033560: .4byte gUnk_080CEB8C

	thumb_func_start sub_08033564
sub_08033564: @ 0x08033564
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033628
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0xe
	beq _080335E4
	cmp r0, #0xe
	bgt _08033586
	cmp r0, #0
	beq _08033590
	b _08033628
_08033586:
	cmp r0, #0x14
	beq _080335EE
	cmp r0, #0x15
	beq _080335E4
	b _08033628
_08033590:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x9f
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r2, _080335DC @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r1, _080335E0 @ =gUnk_02002A40
	ldrb r2, [r4, #0xa]
	adds r0, r2, #1
	adds r3, r1, #0
	adds r3, #0xba
	strb r0, [r3]
	adds r1, #0xc8
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	lsls r2, r2, #0x18
	cmp r2, #0
	beq _08033628
	bl sub_0805E780
	b _08033628
	.align 2, 0
_080335DC: .4byte gUnk_03003F80
_080335E0: .4byte gUnk_02002A40
_080335E4:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	b _08033628
_080335EE:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08033624
	str r1, [r4, #0x54]
	movs r0, #0xe
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0806FA24
_08033624:
	bl sub_0805E780
_08033628:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803362C
sub_0803362C: @ 0x0803362C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08033648
	ldr r0, _0803364C @ =gUnk_080CEB98
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08033648:
	pop {r4, pc}
	.align 2, 0
_0803364C: .4byte gUnk_080CEB98

	thumb_func_start sub_08033650
sub_08033650: @ 0x08033650
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_08033658
sub_08033658: @ 0x08033658
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08033660
sub_08033660: @ 0x08033660
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08033672
	adds r0, r4, #0
	bl sub_0804A7D4
_08033672:
	pop {r4, pc}

	thumb_func_start sub_08033674
sub_08033674: @ 0x08033674
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1c]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08033744
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080336A8
sub_080336A8: @ 0x080336A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080336C0
	adds r0, r4, #0
	bl sub_08033744
	b _080336CE
_080336C0:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080336CE
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
_080336CE:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080336DC
sub_080336DC: @ 0x080336DC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	beq _0803371E
	cmp r0, #0xc
	bgt _080336FC
	cmp r0, #0
	beq _0803372E
	b _08033740
_080336FC:
	cmp r0, #0x18
	beq _08033716
	cmp r0, #0x24
	bne _08033740
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	b _08033740
_08033716:
	adds r0, r2, #0
	bl sub_080A29BC
	b _08033740
_0803371E:
	ldrb r0, [r2, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #0x18]
	b _08033740
_0803372E:
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	bl sub_08033744
_08033740:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08033744
sub_08033744: @ 0x08033744
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	movs r0, #0xff
	ands r5, r0
	ldr r1, _0803378C @ =gUnk_080CEBA4
	movs r0, #0x70
	ands r0, r5
	lsrs r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r6, #0xe]
	movs r0, #0xc
	ands r0, r5
	lsls r4, r0, #1
	adds r0, r6, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08033796
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08033796
	adds r0, r6, #0
	bl sub_08049EE4
	adds r4, r0, #0
	movs r0, #0x80
	ands r5, r0
	cmp r5, #0
	beq _08033790
	adds r4, #4
	b _08033792
	.align 2, 0
_0803378C: .4byte gUnk_080CEBA4
_08033790:
	adds r4, #0x1c
_08033792:
	movs r0, #0x18
	ands r4, r0
_08033796:
	strb r4, [r6, #0x15]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803379C
sub_0803379C: @ 0x0803379C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080337B8 @ =gUnk_080CEBEC
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_080337B8: .4byte gUnk_080CEBEC

	thumb_func_start sub_080337BC
sub_080337BC: @ 0x080337BC
	push {lr}
	ldr r2, _080337D0 @ =gUnk_080CEC04
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080337D0: .4byte gUnk_080CEC04

	thumb_func_start sub_080337D4
sub_080337D4: @ 0x080337D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080337E8
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080337E8:
	ldr r1, _08033868 @ =gUnk_080CEBEC
	adds r0, r4, #0
	bl sub_0804AA30
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08033864
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803381A
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0803381A
	adds r0, r4, #0
	bl sub_08033E1C
_0803381A:
	ldrb r1, [r5]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x14
	bne _08033864
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	beq _08033864
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x49
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08033D78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
_08033864:
	pop {r4, r5, pc}
	.align 2, 0
_08033868: .4byte gUnk_080CEBEC

	thumb_func_start nullsub_159
nullsub_159: @ 0x0803386C
	bx lr
	.align 2, 0

	thumb_func_start sub_08033870
sub_08033870: @ 0x08033870
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001242
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	beq _0803388E
	adds r0, r4, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _0803388E
	adds r0, r4, #0
	bl sub_08033E1C
_0803388E:
	pop {r4, pc}

	thumb_func_start sub_08033890
sub_08033890: @ 0x08033890
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xc]
	strb r1, [r6, #0xe]
	strb r1, [r6, #0xf]
	ldr r0, [r6, #0x2c]
	ldr r3, _0803394C @ =0xFFF00000
	ands r0, r3
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r0, r2
	str r0, [r6, #0x7c]
	adds r4, r6, #0
	adds r4, #0x80
	ldr r0, [r6, #0x30]
	ands r0, r3
	orrs r0, r2
	str r0, [r4]
	ldr r0, [r6, #0x7c]
	str r0, [r6, #0x2c]
	ldr r0, [r4]
	str r0, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0x79
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _08033950 @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r6, #0
	adds r4, #0x74
	strh r1, [r4]
	ldrh r0, [r4]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r0, _08033954 @ =0x00004022
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl sub_0800015E
	ldrb r1, [r6, #0xa]
	movs r0, #0x7d
	movs r2, #0
	bl sub_080A2960
	adds r4, r0, #0
	cmp r4, #0
	bne _08033928
	bl sub_0805E780
_08033928:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
	str r4, [r6, #0x54]
	str r6, [r4, #0x50]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _08033940
	adds r0, r6, #0
	bl sub_08033EA8
_08033940:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803394C: .4byte 0xFFF00000
_08033950: .4byte gUnk_03000BF0
_08033954: .4byte 0x00004022

	thumb_func_start sub_08033958
sub_08033958: @ 0x08033958
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033982
	adds r0, r4, #0
	bl sub_08033E1C
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B9B8
	b _08033A72
_08033982:
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #0
	beq _08033992
	subs r0, #1
	strb r0, [r1]
	b _08033A72
_08033992:
	ldr r0, [r4, #0x7c]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_0804A024
	adds r5, r0, #0
	cmp r5, #0x10
	beq _080339E0
	cmp r5, #0x10
	bhi _080339BC
	cmp r5, #0
	beq _080339C6
	cmp r5, #8
	beq _080339F0
	b _08033A10
_080339BC:
	cmp r5, #0x18
	beq _08033A00
	cmp r5, #0xff
	bne _08033A10
	b _08033A72
_080339C6:
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033A72
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, _080339DC @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	b _08033A0A
	.align 2, 0
_080339DC: .4byte gLinkEntity
_080339E0:
	ldr r0, _080339EC @ =gLinkEntity
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	b _08033A0A
	.align 2, 0
_080339EC: .4byte gLinkEntity
_080339F0:
	ldr r0, _080339FC @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	b _08033A0A
	.align 2, 0
_080339FC: .4byte gLinkEntity
_08033A00:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r1, _08033A74 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r1, r2]
_08033A0A:
	subs r0, r0, r1
	cmp r0, #0x30
	bgt _08033A72
_08033A10:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08033A1E
	bl sub_0806F520
	cmp r0, #0
	bne _08033A72
_08033A1E:
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r0, [r1]
	cmp r0, #0
	bne _08033A2C
	movs r0, #1
	strb r0, [r1]
_08033A2C:
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0x15]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	ldr r1, _08033A78 @ =0xFFF00000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B9B8
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08033A72:
	pop {r4, r5, pc}
	.align 2, 0
_08033A74: .4byte gLinkEntity
_08033A78: .4byte 0xFFF00000

	thumb_func_start sub_08033A7C
sub_08033A7C: @ 0x08033A7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033A90
	adds r0, r4, #0
	bl sub_08033E1C
	b _08033AC8
_08033A90:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033AC8
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x59
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
_08033AC8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08033ACC
sub_08033ACC: @ 0x08033ACC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033AE0
	adds r0, r4, #0
	bl sub_08033E1C
	b _08033B42
_08033AE0:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08033AF8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08033B42
_08033AF8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033B3C
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldr r2, [r4, #0x2c]
	ldr r1, _08033B38 @ =0xFFF00000
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x30]
	str r2, [r4, #0x7c]
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _08033B42
	.align 2, 0
_08033B38: .4byte 0xFFF00000
_08033B3C:
	adds r0, r4, #0
	bl sub_08033D78
_08033B42:
	pop {r4, pc}

	thumb_func_start sub_08033B44
sub_08033B44: @ 0x08033B44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_08033DF0
	cmp r0, #0
	beq _08033B62
	adds r0, r4, #0
	bl sub_08033E1C
	b _08033C82
_08033B62:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08033B76
	b _08033C82
_08033B76:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0
	mov r8, r0
	adds r1, r4, #0
	adds r1, #0x80
	str r1, [sp, #4]
	adds r6, r4, #0
	adds r6, #0x29
	adds r2, r4, #0
	adds r2, #0x7b
	str r2, [sp]
	adds r5, r4, #0
	adds r5, #0x74
	adds r3, r4, #0
	adds r3, #0x38
	str r3, [sp, #8]
	movs r7, #0x76
	adds r7, r7, r4
	mov sl, r7
	ldr r0, _08033C20 @ =gUnk_03000BF0
	mov sb, r0
_08033BB2:
	ldr r1, [r4, #0x2c]
	ldr r3, _08033C24 @ =0xFFF00000
	ands r1, r3
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r1, r2
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	ands r0, r3
	orrs r0, r2
	str r0, [r4, #0x30]
	str r1, [r4, #0x7c]
	ldr r1, [sp, #4]
	str r0, [r1]
	ldrb r0, [r6]
	movs r2, #0x39
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6]
	movs r0, #0x78
	ldr r3, [sp]
	strb r0, [r3]
	movs r7, #0x2e
	ldrsh r2, [r4, r7]
	mov r1, sb
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r7, #0x32
	ldrsh r0, [r4, r7]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	strh r2, [r5]
	ldrh r0, [r5]
	ldr r2, [sp, #8]
	ldrb r1, [r2]
	bl sub_080001DA
	mov r3, sl
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r7, _08033C28 @ =0x00004022
	cmp r0, r7
	beq _08033C2C
	movs r0, #1
	add r8, r0
	b _08033C68
	.align 2, 0
_08033C20: .4byte gUnk_03000BF0
_08033C24: .4byte 0xFFF00000
_08033C28: .4byte 0x00004022
_08033C2C:
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	cmp r0, #2
	beq _08033C54
	cmp r0, #2
	bgt _08033C42
	cmp r0, #0
	beq _08033C4C
	b _08033C68
_08033C42:
	cmp r0, #4
	beq _08033C5A
	cmp r0, #6
	beq _08033C62
	b _08033C68
_08033C4C:
	ldrh r0, [r4, #0x32]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	b _08033C68
_08033C54:
	ldrh r0, [r4, #0x2e]
	subs r0, #0x10
	b _08033C66
_08033C5A:
	ldrh r0, [r4, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	b _08033C68
_08033C62:
	ldrh r0, [r4, #0x2e]
	adds r0, #0x10
_08033C66:
	strh r0, [r4, #0x2e]
_08033C68:
	mov r1, r8
	cmp r1, #0
	beq _08033BB2
	ldr r0, _08033C90 @ =0x00004022
	ldrh r1, [r5]
	ldr r3, [sp, #8]
	ldrb r2, [r3]
	bl sub_0800015E
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08033C82:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08033C90: .4byte 0x00004022

	thumb_func_start sub_08033C94
sub_08033C94: @ 0x08033C94
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_08004276
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #1
	beq _08033CD2
	cmp r0, #1
	bgt _08033CB2
	cmp r0, #0
	beq _08033CB8
	b _08033D76
_08033CB2:
	cmp r0, #2
	beq _08033D18
	b _08033D76
_08033CB8:
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08033CD2
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_08033CD2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08033D76
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x63
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #0x14
	strb r0, [r4, #0x15]
	bl sub_08000E50
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08033D12
	cmp r1, #2
	beq _08033D68
	b _08033D6E
_08033D12:
	ldrb r0, [r4, #0x15]
	adds r0, #8
	b _08033D6C
_08033D18:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08033D24
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08033D2A
_08033D24:
	adds r0, r4, #0
	bl sub_08033D78
_08033D2A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033D76
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #0x14
	strb r0, [r4, #0x15]
	bl sub_08000E50
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _08033D62
	cmp r1, #3
	beq _08033D68
	b _08033D6E
_08033D62:
	ldrb r0, [r4, #0x15]
	adds r0, #8
	b _08033D6C
_08033D68:
	ldrb r0, [r4, #0x15]
	adds r0, #0x18
_08033D6C:
	strb r0, [r4, #0x15]
_08033D6E:
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_08033D76:
	pop {r4, pc}

	thumb_func_start sub_08033D78
sub_08033D78: @ 0x08033D78
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0x15]
	movs r2, #0x18
	ands r2, r0
	lsrs r2, r2, #2
	ldr r0, _08033DE4 @ =gUnk_080CEC1C
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r4, _08033DE8 @ =gUnk_03000BF0
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r3, #0x3f
	ands r5, r3
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r5, r0
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_080002B0
	adds r1, r0, #0
	ldr r0, _08033DEC @ =0x000001C5
	cmp r1, r0
	bhi _08033DCE
	subs r0, #1
	cmp r1, r0
	bhs _08033DE2
_08033DCE:
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_080002E0
	subs r0, #1
	cmp r0, #0x3e
	bls _08033DE2
	adds r0, r6, #0
	bl sub_080AEF88
_08033DE2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08033DE4: .4byte gUnk_080CEC1C
_08033DE8: .4byte gUnk_03000BF0
_08033DEC: .4byte 0x000001C5

	thumb_func_start sub_08033DF0
sub_08033DF0: @ 0x08033DF0
	push {lr}
	movs r2, #0
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _08033E16
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	beq _08033E10
	cmp r0, #3
	bgt _08033E0A
	cmp r0, #2
	beq _08033E16
	b _08033E18
_08033E0A:
	cmp r0, #4
	bne _08033E18
	b _08033E16
_08033E10:
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	bls _08033E18
_08033E16:
	movs r2, #1
_08033E18:
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_08033E1C
sub_08033E1C: @ 0x08033E1C
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r3, #5
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x79
	strb r2, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	ldr r1, _08033EA4 @ =0xFFF00000
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x19
	strb r0, [r1]
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	adds r0, #0xd0
	strh r0, [r4, #0x24]
	str r2, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_080A2CFC
	pop {r4, pc}
	.align 2, 0
_08033EA4: .4byte 0xFFF00000

	thumb_func_start sub_08033EA8
sub_08033EA8: @ 0x08033EA8
	push {lr}
	adds r2, r0, #0
	ldr r0, _08033EC4 @ =gUnk_03003F80
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08033EC8
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x95
	b _08033ECE
	.align 2, 0
_08033EC4: .4byte gUnk_03003F80
_08033EC8:
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x63
_08033ECE:
	strb r0, [r1]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08033ED4
sub_08033ED4: @ 0x08033ED4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08033EEC @ =gUnk_080CEC88
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08033EEC: .4byte gUnk_080CEC88

	thumb_func_start sub_08033EF0
sub_08033EF0: @ 0x08033EF0
	push {lr}
	ldr r2, _08033F04 @ =gUnk_080CECA0
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08033F04: .4byte gUnk_080CECA0

	thumb_func_start sub_08033F08
sub_08033F08: @ 0x08033F08
	push {lr}
	ldr r1, _08033F14 @ =gUnk_080CEC88
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08033F14: .4byte gUnk_080CEC88

	thumb_func_start nullsub_160
nullsub_160: @ 0x08033F18
	bx lr
	.align 2, 0

	thumb_func_start sub_08033F1C
sub_08033F1C: @ 0x08033F1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08033F38 @ =gUnk_080CECB4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0803499C
	pop {r4, pc}
	.align 2, 0
_08033F38: .4byte gUnk_080CECB4

	thumb_func_start sub_08033F3C
sub_08033F3C: @ 0x08033F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08033F64 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x42
	bhi _08033FFA
	ldr r0, _08033F68 @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033F6C
	adds r0, r4, #0
	bl sub_08034420
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	b _08033F70
	.align 2, 0
_08033F64: .4byte gUnk_03003DBC
_08033F68: .4byte gUnk_030010A0
_08033F6C:
	movs r0, #1
	strb r0, [r4, #0xc]
_08033F70:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r3, r4, #0
	adds r3, #0x6d
	ldrb r0, [r3]
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	movs r0, #0x36
	movs r1, #1
	bl sub_0804AA60
	adds r5, r0, #0
	str r4, [r5, #0x50]
	movs r0, #0x7e
	movs r1, #0
	movs r2, #0
	bl sub_080A2960
	str r4, [r0, #0x50]
	ldr r0, _08033FD0 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r1, [r0]
	cmp r1, #0
	bne _08033FD4
	movs r0, #0xd
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0xfc
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _08033FFA
	.align 2, 0
_08033FD0: .4byte gUnk_030010A0
_08033FD4:
	movs r0, #0x44
	movs r1, #0
	bl sub_0804AA60
	str r4, [r0, #0x50]
	str r4, [r0, #0x78]
	str r0, [r4, #0x74]
	movs r0, #0x44
	movs r1, #1
	bl sub_0804AA60
	str r4, [r0, #0x50]
	str r5, [r0, #0x78]
	str r0, [r4, #0x78]
	movs r0, #0x36
	movs r1, #4
	bl sub_0804AA60
	str r4, [r0, #0x50]
_08033FFA:
	pop {r4, r5, pc}

	thumb_func_start sub_08033FFC
sub_08033FFC: @ 0x08033FFC
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xd]
	cmp r0, #7
	bls _08034008
	b _08034114
_08034008:
	lsls r0, r0, #2
	ldr r1, _08034014 @ =_08034018
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034014: .4byte _08034018
_08034018: @ jump table
	.4byte _0803413E @ case 0
	.4byte _08034038 @ case 1
	.4byte _0803413E @ case 2
	.4byte _08034056 @ case 3
	.4byte _08034068 @ case 4
	.4byte _0803413E @ case 5
	.4byte _08034090 @ case 6
	.4byte _080340C4 @ case 7
_08034038:
	movs r0, #2
	strb r0, [r3, #0xd]
	movs r0, #0x1e
	strb r0, [r3, #0xe]
	ldr r0, [r3, #0x74]
	ldr r2, [r0, #0x74]
	movs r1, #1
	strb r1, [r2, #0xd]
	ldr r0, [r3, #0x78]
	ldr r2, [r0, #0x74]
	strb r1, [r2, #0xd]
	adds r0, r3, #0
	bl sub_0801D230
	b _0803413E
_08034056:
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803413E
	movs r0, #4
	strb r0, [r3, #0xd]
	b _0803413E
_08034068:
	ldr r0, [r3, #0x34]
	ldr r1, _0803408C @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x36
	ldrsh r1, [r3, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803413E
	movs r0, #5
	strb r0, [r3, #0xd]
	adds r1, r3, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	b _0803413E
	.align 2, 0
_0803408C: .4byte 0xFFFF8000
_08034090:
	movs r1, #0
	movs r0, #7
	strb r0, [r3, #0xd]
	strb r1, [r3, #0xe]
	ldr r2, [r3, #0x74]
	movs r1, #1
	strb r1, [r2, #0xd]
	ldr r2, [r2, #0x74]
	movs r0, #4
	strb r0, [r2, #0xd]
	ldr r2, [r3, #0x78]
	strb r1, [r2, #0xd]
	ldr r2, [r2, #0x74]
	strb r0, [r2, #0xd]
	ldr r1, _080340C0 @ =gUnk_03000F50
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xf4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x68
	adds r0, #0xc0
	strh r0, [r1]
	b _0803413E
	.align 2, 0
_080340C0: .4byte gUnk_03000F50
_080340C4:
	ldrb r1, [r3, #0xe]
	adds r1, #1
	strb r1, [r3, #0xe]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x19
	ldr r4, _08034110 @ =gUnk_03000F50
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #8
	orrs r2, r0
	adds r0, r4, #0
	adds r0, #0x68
	strh r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x1f
	bls _0803413E
	movs r0, #8
	strb r0, [r3, #0xd]
	ldr r2, [r3, #0x74]
	movs r1, #3
	strb r1, [r2, #0xd]
	ldr r2, [r2, #0x74]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r2, [r3, #0x78]
	strb r1, [r2, #0xd]
	ldr r2, [r2, #0x74]
	strb r0, [r2, #0xd]
	ldrb r1, [r3, #0x19]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r3, #0x19]
	adds r1, r4, #0
	adds r1, #0x66
	movs r0, #0
	strh r0, [r1]
	b _0803413E
	.align 2, 0
_08034110: .4byte gUnk_03000F50
_08034114:
	ldr r0, [r3, #0x74]
	ldrb r1, [r0, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803413E
	ldr r1, _08034140 @ =gUnk_03000BF0
	ldr r0, _08034144 @ =gLinkEntity
	str r0, [r1, #0x30]
	adds r0, r3, #0
	bl sub_08034420
	ldr r0, _08034148 @ =gUnk_03003F80
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl sub_080791D0
	movs r0, #0x2e
	bl sub_080A3268
_0803413E:
	pop {r4, pc}
	.align 2, 0
_08034140: .4byte gUnk_03000BF0
_08034144: .4byte gLinkEntity
_08034148: .4byte gUnk_03003F80

	thumb_func_start sub_0803414C
sub_0803414C: @ 0x0803414C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08034194 @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	adds r2, r0, #0
	adds r2, #0xb8
	ldrh r0, [r1, #8]
	adds r3, r0, #0
	adds r3, #0x48
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	subs r0, r0, r2
	adds r0, #1
	cmp r0, #2
	bhi _080341A2
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	subs r0, r0, r3
	adds r0, #1
	cmp r0, #2
	bhi _080341A2
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _080341B6
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08034198
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0803442C
	b _080341B6
	.align 2, 0
_08034194: .4byte gUnk_03000BF0
_08034198:
	adds r0, r4, #0
	movs r1, #0x5a
	bl sub_0803442C
	b _080341B6
_080341A2:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_080341B6:
	pop {r4, r5, pc}

	thumb_func_start sub_080341B8
sub_080341B8: @ 0x080341B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080349D8
	cmp r0, #0
	beq _080341CC
	adds r0, r4, #0
	movs r1, #0x2d
	bl sub_0803442C
_080341CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080341D0
sub_080341D0: @ 0x080341D0
	push {lr}
	adds r2, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	beq _080341F2
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080341F2
	adds r0, r2, #0
	bl sub_0803443C
_080341F2:
	pop {pc}

	thumb_func_start sub_080341F4
sub_080341F4: @ 0x080341F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080347B4
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _0803420C
	adds r0, r4, #0
	bl sub_08034420
_0803420C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034210
sub_08034210: @ 0x08034210
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080347B4
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034238
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _08034238
	adds r0, r4, #0
	bl sub_08034420
	b _0803423E
_08034238:
	adds r0, r4, #0
	bl sub_08034830
_0803423E:
	pop {r4, pc}

	thumb_func_start sub_08034240
sub_08034240: @ 0x08034240
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	cmp r0, #0
	beq _08034260
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x95
	bhi _08034260
	adds r0, r4, #0
	bl sub_0803473C
_08034260:
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _08034270
	adds r0, r4, #0
	bl sub_08034420
_08034270:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034274
sub_08034274: @ 0x08034274
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080349D8
	cmp r0, #0
	beq _08034288
	adds r0, r4, #0
	bl sub_08034420
	b _0803429E
_08034288:
	adds r0, r4, #0
	bl sub_0803473C
	adds r0, r4, #0
	bl sub_08034A10
	cmp r0, #0
	beq _0803429E
	adds r0, r4, #0
	bl sub_080347FC
_0803429E:
	pop {r4, pc}

	thumb_func_start sub_080342A0
sub_080342A0: @ 0x080342A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080349D8
	cmp r0, #0
	beq _080342B2
	adds r0, r4, #0
	bl sub_08034420
_080342B2:
	pop {r4, pc}

	thumb_func_start sub_080342B4
sub_080342B4: @ 0x080342B4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, #0xff
	bne _080342C6
	adds r0, r1, #0
	bl sub_08034420
_080342C6:
	pop {pc}

	thumb_func_start sub_080342C8
sub_080342C8: @ 0x080342C8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r1, r0, #0
	cmp r1, #0
	beq _08034304
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080342E4
	ldr r0, _080342FC @ =0x00000115
	bl sub_080A3268
_080342E4:
	ldr r2, _08034300 @ =gUnk_080CECEC
	ldrb r0, [r4, #0xe]
	lsrs r0, r0, #1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	b _08034340
	.align 2, 0
_080342FC: .4byte 0x00000115
_08034300: .4byte gUnk_080CECEC
_08034304:
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08034340
	movs r0, #0xc
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x7e
	movs r1, #0
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r1, [r0]
	adds r0, #4
	strb r1, [r0]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
	ldr r0, _08034344 @ =0x000001A1
	bl sub_080A3268
_08034340:
	pop {r4, pc}
	.align 2, 0
_08034344: .4byte 0x000001A1

	thumb_func_start sub_08034348
sub_08034348: @ 0x08034348
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803435C
	subs r0, #1
	strh r0, [r1]
	b _08034388
_0803435C:
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08034370
	subs r0, r2, #1
	strh r0, [r4, #0x36]
	b _08034388
_08034370:
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _08034388
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08034420
_08034388:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803438C
sub_0803438C: @ 0x0803438C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	adds r1, r0, #0
	cmp r1, #0
	bne _080343A0
	adds r0, r5, #0
	adds r0, #0x45
	strb r1, [r0]
	b _08034414
_080343A0:
	subs r2, r0, #1
	strb r2, [r5, #0xe]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc0
	bls _080343C4
	ldr r0, _080343C0 @ =gUnk_080CED06
	movs r1, #3
	ands r2, r1
	adds r0, r2, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x62
	strb r1, [r0]
	b _08034414
	.align 2, 0
_080343C0: .4byte gUnk_080CED06
_080343C4:
	movs r0, #0x1f
	ands r2, r0
	cmp r2, #0
	bne _08034414
	ldr r4, _08034418 @ =gUnk_080CED02
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _08034414
	ldrb r1, [r5, #0xe]
	lsrs r1, r1, #4
	ldr r0, _0803441C @ =gUnk_080CECF4
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_08034414:
	pop {r4, r5, pc}
	.align 2, 0
_08034418: .4byte gUnk_080CED02
_0803441C: .4byte gUnk_080CECF4

	thumb_func_start sub_08034420
sub_08034420: @ 0x08034420
	movs r1, #2
	strb r1, [r0, #0xc]
	adds r0, #0x7d
	movs r1, #3
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0803442C
sub_0803442C: @ 0x0803442C
	movs r2, #4
	strb r2, [r0, #0xc]
	strb r1, [r0, #0xe]
	adds r0, #0x7d
	movs r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803443C
sub_0803443C: @ 0x0803443C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7d
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803445C @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhi _08034460
	adds r0, r2, #0
	bl sub_080344BC
	b _08034472
	.align 2, 0
_0803445C: .4byte gUnk_030010A0
_08034460:
	cmp r0, #0x3c
	bhi _0803446C
	adds r0, r2, #0
	bl sub_08034498
	b _08034472
_0803446C:
	adds r0, r2, #0
	bl sub_08034474
_08034472:
	pop {pc}

	thumb_func_start sub_08034474
sub_08034474: @ 0x08034474
	push {r4, lr}
	ldr r2, _08034494 @ =gUnk_080CED0C
	adds r4, r0, #0
	adds r4, #0x7c
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08034494: .4byte gUnk_080CED0C

	thumb_func_start sub_08034498
sub_08034498: @ 0x08034498
	push {r4, lr}
	ldr r2, _080344B8 @ =gUnk_080CED2C
	adds r4, r0, #0
	adds r4, #0x7c
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080344B8: .4byte gUnk_080CED2C

	thumb_func_start sub_080344BC
sub_080344BC: @ 0x080344BC
	push {r4, lr}
	ldr r2, _080344DC @ =gUnk_080CED4C
	adds r4, r0, #0
	adds r4, #0x7c
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080344DC: .4byte gUnk_080CED4C

	thumb_func_start sub_080344E0
sub_080344E0: @ 0x080344E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080344F8
	adds r0, r4, #0
	bl sub_080345A0
	b _0803451A
_080344F8:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0803450C
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08034514
_0803450C:
	adds r0, r4, #0
	bl sub_080345B8
	b _0803451A
_08034514:
	adds r0, r4, #0
	bl sub_080345A0
_0803451A:
	pop {r4, pc}

	thumb_func_start sub_0803451C
sub_0803451C: @ 0x0803451C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	bne _08034548
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0803453C
	adds r0, r4, #0
	bl sub_08034638
	b _08034556
_0803453C:
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08034550
_08034548:
	adds r0, r4, #0
	bl sub_08034618
	b _08034556
_08034550:
	adds r0, r4, #0
	bl sub_08034638
_08034556:
	pop {r4, pc}

	thumb_func_start sub_08034558
sub_08034558: @ 0x08034558
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08034570
	adds r0, r4, #0
	bl sub_08034658
	b _08034576
_08034570:
	adds r0, r4, #0
	bl sub_0803467C
_08034576:
	pop {r4, pc}

	thumb_func_start sub_08034578
sub_08034578: @ 0x08034578
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r1, [r0]
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080348A4
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080348A4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080345A0
sub_080345A0: @ 0x080345A0
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	movs r1, #1
	strb r1, [r2]
	ldr r1, [r0, #0x78]
	movs r2, #1
	bl sub_080348A4
	pop {pc}

	thumb_func_start sub_080345B8
sub_080345B8: @ 0x080345B8
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	movs r1, #2
	strb r1, [r2]
	ldr r1, [r0, #0x74]
	movs r2, #1
	bl sub_080348A4
	pop {pc}

	thumb_func_start sub_080345D0
sub_080345D0: @ 0x080345D0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080345FE
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
	cmp r0, #0
	bne _08034616
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
	b _08034616
_080345FE:
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
	cmp r0, #0
	bne _08034616
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
_08034616:
	pop {r4, pc}

	thumb_func_start sub_08034618
sub_08034618: @ 0x08034618
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	movs r1, #1
	strb r1, [r2]
	adds r2, #1
	movs r1, #0xb4
	strh r1, [r2]
	ldr r1, [r0, #0x78]
	movs r2, #3
	bl sub_080348A4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034638
sub_08034638: @ 0x08034638
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	movs r1, #2
	strb r1, [r2]
	adds r2, #1
	movs r1, #0xb4
	strh r1, [r2]
	ldr r1, [r0, #0x74]
	movs r2, #3
	bl sub_080348A4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034658
sub_08034658: @ 0x08034658
	push {r4, lr}
	movs r2, #0
	movs r1, #8
	strb r1, [r0, #0xc]
	adds r4, r0, #0
	adds r4, #0x7d
	strb r2, [r4]
	ldr r1, [r0, #0x78]
	movs r2, #4
	bl sub_080348A4
	cmp r0, #0
	bne _0803467A
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
_0803467A:
	pop {r4, pc}

	thumb_func_start sub_0803467C
sub_0803467C: @ 0x0803467C
	push {r4, lr}
	movs r2, #0
	movs r1, #8
	strb r1, [r0, #0xc]
	adds r4, r0, #0
	adds r4, #0x7d
	strb r2, [r4]
	ldr r1, [r0, #0x74]
	movs r2, #4
	bl sub_080348A4
	cmp r0, #0
	bne _0803469E
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
_0803469E:
	pop {r4, pc}

	thumb_func_start sub_080346A0
sub_080346A0: @ 0x080346A0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r1, [r0]
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080348A4
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080348A4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080346C8
sub_080346C8: @ 0x080346C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0xa
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803470C
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080348A4
	cmp r0, #0
	beq _080346F6
	ldr r1, [r4, #0x78]
	b _0803471C
_080346F6:
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #7
	bl sub_080348A4
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080348A4
	b _0803473A
_0803470C:
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080348A4
	cmp r0, #0
	beq _08034726
	ldr r1, [r4, #0x74]
_0803471C:
	adds r0, r4, #0
	movs r2, #7
	bl sub_080348A4
	b _0803473A
_08034726:
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080348A4
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #7
	bl sub_080348A4
_0803473A:
	pop {r4, pc}

	thumb_func_start sub_0803473C
sub_0803473C: @ 0x0803473C
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08034764
	ldr r0, [r3, #0x74]
	ldrb r0, [r0, #0xc]
	cmp r0, #0x28
	bhi _080347B0
	ldr r0, _08034760 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	adds r2, r0, #0
	subs r2, #0x60
	b _08034776
	.align 2, 0
_08034760: .4byte gLinkEntity
_08034764:
	ldr r0, [r3, #0x78]
	ldrb r0, [r0, #0xc]
	cmp r0, #0x28
	bhi _080347B0
	ldr r0, _08034790 @ =gLinkEntity
	movs r5, #0x2e
	ldrsh r0, [r0, r5]
	adds r2, r0, #0
	adds r2, #0x60
_08034776:
	ldr r0, _08034794 @ =gUnk_03000BF0
	ldrh r4, [r0, #6]
	subs r0, r2, #4
	movs r5, #0x2e
	ldrsh r1, [r3, r5]
	cmp r0, r1
	bls _08034798
	adds r0, r4, #0
	adds r0, #0xe0
	cmp r0, r1
	blo _080347B0
	movs r0, #8
	b _080347A8
	.align 2, 0
_08034790: .4byte gLinkEntity
_08034794: .4byte gUnk_03000BF0
_08034798:
	adds r0, r2, #4
	cmp r0, r1
	bhs _080347B0
	adds r0, r4, #0
	adds r0, #0x90
	cmp r0, r1
	bhi _080347B0
	movs r0, #0x18
_080347A8:
	strb r0, [r3, #0x15]
	adds r0, r3, #0
	bl sub_0806F69C
_080347B0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080347B4
sub_080347B4: @ 0x080347B4
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _080347D8 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r3, [r0, r1]
	ldr r0, _080347DC @ =gUnk_03000BF0
	ldrh r4, [r0, #6]
	subs r0, r3, #4
	movs r5, #0x2e
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bls _080347E0
	adds r0, r4, #0
	adds r0, #0xe0
	cmp r0, r1
	blo _080347F8
	movs r0, #8
	b _080347F0
	.align 2, 0
_080347D8: .4byte gLinkEntity
_080347DC: .4byte gUnk_03000BF0
_080347E0:
	adds r0, r3, #4
	cmp r0, r1
	bhs _080347F8
	adds r0, r4, #0
	adds r0, #0x90
	cmp r0, r1
	bhi _080347F8
	movs r0, #0x18
_080347F0:
	strb r0, [r2, #0x15]
	adds r0, r2, #0
	bl sub_0806F69C
_080347F8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080347FC
sub_080347FC: @ 0x080347FC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08034818
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #5
	bl sub_080348A4
	b _08034822
_08034818:
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #5
	bl sub_080348A4
_08034822:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
	pop {r4, pc}

	thumb_func_start sub_08034830
sub_08034830: @ 0x08034830
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080349D8
	cmp r0, #0
	beq _0803484C
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x80
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080345D0
	b _080348A0
_0803484C:
	adds r0, r4, #0
	bl sub_08034A10
	cmp r0, #0
	beq _080348A0
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08034876
	adds r0, r4, #0
	bl sub_080349D8
	cmp r0, #0
	beq _080348A0
	adds r0, r4, #0
	bl sub_08034420
	b _080348A0
_08034876:
	adds r2, r4, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08034896
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
	b _080348A0
_08034896:
	ldr r1, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080348A4
_080348A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080348A4
sub_080348A4: @ 0x080348A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _080348C6
	movs r2, #5
	movs r0, #0x7d
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x10
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	b _080348C8
_080348C6:
	movs r2, #0xa
_080348C8:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _080348F0
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r2, [r0]
	ldrb r1, [r3, #0xa]
	adds r3, r0, #0
	cmp r1, #0
	bne _080348E6
	movs r0, #1
	b _080348E8
_080348E6:
	movs r0, #2
_080348E8:
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08034998
_080348F0:
	cmp r5, #8
	bhi _08034996
	lsls r0, r5, #2
	ldr r1, _08034900 @ =_08034904
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034900: .4byte _08034904
_08034904: @ jump table
	.4byte _08034928 @ case 0
	.4byte _0803492E @ case 1
	.4byte _0803493C @ case 2
	.4byte _0803494A @ case 3
	.4byte _0803493C @ case 4
	.4byte _08034958 @ case 5
	.4byte _08034966 @ case 6
	.4byte _0803496C @ case 7
	.4byte _08034982 @ case 8
_08034928:
	movs r0, #3
	strb r0, [r3, #0xc]
	b _08034996
_0803492E:
	movs r0, #4
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7c
	movs r0, #3
	strb r0, [r1]
	b _08034996
_0803493C:
	movs r0, #4
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7c
	movs r0, #1
	strb r0, [r1]
	b _08034996
_0803494A:
	movs r0, #0xf
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7e
	movs r0, #0xb4
	strh r0, [r1]
	b _08034996
_08034958:
	movs r0, #0xf
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7e
	movs r0, #1
	strh r0, [r1]
	b _08034996
_08034966:
	movs r0, #0x1e
	strb r0, [r3, #0xc]
	b _08034996
_0803496C:
	movs r0, #0x1b
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	movs r1, #5
	bl sub_08004260
	b _08034996
_08034982:
	ldrb r0, [r3, #0xa]
	adds r2, r0, #2
	movs r0, #0x36
	adds r1, r2, #0
	bl sub_0804AA60
	adds r3, r0, #0
	cmp r3, #0
	beq _08034996
	str r4, [r3, #0x50]
_08034996:
	movs r0, #1
_08034998:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803499C
sub_0803499C: @ 0x0803499C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0xc
	beq _080349D0
	adds r0, r3, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _080349D0
	ldr r2, _080349D4 @ =gUnk_080CED6C
	ldrb r0, [r3, #0xf]
	adds r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r3, #0x36]
_080349D0:
	pop {pc}
	.align 2, 0
_080349D4: .4byte gUnk_080CED6C

	thumb_func_start sub_080349D8
sub_080349D8: @ 0x080349D8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	cmp r1, #3
	beq _08034A08
	cmp r1, #1
	bne _080349F6
	adds r0, r2, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #0xa
	b _08034A02
_080349F6:
	cmp r1, #2
	bne _08034A0C
	adds r0, r2, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #5
_08034A02:
	ands r0, r1
	cmp r0, #0
	beq _08034A0C
_08034A08:
	movs r0, #1
	b _08034A0E
_08034A0C:
	movs r0, #0
_08034A0E:
	pop {pc}

	thumb_func_start sub_08034A10
sub_08034A10: @ 0x08034A10
	push {r4, lr}
	adds r1, r0, #0
	adds r3, r1, #0
	adds r3, #0x7d
	ldrb r2, [r3]
	movs r0, #0x60
	ands r0, r2
	cmp r0, #0x40
	beq _08034A52
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08034A56
	adds r4, r1, #0
	adds r4, #0x80
	ldrb r1, [r4]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08034A3E
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r3]
_08034A3E:
	ldrb r1, [r4]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08034A7E
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _08034A7E
_08034A52:
	movs r0, #1
	b _08034A80
_08034A56:
	adds r4, r1, #0
	adds r4, #0x80
	ldrb r1, [r4]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08034A6A
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r3]
_08034A6A:
	ldrb r1, [r4]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08034A7E
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	beq _08034A52
_08034A7E:
	movs r0, #0
_08034A80:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034A84
sub_08034A84: @ 0x08034A84
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08034A98
	adds r0, r4, #0
	bl sub_0805E7BC
	b _08034AC2
_08034A98:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08034ABA
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08034ABA:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
_08034AC2:
	pop {r4, pc}

	thumb_func_start sub_08034AC4
sub_08034AC4: @ 0x08034AC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA48
	ldr r1, _08034AE8 @ =gUnk_080CED74
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08034AE8: .4byte gUnk_080CED74

	thumb_func_start sub_08034AEC
sub_08034AEC: @ 0x08034AEC
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	ldrb r1, [r0, #0xa]
	adds r1, #1
	bl sub_08004260
	ldr r0, _08034B08 @ =0x00000151
	bl sub_080A3268
	pop {pc}
	.align 2, 0
_08034B08: .4byte 0x00000151

	thumb_func_start sub_08034B0C
sub_08034B0C: @ 0x08034B0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08034B1A
	subs r0, #1
	b _08034B34
_08034B1A:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034B36
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x50
_08034B34:
	strb r0, [r4, #0xe]
_08034B36:
	pop {r4, pc}

	thumb_func_start sub_08034B38
sub_08034B38: @ 0x08034B38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034B58
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r1, #3
	adds r0, r4, #0
	bl sub_08004260
	b _08034B9A
_08034B58:
	movs r0, #0xe
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _08034B9A
	ldrb r0, [r4, #0xa]
	subs r0, #2
	strb r0, [r5, #0xa]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034B78
	ldrb r1, [r4, #0xe]
	movs r0, #0xa8
	subs r0, r0, r1
	b _08034B7C
_08034B78:
	ldrb r0, [r4, #0xe]
	adds r0, #0x58
_08034B7C:
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #1
	ldr r1, _08034B9C @ =gUnk_080CED84
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA48
_08034B9A:
	pop {r4, r5, pc}
	.align 2, 0
_08034B9C: .4byte gUnk_080CED84

	thumb_func_start sub_08034BA0
sub_08034BA0: @ 0x08034BA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034BC4
	ldr r0, [r4, #0x50]
	adds r0, #0x7e
	movs r1, #0xff
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0805E7BC
_08034BC4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034BC8
sub_08034BC8: @ 0x08034BC8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08034BDE
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08034BDE:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r0, r4, #0
	bl sub_0800445C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08034BFE
	adds r0, r4, #0
	bl sub_08034C00
_08034BFE:
	pop {r4, pc}

	thumb_func_start sub_08034C00
sub_08034C00: @ 0x08034C00
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _08034C44 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034C5A
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _08034C48 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	movs r4, #0x32
	ldrsh r1, [r3, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	adds r1, #0xd
	movs r2, #3
	movs r3, #3
	bl sub_0800293E
	cmp r0, #0
	beq _08034C5A
	ldr r0, _08034C4C @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _08034C54
	ldr r0, _08034C50 @ =gUnk_080CED88
	bl sub_08080840
	b _08034C5A
	.align 2, 0
_08034C44: .4byte gUnk_03003F80
_08034C48: .4byte gUnk_03000BF0
_08034C4C: .4byte gUnk_030010A0
_08034C50: .4byte gUnk_080CED88
_08034C54:
	ldr r0, _08034C5C @ =gUnk_080CED9C
	bl sub_08080840
_08034C5A:
	pop {r4, pc}
	.align 2, 0
_08034C5C: .4byte gUnk_080CED9C

	thumb_func_start sub_08034C60
sub_08034C60: @ 0x08034C60
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08034C78 @ =gUnk_080CEE90
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08034C78: .4byte gUnk_080CEE90

	thumb_func_start sub_08034C7C
sub_08034C7C: @ 0x08034C7C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	beq _08034C9C
	ldr r0, _08034C98 @ =gUnk_080CEEA4
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08034CA2
	.align 2, 0
_08034C98: .4byte gUnk_080CEEA4
_08034C9C:
	adds r0, r2, #0
	bl sub_08034E18
_08034CA2:
	pop {pc}

	thumb_func_start sub_08034CA4
sub_08034CA4: @ 0x08034CA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08034FA0
	ldr r1, _08034CB8 @ =gUnk_080CEE90
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08034CB8: .4byte gUnk_080CEE90

	thumb_func_start sub_08034CBC
sub_08034CBC: @ 0x08034CBC
	push {lr}
	bl sub_0804A7D4
	pop {pc}

	thumb_func_start sub_08034CC4
sub_08034CC4: @ 0x08034CC4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08035084
	cmp r0, #0
	beq _08034D42
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xf]
	adds r2, r5, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_08034F70
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08004260
	ldr r0, _08034D44 @ =0x00004022
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08034D48 @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	movs r0, #0x37
	movs r1, #2
	bl sub_0804AA60
	adds r1, r0, #0
	cmp r1, #0
	beq _08034D42
	str r1, [r5, #0x54]
	str r5, [r1, #0x50]
	adds r0, r5, #0
	bl sub_0806FA24
_08034D42:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08034D44: .4byte 0x00004022
_08034D48: .4byte gUnk_03000BF0

	thumb_func_start sub_08034D4C
sub_08034D4C: @ 0x08034D4C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r6, r5, #0
	adds r6, #0x78
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034DC4
	ldrb r0, [r5, #0xf]
	cmp r0, #7
	bhi _08034DBC
	movs r0, #0x4b
	movs r1, #0
	bl sub_0804AA60
	adds r4, r0, #0
	cmp r4, #0
	beq _08034DBC
	bl sub_08000E50
	movs r1, #5
	bl __modsi3
	adds r0, #0xc
	strb r0, [r4, #0x15]
	ldr r1, _08034DB8 @ =gUnk_03000BF0
	ldrh r0, [r1, #0x1e]
	lsrs r0, r0, #1
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #8
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08016A04
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r6]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	b _08034DC4
	.align 2, 0
_08034DB8: .4byte gUnk_03000BF0
_08034DBC:
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0x78
	strh r0, [r1]
_08034DC4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08034DC8
sub_08034DC8: @ 0x08034DC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08034E10 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034E0E
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08034E14 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	bl sub_0805E780
_08034E0E:
	pop {r4, r5, pc}
	.align 2, 0
_08034E10: .4byte gUnk_030010A0
_08034E14: .4byte gUnk_03000BF0

	thumb_func_start sub_08034E18
sub_08034E18: @ 0x08034E18
	push {lr}
	ldr r2, _08034E2C @ =gUnk_080CEEB0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08034E2C: .4byte gUnk_080CEEB0

	thumb_func_start sub_08034E30
sub_08034E30: @ 0x08034E30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xa]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034E68
sub_08034E68: @ 0x08034E68
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08034EBC
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	cmp r0, #0
	beq _08034E8A
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08035120
_08034E8A:
	ldr r0, _08034EB0 @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034EB8
	bl sub_08079F8C
	cmp r0, #0
	beq _08034EBC
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r1, _08034EB4 @ =gUnk_08012E20
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	b _08034EBC
	.align 2, 0
_08034EB0: .4byte gUnk_030010A0
_08034EB4: .4byte gUnk_08012E20
_08034EB8:
	bl sub_0805E780
_08034EBC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034EC0
sub_08034EC0: @ 0x08034EC0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08034ED6
	adds r0, r1, #0
	bl sub_08035120
	bl sub_0805E780
_08034ED6:
	pop {pc}

	thumb_func_start sub_08034ED8
sub_08034ED8: @ 0x08034ED8
	push {lr}
	movs r1, #0
	bl sub_0807DDAC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034EE4
sub_08034EE4: @ 0x08034EE4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08034F46
	bl sub_08000E50
	adds r4, r0, #0
	ldr r0, _08034F50 @ =gUnk_080CEEC8
	movs r1, #3
	ands r1, r4
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl CreateFX
	adds r3, r0, #0
	cmp r3, #0
	beq _08034F46
	lsrs r1, r4, #2
	movs r0, #0x77
	ands r1, r0
	lsls r1, r1, #1
	adds r1, #1
	ldr r2, _08034F54 @ =gUnk_03000BF0
	ldrh r0, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	lsrs r1, r4, #9
	movs r0, #0x7e
	ands r1, r0
	adds r1, #1
	ldrh r0, [r2, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_08016A04
_08034F46:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	pop {r4, r5, pc}
	.align 2, 0
_08034F50: .4byte gUnk_080CEEC8
_08034F54: .4byte gUnk_03000BF0

	thumb_func_start sub_08034F58
sub_08034F58: @ 0x08034F58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08034F6C @ =gUnk_0813ABA8
	bl sub_08080840
	adds r0, r4, #0
	bl sub_0805E7BC
	pop {r4, pc}
	.align 2, 0
_08034F6C: .4byte gUnk_0813ABA8

	thumb_func_start sub_08034F70
sub_08034F70: @ 0x08034F70
	push {lr}
	adds r2, r0, #0
	ldr r0, _08034F8C @ =gUnk_030010A0
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x45
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _08034F90
	movs r0, #0
	b _08034F9A
	.align 2, 0
_08034F8C: .4byte gUnk_030010A0
_08034F90:
	cmp r0, #0x1e
	bls _08034F98
	movs r0, #1
	b _08034F9A
_08034F98:
	movs r0, #2
_08034F9A:
	strb r0, [r2, #0xb]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034FA0
sub_08034FA0: @ 0x08034FA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08034FC0
	ldr r0, [r4, #0x54]
	adds r0, #0x3d
	strb r1, [r0]
	movs r0, #0xc
	movs r1, #1
	bl sub_08080964
_08034FC0:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08035008
	cmp r0, #1
	beq _08035020
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _08035040
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08035004 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	b _08035040
	.align 2, 0
_08035004: .4byte gUnk_03000BF0
_08035008:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x3b
	bhi _08035040
	ldr r0, _0803501C @ =gUnk_030010A0
	adds r0, #0x39
	movs r1, #0x3c
	b _08035032
	.align 2, 0
_0803501C: .4byte gUnk_030010A0
_08035020:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x1d
	bhi _08035040
	ldr r0, _0803503C @ =gUnk_030010A0
	adds r0, #0x39
	movs r1, #0x1e
_08035032:
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08035050
	b _08035048
	.align 2, 0
_0803503C: .4byte gUnk_030010A0
_08035040:
	ldr r0, _0803504C @ =gUnk_030010A0
	ldrb r1, [r5]
	adds r0, #0x39
	strb r1, [r0]
_08035048:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803504C: .4byte gUnk_030010A0

	thumb_func_start sub_08035050
sub_08035050: @ 0x08035050
	push {r4, lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	movs r4, #0
	strb r1, [r0, #0x10]
	adds r0, #0x45
	strb r4, [r0]
	movs r0, #0x4b
	movs r1, #0
	bl sub_0804AA60
	adds r2, r0, #0
	cmp r2, #0
	beq _08035082
	movs r0, #1
	strb r0, [r2, #0xb]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	bl sub_08016A04
_08035082:
	pop {r4, pc}

	thumb_func_start sub_08035084
sub_08035084: @ 0x08035084
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _08035118
	ldr r0, _080350A0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x42
	bls _080350A4
	movs r0, #0
	b _0803511A
	.align 2, 0
_080350A0: .4byte gUnk_03003DBC
_080350A4:
	ldr r4, _080350D8 @ =gUnk_030010D8
_080350A6:
	bl sub_08000E50
	movs r1, #6
	bl __modsi3
	adds r6, r0, #0
	ldrb r0, [r4]
	lsrs r0, r0, #4
	cmp r6, r0
	beq _080350A6
	ldr r2, _080350DC @ =gUnk_030010A0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r6, #4
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	ldr r4, _080350E0 @ =gUnk_080CEECC
	ldr r7, _080350E4 @ =gUnk_03000BF0
_080350D0:
	cmp r5, r6
	bne _080350E8
	mov r2, r8
	b _080350F2
	.align 2, 0
_080350D8: .4byte gUnk_030010D8
_080350DC: .4byte gUnk_030010A0
_080350E0: .4byte gUnk_080CEECC
_080350E4: .4byte gUnk_03000BF0
_080350E8:
	movs r0, #0x37
	movs r1, #1
	bl sub_0804AA60
	adds r2, r0, #0
_080350F2:
	ldrh r0, [r7, #6]
	ldrb r1, [r4]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r7, #8]
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08016A04
	adds r5, #1
	adds r4, #2
	cmp r5, #5
	bls _080350D0
_08035118:
	movs r0, #1
_0803511A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08035120
sub_08035120: @ 0x08035120
	push {r4, r5, r6, lr}
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _0803515C @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	movs r6, #0
	ldr r5, _08035160 @ =gUnk_080CEED8
_08035146:
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r0, r4, r0
	bl sub_0807B600
	adds r5, #2
	adds r6, #1
	cmp r6, #0x17
	bls _08035146
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803515C: .4byte gUnk_03000BF0
_08035160: .4byte gUnk_080CEED8

	thumb_func_start sub_08035164
sub_08035164: @ 0x08035164
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0803518C
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	ands r1, r2
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
_0803518C:
	adds r0, r4, #0
	bl sub_08035194
	pop {r4, pc}

	thumb_func_start sub_08035194
sub_08035194: @ 0x08035194
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080351A8
	ldr r0, _080351A4 @ =gUnk_080CEF34
	b _080351AA
	.align 2, 0
_080351A4: .4byte gUnk_080CEF34
_080351A8:
	ldr r0, _080351B8 @ =gUnk_080CEF58
_080351AA:
	ldrb r1, [r2, #0x1e]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #0x48]
	pop {pc}
	.align 2, 0
_080351B8: .4byte gUnk_080CEF58

	thumb_func_start sub_080351BC
sub_080351BC: @ 0x080351BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080351D4 @ =gUnk_080CF040
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080351D4: .4byte gUnk_080CF040

	thumb_func_start sub_080351D8
sub_080351D8: @ 0x080351D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	bne _08035204
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080368D8
	adds r0, r4, #0
	bl sub_0803520C
	b _08035208
_08035204:
	bl sub_0805E780
_08035208:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803520C
sub_0803520C: @ 0x0803520C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035238
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	beq _0803524C
	ldr r2, _08035234 @ =gUnk_03000BF0
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	str r0, [r2, #0x30]
	movs r0, #0x5a
	strb r0, [r1, #7]
	bl sub_08078B48
	b _0803524C
	.align 2, 0
_08035234: .4byte gUnk_03000BF0
_08035238:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0803524C
	subs r0, #1
	strb r0, [r1, #7]
	bl sub_08078B48
_0803524C:
	ldr r1, _08035284 @ =gUnk_080CF054
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bls _08035266
	bl sub_08078B48
_08035266:
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_08035284: .4byte gUnk_080CF054

	thumb_func_start sub_08035288
sub_08035288: @ 0x08035288
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x76
	movs r4, #0
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r3, r2, #0
	adds r3, #0x84
	ldr r0, [r3]
	strb r4, [r0, #6]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #4
	bne _080352C8
	strb r0, [r2, #0xd]
	ldr r0, _080352C4 @ =gUnk_02034490
	movs r1, #1
	strb r1, [r0]
	bl sub_08078B48
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080A3268
	b _080352FA
	.align 2, 0
_080352C4: .4byte gUnk_02034490
_080352C8:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080352DA
	strb r4, [r2, #0xb]
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0x3c
	b _080352F4
_080352DA:
	ldr r1, [r3]
	ldrb r0, [r1, #1]
	cmp r0, #3
	bls _080352E6
	subs r0, #1
	strb r0, [r1, #1]
_080352E6:
	ldr r0, [r3]
	ldr r0, [r0, #0xc]
	adds r0, #0x7d
	strb r4, [r0]
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0x78
_080352F4:
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xd]
_080352FA:
	pop {r4, pc}

	thumb_func_start sub_080352FC
sub_080352FC: @ 0x080352FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	movs r6, #1
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #0
	bne _080353EC
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	adds r1, #0x7d
	ldrb r2, [r1]
	mov sb, r0
	cmp r2, #0
	beq _0803532C
	subs r0, r2, #1
	strb r0, [r1]
_0803532C:
	ldr r3, _0803538C @ =gUnk_03000BF0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r0, #0
	ldrh r2, [r3, #6]
	adds r1, r1, r2
	ldrh r0, [r5, #0x2e]
	subs r1, r1, r0
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r3, #8]
	ldrh r2, [r5, #0x32]
	subs r0, r0, r2
	adds r0, #0x8c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #8
	bhi _08035356
	cmp r0, #8
	bls _08035394
_08035356:
	mov r1, sb
	ldr r0, [r1]
	strb r6, [r0, #2]
	ldrh r0, [r3, #6]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r2, _08035390 @ =0xFFFFFEF8
	adds r1, r1, r2
	subs r0, r0, r1
	ldrh r1, [r3, #8]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	subs r2, #0x88
	subs r1, r1, r2
	bl sub_080045DA
	asrs r0, r0, #3
	strb r0, [r5, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_080AEF88
	adds r7, r5, #0
	adds r7, #0x79
	b _08035456
	.align 2, 0
_0803538C: .4byte gUnk_03000BF0
_08035390: .4byte 0xFFFFFEF8
_08035394:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080353D8
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #0
	bl sub_080A2988
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #1
	bl sub_080A2988
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #2
	bl sub_080A2988
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #3
	bl sub_080A2988
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #4
	bl sub_080A2988
	strb r6, [r5, #0xb]
_080353D8:
	mov r1, sb
	ldr r0, [r1]
	strb r4, [r0, #2]
	adds r1, r5, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r7, r1, #0
	b _08035456
_080353EC:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r1, [r1, #1]
	subs r4, r1, #1
	mov sb, r0
	adds r7, r5, #0
	adds r7, #0x79
	cmp r4, #0
	beq _08035438
	mov ip, sb
	movs r2, #1
	mov sl, r2
	lsls r0, r4, #2
	subs r6, r0, #4
	movs r3, #3
	mov r8, r3
_0803540E:
	mov r1, ip
	ldr r0, [r1]
	adds r0, #0xc
	adds r0, r0, r6
	ldr r3, [r0]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	mov r0, sl
	orrs r1, r0
	mov r0, r8
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	subs r6, #4
	subs r4, #1
	cmp r4, #0
	bne _0803540E
_08035438:
	ldr r1, _080354AC @ =gUnk_030010A0
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08035450
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #6
	movs r3, #0
	bl sub_080A2988
_08035450:
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
_08035456:
	ldrb r0, [r7]
	cmp r0, #0
	bne _080354E8
	movs r0, #2
	strb r0, [r5, #0xd]
	adds r4, r5, #0
	adds r4, #0x7c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_080AE068
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080354B0
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x5f
	strb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080ADF80
	adds r0, r5, #0
	movs r1, #0xef
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #0xef
	bl sub_08036F14
	mov r2, sb
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	movs r1, #1
	bl sub_080042AC
	b _080354DC
	.align 2, 0
_080354AC: .4byte gUnk_030010A0
_080354B0:
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x61
	strb r0, [r1]
	ldr r1, _080354F4 @ =0x00000109
	adds r0, r5, #0
	bl sub_080ADF80
	adds r0, r5, #0
	movs r1, #0xf0
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #0xf3
	bl sub_08036F14
	mov r3, sb
	ldr r0, [r3]
	ldr r0, [r0, #0xc]
	movs r1, #2
	bl sub_080042AC
_080354DC:
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #8
	movs r3, #0
	bl sub_080A2988
_080354E8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080354F4: .4byte 0x00000109

	thumb_func_start sub_080354F8
sub_080354F8: @ 0x080354F8
	push {lr}
	adds r1, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0x80
	beq _08035512
	adds r0, #1
	strb r0, [r2]
	b _08035522
_08035512:
	movs r0, #3
	strb r0, [r1, #0xd]
	adds r1, #0x79
	movs r0, #0x96
	strb r0, [r1]
	ldr r1, _08035524 @ =gUnk_03000BF0
	ldr r0, _08035528 @ =gLinkEntity
	str r0, [r1, #0x30]
_08035522:
	pop {pc}
	.align 2, 0
_08035524: .4byte gUnk_03000BF0
_08035528: .4byte gLinkEntity

	thumb_func_start sub_0803552C
sub_0803552C: @ 0x0803552C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	movs r3, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035570
	ldr r1, _08035574 @ =gUnk_080CF070
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x45
	strb r0, [r1]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r3, [r2, #0xd]
	adds r0, r2, #0
	adds r0, #0x7e
	strb r3, [r0]
	adds r0, r2, #0
	bl sub_08036DA0
_08035570:
	pop {pc}
	.align 2, 0
_08035574: .4byte gUnk_080CF070

	thumb_func_start sub_08035578
sub_08035578: @ 0x08035578
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xd]
	movs r1, #0x87
	movs r2, #9
	movs r3, #0
	bl sub_080A2988
	adds r1, r0, #0
	cmp r1, #0
	beq _08035592
	ldr r0, _08035594 @ =gUnk_03000BF0
	str r1, [r0, #0x30]
_08035592:
	pop {pc}
	.align 2, 0
_08035594: .4byte gUnk_03000BF0

	thumb_func_start sub_08035598
sub_08035598: @ 0x08035598
	adds r2, r0, #0
	movs r1, #0
	movs r0, #6
	strb r0, [r2, #0xd]
	adds r3, r2, #0
	adds r3, #0x79
	movs r0, #0x78
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_080355B4
sub_080355B4: @ 0x080355B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	adds r1, #6
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0x80
	ldrb r1, [r4]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080355FA
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4]
	subs r1, r1, r0
	strb r1, [r4]
	ands r1, r5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne _08035616
	b _08035614
_080355FA:
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	ldrb r2, [r4]
	adds r1, r0, r2
	strb r1, [r4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bls _08035616
	movs r0, #0x80
	orrs r1, r0
_08035614:
	strb r1, [r4]
_08035616:
	ldr r0, _080356E4 @ =gUnk_080C9160
	mov r8, r0
	movs r1, #0x81
	adds r1, r1, r7
	mov sb, r1
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r6, r7, #0
	adds r6, #0x80
	ldrb r2, [r6]
	movs r4, #0x7f
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #8
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_0806FA04
	lsrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r1, [r6]
	ands r4, r1
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r1, #0x16
	ldrb r0, [r1]
	cmp r0, #0
	bne _080356EC
	ldr r0, _080356E8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080356B2
	adds r0, r7, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
_080356B2:
	adds r1, r7, #0
	adds r1, #0x82
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x79
	bne _080356F0
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r0, #0x45
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080A3268
	adds r0, r7, #0
	bl sub_0804A7D4
	b _080356F0
	.align 2, 0
_080356E4: .4byte gUnk_080C9160
_080356E8: .4byte gUnk_030010A0
_080356EC:
	subs r0, #1
	strb r0, [r1]
_080356F0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080356F8
sub_080356F8: @ 0x080356F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08035718 @ =gUnk_080CF078
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	pop {r4, pc}
	.align 2, 0
_08035718: .4byte gUnk_080CF078

	thumb_func_start sub_0803571C
sub_0803571C: @ 0x0803571C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0803573A
	b _08035974
_0803573A:
	lsls r0, r0, #2
	ldr r1, _08035744 @ =_08035748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035744: .4byte _08035748
_08035748: @ jump table
	.4byte _08035764 @ case 0
	.4byte _080358D8 @ case 1
	.4byte _080358D8 @ case 2
	.4byte _080358D8 @ case 3
	.4byte _080358D8 @ case 4
	.4byte _08035920 @ case 5
	.4byte _08035940 @ case 6
_08035764:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x7c
	movs r5, #0
	strb r5, [r0]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x30
	bl sub_0801D8E0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x84
	str r2, [r0]
	mov r8, r0
	cmp r2, #0
	bne _0803579E
	adds r0, r4, #0
	bl sub_0804A7D4
	b _080359A6
_0803579E:
	str r2, [r4, #0x64]
	mov r1, r8
	ldr r0, [r1]
	strb r5, [r0, #6]
	ldr r1, [r1]
	movs r0, #2
	strb r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r1, [r2]
	movs r0, #5
	strb r0, [r1, #1]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #6
	strh r5, [r0]
	movs r5, #0
	movs r0, #0x79
	adds r0, r0, r4
	mov sb, r0
	mov r7, r8
_080357E6:
	adds r6, r5, #1
	movs r0, #0x39
	adds r1, r6, #0
	bl sub_0804AA60
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08035816
	adds r0, r4, #0
	bl sub_0806FA24
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7]
	lsls r0, r5, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_08035816:
	adds r5, r6, #0
	cmp r5, #3
	bls _080357E6
	movs r0, #0x39
	movs r1, #5
	bl sub_0804AA60
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08035840
	adds r0, r4, #0
	bl sub_0806FA24
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
_08035840:
	movs r0, #0x39
	movs r1, #6
	bl sub_0804AA60
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0803586A
	adds r0, r4, #0
	bl sub_0806FA24
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0xc]
_0803586A:
	movs r5, #0
	mov r7, r8
_0803586E:
	movs r0, #0x39
	movs r1, #7
	bl sub_0804AA60
	str r0, [r4, #0x54]
	adds r6, r5, #1
	cmp r0, #0
	beq _080358A0
	strb r5, [r0, #0xb]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FA24
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7]
	lsls r0, r6, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_080358A0:
	adds r5, r6, #0
	cmp r5, #3
	bls _0803586E
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x3c
	mov r1, sb
	strb r0, [r1]
	ldr r1, _080358D0 @ =gLinkEntity
	ldrb r2, [r1, #0x18]
	subs r0, #0x40
	ands r0, r2
	strb r0, [r1, #0x18]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	subs r0, #0xa0
	strh r0, [r1, #0x32]
	ldr r0, _080358D4 @ =gUnk_03000BF0
	str r4, [r0, #0x30]
	b _08035974
	.align 2, 0
_080358D0: .4byte gLinkEntity
_080358D4: .4byte gUnk_03000BF0
_080358D8:
	movs r1, #0
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
	ldrb r1, [r4, #0xa]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080358F4
	strb r2, [r4, #0xf]
	b _080358F8
_080358F4:
	movs r0, #0xfe
	strb r0, [r4, #0xf]
_080358F8:
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08035918
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _08035974
_08035918:
	adds r0, r4, #0
	adds r0, #0x76
	strh r2, [r0]
	b _08035974
_08035920:
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x1c
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	str r4, [r0, #8]
	b _08035974
_08035940:
	adds r0, r4, #0
	adds r0, #0x76
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x79
	strb r2, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x80
	strb r0, [r1]
_08035974:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _08035990
	ldr r0, _0803598C @ =gUnk_080CF08C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08004260
	b _080359A0
	.align 2, 0
_0803598C: .4byte gUnk_080CF08C
_08035990:
	ldr r0, _080359B0 @ =gUnk_080CF08C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_080042AC
_080359A0:
	adds r0, r4, #0
	bl sub_08035B94
_080359A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080359B0: .4byte gUnk_080CF08C

	thumb_func_start sub_080359B4
sub_080359B4: @ 0x080359B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldr r1, _080359F0 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08036F60
	ldr r1, _080359F4 @ =gUnk_080CF0AC
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_080359F0: .4byte gUnk_02034490
_080359F4: .4byte gUnk_080CF0AC

	thumb_func_start sub_080359F8
sub_080359F8: @ 0x080359F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035A22
	movs r0, #1
	strb r0, [r2, #0xd]
	adds r1, #9
	adds r0, #0xff
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1]
_08035A22:
	pop {pc}

	thumb_func_start sub_08035A24
sub_08035A24: @ 0x08035A24
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08035A54
	adds r2, r4, #0
	adds r2, #0x79
	movs r1, #0
	movs r0, #0x3c
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0]
	ldr r0, _08035A50 @ =0x00000159
	bl sub_080A3268
	b _08035A64
	.align 2, 0
_08035A50: .4byte 0x00000159
_08035A54:
	adds r1, r4, #0
	adds r1, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_08035A64:
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08036FAC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08035A70
sub_08035A70: @ 0x08035A70
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035AA8
	movs r0, #3
	strb r0, [r2, #0xd]
	movs r0, #0x3c
	strb r0, [r1]
	ldr r2, _08035AAC @ =gLinkEntity
	ldrb r3, [r2, #0x18]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r4, #1
	orrs r1, r4
	subs r0, #0x40
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldr r0, _08035AB0 @ =gUnk_03000BF0
	str r2, [r0, #0x30]
	strb r4, [r0, #0xe]
_08035AA8:
	pop {r4, pc}
	.align 2, 0
_08035AAC: .4byte gLinkEntity
_08035AB0: .4byte gUnk_03000BF0

	thumb_func_start sub_08035AB4
sub_08035AB4: @ 0x08035AB4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x79
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035AE4
	ldr r1, _08035AE8 @ =gLinkEntity
	movs r0, #0x10
	strb r0, [r1, #0x15]
	movs r4, #4
	strb r4, [r1, #0x14]
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	movs r0, #0x3c
	strb r0, [r5]
	strb r4, [r6, #0xd]
_08035AE4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08035AE8: .4byte gLinkEntity

	thumb_func_start sub_08035AEC
sub_08035AEC: @ 0x08035AEC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x79
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035B18
	movs r0, #5
	strb r0, [r3, #0xd]
	movs r0, #0x2d
	strb r0, [r2]
	ldr r1, _08035B14 @ =gLinkEntity
	movs r0, #0
	strb r0, [r1, #0x14]
	b _08035B2C
	.align 2, 0
_08035B14: .4byte gLinkEntity
_08035B18:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bne _08035B2C
	ldr r0, _08035B30 @ =gLinkEntity
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #0xc
	bl sub_080A2CFC
_08035B2C:
	pop {pc}
	.align 2, 0
_08035B30: .4byte gLinkEntity

	thumb_func_start sub_08035B34
sub_08035B34: @ 0x08035B34
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08035B70 @ =gLinkEntity
	ldrb r5, [r2, #0x14]
	cmp r5, #4
	bne _08035B7C
	adds r2, r3, #0
	adds r2, #0x79
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _08035B92
	movs r4, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	strb r4, [r3, #0xd]
	ldr r0, _08035B74 @ =gUnk_03000BF0
	strb r5, [r0, #0xe]
	adds r0, r3, #0
	bl sub_08036C90
	ldr r0, _08035B78 @ =gUnk_02034490
	strb r4, [r0]
	movs r0, #0x2e
	bl sub_080A3268
	b _08035B92
	.align 2, 0
_08035B70: .4byte gLinkEntity
_08035B74: .4byte gUnk_03000BF0
_08035B78: .4byte gUnk_02034490
_08035B7C:
	adds r1, r3, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035B92
	movs r0, #4
	strb r0, [r2, #0x14]
_08035B92:
	pop {r4, r5, pc}

	thumb_func_start sub_08035B94
sub_08035B94: @ 0x08035B94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08035BAE
	ldr r0, [r5, #0x50]
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
_08035BAE:
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	bls _08035BB6
	b _08035F6C
_08035BB6:
	lsls r0, r0, #2
	ldr r1, _08035BC0 @ =_08035BC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035BC0: .4byte _08035BC4
_08035BC4: @ jump table
	.4byte _08035F16 @ case 0
	.4byte _08035BE4 @ case 1
	.4byte _08035BE4 @ case 2
	.4byte _08035BE4 @ case 3
	.4byte _08035BE4 @ case 4
	.4byte _08035E78 @ case 5
	.4byte _08035DB0 @ case 6
	.4byte _08035D14 @ case 7
_08035BE4:
	ldr r0, [r5, #0x50]
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035BF6
	bl sub_0805E780
_08035BF6:
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	adds r6, r1, #0
	adds r7, r5, #0
	adds r7, #0x76
	movs r1, #0x74
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #1
	bne _08035C42
	ldrh r1, [r7]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _08035C20
	subs r0, r1, #4
	b _08035C22
_08035C20:
	adds r0, r1, #4
_08035C22:
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r8, r0
	cmp r1, #0
	bge _08035C3C
	subs r0, r2, #4
	mov r1, r8
	strh r0, [r1]
	b _08035C42
_08035C3C:
	adds r0, r2, #4
	mov r2, r8
	strh r0, [r2]
_08035C42:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAD8
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08035C66
	ldr r1, [r5, #0x50]
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	beq _08035C66
	ldrb r0, [r1, #0xd]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08035C82
_08035C66:
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _08035C76
	ldr r0, [r6]
	ldrb r0, [r0]
	rsbs r0, r0, #0
	b _08035C7A
_08035C76:
	ldr r0, [r6]
	ldrb r0, [r0]
_08035C7A:
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_08036998
_08035C82:
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	lsls r0, r3, #0xd
	lsrs r3, r0, #8
	ldr r0, _08035CB0 @ =0xFFFFE000
	adds r3, r3, r0
	ldr r0, [r6]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bne _08035CB4
	movs r1, #0x88
	lsls r1, r1, #6
	adds r3, r3, r1
	b _08035CBC
	.align 2, 0
_08035CB0: .4byte 0xFFFFE000
_08035CB4:
	lsrs r0, r3, #1
	movs r2, #0x88
	lsls r2, r2, #6
	adds r3, r0, r2
_08035CBC:
	adds r2, r4, #0
	adds r2, #0x7b
	ldr r1, _08035D0C @ =gUnk_080CF0D8
	ldrb r0, [r5, #0xa]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r2, [r2]
	adds r0, r0, r2
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_08036914
	ldr r2, [r5, #0x50]
	adds r2, #0x7b
	ldr r1, _08035D10 @ =gUnk_080CF0DC
	ldrb r0, [r5, #0xa]
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r2, [r2]
	adds r1, r1, r2
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrh r1, [r7]
	mov r3, r8
	ldrh r2, [r3]
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r3, [r0]
	b _08035E70
	.align 2, 0
_08035D0C: .4byte gUnk_080CF0D8
_08035D10: .4byte gUnk_080CF0DC
_08035D14:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08035D28
	bl sub_0805E780
_08035D28:
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r0, #2
	ldrb r1, [r5, #0xb]
	cmp r0, r1
	bge _08035D38
	bl sub_0805E780
_08035D38:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAB0
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r0, #2
	ldrb r2, [r5, #0xb]
	cmp r0, r2
	bne _08035D8A
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAB0
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	lsls r0, r3, #0xd
	lsrs r3, r0, #8
	adds r4, #0x7b
	ldrb r0, [r4]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_08036914
	ldr r0, [r5, #0x50]
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
_08035D8A:
	ldr r0, [r5, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08035D9C
	b _08035F6C
_08035D9C:
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	orrs r1, r3
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	b _08035F6C
_08035DB0:
	adds r6, r5, #0
	adds r6, #0x84
	ldr r0, [r6]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08035DC4
	bl sub_0805E780
_08035DC4:
	adds r0, r5, #0
	bl sub_080042B8
	ldr r0, [r5, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08035E24
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_08036AF0
	adds r2, r5, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r3, #0x7f
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #7
	bne _08035E56
	ldrb r1, [r5, #0x10]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _08035E56
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r5, #0x54]
	adds r0, #0x84
	ldr r1, [r6]
	str r1, [r0]
	b _08035E56
_08035E24:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	orrs r1, r3
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_08036998
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #4
	bl sub_080369D0
	adds r4, r5, #0
	adds r4, #0x41
_08035E56:
	movs r0, #0
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	rsbs r3, r3, #0
	movs r0, #0x80
	lsls r0, r0, #8
	eors r3, r0
_08035E70:
	adds r0, r5, #0
	bl sub_0805EC9C
	b _08035F6C
_08035E78:
	adds r4, r5, #0
	adds r4, #0x45
	ldrb r0, [r4]
	cmp r0, #1
	bne _08035E88
	movs r0, #0
	strb r0, [r4]
	b _08035F6C
_08035E88:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAD8
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xd]
	adds r7, r5, #0
	adds r7, #0x76
	adds r6, r5, #0
	adds r6, #0x79
	cmp r0, #4
	beq _08035EC2
	ldrb r0, [r4]
	cmp r0, #1
	beq _08035EC2
	ldrb r0, [r6]
	cmp r0, #0x1c
	bls _08035EB0
	subs r0, #1
	strb r0, [r6]
_08035EB0:
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _08035EC0
	subs r0, #1
	strh r0, [r7]
	b _08035EC2
_08035EC0:
	strh r1, [r7]
_08035EC2:
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r0, r3, r0
	lsrs r3, r0, #8
	adds r4, #0x7b
	ldrb r0, [r4]
	adds r0, #0x80
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_08036914
	ldr r0, [r5, #0x50]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrh r1, [r7]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r5, #0
	bl sub_0805EC9C
	adds r0, r5, #0
	bl sub_0800445C
	b _08035F6C
_08035F16:
	adds r0, r5, #0
	bl sub_0800445C
	adds r0, r5, #0
	bl sub_08036F60
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08035F48
	subs r0, #1
	strb r0, [r1, #6]
	ldr r0, _08035F74 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08035F48
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #3
	bl sub_0804A98C
_08035F48:
	ldr r1, _08035F78 @ =gUnk_080CF0C4
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r5, #0
	bl sub_0805EC9C
_08035F6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08035F74: .4byte gUnk_030010A0
_08035F78: .4byte gUnk_080CF0C4

	thumb_func_start sub_08035F7C
sub_08035F7C: @ 0x08035F7C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08035FD0 @ =gLinkEntity
	ldr r0, [r2, #0x2c]
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	rsbs r1, r1, #0
	movs r2, #0x80
	eors r1, r2
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	movs r1, #0x20
	cmp r0, #0
	bne _08035FB6
	movs r1, #8
_08035FB6:
	cmn r2, r1
	ble _08035FEE
	cmp r2, r1
	bge _08035FEE
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08035FD4
	adds r0, r4, #0
	bl sub_08036C90
	b _08036074
	.align 2, 0
_08035FD0: .4byte gLinkEntity
_08035FD4:
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035FE6
	adds r0, r4, #0
	bl sub_08036E00
	b _08036028
_08035FE6:
	adds r0, r4, #0
	bl sub_08036D70
	b _08036028
_08035FEE:
	cmp r2, #0x80
	bls _0803600E
	adds r2, r4, #0
	adds r2, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0, #4]
	b _08036028
_0803600E:
	adds r2, r4, #0
	adds r2, #0x7a
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #4]
_08036028:
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x7c
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803606C
	adds r3, r4, #0
	adds r3, #0x82
	ldrh r2, [r3]
	ldr r0, _08036060 @ =0x0000027F
	cmp r2, r0
	bhi _0803606C
	ldrb r1, [r5]
	cmp r1, #1
	beq _08036064
	cmp r1, #3
	beq _08036068
	b _0803606C
	.align 2, 0
_08036060: .4byte 0x0000027F
_08036064:
	adds r0, r2, #1
	b _0803606A
_08036068:
	adds r0, r2, #2
_0803606A:
	strh r0, [r3]
_0803606C:
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_08036FAC
_08036074:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08036078
sub_08036078: @ 0x08036078
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080360A0
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	cmp r1, #0
	beq _080360A0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080360B2
_080360A0:
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08036D4C
	b _080360BE
_080360B2:
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080360BE
	strb r0, [r5]
_080360BE:
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_08036FAC
	pop {r4, r5, pc}

	thumb_func_start sub_080360C8
sub_080360C8: @ 0x080360C8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080360E4
	adds r0, r2, #0
	bl sub_08036DA0
_080360E4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080360E8
sub_080360E8: @ 0x080360E8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #0
	bne _08036178
	adds r0, r4, #0
	bl sub_080AEF88
	movs r2, #0
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _08036116
	cmp r0, #0x10
	beq _08036116
	ldrh r0, [r4, #0x2a]
	movs r1, #0xee
	lsls r1, r1, #8
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_08036116:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	beq _0803612C
	cmp r0, #8
	beq _0803612C
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	ands r0, r1
	cmp r0, #0
	beq _0803612C
	movs r2, #1
_0803612C:
	cmp r2, #0
	beq _0803617C
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x20
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	adds r0, #0x3c
	strb r0, [r1, #6]
	adds r0, r4, #0
	bl sub_08036C90
	movs r0, #0x3c
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl sub_080A3268
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_080A3268
	b _0803617C
_08036178:
	subs r0, #1
	strb r0, [r1]
_0803617C:
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08036FAC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08036188
sub_08036188: @ 0x08036188
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _080361EC @ =gUnk_080CF0E0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	bl sub_08036FE4
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _080361EA
	ldr r4, _080361F0 @ =gLinkEntity
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	bl sub_08078B48
	bl sub_08077B20
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r1, [r0]
	adds r1, #0x80
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r0, r4, #0
	bl sub_08036914
_080361EA:
	pop {r4, r5, pc}
	.align 2, 0
_080361EC: .4byte gUnk_080CF0E0
_080361F0: .4byte gLinkEntity

	thumb_func_start sub_080361F4
sub_080361F4: @ 0x080361F4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #4
	bne _08036208
	adds r0, r2, #0
	bl sub_08036D4C
	b _08036236
_08036208:
	adds r1, r2, #0
	adds r1, #0x82
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xb]
	subs r1, #6
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08036228
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0x16
	b _0803622E
_08036228:
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0
_0803622E:
	strb r0, [r1]
	ldr r0, _08036238 @ =0x00000155
	bl sub_080A3268
_08036236:
	pop {pc}
	.align 2, 0
_08036238: .4byte 0x00000155

	thumb_func_start sub_0803623C
sub_0803623C: @ 0x0803623C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r0, [r1]
	cmp r0, #0xbf
	bhi _08036250
	adds r0, #1
	strh r0, [r1]
	b _080362A0
_08036250:
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080362A0
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	cmp r1, #1
	bne _08036292
	movs r0, #3
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08036280
	movs r0, #0x3c
	b _08036282
_08036280:
	movs r0, #0x78
_08036282:
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	subs r0, #9
	ldrb r0, [r0]
	strb r0, [r1, #3]
	b _0803629A
_08036292:
	movs r0, #2
	strb r0, [r2, #0xb]
	movs r0, #0x2d
	strb r0, [r3]
_0803629A:
	ldr r0, _080362A4 @ =0x00000155
	bl sub_080A3268
_080362A0:
	pop {pc}
	.align 2, 0
_080362A4: .4byte 0x00000155

	thumb_func_start sub_080362A8
sub_080362A8: @ 0x080362A8
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x79
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080362FA
	adds r4, r2, #0
	adds r4, #0x76
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r3, [r1]
	ldrh r0, [r4]
	cmp r0, r3
	bhs _080362D0
	adds r0, r3, #0
	subs r0, #8
	strh r0, [r1]
	b _08036300
_080362D0:
	movs r0, #3
	strb r0, [r2, #0xb]
	ldrh r0, [r4]
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080362E6
	movs r0, #0x3c
	b _080362FC
_080362E6:
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x87
	movs r2, #4
	movs r3, #0
	bl sub_080A2988
	b _08036300
_080362FA:
	subs r0, #1
_080362FC:
	mov r1, ip
	strb r0, [r1]
_08036300:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08036304
sub_08036304: @ 0x08036304
	push {lr}
	mov ip, r0
	ldr r0, _08036328 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803632C
	mov r2, ip
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	b _08036350
	.align 2, 0
_08036328: .4byte gUnk_030010A0
_0803632C:
	mov r2, ip
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #8]
	adds r3, r0, #0
	adds r3, #0x76
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	bls _08036350
	strh r1, [r3]
_08036350:
	mov r0, ip
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	beq _0803637A
	ldr r0, [r2]
	ldr r0, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #0x1f
	bhi _0803637A
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
_0803637A:
	ldr r0, _0803638C @ =gUnk_080CF0F0
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803638C: .4byte gUnk_080CF0F0

	thumb_func_start sub_08036390
sub_08036390: @ 0x08036390
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xf
	movs r2, #0
	bl sub_0804A98C
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _080363B4
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	rsbs r1, r1, #0
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #0x15]
_080363B4:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08036C90
	pop {r4, pc}

	thumb_func_start sub_080363CC
sub_080363CC: @ 0x080363CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x80
	ldrb r2, [r7]
	cmp r2, #0
	bne _080364CC
	ldr r5, _08036498 @ =gLinkEntity
	ldr r0, [r5, #0x2c]
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldr r1, [r5, #0x30]
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	adds r0, #0x80
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #0x15]
	subs r3, r0, r1
	mov r8, r2
	cmp r3, #0
	bge _0803640C
	rsbs r3, r3, #0
_0803640C:
	adds r6, r4, #0
	adds r6, #0x79
	cmp r3, #0xf
	bgt _080364AA
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xf0
	bl sub_0806FC80
	cmp r0, #0
	beq _080364AA
	ldr r2, _0803649C @ =gUnk_03003F80
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080364A4
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080364AA
	movs r1, #0xa0
	lsls r1, r1, #2
	mov r0, r8
	ldrb r2, [r0]
	rsbs r2, r2, #0
	adds r0, r5, #0
	bl sub_0806F62C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x48
	bl sub_0806FC80
	cmp r0, #0
	beq _080364AA
	movs r0, #1
	strb r0, [r7]
	movs r0, #2
	strb r0, [r6]
	ldr r2, _080364A0 @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldrh r1, [r2, #8]
	adds r1, #0x88
	lsls r1, r1, #0x10
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	strb r0, [r1, #3]
	ldr r1, [r2]
	ldrb r0, [r1, #3]
	adds r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r1, #3]
	movs r0, #0xed
	bl sub_080A3268
	b _080364AA
	.align 2, 0
_08036498: .4byte gLinkEntity
_0803649C: .4byte gUnk_03003F80
_080364A0: .4byte gUnk_03000BF0
_080364A4:
	ldr r0, _080364C4 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r2, #0x30]
_080364AA:
	ldr r0, _080364C8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803657A
	adds r0, r4, #0
	movs r1, #0x87
	movs r2, #2
	movs r3, #0
	bl sub_080A2988
	b _0803657A
	.align 2, 0
_080364C4: .4byte 0xFFFFF7FF
_080364C8: .4byte gUnk_030010A0
_080364CC:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x84
	cmp r0, #0
	bne _080364F0
	ldr r0, [r3]
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r0, #3]
	mov r8, r1
	ldrb r6, [r1]
	cmp r0, r6
	bne _08036570
_080364F0:
	cmp r2, #1
	bne _08036510
	movs r0, #2
	strb r0, [r7]
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x2d
	strb r0, [r1]
	adds r1, #9
	movs r2, #0
	adds r0, #0xd3
	strh r0, [r1]
	ldr r0, [r3]
	strb r2, [r0, #2]
	b _08036652
_08036510:
	movs r0, #0
	strb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0803656C @ =gLinkEntity
	ldrb r2, [r1, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #0x18]
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	adds r1, #0x38
	strb r5, [r1]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	adds r1, #0x80
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #0x30
	bl sub_080792BC
	adds r0, r4, #0
	bl sub_08036C90
	movs r0, #0xef
	bl sub_080A3268
	b _08036652
	.align 2, 0
_0803656C: .4byte gLinkEntity
_08036570:
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #2
	strb r0, [r1]
	adds r6, r1, #0
_0803657A:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08036598
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	movs r2, #0
	strh r0, [r1]
	strb r2, [r4, #0xb]
	adds r0, r4, #0
	bl sub_08036C90
	b _08036652
_08036598:
	subs r2, r0, #1
	strb r2, [r6]
	ldr r0, _080365E4 @ =gUnk_03003F80
	ldr r1, [r0, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bne _080365F8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _080365F8
	ldr r2, _080365E8 @ =gLinkEntity
	ldr r0, [r2, #0x2c]
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	mov r7, r8
	ldrb r2, [r7]
	rsbs r0, r2, #0
	movs r1, #0x80
	eors r0, r1
	subs r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _080365EC
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x30
	b _080365F6
	.align 2, 0
_080365E4: .4byte gUnk_03003F80
_080365E8: .4byte gLinkEntity
_080365EC:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r2, #0
	subs r0, #0x30
_080365F6:
	strb r0, [r1, #3]
_080365F8:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	movs r5, #1
	adds r2, r5, #0
	ands r2, r0
	cmp r2, #0
	bne _08036652
	adds r3, r4, #0
	adds r3, #0x84
	ldr r1, [r3]
	ldrb r0, [r1, #3]
	mov r6, r8
	ldrb r6, [r6]
	cmp r0, r6
	beq _08036650
	strb r5, [r1, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	mov r7, r8
	ldrb r1, [r7]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _0803663E
	adds r2, r4, #0
	adds r2, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r2]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r2]
	b _08036652
_0803663E:
	adds r1, r4, #0
	adds r1, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _08036652
_08036650:
	strb r2, [r1, #2]
_08036652:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08036658
sub_08036658: @ 0x08036658
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x79
	ldrb r1, [r4]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08036678
	movs r0, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	bl sub_08036C90
	movs r0, #0x78
	strb r0, [r4]
	b _080366AC
_08036678:
	adds r0, r1, #1
	strb r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0805308C
	ldr r0, _080366B0 @ =gUnk_030010A0
	ldr r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080366AC
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _080366A0
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080A3268
_080366A0:
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #3
	movs r3, #0
	bl sub_080A2988
_080366AC:
	pop {r4, r5, pc}
	.align 2, 0
_080366B0: .4byte gUnk_030010A0

	thumb_func_start sub_080366B4
sub_080366B4: @ 0x080366B4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	bne _080366D4
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0, #2]
	adds r0, r4, #0
	bl sub_08036C90
	b _08036706
_080366D4:
	subs r0, #1
	strb r0, [r2]
	ldr r0, _08036708 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08036706
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #2
	bl sub_0804A98C
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _08036706
	str r4, [r0, #0x50]
	ldr r2, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	strb r0, [r2, #0x15]
_08036706:
	pop {r4, pc}
	.align 2, 0
_08036708: .4byte gUnk_030010A0

	thumb_func_start sub_0803670C
sub_0803670C: @ 0x0803670C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803675C @ =gUnk_080CF100
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08036746
	subs r0, #1
	strb r0, [r1, #6]
	ldr r0, _08036760 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08036746
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #3
	bl sub_0804A98C
_08036746:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_0803675C: .4byte gUnk_080CF100
_08036760: .4byte gUnk_030010A0

	thumb_func_start sub_08036764
sub_08036764: @ 0x08036764
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	strh r1, [r4, #0x2a]
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x78
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080368D8
	adds r0, r4, #0
	bl sub_080367B0
	pop {r4, pc}

	thumb_func_start sub_080367B0
sub_080367B0: @ 0x080367B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0803683A
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r3, r4, #0
	adds r3, #0x84
	ldr r1, [r3]
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	strb r0, [r1, #3]
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080367E4
	ldr r1, [r3]
	ldrb r0, [r1, #3]
	rsbs r0, r0, #0
	strb r0, [r1, #3]
_080367E4:
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	ands r0, r1
	cmp r0, #0
	beq _080367FE
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	rsbs r1, r1, #0
	movs r5, #0x80
	rsbs r5, r5, #0
	adds r2, r5, #0
	eors r1, r2
	strb r1, [r0, #3]
_080367FE:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x18
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	adds r0, #0x1e
	strb r0, [r1, #6]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl sub_080A3268
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_080A3268
_0803683A:
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08036852
	subs r1, #0x34
	movs r0, #0
	strb r0, [r1]
_08036852:
	ldr r0, _08036868 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08036864
	ldr r0, _0803686C @ =0x00000159
	bl sub_080A3268
_08036864:
	pop {r4, r5, pc}
	.align 2, 0
_08036868: .4byte gUnk_030010A0
_0803686C: .4byte 0x00000159

	thumb_func_start sub_08036870
sub_08036870: @ 0x08036870
	push {lr}
	adds r3, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r1, [r0, #3]
	movs r0, #0x7b
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #7
	cmp r0, #0xe
	bhi _080368AA
	movs r2, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	mov r1, ip
	ldrb r0, [r1]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r3, #0x15]
	strh r2, [r3, #0x2a]
	adds r0, r3, #0
	bl sub_080AEF88
	b _080368D4
_080368AA:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _080368C4
	adds r2, r3, #0
	adds r2, #0x7a
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r1, [r2]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r2]
	b _080368D4
_080368C4:
	adds r1, r3, #0
	adds r1, #0x7a
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_080368D4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080368D8
sub_080368D8: @ 0x080368D8
	push {lr}
	adds r3, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036902
	ldr r2, _08036910 @ =gLinkEntity
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r2, #0x38
	movs r0, #1
	strb r0, [r2]
_08036902:
	adds r0, r3, #0
	adds r0, #0x76
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	pop {pc}
	.align 2, 0
_08036910: .4byte gLinkEntity

	thumb_func_start sub_08036914
sub_08036914: @ 0x08036914
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _08036994 @ =gUnk_080C9160
	mov sb, r0
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	bl sub_0806FA04
	ldr r1, [r5, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x2c]
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl sub_0806FA04
	ldr r2, [r5, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r5, #0x30]
	adds r2, #0x62
	ldrb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	adds r0, #0x63
	ldrb r0, [r0]
	adds r5, #0x63
	strb r0, [r5]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_08036994: .4byte gUnk_080C9160

	thumb_func_start sub_08036998
sub_08036998: @ 0x08036998
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r2, #0xf]
	ldrb r4, [r3]
	adds r1, r0, r4
	strb r1, [r3]
	ldrb r4, [r2, #0xf]
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080369BE
	ldrb r0, [r2, #0xe]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmn r1, r0
	bge _080369CC
	b _080369C8
_080369BE:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrb r1, [r2, #0xe]
	cmp r0, r1
	ble _080369CC
_080369C8:
	rsbs r0, r4, #0
	strb r0, [r2, #0xf]
_080369CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080369D0
sub_080369D0: @ 0x080369D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r1
	adds r6, r2, #0
	adds r1, r0, #0
	adds r1, #0x84
	ldr r4, [r1]
	ldr r2, [r4, #0xc]
	ldrb r1, [r4, #1]
	subs r1, #1
	lsls r1, r1, #2
	adds r3, r4, #0
	adds r3, #0xc
	adds r1, r3, r1
	ldr r1, [r1]
	adds r1, #0x7b
	adds r0, #0x79
	ldrb r0, [r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r2, #0x7b
	strb r0, [r2]
	ldrb r0, [r4, #1]
	movs r2, #0
	cmp r0, #1
	beq _08036A58
	adds r5, r3, #0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	rsbs r0, r6, #0
	lsls r0, r0, #0x18
	asrs r7, r0, #0x18
_08036A16:
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r1, [r0]
	adds r1, #0x7b
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0x7b
	ldrb r1, [r1]
	ldrb r0, [r3]
	cmp r1, r0
	beq _08036A4C
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08036A44
	cmp r0, r8
	ble _08036A4C
	adds r0, r1, r6
	b _08036A4A
_08036A44:
	cmp r0, r7
	bge _08036A4C
	subs r0, r1, r6
_08036A4A:
	strb r0, [r3]
_08036A4C:
	ldrb r0, [r4, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	blo _08036A16
_08036A58:
	ldrb r0, [r4, #1]
	subs r2, r0, #1
	cmp r2, #0
	beq _08036AE4
	ldr r0, _08036AEC @ =gUnk_080C9160
	mov sb, r0
	movs r1, #0x80
	mov r8, r1
	mov r1, ip
	lsls r0, r1, #0x14
	asrs r6, r0, #0x10
	lsls r0, r2, #2
	adds r0, #8
	adds r5, r0, r4
	movs r7, #0x80
	lsls r7, r7, #1
_08036A78:
	subs r4, r2, #1
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	mov r1, r8
	eors r0, r1
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	mov r1, r8
	eors r0, r1
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
	subs r5, #4
	adds r2, r4, #0
	cmp r2, #0
	bne _08036A78
_08036AE4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036AEC: .4byte gUnk_080C9160

	thumb_func_start sub_08036AF0
sub_08036AF0: @ 0x08036AF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp]
	mov r8, r2
	adds r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #1]
	subs r4, r0, #1
	cmp r4, #0
	bne _08036B10
	b _08036C80
_08036B10:
	ldr r0, [sp, #4]
	adds r0, #0xc
	str r0, [sp, #8]
	lsls r0, r1, #0x14
	asrs r0, r0, #0x10
	mov sl, r0
_08036B1C:
	mov r1, r8
	cmp r1, #0
	bne _08036BC0
	lsls r0, r4, #2
	ldr r2, [sp, #8]
	adds r6, r2, r0
	ldr r0, [r6]
	subs r4, #1
	lsls r1, r4, #2
	adds r5, r2, r1
	ldr r2, [r5]
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	bl sub_080041DC
	mov sb, r4
	ldr r1, [sp]
	cmp r1, r0
	blo _08036B48
	b _08036C78
_08036B48:
	ldr r2, [r5]
	ldr r3, [r6]
	ldr r0, [r2, #0x2c]
	ldr r1, [r3, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r3, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	ldr r1, [r5]
	adds r1, #0x7b
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, _08036BBC @ =gUnk_080C9160
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08036BBC @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r6]
	b _08036C6E
	.align 2, 0
_08036BBC: .4byte gUnk_080C9160
_08036BC0:
	subs r2, r4, #1
	lsls r0, r2, #2
	ldr r3, [sp, #8]
	adds r0, r3, r0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x7b
	lsls r1, r4, #2
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x7b
	ldrb r4, [r5]
	ldrb r3, [r0]
	adds r7, r1, #0
	ldr r6, [sp, #4]
	adds r6, #0xc
	mov sb, r2
	cmp r4, r3
	beq _08036C0E
	subs r0, r3, r4
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	ble _08036BFE
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	ble _08036C0E
	subs r0, r3, r2
	b _08036C0C
_08036BFE:
	mov r2, r8
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _08036C0E
	adds r0, r3, r2
_08036C0C:
	strb r0, [r5]
_08036C0E:
	mov r3, sb
	lsls r4, r3, #2
	adds r4, r6, r4
	ldr r0, [r4]
	adds r0, #0x7b
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, _08036C8C @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r4]
	adds r5, r6, r7
	ldr r1, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r4]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08036C8C @ =gUnk_080C9160
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r4]
	ldr r1, [r5]
_08036C6E:
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
_08036C78:
	mov r4, sb
	cmp r4, #0
	beq _08036C80
	b _08036B1C
_08036C80:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036C8C: .4byte gUnk_080C9160

	thumb_func_start sub_08036C90
sub_08036C90: @ 0x08036C90
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r2, [r0]
	cmp r2, #4
	bne _08036CDC
	adds r3, r4, #0
	adds r3, #0x81
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _08036CDC
	movs r1, #0
	strb r2, [r4, #0xd]
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	ldr r1, _08036CFC @ =gUnk_080CF124
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r4, #0
	adds r2, #0x7e
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r0, [r1]
	cmp r0, #5
	bne _08036D42
	movs r0, #0xff
	strb r0, [r3]
_08036CDC:
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x7c
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08036D14
	ldrb r1, [r2]
	cmp r1, #1
	beq _08036D00
	cmp r1, #3
	beq _08036D0A
	b _08036D42
	.align 2, 0
_08036CFC: .4byte gUnk_080CF124
_08036D00:
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x1e
	strb r0, [r1]
	b _08036D42
_08036D0A:
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0xa
	strb r0, [r1]
	b _08036D42
_08036D14:
	ldr r0, _08036D2C @ =gUnk_02034350
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08036D30
	adds r0, r4, #0
	adds r0, #0x79
	strb r3, [r0]
	b _08036D42
	.align 2, 0
_08036D2C: .4byte gUnk_02034350
_08036D30:
	ldr r0, _08036D44 @ =gUnk_080CF10C
	bl sub_080028F4
	ldr r1, _08036D48 @ =gUnk_080CF110
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
_08036D42:
	pop {r4, pc}
	.align 2, 0
_08036D44: .4byte gUnk_080CF10C
_08036D48: .4byte gUnk_080CF110

	thumb_func_start sub_08036D4C
sub_08036D4C: @ 0x08036D4C
	mov ip, r0
	mov r1, ip
	adds r1, #0x82
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	mov r2, ip
	adds r2, #0x84
	ldr r1, [r2]
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r2]
	movs r0, #0xff
	strb r0, [r1, #4]
	mov r0, ip
	strb r3, [r0, #0xd]
	bx lr

	thumb_func_start sub_08036D70
sub_08036D70: @ 0x08036D70
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	strb r1, [r4, #0xd]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0]
	ldr r0, _08036D98 @ =gUnk_080CF134
	bl sub_080028F4
	ldr r1, _08036D9C @ =gUnk_080CF138
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, #0x79
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08036D98: .4byte gUnk_080CF134
_08036D9C: .4byte gUnk_080CF138

	thumb_func_start sub_08036DA0
sub_08036DA0: @ 0x08036DA0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	movs r2, #1
	ands r2, r0
	cmp r2, #0
	bne _08036DF0
	ldr r0, _08036DD0 @ =gUnk_02034350
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08036DD4
	adds r0, r4, #0
	adds r0, #0x78
	strb r2, [r0]
	b _08036DF8
	.align 2, 0
_08036DD0: .4byte gUnk_02034350
_08036DD4:
	ldr r0, _08036DE8 @ =gUnk_080CF13C
	bl sub_080028F4
	ldr r1, _08036DEC @ =gUnk_080CF13F
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x78
	strb r1, [r0]
	b _08036DF8
	.align 2, 0
_08036DE8: .4byte gUnk_080CF13C
_08036DEC: .4byte gUnk_080CF13F
_08036DF0:
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
_08036DF8:
	adds r0, r4, #0
	bl sub_08036D4C
	pop {r4, pc}

	thumb_func_start sub_08036E00
sub_08036E00: @ 0x08036E00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r2, #0
	movs r0, #4
	strb r0, [r4, #0xd]
	strb r2, [r4, #0xb]
	adds r7, r4, #0
	adds r7, #0x81
	movs r0, #0xff
	strb r0, [r7]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r6, r4, #0
	adds r6, #0x84
	ldr r0, [r6]
	strb r2, [r0, #2]
	movs r0, #0x7c
	adds r0, r0, r4
	mov r8, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _08036E3E
	adds r0, r4, #0
	adds r0, #0x7d
	strb r2, [r0]
	b _08036F00
_08036E3E:
	cmp r5, #4
	bne _08036ECC
	str r2, [sp]
	bl sub_08000E50
	movs r1, #3
	mov sb, r1
	ands r0, r1
	ldr r2, [sp]
	cmp r0, #0
	beq _08036E62
	ldr r0, _08036E84 @ =gUnk_02034350
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08036E8C
_08036E62:
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x3c
	strb r0, [r1]
	strh r2, [r4, #0x2a]
	ldr r0, [r6]
	strb r5, [r0]
	ldr r0, _08036E88 @ =0x00000159
	bl sub_080A3268
	b _08036F00
	.align 2, 0
_08036E84: .4byte gUnk_02034350
_08036E88: .4byte 0x00000159
_08036E8C:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #4
	bne _08036ECC
	adds r0, r4, #0
	adds r0, #0x7e
	strb r2, [r0]
	bl sub_08000E50
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	ldr r0, [r6]
	ldrb r0, [r0, #5]
	cmp r0, r1
	beq _08036EB0
	strb r1, [r7]
	b _08036EB8
_08036EB0:
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r7]
_08036EB8:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	subs r0, #3
	ldrb r0, [r0]
	strb r0, [r1, #5]
	adds r0, r4, #0
	bl sub_08036C90
	b _08036F00
_08036ECC:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _08036F0C @ =gUnk_080CF147
	cmp r0, #0
	bne _08036EDE
	ldr r1, _08036F10 @ =gUnk_080CF142
_08036EDE:
	adds r2, r4, #0
	adds r2, #0x7e
	ldrb r0, [r2]
	adds r0, r1, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08036F00
	movs r0, #0
	strb r0, [r2]
_08036F00:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036F0C: .4byte gUnk_080CF147
_08036F10: .4byte gUnk_080CF142

	thumb_func_start sub_08036F14
sub_08036F14: @ 0x08036F14
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_0801D2B4
	movs r5, #0
	adds r7, r4, #0
_08036F28:
	ldr r0, [r7]
	lsls r1, r5, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_0801D2B4
	adds r5, #1
	cmp r5, #3
	bls _08036F28
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r5, r0, #1
	cmp r5, #0
	beq _08036F5E
_08036F48:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_0801D2B4
	subs r5, #1
	cmp r5, #0
	bne _08036F48
_08036F5E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08036F60
sub_08036F60: @ 0x08036F60
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #4
	beq _08036FA8
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08036FA8
	adds r3, r2, #0
	adds r3, #0x76
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x74
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldrh r0, [r3]
	cmp r0, #0x9b
	bhi _08036FA0
	strb r4, [r2, #0xe]
	b _08036FA8
_08036FA0:
	cmp r0, #0xa4
	bls _08036FA8
	movs r0, #0xff
	strb r0, [r2, #0xe]
_08036FA8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08036FAC
sub_08036FAC: @ 0x08036FAC
	push {lr}
	adds r2, r0, #0
	ldr r0, _08036FD0 @ =gUnk_030010A0
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08036FDE
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08036FD8
	ldr r0, _08036FD4 @ =0x00000163
	bl sub_080A3268
	b _08036FDE
	.align 2, 0
_08036FD0: .4byte gUnk_030010A0
_08036FD4: .4byte 0x00000163
_08036FD8:
	ldr r0, _08036FE0 @ =0x000001B1
	bl sub_080A3268
_08036FDE:
	pop {pc}
	.align 2, 0
_08036FE0: .4byte 0x000001B1

	thumb_func_start sub_08036FE4
sub_08036FE4: @ 0x08036FE4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08037048
	adds r0, r2, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037048
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r3, [r0]
	adds r4, r0, #0
	cmp r3, #0
	beq _08037048
	adds r0, #2
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0xff
	beq _0803702C
	cmp r0, #0
	bne _08037022
	adds r1, r2, #0
	adds r1, #0x7a
	ldrh r5, [r1]
	adds r0, r3, r5
	b _0803702A
_08037022:
	adds r1, r2, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, r0, r3
_0803702A:
	strh r0, [r1]
_0803702C:
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803703C
	cmp r0, #3
	beq _08037042
	b _08037048
_0803703C:
	ldrh r0, [r4]
	subs r0, #1
	b _08037046
_08037042:
	ldrh r0, [r4]
	subs r0, #2
_08037046:
	strh r0, [r4]
_08037048:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803704C
sub_0803704C: @ 0x0803704C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08037070
	ldr r0, _0803706C @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08037084
	.align 2, 0
_0803706C: .4byte gUnk_080012C8
_08037070:
	ldr r4, _08037088 @ =gUnk_080CF244
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_08037084:
	pop {r4, r5, pc}
	.align 2, 0
_08037088: .4byte gUnk_080CF244

	thumb_func_start sub_0803708C
sub_0803708C: @ 0x0803708C
	push {lr}
	ldr r2, _080370A0 @ =gUnk_080CF25C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080370A0: .4byte gUnk_080CF25C

	thumb_func_start sub_080370A4
sub_080370A4: @ 0x080370A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08037418
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _08037110
	movs r0, #6
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0803710C @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	b _0803711E
	.align 2, 0
_0803710C: .4byte gUnk_03000BF0
_08037110:
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0803711E
	adds r0, r5, #0
	bl sub_08037408
_0803711E:
	ldr r1, _08037128 @ =gUnk_080CF244
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037128: .4byte gUnk_080CF244

	thumb_func_start sub_0803712C
sub_0803712C: @ 0x0803712C
	push {lr}
	ldr r2, _08037140 @ =gUnk_080CF278
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08037140: .4byte gUnk_080CF278

	thumb_func_start sub_08037144
sub_08037144: @ 0x08037144
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037418
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xe]
	movs r0, #0x30
	strb r0, [r4, #0x1d]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803715C
sub_0803715C: @ 0x0803715C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037418
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08037176
	adds r0, r4, #0
	bl sub_0806F4E8
	b _0803718A
_08037176:
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0803718A
	adds r0, r4, #0
	bl sub_08037408
_0803718A:
	pop {r4, pc}

	thumb_func_start sub_0803718C
sub_0803718C: @ 0x0803718C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xe]
	cmp r4, #0
	bne _080371DA
	bl sub_08037418
	movs r0, #1
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x62
	strb r4, [r0]
	adds r0, #0x12
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080371EC @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_080371DA:
	adds r0, r5, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080371F0
	adds r0, r5, #0
	bl sub_0806F3E4
	b _080371F6
	.align 2, 0
_080371EC: .4byte gUnk_03000BF0
_080371F0:
	adds r0, r5, #0
	bl sub_08037408
_080371F6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080371F8
sub_080371F8: @ 0x080371F8
	push {lr}
	adds r2, r0, #0
	ldr r0, _08037210 @ =gUnk_03003F80
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0803720E
	adds r0, r2, #0
	bl sub_08037408
_0803720E:
	pop {pc}
	.align 2, 0
_08037210: .4byte gUnk_03003F80

	thumb_func_start nullsub_161
nullsub_161: @ 0x08037214
	bx lr
	.align 2, 0

	thumb_func_start sub_08037218
sub_08037218: @ 0x08037218
	push {lr}
	bl sub_08037408
	pop {pc}

	thumb_func_start sub_08037220
sub_08037220: @ 0x08037220
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1c]
	ldrh r0, [r5, #0x32]
	adds r0, #3
	strh r0, [r5, #0x32]
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _0803727C @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x74
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	ldrb r2, [r6]
	adds r1, r4, #0
	bl sub_0800015E
	adds r0, r5, #0
	movs r1, #5
	bl sub_08004260
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803727C: .4byte gUnk_03000BF0

	thumb_func_start sub_08037280
sub_08037280: @ 0x08037280
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08037418
	adds r0, r5, #0
	bl sub_080002A0
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	beq _080372CC
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080372E4 @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	adds r0, r5, #0
	bl sub_08037408
_080372CC:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x40
	bl sub_08049F64
	cmp r0, #0
	beq _080372E2
	movs r0, #2
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
_080372E2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080372E4: .4byte gUnk_03000BF0

	thumb_func_start sub_080372E8
sub_080372E8: @ 0x080372E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08037418
	adds r3, r5, #0
	adds r3, #0x62
	ldr r2, _08037370 @ =gUnk_080CF290
	ldrb r1, [r5, #0xe]
	movs r6, #3
	adds r0, r6, #0
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r3]
	adds r0, r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0803736E
	strb r6, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	strb r4, [r3]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xa0
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _08037374 @ =gUnk_080FD34C
	str r0, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08037378 @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_0803736E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037370: .4byte gUnk_080CF290
_08037374: .4byte gUnk_080FD34C
_08037378: .4byte gUnk_03000BF0

	thumb_func_start sub_0803737C
sub_0803737C: @ 0x0803737C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r1, _080373A8 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080373A6
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r1, _080373AC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_080373A6:
	pop {r4, pc}
	.align 2, 0
_080373A8: .4byte 0xFFFF0000
_080373AC: .4byte gLinkEntity

	thumb_func_start sub_080373B0
sub_080373B0: @ 0x080373B0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080373C4
	movs r0, #5
	strb r0, [r1, #0xc]
_080373C4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080373C8
sub_080373C8: @ 0x080373C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080373DC
	adds r0, r4, #0
	bl sub_08037408
_080373DC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080373E0
sub_080373E0: @ 0x080373E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _080373F2
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_080373F2:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08037406
	adds r0, r4, #0
	bl sub_08037408
_08037406:
	pop {r4, pc}

	thumb_func_start sub_08037408
sub_08037408: @ 0x08037408
	push {lr}
	movs r1, #5
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_08037418
sub_08037418: @ 0x08037418
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _08037464 @ =gUnk_03000BF0
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	ldr r1, _08037468 @ =0x00004067
	cmp r0, r1
	bne _08037460
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrb r2, [r6]
	adds r1, r4, #0
	bl sub_0800015E
	bl sub_0805E780
_08037460:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037464: .4byte gUnk_03000BF0
_08037468: .4byte 0x00004067

	thumb_func_start sub_0803746C
sub_0803746C: @ 0x0803746C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08037488 @ =gUnk_080CF294
	bl sub_0800129E
	movs r3, #0x15
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08037488: .4byte gUnk_080CF294

	thumb_func_start sub_0803748C
sub_0803748C: @ 0x0803748C
	push {lr}
	ldr r2, _080374A0 @ =gUnk_080CF2AC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080374A0: .4byte gUnk_080CF2AC

	thumb_func_start sub_080374A4
sub_080374A4: @ 0x080374A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r2, [r0]
	cmp r2, #0x87
	bne _080374D4
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bne _080374BC
	adds r0, r4, #0
	bl sub_08037ACC
_080374BC:
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08037B48
	b _08037534
_080374D4:
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #6
	beq _0803752E
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x27
	bne _080374F2
	cmp r2, #0x80
	bne _080374F2
	adds r0, r4, #0
	bl sub_08037A14
	b _08037534
_080374F2:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08037534
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0x10
	eors r0, r1
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_08037810
	cmp r0, #0
	beq _08037534
	movs r0, #4
	strb r0, [r4, #0xe]
	b _08037534
_0803752E:
	adds r0, r4, #0
	bl sub_08037A58
_08037534:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037546
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037546:
	ldr r1, _08037550 @ =gUnk_080CF294
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08037550: .4byte gUnk_080CF294

	thumb_func_start nullsub_162
nullsub_162: @ 0x08037554
	bx lr
	.align 2, 0

	thumb_func_start sub_08037558
sub_08037558: @ 0x08037558
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x76
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08037794
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037580
sub_08037580: @ 0x08037580
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037810
	cmp r0, #0
	bne _080375A2
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080375A2
	adds r0, r4, #0
	bl sub_080377B0
_080375A2:
	pop {r4, pc}

	thumb_func_start sub_080375A4
sub_080375A4: @ 0x080375A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080378B0
	cmp r0, #0
	bne _080375F4
	adds r0, r4, #0
	bl sub_08037810
	cmp r0, #0
	bne _080375F4
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080375D2
	adds r0, r4, #0
	bl sub_08037794
	b _080375F4
_080375D2:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080375F4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080375F4
	adds r0, r4, #0
	bl sub_080379BC
_080375F4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080375F8
sub_080375F8: @ 0x080375F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080378B0
	cmp r0, #0
	bne _08037622
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037622
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x18
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
_08037622:
	pop {r4, pc}

	thumb_func_start sub_08037624
sub_08037624: @ 0x08037624
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080378B0
	cmp r0, #0
	bne _0803768E
	adds r0, r4, #0
	bl sub_08037914
	cmp r0, #0
	bne _0803768E
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037652
	adds r0, r4, #0
	bl sub_08037794
	b _0803768E
_08037652:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803767C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803768E
	adds r0, r4, #0
	bl sub_080379BC
	b _0803768E
_0803767C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803768E
	adds r0, r4, #0
	bl sub_0803797C
_0803768E:
	pop {r4, pc}

	thumb_func_start sub_08037690
sub_08037690: @ 0x08037690
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080376B6
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08037794
	b _080376CC
_080376B6:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080376CC
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x27
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080AEF88
_080376CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080376D0
sub_080376D0: @ 0x080376D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080379EC
	cmp r0, #0
	bne _0803773A
	bl sub_08077B2C
	ldr r2, _08037724 @ =gUnk_03003F80
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08037728 @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA6C
	adds r0, r4, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803773A
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803772C
	adds r0, r4, #0
	bl sub_08037A58
	b _0803773A
	.align 2, 0
_08037724: .4byte gUnk_03003F80
_08037728: .4byte gLinkEntity
_0803772C:
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08037B10
_0803773A:
	pop {r4, pc}

	thumb_func_start sub_0803773C
sub_0803773C: @ 0x0803773C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037758
	adds r0, r4, #0
	bl sub_08037794
_08037758:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803775C
sub_0803775C: @ 0x0803775C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037790
	movs r0, #0x42
	movs r1, #0
	bl sub_0804AA60
	adds r4, r0, #0
	cmp r4, #0
	beq _0803778A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0804A4E4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08037C0C
_0803778A:
	adds r0, r5, #0
	bl sub_0805E7BC
_08037790:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08037794
sub_08037794: @ 0x08037794
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x74
	movs r1, #0x1e
	strh r1, [r2]
	subs r2, #0x35
	movs r1, #0x26
	strb r1, [r2]
	ldrb r1, [r0, #0x14]
	bl sub_080042AC
	pop {pc}

	thumb_func_start sub_080377B0
sub_080377B0: @ 0x080377B0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	bl sub_08000E50
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	bl sub_08000E50
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080377F8
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080377F8
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _080377FE
_080377F8:
	movs r0, #0x18
	ands r5, r0
	strb r5, [r4, #0x15]
_080377FE:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, r5, pc}

	thumb_func_start sub_08037810
sub_08037810: @ 0x08037810
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x76
	ldrb r0, [r1]
	cmp r0, #0
	bne _080378A8
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080378AC
	ldr r6, _080378A4 @ =gUnk_020000B0
	ldr r0, [r6]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	movs r3, #0x40
	bl sub_0806FCB8
	cmp r0, #0
	beq _080378AC
	ldr r1, [r6]
	adds r0, r5, #0
	bl sub_080045C4
	ldrb r1, [r5, #0x15]
	subs r0, r0, r1
	adds r0, #6
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xc
	bhi _080378AC
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r4, #0x18
	movs r0, #0x18
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	ldr r1, [r6]
	adds r0, r5, #0
	bl sub_080045C4
	adds r0, #4
	ands r0, r4
	strb r0, [r5, #0x15]
	lsrs r0, r0, #3
	strb r0, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r2, [r6]
	ldrh r1, [r2, #0x2e]
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r3, r5, #0
	adds r3, #0x7a
	strh r0, [r3]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_080042AC
	movs r0, #1
	b _080378AE
	.align 2, 0
_080378A4: .4byte gUnk_020000B0
_080378A8:
	subs r0, #1
	strb r0, [r1]
_080378AC:
	movs r0, #0
_080378AE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080378B0
sub_080378B0: @ 0x080378B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803790C
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _08037910
	ldr r5, _08037908 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_0804A044
	ldrb r1, [r4, #0x15]
	cmp r0, r1
	bne _08037910
	ldr r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x18
	bl sub_0806FCB8
	cmp r0, #0
	beq _08037910
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, #0xfb
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_080042AC
	movs r0, #1
	b _08037912
	.align 2, 0
_08037908: .4byte gUnk_020000B0
_0803790C:
	subs r0, #1
	strb r0, [r1]
_08037910:
	movs r0, #0
_08037912:
	pop {r4, r5, pc}

	thumb_func_start sub_08037914
sub_08037914: @ 0x08037914
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08037970
	ldr r7, _08037950 @ =gUnk_020000B0
	ldr r0, [r7]
	adds r5, r4, #0
	adds r5, #0x78
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x7a
	ldrh r2, [r6]
	movs r3, #0x28
	bl sub_0806FCB8
	cmp r0, #0
	bne _08037954
	ldr r0, [r7]
	ldrh r1, [r0, #0x2e]
	strh r1, [r5]
	ldrh r0, [r0, #0x32]
	strh r0, [r6]
	adds r0, r4, #0
	bl sub_0803797C
	movs r0, #0
	b _08037978
	.align 2, 0
_08037950: .4byte gUnk_020000B0
_08037954:
	ldrh r1, [r5]
	ldrh r2, [r6]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0806FCB8
	cmp r0, #0
	bne _08037968
	movs r0, #0
	b _08037978
_08037968:
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0x3c
	strb r0, [r1]
_08037970:
	adds r0, r4, #0
	bl sub_08037794
	movs r0, #1
_08037978:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803797C
sub_0803797C: @ 0x0803797C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x18
	movs r0, #0x18
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r2, [r2]
	adds r3, r5, #0
	adds r3, #0x7a
	ldrh r3, [r3]
	bl sub_080045D4
	adds r0, #4
	ands r0, r4
	strb r0, [r5, #0x15]
	lsrs r0, r0, #3
	ldrb r1, [r5, #0x14]
	cmp r0, r1
	beq _080379BA
	strb r0, [r5, #0x14]
	adds r1, r0, #4
	adds r0, r5, #0
	bl sub_080042AC
_080379BA:
	pop {r4, r5, pc}

	thumb_func_start sub_080379BC
sub_080379BC: @ 0x080379BC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x18
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	bl sub_08000E50
	movs r1, #2
	ands r0, r1
	ldrb r1, [r4, #0x14]
	adds r1, r1, r0
	subs r1, #1
	movs r0, #3
	ands r1, r0
	strb r1, [r4, #0x14]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}

	thumb_func_start sub_080379EC
sub_080379EC: @ 0x080379EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807953C
	cmp r0, #0
	beq _08037A0E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037A0E
	adds r0, r4, #0
	bl sub_08037A58
	movs r0, #1
	b _08037A10
_08037A0E:
	movs r0, #0
_08037A10:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037A14
sub_08037A14: @ 0x08037A14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x18
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x20
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x12
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #5
	strb r0, [r1]
	ldr r1, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_0806FA24
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037A58
sub_08037A58: @ 0x08037A58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037ACC
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xf
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r3, r4, #0
	adds r3, #0x3d
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _08037A84
	movs r0, #0xec
	strb r0, [r3]
_08037A84:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x26
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xf4
	strb r0, [r3]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #4
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #0x30
	movs r0, #0x3c
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037ACC
sub_08037ACC: @ 0x08037ACC
	ldr r3, _08037B04 @ =gUnk_03003F80
	ldr r1, [r3, #0x30]
	ldr r2, _08037B08 @ =0xFFFFFEFF
	ands r1, r2
	str r1, [r3, #0x30]
	ldr r3, _08037B0C @ =gLinkEntity
	ldrb r2, [r3, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x3d
	movs r1, #0x1e
	strb r1, [r2]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #4
	movs r0, #4
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08037B04: .4byte gUnk_03003F80
_08037B08: .4byte 0xFFFFFEFF
_08037B0C: .4byte gLinkEntity

	thumb_func_start sub_08037B10
sub_08037B10: @ 0x08037B10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08037B44 @ =gLinkEntity
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xc
	strb r0, [r1]
	subs r0, #0x14
	bl sub_080526A0
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x7a
	bl sub_0800449C
	cmp r4, #0
	bne _08037B40
	adds r0, r6, #0
	bl sub_08037A58
	adds r1, r6, #0
	adds r1, #0x76
	movs r0, #0xf0
	strb r0, [r1]
_08037B40:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037B44: .4byte gLinkEntity

	thumb_func_start sub_08037B48
sub_08037B48: @ 0x08037B48
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl sub_080A2960
	adds r3, r0, #0
	cmp r3, #0
	beq _08037B88
	ldrb r0, [r4, #0xe]
	movs r2, #0
	strb r0, [r3, #0xb]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x62
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r3, #0x50]
_08037B88:
	adds r0, r4, #0
	adds r0, #0x80
	str r3, [r0]
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl sub_080A2960
	adds r3, r0, #0
	cmp r3, #0
	beq _08037BCA
	ldrb r0, [r4, #0xe]
	strb r0, [r3, #0xb]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r2, #8
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xfd
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r2, [r0]
	str r4, [r3, #0x50]
_08037BCA:
	adds r0, r4, #0
	adds r0, #0x84
	str r3, [r0]
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl sub_080A2960
	adds r3, r0, #0
	cmp r3, #0
	beq _08037C06
	ldrb r0, [r4, #0xe]
	strb r0, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #5
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xf5
	strb r0, [r1]
	str r4, [r3, #0x50]
_08037C06:
	str r3, [r4, #0x54]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037C0C
sub_08037C0C: @ 0x08037C0C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x80
	ldr r2, [r0]
	cmp r2, #0
	beq _08037C1E
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C1E:
	adds r0, r3, #0
	adds r0, #0x84
	ldr r2, [r0]
	cmp r2, #0
	beq _08037C2E
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C2E:
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _08037C3A
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C3A:
	pop {pc}

	thumb_func_start sub_08037C3C
sub_08037C3C: @ 0x08037C3C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	cmp r0, #0
	beq _08037C5C
	ldr r0, _08037C58 @ =gUnk_080012C8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08037C7E
	.align 2, 0
_08037C58: .4byte gUnk_080012C8
_08037C5C:
	ldr r4, _08037C80 @ =gUnk_080CF46C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
_08037C7E:
	pop {r4, r5, pc}
	.align 2, 0
_08037C80: .4byte gUnk_080CF46C

	thumb_func_start sub_08037C84
sub_08037C84: @ 0x08037C84
	push {lr}
	ldr r2, _08037C98 @ =gUnk_080CF484
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08037C98: .4byte gUnk_080CF484

	thumb_func_start sub_08037C9C
sub_08037C9C: @ 0x08037C9C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037CB0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037CB0:
	ldr r1, _08037CBC @ =gUnk_080CF46C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08037CBC: .4byte gUnk_080CF46C

	thumb_func_start sub_08037CC0
sub_08037CC0: @ 0x08037CC0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037CD6
	ldrb r0, [r4, #0xb]
	bl sub_0807CD04
_08037CD6:
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #0x58
	bl sub_0804A7E0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037CE4
sub_08037CE4: @ 0x08037CE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	bl GetProgressFlag
	cmp r0, #0
	beq _08037CF6
	bl sub_0805E780
_08037CF6:
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08037E14
	pop {r4, pc}

	thumb_func_start sub_08037D0C
sub_08037D0C: @ 0x08037D0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08037D1C
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08037D26
_08037D1C:
	adds r0, r4, #0
	bl sub_08037E90
	cmp r0, #0
	bne _08037D52
_08037D26:
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _08037D40
	adds r0, r4, #0
	bl sub_08037E14
	b _08037D52
_08037D40:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037D52
	adds r0, r4, #0
	bl sub_08037E14
_08037D52:
	pop {r4, pc}

	thumb_func_start sub_08037D54
sub_08037D54: @ 0x08037D54
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08037DC4
	movs r0, #2
	eors r0, r1
	strb r0, [r2]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08037E0C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _08037E0C
	ldrb r0, [r4, #0x15]
	strb r0, [r2, #0x15]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	ldr r0, _08037DBC @ =gUnk_080CF490
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, _08037DC0 @ =0x0000FFFD
	strh r0, [r2, #0x36]
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_08004488
	b _08037E0C
	.align 2, 0
_08037DBC: .4byte gUnk_080CF490
_08037DC0: .4byte 0x0000FFFD
_08037DC4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037E0C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037DEE
	strb r3, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	orrs r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08037E14
	b _08037E0C
_08037DEE:
	ldr r1, _08037E10 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
_08037E0C:
	pop {r4, pc}
	.align 2, 0
_08037E10: .4byte gLinkEntity

	thumb_func_start sub_08037E14
sub_08037E14: @ 0x08037E14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #8
	strb r0, [r5, #0xe]
	ldr r1, _08037E6C @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	adds r4, r0, #4
	movs r0, #0x18
	ands r4, r0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl sub_0808094C
	ldr r1, _08037E70 @ =0x00002004
	adds r0, r0, r1
	lsrs r3, r4, #2
	ldr r1, _08037E74 @ =gUnk_080CF498
	adds r3, r3, r1
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r2, r2, r3
	movs r3, #0
	bl sub_080AE4CC
	cmp r0, #0
	beq _08037E78
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _08037E7A
	.align 2, 0
_08037E6C: .4byte gLinkEntity
_08037E70: .4byte 0x00002004
_08037E74: .4byte gUnk_080CF498
_08037E78:
	strb r4, [r5, #0x15]
_08037E7A:
	ldrb r0, [r5, #0x15]
	lsrs r4, r0, #3
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _08037E8E
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08004260
_08037E8E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08037E90
sub_08037E90: @ 0x08037E90
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08037EA8 @ =gLinkEntity
	movs r2, #8
	bl sub_0804A044
	adds r1, r0, #0
	cmp r1, #0xff
	bne _08037EAC
	movs r0, #0
	b _08037EC6
	.align 2, 0
_08037EA8: .4byte gLinkEntity
_08037EAC:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0xe]
	strb r1, [r4, #0x15]
	lsrs r0, r1, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	movs r0, #1
_08037EC6:
	pop {r4, pc}

	thumb_func_start sub_08037EC8
sub_08037EC8: @ 0x08037EC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08037EE4 @ =gUnk_080CF4A0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08037EE4: .4byte gUnk_080CF4A0

	thumb_func_start sub_08037EE8
sub_08037EE8: @ 0x08037EE8
	push {lr}
	ldr r2, _08037EFC @ =gUnk_080CF4B8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08037EFC: .4byte gUnk_080CF4B8

	thumb_func_start sub_08037F00
sub_08037F00: @ 0x08037F00
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037F14
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037F14:
	ldr r1, _08037F54 @ =gUnk_080CF4A0
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x94
	bne _08037F50
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08037F46
	ldr r0, [r4, #0x20]
	asrs r0, r0, #2
_08037F46:
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08037F50:
	pop {r4, pc}
	.align 2, 0
_08037F54: .4byte gUnk_080CF4A0

	thumb_func_start sub_08037F58
sub_08037F58: @ 0x08037F58
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037F6E
	ldrb r0, [r4, #0xb]
	bl sub_0807CD04
_08037F6E:
	ldrb r0, [r4, #0xa]
	movs r2, #0x58
	cmp r0, #0
	beq _08037F78
	movs r2, #0x59
_08037F78:
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_0804A7E0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037F84
sub_08037F84: @ 0x08037F84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001242
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08037F9E
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
_08037F9E:
	pop {r4, pc}

	thumb_func_start sub_08037FA0
sub_08037FA0: @ 0x08037FA0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	bl GetProgressFlag
	cmp r0, #0
	beq _08037FB2
	bl sub_0805E780
_08037FB2:
	adds r0, r5, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x80
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08037FE0
sub_08037FE0: @ 0x08037FE0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _08037FF8
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08038046
_08037FF8:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803802C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038046
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	movs r0, #0xe0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_08038168
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _08038046
_0803802C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038046
	movs r0, #0x40
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08038046:
	pop {r4, pc}

	thumb_func_start sub_08038048
sub_08038048: @ 0x08038048
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	bl sub_080AEF88
	movs r0, #0x36
	ldrsh r6, [r4, r0]
	bl sub_08000E50
	adds r5, r0, #0
	movs r0, #0xf
	ands r5, r0
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _08038088
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08004260
	b _0803810C
_08038088:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08038098
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	b _080380B0
_08038098:
	adds r0, r4, #0
	bl sub_080002B8
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x50
	bne _080380B0
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080380B0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080380C8
	adds r0, r5, #0
	adds r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08038168
_080380C8:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080380E2
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r6, r0
	bge _080380E2
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	movs r0, #1
	strb r0, [r4, #0xd]
_080380E2:
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r6, r0
	bge _080380F6
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	b _08038100
_080380F6:
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
_08038100:
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
_0803810C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08038110
sub_08038110: @ 0x08038110
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038164
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	cmp r0, #4
	bhi _08038150
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_08038168
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _08038164
_08038150:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	strb r0, [r2]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08038164:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038168
sub_08038168: @ 0x08038168
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803817E
	adds r0, r4, #0
	bl sub_08049EE4
	strb r0, [r4, #0x15]
	b _080381AA
_0803817E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08038196
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _080381AA
_08038196:
	bl sub_08000E50
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x18
	ldrb r0, [r4, #0x15]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_080381AA:
	pop {r4, pc}

	thumb_func_start sub_080381AC
sub_080381AC: @ 0x080381AC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _080381D0
	ldr r0, _080381CC @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _080381F2
	.align 2, 0
_080381CC: .4byte gUnk_080012C8
_080381D0:
	ldr r4, _080381F4 @ =gUnk_080CF4C8
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
_080381F2:
	pop {r4, r5, pc}
	.align 2, 0
_080381F4: .4byte gUnk_080CF4C8

	thumb_func_start sub_080381F8
sub_080381F8: @ 0x080381F8
	push {lr}
	ldr r2, _0803820C @ =gUnk_080CF4E0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803820C: .4byte gUnk_080CF4E0

	thumb_func_start sub_08038210
sub_08038210: @ 0x08038210
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038224
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08038224:
	ldr r1, _08038230 @ =gUnk_080CF4C8
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08038230: .4byte gUnk_080CF4C8

	thumb_func_start sub_08038234
sub_08038234: @ 0x08038234
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803824A
	ldrb r0, [r4, #0xb]
	bl sub_0807CD04
_0803824A:
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #0x58
	bl sub_0804A7E0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038258
sub_08038258: @ 0x08038258
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	bl GetProgressFlag
	cmp r0, #0
	beq _0803826A
	bl sub_0805E780
_0803826A:
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080383AC
	pop {r4, pc}

	thumb_func_start sub_0803827C
sub_0803827C: @ 0x0803827C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803828C
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080382BC
_0803828C:
	ldr r5, _080382B8 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #8
	bl sub_0804A044
	cmp r0, #0xff
	bne _080382B0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #0x24
	bl sub_0806FCB8
	cmp r0, #0
	beq _080382BC
_080382B0:
	adds r0, r4, #0
	bl sub_080383E4
	b _080382E8
	.align 2, 0
_080382B8: .4byte gLinkEntity
_080382BC:
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080382D6
	adds r0, r4, #0
	bl sub_080383AC
	b _080382E8
_080382D6:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080382E8
	adds r0, r4, #0
	bl sub_080383AC
_080382E8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080382EC
sub_080382EC: @ 0x080382EC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038300
	movs r0, #3
	strb r0, [r1, #0xc]
_08038300:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08038304
sub_08038304: @ 0x08038304
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08004276
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _08038334
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	cmp r0, r1
	bne _08038330
	movs r0, #0x5a
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080383AC
	b _080383AA
_08038330:
	strb r0, [r4, #0x15]
	b _080383AA
_08038334:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080383AA
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	ldrb r3, [r4, #0x15]
	cmp r0, r3
	bne _08038398
	bl sub_08000E50
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0x79
	lsls r5, r1, #0x18
	lsrs r3, r5, #0x18
	adds r2, r0, #0
	movs r6, #0x7a
	adds r6, r6, r4
	mov ip, r6
	ldrb r0, [r2]
	cmp r3, r0
	bne _08038388
	ldrb r6, [r6]
	cmp r3, r6
	bne _08038388
	rsbs r0, r5, #0
	lsrs r1, r0, #0x18
_08038388:
	ldrb r0, [r2]
	mov r3, ip
	strb r0, [r3]
	strb r1, [r2]
	ldrb r0, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x18
	ands r0, r1
_08038398:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
_080383AA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080383AC
sub_080383AC: @ 0x080383AC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, #0xf8
	strh r0, [r4, #0x24]
	ldr r1, _080383E0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _080383DC
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_080383DC:
	pop {r4, pc}
	.align 2, 0
_080383E0: .4byte gLinkEntity

	thumb_func_start sub_080383E4
sub_080383E4: @ 0x080383E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldr r1, _0803842C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_0803842C: .4byte gLinkEntity

	thumb_func_start sub_08038430
sub_08038430: @ 0x08038430
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803844C @ =gUnk_080CF4F0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0803844C: .4byte gUnk_080CF4F0

	thumb_func_start sub_08038450
sub_08038450: @ 0x08038450
	push {lr}
	ldr r2, _08038464 @ =gUnk_080CF508
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08038464: .4byte gUnk_080CF508

	thumb_func_start sub_08038468
sub_08038468: @ 0x08038468
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803847C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803847C:
	ldr r1, _080384B0 @ =gUnk_080CF4F0
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080384D8
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x5a
	bne _080384CA
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x14
	beq _080384BA
	cmp r0, #0x14
	bgt _080384B4
	cmp r0, #0xe
	beq _080384C0
	b _080384D8
	.align 2, 0
_080384B0: .4byte gUnk_080CF4F0
_080384B4:
	cmp r0, #0x15
	beq _080384C0
	b _080384D8
_080384BA:
	movs r0, #5
	strb r0, [r4, #0xc]
	b _080384D8
_080384C0:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	b _080384D8
_080384CA:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x1d
	bne _080384D8
	adds r0, r4, #0
	bl sub_08038754
_080384D8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_163
nullsub_163: @ 0x080384DC
	bx lr
	.align 2, 0

	thumb_func_start sub_080384E0
sub_080384E0: @ 0x080384E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r5, #1
	movs r0, #1
	strb r0, [r6, #0xc]
	bl sub_08000E50
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r6, #0x15]
	lsrs r0, r0, #2
	strb r0, [r6, #0x14]
	ldrb r1, [r6, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6, #0x10]
	strb r4, [r6, #0xe]
	movs r0, #0x20
	strb r0, [r6, #0xf]
	adds r0, r6, #0
	adds r0, #0x82
	strb r4, [r0]
	bl sub_08000E50
	ands r0, r5
	adds r1, r6, #0
	adds r1, #0x80
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x81
	strb r4, [r0]
	subs r1, #0x41
	movs r0, #0x72
	strb r0, [r1]
	ldrb r1, [r6, #0x14]
	adds r0, r6, #0
	bl sub_08004260
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08038534
sub_08038534: @ 0x08038534
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080387F0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08038594
	strb r0, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08038578
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803856A
	adds r1, #7
	b _0803856C
_0803856A:
	adds r1, #1
_0803856C:
	movs r0, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	b _0803858A
_08038578:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
_0803858A:
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _080385C8
_08038594:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080385C8
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_0803872C
	cmp r0, #0
	beq _080385C8
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FCAC
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_080385C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080385CC
sub_080385CC: @ 0x080385CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080387F0
	adds r0, r4, #0
	movs r1, #0x60
	bl sub_0803872C
	cmp r0, #0
	beq _08038604
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xf]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FCAC
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _08038648
_08038604:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038648
	movs r6, #0x10
	strb r6, [r4, #0xf]
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08038622
	adds r0, r4, #0
	bl sub_0806FCAC
	b _08038638
_08038622:
	ldrb r5, [r4, #0x14]
	bl sub_08000E50
	ands r0, r6
	cmp r0, #0
	beq _08038632
	adds r1, r5, #2
	b _08038634
_08038632:
	adds r1, r5, #6
_08038634:
	movs r0, #7
	ands r0, r1
_08038638:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_08038648:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803864C
sub_0803864C: @ 0x0803864C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080387F0
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0803872C
	cmp r0, #0
	beq _08038668
	adds r0, r4, #0
	bl sub_08038754
	b _080386B4
_08038668:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080386B4
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x81
	ldrb r0, [r2]
	cmp r0, #0
	bne _08038698
	ldrh r0, [r4, #0x24]
	adds r0, #0x40
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	ble _080386B4
	movs r0, #1
	strb r0, [r2]
	b _080386B4
_08038698:
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _080386AE
	adds r0, r2, #0
	subs r0, #0x50
	strh r0, [r4, #0x24]
	b _080386B4
_080386AE:
	adds r0, r4, #0
	bl sub_08038754
_080386B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080386B8
sub_080386B8: @ 0x080386B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080387F0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	adds r1, r0, #0
	cmp r1, #1
	bne _08038720
	strb r1, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x3f
	movs r0, #0x72
	strb r0, [r2]
	strb r1, [r4, #0xe]
	movs r0, #0x80
	strb r0, [r4, #0xf]
	strh r0, [r4, #0x24]
	subs r2, #0x16
	ldrb r1, [r2]
	subs r0, #0xb9
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #0x70
	bl sub_0801D2B4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08038720
	adds r0, r4, #0
	bl sub_0806FAB0
_08038720:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038724
sub_08038724: @ 0x08038724
	push {lr}
	bl sub_08038754
	pop {pc}

	thumb_func_start sub_0803872C
sub_0803872C: @ 0x0803872C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08038750
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _08038750
	movs r0, #1
	b _08038752
_08038750:
	movs r0, #0
_08038752:
	pop {r4, r5, pc}

	thumb_func_start sub_08038754
sub_08038754: @ 0x08038754
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5a
	strb r0, [r1]
	movs r1, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080387C0 @ =0x0000012B
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #0x71
	bl sub_0801D2B4
	ldrb r2, [r4, #0x15]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _080387C4
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, #9
	adds r0, r4, #0
	bl sub_08004260
	b _080387D8
	.align 2, 0
_080387C0: .4byte 0x0000012B
_080387C4:
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_080387D8:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _080387EE
	adds r0, r4, #0
	bl sub_0806FAB0
_080387EE:
	pop {r4, pc}

	thumb_func_start sub_080387F0
sub_080387F0: @ 0x080387F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _08038890
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _08038890
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08038868 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xf
	beq _08038836
	cmp r0, #0x2a
	bne _0803883A
_08038836:
	movs r0, #0x20
	strb r0, [r5]
_0803883A:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #1
	ldr r1, _0803886C @ =gUnk_080CF520
	adds r0, r0, r1
	ldrb r5, [r4, #0x15]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002CC
	cmp r0, #0xf
	beq _0803885A
	cmp r0, #0x2a
	bne _08038870
_0803885A:
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	b _0803887E
	.align 2, 0
_08038868: .4byte gUnk_03000BF0
_0803886C: .4byte gUnk_080CF520
_08038870:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0803887E
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
_0803887E:
	ldrb r0, [r4, #0x15]
	cmp r5, r0
	beq _08038890
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_08038890:
	adds r0, r4, #0
	bl sub_08004274
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	bne _080388A8
	adds r0, r4, #0
	bl sub_080AEF88
	b _080388B2
_080388A8:
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806F69C
_080388B2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080388B4
sub_080388B4: @ 0x080388B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080388D0 @ =gUnk_080CF600
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_080388D0: .4byte gUnk_080CF600

	thumb_func_start sub_080388D4
sub_080388D4: @ 0x080388D4
	push {lr}
	ldr r2, _080388E8 @ =gUnk_080CF618
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080388E8: .4byte gUnk_080CF618

	thumb_func_start sub_080388EC
sub_080388EC: @ 0x080388EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x43
	ldrb r0, [r6]
	cmp r0, #0
	beq _08038902
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08038902:
	ldr r1, _08038948 @ =gUnk_080CF600
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803897E
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _0803897E
	ldr r5, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	adds r0, r5, #0
	adds r0, #0x3e
	strb r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	beq _0803894C
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	b _0803897E
	.align 2, 0
_08038948: .4byte gUnk_080CF600
_0803894C:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0803897E
	adds r0, r1, #0
	adds r0, #0x12
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r5, #0x15]
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	ldrb r0, [r2]
	adds r0, #0x14
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
	adds r0, r5, #0
	movs r1, #1
	bl sub_08038C84
_0803897E:
	pop {r4, r5, r6, pc}

	thumb_func_start nullsub_164
nullsub_164: @ 0x08038980
	bx lr
	.align 2, 0

	thumb_func_start sub_08038984
sub_08038984: @ 0x08038984
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x13
	bl sub_080A7EE0
	adds r6, r0, #0
	cmp r6, #0
	beq _080389E6
	adds r0, r5, #0
	bl sub_0804A720
	movs r4, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	str r6, [r5, #0x54]
	bl sub_08000E50
	movs r1, #6
	ands r0, r1
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	strh r4, [r0]
	subs r0, #6
	strb r1, [r0]
	str r5, [r6, #0x50]
	strb r1, [r6, #0xa]
	movs r0, #0xff
	strb r0, [r6, #0x14]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_08038BA8
_080389E6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080389E8
sub_080389E8: @ 0x080389E8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r0, [r1]
	cmp r0, #0
	beq _08038A08
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038A68
	movs r0, #0x80
	strh r0, [r4, #0x24]
	b _08038A68
_08038A08:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038A22
	adds r0, r4, #0
	bl sub_08038BA8
	adds r0, r6, #0
	bl sub_08038C2C
	b _08038A68
_08038A22:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08038A2E
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08038A68
_08038A2E:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08038A68
	movs r0, #0xc
	strb r0, [r4, #0xe]
	ldrb r1, [r6, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08038A5C
	ldrb r5, [r6, #0x14]
	bl sub_08000E50
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08038A54
	adds r1, r5, #1
	b _08038A56
_08038A54:
	adds r1, r5, #7
_08038A56:
	movs r0, #7
	ands r0, r1
	strb r0, [r6, #0x14]
_08038A5C:
	adds r0, r4, #0
	bl sub_08038BA8
	adds r0, r6, #0
	bl sub_08038C2C
_08038A68:
	adds r0, r4, #0
	bl sub_08038B90
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08038A70
sub_08038A70: @ 0x08038A70
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	bne _08038AC0
	movs r1, #3
	strb r1, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x82
	movs r0, #4
	strb r0, [r2]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	movs r4, #0x20
	strb r4, [r5, #0xf]
	strb r1, [r6, #0xc]
	adds r1, r6, #0
	adds r1, #0x82
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r6, #0x14]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08038C84
	adds r0, r6, #0
	bl sub_08038C2C
	strb r4, [r6, #0xf]
	str r7, [r6, #0x50]
	str r5, [r6, #0x54]
	b _08038AFE
_08038AC0:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038AFE
	movs r0, #0x10
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	lsrs r1, r0, #2
	strb r1, [r6, #0x14]
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08038C84
	adds r0, r6, #0
	movs r1, #1
	bl sub_08038C84
_08038AFE:
	adds r0, r5, #0
	bl sub_08038B90
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08038B08
sub_08038B08: @ 0x08038B08
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08038B18
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08038B5E
_08038B18:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08038B5E
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x32
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
	ldr r0, _08038B60 @ =0x0000015B
	bl sub_08004488
_08038B5E:
	pop {r4, pc}
	.align 2, 0
_08038B60: .4byte 0x0000015B

	thumb_func_start sub_08038B64
sub_08038B64: @ 0x08038B64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038B8C
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	adds r0, #0x1f
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_08038B8C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038B90
sub_08038B90: @ 0x08038B90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038BA8
sub_08038BA8: @ 0x08038BA8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	ldr r1, _08038BEC @ =gUnk_080CF62C
	movs r5, #7
	ands r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	movs r3, #1
	strb r3, [r0]
	ldr r0, [r4, #0x54]
	adds r0, #0x82
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	cmp r0, #0
	bne _08038BF0
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
	b _08038C2A
	.align 2, 0
_08038BEC: .4byte gUnk_080CF62C
_08038BF0:
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x14]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08038C14
	ldrb r2, [r2, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r1, #1
	ands r0, r5
	movs r3, #6
	cmp r2, r0
	bne _08038C0C
	movs r3, #2
_08038C0C:
	adds r3, r3, r1
	movs r0, #6
	ands r3, r0
	b _08038C18
_08038C14:
	ldrb r3, [r2, #0x14]
	ldrb r1, [r4, #0x14]
_08038C18:
	cmp r3, r1
	beq _08038C2A
	strb r3, [r4, #0x14]
	lsls r0, r3, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
_08038C2A:
	pop {r4, r5, pc}

	thumb_func_start sub_08038C2C
sub_08038C2C: @ 0x08038C2C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08000E50
	ldr r1, _08038C58 @ =gUnk_080CF634
	movs r6, #7
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	ldr r0, [r5, #0x50]
	ldrb r4, [r0, #0x14]
	ldrb r0, [r5, #0x14]
	cmp r0, #0xff
	bne _08038C5C
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08038C84
	b _08038C7C
	.align 2, 0
_08038C58: .4byte gUnk_080CF634
_08038C5C:
	bl sub_08000E50
	ldr r1, _08038C80 @ =gUnk_080CF63C
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r0, r4
	ands r4, r6
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _08038C7C
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08038C84
_08038C7C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08038C80: .4byte gUnk_080CF63C

	thumb_func_start sub_08038C84
sub_08038C84: @ 0x08038C84
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #0x14]
	adds r0, #0x82
	ldrb r0, [r0]
	lsls r0, r0, #3
	orrs r2, r0
	cmp r1, #0
	bne _08038C98
	lsrs r2, r2, #1
_08038C98:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_080042AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08038CA4
sub_08038CA4: @ 0x08038CA4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08038CC8
	ldr r0, _08038CC4 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08038CF0
	.align 2, 0
_08038CC4: .4byte gUnk_080012C8
_08038CC8:
	ldr r4, _08038CF4 @ =gUnk_080CF778
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	adds r0, r5, #0
	bl sub_080391B4
_08038CF0:
	pop {r4, r5, pc}
	.align 2, 0
_08038CF4: .4byte gUnk_080CF778

	thumb_func_start sub_08038CF8
sub_08038CF8: @ 0x08038CF8
	push {lr}
	ldr r2, _08038D0C @ =gUnk_080CF790
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08038D0C: .4byte gUnk_080CF790

	thumb_func_start sub_08038D10
sub_08038D10: @ 0x08038D10
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08038D52
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	bne _08038D3E
	movs r0, #1
	bl sub_0807CC3C
	cmp r0, #0
	bne _08038D3E
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0xbf
	bhi _08038D46
	movs r0, #1
	strb r0, [r5]
	b _08038D46
_08038D3E:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
_08038D46:
	adds r0, r4, #0
	bl sub_08039218
	adds r0, r4, #0
	bl sub_08039260
_08038D52:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038D64
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08038D64:
	ldr r1, _08038D70 @ =gUnk_080CF778
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08038D70: .4byte gUnk_080CF778

	thumb_func_start nullsub_165
nullsub_165: @ 0x08038D74
	bx lr
	.align 2, 0

	thumb_func_start sub_08038D78
sub_08038D78: @ 0x08038D78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08038D96
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #0x30
	strb r0, [r4, #0x16]
	adds r0, r4, #0
	bl sub_08039120
	b _08038D9C
_08038D96:
	adds r0, r4, #0
	bl sub_08039140
_08038D9C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038DA0
sub_08038DA0: @ 0x08038DA0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038DB6
	adds r0, r4, #0
	bl sub_0803901C
_08038DB6:
	adds r0, r4, #0
	bl sub_08039298
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038DC0
sub_08038DC0: @ 0x08038DC0
	push {lr}
	ldr r2, _08038DD4 @ =gUnk_080CF7AC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08038DD4: .4byte gUnk_080CF7AC

	thumb_func_start sub_08038DD8
sub_08038DD8: @ 0x08038DD8
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x10
	strb r1, [r0, #0xe]
	ldr r2, _08038E10 @ =gUnk_080CF7BC
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #0xf]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	movs r1, #4
	bl sub_08004260
	ldr r0, _08038E14 @ =0x000001D9
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08038E10: .4byte gUnk_080CF7BC
_08038E14: .4byte 0x000001D9

	thumb_func_start sub_08038E18
sub_08038E18: @ 0x08038E18
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08038E70
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038E70
	bl sub_08079184
	adds r0, r4, #0
	bl sub_08039218
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08016A04
_08038E70:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038EA2
	movs r0, #0x10
	strb r0, [r4, #0xe]
	bl sub_08000E50
	ldrb r3, [r4, #0x18]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1f
	movs r1, #1
	ands r1, r0
	eors r2, r1
	lsls r2, r2, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08039260
_08038EA2:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038EAC
sub_08038EAC: @ 0x08038EAC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08038ED0
sub_08038ED0: @ 0x08038ED0
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	bl sub_08039218
	pop {pc}

	thumb_func_start sub_08038EE0
sub_08038EE0: @ 0x08038EE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08039298
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08038F1C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038F16
	adds r0, r4, #0
	bl sub_0803901C
	b _08038F1C
_08038F16:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
_08038F1C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038F20
sub_08038F20: @ 0x08038F20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08039298
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038F42
	adds r0, r4, #0
	bl sub_0803901C
_08038F42:
	pop {r4, pc}

	thumb_func_start sub_08038F44
sub_08038F44: @ 0x08038F44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08038F8C @ =gLinkEntity
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	bl sub_080AEF88
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08039298
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _08038F90
	adds r0, r4, #0
	bl sub_08039120
	b _08038F9E
	.align 2, 0
_08038F8C: .4byte gLinkEntity
_08038F90:
	movs r0, #0x1f
	ands r2, r0
	cmp r2, #0
	bne _08038F9E
	adds r0, r4, #0
	bl sub_08039260
_08038F9E:
	pop {r4, pc}

	thumb_func_start sub_08038FA0
sub_08038FA0: @ 0x08038FA0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08038FB8
	adds r0, r4, #0
	bl sub_08039260
_08038FB8:
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r1, [r2]
	cmp r1, #0
	beq _08038FFC
	ldr r3, _08038FF4 @ =0x0000FFFF
	adds r0, r1, r3
	strh r0, [r2]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08038FE0
	ldr r1, _08038FF8 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08038FE0:
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	b _08039018
	.align 2, 0
_08038FF4: .4byte 0x0000FFFF
_08038FF8: .4byte gLinkEntity
_08038FFC:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803917C
	cmp r0, #0
	beq _08039018
	adds r0, r4, #0
	bl sub_0805E7BC
_08039018:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803901C
sub_0803901C: @ 0x0803901C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r3, r0, #0
	movs r5, #3
	ands r5, r3
	cmp r3, #3
	bne _08039042
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _0803903C
	cmp r0, #4
	beq _08039040
	movs r5, #0
	b _08039042
_0803903C:
	movs r5, #1
	b _08039042
_08039040:
	movs r5, #2
_08039042:
	cmp r5, #1
	beq _0803906C
	cmp r5, #2
	beq _080390AA
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _08039068 @ =gUnk_080CF7BE
	lsrs r0, r3, #0x10
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _080390BC
	.align 2, 0
_08039068: .4byte gUnk_080CF7BE
_0803906C:
	movs r1, #3
	movs r0, #3
	strb r0, [r4, #0xc]
	lsrs r0, r3, #8
	ands r0, r1
	adds r0, #2
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_080390C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	bl sub_08000E50
	ands r0, r5
	cmp r0, #0
	beq _080390BC
	bl sub_08000E50
	ands r5, r0
	movs r1, #0xeb
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08004488
	b _080390BC
_080390AA:
	movs r0, #4
	strb r0, [r4, #0xc]
	lsrs r1, r3, #0x10
	movs r0, #1
	ands r1, r0
	adds r1, #2
	adds r0, r4, #0
	bl sub_08004260
_080390BC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080390C0
sub_080390C0: @ 0x080390C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _080390E0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080390E0
	lsrs r0, r5, #0x10
	b _080390E8
_080390E0:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #2
_080390E8:
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080390F8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080390F8
sub_080390F8: @ 0x080390F8
	push {lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803911C
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
_0803911C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08039120
sub_08039120: @ 0x08039120
	push {lr}
	ldr r2, _0803913C @ =gUnk_080CF7C2
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r0, #0x24]
	adds r1, r0, #0
	adds r1, #0x7a
	strb r2, [r1]
	bl sub_0803901C
	pop {pc}
	.align 2, 0
_0803913C: .4byte gUnk_080CF7C2

	thumb_func_start sub_08039140
sub_08039140: @ 0x08039140
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	ldr r1, _08039174 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldr r0, _08039178 @ =0x0000FFFC
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0xb4
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_08039174: .4byte gLinkEntity
_08039178: .4byte 0x0000FFFC

	thumb_func_start sub_0803917C
sub_0803917C: @ 0x0803917C
	push {r4, lr}
	adds r2, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r3, _080391AC @ =gUnk_03000BF0
	movs r4, #0xa
	ldrsh r1, [r3, r4]
	adds r1, #0xc
	subs r0, r0, r1
	movs r1, #0x84
	lsls r1, r1, #1
	cmp r0, r1
	bhi _080391B0
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0xc
	ldrsh r0, [r3, r2]
	adds r0, #0xc
	subs r1, r1, r0
	cmp r1, #0xb8
	bhi _080391B0
	movs r0, #0
	b _080391B2
	.align 2, 0
_080391AC: .4byte gUnk_03000BF0
_080391B0:
	movs r0, #1
_080391B2:
	pop {r4, pc}

	thumb_func_start sub_080391B4
sub_080391B4: @ 0x080391B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803920C
	adds r2, r5, #0
	adds r2, #0x7b
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0803920C
	movs r0, #0x41
	movs r1, #2
	bl sub_0804AA60
	adds r4, r0, #0
	cmp r4, #0
	beq _0803920C
	bl sub_08000E50
	movs r1, #0x17
	ands r1, r0
	lsls r1, r1, #2
	ldr r0, _08039210 @ =gUnk_080CF7C4
	adds r1, r1, r0
	ldr r2, _08039214 @ =gUnk_03000BF0
	ldrh r0, [r1]
	ldrh r3, [r2, #0xa]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0803920C:
	pop {r4, r5, pc}
	.align 2, 0
_08039210: .4byte gUnk_080CF7C4
_08039214: .4byte gUnk_03000BF0

	thumb_func_start sub_08039218
sub_08039218: @ 0x08039218
	push {lr}
	adds r2, r0, #0
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r1, _08039254 @ =gUnk_080CF824
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	ldr r1, _08039258 @ =gUnk_080CF828
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x78
	strh r1, [r0]
	subs r0, #0x20
	ldrb r0, [r0]
	cmp r0, #4
	beq _0803924C
	adds r0, r2, #0
	movs r1, #4
	bl sub_08004260
_0803924C:
	ldr r0, _0803925C @ =0x000001D9
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08039254: .4byte gUnk_080CF824
_08039258: .4byte gUnk_080CF828
_0803925C: .4byte 0x000001D9

	thumb_func_start sub_08039260
sub_08039260: @ 0x08039260
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08039290 @ =gUnk_080CF82E
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _0803928E
	ldr r0, _08039294 @ =gUnk_080CF82C
	ldrb r1, [r4, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
_0803928E:
	pop {r4, pc}
	.align 2, 0
_08039290: .4byte gUnk_080CF82E
_08039294: .4byte gUnk_080CF82C

	thumb_func_start sub_08039298
sub_08039298: @ 0x08039298
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _080392A8
	adds r0, r1, #0
	bl sub_08078930
_080392A8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080392AC
sub_080392AC: @ 0x080392AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080392C8 @ =gUnk_080CF8A4
	bl sub_0800129E
	movs r3, #0x12
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_080392C8: .4byte gUnk_080CF8A4

	thumb_func_start sub_080392CC
sub_080392CC: @ 0x080392CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080392FC @ =gUnk_080CF8BC
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803930C
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08039300
	subs r1, #0x3d
	movs r0, #0x45
	b _0803930A
	.align 2, 0
_080392FC: .4byte gUnk_080CF8BC
_08039300:
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3f
_0803930A:
	strb r0, [r1]
_0803930C:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	cmp r1, #0
	beq _0803933A
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08039334
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	b _0803933A
_08039334:
	adds r0, r4, #0
	bl sub_08016A04
_0803933A:
	pop {r4, pc}

	thumb_func_start sub_0803933C
sub_0803933C: @ 0x0803933C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x44
	bne _08039390
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #6
	bgt _08039390
	cmp r1, #4
	blt _08039390
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08039390
	movs r0, #4
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0x10
	eors r0, r1
	asrs r0, r0, #3
	strb r0, [r5, #0x14]




