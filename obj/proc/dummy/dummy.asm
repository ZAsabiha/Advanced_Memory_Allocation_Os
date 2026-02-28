
obj/proc/dummy/dummy:     file format elf32-i386


Disassembly of section .text:

400000e0 <main>:
400000e0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
400000e4:	83 e4 f0             	and    $0xfffffff0,%esp
400000e7:	ff 71 fc             	push   -0x4(%ecx)
400000ea:	55                   	push   %ebp
400000eb:	89 e5                	mov    %esp,%ebp
400000ed:	57                   	push   %edi
400000ee:	56                   	push   %esi
400000ef:	53                   	push   %ebx
400000f0:	e8 02 03 00 00       	call   400003f7 <__x86.get_pc_thunk.bx>
400000f5:	81 c3 ff 3e 00 00    	add    $0x3eff,%ebx
400000fb:	51                   	push   %ecx
400000fc:	83 ec 24             	sub    $0x24,%esp
400000ff:	8d 83 bc d7 ff ff    	lea    -0x2844(%ebx),%eax
40000105:	8d bb 6c d9 ff ff    	lea    -0x2694(%ebx),%edi
4000010b:	50                   	push   %eax
4000010c:	e8 1f 05 00 00       	call   40000630 <printf>
40000111:	8d 83 00 d8 ff ff    	lea    -0x2800(%ebx),%eax
40000117:	89 04 24             	mov    %eax,(%esp)
4000011a:	e8 11 05 00 00       	call   40000630 <printf>
4000011f:	8d 83 28 d8 ff ff    	lea    -0x27d8(%ebx),%eax
40000125:	89 04 24             	mov    %eax,(%esp)
40000128:	e8 03 05 00 00       	call   40000630 <printf>
4000012d:	8d 83 03 d6 ff ff    	lea    -0x29fd(%ebx),%eax
40000133:	89 45 dc             	mov    %eax,-0x24(%ebp)
40000136:	89 04 24             	mov    %eax,(%esp)
40000139:	e8 f2 04 00 00       	call   40000630 <printf>
4000013e:	83 c4 10             	add    $0x10,%esp
40000141:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
40000148:	e8 73 11 00 00       	call   400012c0 <sys_getc>
4000014d:	83 f8 1a             	cmp    $0x1a,%eax
40000150:	0f 84 f9 00 00 00    	je     4000024f <main+0x16f>
40000156:	0f 8f ac 00 00 00    	jg     40000208 <main+0x128>
4000015c:	83 f8 0a             	cmp    $0xa,%eax
4000015f:	74 05                	je     40000166 <main+0x86>
40000161:	83 f8 0d             	cmp    $0xd,%eax
40000164:	75 e2                	jne    40000148 <main+0x68>
40000166:	83 ec 0c             	sub    $0xc,%esp
40000169:	8d 83 5d d6 ff ff    	lea    -0x29a3(%ebx),%eax
4000016f:	50                   	push   %eax
40000170:	e8 bb 04 00 00       	call   40000630 <printf>
40000175:	8b 45 e0             	mov    -0x20(%ebp),%eax
40000178:	83 c4 10             	add    $0x10,%esp
4000017b:	2d 00 00 00 40       	sub    $0x40000000,%eax
40000180:	3d ff ff 3f 00       	cmp    $0x3fffff,%eax
40000185:	0f 86 5c 01 00 00    	jbe    400002e7 <main+0x207>
4000018b:	83 ec 08             	sub    $0x8,%esp
4000018e:	8d 83 17 d6 ff ff    	lea    -0x29e9(%ebx),%eax
40000194:	ff 75 e0             	push   -0x20(%ebp)
40000197:	8d b3 2c d6 ff ff    	lea    -0x29d4(%ebx),%esi
4000019d:	50                   	push   %eax
4000019e:	e8 8d 04 00 00       	call   40000630 <printf>
400001a3:	8d 83 bc d8 ff ff    	lea    -0x2744(%ebx),%eax
400001a9:	89 04 24             	mov    %eax,(%esp)
400001ac:	e8 7f 04 00 00       	call   40000630 <printf>
400001b1:	83 c4 10             	add    $0x10,%esp
400001b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
400001b8:	e8 03 11 00 00       	call   400012c0 <sys_getc>
400001bd:	89 c2                	mov    %eax,%edx
400001bf:	84 c0                	test   %al,%al
400001c1:	74 f5                	je     400001b8 <main+0xd8>
400001c3:	83 ec 08             	sub    $0x8,%esp
400001c6:	0f be c0             	movsbl %al,%eax
400001c9:	89 55 e4             	mov    %edx,-0x1c(%ebp)
400001cc:	50                   	push   %eax
400001cd:	56                   	push   %esi
400001ce:	e8 5d 04 00 00       	call   40000630 <printf>
400001d3:	8b 55 e4             	mov    -0x1c(%ebp),%edx
400001d6:	83 c4 10             	add    $0x10,%esp
400001d9:	80 fa 72             	cmp    $0x72,%dl
400001dc:	0f 84 8d 00 00 00    	je     4000026f <main+0x18f>
400001e2:	80 fa 77             	cmp    $0x77,%dl
400001e5:	0f 84 b6 00 00 00    	je     400002a1 <main+0x1c1>
400001eb:	83 ec 0c             	sub    $0xc,%esp
400001ee:	57                   	push   %edi
400001ef:	e8 3c 04 00 00       	call   40000630 <printf>
400001f4:	83 c4 10             	add    $0x10,%esp
400001f7:	e8 c4 10 00 00       	call   400012c0 <sys_getc>
400001fc:	89 c2                	mov    %eax,%edx
400001fe:	84 c0                	test   %al,%al
40000200:	75 c1                	jne    400001c3 <main+0xe3>
40000202:	eb b4                	jmp    400001b8 <main+0xd8>
40000204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
40000208:	8d 50 d0             	lea    -0x30(%eax),%edx
4000020b:	83 fa 09             	cmp    $0x9,%edx
4000020e:	0f 87 34 ff ff ff    	ja     40000148 <main+0x68>
40000214:	81 7d e0 98 99 99 19 	cmpl   $0x19999998,-0x20(%ebp)
4000021b:	0f 87 df 00 00 00    	ja     40000300 <main+0x220>
40000221:	8b 4d e0             	mov    -0x20(%ebp),%ecx
40000224:	83 ec 08             	sub    $0x8,%esp
40000227:	8d 14 89             	lea    (%ecx,%ecx,4),%edx
4000022a:	8d 4c 50 d0          	lea    -0x30(%eax,%edx,2),%ecx
4000022e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
40000231:	50                   	push   %eax
40000232:	8d 83 5f d6 ff ff    	lea    -0x29a1(%ebx),%eax
40000238:	50                   	push   %eax
40000239:	e8 f2 03 00 00       	call   40000630 <printf>
4000023e:	83 c4 10             	add    $0x10,%esp
40000241:	e8 7a 10 00 00       	call   400012c0 <sys_getc>
40000246:	83 f8 1a             	cmp    $0x1a,%eax
40000249:	0f 85 07 ff ff ff    	jne    40000156 <main+0x76>
4000024f:	83 ec 0c             	sub    $0xc,%esp
40000252:	8d 83 60 d8 ff ff    	lea    -0x27a0(%ebx),%eax
40000258:	50                   	push   %eax
40000259:	e8 d2 03 00 00       	call   40000630 <printf>
4000025e:	83 c4 10             	add    $0x10,%esp
40000261:	8d 65 f0             	lea    -0x10(%ebp),%esp
40000264:	31 c0                	xor    %eax,%eax
40000266:	59                   	pop    %ecx
40000267:	5b                   	pop    %ebx
40000268:	5e                   	pop    %esi
40000269:	5f                   	pop    %edi
4000026a:	5d                   	pop    %ebp
4000026b:	8d 61 fc             	lea    -0x4(%ecx),%esp
4000026e:	c3                   	ret
4000026f:	51                   	push   %ecx
40000270:	8b 45 e0             	mov    -0x20(%ebp),%eax
40000273:	ff 30                	push   (%eax)
40000275:	50                   	push   %eax
40000276:	8d 83 ec d8 ff ff    	lea    -0x2714(%ebx),%eax
4000027c:	50                   	push   %eax
4000027d:	e8 ae 03 00 00       	call   40000630 <printf>
40000282:	83 c4 10             	add    $0x10,%esp
40000285:	83 ec 0c             	sub    $0xc,%esp
40000288:	8d 83 30 d6 ff ff    	lea    -0x29d0(%ebx),%eax
4000028e:	50                   	push   %eax
4000028f:	e8 9c 03 00 00       	call   40000630 <printf>
40000294:	83 c4 10             	add    $0x10,%esp
40000297:	31 c0                	xor    %eax,%eax
40000299:	89 45 e0             	mov    %eax,-0x20(%ebp)
4000029c:	e9 a7 fe ff ff       	jmp    40000148 <main+0x68>
400002a1:	83 ec 0c             	sub    $0xc,%esp
400002a4:	8d 83 14 d9 ff ff    	lea    -0x26ec(%ebx),%eax
400002aa:	50                   	push   %eax
400002ab:	e8 80 03 00 00       	call   40000630 <printf>
400002b0:	83 c4 10             	add    $0x10,%esp
400002b3:	e8 08 10 00 00       	call   400012c0 <sys_getc>
400002b8:	8d 50 d0             	lea    -0x30(%eax),%edx
400002bb:	83 fa 09             	cmp    $0x9,%edx
400002be:	89 55 e4             	mov    %edx,-0x1c(%ebp)
400002c1:	77 f0                	ja     400002b3 <main+0x1d3>
400002c3:	52                   	push   %edx
400002c4:	52                   	push   %edx
400002c5:	50                   	push   %eax
400002c6:	56                   	push   %esi
400002c7:	e8 64 03 00 00       	call   40000630 <printf>
400002cc:	8b 45 e0             	mov    -0x20(%ebp),%eax
400002cf:	8b 55 e4             	mov    -0x1c(%ebp),%edx
400002d2:	89 10                	mov    %edx,(%eax)
400002d4:	8d 83 44 d9 ff ff    	lea    -0x26bc(%ebx),%eax
400002da:	89 04 24             	mov    %eax,(%esp)
400002dd:	e8 4e 03 00 00       	call   40000630 <printf>
400002e2:	83 c4 10             	add    $0x10,%esp
400002e5:	eb 9e                	jmp    40000285 <main+0x1a5>
400002e7:	8d 83 84 d8 ff ff    	lea    -0x277c(%ebx),%eax
400002ed:	56                   	push   %esi
400002ee:	56                   	push   %esi
400002ef:	ff 75 e0             	push   -0x20(%ebp)
400002f2:	50                   	push   %eax
400002f3:	e8 38 03 00 00       	call   40000630 <printf>
400002f8:	83 c4 10             	add    $0x10,%esp
400002fb:	e9 8b fe ff ff       	jmp    4000018b <main+0xab>
40000300:	83 ec 0c             	sub    $0xc,%esp
40000303:	8d 83 47 d6 ff ff    	lea    -0x29b9(%ebx),%eax
40000309:	50                   	push   %eax
4000030a:	e8 21 03 00 00       	call   40000630 <printf>
4000030f:	58                   	pop    %eax
40000310:	ff 75 dc             	push   -0x24(%ebp)
40000313:	e8 18 03 00 00       	call   40000630 <printf>
40000318:	83 c4 10             	add    $0x10,%esp
4000031b:	e9 77 ff ff ff       	jmp    40000297 <main+0x1b7>

40000320 <_start>:
40000320:	60                   	pusha
40000321:	e8 5a 0f 00 00       	call   40001280 <init>
40000326:	e8 b5 fd ff ff       	call   400000e0 <main>
4000032b:	61                   	popa
4000032c:	c3                   	ret
4000032d:	66 90                	xchg   %ax,%ax
4000032f:	90                   	nop

40000330 <debug>:
40000330:	53                   	push   %ebx
40000331:	e8 c1 00 00 00       	call   400003f7 <__x86.get_pc_thunk.bx>
40000336:	81 c3 be 3c 00 00    	add    $0x3cbe,%ebx
4000033c:	83 ec 0c             	sub    $0xc,%esp
4000033f:	ff 74 24 18          	push   0x18(%esp)
40000343:	ff 74 24 18          	push   0x18(%esp)
40000347:	8d 83 c4 d5 ff ff    	lea    -0x2a3c(%ebx),%eax
4000034d:	50                   	push   %eax
4000034e:	e8 dd 02 00 00       	call   40000630 <printf>
40000353:	58                   	pop    %eax
40000354:	5a                   	pop    %edx
40000355:	8d 44 24 24          	lea    0x24(%esp),%eax
40000359:	50                   	push   %eax
4000035a:	ff 74 24 24          	push   0x24(%esp)
4000035e:	e8 5d 02 00 00       	call   400005c0 <vcprintf>
40000363:	83 c4 18             	add    $0x18,%esp
40000366:	5b                   	pop    %ebx
40000367:	c3                   	ret
40000368:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000036f:	00 

40000370 <warn>:
40000370:	53                   	push   %ebx
40000371:	e8 81 00 00 00       	call   400003f7 <__x86.get_pc_thunk.bx>
40000376:	81 c3 7e 3c 00 00    	add    $0x3c7e,%ebx
4000037c:	83 ec 0c             	sub    $0xc,%esp
4000037f:	ff 74 24 18          	push   0x18(%esp)
40000383:	ff 74 24 18          	push   0x18(%esp)
40000387:	8d 83 d0 d5 ff ff    	lea    -0x2a30(%ebx),%eax
4000038d:	50                   	push   %eax
4000038e:	e8 9d 02 00 00       	call   40000630 <printf>
40000393:	58                   	pop    %eax
40000394:	5a                   	pop    %edx
40000395:	8d 44 24 24          	lea    0x24(%esp),%eax
40000399:	50                   	push   %eax
4000039a:	ff 74 24 24          	push   0x24(%esp)
4000039e:	e8 1d 02 00 00       	call   400005c0 <vcprintf>
400003a3:	83 c4 18             	add    $0x18,%esp
400003a6:	5b                   	pop    %ebx
400003a7:	c3                   	ret
400003a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400003af:	00 

