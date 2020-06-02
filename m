
/home/jg/sample/x86_64:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <pthread_create@plt-0x21b>
  400248:	78 38                	js     400282 <pthread_create@plt-0x20e>
  40024a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.gnu.build-id:

0000000000400254 <.note.gnu.build-id>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	14 00                	adc    $0x0,%al
  40025a:	00 00                	add    %al,(%rax)
  40025c:	03 00                	add    (%rax),%eax
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 51 ed             	add    %dl,-0x13(%rcx)
  400266:	b6 44                	mov    $0x44,%dh
  400268:	92                   	xchg   %eax,%edx
  400269:	a2 0a 45 56 8a 6e 93 	movabs %al,0x241c936e8a56450a
  400270:	1c 24 
  400272:	9a                   	(bad)  
  400273:	4f 99                	rex.WRXB cqto 
  400275:	18 f1                	sbb    %dh,%cl
  400277:	73                   	.byte 0x73

Disassembly of section .gnu.hash:

0000000000400278 <.gnu.hash>:
  400278:	01 00                	add    %eax,(%rax)
  40027a:	00 00                	add    %al,(%rax)
  40027c:	01 00                	add    %eax,(%rax)
  40027e:	00 00                	add    %al,(%rax)
  400280:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

0000000000400298 <.dynsym>:
	...
  4002b0:	11 00                	adc    %eax,(%rax)
  4002b2:	00 00                	add    %al,(%rax)
  4002b4:	12 00                	adc    (%rax),%al
	...
  4002c6:	00 00                	add    %al,(%rax)
  4002c8:	58                   	pop    %rax
  4002c9:	00 00                	add    %al,(%rax)
  4002cb:	00 12                	add    %dl,(%rdx)
	...
  4002dd:	00 00                	add    %al,(%rax)
  4002df:	00 62 00             	add    %ah,0x0(%rdx)
  4002e2:	00 00                	add    %al,(%rax)
  4002e4:	12 00                	adc    (%rax),%al
	...
  4002f6:	00 00                	add    %al,(%rax)
  4002f8:	51                   	push   %rcx
  4002f9:	00 00                	add    %al,(%rax)
  4002fb:	00 12                	add    %dl,(%rdx)
	...
  40030d:	00 00                	add    %al,(%rax)
  40030f:	00 5d 00             	add    %bl,0x0(%rbp)
  400312:	00 00                	add    %al,(%rax)
  400314:	12 00                	adc    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000400328 <.dynstr>:
  400328:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40032c:	70 74                	jo     4003a2 <pthread_create@plt-0xee>
  40032e:	68 72 65 61 64       	pushq  $0x64616572
  400333:	2e 73 6f             	jae,pn 4003a5 <pthread_create@plt-0xeb>
  400336:	2e 30 00             	xor    %al,%cs:(%rax)
  400339:	70 74                	jo     4003af <pthread_create@plt-0xe1>
  40033b:	68 72 65 61 64       	pushq  $0x64616572
  400340:	5f                   	pop    %rdi
  400341:	63 72 65             	movslq 0x65(%rdx),%esi
  400344:	61                   	(bad)  
  400345:	74 65                	je     4003ac <pthread_create@plt-0xe4>
  400347:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40034b:	73 74                	jae    4003c1 <pthread_create@plt-0xcf>
  40034d:	64 63 2b             	movslq %fs:(%rbx),%ebp
  400350:	2b 2e                	sub    (%rsi),%ebp
  400352:	73 6f                	jae    4003c3 <pthread_create@plt-0xcd>
  400354:	2e 36 00 6c 69 62    	cs add %ch,%ss:0x62(%rcx,%rbp,2)
  40035a:	6d                   	insl   (%dx),%es:(%rdi)
  40035b:	2e 73 6f             	jae,pn 4003cd <pthread_create@plt-0xc3>
  40035e:	2e 36 00 6c 69 62    	cs add %ch,%ss:0x62(%rcx,%rbp,2)
  400364:	67 63 63 5f          	movslq 0x5f(%ebx),%esp
  400368:	73 2e                	jae    400398 <pthread_create@plt-0xf8>
  40036a:	73 6f                	jae    4003db <pthread_create@plt-0xb5>
  40036c:	2e 31 00             	xor    %eax,%cs:(%rax)
  40036f:	6c                   	insb   (%dx),%es:(%rdi)
  400370:	69 62 63 2e 73 6f 2e 	imul   $0x2e6f732e,0x63(%rdx),%esp
  400377:	36 00 6d 65          	add    %ch,%ss:0x65(%rbp)
  40037b:	6d                   	insl   (%dx),%es:(%rdi)
  40037c:	63 70 79             	movslq 0x79(%rax),%esi
  40037f:	00 6c 6f 63          	add    %ch,0x63(%rdi,%rbp,2)
  400383:	61                   	(bad)  
  400384:	6c                   	insb   (%dx),%es:(%rdi)
  400385:	74 69                	je     4003f0 <pthread_create@plt-0xa0>
  400387:	6d                   	insl   (%dx),%es:(%rdi)
  400388:	65 00 73 6c          	add    %dh,%gs:0x6c(%rbx)
  40038c:	65 65 70 00          	gs gs jo 400390 <pthread_create@plt-0x100>
  400390:	47                   	rex.RXB
  400391:	4c                   	rex.WR
  400392:	49                   	rex.WB
  400393:	42                   	rex.X
  400394:	43 5f                	rex.XB pop %r15
  400396:	32 2e                	xor    (%rsi),%ch
  400398:	31 34 00             	xor    %esi,(%rax,%rax,1)
  40039b:	47                   	rex.RXB
  40039c:	4c                   	rex.WR
  40039d:	49                   	rex.WB
  40039e:	42                   	rex.X
  40039f:	43 5f                	rex.XB pop %r15
  4003a1:	32 2e                	xor    (%rsi),%ch
  4003a3:	32 2e                	xor    (%rsi),%ch
  4003a5:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

