
strip_PIE_main:     file format elf64-littleaarch64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	62696c2f 	.inst	0x62696c2f ; undefined
 23c:	2d646c2f 	ldp	s15, s27, [x1,#-224]
 240:	756e696c 	.inst	0x756e696c ; undefined
 244:	61612d78 	.inst	0x61612d78 ; undefined
 248:	36686372 	tbz	w18, #13, eb4 <__libc_csu_fini@@Base+0x424>
 24c:	6f732e34 	.inst	0x6f732e34 ; undefined
 250:	Address 0x0000000000000250 is out of bounds.


Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	00000004 	.inst	0x00000004 ; undefined
 258:	00000010 	.inst	0x00000010 ; undefined
 25c:	00000001 	.inst	0x00000001 ; undefined
 260:	00554e47 	.inst	0x00554e47 ; undefined
 264:	00000000 	.inst	0x00000000 ; undefined
 268:	00000003 	.inst	0x00000003 ; undefined
 26c:	00000007 	.inst	0x00000007 ; undefined
 270:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	00000004 	.inst	0x00000004 ; undefined
 278:	00000014 	.inst	0x00000014 ; undefined
 27c:	00000003 	.inst	0x00000003 ; undefined
 280:	00554e47 	.inst	0x00554e47 ; undefined
 284:	bffe328c 	.inst	0xbffe328c ; undefined
 288:	12ab0bd7 	mov	w23, #0xa7a1ffff            	// #-1482555393
 28c:	84217437 	.inst	0x84217437 ; undefined
 290:	5cb84c89 	ldr	d9, fffffffffff70c20 <__bss_end__@@Base+0xfffffffffff5fbe0>
 294:	b7fefdb5 	tbnz	x21, #63, ffffffffffffe248 <__bss_end__@@Base+0xfffffffffffed208>

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	00000003 	.inst	0x00000003 ; undefined
 29c:	0000000b 	.inst	0x0000000b ; undefined
 2a0:	00000001 	.inst	0x00000001 ; undefined
 2a4:	00000006 	.inst	0x00000006 ; undefined
 2a8:	05235089 	.inst	0x05235089 ; undefined
 2ac:	b8c00420 	.inst	0xb8c00420 ; undefined
 2b0:	0000000b 	.inst	0x0000000b ; undefined
 2b4:	0000000f 	.inst	0x0000000f ; undefined
 2b8:	00000013 	.inst	0x00000013 ; undefined
 2bc:	e834af00 	.inst	0xe834af00 ; undefined
 2c0:	ecd54542 	.inst	0xecd54542 ; undefined
 2c4:	d643096a 	.inst	0xd643096a ; undefined
 2c8:	7c92e3bb 	.inst	0x7c92e3bb ; undefined
 2cc:	1b57dabe 	.inst	0x1b57dabe ; undefined
 2d0:	9ee3cdda 	.inst	0x9ee3cdda ; undefined
 2d4:	1c5871d8 	ldr	s24, b110c <__bss_end__@@Base+0xa00cc>
 2d8:	7c9a7f6b 	.inst	0x7c9a7f6b ; undefined
 2dc:	9ee2140c 	.inst	0x9ee2140c ; undefined
 2e0:	943c5476 	bl	f154b8 <__bss_end__@@Base+0xf04478>
 2e4:	7997ef59 	ldrsh	x25, [x26,#3062]

Disassembly of section .dynsym:

00000000000002e8 <.dynsym>:
	...
 304:	000b0003 	.inst	0x000b0003 ; undefined
 308:	000007c8 	.inst	0x000007c8 ; undefined
	...
 31c:	00140003 	.inst	0x00140003 ; undefined
 320:	00010db8 	.inst	0x00010db8 ; undefined
	...
 330:	00000090 	.inst	0x00000090 ; undefined
 334:	00000020 	.inst	0x00000020 ; undefined
	...
 348:	00000018 	.inst	0x00000018 ; undefined
 34c:	00000022 	.inst	0x00000022 ; undefined
	...
 360:	00000027 	.inst	0x00000027 ; undefined
 364:	00000012 	.inst	0x00000012 ; undefined
	...
 378:	000000ac 	.inst	0x000000ac ; undefined
 37c:	00000020 	.inst	0x00000020 ; undefined
	...
 390:	0000000b 	.inst	0x0000000b ; undefined
 394:	00000012 	.inst	0x00000012 ; undefined
	...
 3a8:	000000cb 	.inst	0x000000cb ; undefined
 3ac:	00000020 	.inst	0x00000020 ; undefined
	...
 3c0:	000000df 	.inst	0x000000df ; undefined
 3c4:	00000020 	.inst	0x00000020 ; undefined
	...
 3d8:	00000011 	.inst	0x00000011 ; undefined
 3dc:	00000012 	.inst	0x00000012 ; undefined
	...
 3f0:	00000068 	.inst	0x00000068 ; undefined
 3f4:	00190010 	.inst	0x00190010 ; undefined
 3f8:	00011040 	.inst	0x00011040 ; undefined
	...
 408:	00000046 	.inst	0x00000046 ; undefined
 40c:	00180010 	.inst	0x00180010 ; undefined
 410:	00011038 	.inst	0x00011038 ; undefined
	...
 420:	00000039 	.inst	0x00000039 ; undefined
 424:	00180010 	.inst	0x00180010 ; undefined
 428:	00011028 	.inst	0x00011028 ; undefined
	...
 438:	0000007b 	.inst	0x0000007b ; undefined
 43c:	00190010 	.inst	0x00190010 ; undefined
 440:	00011040 	.inst	0x00011040 ; undefined
	...
 450:	00000067 	.inst	0x00000067 ; undefined
 454:	00190010 	.inst	0x00190010 ; undefined
 458:	00011040 	.inst	0x00011040 ; undefined
	...
 468:	000000bb 	.inst	0x000000bb ; undefined
 46c:	000d0012 	.inst	0x000d0012 ; undefined
 470:	00000a18 	.inst	0x00000a18 ; undefined
 474:	00000000 	.inst	0x00000000 ; undefined
 478:	00000078 	.inst	0x00000078 ; undefined
 47c:	00000000 	.inst	0x00000000 ; undefined
 480:	0000004d 	.inst	0x0000004d ; undefined
 484:	00190010 	.inst	0x00190010 ; undefined
 488:	00011038 	.inst	0x00011038 ; undefined
	...
 498:	00000034 	.inst	0x00000034 ; undefined
 49c:	000d0012 	.inst	0x000d0012 ; undefined
 4a0:	000009e4 	.inst	0x000009e4 ; undefined
 4a4:	00000000 	.inst	0x00000000 ; undefined
 4a8:	00000034 	.inst	0x00000034 ; undefined
 4ac:	00000000 	.inst	0x00000000 ; undefined
 4b0:	00000080 	.inst	0x00000080 ; undefined
 4b4:	000d0012 	.inst	0x000d0012 ; undefined
 4b8:	00000a90 	.inst	0x00000a90 ; undefined
 4bc:	00000000 	.inst	0x00000000 ; undefined
 4c0:	00000004 	.inst	0x00000004 ; undefined
 4c4:	00000000 	.inst	0x00000000 ; undefined
 4c8:	00000059 	.inst	0x00000059 ; undefined
 4cc:	00190010 	.inst	0x00190010 ; undefined
 4d0:	00011038 	.inst	0x00011038 ; undefined
	...
 4e0:	00000073 	.inst	0x00000073 ; undefined
 4e4:	00190010 	.inst	0x00190010 ; undefined
 4e8:	00011040 	.inst	0x00011040 ; undefined
	...

Disassembly of section .dynstr:

00000000000004f8 <.dynstr>:
 4f8:	62696c00 	.inst	0x62696c00 ; undefined
 4fc:	6f732e63 	.inst	0x6f732e63 ; undefined
 500:	6100362e 	.inst	0x6100362e ; undefined
 504:	74726f62 	.inst	0x74726f62 ; undefined
 508:	69727000 	ldpsw	x0, x28, [x0,#-112]
 50c:	0066746e 	.inst	0x0066746e ; undefined
 510:	78635f5f 	.inst	0x78635f5f ; undefined
 514:	69665f61 	ldpsw	x1, x23, [x27,#-208]
 518:	696c616e 	ldpsw	x14, x24, [x11,#-160]
 51c:	5f00657a 	.inst	0x5f00657a ; undefined
 520:	62696c5f 	.inst	0x62696c5f ; undefined
 524:	74735f63 	.inst	0x74735f63 ; undefined
 528:	5f747261 	sqdmlsl	s1, h19, v4.h[3]
 52c:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
 530:	645f5f00 	.inst	0x645f5f00 ; undefined
 534:	5f617461 	sqshl	d1, d3, #33
 538:	72617473 	.inst	0x72617473 ; undefined
 53c:	655f0074 	.inst	0x655f0074 ; undefined
 540:	61746164 	.inst	0x61746164 ; undefined
 544:	625f5f00 	.inst	0x625f5f00 ; undefined
 548:	735f7373 	.inst	0x735f7373 ; undefined
 54c:	74726174 	.inst	0x74726174 ; undefined
 550:	625f5f00 	.inst	0x625f5f00 ; undefined
 554:	735f7373 	.inst	0x735f7373 ; undefined
 558:	74726174 	.inst	0x74726174 ; undefined
 55c:	5f005f5f 	.inst	0x5f005f5f ; undefined
 560:	7373625f 	.inst	0x7373625f ; undefined
 564:	646e655f 	.inst	0x646e655f ; undefined
 568:	5f005f5f 	.inst	0x5f005f5f ; undefined
 56c:	646e655f 	.inst	0x646e655f ; undefined
 570:	5f005f5f 	.inst	0x5f005f5f ; undefined
 574:	00646e65 	.inst	0x00646e65 ; undefined
 578:	696c5f5f 	ldpsw	xzr, x23, [x26,#-160]
 57c:	635f6362 	.inst	0x635f6362 ; undefined
 580:	665f7573 	.inst	0x665f7573 ; undefined
 584:	00696e69 	.inst	0x00696e69 ; undefined
 588:	4d54495f 	.inst	0x4d54495f ; undefined
 58c:	7265645f 	.inst	0x7265645f ; undefined
 590:	73696765 	.inst	0x73696765 ; undefined
 594:	54726574 	.inst	0x54726574 ; undefined
 598:	6f6c434d 	mls	v13.8h, v26.8h, v12.h[2]
 59c:	6154656e 	.inst	0x6154656e ; undefined
 5a0:	00656c62 	.inst	0x00656c62 ; undefined
 5a4:	6d675f5f 	ldp	d31, d23, [x26,#-400]
 5a8:	735f6e6f 	.inst	0x735f6e6f ; undefined
 5ac:	74726174 	.inst	0x74726174 ; undefined
 5b0:	5f005f5f 	.inst	0x5f005f5f ; undefined
 5b4:	62696c5f 	.inst	0x62696c5f ; undefined
 5b8:	73635f63 	.inst	0x73635f63 ; undefined
 5bc:	6e695f75 	uqrshl	v21.8h, v27.8h, v9.8h
 5c0:	5f007469 	.inst	0x5f007469 ; undefined
 5c4:	525f764a 	.inst	0x525f764a ; undefined
 5c8:	73696765 	.inst	0x73696765 ; undefined
 5cc:	43726574 	.inst	0x43726574 ; undefined
 5d0:	7373616c 	.inst	0x7373616c ; undefined
 5d4:	5f007365 	.inst	0x5f007365 ; undefined
 5d8:	5f4d5449 	shl	d9, d2, #13
 5dc:	69676572 	ldpsw	x18, x25, [x11,#-200]
 5e0:	72657473 	.inst	0x72657473 ; undefined
 5e4:	6c434d54 	ldnp	d20, d19, [x10,#48]
 5e8:	54656e6f 	b.nv	cb3b4 <__bss_end__@@Base+0xba374>
 5ec:	656c6261 	.inst	0x656c6261 ; undefined
 5f0:	494c4700 	.inst	0x494c4700 ; undefined
 5f4:	325f4342 	.inst	0x325f4342 ; undefined
 5f8:	0037312e 	.inst	0x0037312e ; NYI

Disassembly of section .gnu.version:

00000000000005fc <.gnu.version>:
	...
 604:	00020002 	.inst	0x00020002 ; undefined
 608:	00020000 	.inst	0x00020000 ; undefined
 60c:	00000000 	.inst	0x00000000 ; undefined
 610:	00010002 	.inst	0x00010002 ; undefined
 614:	00010001 	.inst	0x00010001 ; undefined
 618:	00010001 	.inst	0x00010001 ; undefined
 61c:	00010001 	.inst	0x00010001 ; undefined
 620:	00010001 	.inst	0x00010001 ; undefined
 624:	00010001 	.inst	0x00010001 ; undefined

Disassembly of section .gnu.version_r:

0000000000000628 <.gnu.version_r>:
 628:	00010001 	.inst	0x00010001 ; undefined
 62c:	00000001 	.inst	0x00000001 ; undefined
 630:	00000010 	.inst	0x00000010 ; undefined
 634:	00000000 	.inst	0x00000000 ; undefined
 638:	06969197 	.inst	0x06969197 ; undefined
 63c:	00020000 	.inst	0x00020000 ; undefined
 640:	000000f9 	.inst	0x000000f9 ; undefined
 644:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .rela.dyn:

0000000000000648 <.rela.dyn>:
 648:	00010da8 	.inst	0x00010da8 ; undefined
 64c:	00000000 	.inst	0x00000000 ; undefined
 650:	00000403 	.inst	0x00000403 ; undefined
 654:	00000000 	.inst	0x00000000 ; undefined
 658:	00000960 	.inst	0x00000960 ; undefined
 65c:	00000000 	.inst	0x00000000 ; undefined
 660:	00010db0 	.inst	0x00010db0 ; undefined
 664:	00000000 	.inst	0x00000000 ; undefined
 668:	00000403 	.inst	0x00000403 ; undefined
 66c:	00000000 	.inst	0x00000000 ; undefined
 670:	00000918 	.inst	0x00000918 ; undefined
 674:	00000000 	.inst	0x00000000 ; undefined
 678:	00010fa8 	.inst	0x00010fa8 ; undefined
 67c:	00000000 	.inst	0x00000000 ; undefined
 680:	00000403 	.inst	0x00000403 ; undefined
 684:	00000000 	.inst	0x00000000 ; undefined
 688:	00000a90 	.inst	0x00000a90 ; undefined
 68c:	00000000 	.inst	0x00000000 ; undefined
 690:	00010fc8 	.inst	0x00010fc8 ; undefined
 694:	00000000 	.inst	0x00000000 ; undefined
 698:	00000403 	.inst	0x00000403 ; undefined
 69c:	00000000 	.inst	0x00000000 ; undefined
 6a0:	00000a18 	.inst	0x00000a18 ; undefined
 6a4:	00000000 	.inst	0x00000000 ; undefined
 6a8:	00010fd0 	.inst	0x00010fd0 ; undefined
 6ac:	00000000 	.inst	0x00000000 ; undefined
 6b0:	00000403 	.inst	0x00000403 ; undefined
 6b4:	00000000 	.inst	0x00000000 ; undefined
 6b8:	000009e4 	.inst	0x000009e4 ; undefined
 6bc:	00000000 	.inst	0x00000000 ; undefined
 6c0:	00011030 	.inst	0x00011030 ; undefined
 6c4:	00000000 	.inst	0x00000000 ; undefined
 6c8:	00000403 	.inst	0x00000403 ; undefined
 6cc:	00000000 	.inst	0x00000000 ; undefined
 6d0:	00011030 	.inst	0x00011030 ; undefined
 6d4:	00000000 	.inst	0x00000000 ; undefined
 6d8:	00010fb0 	.inst	0x00010fb0 ; undefined
 6dc:	00000000 	.inst	0x00000000 ; undefined
 6e0:	00000401 	.inst	0x00000401 ; undefined
 6e4:	00000003 	.inst	0x00000003 ; undefined
	...
 6f0:	00010fb8 	.inst	0x00010fb8 ; undefined
 6f4:	00000000 	.inst	0x00000000 ; undefined
 6f8:	00000401 	.inst	0x00000401 ; undefined
 6fc:	00000004 	.inst	0x00000004 ; undefined
	...
 708:	00010fc0 	.inst	0x00010fc0 ; undefined
 70c:	00000000 	.inst	0x00000000 ; undefined
 710:	00000401 	.inst	0x00000401 ; undefined
 714:	00000006 	.inst	0x00000006 ; undefined
	...
 720:	00010fd8 	.inst	0x00010fd8 ; undefined
 724:	00000000 	.inst	0x00000000 ; undefined
 728:	00000401 	.inst	0x00000401 ; undefined
 72c:	00000008 	.inst	0x00000008 ; undefined
	...
 738:	00010fe0 	.inst	0x00010fe0 ; undefined
 73c:	00000000 	.inst	0x00000000 ; undefined
 740:	00000401 	.inst	0x00000401 ; undefined
 744:	00000009 	.inst	0x00000009 ; undefined
	...

Disassembly of section .rela.plt:

0000000000000750 <.rela.plt>:
 750:	00011000 	.inst	0x00011000 ; undefined
 754:	00000000 	.inst	0x00000000 ; undefined
 758:	00000402 	.inst	0x00000402 ; undefined
 75c:	00000004 	.inst	0x00000004 ; undefined
	...
 768:	00011008 	.inst	0x00011008 ; undefined
 76c:	00000000 	.inst	0x00000000 ; undefined
 770:	00000402 	.inst	0x00000402 ; undefined
 774:	00000005 	.inst	0x00000005 ; undefined
	...
 780:	00011010 	.inst	0x00011010 ; undefined
 784:	00000000 	.inst	0x00000000 ; undefined
 788:	00000402 	.inst	0x00000402 ; undefined
 78c:	00000006 	.inst	0x00000006 ; undefined
	...
 798:	00011018 	.inst	0x00011018 ; undefined
 79c:	00000000 	.inst	0x00000000 ; undefined
 7a0:	00000402 	.inst	0x00000402 ; undefined
 7a4:	00000007 	.inst	0x00000007 ; undefined
	...
 7b0:	00011020 	.inst	0x00011020 ; undefined
 7b4:	00000000 	.inst	0x00000000 ; undefined
 7b8:	00000402 	.inst	0x00000402 ; undefined
 7bc:	0000000a 	.inst	0x0000000a ; undefined
	...

Disassembly of section .init:

00000000000007c8 <.init>:
 7c8:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
 7cc:	910003fd 	mov	x29, sp
 7d0:	9400002e 	bl	888 <printf@plt+0x48>
 7d4:	a8c17bfd 	ldp	x29, x30, [sp],#16
 7d8:	d65f03c0 	ret

Disassembly of section .plt:

00000000000007e0 <__cxa_finalize@plt-0x20>:
 7e0:	a9bf7bf0 	stp	x16, x30, [sp,#-16]!
 7e4:	90000090 	adrp	x16, 10000 <__libc_csu_fini@@Base+0xf570>
 7e8:	f947fe11 	ldr	x17, [x16,#4088]
 7ec:	913fe210 	add	x16, x16, #0xff8
 7f0:	d61f0220 	br	x17
 7f4:	d503201f 	nop
 7f8:	d503201f 	nop
 7fc:	d503201f 	nop

0000000000000800 <__cxa_finalize@plt>:
 800:	b0000090 	adrp	x16, 11000 <__libc_csu_fini@@Base+0x10570>
 804:	f9400211 	ldr	x17, [x16]
 808:	91000210 	add	x16, x16, #0x0
 80c:	d61f0220 	br	x17

0000000000000810 <__libc_start_main@plt>:
 810:	b0000090 	adrp	x16, 11000 <__libc_csu_fini@@Base+0x10570>
 814:	f9400611 	ldr	x17, [x16,#8]
 818:	91002210 	add	x16, x16, #0x8
 81c:	d61f0220 	br	x17

0000000000000820 <__gmon_start__@plt>:
 820:	b0000090 	adrp	x16, 11000 <__libc_csu_fini@@Base+0x10570>
 824:	f9400a11 	ldr	x17, [x16,#16]
 828:	91004210 	add	x16, x16, #0x10
 82c:	d61f0220 	br	x17

0000000000000830 <abort@plt>:
 830:	b0000090 	adrp	x16, 11000 <__libc_csu_fini@@Base+0x10570>
 834:	f9400e11 	ldr	x17, [x16,#24]
 838:	91006210 	add	x16, x16, #0x18
 83c:	d61f0220 	br	x17

0000000000000840 <printf@plt>:
 840:	b0000090 	adrp	x16, 11000 <__libc_csu_fini@@Base+0x10570>
 844:	f9401211 	ldr	x17, [x16,#32]
 848:	91008210 	add	x16, x16, #0x20
 84c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000850 <main@@Base-0x194>:
 850:	d280001d 	mov	x29, #0x0                   	// #0
 854:	d280001e 	mov	x30, #0x0                   	// #0
 858:	aa0003e5 	mov	x5, x0
 85c:	f94003e1 	ldr	x1, [sp]
 860:	910023e2 	add	x2, sp, #0x8
 864:	910003e6 	mov	x6, sp
 868:	90000080 	adrp	x0, 10000 <__libc_csu_fini@@Base+0xf570>
 86c:	f947e800 	ldr	x0, [x0,#4048]
 870:	90000083 	adrp	x3, 10000 <__libc_csu_fini@@Base+0xf570>
 874:	f947e463 	ldr	x3, [x3,#4040]
 878:	90000084 	adrp	x4, 10000 <__libc_csu_fini@@Base+0xf570>
 87c:	f947d484 	ldr	x4, [x4,#4008]
 880:	97ffffe4 	bl	810 <__libc_start_main@plt>
 884:	97ffffeb 	bl	830 <abort@plt>
 888:	90000080 	adrp	x0, 10000 <__libc_csu_fini@@Base+0xf570>
 88c:	f947e000 	ldr	x0, [x0,#4032]
 890:	b4000040 	cbz	x0, 898 <printf@plt+0x58>
 894:	17ffffe3 	b	820 <__gmon_start__@plt>
 898:	d65f03c0 	ret
 89c:	00000000 	.inst	0x00000000 ; undefined
 8a0:	b0000081 	adrp	x1, 11000 <__libc_csu_fini@@Base+0x10570>
 8a4:	b0000080 	adrp	x0, 11000 <__libc_csu_fini@@Base+0x10570>
 8a8:	9100e021 	add	x1, x1, #0x38
 8ac:	9100e000 	add	x0, x0, #0x38
 8b0:	91001c21 	add	x1, x1, #0x7
 8b4:	cb000021 	sub	x1, x1, x0
 8b8:	f100383f 	cmp	x1, #0xe
 8bc:	540000a9 	b.ls	8d0 <printf@plt+0x90>
 8c0:	90000081 	adrp	x1, 10000 <__libc_csu_fini@@Base+0xf570>
 8c4:	f947d821 	ldr	x1, [x1,#4016]
 8c8:	b4000041 	cbz	x1, 8d0 <printf@plt+0x90>
 8cc:	d61f0020 	br	x1
 8d0:	d65f03c0 	ret
 8d4:	d503201f 	nop
 8d8:	b0000081 	adrp	x1, 11000 <__libc_csu_fini@@Base+0x10570>
 8dc:	b0000080 	adrp	x0, 11000 <__libc_csu_fini@@Base+0x10570>
 8e0:	9100e021 	add	x1, x1, #0x38
 8e4:	9100e000 	add	x0, x0, #0x38
 8e8:	cb000021 	sub	x1, x1, x0
 8ec:	9343fc21 	asr	x1, x1, #3
 8f0:	8b41fc21 	add	x1, x1, x1, lsr #63
 8f4:	9341fc21 	asr	x1, x1, #1
 8f8:	b40000c1 	cbz	x1, 910 <printf@plt+0xd0>
 8fc:	90000082 	adrp	x2, 10000 <__libc_csu_fini@@Base+0xf570>
 900:	f947f042 	ldr	x2, [x2,#4064]
 904:	b4000062 	cbz	x2, 910 <printf@plt+0xd0>
 908:	d61f0040 	br	x2
 90c:	d503201f 	nop
 910:	d65f03c0 	ret
 914:	d503201f 	nop
 918:	a9be7bfd 	stp	x29, x30, [sp,#-32]!
 91c:	910003fd 	mov	x29, sp
 920:	f9000bf3 	str	x19, [sp,#16]
 924:	b0000093 	adrp	x19, 11000 <__libc_csu_fini@@Base+0x10570>
 928:	3940e260 	ldrb	w0, [x19,#56]
 92c:	35000140 	cbnz	w0, 954 <printf@plt+0x114>
 930:	90000080 	adrp	x0, 10000 <__libc_csu_fini@@Base+0xf570>
 934:	f947dc00 	ldr	x0, [x0,#4024]
 938:	b4000080 	cbz	x0, 948 <printf@plt+0x108>
 93c:	b0000080 	adrp	x0, 11000 <__libc_csu_fini@@Base+0x10570>
 940:	f9401800 	ldr	x0, [x0,#48]
 944:	97ffffaf 	bl	800 <__cxa_finalize@plt>
 948:	97ffffd6 	bl	8a0 <printf@plt+0x60>
 94c:	52800020 	mov	w0, #0x1                   	// #1
 950:	3900e260 	strb	w0, [x19,#56]
 954:	f9400bf3 	ldr	x19, [sp,#16]
 958:	a8c27bfd 	ldp	x29, x30, [sp],#32
 95c:	d65f03c0 	ret
 960:	90000080 	adrp	x0, 10000 <__libc_csu_fini@@Base+0xf570>
 964:	9136e000 	add	x0, x0, #0xdb8
 968:	f9400001 	ldr	x1, [x0]
 96c:	b5000061 	cbnz	x1, 978 <printf@plt+0x138>
 970:	17ffffda 	b	8d8 <printf@plt+0x98>
 974:	d503201f 	nop
 978:	90000081 	adrp	x1, 10000 <__libc_csu_fini@@Base+0xf570>
 97c:	f947ec21 	ldr	x1, [x1,#4056]
 980:	b4ffff81 	cbz	x1, 970 <printf@plt+0x130>
 984:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
 988:	910003fd 	mov	x29, sp
 98c:	d63f0020 	blr	x1
 990:	a8c17bfd 	ldp	x29, x30, [sp],#16
 994:	17ffffd1 	b	8d8 <printf@plt+0x98>
 998:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
 99c:	910003fd 	mov	x29, sp
 9a0:	90000000 	adrp	x0, 0 <__cxa_finalize@plt-0x800>
 9a4:	912ac000 	add	x0, x0, #0xab0
 9a8:	97ffffa6 	bl	840 <printf@plt>
 9ac:	d503201f 	nop
 9b0:	a8c17bfd 	ldp	x29, x30, [sp],#16
 9b4:	d65f03c0 	ret
 9b8:	a9be7bfd 	stp	x29, x30, [sp,#-32]!
 9bc:	910003fd 	mov	x29, sp
 9c0:	52800060 	mov	w0, #0x3                   	// #3
 9c4:	b9001fa0 	str	w0, [x29,#28]
 9c8:	90000000 	adrp	x0, 0 <__cxa_finalize@plt-0x800>
 9cc:	912ae000 	add	x0, x0, #0xab8
 9d0:	b9401fa1 	ldr	w1, [x29,#28]
 9d4:	97ffff9b 	bl	840 <printf@plt>
 9d8:	d503201f 	nop
 9dc:	a8c27bfd 	ldp	x29, x30, [sp],#32
 9e0:	d65f03c0 	ret

00000000000009e4 <main@@Base>:
 9e4:	a9bd7bfd 	stp	x29, x30, [sp,#-48]!
 9e8:	910003fd 	mov	x29, sp
 9ec:	b9001fa0 	str	w0, [x29,#28]
 9f0:	f9000ba1 	str	x1, [x29,#16]
 9f4:	f90017bf 	str	xzr, [x29,#40]
 9f8:	90000000 	adrp	x0, 0 <__cxa_finalize@plt-0x800>
 9fc:	91266000 	add	x0, x0, #0x998
 a00:	f90017a0 	str	x0, [x29,#40]
 a04:	f94017a0 	ldr	x0, [x29,#40]
 a08:	d63f0000 	blr	x0
 a0c:	52800000 	mov	w0, #0x0                   	// #0
 a10:	a8c37bfd 	ldp	x29, x30, [sp],#48
 a14:	d65f03c0 	ret

0000000000000a18 <__libc_csu_init@@Base>:
 a18:	a9bc7bfd 	stp	x29, x30, [sp,#-64]!
 a1c:	910003fd 	mov	x29, sp
 a20:	a9025bf5 	stp	x21, x22, [sp,#32]
 a24:	90000095 	adrp	x21, 10000 <__libc_csu_fini@@Base+0xf570>
 a28:	a90153f3 	stp	x19, x20, [sp,#16]
 a2c:	90000094 	adrp	x20, 10000 <__libc_csu_fini@@Base+0xf570>
 a30:	9136a2b5 	add	x21, x21, #0xda8
 a34:	9136c294 	add	x20, x20, #0xdb0
 a38:	cb150294 	sub	x20, x20, x21
 a3c:	a90363f7 	stp	x23, x24, [sp,#48]
 a40:	aa0203f6 	mov	x22, x2
 a44:	2a0003f8 	mov	w24, w0
 a48:	aa0103f7 	mov	x23, x1
 a4c:	97ffff5f 	bl	7c8 <__cxa_finalize@plt-0x38>
 a50:	9343fe94 	asr	x20, x20, #3
 a54:	b4000154 	cbz	x20, a7c <__libc_csu_init@@Base+0x64>
 a58:	d2800013 	mov	x19, #0x0                   	// #0
 a5c:	f8737aa3 	ldr	x3, [x21,x19,lsl #3]
 a60:	aa1603e2 	mov	x2, x22
 a64:	aa1703e1 	mov	x1, x23
 a68:	2a1803e0 	mov	w0, w24
 a6c:	91000673 	add	x19, x19, #0x1
 a70:	d63f0060 	blr	x3
 a74:	eb14027f 	cmp	x19, x20
 a78:	54ffff21 	b.ne	a5c <__libc_csu_init@@Base+0x44>
 a7c:	a94153f3 	ldp	x19, x20, [sp,#16]
 a80:	a9425bf5 	ldp	x21, x22, [sp,#32]
 a84:	a94363f7 	ldp	x23, x24, [sp,#48]
 a88:	a8c47bfd 	ldp	x29, x30, [sp],#64
 a8c:	d65f03c0 	ret

0000000000000a90 <__libc_csu_fini@@Base>:
 a90:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000a94 <.fini>:
 a94:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
 a98:	910003fd 	mov	x29, sp
 a9c:	a8c17bfd 	ldp	x29, x30, [sp],#16
 aa0:	d65f03c0 	ret

Disassembly of section .rodata:

0000000000000aa8 <.rodata>:
 aa8:	00020001 	.inst	0x00020001 ; undefined
 aac:	00000000 	.inst	0x00000000 ; undefined
 ab0:	00006968 	.inst	0x00006968 ; undefined
 ab4:	00000000 	.inst	0x00000000 ; undefined
 ab8:	000a6425 	.inst	0x000a6425 ; undefined

Disassembly of section .eh_frame_hdr:

0000000000000abc <.eh_frame_hdr>:
 abc:	3b031b01 	.inst	0x3b031b01 ; undefined
 ac0:	00000020 	.inst	0x00000020 ; undefined
 ac4:	00000003 	.inst	0x00000003 ; undefined
 ac8:	fffffedc 	.inst	0xfffffedc ; undefined
 acc:	0000003c 	.inst	0x0000003c ; undefined
 ad0:	fffffefc 	.inst	0xfffffefc ; undefined
 ad4:	00000064 	.inst	0x00000064 ; undefined
 ad8:	ffffff28 	.inst	0xffffff28 ; undefined
 adc:	0000008c 	.inst	0x0000008c ; undefined

Disassembly of section .eh_frame:

0000000000000ae0 <.eh_frame>:
 ae0:	00000014 	.inst	0x00000014 ; undefined
 ae4:	00000000 	.inst	0x00000000 ; undefined
 ae8:	00527a01 	.inst	0x00527a01 ; undefined
 aec:	011e7804 	.inst	0x011e7804 ; undefined
 af0:	001f0c1b 	.inst	0x001f0c1b ; undefined
 af4:	00000000 	.inst	0x00000000 ; undefined
 af8:	00000024 	.inst	0x00000024 ; undefined
 afc:	0000001c 	.inst	0x0000001c ; undefined
 b00:	fffffe98 	.inst	0xfffffe98 ; undefined
 b04:	00000020 	.inst	0x00000020 ; undefined
 b08:	100e4100 	adr	x0, 1d328 <__bss_end__@@Base+0xc2e8>
 b0c:	019e029d 	.inst	0x019e029d ; undefined
 b10:	451d0d41 	.inst	0x451d0d41 ; undefined
 b14:	1f0cddde 	fmsub	s30, s14, s12, s23
	...
 b20:	00000024 	.inst	0x00000024 ; undefined
 b24:	00000044 	.inst	0x00000044 ; undefined
 b28:	fffffe90 	.inst	0xfffffe90 ; undefined
 b2c:	0000002c 	.inst	0x0000002c ; undefined
 b30:	200e4100 	.inst	0x200e4100 ; undefined
 b34:	039e049d 	.inst	0x039e049d ; undefined
 b38:	481d0d41 	stxrh	w29, w1, [x10]
 b3c:	1f0cddde 	fmsub	s30, s14, s12, s23
	...
 b48:	00000024 	.inst	0x00000024 ; undefined
 b4c:	0000006c 	.inst	0x0000006c ; undefined
 b50:	fffffe94 	.inst	0xfffffe94 ; undefined
 b54:	00000034 	.inst	0x00000034 ; undefined
 b58:	300e4100 	adr	x0, 1d379 <__bss_end__@@Base+0xc339>
 b5c:	059e069d 	.inst	0x059e069d ; undefined
 b60:	4a1d0d41 	eor	w1, w10, w29, lsl #3
 b64:	1f0cddde 	fmsub	s30, s14, s12, s23
	...

Disassembly of section .init_array:

0000000000010da8 <.init_array>:
	...

Disassembly of section .fini_array:

0000000000010db0 <.fini_array>:
	...

Disassembly of section .jcr:

0000000000010db8 <.jcr>:
	...

Disassembly of section .dynamic:

0000000000010dc0 <.dynamic>:
   10dc0:	00000001 	.inst	0x00000001 ; undefined
   10dc4:	00000000 	.inst	0x00000000 ; undefined
   10dc8:	00000001 	.inst	0x00000001 ; undefined
   10dcc:	00000000 	.inst	0x00000000 ; undefined
   10dd0:	0000000c 	.inst	0x0000000c ; undefined
   10dd4:	00000000 	.inst	0x00000000 ; undefined
   10dd8:	000007c8 	.inst	0x000007c8 ; undefined
   10ddc:	00000000 	.inst	0x00000000 ; undefined
   10de0:	0000000d 	.inst	0x0000000d ; undefined
   10de4:	00000000 	.inst	0x00000000 ; undefined
   10de8:	00000a94 	.inst	0x00000a94 ; undefined
   10dec:	00000000 	.inst	0x00000000 ; undefined
   10df0:	00000019 	.inst	0x00000019 ; undefined
   10df4:	00000000 	.inst	0x00000000 ; undefined
   10df8:	00010da8 	.inst	0x00010da8 ; undefined
   10dfc:	00000000 	.inst	0x00000000 ; undefined
   10e00:	0000001b 	.inst	0x0000001b ; undefined
   10e04:	00000000 	.inst	0x00000000 ; undefined
   10e08:	00000008 	.inst	0x00000008 ; undefined
   10e0c:	00000000 	.inst	0x00000000 ; undefined
   10e10:	0000001a 	.inst	0x0000001a ; undefined
   10e14:	00000000 	.inst	0x00000000 ; undefined
   10e18:	00010db0 	.inst	0x00010db0 ; undefined
   10e1c:	00000000 	.inst	0x00000000 ; undefined
   10e20:	0000001c 	.inst	0x0000001c ; undefined
   10e24:	00000000 	.inst	0x00000000 ; undefined
   10e28:	00000008 	.inst	0x00000008 ; undefined
   10e2c:	00000000 	.inst	0x00000000 ; undefined
   10e30:	6ffffef5 	.inst	0x6ffffef5 ; undefined
   10e34:	00000000 	.inst	0x00000000 ; undefined
   10e38:	00000298 	.inst	0x00000298 ; undefined
   10e3c:	00000000 	.inst	0x00000000 ; undefined
   10e40:	00000005 	.inst	0x00000005 ; undefined
   10e44:	00000000 	.inst	0x00000000 ; undefined
   10e48:	000004f8 	.inst	0x000004f8 ; undefined
   10e4c:	00000000 	.inst	0x00000000 ; undefined
   10e50:	00000006 	.inst	0x00000006 ; undefined
   10e54:	00000000 	.inst	0x00000000 ; undefined
   10e58:	000002e8 	.inst	0x000002e8 ; undefined
   10e5c:	00000000 	.inst	0x00000000 ; undefined
   10e60:	0000000a 	.inst	0x0000000a ; undefined
   10e64:	00000000 	.inst	0x00000000 ; undefined
   10e68:	00000104 	.inst	0x00000104 ; undefined
   10e6c:	00000000 	.inst	0x00000000 ; undefined
   10e70:	0000000b 	.inst	0x0000000b ; undefined
   10e74:	00000000 	.inst	0x00000000 ; undefined
   10e78:	00000018 	.inst	0x00000018 ; undefined
   10e7c:	00000000 	.inst	0x00000000 ; undefined
   10e80:	00000015 	.inst	0x00000015 ; undefined
	...
   10e90:	00000003 	.inst	0x00000003 ; undefined
   10e94:	00000000 	.inst	0x00000000 ; undefined
   10e98:	00010fe8 	.inst	0x00010fe8 ; undefined
   10e9c:	00000000 	.inst	0x00000000 ; undefined
   10ea0:	00000002 	.inst	0x00000002 ; undefined
   10ea4:	00000000 	.inst	0x00000000 ; undefined
   10ea8:	00000078 	.inst	0x00000078 ; undefined
   10eac:	00000000 	.inst	0x00000000 ; undefined
   10eb0:	00000014 	.inst	0x00000014 ; undefined
   10eb4:	00000000 	.inst	0x00000000 ; undefined
   10eb8:	00000007 	.inst	0x00000007 ; undefined
   10ebc:	00000000 	.inst	0x00000000 ; undefined
   10ec0:	00000017 	.inst	0x00000017 ; undefined
   10ec4:	00000000 	.inst	0x00000000 ; undefined
   10ec8:	00000750 	.inst	0x00000750 ; undefined
   10ecc:	00000000 	.inst	0x00000000 ; undefined
   10ed0:	00000007 	.inst	0x00000007 ; undefined
   10ed4:	00000000 	.inst	0x00000000 ; undefined
   10ed8:	00000648 	.inst	0x00000648 ; undefined
   10edc:	00000000 	.inst	0x00000000 ; undefined
   10ee0:	00000008 	.inst	0x00000008 ; undefined
   10ee4:	00000000 	.inst	0x00000000 ; undefined
   10ee8:	00000108 	.inst	0x00000108 ; undefined
   10eec:	00000000 	.inst	0x00000000 ; undefined
   10ef0:	00000009 	.inst	0x00000009 ; undefined
   10ef4:	00000000 	.inst	0x00000000 ; undefined
   10ef8:	00000018 	.inst	0x00000018 ; undefined
   10efc:	00000000 	.inst	0x00000000 ; undefined
   10f00:	6ffffffb 	.inst	0x6ffffffb ; undefined
   10f04:	00000000 	.inst	0x00000000 ; undefined
   10f08:	08000000 	stxrb	w0, w0, [x0]
   10f0c:	00000000 	.inst	0x00000000 ; undefined
   10f10:	6ffffffe 	.inst	0x6ffffffe ; undefined
   10f14:	00000000 	.inst	0x00000000 ; undefined
   10f18:	00000628 	.inst	0x00000628 ; undefined
   10f1c:	00000000 	.inst	0x00000000 ; undefined
   10f20:	6fffffff 	.inst	0x6fffffff ; undefined
   10f24:	00000000 	.inst	0x00000000 ; undefined
   10f28:	00000001 	.inst	0x00000001 ; undefined
   10f2c:	00000000 	.inst	0x00000000 ; undefined
   10f30:	6ffffff0 	.inst	0x6ffffff0 ; undefined
   10f34:	00000000 	.inst	0x00000000 ; undefined
   10f38:	000005fc 	.inst	0x000005fc ; undefined
   10f3c:	00000000 	.inst	0x00000000 ; undefined
   10f40:	6ffffff9 	.inst	0x6ffffff9 ; undefined
   10f44:	00000000 	.inst	0x00000000 ; undefined
   10f48:	00000006 	.inst	0x00000006 ; undefined
	...

Disassembly of section .got:

0000000000010fa0 <.got>:
   10fa0:	00010dc0 	.inst	0x00010dc0 ; undefined
   10fa4:	00000000 	.inst	0x00000000 ; undefined
   10fa8:	00000a90 	.inst	0x00000a90 ; undefined
	...
   10fc8:	00000a18 	.inst	0x00000a18 ; undefined
   10fcc:	00000000 	.inst	0x00000000 ; undefined
   10fd0:	000009e4 	.inst	0x000009e4 ; undefined
	...

Disassembly of section .got.plt:

0000000000010fe8 <.got.plt>:
	...
   11000:	000007e0 	.inst	0x000007e0 ; undefined
   11004:	00000000 	.inst	0x00000000 ; undefined
   11008:	000007e0 	.inst	0x000007e0 ; undefined
   1100c:	00000000 	.inst	0x00000000 ; undefined
   11010:	000007e0 	.inst	0x000007e0 ; undefined
   11014:	00000000 	.inst	0x00000000 ; undefined
   11018:	000007e0 	.inst	0x000007e0 ; undefined
   1101c:	00000000 	.inst	0x00000000 ; undefined
   11020:	000007e0 	.inst	0x000007e0 ; undefined
   11024:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .data:

0000000000011028 <__data_start@@Base>:
	...

Disassembly of section .bss:

0000000000011038 <__bss_start@@Base>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347 	ccmn	w26, w3, #0x7, mi
   4:	62552820 	.inst	0x62552820 ; undefined
   8:	75746e75 	.inst	0x75746e75 ; undefined
   c:	6e694c2f 	uqshl	v15.8h, v1.8h, v9.8h
  10:	206f7261 	.inst	0x206f7261 ; undefined
  14:	2e342e35 	uqsub	v21.8b, v17.8b, v20.8b
  18:	75362d30 	.inst	0x75362d30 ; undefined
  1c:	746e7562 	.inst	0x746e7562 ; undefined
  20:	317e3175 	adds	w21, w11, #0xf8c, lsl #12
  24:	34302e36 	cbz	w22, 605e8 <__bss_end__@@Base+0x4f5a8>
  28:	2029392e 	.inst	0x2029392e ; undefined
  2c:	2e342e35 	uqsub	v21.8b, v17.8b, v20.8b
  30:	30322030 	adr	x16, 64435 <__bss_end__@@Base+0x533f5>
  34:	36303631 	tbz	w17, #6, 6f8 <__cxa_finalize@plt-0x108>
  38:	Address 0x0000000000000038 is out of bounds.