400003b0 <panic>:
400003b0:	53                   	push   %ebx
400003b1:	e8 41 00 00 00       	call   400003f7 <__x86.get_pc_thunk.bx>
400003b6:	81 c3 3e 3c 00 00    	add    $0x3c3e,%ebx
400003bc:	83 ec 0c             	sub    $0xc,%esp
400003bf:	ff 74 24 18          	push   0x18(%esp)
400003c3:	ff 74 24 18          	push   0x18(%esp)
400003c7:	8d 83 dc d5 ff ff    	lea    -0x2a24(%ebx),%eax
400003cd:	50                   	push   %eax
400003ce:	e8 5d 02 00 00       	call   40000630 <printf>
400003d3:	58                   	pop    %eax
400003d4:	5a                   	pop    %edx
400003d5:	8d 44 24 24          	lea    0x24(%esp),%eax
400003d9:	50                   	push   %eax
400003da:	ff 74 24 24          	push   0x24(%esp)
400003de:	e8 dd 01 00 00       	call   400005c0 <vcprintf>
400003e3:	83 c4 10             	add    $0x10,%esp
400003e6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400003ed:	00 
400003ee:	66 90                	xchg   %ax,%ax
400003f0:	e8 bb 0e 00 00       	call   400012b0 <yield>
400003f5:	eb f9                	jmp    400003f0 <panic+0x40>

400003f7 <__x86.get_pc_thunk.bx>:
400003f7:	8b 1c 24             	mov    (%esp),%ebx
400003fa:	c3                   	ret
400003fb:	66 90                	xchg   %ax,%ax
400003fd:	66 90                	xchg   %ax,%ax
400003ff:	90                   	nop

40000400 <atoi>:
40000400:	55                   	push   %ebp
40000401:	57                   	push   %edi
40000402:	56                   	push   %esi
40000403:	53                   	push   %ebx
40000404:	8b 44 24 14          	mov    0x14(%esp),%eax
40000408:	0f b6 00             	movzbl (%eax),%eax
4000040b:	3c 2b                	cmp    $0x2b,%al
4000040d:	0f 84 8d 00 00 00    	je     400004a0 <atoi+0xa0>
40000413:	3c 2d                	cmp    $0x2d,%al
40000415:	74 59                	je     40000470 <atoi+0x70>
40000417:	8d 50 d0             	lea    -0x30(%eax),%edx
4000041a:	80 fa 09             	cmp    $0x9,%dl
4000041d:	77 71                	ja     40000490 <atoi+0x90>
4000041f:	31 ff                	xor    %edi,%edi
40000421:	31 f6                	xor    %esi,%esi
40000423:	89 f2                	mov    %esi,%edx
40000425:	31 c9                	xor    %ecx,%ecx
40000427:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000042e:	00 
4000042f:	90                   	nop
40000430:	83 e8 30             	sub    $0x30,%eax
40000433:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
40000436:	83 c2 01             	add    $0x1,%edx
40000439:	0f be c0             	movsbl %al,%eax
4000043c:	8d 0c 48             	lea    (%eax,%ecx,2),%ecx
4000043f:	8b 44 24 14          	mov    0x14(%esp),%eax
40000443:	0f b6 04 10          	movzbl (%eax,%edx,1),%eax
40000447:	8d 68 d0             	lea    -0x30(%eax),%ebp
4000044a:	89 eb                	mov    %ebp,%ebx
4000044c:	80 fb 09             	cmp    $0x9,%bl
4000044f:	76 df                	jbe    40000430 <atoi+0x30>
40000451:	39 f2                	cmp    %esi,%edx
40000453:	74 3b                	je     40000490 <atoi+0x90>
40000455:	89 c8                	mov    %ecx,%eax
40000457:	f7 d8                	neg    %eax
40000459:	85 ff                	test   %edi,%edi
4000045b:	0f 45 c8             	cmovne %eax,%ecx
4000045e:	8b 44 24 18          	mov    0x18(%esp),%eax
40000462:	89 08                	mov    %ecx,(%eax)
40000464:	89 d0                	mov    %edx,%eax
40000466:	5b                   	pop    %ebx
40000467:	5e                   	pop    %esi
40000468:	5f                   	pop    %edi
40000469:	5d                   	pop    %ebp
4000046a:	c3                   	ret
4000046b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000470:	8b 44 24 14          	mov    0x14(%esp),%eax
40000474:	bf 01 00 00 00       	mov    $0x1,%edi
40000479:	be 01 00 00 00       	mov    $0x1,%esi
4000047e:	0f b6 40 01          	movzbl 0x1(%eax),%eax
40000482:	8d 50 d0             	lea    -0x30(%eax),%edx
40000485:	80 fa 09             	cmp    $0x9,%dl
40000488:	76 99                	jbe    40000423 <atoi+0x23>
4000048a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000490:	31 d2                	xor    %edx,%edx
40000492:	5b                   	pop    %ebx
40000493:	89 d0                	mov    %edx,%eax
40000495:	5e                   	pop    %esi
40000496:	5f                   	pop    %edi
40000497:	5d                   	pop    %ebp
40000498:	c3                   	ret
40000499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
400004a0:	8b 44 24 14          	mov    0x14(%esp),%eax
400004a4:	31 ff                	xor    %edi,%edi
400004a6:	be 01 00 00 00       	mov    $0x1,%esi
400004ab:	0f b6 40 01          	movzbl 0x1(%eax),%eax
400004af:	8d 50 d0             	lea    -0x30(%eax),%edx
400004b2:	80 fa 09             	cmp    $0x9,%dl
400004b5:	0f 86 68 ff ff ff    	jbe    40000423 <atoi+0x23>
400004bb:	31 d2                	xor    %edx,%edx
400004bd:	eb d3                	jmp    40000492 <atoi+0x92>
400004bf:	90                   	nop

400004c0 <putch>:
400004c0:	56                   	push   %esi
400004c1:	53                   	push   %ebx
400004c2:	e8 30 ff ff ff       	call   400003f7 <__x86.get_pc_thunk.bx>
400004c7:	81 c3 2d 3b 00 00    	add    $0x3b2d,%ebx
400004cd:	83 ec 04             	sub    $0x4,%esp
400004d0:	8b 74 24 14          	mov    0x14(%esp),%esi
400004d4:	8b 4c 24 10          	mov    0x10(%esp),%ecx
400004d8:	8b 16                	mov    (%esi),%edx
400004da:	8d 42 01             	lea    0x1(%edx),%eax
400004dd:	89 06                	mov    %eax,(%esi)
400004df:	88 4c 16 08          	mov    %cl,0x8(%esi,%edx,1)
400004e3:	3d ff 01 00 00       	cmp    $0x1ff,%eax
400004e8:	74 0e                	je     400004f8 <putch+0x38>
400004ea:	83 46 04 01          	addl   $0x1,0x4(%esi)
400004ee:	83 c4 04             	add    $0x4,%esp
400004f1:	5b                   	pop    %ebx
400004f2:	5e                   	pop    %esi
400004f3:	c3                   	ret
400004f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
400004f8:	83 ec 08             	sub    $0x8,%esp
400004fb:	8d 46 08             	lea    0x8(%esi),%eax
400004fe:	c6 86 07 02 00 00 00 	movb   $0x0,0x207(%esi)
40000505:	68 ff 01 00 00       	push   $0x1ff
4000050a:	50                   	push   %eax
4000050b:	e8 d0 0d 00 00       	call   400012e0 <sys_puts>
40000510:	83 c4 10             	add    $0x10,%esp
40000513:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
40000519:	83 46 04 01          	addl   $0x1,0x4(%esi)
4000051d:	83 c4 04             	add    $0x4,%esp
40000520:	5b                   	pop    %ebx
40000521:	5e                   	pop    %esi
40000522:	c3                   	ret
40000523:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000052a:	00 
4000052b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40000530 <gets>:
40000530:	55                   	push   %ebp
40000531:	57                   	push   %edi
40000532:	56                   	push   %esi
40000533:	53                   	push   %ebx
40000534:	e8 be fe ff ff       	call   400003f7 <__x86.get_pc_thunk.bx>
40000539:	81 c3 bb 3a 00 00    	add    $0x3abb,%ebx
4000053f:	83 ec 2c             	sub    $0x2c,%esp
40000542:	83 7c 24 44 01       	cmpl   $0x1,0x44(%esp)
40000547:	c6 44 24 1f 00       	movb   $0x0,0x1f(%esp)
4000054c:	7e 46                	jle    40000594 <gets+0x64>
4000054e:	8b 74 24 40          	mov    0x40(%esp),%esi
40000552:	8b 54 24 44          	mov    0x44(%esp),%edx
40000556:	8d 7c 24 1e          	lea    0x1e(%esp),%edi
4000055a:	8d 6c 16 ff          	lea    -0x1(%esi,%edx,1),%ebp
4000055e:	66 90                	xchg   %ax,%ax
40000560:	e8 5b 0d 00 00       	call   400012c0 <sys_getc>
40000565:	84 c0                	test   %al,%al
40000567:	74 f7                	je     40000560 <gets+0x30>
40000569:	88 44 24 1e          	mov    %al,0x1e(%esp)
4000056d:	83 ec 08             	sub    $0x8,%esp
40000570:	89 44 24 14          	mov    %eax,0x14(%esp)
40000574:	6a 02                	push   $0x2
40000576:	57                   	push   %edi
40000577:	e8 64 0d 00 00       	call   400012e0 <sys_puts>
4000057c:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000580:	83 c4 10             	add    $0x10,%esp
40000583:	3c 0a                	cmp    $0xa,%al
40000585:	74 22                	je     400005a9 <gets+0x79>
40000587:	3c 0d                	cmp    $0xd,%al
40000589:	74 1e                	je     400005a9 <gets+0x79>
4000058b:	88 06                	mov    %al,(%esi)
4000058d:	83 c6 01             	add    $0x1,%esi
40000590:	39 ee                	cmp    %ebp,%esi
40000592:	75 cc                	jne    40000560 <gets+0x30>
40000594:	8b 44 24 40          	mov    0x40(%esp),%eax
40000598:	8b 4c 24 44          	mov    0x44(%esp),%ecx
4000059c:	c6 44 08 ff 00       	movb   $0x0,-0x1(%eax,%ecx,1)
400005a1:	83 c4 2c             	add    $0x2c,%esp
400005a4:	5b                   	pop    %ebx
400005a5:	5e                   	pop    %esi
400005a6:	5f                   	pop    %edi
400005a7:	5d                   	pop    %ebp
400005a8:	c3                   	ret
400005a9:	c6 06 00             	movb   $0x0,(%esi)
400005ac:	83 c4 2c             	add    $0x2c,%esp
400005af:	5b                   	pop    %ebx
400005b0:	5e                   	pop    %esi
400005b1:	5f                   	pop    %edi
400005b2:	5d                   	pop    %ebp
400005b3:	c3                   	ret
400005b4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400005bb:	00 
400005bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

400005c0 <vcprintf>:
400005c0:	53                   	push   %ebx
400005c1:	e8 31 fe ff ff       	call   400003f7 <__x86.get_pc_thunk.bx>
400005c6:	81 c3 2e 3a 00 00    	add    $0x3a2e,%ebx
400005cc:	81 ec 18 02 00 00    	sub    $0x218,%esp
400005d2:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
400005d9:	00 
400005da:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
400005e1:	00 
400005e2:	ff b4 24 24 02 00 00 	push   0x224(%esp)
400005e9:	ff b4 24 24 02 00 00 	push   0x224(%esp)
400005f0:	8d 44 24 10          	lea    0x10(%esp),%eax
400005f4:	50                   	push   %eax
400005f5:	8d 83 cc c4 ff ff    	lea    -0x3b34(%ebx),%eax
400005fb:	50                   	push   %eax
400005fc:	e8 4f 01 00 00       	call   40000750 <vprintfmt>
40000601:	8b 44 24 18          	mov    0x18(%esp),%eax
40000605:	c6 44 04 20 00       	movb   $0x0,0x20(%esp,%eax,1)
4000060a:	5a                   	pop    %edx
4000060b:	59                   	pop    %ecx
4000060c:	50                   	push   %eax
4000060d:	8d 44 24 1c          	lea    0x1c(%esp),%eax
40000611:	50                   	push   %eax
40000612:	e8 c9 0c 00 00       	call   400012e0 <sys_puts>
40000617:	8b 44 24 1c          	mov    0x1c(%esp),%eax
4000061b:	81 c4 28 02 00 00    	add    $0x228,%esp
40000621:	5b                   	pop    %ebx
40000622:	c3                   	ret
40000623:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000062a:	00 
4000062b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40000630 <printf>:
40000630:	83 ec 14             	sub    $0x14,%esp
40000633:	8d 44 24 1c          	lea    0x1c(%esp),%eax
40000637:	50                   	push   %eax
40000638:	ff 74 24 1c          	push   0x1c(%esp)
4000063c:	e8 7f ff ff ff       	call   400005c0 <vcprintf>
40000641:	83 c4 1c             	add    $0x1c,%esp
40000644:	c3                   	ret
40000645:	66 90                	xchg   %ax,%ax
40000647:	66 90                	xchg   %ax,%ax
40000649:	66 90                	xchg   %ax,%ax
4000064b:	66 90                	xchg   %ax,%ax
4000064d:	66 90                	xchg   %ax,%ax
4000064f:	90                   	nop