00000000004003a8 <.gnu.version>:
  4003a8:	00 00                	add    %al,(%rax)
  4003aa:	02 00                	add    (%rax),%al
  4003ac:	03 00                	add    (%rax),%eax
  4003ae:	03 00                	add    (%rax),%eax
  4003b0:	04 00                	add    $0x0,%al
  4003b2:	03 00                	add    (%rax),%eax

Disassembly of section .gnu.version_r:

00000000004003b8 <.gnu.version_r>:
  4003b8:	01 00                	add    %eax,(%rax)
  4003ba:	02 00                	add    (%rax),%al
  4003bc:	47 00 00             	rex.RXB add %r8b,(%r8)
  4003bf:	00 10                	add    %dl,(%rax)
  4003c1:	00 00                	add    %al,(%rax)
  4003c3:	00 30                	add    %dh,(%rax)
  4003c5:	00 00                	add    %al,(%rax)
  4003c7:	00 94 91 96 06 00 00 	add    %dl,0x696(%rcx,%rdx,4)
  4003ce:	04 00                	add    $0x0,%al
  4003d0:	68 00 00 00 10       	pushq  $0x10000000
  4003d5:	00 00                	add    %al,(%rax)
  4003d7:	00 75 1a             	add    %dh,0x1a(%rbp)
  4003da:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
  4003e0:	73 00                	jae    4003e2 <pthread_create@plt-0xae>
  4003e2:	00 00                	add    %al,(%rax)
  4003e4:	00 00                	add    %al,(%rax)
  4003e6:	00 00                	add    %al,(%rax)
  4003e8:	01 00                	add    %eax,(%rax)
  4003ea:	01 00                	add    %eax,(%rax)
  4003ec:	01 00                	add    %eax,(%rax)
  4003ee:	00 00                	add    %al,(%rax)
  4003f0:	10 00                	adc    %al,(%rax)
  4003f2:	00 00                	add    %al,(%rax)
  4003f4:	00 00                	add    %al,(%rax)
  4003f6:	00 00                	add    %al,(%rax)
  4003f8:	75 1a                	jne    400414 <pthread_create@plt-0x7c>
  4003fa:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400400:	73 00                	jae    400402 <pthread_create@plt-0x8e>
  400402:	00 00                	add    %al,(%rax)
  400404:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.plt:

0000000000400408 <.rela.plt>:
  400408:	18 10                	sbb    %dl,(%rax)
  40040a:	60                   	(bad)  
  40040b:	00 00                	add    %al,(%rax)
  40040d:	00 00                	add    %al,(%rax)
  40040f:	00 07                	add    %al,(%rdi)
  400411:	00 00                	add    %al,(%rax)
  400413:	00 01                	add    %al,(%rcx)
	...
  40041d:	00 00                	add    %al,(%rax)
  40041f:	00 20                	add    %ah,(%rax)
  400421:	10 60 00             	adc    %ah,0x0(%rax)
  400424:	00 00                	add    %al,(%rax)
  400426:	00 00                	add    %al,(%rax)
  400428:	07                   	(bad)  
  400429:	00 00                	add    %al,(%rax)
  40042b:	00 02                	add    %al,(%rdx)
	...
  400435:	00 00                	add    %al,(%rax)
  400437:	00 28                	add    %ch,(%rax)
  400439:	10 60 00             	adc    %ah,0x0(%rax)
  40043c:	00 00                	add    %al,(%rax)
  40043e:	00 00                	add    %al,(%rax)
  400440:	07                   	(bad)  
  400441:	00 00                	add    %al,(%rax)
  400443:	00 03                	add    %al,(%rbx)
	...
  40044d:	00 00                	add    %al,(%rax)
  40044f:	00 30                	add    %dh,(%rax)
  400451:	10 60 00             	adc    %ah,0x0(%rax)
  400454:	00 00                	add    %al,(%rax)
  400456:	00 00                	add    %al,(%rax)
  400458:	07                   	(bad)  
  400459:	00 00                	add    %al,(%rax)
  40045b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  400466:	00 00                	add    %al,(%rax)
  400468:	38 10                	cmp    %dl,(%rax)
  40046a:	60                   	(bad)  
  40046b:	00 00                	add    %al,(%rax)
  40046d:	00 00                	add    %al,(%rax)
  40046f:	00 07                	add    %al,(%rdi)
  400471:	00 00                	add    %al,(%rax)
  400473:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400479 <pthread_create@plt-0x17>
  400479:	00 00                	add    %al,(%rax)
  40047b:	00 00                	add    %al,(%rax)
  40047d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .plt:

0000000000400480 <pthread_create@plt-0x10>:
  400480:	ff 35 82 0b 20 00    	pushq  0x200b82(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400486:	ff 25 84 0b 20 00    	jmpq   *0x200b84(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40048c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400490 <pthread_create@plt>:
  400490:	ff 25 82 0b 20 00    	jmpq   *0x200b82(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400496:	68 00 00 00 00       	pushq  $0x0
  40049b:	e9 e0 ff ff ff       	jmpq   400480 <pthread_create@plt-0x10>

00000000004004a0 <localtime@plt>:
  4004a0:	ff 25 7a 0b 20 00    	jmpq   *0x200b7a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004a6:	68 01 00 00 00       	pushq  $0x1
  4004ab:	e9 d0 ff ff ff       	jmpq   400480 <pthread_create@plt-0x10>

00000000004004b0 <sleep@plt>:
  4004b0:	ff 25 72 0b 20 00    	jmpq   *0x200b72(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004b6:	68 02 00 00 00       	pushq  $0x2
  4004bb:	e9 c0 ff ff ff       	jmpq   400480 <pthread_create@plt-0x10>

00000000004004c0 <memcpy@plt>:
  4004c0:	ff 25 6a 0b 20 00    	jmpq   *0x200b6a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004c6:	68 03 00 00 00       	pushq  $0x3
  4004cb:	e9 b0 ff ff ff       	jmpq   400480 <pthread_create@plt-0x10>

00000000004004d0 <time@plt>:
  4004d0:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4004d6:	68 04 00 00 00       	pushq  $0x4
  4004db:	e9 a0 ff ff ff       	jmpq   400480 <pthread_create@plt-0x10>

Disassembly of section .text:

00000000004004e0 <_ZN6CClockC1Ev>:
  4004e0:	55                   	push   %rbp
  4004e1:	48 89 e5             	mov    %rsp,%rbp
  4004e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4004e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4004ec:	c7 40 40 01 00 00 00 	movl   $0x1,0x40(%rax)
  4004f3:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  4004fa:	5d                   	pop    %rbp
  4004fb:	c3                   	retq   
  4004fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400500 <_ZN6CClockD1Ev>:
  400500:	55                   	push   %rbp
  400501:	48 89 e5             	mov    %rsp,%rbp
  400504:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400508:	5d                   	pop    %rbp
  400509:	c3                   	retq   
  40050a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400510 <_ZN6CClock5StartEv>:
  400510:	55                   	push   %rbp
  400511:	48 89 e5             	mov    %rsp,%rbp
  400514:	48 83 ec 10          	sub    $0x10,%rsp
  400518:	31 c0                	xor    %eax,%eax
  40051a:	89 c6                	mov    %eax,%esi
  40051c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400520:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400524:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  400528:	48 ba 40 05 40 00 00 	movabs $0x400540,%rdx
  40052f:	00 00 00 
  400532:	e8 59 ff ff ff       	callq  400490 <pthread_create@plt>
  400537:	48 83 c4 10          	add    $0x10,%rsp
  40053b:	5d                   	pop    %rbp
  40053c:	c3                   	retq   
  40053d:	0f 1f 00             	nopl   (%rax)

0000000000400540 <_Z7OnTimerPv>:
  400540:	55                   	push   %rbp
  400541:	48 89 e5             	mov    %rsp,%rbp
  400544:	48 83 ec 20          	sub    $0x20,%rsp
  400548:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40054c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400550:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  400554:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400558:	83 78 40 00          	cmpl   $0x0,0x40(%rax)
  40055c:	0f 84 6a 00 00 00    	je     4005cc <_Z7OnTimerPv+0x8c>
  400562:	bf 64 00 00 00       	mov    $0x64,%edi
  400567:	e8 44 ff ff ff       	callq  4004b0 <sleep@plt>
  40056c:	31 c9                	xor    %ecx,%ecx
  40056e:	89 cf                	mov    %ecx,%edi
  400570:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  400573:	e8 58 ff ff ff       	callq  4004d0 <time@plt>
  400578:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40057c:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  400580:	e8 1b ff ff ff       	callq  4004a0 <localtime@plt>
  400585:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400589:	48 81 c2 08 00 00 00 	add    $0x8,%rdx
  400590:	48 89 d7             	mov    %rdx,%rdi
  400593:	48 89 c6             	mov    %rax,%rsi
  400596:	ba 38 00 00 00       	mov    $0x38,%edx
  40059b:	e8 20 ff ff ff       	callq  4004c0 <memcpy@plt>
  4005a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4005a4:	83 78 08 00          	cmpl   $0x0,0x8(%rax)
  4005a8:	0f 85 19 00 00 00    	jne    4005c7 <_Z7OnTimerPv+0x87>
  4005ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4005b2:	48 83 38 00          	cmpq   $0x0,(%rax)
  4005b6:	0f 84 06 00 00 00    	je     4005c2 <_Z7OnTimerPv+0x82>
  4005bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4005c0:	ff 10                	callq  *(%rax)
  4005c2:	e9 00 00 00 00       	jmpq   4005c7 <_Z7OnTimerPv+0x87>
  4005c7:	e9 88 ff ff ff       	jmpq   400554 <_Z7OnTimerPv+0x14>
  4005cc:	0f 0b                	ud2    
  4005ce:	66 90                	xchg   %ax,%ax

00000000004005d0 <_ZN6CClock4StopEv>:
  4005d0:	55                   	push   %rbp
  4005d1:	48 89 e5             	mov    %rsp,%rbp
  4005d4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4005d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4005dc:	c7 40 40 01 00 00 00 	movl   $0x1,0x40(%rax)
  4005e3:	5d                   	pop    %rbp
  4005e4:	c3                   	retq   
  4005e5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005ec:	00 00 00 
  4005ef:	90                   	nop

00000000004005f0 <_ZN6CClock19SetCallbackFunctionEPFvvE>:
  4005f0:	55                   	push   %rbp
  4005f1:	48 89 e5             	mov    %rsp,%rbp
  4005f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4005f8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4005fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400600:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  400604:	48 89 08             	mov    %rcx,(%rax)
  400607:	5d                   	pop    %rbp
  400608:	c3                   	retq   

Disassembly of section .eh_frame_hdr:

000000000040060c <__GNU_EH_FRAME_HDR>:
  40060c:	01 1b                	add    %ebx,(%rbx)
  40060e:	03 3b                	add    (%rbx),%edi
  400610:	40 00 00             	add    %al,(%rax)
  400613:	00 07                	add    %al,(%rdi)
  400615:	00 00                	add    %al,(%rax)
  400617:	00 74 fe ff          	add    %dh,-0x1(%rsi,%rdi,8)
  40061b:	ff 1c 01             	lcall  *(%rcx,%rax,1)
  40061e:	00 00                	add    %al,(%rax)
  400620:	d4                   	(bad)  
  400621:	fe                   	(bad)  
  400622:	ff                   	(bad)  
  400623:	ff 5c 00 00          	lcall  *0x0(%rax,%rax,1)
  400627:	00 f4                	add    %dh,%ah
  400629:	fe                   	(bad)  
  40062a:	ff                   	(bad)  
  40062b:	ff                   	(bad)  
  40062c:	7c 00                	jl     40062e <__GNU_EH_FRAME_HDR+0x22>
  40062e:	00 00                	add    %al,(%rax)
  400630:	04 ff                	add    $0xff,%al
  400632:	ff                   	(bad)  
  400633:	ff 9c 00 00 00 34 ff 	lcall  *-0xcc0000(%rax,%rax,1)
  40063a:	ff                   	(bad)  
  40063b:	ff                   	(bad)  
  40063c:	bc 00 00 00 c4       	mov    $0xc4000000,%esp
  400641:	ff                   	(bad)  
  400642:	ff                   	(bad)  
  400643:	ff                   	(bad)  
  400644:	dc 00                	faddl  (%rax)
  400646:	00 00                	add    %al,(%rax)
  400648:	e4 ff                	in     $0xff,%al
  40064a:	ff                   	(bad)  
  40064b:	ff                   	(bad)  
  40064c:	fc                   	cld    
  40064d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame:

0000000000400650 <.eh_frame>:
  400650:	14 00                	adc    $0x0,%al
  400652:	00 00                	add    %al,(%rax)
  400654:	00 00                	add    %al,(%rax)
  400656:	00 00                	add    %al,(%rax)
  400658:	01 7a 52             	add    %edi,0x52(%rdx)
  40065b:	00 01                	add    %al,(%rcx)
  40065d:	78 10                	js     40066f <__GNU_EH_FRAME_HDR+0x63>
  40065f:	01 1b                	add    %ebx,(%rbx)
  400661:	0c 07                	or     $0x7,%al
  400663:	08 90 01 00 00 1c    	or     %dl,0x1c000001(%rax)
  400669:	00 00                	add    %al,(%rax)
  40066b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40066e:	00 00                	add    %al,(%rax)
  400670:	70 fe                	jo     400670 <__GNU_EH_FRAME_HDR+0x64>
  400672:	ff                   	(bad)  
  400673:	ff 1c 00             	lcall  *(%rax,%rax,1)
  400676:	00 00                	add    %al,(%rax)
  400678:	00 41 0e             	add    %al,0xe(%rcx)
  40067b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400681:	57                   	push   %rdi
  400682:	0c 07                	or     $0x7,%al
  400684:	08 00                	or     %al,(%rax)
  400686:	00 00                	add    %al,(%rax)
  400688:	1c 00                	sbb    $0x0,%al
  40068a:	00 00                	add    %al,(%rax)
  40068c:	3c 00                	cmp    $0x0,%al
  40068e:	00 00                	add    %al,(%rax)
  400690:	70 fe                	jo     400690 <__GNU_EH_FRAME_HDR+0x84>
  400692:	ff                   	(bad)  
  400693:	ff 0a                	decl   (%rdx)
  400695:	00 00                	add    %al,(%rax)
  400697:	00 00                	add    %al,(%rax)
  400699:	41 0e                	rex.B (bad) 
  40069b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4006a1:	45 0c 07             	rex.RB or $0x7,%al
  4006a4:	08 00                	or     %al,(%rax)
  4006a6:	00 00                	add    %al,(%rax)
  4006a8:	1c 00                	sbb    $0x0,%al
  4006aa:	00 00                	add    %al,(%rax)
  4006ac:	5c                   	pop    %rsp
  4006ad:	00 00                	add    %al,(%rax)
  4006af:	00 60 fe             	add    %ah,-0x2(%rax)
  4006b2:	ff                   	(bad)  
  4006b3:	ff 2d 00 00 00 00    	ljmp   *0x0(%rip)        # 4006b9 <__GNU_EH_FRAME_HDR+0xad>
  4006b9:	41 0e                	rex.B (bad) 
  4006bb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4006c1:	68 0c 07 08 00       	pushq  $0x8070c
  4006c6:	00 00                	add    %al,(%rax)
  4006c8:	1c 00                	sbb    $0x0,%al
  4006ca:	00 00                	add    %al,(%rax)
  4006cc:	7c 00                	jl     4006ce <__GNU_EH_FRAME_HDR+0xc2>
  4006ce:	00 00                	add    %al,(%rax)
  4006d0:	70 fe                	jo     4006d0 <__GNU_EH_FRAME_HDR+0xc4>
  4006d2:	ff                   	(bad)  
  4006d3:	ff 8e 00 00 00 00    	decl   0x0(%rsi)
  4006d9:	41 0e                	rex.B (bad) 
  4006db:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4006e1:	00 00                	add    %al,(%rax)
  4006e3:	00 00                	add    %al,(%rax)
  4006e5:	00 00                	add    %al,(%rax)
  4006e7:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4006ea:	00 00                	add    %al,(%rax)
  4006ec:	9c                   	pushfq 
  4006ed:	00 00                	add    %al,(%rax)
  4006ef:	00 e0                	add    %ah,%al
  4006f1:	fe                   	(bad)  
  4006f2:	ff                   	(bad)  
  4006f3:	ff 15 00 00 00 00    	callq  *0x0(%rip)        # 4006f9 <__GNU_EH_FRAME_HDR+0xed>
  4006f9:	41 0e                	rex.B (bad) 
  4006fb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400701:	50                   	push   %rax
  400702:	0c 07                	or     $0x7,%al
  400704:	08 00                	or     %al,(%rax)
  400706:	00 00                	add    %al,(%rax)
  400708:	1c 00                	sbb    $0x0,%al
  40070a:	00 00                	add    %al,(%rax)
  40070c:	bc 00 00 00 e0       	mov    $0xe0000000,%esp
  400711:	fe                   	(bad)  
  400712:	ff                   	(bad)  
  400713:	ff 19                	lcall  *(%rcx)
  400715:	00 00                	add    %al,(%rax)
  400717:	00 00                	add    %al,(%rax)
  400719:	41 0e                	rex.B (bad) 
  40071b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400721:	54                   	push   %rsp
  400722:	0c 07                	or     $0x7,%al
  400724:	08 00                	or     %al,(%rax)
  400726:	00 00                	add    %al,(%rax)
  400728:	24 00                	and    $0x0,%al
  40072a:	00 00                	add    %al,(%rax)
  40072c:	dc 00                	faddl  (%rax)
  40072e:	00 00                	add    %al,(%rax)
  400730:	50                   	push   %rax
  400731:	fd                   	std    
  400732:	ff                   	(bad)  
  400733:	ff 60 00             	jmpq   *0x0(%rax)
  400736:	00 00                	add    %al,(%rax)
  400738:	00 0e                	add    %cl,(%rsi)
  40073a:	10 46 0e             	adc    %al,0xe(%rsi)
  40073d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400740:	0b 77 08             	or     0x8(%rdi),%esi
  400743:	80 00 3f             	addb   $0x3f,(%rax)
  400746:	1a 3b                	sbb    (%rbx),%bh
  400748:	2a 33                	sub    (%rbx),%dh
  40074a:	24 22                	and    $0x22,%al
  40074c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000600e80 <_DYNAMIC>:
  600e80:	01 00                	add    %eax,(%rax)
  600e82:	00 00                	add    %al,(%rax)
  600e84:	00 00                	add    %al,(%rax)
  600e86:	00 00                	add    %al,(%rax)
  600e88:	01 00                	add    %eax,(%rax)
  600e8a:	00 00                	add    %al,(%rax)
  600e8c:	00 00                	add    %al,(%rax)
  600e8e:	00 00                	add    %al,(%rax)
  600e90:	01 00                	add    %eax,(%rax)
  600e92:	00 00                	add    %al,(%rax)
  600e94:	00 00                	add    %al,(%rax)
  600e96:	00 00                	add    %al,(%rax)
  600e98:	20 00                	and    %al,(%rax)
  600e9a:	00 00                	add    %al,(%rax)
  600e9c:	00 00                	add    %al,(%rax)
  600e9e:	00 00                	add    %al,(%rax)
  600ea0:	01 00                	add    %eax,(%rax)
  600ea2:	00 00                	add    %al,(%rax)
  600ea4:	00 00                	add    %al,(%rax)
  600ea6:	00 00                	add    %al,(%rax)
  600ea8:	2f                   	(bad)  
  600ea9:	00 00                	add    %al,(%rax)
  600eab:	00 00                	add    %al,(%rax)
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 01                	add    %al,(%rcx)
  600eb1:	00 00                	add    %al,(%rax)
  600eb3:	00 00                	add    %al,(%rax)
  600eb5:	00 00                	add    %al,(%rax)
  600eb7:	00 39                	add    %bh,(%rcx)
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 01                	add    %al,(%rcx)
  600ec1:	00 00                	add    %al,(%rax)
  600ec3:	00 00                	add    %al,(%rax)
  600ec5:	00 00                	add    %al,(%rax)
  600ec7:	00 47 00             	add    %al,0x0(%rdi)
  600eca:	00 00                	add    %al,(%rax)
  600ecc:	00 00                	add    %al,(%rax)
  600ece:	00 00                	add    %al,(%rax)
  600ed0:	f5                   	cmc    
  600ed1:	fe                   	(bad)  
  600ed2:	ff 6f 00             	ljmp   *0x0(%rdi)
  600ed5:	00 00                	add    %al,(%rax)
  600ed7:	00 78 02             	add    %bh,0x2(%rax)
  600eda:	40 00 00             	add    %al,(%rax)
  600edd:	00 00                	add    %al,(%rax)
  600edf:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600ee5 <_DYNAMIC+0x65>
  600ee5:	00 00                	add    %al,(%rax)
  600ee7:	00 28                	add    %ch,(%rax)
  600ee9:	03 40 00             	add    0x0(%rax),%eax
  600eec:	00 00                	add    %al,(%rax)
  600eee:	00 00                	add    %al,(%rax)
  600ef0:	06                   	(bad)  
  600ef1:	00 00                	add    %al,(%rax)
  600ef3:	00 00                	add    %al,(%rax)
  600ef5:	00 00                	add    %al,(%rax)
  600ef7:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600efd:	00 00                	add    %al,(%rax)
  600eff:	00 0a                	add    %cl,(%rdx)
  600f01:	00 00                	add    %al,(%rax)
  600f03:	00 00                	add    %al,(%rax)
  600f05:	00 00                	add    %al,(%rax)
  600f07:	00 7f 00             	add    %bh,0x0(%rdi)
  600f0a:	00 00                	add    %al,(%rax)
  600f0c:	00 00                	add    %al,(%rax)
  600f0e:	00 00                	add    %al,(%rax)
  600f10:	0b 00                	or     (%rax),%eax
  600f12:	00 00                	add    %al,(%rax)
  600f14:	00 00                	add    %al,(%rax)
  600f16:	00 00                	add    %al,(%rax)
  600f18:	18 00                	sbb    %al,(%rax)
  600f1a:	00 00                	add    %al,(%rax)
  600f1c:	00 00                	add    %al,(%rax)
  600f1e:	00 00                	add    %al,(%rax)
  600f20:	15 00 00 00 00       	adc    $0x0,%eax
	...
  600f2d:	00 00                	add    %al,(%rax)
  600f2f:	00 03                	add    %al,(%rbx)
	...
  600f39:	10 60 00             	adc    %ah,0x0(%rax)
  600f3c:	00 00                	add    %al,(%rax)
  600f3e:	00 00                	add    %al,(%rax)
  600f40:	02 00                	add    (%rax),%al
  600f42:	00 00                	add    %al,(%rax)
  600f44:	00 00                	add    %al,(%rax)
  600f46:	00 00                	add    %al,(%rax)
  600f48:	78 00                	js     600f4a <_DYNAMIC+0xca>
  600f4a:	00 00                	add    %al,(%rax)
  600f4c:	00 00                	add    %al,(%rax)
  600f4e:	00 00                	add    %al,(%rax)
  600f50:	14 00                	adc    $0x0,%al
  600f52:	00 00                	add    %al,(%rax)
  600f54:	00 00                	add    %al,(%rax)
  600f56:	00 00                	add    %al,(%rax)
  600f58:	07                   	(bad)  
  600f59:	00 00                	add    %al,(%rax)
  600f5b:	00 00                	add    %al,(%rax)
  600f5d:	00 00                	add    %al,(%rax)
  600f5f:	00 17                	add    %dl,(%rdi)
  600f61:	00 00                	add    %al,(%rax)
  600f63:	00 00                	add    %al,(%rax)
  600f65:	00 00                	add    %al,(%rax)
  600f67:	00 08                	add    %cl,(%rax)
  600f69:	04 40                	add    $0x40,%al
  600f6b:	00 00                	add    %al,(%rax)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 fe                	add    %bh,%dh
  600f71:	ff                   	(bad)  
  600f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f75:	00 00                	add    %al,(%rax)
  600f77:	00 b8 03 40 00 00    	add    %bh,0x4003(%rax)
  600f7d:	00 00                	add    %al,(%rax)
  600f7f:	00 ff                	add    %bh,%bh
  600f81:	ff                   	(bad)  
  600f82:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f85:	00 00                	add    %al,(%rax)
  600f87:	00 02                	add    %al,(%rdx)
  600f89:	00 00                	add    %al,(%rax)
  600f8b:	00 00                	add    %al,(%rax)
  600f8d:	00 00                	add    %al,(%rax)
  600f8f:	00 f0                	add    %dh,%al
  600f91:	ff                   	(bad)  
  600f92:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f95:	00 00                	add    %al,(%rax)
  600f97:	00 a8 03 40 00 00    	add    %ch,0x4003(%rax)
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	80 0e 60             	orb    $0x60,(%rsi)
	...
  601017:	00 96 04 40 00 00    	add    %dl,0x4004(%rsi)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 a6 04 40 00 00    	add    %ah,0x4004(%rsi)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 b6 04 40 00 00    	add    %dh,0x4004(%rsi)
  60102d:	00 00                	add    %al,(%rax)
  60102f:	00 c6                	add    %al,%dh
  601031:	04 40                	add    $0x40,%al
  601033:	00 00                	add    %al,(%rax)
  601035:	00 00                	add    %al,(%rax)
  601037:	00 d6                	add    %dl,%dh
  601039:	04 40                	add    $0x40,%al
  60103b:	00 00                	add    %al,(%rax)
  60103d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	63 6c 61 6e          	movslq 0x6e(%rcx,%riz,2),%ebp
   4:	67 20 76 65          	and    %dh,0x65(%esi)
   8:	72 73                	jb     7d <pthread_create@plt-0x400413>
   a:	69 6f 6e 20 31 30 2e 	imul   $0x2e303120,0x6e(%rdi),%ebp
  11:	30 2e                	xor    %ch,(%rsi)
  13:	31 2d 2b 2b 32 30    	xor    %ebp,0x30322b2b(%rip)        # 30322b44 <__bss_start+0x2fd21b04>
  19:	32 30                	xor    (%rax),%dh
  1b:	30 35 30 34 30 37    	xor    %dh,0x37303430(%rip)        # 37303451 <__bss_start+0x36d02411>
  21:	32 35 35 39 2b 38    	xor    0x382b3935(%rip),%dh        # 382b395c <__bss_start+0x37cb291c>
  27:	65 37                	gs (bad) 
  29:	61                   	(bad)  
  2a:	65 33 35 35 62 61 39 	xor    %gs:0x39616235(%rip),%esi        # 39616266 <__bss_start+0x39015226>
  31:	2d 31 7e 65 78       	sub    $0x78657e31,%eax
  36:	70 31                	jo     69 <pthread_create@plt-0x400427>
  38:	7e 32                	jle    6c <pthread_create@plt-0x400424>
  3a:	30 32                	xor    %dh,(%rdx)
  3c:	30 30                	xor    %dh,(%rax)
  3e:	35 30 34 30 35       	xor    $0x35303430,%eax
  43:	33 31                	xor    (%rcx),%esi
  45:	35 38 2e 31 35       	xor    $0x35312e38,%eax
  4a:	36 20 00             	and    %al,%ss:(%rax)