40000650 <printnum>:
40000650:	e8 86 07 00 00       	call   40000ddb <__x86.get_pc_thunk.cx>
40000655:	81 c1 9f 39 00 00    	add    $0x399f,%ecx
4000065b:	55                   	push   %ebp
4000065c:	57                   	push   %edi
4000065d:	89 d7                	mov    %edx,%edi
4000065f:	56                   	push   %esi
40000660:	89 c6                	mov    %eax,%esi
40000662:	53                   	push   %ebx
40000663:	83 ec 2c             	sub    $0x2c,%esp
40000666:	8b 44 24 40          	mov    0x40(%esp),%eax
4000066a:	8b 54 24 44          	mov    0x44(%esp),%edx
4000066e:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
40000672:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
40000679:	00 
4000067a:	8b 6c 24 50          	mov    0x50(%esp),%ebp
4000067e:	89 44 24 08          	mov    %eax,0x8(%esp)
40000682:	8b 44 24 48          	mov    0x48(%esp),%eax
40000686:	89 54 24 0c          	mov    %edx,0xc(%esp)
4000068a:	8b 54 24 4c          	mov    0x4c(%esp),%edx
4000068e:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
40000692:	39 44 24 08          	cmp    %eax,0x8(%esp)
40000696:	89 44 24 10          	mov    %eax,0x10(%esp)
4000069a:	1b 4c 24 14          	sbb    0x14(%esp),%ecx
4000069e:	8d 5a ff             	lea    -0x1(%edx),%ebx
400006a1:	73 55                	jae    400006f8 <printnum+0xa8>
400006a3:	83 fa 01             	cmp    $0x1,%edx
400006a6:	7e 17                	jle    400006bf <printnum+0x6f>
400006a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400006af:	00 
400006b0:	83 ec 08             	sub    $0x8,%esp
400006b3:	57                   	push   %edi
400006b4:	55                   	push   %ebp
400006b5:	ff d6                	call   *%esi
400006b7:	83 c4 10             	add    $0x10,%esp
400006ba:	83 eb 01             	sub    $0x1,%ebx
400006bd:	75 f1                	jne    400006b0 <printnum+0x60>
400006bf:	89 7c 24 44          	mov    %edi,0x44(%esp)
400006c3:	ff 74 24 14          	push   0x14(%esp)
400006c7:	ff 74 24 14          	push   0x14(%esp)
400006cb:	ff 74 24 14          	push   0x14(%esp)
400006cf:	ff 74 24 14          	push   0x14(%esp)
400006d3:	8b 5c 24 2c          	mov    0x2c(%esp),%ebx
400006d7:	e8 94 0d 00 00       	call   40001470 <__umoddi3>
400006dc:	0f be 84 03 e8 d5 ff 	movsbl -0x2a18(%ebx,%eax,1),%eax
400006e3:	ff 
400006e4:	89 44 24 50          	mov    %eax,0x50(%esp)
400006e8:	83 c4 3c             	add    $0x3c,%esp
400006eb:	89 f0                	mov    %esi,%eax
400006ed:	5b                   	pop    %ebx
400006ee:	5e                   	pop    %esi
400006ef:	5f                   	pop    %edi
400006f0:	5d                   	pop    %ebp
400006f1:	ff e0                	jmp    *%eax
400006f3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
400006f8:	83 ec 0c             	sub    $0xc,%esp
400006fb:	55                   	push   %ebp
400006fc:	53                   	push   %ebx
400006fd:	50                   	push   %eax
400006fe:	83 ec 08             	sub    $0x8,%esp
40000701:	ff 74 24 34          	push   0x34(%esp)
40000705:	ff 74 24 34          	push   0x34(%esp)
40000709:	ff 74 24 34          	push   0x34(%esp)
4000070d:	ff 74 24 34          	push   0x34(%esp)
40000711:	8b 5c 24 4c          	mov    0x4c(%esp),%ebx
40000715:	e8 26 0c 00 00       	call   40001340 <__udivdi3>
4000071a:	83 c4 18             	add    $0x18,%esp
4000071d:	52                   	push   %edx
4000071e:	89 fa                	mov    %edi,%edx
40000720:	50                   	push   %eax
40000721:	89 f0                	mov    %esi,%eax
40000723:	e8 28 ff ff ff       	call   40000650 <printnum>
40000728:	83 c4 20             	add    $0x20,%esp
4000072b:	eb 92                	jmp    400006bf <printnum+0x6f>
4000072d:	8d 76 00             	lea    0x0(%esi),%esi

40000730 <sprintputch>:
40000730:	8b 44 24 08          	mov    0x8(%esp),%eax
40000734:	83 40 08 01          	addl   $0x1,0x8(%eax)
40000738:	8b 10                	mov    (%eax),%edx
4000073a:	3b 50 04             	cmp    0x4(%eax),%edx
4000073d:	73 0b                	jae    4000074a <sprintputch+0x1a>
4000073f:	8d 4a 01             	lea    0x1(%edx),%ecx
40000742:	89 08                	mov    %ecx,(%eax)
40000744:	8b 44 24 04          	mov    0x4(%esp),%eax
40000748:	88 02                	mov    %al,(%edx)
4000074a:	c3                   	ret
4000074b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40000750 <vprintfmt>:
40000750:	e8 7e 06 00 00       	call   40000dd3 <__x86.get_pc_thunk.ax>
40000755:	05 9f 38 00 00       	add    $0x389f,%eax
4000075a:	55                   	push   %ebp
4000075b:	57                   	push   %edi
4000075c:	56                   	push   %esi
4000075d:	53                   	push   %ebx
4000075e:	83 ec 2c             	sub    $0x2c,%esp
40000761:	8b 74 24 40          	mov    0x40(%esp),%esi
40000765:	8b 7c 24 44          	mov    0x44(%esp),%edi
40000769:	89 44 24 0c          	mov    %eax,0xc(%esp)
4000076d:	8b 6c 24 48          	mov    0x48(%esp),%ebp
40000771:	0f b6 45 00          	movzbl 0x0(%ebp),%eax
40000775:	8d 5d 01             	lea    0x1(%ebp),%ebx
40000778:	83 f8 25             	cmp    $0x25,%eax
4000077b:	75 19                	jne    40000796 <vprintfmt+0x46>
4000077d:	eb 29                	jmp    400007a8 <vprintfmt+0x58>
4000077f:	90                   	nop
40000780:	83 ec 08             	sub    $0x8,%esp
40000783:	83 c3 01             	add    $0x1,%ebx
40000786:	57                   	push   %edi
40000787:	50                   	push   %eax
40000788:	ff d6                	call   *%esi
4000078a:	0f b6 43 ff          	movzbl -0x1(%ebx),%eax
4000078e:	83 c4 10             	add    $0x10,%esp
40000791:	83 f8 25             	cmp    $0x25,%eax
40000794:	74 12                	je     400007a8 <vprintfmt+0x58>
40000796:	85 c0                	test   %eax,%eax
40000798:	75 e6                	jne    40000780 <vprintfmt+0x30>
4000079a:	83 c4 2c             	add    $0x2c,%esp
4000079d:	5b                   	pop    %ebx
4000079e:	5e                   	pop    %esi
4000079f:	5f                   	pop    %edi
400007a0:	5d                   	pop    %ebp
400007a1:	c3                   	ret
400007a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
400007a8:	ba ff ff ff ff       	mov    $0xffffffff,%edx
400007ad:	c6 44 24 10 20       	movb   $0x20,0x10(%esp)
400007b2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
400007b9:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
400007c0:	ff 
400007c1:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
400007c8:	00 
400007c9:	89 54 24 14          	mov    %edx,0x14(%esp)
400007cd:	89 74 24 40          	mov    %esi,0x40(%esp)
400007d1:	0f b6 0b             	movzbl (%ebx),%ecx
400007d4:	8d 6b 01             	lea    0x1(%ebx),%ebp
400007d7:	8d 41 dd             	lea    -0x23(%ecx),%eax
400007da:	3c 55                	cmp    $0x55,%al
400007dc:	77 12                	ja     400007f0 <.L21>
400007de:	8b 54 24 0c          	mov    0xc(%esp),%edx
400007e2:	0f b6 c0             	movzbl %al,%eax
400007e5:	8b b4 82 64 d6 ff ff 	mov    -0x299c(%edx,%eax,4),%esi
400007ec:	01 d6                	add    %edx,%esi
400007ee:	ff e6                	jmp    *%esi

400007f0 <.L21>:
400007f0:	8b 74 24 40          	mov    0x40(%esp),%esi
400007f4:	83 ec 08             	sub    $0x8,%esp
400007f7:	89 dd                	mov    %ebx,%ebp
400007f9:	57                   	push   %edi
400007fa:	6a 25                	push   $0x25
400007fc:	ff d6                	call   *%esi
400007fe:	83 c4 10             	add    $0x10,%esp
40000801:	80 7b ff 25          	cmpb   $0x25,-0x1(%ebx)
40000805:	0f 84 66 ff ff ff    	je     40000771 <vprintfmt+0x21>
4000080b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000810:	83 ed 01             	sub    $0x1,%ebp
40000813:	80 7d ff 25          	cmpb   $0x25,-0x1(%ebp)
40000817:	75 f7                	jne    40000810 <.L21+0x20>
40000819:	e9 53 ff ff ff       	jmp    40000771 <vprintfmt+0x21>
4000081e:	66 90                	xchg   %ax,%ax

40000820 <.L31>:
40000820:	0f be 43 01          	movsbl 0x1(%ebx),%eax
40000824:	8d 51 d0             	lea    -0x30(%ecx),%edx
40000827:	89 eb                	mov    %ebp,%ebx
40000829:	89 54 24 14          	mov    %edx,0x14(%esp)
4000082d:	8d 48 d0             	lea    -0x30(%eax),%ecx
40000830:	83 f9 09             	cmp    $0x9,%ecx
40000833:	77 28                	ja     4000085d <.L31+0x3d>
40000835:	8b 74 24 40          	mov    0x40(%esp),%esi
40000839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
40000840:	83 c3 01             	add    $0x1,%ebx
40000843:	8d 14 92             	lea    (%edx,%edx,4),%edx
40000846:	8d 54 50 d0          	lea    -0x30(%eax,%edx,2),%edx
4000084a:	0f be 03             	movsbl (%ebx),%eax
4000084d:	8d 48 d0             	lea    -0x30(%eax),%ecx
40000850:	83 f9 09             	cmp    $0x9,%ecx
40000853:	76 eb                	jbe    40000840 <.L31+0x20>
40000855:	89 54 24 14          	mov    %edx,0x14(%esp)
40000859:	89 74 24 40          	mov    %esi,0x40(%esp)
4000085d:	8b 74 24 08          	mov    0x8(%esp),%esi
40000861:	85 f6                	test   %esi,%esi
40000863:	0f 89 68 ff ff ff    	jns    400007d1 <vprintfmt+0x81>
40000869:	8b 44 24 14          	mov    0x14(%esp),%eax
4000086d:	c7 44 24 14 ff ff ff 	movl   $0xffffffff,0x14(%esp)
40000874:	ff 
40000875:	89 44 24 08          	mov    %eax,0x8(%esp)
40000879:	e9 53 ff ff ff       	jmp    400007d1 <vprintfmt+0x81>

4000087e <.L35>:
4000087e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
40000885:	89 eb                	mov    %ebp,%ebx
40000887:	e9 45 ff ff ff       	jmp    400007d1 <vprintfmt+0x81>

4000088c <.L34>:
4000088c:	8b 74 24 40          	mov    0x40(%esp),%esi
40000890:	83 ec 08             	sub    $0x8,%esp
40000893:	57                   	push   %edi
40000894:	6a 25                	push   $0x25
40000896:	ff d6                	call   *%esi
40000898:	83 c4 10             	add    $0x10,%esp
4000089b:	e9 d1 fe ff ff       	jmp    40000771 <vprintfmt+0x21>

400008a0 <.L33>:
400008a0:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400008a4:	89 eb                	mov    %ebp,%ebx
400008a6:	8b 00                	mov    (%eax),%eax
400008a8:	89 44 24 14          	mov    %eax,0x14(%esp)
400008ac:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400008b0:	83 c0 04             	add    $0x4,%eax
400008b3:	89 44 24 4c          	mov    %eax,0x4c(%esp)
400008b7:	eb a4                	jmp    4000085d <.L31+0x3d>

400008b9 <.L32>:
400008b9:	8b 4c 24 08          	mov    0x8(%esp),%ecx
400008bd:	31 c0                	xor    %eax,%eax
400008bf:	89 eb                	mov    %ebp,%ebx
400008c1:	85 c9                	test   %ecx,%ecx
400008c3:	0f 49 c1             	cmovns %ecx,%eax
400008c6:	89 44 24 08          	mov    %eax,0x8(%esp)
400008ca:	e9 02 ff ff ff       	jmp    400007d1 <vprintfmt+0x81>

400008cf <.L30>:
400008cf:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400008d3:	8b 74 24 40          	mov    0x40(%esp),%esi
400008d7:	83 ec 08             	sub    $0x8,%esp
400008da:	57                   	push   %edi
400008db:	8d 58 04             	lea    0x4(%eax),%ebx
400008de:	8b 44 24 58          	mov    0x58(%esp),%eax
400008e2:	ff 30                	push   (%eax)
400008e4:	ff d6                	call   *%esi
400008e6:	83 c4 10             	add    $0x10,%esp
400008e9:	89 5c 24 4c          	mov    %ebx,0x4c(%esp)
400008ed:	e9 7f fe ff ff       	jmp    40000771 <vprintfmt+0x21>

400008f2 <.L24>:
400008f2:	83 7c 24 18 01       	cmpl   $0x1,0x18(%esp)
400008f7:	8b 74 24 40          	mov    0x40(%esp),%esi
400008fb:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400008ff:	0f 8f d8 01 00 00    	jg     40000add <.L25+0xe0>
40000905:	8b 4c 24 4c          	mov    0x4c(%esp),%ecx
40000909:	83 c0 04             	add    $0x4,%eax
4000090c:	31 db                	xor    %ebx,%ebx
4000090e:	ba 0a 00 00 00       	mov    $0xa,%edx
40000913:	8b 09                	mov    (%ecx),%ecx
40000915:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
40000920:	83 ec 0c             	sub    $0xc,%esp
40000923:	0f be 44 24 1c       	movsbl 0x1c(%esp),%eax
40000928:	50                   	push   %eax
40000929:	89 f0                	mov    %esi,%eax
4000092b:	ff 74 24 18          	push   0x18(%esp)
4000092f:	52                   	push   %edx
40000930:	89 fa                	mov    %edi,%edx
40000932:	53                   	push   %ebx
40000933:	51                   	push   %ecx
40000934:	e8 17 fd ff ff       	call   40000650 <printnum>
40000939:	83 c4 20             	add    $0x20,%esp
4000093c:	e9 30 fe ff ff       	jmp    40000771 <vprintfmt+0x21>

40000941 <.L26>:
40000941:	8b 74 24 40          	mov    0x40(%esp),%esi
40000945:	83 ec 08             	sub    $0x8,%esp
40000948:	57                   	push   %edi
40000949:	6a 30                	push   $0x30
4000094b:	ff d6                	call   *%esi
4000094d:	59                   	pop    %ecx
4000094e:	5b                   	pop    %ebx
4000094f:	57                   	push   %edi
40000950:	6a 78                	push   $0x78
40000952:	31 db                	xor    %ebx,%ebx
40000954:	ff d6                	call   *%esi
40000956:	8b 44 24 5c          	mov    0x5c(%esp),%eax
4000095a:	ba 10 00 00 00       	mov    $0x10,%edx
4000095f:	8b 08                	mov    (%eax),%ecx
40000961:	83 c4 10             	add    $0x10,%esp
40000964:	83 c0 04             	add    $0x4,%eax
40000967:	89 44 24 4c          	mov    %eax,0x4c(%esp)
4000096b:	eb b3                	jmp    40000920 <.L24+0x2e>

4000096d <.L22>:
4000096d:	83 7c 24 18 01       	cmpl   $0x1,0x18(%esp)
40000972:	8b 74 24 40          	mov    0x40(%esp),%esi
40000976:	8b 44 24 4c          	mov    0x4c(%esp),%eax
4000097a:	0f 8f 6e 01 00 00    	jg     40000aee <.L25+0xf1>
40000980:	8b 4c 24 4c          	mov    0x4c(%esp),%ecx
40000984:	83 c0 04             	add    $0x4,%eax
40000987:	31 db                	xor    %ebx,%ebx
40000989:	ba 10 00 00 00       	mov    $0x10,%edx
4000098e:	8b 09                	mov    (%ecx),%ecx
40000990:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000994:	eb 8a                	jmp    40000920 <.L24+0x2e>

40000996 <.L29>:
40000996:	83 7c 24 18 01       	cmpl   $0x1,0x18(%esp)
4000099b:	8b 74 24 40          	mov    0x40(%esp),%esi
4000099f:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400009a3:	0f 8f 5b 01 00 00    	jg     40000b04 <.L25+0x107>
400009a9:	8b 00                	mov    (%eax),%eax
400009ab:	89 c3                	mov    %eax,%ebx
400009ad:	89 c1                	mov    %eax,%ecx
400009af:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400009b3:	c1 fb 1f             	sar    $0x1f,%ebx
400009b6:	83 c0 04             	add    $0x4,%eax
400009b9:	89 44 24 4c          	mov    %eax,0x4c(%esp)
400009bd:	85 db                	test   %ebx,%ebx
400009bf:	0f 88 68 01 00 00    	js     40000b2d <.L19+0xc>
400009c5:	ba 0a 00 00 00       	mov    $0xa,%edx
400009ca:	e9 51 ff ff ff       	jmp    40000920 <.L24+0x2e>

400009cf <.L28>:
400009cf:	83 44 24 18 01       	addl   $0x1,0x18(%esp)
400009d4:	89 eb                	mov    %ebp,%ebx
400009d6:	e9 f6 fd ff ff       	jmp    400007d1 <vprintfmt+0x81>

400009db <.L27>:
400009db:	8b 74 24 40          	mov    0x40(%esp),%esi
400009df:	83 ec 08             	sub    $0x8,%esp
400009e2:	57                   	push   %edi
400009e3:	6a 58                	push   $0x58
400009e5:	ff d6                	call   *%esi
400009e7:	58                   	pop    %eax
400009e8:	5a                   	pop    %edx
400009e9:	57                   	push   %edi
400009ea:	6a 58                	push   $0x58
400009ec:	ff d6                	call   *%esi
400009ee:	59                   	pop    %ecx
400009ef:	5b                   	pop    %ebx
400009f0:	57                   	push   %edi
400009f1:	6a 58                	push   $0x58
400009f3:	ff d6                	call   *%esi
400009f5:	83 c4 10             	add    $0x10,%esp
400009f8:	e9 74 fd ff ff       	jmp    40000771 <vprintfmt+0x21>

400009fd <.L25>:
400009fd:	8b 44 24 4c          	mov    0x4c(%esp),%eax
40000a01:	8b 4c 24 08          	mov    0x8(%esp),%ecx
40000a05:	8b 54 24 14          	mov    0x14(%esp),%edx
40000a09:	8b 74 24 40          	mov    0x40(%esp),%esi
40000a0d:	83 c0 04             	add    $0x4,%eax
40000a10:	80 7c 24 10 2d       	cmpb   $0x2d,0x10(%esp)
40000a15:	89 44 24 14          	mov    %eax,0x14(%esp)
40000a19:	8b 44 24 4c          	mov    0x4c(%esp),%eax
40000a1d:	8b 18                	mov    (%eax),%ebx
40000a1f:	0f 95 c0             	setne  %al
40000a22:	85 c9                	test   %ecx,%ecx
40000a24:	0f 9f c1             	setg   %cl
40000a27:	89 5c 24 18          	mov    %ebx,0x18(%esp)
40000a2b:	21 c8                	and    %ecx,%eax
40000a2d:	85 db                	test   %ebx,%ebx
40000a2f:	0f 84 21 01 00 00    	je     40000b56 <.L19+0x35>
40000a35:	84 c0                	test   %al,%al
40000a37:	0f 85 48 01 00 00    	jne    40000b85 <.L19+0x64>
40000a3d:	89 d8                	mov    %ebx,%eax
40000a3f:	8d 5b 01             	lea    0x1(%ebx),%ebx
40000a42:	0f be 08             	movsbl (%eax),%ecx
40000a45:	89 c8                	mov    %ecx,%eax
40000a47:	85 c9                	test   %ecx,%ecx
40000a49:	74 64                	je     40000aaf <.L25+0xb2>
40000a4b:	89 74 24 40          	mov    %esi,0x40(%esp)
40000a4f:	89 d6                	mov    %edx,%esi
40000a51:	89 6c 24 48          	mov    %ebp,0x48(%esp)
40000a55:	8b 6c 24 08          	mov    0x8(%esp),%ebp
40000a59:	eb 2a                	jmp    40000a85 <.L25+0x88>
40000a5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000a60:	83 e8 20             	sub    $0x20,%eax
40000a63:	83 f8 5e             	cmp    $0x5e,%eax
40000a66:	76 2d                	jbe    40000a95 <.L25+0x98>
40000a68:	83 ec 08             	sub    $0x8,%esp
40000a6b:	57                   	push   %edi
40000a6c:	6a 3f                	push   $0x3f
40000a6e:	ff 54 24 50          	call   *0x50(%esp)
40000a72:	83 c4 10             	add    $0x10,%esp
40000a75:	0f be 03             	movsbl (%ebx),%eax
40000a78:	83 c3 01             	add    $0x1,%ebx
40000a7b:	83 ed 01             	sub    $0x1,%ebp
40000a7e:	0f be c8             	movsbl %al,%ecx
40000a81:	85 c9                	test   %ecx,%ecx
40000a83:	74 1e                	je     40000aa3 <.L25+0xa6>
40000a85:	85 f6                	test   %esi,%esi
40000a87:	78 05                	js     40000a8e <.L25+0x91>
40000a89:	83 ee 01             	sub    $0x1,%esi
40000a8c:	72 15                	jb     40000aa3 <.L25+0xa6>
40000a8e:	8b 14 24             	mov    (%esp),%edx
40000a91:	85 d2                	test   %edx,%edx
40000a93:	75 cb                	jne    40000a60 <.L25+0x63>
40000a95:	83 ec 08             	sub    $0x8,%esp
40000a98:	57                   	push   %edi
40000a99:	51                   	push   %ecx
40000a9a:	ff 54 24 50          	call   *0x50(%esp)
40000a9e:	83 c4 10             	add    $0x10,%esp
40000aa1:	eb d2                	jmp    40000a75 <.L25+0x78>
40000aa3:	89 6c 24 08          	mov    %ebp,0x8(%esp)
40000aa7:	8b 74 24 40          	mov    0x40(%esp),%esi
40000aab:	8b 6c 24 48          	mov    0x48(%esp),%ebp
40000aaf:	8b 44 24 08          	mov    0x8(%esp),%eax
40000ab3:	85 c0                	test   %eax,%eax
40000ab5:	7e 19                	jle    40000ad0 <.L25+0xd3>
40000ab7:	89 c3                	mov    %eax,%ebx
40000ab9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
40000ac0:	83 ec 08             	sub    $0x8,%esp
40000ac3:	57                   	push   %edi
40000ac4:	6a 20                	push   $0x20
40000ac6:	ff d6                	call   *%esi
40000ac8:	83 c4 10             	add    $0x10,%esp
40000acb:	83 eb 01             	sub    $0x1,%ebx
40000ace:	75 f0                	jne    40000ac0 <.L25+0xc3>
40000ad0:	8b 44 24 14          	mov    0x14(%esp),%eax
40000ad4:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000ad8:	e9 94 fc ff ff       	jmp    40000771 <vprintfmt+0x21>
40000add:	8b 08                	mov    (%eax),%ecx
40000adf:	8b 58 04             	mov    0x4(%eax),%ebx
40000ae2:	83 c0 08             	add    $0x8,%eax
40000ae5:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000ae9:	e9 d7 fe ff ff       	jmp    400009c5 <.L29+0x2f>
40000aee:	8b 08                	mov    (%eax),%ecx
40000af0:	8b 58 04             	mov    0x4(%eax),%ebx
40000af3:	83 c0 08             	add    $0x8,%eax
40000af6:	ba 10 00 00 00       	mov    $0x10,%edx
40000afb:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000aff:	e9 1c fe ff ff       	jmp    40000920 <.L24+0x2e>
40000b04:	8b 08                	mov    (%eax),%ecx
40000b06:	8b 58 04             	mov    0x4(%eax),%ebx
40000b09:	83 c0 08             	add    $0x8,%eax
40000b0c:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000b10:	e9 a8 fe ff ff       	jmp    400009bd <.L29+0x27>

40000b15 <.L63>:
40000b15:	c6 44 24 10 30       	movb   $0x30,0x10(%esp)
40000b1a:	89 eb                	mov    %ebp,%ebx
40000b1c:	e9 b0 fc ff ff       	jmp    400007d1 <vprintfmt+0x81>

40000b21 <.L19>:
40000b21:	c6 44 24 10 2d       	movb   $0x2d,0x10(%esp)
40000b26:	89 eb                	mov    %ebp,%ebx
40000b28:	e9 a4 fc ff ff       	jmp    400007d1 <vprintfmt+0x81>
40000b2d:	89 5c 24 04          	mov    %ebx,0x4(%esp)
40000b31:	83 ec 08             	sub    $0x8,%esp
40000b34:	31 db                	xor    %ebx,%ebx
40000b36:	89 4c 24 08          	mov    %ecx,0x8(%esp)
40000b3a:	57                   	push   %edi
40000b3b:	6a 2d                	push   $0x2d
40000b3d:	ff d6                	call   *%esi
40000b3f:	8b 4c 24 10          	mov    0x10(%esp),%ecx
40000b43:	ba 0a 00 00 00       	mov    $0xa,%edx
40000b48:	f7 d9                	neg    %ecx
40000b4a:	1b 5c 24 14          	sbb    0x14(%esp),%ebx
40000b4e:	83 c4 10             	add    $0x10,%esp
40000b51:	e9 ca fd ff ff       	jmp    40000920 <.L24+0x2e>
40000b56:	84 c0                	test   %al,%al
40000b58:	0f 85 99 00 00 00    	jne    40000bf7 <.L19+0xd6>
40000b5e:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
40000b62:	89 74 24 40          	mov    %esi,0x40(%esp)
40000b66:	b9 28 00 00 00       	mov    $0x28,%ecx
40000b6b:	89 d6                	mov    %edx,%esi
40000b6d:	89 6c 24 48          	mov    %ebp,0x48(%esp)
40000b71:	b8 28 00 00 00       	mov    $0x28,%eax
40000b76:	8b 6c 24 08          	mov    0x8(%esp),%ebp
40000b7a:	8d 9b fa d5 ff ff    	lea    -0x2a06(%ebx),%ebx
40000b80:	e9 00 ff ff ff       	jmp    40000a85 <.L25+0x88>
40000b85:	83 ec 08             	sub    $0x8,%esp
40000b88:	52                   	push   %edx
40000b89:	89 54 24 28          	mov    %edx,0x28(%esp)
40000b8d:	ff 74 24 24          	push   0x24(%esp)
40000b91:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
40000b95:	e8 76 02 00 00       	call   40000e10 <strnlen>
40000b9a:	29 44 24 18          	sub    %eax,0x18(%esp)
40000b9e:	8b 4c 24 18          	mov    0x18(%esp),%ecx
40000ba2:	83 c4 10             	add    $0x10,%esp
40000ba5:	8b 54 24 1c          	mov    0x1c(%esp),%edx
40000ba9:	85 c9                	test   %ecx,%ecx
40000bab:	0f 8e 99 00 00 00    	jle    40000c4a <.L19+0x129>
40000bb1:	0f be 5c 24 10       	movsbl 0x10(%esp),%ebx
40000bb6:	89 54 24 10          	mov    %edx,0x10(%esp)
40000bba:	89 6c 24 48          	mov    %ebp,0x48(%esp)
40000bbe:	8b 6c 24 08          	mov    0x8(%esp),%ebp
40000bc2:	83 ec 08             	sub    $0x8,%esp
40000bc5:	57                   	push   %edi
40000bc6:	53                   	push   %ebx
40000bc7:	ff d6                	call   *%esi
40000bc9:	83 c4 10             	add    $0x10,%esp
40000bcc:	83 ed 01             	sub    $0x1,%ebp
40000bcf:	75 f1                	jne    40000bc2 <.L19+0xa1>
40000bd1:	8b 44 24 18          	mov    0x18(%esp),%eax
40000bd5:	8b 54 24 10          	mov    0x10(%esp),%edx
40000bd9:	89 6c 24 08          	mov    %ebp,0x8(%esp)
40000bdd:	8b 6c 24 48          	mov    0x48(%esp),%ebp
40000be1:	8d 58 01             	lea    0x1(%eax),%ebx
40000be4:	0f be 00             	movsbl (%eax),%eax
40000be7:	0f be c8             	movsbl %al,%ecx
40000bea:	85 c9                	test   %ecx,%ecx
40000bec:	0f 85 59 fe ff ff    	jne    40000a4b <.L25+0x4e>
40000bf2:	e9 d9 fe ff ff       	jmp    40000ad0 <.L25+0xd3>
40000bf7:	83 ec 08             	sub    $0x8,%esp
40000bfa:	52                   	push   %edx
40000bfb:	8b 5c 24 18          	mov    0x18(%esp),%ebx
40000bff:	8d 8b f9 d5 ff ff    	lea    -0x2a07(%ebx),%ecx
40000c05:	89 54 24 28          	mov    %edx,0x28(%esp)
40000c09:	51                   	push   %ecx
40000c0a:	89 4c 24 28          	mov    %ecx,0x28(%esp)
40000c0e:	e8 fd 01 00 00       	call   40000e10 <strnlen>
40000c13:	29 44 24 18          	sub    %eax,0x18(%esp)
40000c17:	8b 44 24 18          	mov    0x18(%esp),%eax
40000c1b:	83 c4 10             	add    $0x10,%esp
40000c1e:	8b 54 24 1c          	mov    0x1c(%esp),%edx
40000c22:	85 c0                	test   %eax,%eax
40000c24:	7f 8b                	jg     40000bb1 <.L19+0x90>
40000c26:	b9 28 00 00 00       	mov    $0x28,%ecx
40000c2b:	b8 28 00 00 00       	mov    $0x28,%eax
40000c30:	8b 5c 24 18          	mov    0x18(%esp),%ebx
40000c34:	89 74 24 40          	mov    %esi,0x40(%esp)
40000c38:	89 d6                	mov    %edx,%esi
40000c3a:	89 6c 24 48          	mov    %ebp,0x48(%esp)
40000c3e:	8b 6c 24 08          	mov    0x8(%esp),%ebp
40000c42:	83 c3 01             	add    $0x1,%ebx
40000c45:	e9 3b fe ff ff       	jmp    40000a85 <.L25+0x88>
40000c4a:	8b 44 24 18          	mov    0x18(%esp),%eax
40000c4e:	0f be 08             	movsbl (%eax),%ecx
40000c51:	89 c8                	mov    %ecx,%eax
40000c53:	85 c9                	test   %ecx,%ecx
40000c55:	75 d9                	jne    40000c30 <.L19+0x10f>
40000c57:	e9 74 fe ff ff       	jmp    40000ad0 <.L25+0xd3>
40000c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

40000c60 <printfmt>:
40000c60:	83 ec 0c             	sub    $0xc,%esp
40000c63:	8d 44 24 1c          	lea    0x1c(%esp),%eax
40000c67:	50                   	push   %eax
40000c68:	ff 74 24 1c          	push   0x1c(%esp)
40000c6c:	ff 74 24 1c          	push   0x1c(%esp)
40000c70:	ff 74 24 1c          	push   0x1c(%esp)
40000c74:	e8 d7 fa ff ff       	call   40000750 <vprintfmt>
40000c79:	83 c4 1c             	add    $0x1c,%esp
40000c7c:	c3                   	ret
40000c7d:	8d 76 00             	lea    0x0(%esi),%esi

40000c80 <vsprintf>:
40000c80:	e8 4e 01 00 00       	call   40000dd3 <__x86.get_pc_thunk.ax>
40000c85:	05 6f 33 00 00       	add    $0x336f,%eax
40000c8a:	83 ec 1c             	sub    $0x1c,%esp
40000c8d:	8b 54 24 20          	mov    0x20(%esp),%edx
40000c91:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
40000c98:	ff 
40000c99:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
40000ca0:	00 
40000ca1:	89 54 24 04          	mov    %edx,0x4(%esp)
40000ca5:	ff 74 24 28          	push   0x28(%esp)
40000ca9:	ff 74 24 28          	push   0x28(%esp)
40000cad:	8d 80 3c c7 ff ff    	lea    -0x38c4(%eax),%eax
40000cb3:	8d 54 24 0c          	lea    0xc(%esp),%edx
40000cb7:	52                   	push   %edx
40000cb8:	50                   	push   %eax
40000cb9:	e8 92 fa ff ff       	call   40000750 <vprintfmt>
40000cbe:	8b 44 24 14          	mov    0x14(%esp),%eax
40000cc2:	c6 00 00             	movb   $0x0,(%eax)
40000cc5:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000cc9:	83 c4 2c             	add    $0x2c,%esp
40000ccc:	c3                   	ret
40000ccd:	8d 76 00             	lea    0x0(%esi),%esi

40000cd0 <sprintf>:
40000cd0:	e8 fe 00 00 00       	call   40000dd3 <__x86.get_pc_thunk.ax>
40000cd5:	05 1f 33 00 00       	add    $0x331f,%eax
40000cda:	83 ec 1c             	sub    $0x1c,%esp
40000cdd:	8b 54 24 20          	mov    0x20(%esp),%edx
40000ce1:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
40000ce8:	ff 
40000ce9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
40000cf0:	00 
40000cf1:	89 54 24 04          	mov    %edx,0x4(%esp)
40000cf5:	8d 54 24 28          	lea    0x28(%esp),%edx
40000cf9:	52                   	push   %edx
40000cfa:	ff 74 24 28          	push   0x28(%esp)
40000cfe:	8d 80 3c c7 ff ff    	lea    -0x38c4(%eax),%eax
40000d04:	8d 54 24 0c          	lea    0xc(%esp),%edx
40000d08:	52                   	push   %edx
40000d09:	50                   	push   %eax
40000d0a:	e8 41 fa ff ff       	call   40000750 <vprintfmt>
40000d0f:	8b 44 24 14          	mov    0x14(%esp),%eax
40000d13:	c6 00 00             	movb   $0x0,(%eax)
40000d16:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000d1a:	83 c4 2c             	add    $0x2c,%esp
40000d1d:	c3                   	ret
40000d1e:	66 90                	xchg   %ax,%ax

40000d20 <vsnprintf>:
40000d20:	e8 b2 00 00 00       	call   40000dd7 <__x86.get_pc_thunk.dx>
40000d25:	81 c2 cf 32 00 00    	add    $0x32cf,%edx
40000d2b:	83 ec 1c             	sub    $0x1c,%esp
40000d2e:	8b 44 24 20          	mov    0x20(%esp),%eax
40000d32:	8b 4c 24 24          	mov    0x24(%esp),%ecx
40000d36:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
40000d3d:	00 
40000d3e:	89 44 24 04          	mov    %eax,0x4(%esp)
40000d42:	8d 44 08 ff          	lea    -0x1(%eax,%ecx,1),%eax
40000d46:	89 44 24 08          	mov    %eax,0x8(%esp)
40000d4a:	ff 74 24 2c          	push   0x2c(%esp)
40000d4e:	ff 74 24 2c          	push   0x2c(%esp)
40000d52:	8d 44 24 0c          	lea    0xc(%esp),%eax
40000d56:	50                   	push   %eax
40000d57:	8d 82 3c c7 ff ff    	lea    -0x38c4(%edx),%eax
40000d5d:	50                   	push   %eax
40000d5e:	e8 ed f9 ff ff       	call   40000750 <vprintfmt>
40000d63:	8b 44 24 14          	mov    0x14(%esp),%eax
40000d67:	c6 00 00             	movb   $0x0,(%eax)
40000d6a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000d6e:	83 c4 2c             	add    $0x2c,%esp
40000d71:	c3                   	ret
40000d72:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000d79:	00 
40000d7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

40000d80 <snprintf>:
40000d80:	e8 52 00 00 00       	call   40000dd7 <__x86.get_pc_thunk.dx>
40000d85:	81 c2 6f 32 00 00    	add    $0x326f,%edx
40000d8b:	83 ec 1c             	sub    $0x1c,%esp
40000d8e:	8b 44 24 20          	mov    0x20(%esp),%eax
40000d92:	8b 4c 24 24          	mov    0x24(%esp),%ecx
40000d96:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
40000d9d:	00 
40000d9e:	89 44 24 04          	mov    %eax,0x4(%esp)
40000da2:	8d 44 08 ff          	lea    -0x1(%eax,%ecx,1),%eax
40000da6:	89 44 24 08          	mov    %eax,0x8(%esp)
40000daa:	8d 44 24 2c          	lea    0x2c(%esp),%eax
40000dae:	50                   	push   %eax
40000daf:	ff 74 24 2c          	push   0x2c(%esp)
40000db3:	8d 44 24 0c          	lea    0xc(%esp),%eax
40000db7:	50                   	push   %eax
40000db8:	8d 82 3c c7 ff ff    	lea    -0x38c4(%edx),%eax
40000dbe:	50                   	push   %eax
40000dbf:	e8 8c f9 ff ff       	call   40000750 <vprintfmt>
40000dc4:	8b 44 24 14          	mov    0x14(%esp),%eax
40000dc8:	c6 00 00             	movb   $0x0,(%eax)
40000dcb:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000dcf:	83 c4 2c             	add    $0x2c,%esp
40000dd2:	c3                   	ret

40000dd3 <__x86.get_pc_thunk.ax>:
40000dd3:	8b 04 24             	mov    (%esp),%eax
40000dd6:	c3                   	ret

40000dd7 <__x86.get_pc_thunk.dx>:
40000dd7:	8b 14 24             	mov    (%esp),%edx
40000dda:	c3                   	ret

40000ddb <__x86.get_pc_thunk.cx>:
40000ddb:	8b 0c 24             	mov    (%esp),%ecx
40000dde:	c3                   	ret
40000ddf:	90                   	nop

40000de0 <strlen>:
40000de0:	8b 54 24 04          	mov    0x4(%esp),%edx
40000de4:	31 c0                	xor    %eax,%eax
40000de6:	80 3a 00             	cmpb   $0x0,(%edx)
40000de9:	74 15                	je     40000e00 <strlen+0x20>
40000deb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000df0:	83 c0 01             	add    $0x1,%eax
40000df3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
40000df7:	75 f7                	jne    40000df0 <strlen+0x10>
40000df9:	c3                   	ret
40000dfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000e00:	c3                   	ret
40000e01:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e08:	00 
40000e09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

40000e10 <strnlen>:
40000e10:	8b 54 24 08          	mov    0x8(%esp),%edx
40000e14:	8b 4c 24 04          	mov    0x4(%esp),%ecx
40000e18:	31 c0                	xor    %eax,%eax
40000e1a:	85 d2                	test   %edx,%edx
40000e1c:	75 09                	jne    40000e27 <strnlen+0x17>
40000e1e:	c3                   	ret
40000e1f:	90                   	nop
40000e20:	83 c0 01             	add    $0x1,%eax
40000e23:	39 c2                	cmp    %eax,%edx
40000e25:	74 09                	je     40000e30 <strnlen+0x20>
40000e27:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
40000e2b:	75 f3                	jne    40000e20 <strnlen+0x10>
40000e2d:	c3                   	ret
40000e2e:	66 90                	xchg   %ax,%ax
40000e30:	c3                   	ret
40000e31:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e38:	00 
40000e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

40000e40 <strcpy>:
40000e40:	53                   	push   %ebx
40000e41:	8b 4c 24 08          	mov    0x8(%esp),%ecx
40000e45:	31 c0                	xor    %eax,%eax
40000e47:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
40000e4b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e50:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
40000e54:	88 14 01             	mov    %dl,(%ecx,%eax,1)
40000e57:	83 c0 01             	add    $0x1,%eax
40000e5a:	84 d2                	test   %dl,%dl
40000e5c:	75 f2                	jne    40000e50 <strcpy+0x10>
40000e5e:	89 c8                	mov    %ecx,%eax
40000e60:	5b                   	pop    %ebx
40000e61:	c3                   	ret
40000e62:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e69:	00 
40000e6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

40000e70 <strncpy>:
40000e70:	56                   	push   %esi
40000e71:	53                   	push   %ebx
40000e72:	8b 5c 24 14          	mov    0x14(%esp),%ebx
40000e76:	8b 74 24 0c          	mov    0xc(%esp),%esi
40000e7a:	8b 54 24 10          	mov    0x10(%esp),%edx
40000e7e:	85 db                	test   %ebx,%ebx
40000e80:	74 21                	je     40000ea3 <strncpy+0x33>
40000e82:	01 f3                	add    %esi,%ebx
40000e84:	89 f0                	mov    %esi,%eax
40000e86:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e8d:	00 
40000e8e:	66 90                	xchg   %ax,%ax
40000e90:	0f b6 0a             	movzbl (%edx),%ecx
40000e93:	83 c0 01             	add    $0x1,%eax
40000e96:	80 f9 01             	cmp    $0x1,%cl
40000e99:	88 48 ff             	mov    %cl,-0x1(%eax)
40000e9c:	83 da ff             	sbb    $0xffffffff,%edx
40000e9f:	39 c3                	cmp    %eax,%ebx
40000ea1:	75 ed                	jne    40000e90 <strncpy+0x20>
40000ea3:	89 f0                	mov    %esi,%eax
40000ea5:	5b                   	pop    %ebx
40000ea6:	5e                   	pop    %esi
40000ea7:	c3                   	ret
40000ea8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000eaf:	00 

40000eb0 <strlcpy>:
40000eb0:	56                   	push   %esi
40000eb1:	53                   	push   %ebx
40000eb2:	8b 44 24 14          	mov    0x14(%esp),%eax
40000eb6:	8b 74 24 0c          	mov    0xc(%esp),%esi
40000eba:	8b 4c 24 10          	mov    0x10(%esp),%ecx
40000ebe:	85 c0                	test   %eax,%eax
40000ec0:	74 29                	je     40000eeb <strlcpy+0x3b>
40000ec2:	89 f2                	mov    %esi,%edx
40000ec4:	83 e8 01             	sub    $0x1,%eax
40000ec7:	74 1f                	je     40000ee8 <strlcpy+0x38>
40000ec9:	8d 1c 06             	lea    (%esi,%eax,1),%ebx
40000ecc:	eb 0f                	jmp    40000edd <strlcpy+0x2d>
40000ece:	66 90                	xchg   %ax,%ax
40000ed0:	83 c2 01             	add    $0x1,%edx
40000ed3:	83 c1 01             	add    $0x1,%ecx
40000ed6:	88 42 ff             	mov    %al,-0x1(%edx)
40000ed9:	39 da                	cmp    %ebx,%edx
40000edb:	74 07                	je     40000ee4 <strlcpy+0x34>
40000edd:	0f b6 01             	movzbl (%ecx),%eax
40000ee0:	84 c0                	test   %al,%al
40000ee2:	75 ec                	jne    40000ed0 <strlcpy+0x20>
40000ee4:	89 d0                	mov    %edx,%eax
40000ee6:	29 f0                	sub    %esi,%eax
40000ee8:	c6 02 00             	movb   $0x0,(%edx)
40000eeb:	5b                   	pop    %ebx
40000eec:	5e                   	pop    %esi
40000eed:	c3                   	ret
40000eee:	66 90                	xchg   %ax,%ax

40000ef0 <strcmp>:
40000ef0:	53                   	push   %ebx
40000ef1:	8b 54 24 08          	mov    0x8(%esp),%edx
40000ef5:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
40000ef9:	0f b6 02             	movzbl (%edx),%eax
40000efc:	84 c0                	test   %al,%al
40000efe:	75 18                	jne    40000f18 <strcmp+0x28>
40000f00:	eb 30                	jmp    40000f32 <strcmp+0x42>
40000f02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000f08:	0f b6 42 01          	movzbl 0x1(%edx),%eax
40000f0c:	83 c2 01             	add    $0x1,%edx
40000f0f:	8d 59 01             	lea    0x1(%ecx),%ebx
40000f12:	84 c0                	test   %al,%al
40000f14:	74 12                	je     40000f28 <strcmp+0x38>
40000f16:	89 d9                	mov    %ebx,%ecx
40000f18:	0f b6 19             	movzbl (%ecx),%ebx
40000f1b:	38 c3                	cmp    %al,%bl
40000f1d:	74 e9                	je     40000f08 <strcmp+0x18>
40000f1f:	29 d8                	sub    %ebx,%eax
40000f21:	5b                   	pop    %ebx
40000f22:	c3                   	ret
40000f23:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000f28:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
40000f2c:	31 c0                	xor    %eax,%eax
40000f2e:	29 d8                	sub    %ebx,%eax
40000f30:	5b                   	pop    %ebx
40000f31:	c3                   	ret
40000f32:	0f b6 19             	movzbl (%ecx),%ebx
40000f35:	31 c0                	xor    %eax,%eax
40000f37:	eb e6                	jmp    40000f1f <strcmp+0x2f>
40000f39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

40000f40 <strncmp>:
40000f40:	53                   	push   %ebx
40000f41:	8b 54 24 10          	mov    0x10(%esp),%edx
40000f45:	8b 44 24 08          	mov    0x8(%esp),%eax
40000f49:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
40000f4d:	85 d2                	test   %edx,%edx
40000f4f:	75 16                	jne    40000f67 <strncmp+0x27>
40000f51:	eb 2d                	jmp    40000f80 <strncmp+0x40>
40000f53:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000f58:	3a 19                	cmp    (%ecx),%bl
40000f5a:	75 12                	jne    40000f6e <strncmp+0x2e>
40000f5c:	83 c0 01             	add    $0x1,%eax
40000f5f:	83 c1 01             	add    $0x1,%ecx
40000f62:	83 ea 01             	sub    $0x1,%edx
40000f65:	74 19                	je     40000f80 <strncmp+0x40>
40000f67:	0f b6 18             	movzbl (%eax),%ebx
40000f6a:	84 db                	test   %bl,%bl
40000f6c:	75 ea                	jne    40000f58 <strncmp+0x18>
40000f6e:	0f b6 00             	movzbl (%eax),%eax
40000f71:	0f b6 11             	movzbl (%ecx),%edx
40000f74:	5b                   	pop    %ebx
40000f75:	29 d0                	sub    %edx,%eax
40000f77:	c3                   	ret
40000f78:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000f7f:	00 
40000f80:	31 c0                	xor    %eax,%eax
40000f82:	5b                   	pop    %ebx
40000f83:	c3                   	ret
40000f84:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000f8b:	00 
40000f8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

40000f90 <strchr>:
40000f90:	8b 44 24 04          	mov    0x4(%esp),%eax
40000f94:	0f b6 4c 24 08       	movzbl 0x8(%esp),%ecx
40000f99:	0f b6 10             	movzbl (%eax),%edx
40000f9c:	84 d2                	test   %dl,%dl
40000f9e:	75 13                	jne    40000fb3 <strchr+0x23>
40000fa0:	eb 1e                	jmp    40000fc0 <strchr+0x30>
40000fa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000fa8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
40000fac:	83 c0 01             	add    $0x1,%eax
40000faf:	84 d2                	test   %dl,%dl
40000fb1:	74 0d                	je     40000fc0 <strchr+0x30>
40000fb3:	38 d1                	cmp    %dl,%cl
40000fb5:	75 f1                	jne    40000fa8 <strchr+0x18>
40000fb7:	c3                   	ret
40000fb8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000fbf:	00 
40000fc0:	31 c0                	xor    %eax,%eax
40000fc2:	c3                   	ret
40000fc3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000fca:	00 
40000fcb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40000fd0 <strfind>:
40000fd0:	53                   	push   %ebx
40000fd1:	8b 44 24 08          	mov    0x8(%esp),%eax
40000fd5:	8b 54 24 0c          	mov    0xc(%esp),%edx
40000fd9:	0f b6 18             	movzbl (%eax),%ebx
40000fdc:	38 d3                	cmp    %dl,%bl
40000fde:	74 1f                	je     40000fff <strfind+0x2f>
40000fe0:	89 d1                	mov    %edx,%ecx
40000fe2:	84 db                	test   %bl,%bl
40000fe4:	75 0e                	jne    40000ff4 <strfind+0x24>
40000fe6:	eb 17                	jmp    40000fff <strfind+0x2f>
40000fe8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000fef:	00 
40000ff0:	84 d2                	test   %dl,%dl
40000ff2:	74 0b                	je     40000fff <strfind+0x2f>
40000ff4:	0f b6 50 01          	movzbl 0x1(%eax),%edx
40000ff8:	83 c0 01             	add    $0x1,%eax
40000ffb:	38 ca                	cmp    %cl,%dl
40000ffd:	75 f1                	jne    40000ff0 <strfind+0x20>
40000fff:	5b                   	pop    %ebx
40001000:	c3                   	ret
40001001:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40001008:	00 
40001009:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

40001010 <strtol>:
40001010:	55                   	push   %ebp
40001011:	57                   	push   %edi
40001012:	56                   	push   %esi
40001013:	53                   	push   %ebx
40001014:	8b 54 24 14          	mov    0x14(%esp),%edx
40001018:	8b 74 24 18          	mov    0x18(%esp),%esi
4000101c:	0f b6 02             	movzbl (%edx),%eax
4000101f:	3c 20                	cmp    $0x20,%al
40001021:	75 10                	jne    40001033 <strtol+0x23>
40001023:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40001028:	0f b6 42 01          	movzbl 0x1(%edx),%eax
4000102c:	83 c2 01             	add    $0x1,%edx
4000102f:	3c 20                	cmp    $0x20,%al
40001031:	74 f5                	je     40001028 <strtol+0x18>
40001033:	3c 09                	cmp    $0x9,%al
40001035:	74 f1                	je     40001028 <strtol+0x18>
40001037:	3c 2b                	cmp    $0x2b,%al
40001039:	0f 84 b1 00 00 00    	je     400010f0 <strtol+0xe0>
4000103f:	31 ff                	xor    %edi,%edi
40001041:	3c 2d                	cmp    $0x2d,%al
40001043:	0f 84 97 00 00 00    	je     400010e0 <strtol+0xd0>
40001049:	0f b6 02             	movzbl (%edx),%eax
4000104c:	f7 44 24 1c ef ff ff 	testl  $0xffffffef,0x1c(%esp)
40001053:	ff 
40001054:	75 1d                	jne    40001073 <strtol+0x63>
40001056:	3c 30                	cmp    $0x30,%al
40001058:	0f 84 a2 00 00 00    	je     40001100 <strtol+0xf0>
4000105e:	83 7c 24 1c 01       	cmpl   $0x1,0x1c(%esp)
40001063:	19 c0                	sbb    %eax,%eax
40001065:	89 44 24 1c          	mov    %eax,0x1c(%esp)
40001069:	83 64 24 1c fa       	andl   $0xfffffffa,0x1c(%esp)
4000106e:	83 44 24 1c 10       	addl   $0x10,0x1c(%esp)
40001073:	31 c9                	xor    %ecx,%ecx
40001075:	eb 1c                	jmp    40001093 <strtol+0x83>
40001077:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000107e:	00 
4000107f:	90                   	nop
40001080:	83 e8 30             	sub    $0x30,%eax
40001083:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
40001087:	7d 2a                	jge    400010b3 <strtol+0xa3>
40001089:	0f af 4c 24 1c       	imul   0x1c(%esp),%ecx
4000108e:	83 c2 01             	add    $0x1,%edx
40001091:	01 c1                	add    %eax,%ecx
40001093:	0f be 02             	movsbl (%edx),%eax
40001096:	8d 68 d0             	lea    -0x30(%eax),%ebp
40001099:	89 eb                	mov    %ebp,%ebx
4000109b:	80 fb 09             	cmp    $0x9,%bl
4000109e:	76 e0                	jbe    40001080 <strtol+0x70>
400010a0:	8d 68 9f             	lea    -0x61(%eax),%ebp
400010a3:	89 eb                	mov    %ebp,%ebx
400010a5:	80 fb 19             	cmp    $0x19,%bl
400010a8:	77 26                	ja     400010d0 <strtol+0xc0>
400010aa:	83 e8 57             	sub    $0x57,%eax
400010ad:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
400010b1:	7c d6                	jl     40001089 <strtol+0x79>
400010b3:	85 f6                	test   %esi,%esi
400010b5:	74 02                	je     400010b9 <strtol+0xa9>
400010b7:	89 16                	mov    %edx,(%esi)
400010b9:	89 c8                	mov    %ecx,%eax
400010bb:	5b                   	pop    %ebx
400010bc:	5e                   	pop    %esi
400010bd:	f7 d8                	neg    %eax
400010bf:	85 ff                	test   %edi,%edi
400010c1:	5f                   	pop    %edi
400010c2:	5d                   	pop    %ebp
400010c3:	0f 45 c8             	cmovne %eax,%ecx
400010c6:	89 c8                	mov    %ecx,%eax
400010c8:	c3                   	ret
400010c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
400010d0:	8d 68 bf             	lea    -0x41(%eax),%ebp
400010d3:	89 eb                	mov    %ebp,%ebx
400010d5:	80 fb 19             	cmp    $0x19,%bl
400010d8:	77 d9                	ja     400010b3 <strtol+0xa3>
400010da:	83 e8 37             	sub    $0x37,%eax
400010dd:	eb a4                	jmp    40001083 <strtol+0x73>
400010df:	90                   	nop
400010e0:	83 c2 01             	add    $0x1,%edx
400010e3:	bf 01 00 00 00       	mov    $0x1,%edi
400010e8:	e9 5c ff ff ff       	jmp    40001049 <strtol+0x39>
400010ed:	8d 76 00             	lea    0x0(%esi),%esi
400010f0:	83 c2 01             	add    $0x1,%edx
400010f3:	31 ff                	xor    %edi,%edi
400010f5:	e9 4f ff ff ff       	jmp    40001049 <strtol+0x39>
400010fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40001100:	80 7a 01 78          	cmpb   $0x78,0x1(%edx)
40001104:	74 25                	je     4000112b <strtol+0x11b>
40001106:	8b 44 24 1c          	mov    0x1c(%esp),%eax
4000110a:	85 c0                	test   %eax,%eax
4000110c:	74 0d                	je     4000111b <strtol+0x10b>
4000110e:	c7 44 24 1c 10 00 00 	movl   $0x10,0x1c(%esp)
40001115:	00 
40001116:	e9 58 ff ff ff       	jmp    40001073 <strtol+0x63>
4000111b:	c7 44 24 1c 08 00 00 	movl   $0x8,0x1c(%esp)
40001122:	00 
40001123:	83 c2 01             	add    $0x1,%edx
40001126:	e9 48 ff ff ff       	jmp    40001073 <strtol+0x63>
4000112b:	c7 44 24 1c 10 00 00 	movl   $0x10,0x1c(%esp)
40001132:	00 
40001133:	83 c2 02             	add    $0x2,%edx
40001136:	e9 38 ff ff ff       	jmp    40001073 <strtol+0x63>
4000113b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40001140 <memset>:
40001140:	57                   	push   %edi
40001141:	8b 4c 24 10          	mov    0x10(%esp),%ecx
40001145:	8b 7c 24 08          	mov    0x8(%esp),%edi
40001149:	85 c9                	test   %ecx,%ecx
4000114b:	74 19                	je     40001166 <memset+0x26>
4000114d:	89 f8                	mov    %edi,%eax
4000114f:	09 c8                	or     %ecx,%eax
40001151:	a8 03                	test   $0x3,%al
40001153:	75 1b                	jne    40001170 <memset+0x30>
40001155:	0f b6 44 24 0c       	movzbl 0xc(%esp),%eax
4000115a:	c1 e9 02             	shr    $0x2,%ecx
4000115d:	69 c0 01 01 01 01    	imul   $0x1010101,%eax,%eax
40001163:	fc                   	cld
40001164:	f3 ab                	rep stos %eax,%es:(%edi)
40001166:	89 f8                	mov    %edi,%eax
40001168:	5f                   	pop    %edi
40001169:	c3                   	ret
4000116a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40001170:	8b 44 24 0c          	mov    0xc(%esp),%eax
40001174:	fc                   	cld
40001175:	f3 aa                	rep stos %al,%es:(%edi)
40001177:	89 f8                	mov    %edi,%eax
40001179:	5f                   	pop    %edi
4000117a:	c3                   	ret
4000117b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40001180 <memmove>:
40001180:	57                   	push   %edi
40001181:	56                   	push   %esi
40001182:	8b 44 24 0c          	mov    0xc(%esp),%eax
40001186:	8b 74 24 10          	mov    0x10(%esp),%esi
4000118a:	8b 4c 24 14          	mov    0x14(%esp),%ecx
4000118e:	39 c6                	cmp    %eax,%esi
40001190:	73 26                	jae    400011b8 <memmove+0x38>
40001192:	8d 14 0e             	lea    (%esi,%ecx,1),%edx
40001195:	39 d0                	cmp    %edx,%eax
40001197:	73 1f                	jae    400011b8 <memmove+0x38>
40001199:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
4000119c:	89 fe                	mov    %edi,%esi
4000119e:	09 ce                	or     %ecx,%esi
400011a0:	09 d6                	or     %edx,%esi
400011a2:	83 e6 03             	and    $0x3,%esi
400011a5:	74 39                	je     400011e0 <memmove+0x60>
400011a7:	83 ef 01             	sub    $0x1,%edi
400011aa:	8d 72 ff             	lea    -0x1(%edx),%esi
400011ad:	fd                   	std
400011ae:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
400011b0:	fc                   	cld
400011b1:	5e                   	pop    %esi
400011b2:	5f                   	pop    %edi
400011b3:	c3                   	ret
400011b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
400011b8:	89 c2                	mov    %eax,%edx
400011ba:	09 ca                	or     %ecx,%edx
400011bc:	09 f2                	or     %esi,%edx
400011be:	83 e2 03             	and    $0x3,%edx
400011c1:	74 0d                	je     400011d0 <memmove+0x50>
400011c3:	89 c7                	mov    %eax,%edi
400011c5:	fc                   	cld
400011c6:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
400011c8:	5e                   	pop    %esi
400011c9:	5f                   	pop    %edi
400011ca:	c3                   	ret
400011cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
400011d0:	c1 e9 02             	shr    $0x2,%ecx
400011d3:	89 c7                	mov    %eax,%edi
400011d5:	fc                   	cld
400011d6:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
400011d8:	eb ee                	jmp    400011c8 <memmove+0x48>
400011da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
400011e0:	83 ef 04             	sub    $0x4,%edi
400011e3:	8d 72 fc             	lea    -0x4(%edx),%esi
400011e6:	c1 e9 02             	shr    $0x2,%ecx
400011e9:	fd                   	std
400011ea:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
400011ec:	eb c2                	jmp    400011b0 <memmove+0x30>
400011ee:	66 90                	xchg   %ax,%ax

400011f0 <memcpy>:
400011f0:	eb 8e                	jmp    40001180 <memmove>
400011f2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400011f9:	00 
400011fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

40001200 <memcmp>:
40001200:	56                   	push   %esi
40001201:	53                   	push   %ebx
40001202:	8b 74 24 14          	mov    0x14(%esp),%esi
40001206:	8b 44 24 0c          	mov    0xc(%esp),%eax
4000120a:	8b 54 24 10          	mov    0x10(%esp),%edx
4000120e:	85 f6                	test   %esi,%esi
40001210:	74 2e                	je     40001240 <memcmp+0x40>
40001212:	01 c6                	add    %eax,%esi
40001214:	eb 14                	jmp    4000122a <memcmp+0x2a>
40001216:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000121d:	00 
4000121e:	66 90                	xchg   %ax,%ax
40001220:	83 c0 01             	add    $0x1,%eax
40001223:	83 c2 01             	add    $0x1,%edx
40001226:	39 f0                	cmp    %esi,%eax
40001228:	74 16                	je     40001240 <memcmp+0x40>
4000122a:	0f b6 08             	movzbl (%eax),%ecx
4000122d:	0f b6 1a             	movzbl (%edx),%ebx
40001230:	38 d9                	cmp    %bl,%cl
40001232:	74 ec                	je     40001220 <memcmp+0x20>
40001234:	0f b6 c1             	movzbl %cl,%eax
40001237:	29 d8                	sub    %ebx,%eax
40001239:	5b                   	pop    %ebx
4000123a:	5e                   	pop    %esi
4000123b:	c3                   	ret
4000123c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
40001240:	31 c0                	xor    %eax,%eax
40001242:	5b                   	pop    %ebx
40001243:	5e                   	pop    %esi
40001244:	c3                   	ret
40001245:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000124c:	00 
4000124d:	8d 76 00             	lea    0x0(%esi),%esi

40001250 <memchr>:
40001250:	8b 44 24 04          	mov    0x4(%esp),%eax
40001254:	8b 54 24 0c          	mov    0xc(%esp),%edx
40001258:	01 c2                	add    %eax,%edx
4000125a:	39 d0                	cmp    %edx,%eax
4000125c:	73 1a                	jae    40001278 <memchr+0x28>
4000125e:	0f b6 4c 24 08       	movzbl 0x8(%esp),%ecx
40001263:	eb 0a                	jmp    4000126f <memchr+0x1f>
40001265:	8d 76 00             	lea    0x0(%esi),%esi
40001268:	83 c0 01             	add    $0x1,%eax
4000126b:	39 c2                	cmp    %eax,%edx
4000126d:	74 09                	je     40001278 <memchr+0x28>
4000126f:	38 08                	cmp    %cl,(%eax)
40001271:	75 f5                	jne    40001268 <memchr+0x18>
40001273:	c3                   	ret
40001274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
40001278:	31 c0                	xor    %eax,%eax
4000127a:	c3                   	ret
4000127b:	66 90                	xchg   %ax,%ax
4000127d:	66 90                	xchg   %ax,%ax
4000127f:	90                   	nop

40001280 <init>:
40001280:	e8 4e fb ff ff       	call   40000dd3 <__x86.get_pc_thunk.ax>
40001285:	05 6f 2d 00 00       	add    $0x2d6f,%eax
4000128a:	8b 15 00 00 00 e0    	mov    0xe0000000,%edx
40001290:	89 90 10 04 00 00    	mov    %edx,0x410(%eax)
40001296:	8b 15 04 00 00 e0    	mov    0xe0000004,%edx
4000129c:	89 90 0c 04 00 00    	mov    %edx,0x40c(%eax)
400012a2:	c3                   	ret
400012a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400012aa:	00 
400012ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

400012b0 <yield>:
400012b0:	c3                   	ret
400012b1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400012b8:	00 
400012b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

400012c0 <sys_getc>:
400012c0:	e8 0e fb ff ff       	call   40000dd3 <__x86.get_pc_thunk.ax>
400012c5:	05 2f 2d 00 00       	add    $0x2d2f,%eax
400012ca:	83 ec 0c             	sub    $0xc,%esp
400012cd:	ff 90 0c 04 00 00    	call   *0x40c(%eax)
400012d3:	83 c4 0c             	add    $0xc,%esp
400012d6:	0f be c0             	movsbl %al,%eax
400012d9:	c3                   	ret
400012da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

400012e0 <sys_puts>:
400012e0:	55                   	push   %ebp
400012e1:	b8 ff 03 00 00       	mov    $0x3ff,%eax
400012e6:	57                   	push   %edi
400012e7:	56                   	push   %esi
400012e8:	53                   	push   %ebx
400012e9:	e8 09 f1 ff ff       	call   400003f7 <__x86.get_pc_thunk.bx>
400012ee:	81 c3 06 2d 00 00    	add    $0x2d06,%ebx
400012f4:	83 ec 10             	sub    $0x10,%esp
400012f7:	8b 74 24 28          	mov    0x28(%esp),%esi
400012fb:	8b 7c 24 24          	mov    0x24(%esp),%edi
400012ff:	39 c6                	cmp    %eax,%esi
40001301:	0f 47 f0             	cmova  %eax,%esi
40001304:	8d ab 0c 00 00 00    	lea    0xc(%ebx),%ebp
4000130a:	56                   	push   %esi
4000130b:	57                   	push   %edi
4000130c:	55                   	push   %ebp
4000130d:	e8 5e fb ff ff       	call   40000e70 <strncpy>
40001312:	8d 83 00 d6 ff ff    	lea    -0x2a00(%ebx),%eax
40001318:	89 7c 24 34          	mov    %edi,0x34(%esp)
4000131c:	c6 84 33 0c 00 00 00 	movb   $0x0,0xc(%ebx,%esi,1)
40001323:	00 
40001324:	89 44 24 30          	mov    %eax,0x30(%esp)
40001328:	8b 83 10 04 00 00    	mov    0x410(%ebx),%eax
4000132e:	83 c4 1c             	add    $0x1c,%esp
40001331:	5b                   	pop    %ebx
40001332:	5e                   	pop    %esi
40001333:	5f                   	pop    %edi
40001334:	5d                   	pop    %ebp
40001335:	ff e0                	jmp    *%eax
40001337:	66 90                	xchg   %ax,%ax
40001339:	66 90                	xchg   %ax,%ax
4000133b:	66 90                	xchg   %ax,%ax
4000133d:	66 90                	xchg   %ax,%ax
4000133f:	90                   	nop

40001340 <__udivdi3>:
40001340:	f3 0f 1e fb          	endbr32
40001344:	55                   	push   %ebp
40001345:	89 e5                	mov    %esp,%ebp
40001347:	57                   	push   %edi
40001348:	56                   	push   %esi
40001349:	53                   	push   %ebx
4000134a:	83 ec 1c             	sub    $0x1c,%esp
4000134d:	8b 7d 08             	mov    0x8(%ebp),%edi
40001350:	8b 45 14             	mov    0x14(%ebp),%eax
40001353:	8b 75 0c             	mov    0xc(%ebp),%esi
40001356:	8b 5d 10             	mov    0x10(%ebp),%ebx
40001359:	89 7d e4             	mov    %edi,-0x1c(%ebp)
4000135c:	85 c0                	test   %eax,%eax
4000135e:	75 20                	jne    40001380 <__udivdi3+0x40>
40001360:	39 de                	cmp    %ebx,%esi
40001362:	73 54                	jae    400013b8 <__udivdi3+0x78>
40001364:	89 f8                	mov    %edi,%eax
40001366:	31 ff                	xor    %edi,%edi
40001368:	89 f2                	mov    %esi,%edx
4000136a:	f7 f3                	div    %ebx
4000136c:	89 fa                	mov    %edi,%edx
4000136e:	83 c4 1c             	add    $0x1c,%esp
40001371:	5b                   	pop    %ebx
40001372:	5e                   	pop    %esi
40001373:	5f                   	pop    %edi
40001374:	5d                   	pop    %ebp
40001375:	c3                   	ret
40001376:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000137d:	00 
4000137e:	66 90                	xchg   %ax,%ax
40001380:	39 c6                	cmp    %eax,%esi
40001382:	73 14                	jae    40001398 <__udivdi3+0x58>
40001384:	31 ff                	xor    %edi,%edi
40001386:	31 c0                	xor    %eax,%eax
40001388:	89 fa                	mov    %edi,%edx
4000138a:	83 c4 1c             	add    $0x1c,%esp
4000138d:	5b                   	pop    %ebx
4000138e:	5e                   	pop    %esi
4000138f:	5f                   	pop    %edi
40001390:	5d                   	pop    %ebp
40001391:	c3                   	ret
40001392:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40001398:	0f bd f8             	bsr    %eax,%edi
4000139b:	83 f7 1f             	xor    $0x1f,%edi
4000139e:	75 48                	jne    400013e8 <__udivdi3+0xa8>
400013a0:	39 f0                	cmp    %esi,%eax
400013a2:	72 07                	jb     400013ab <__udivdi3+0x6b>
400013a4:	31 c0                	xor    %eax,%eax
400013a6:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
400013a9:	72 dd                	jb     40001388 <__udivdi3+0x48>
400013ab:	b8 01 00 00 00       	mov    $0x1,%eax
400013b0:	eb d6                	jmp    40001388 <__udivdi3+0x48>
400013b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
400013b8:	89 d9                	mov    %ebx,%ecx
400013ba:	85 db                	test   %ebx,%ebx
400013bc:	75 0b                	jne    400013c9 <__udivdi3+0x89>
400013be:	b8 01 00 00 00       	mov    $0x1,%eax
400013c3:	31 d2                	xor    %edx,%edx
400013c5:	f7 f3                	div    %ebx
400013c7:	89 c1                	mov    %eax,%ecx
400013c9:	31 d2                	xor    %edx,%edx
400013cb:	89 f0                	mov    %esi,%eax
400013cd:	f7 f1                	div    %ecx
400013cf:	89 c6                	mov    %eax,%esi
400013d1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
400013d4:	89 f7                	mov    %esi,%edi
400013d6:	f7 f1                	div    %ecx
400013d8:	89 fa                	mov    %edi,%edx
400013da:	83 c4 1c             	add    $0x1c,%esp
400013dd:	5b                   	pop    %ebx
400013de:	5e                   	pop    %esi
400013df:	5f                   	pop    %edi
400013e0:	5d                   	pop    %ebp
400013e1:	c3                   	ret
400013e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
400013e8:	89 f9                	mov    %edi,%ecx
400013ea:	ba 20 00 00 00       	mov    $0x20,%edx
400013ef:	29 fa                	sub    %edi,%edx
400013f1:	d3 e0                	shl    %cl,%eax
400013f3:	89 45 e0             	mov    %eax,-0x20(%ebp)
400013f6:	89 d1                	mov    %edx,%ecx
400013f8:	89 d8                	mov    %ebx,%eax
400013fa:	d3 e8                	shr    %cl,%eax
400013fc:	89 c1                	mov    %eax,%ecx
400013fe:	8b 45 e0             	mov    -0x20(%ebp),%eax
40001401:	09 c1                	or     %eax,%ecx
40001403:	89 f0                	mov    %esi,%eax
40001405:	89 4d e0             	mov    %ecx,-0x20(%ebp)
40001408:	89 f9                	mov    %edi,%ecx
4000140a:	d3 e3                	shl    %cl,%ebx
4000140c:	89 d1                	mov    %edx,%ecx
4000140e:	d3 e8                	shr    %cl,%eax
40001410:	89 5d dc             	mov    %ebx,-0x24(%ebp)
40001413:	89 f9                	mov    %edi,%ecx
40001415:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
40001418:	d3 e6                	shl    %cl,%esi
4000141a:	89 d1                	mov    %edx,%ecx
4000141c:	d3 eb                	shr    %cl,%ebx
4000141e:	09 f3                	or     %esi,%ebx
40001420:	89 c6                	mov    %eax,%esi
40001422:	89 f2                	mov    %esi,%edx
40001424:	89 d8                	mov    %ebx,%eax
40001426:	f7 75 e0             	divl   -0x20(%ebp)
40001429:	89 d6                	mov    %edx,%esi
4000142b:	89 c3                	mov    %eax,%ebx
4000142d:	f7 65 dc             	mull   -0x24(%ebp)
40001430:	89 55 e0             	mov    %edx,-0x20(%ebp)
40001433:	39 d6                	cmp    %edx,%esi
40001435:	72 21                	jb     40001458 <__udivdi3+0x118>
40001437:	8b 55 e4             	mov    -0x1c(%ebp),%edx
4000143a:	89 f9                	mov    %edi,%ecx
4000143c:	d3 e2                	shl    %cl,%edx
4000143e:	39 c2                	cmp    %eax,%edx
40001440:	73 07                	jae    40001449 <__udivdi3+0x109>
40001442:	8b 55 e0             	mov    -0x20(%ebp),%edx
40001445:	39 d6                	cmp    %edx,%esi
40001447:	74 0f                	je     40001458 <__udivdi3+0x118>
40001449:	89 d8                	mov    %ebx,%eax
4000144b:	31 ff                	xor    %edi,%edi
4000144d:	e9 36 ff ff ff       	jmp    40001388 <__udivdi3+0x48>
40001452:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40001458:	8d 43 ff             	lea    -0x1(%ebx),%eax
4000145b:	31 ff                	xor    %edi,%edi
4000145d:	e9 26 ff ff ff       	jmp    40001388 <__udivdi3+0x48>
40001462:	66 90                	xchg   %ax,%ax
40001464:	66 90                	xchg   %ax,%ax
40001466:	66 90                	xchg   %ax,%ax
40001468:	66 90                	xchg   %ax,%ax
4000146a:	66 90                	xchg   %ax,%ax
4000146c:	66 90                	xchg   %ax,%ax
4000146e:	66 90                	xchg   %ax,%ax

40001470 <__umoddi3>:
40001470:	f3 0f 1e fb          	endbr32
40001474:	55                   	push   %ebp
40001475:	89 e5                	mov    %esp,%ebp
40001477:	57                   	push   %edi
40001478:	56                   	push   %esi
40001479:	53                   	push   %ebx
4000147a:	83 ec 2c             	sub    $0x2c,%esp
4000147d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
40001480:	8b 45 14             	mov    0x14(%ebp),%eax
40001483:	8b 75 08             	mov    0x8(%ebp),%esi
40001486:	8b 7d 10             	mov    0x10(%ebp),%edi
40001489:	89 da                	mov    %ebx,%edx
4000148b:	85 c0                	test   %eax,%eax
4000148d:	75 19                	jne    400014a8 <__umoddi3+0x38>
4000148f:	39 fb                	cmp    %edi,%ebx
40001491:	73 5d                	jae    400014f0 <__umoddi3+0x80>
40001493:	89 f0                	mov    %esi,%eax
40001495:	f7 f7                	div    %edi
40001497:	89 d0                	mov    %edx,%eax
40001499:	31 d2                	xor    %edx,%edx
4000149b:	83 c4 2c             	add    $0x2c,%esp
4000149e:	5b                   	pop    %ebx
4000149f:	5e                   	pop    %esi
400014a0:	5f                   	pop    %edi
400014a1:	5d                   	pop    %ebp
400014a2:	c3                   	ret
400014a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
400014a8:	89 75 e0             	mov    %esi,-0x20(%ebp)
400014ab:	39 c3                	cmp    %eax,%ebx
400014ad:	73 11                	jae    400014c0 <__umoddi3+0x50>
400014af:	89 f0                	mov    %esi,%eax
400014b1:	83 c4 2c             	add    $0x2c,%esp
400014b4:	5b                   	pop    %ebx
400014b5:	5e                   	pop    %esi
400014b6:	5f                   	pop    %edi
400014b7:	5d                   	pop    %ebp
400014b8:	c3                   	ret
400014b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
400014c0:	0f bd c8             	bsr    %eax,%ecx
400014c3:	83 f1 1f             	xor    $0x1f,%ecx
400014c6:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
400014c9:	75 45                	jne    40001510 <__umoddi3+0xa0>
400014cb:	39 d8                	cmp    %ebx,%eax
400014cd:	0f 82 d5 00 00 00    	jb     400015a8 <__umoddi3+0x138>
400014d3:	39 fe                	cmp    %edi,%esi
400014d5:	0f 83 cd 00 00 00    	jae    400015a8 <__umoddi3+0x138>
400014db:	8b 45 e0             	mov    -0x20(%ebp),%eax
400014de:	83 c4 2c             	add    $0x2c,%esp
400014e1:	5b                   	pop    %ebx
400014e2:	5e                   	pop    %esi
400014e3:	5f                   	pop    %edi
400014e4:	5d                   	pop    %ebp
400014e5:	c3                   	ret
400014e6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400014ed:	00 
400014ee:	66 90                	xchg   %ax,%ax
400014f0:	89 f9                	mov    %edi,%ecx
400014f2:	85 ff                	test   %edi,%edi
400014f4:	75 0b                	jne    40001501 <__umoddi3+0x91>
400014f6:	b8 01 00 00 00       	mov    $0x1,%eax
400014fb:	31 d2                	xor    %edx,%edx
400014fd:	f7 f7                	div    %edi
400014ff:	89 c1                	mov    %eax,%ecx
40001501:	89 d8                	mov    %ebx,%eax
40001503:	31 d2                	xor    %edx,%edx
40001505:	f7 f1                	div    %ecx
40001507:	89 f0                	mov    %esi,%eax
40001509:	f7 f1                	div    %ecx
4000150b:	eb 8a                	jmp    40001497 <__umoddi3+0x27>
4000150d:	8d 76 00             	lea    0x0(%esi),%esi
40001510:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
40001513:	ba 20 00 00 00       	mov    $0x20,%edx
40001518:	29 ca                	sub    %ecx,%edx
4000151a:	d3 e0                	shl    %cl,%eax
4000151c:	89 45 dc             	mov    %eax,-0x24(%ebp)
4000151f:	89 d1                	mov    %edx,%ecx
40001521:	89 f8                	mov    %edi,%eax
40001523:	d3 e8                	shr    %cl,%eax
40001525:	89 55 e0             	mov    %edx,-0x20(%ebp)
40001528:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
4000152c:	89 c2                	mov    %eax,%edx
4000152e:	8b 45 dc             	mov    -0x24(%ebp),%eax
40001531:	d3 e7                	shl    %cl,%edi
40001533:	09 c2                	or     %eax,%edx
40001535:	8b 45 e0             	mov    -0x20(%ebp),%eax
40001538:	89 7d d8             	mov    %edi,-0x28(%ebp)
4000153b:	89 f7                	mov    %esi,%edi
4000153d:	89 55 dc             	mov    %edx,-0x24(%ebp)
40001540:	89 da                	mov    %ebx,%edx
40001542:	89 c1                	mov    %eax,%ecx
40001544:	d3 ea                	shr    %cl,%edx
40001546:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
4000154a:	d3 e3                	shl    %cl,%ebx
4000154c:	89 c1                	mov    %eax,%ecx
4000154e:	d3 ef                	shr    %cl,%edi
40001550:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
40001554:	89 f8                	mov    %edi,%eax
40001556:	d3 e6                	shl    %cl,%esi
40001558:	09 d8                	or     %ebx,%eax
4000155a:	f7 75 dc             	divl   -0x24(%ebp)
4000155d:	89 d3                	mov    %edx,%ebx
4000155f:	89 75 d4             	mov    %esi,-0x2c(%ebp)
40001562:	89 f7                	mov    %esi,%edi
40001564:	f7 65 d8             	mull   -0x28(%ebp)
40001567:	89 c6                	mov    %eax,%esi
40001569:	89 d1                	mov    %edx,%ecx
4000156b:	39 d3                	cmp    %edx,%ebx
4000156d:	72 06                	jb     40001575 <__umoddi3+0x105>
4000156f:	75 0e                	jne    4000157f <__umoddi3+0x10f>
40001571:	39 c7                	cmp    %eax,%edi
40001573:	73 0a                	jae    4000157f <__umoddi3+0x10f>
40001575:	2b 45 d8             	sub    -0x28(%ebp),%eax
40001578:	1b 55 dc             	sbb    -0x24(%ebp),%edx
4000157b:	89 d1                	mov    %edx,%ecx
4000157d:	89 c6                	mov    %eax,%esi
4000157f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
40001582:	8b 7d e4             	mov    -0x1c(%ebp),%edi
40001585:	29 f0                	sub    %esi,%eax
40001587:	19 cb                	sbb    %ecx,%ebx
40001589:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
4000158d:	89 da                	mov    %ebx,%edx
4000158f:	d3 e2                	shl    %cl,%edx
40001591:	89 f9                	mov    %edi,%ecx
40001593:	d3 e8                	shr    %cl,%eax
40001595:	d3 eb                	shr    %cl,%ebx
40001597:	09 d0                	or     %edx,%eax
40001599:	89 da                	mov    %ebx,%edx
4000159b:	83 c4 2c             	add    $0x2c,%esp
4000159e:	5b                   	pop    %ebx
4000159f:	5e                   	pop    %esi
400015a0:	5f                   	pop    %edi
400015a1:	5d                   	pop    %ebp
400015a2:	c3                   	ret
400015a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
400015a8:	89 da                	mov    %ebx,%edx
400015aa:	29 fe                	sub    %edi,%esi
400015ac:	19 c2                	sbb    %eax,%edx
400015ae:	89 75 e0             	mov    %esi,-0x20(%ebp)
400015b1:	e9 25 ff ff ff       	jmp    400014db <__umoddi3+0x6b>
