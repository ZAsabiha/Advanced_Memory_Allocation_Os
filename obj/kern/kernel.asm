
obj/kern/kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <video_init>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	53                   	push   %ebx
  100004:	83 ec 14             	sub    $0x14,%esp
  100007:	e8 b4 03 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  10000c:	81 c3 e8 cf 00 00    	add    $0xcfe8,%ebx
  100012:	c7 45 f4 00 80 0b 00 	movl   $0xb8000,-0xc(%ebp)
  100019:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10001c:	0f b7 00             	movzwl (%eax),%eax
  10001f:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  100023:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100026:	66 c7 00 5a a5       	movw   $0xa55a,(%eax)
  10002b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10002e:	0f b7 00             	movzwl (%eax),%eax
  100031:	66 3d 5a a5          	cmp    $0xa55a,%ax
  100035:	74 2c                	je     100063 <video_init+0x63>
  100037:	c7 45 f4 00 00 0b 00 	movl   $0xb0000,-0xc(%ebp)
  10003e:	c7 83 0c 60 00 00 b4 	movl   $0x3b4,0x600c(%ebx)
  100045:	03 00 00 
  100048:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10004e:	83 ec 08             	sub    $0x8,%esp
  100051:	50                   	push   %eax
  100052:	8d 83 0c b0 ff ff    	lea    -0x4ff4(%ebx),%eax
  100058:	50                   	push   %eax
  100059:	e8 0e 2d 00 00       	call   102d6c <dprintf>
  10005e:	83 c4 10             	add    $0x10,%esp
  100061:	eb 2d                	jmp    100090 <video_init+0x90>
  100063:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100066:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  10006a:	66 89 10             	mov    %dx,(%eax)
  10006d:	c7 83 0c 60 00 00 d4 	movl   $0x3d4,0x600c(%ebx)
  100074:	03 00 00 
  100077:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10007d:	83 ec 08             	sub    $0x8,%esp
  100080:	50                   	push   %eax
  100081:	8d 83 0c b0 ff ff    	lea    -0x4ff4(%ebx),%eax
  100087:	50                   	push   %eax
  100088:	e8 df 2c 00 00       	call   102d6c <dprintf>
  10008d:	83 c4 10             	add    $0x10,%esp
  100090:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100096:	83 ec 08             	sub    $0x8,%esp
  100099:	6a 0e                	push   $0xe
  10009b:	50                   	push   %eax
  10009c:	e8 78 3a 00 00       	call   103b19 <outb>
  1000a1:	83 c4 10             	add    $0x10,%esp
  1000a4:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000aa:	83 c0 01             	add    $0x1,%eax
  1000ad:	83 ec 0c             	sub    $0xc,%esp
  1000b0:	50                   	push   %eax
  1000b1:	e8 14 3a 00 00       	call   103aca <inb>
  1000b6:	83 c4 10             	add    $0x10,%esp
  1000b9:	0f b6 c0             	movzbl %al,%eax
  1000bc:	c1 e0 08             	shl    $0x8,%eax
  1000bf:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1000c2:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000c8:	83 ec 08             	sub    $0x8,%esp
  1000cb:	6a 0f                	push   $0xf
  1000cd:	50                   	push   %eax
  1000ce:	e8 46 3a 00 00       	call   103b19 <outb>
  1000d3:	83 c4 10             	add    $0x10,%esp
  1000d6:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000dc:	83 c0 01             	add    $0x1,%eax
  1000df:	83 ec 0c             	sub    $0xc,%esp
  1000e2:	50                   	push   %eax
  1000e3:	e8 e2 39 00 00       	call   103aca <inb>
  1000e8:	83 c4 10             	add    $0x10,%esp
  1000eb:	0f b6 c0             	movzbl %al,%eax
  1000ee:	09 45 ec             	or     %eax,-0x14(%ebp)
  1000f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1000f4:	89 83 10 60 00 00    	mov    %eax,0x6010(%ebx)
  1000fa:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1000fd:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100104:	c7 83 18 60 00 00 00 	movl   $0x0,0x6018(%ebx)
  10010b:	00 00 00 
  10010e:	90                   	nop
  10010f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100112:	c9                   	leave
  100113:	c3                   	ret

00100114 <video_putc>:
  100114:	55                   	push   %ebp
  100115:	89 e5                	mov    %esp,%ebp
  100117:	56                   	push   %esi
  100118:	53                   	push   %ebx
  100119:	83 ec 10             	sub    $0x10,%esp
  10011c:	e8 9f 02 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  100121:	81 c3 d3 ce 00 00    	add    $0xced3,%ebx
  100127:	8b 45 08             	mov    0x8(%ebp),%eax
  10012a:	3d ff 00 00 00       	cmp    $0xff,%eax
  10012f:	77 07                	ja     100138 <video_putc+0x24>
  100131:	81 4d 08 00 07 00 00 	orl    $0x700,0x8(%ebp)
  100138:	8b 45 08             	mov    0x8(%ebp),%eax
  10013b:	0f b6 c0             	movzbl %al,%eax
  10013e:	83 f8 0d             	cmp    $0xd,%eax
  100141:	0f 84 84 00 00 00    	je     1001cb <video_putc+0xb7>
  100147:	83 f8 0d             	cmp    $0xd,%eax
  10014a:	0f 8f f9 00 00 00    	jg     100249 <video_putc+0x135>
  100150:	83 f8 0a             	cmp    $0xa,%eax
  100153:	74 65                	je     1001ba <video_putc+0xa6>
  100155:	83 f8 0a             	cmp    $0xa,%eax
  100158:	0f 8f eb 00 00 00    	jg     100249 <video_putc+0x135>
  10015e:	83 f8 08             	cmp    $0x8,%eax
  100161:	74 0e                	je     100171 <video_putc+0x5d>
  100163:	83 f8 09             	cmp    $0x9,%eax
  100166:	0f 84 9a 00 00 00    	je     100206 <video_putc+0xf2>
  10016c:	e9 d8 00 00 00       	jmp    100249 <video_putc+0x135>
  100171:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100178:	66 85 c0             	test   %ax,%ax
  10017b:	0f 84 ee 00 00 00    	je     10026f <video_putc+0x15b>
  100181:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100188:	83 e8 01             	sub    $0x1,%eax
  10018b:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100192:	8b 45 08             	mov    0x8(%ebp),%eax
  100195:	b0 00                	mov    $0x0,%al
  100197:	83 c8 20             	or     $0x20,%eax
  10019a:	89 c1                	mov    %eax,%ecx
  10019c:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1001a2:	0f b7 93 14 60 00 00 	movzwl 0x6014(%ebx),%edx
  1001a9:	0f b7 d2             	movzwl %dx,%edx
  1001ac:	01 d2                	add    %edx,%edx
  1001ae:	01 d0                	add    %edx,%eax
  1001b0:	89 ca                	mov    %ecx,%edx
  1001b2:	66 89 10             	mov    %dx,(%eax)
  1001b5:	e9 b5 00 00 00       	jmp    10026f <video_putc+0x15b>
  1001ba:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1001c1:	83 c0 50             	add    $0x50,%eax
  1001c4:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  1001cb:	0f b7 b3 14 60 00 00 	movzwl 0x6014(%ebx),%esi
  1001d2:	0f b7 8b 14 60 00 00 	movzwl 0x6014(%ebx),%ecx
  1001d9:	0f b7 c1             	movzwl %cx,%eax
  1001dc:	69 c0 cd cc 00 00    	imul   $0xcccd,%eax,%eax
  1001e2:	c1 e8 10             	shr    $0x10,%eax
  1001e5:	89 c2                	mov    %eax,%edx
  1001e7:	66 c1 ea 06          	shr    $0x6,%dx
  1001eb:	89 d0                	mov    %edx,%eax
  1001ed:	c1 e0 02             	shl    $0x2,%eax
  1001f0:	01 d0                	add    %edx,%eax
  1001f2:	c1 e0 04             	shl    $0x4,%eax
  1001f5:	29 c1                	sub    %eax,%ecx
  1001f7:	89 ca                	mov    %ecx,%edx
  1001f9:	89 f0                	mov    %esi,%eax
  1001fb:	29 d0                	sub    %edx,%eax
  1001fd:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100204:	eb 6a                	jmp    100270 <video_putc+0x15c>
  100206:	83 ec 0c             	sub    $0xc,%esp
  100209:	6a 20                	push   $0x20
  10020b:	e8 04 ff ff ff       	call   100114 <video_putc>
  100210:	83 c4 10             	add    $0x10,%esp
  100213:	83 ec 0c             	sub    $0xc,%esp
  100216:	6a 20                	push   $0x20
  100218:	e8 f7 fe ff ff       	call   100114 <video_putc>
  10021d:	83 c4 10             	add    $0x10,%esp
  100220:	83 ec 0c             	sub    $0xc,%esp
  100223:	6a 20                	push   $0x20
  100225:	e8 ea fe ff ff       	call   100114 <video_putc>
  10022a:	83 c4 10             	add    $0x10,%esp
  10022d:	83 ec 0c             	sub    $0xc,%esp
  100230:	6a 20                	push   $0x20
  100232:	e8 dd fe ff ff       	call   100114 <video_putc>
  100237:	83 c4 10             	add    $0x10,%esp
  10023a:	83 ec 0c             	sub    $0xc,%esp
  10023d:	6a 20                	push   $0x20
  10023f:	e8 d0 fe ff ff       	call   100114 <video_putc>
  100244:	83 c4 10             	add    $0x10,%esp
  100247:	eb 27                	jmp    100270 <video_putc+0x15c>
  100249:	8b 8b 10 60 00 00    	mov    0x6010(%ebx),%ecx
  10024f:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100256:	8d 50 01             	lea    0x1(%eax),%edx
  100259:	66 89 93 14 60 00 00 	mov    %dx,0x6014(%ebx)
  100260:	0f b7 c0             	movzwl %ax,%eax
  100263:	01 c0                	add    %eax,%eax
  100265:	01 c8                	add    %ecx,%eax
  100267:	8b 55 08             	mov    0x8(%ebp),%edx
  10026a:	66 89 10             	mov    %dx,(%eax)
  10026d:	eb 01                	jmp    100270 <video_putc+0x15c>
  10026f:	90                   	nop
  100270:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100277:	66 3d cf 07          	cmp    $0x7cf,%ax
  10027b:	76 5d                	jbe    1002da <video_putc+0x1c6>
  10027d:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  100283:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
  100289:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  10028f:	83 ec 04             	sub    $0x4,%esp
  100292:	68 00 0f 00 00       	push   $0xf00
  100297:	52                   	push   %edx
  100298:	50                   	push   %eax
  100299:	e8 87 25 00 00       	call   102825 <memmove>
  10029e:	83 c4 10             	add    $0x10,%esp
  1002a1:	c7 45 f4 80 07 00 00 	movl   $0x780,-0xc(%ebp)
  1002a8:	eb 16                	jmp    1002c0 <video_putc+0x1ac>
  1002aa:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1002b0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1002b3:	01 d2                	add    %edx,%edx
  1002b5:	01 d0                	add    %edx,%eax
  1002b7:	66 c7 00 20 07       	movw   $0x720,(%eax)
  1002bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002c0:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  1002c7:	7e e1                	jle    1002aa <video_putc+0x196>
  1002c9:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002d0:	83 e8 50             	sub    $0x50,%eax
  1002d3:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  1002da:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1002e0:	83 ec 08             	sub    $0x8,%esp
  1002e3:	6a 0e                	push   $0xe
  1002e5:	50                   	push   %eax
  1002e6:	e8 2e 38 00 00       	call   103b19 <outb>
  1002eb:	83 c4 10             	add    $0x10,%esp
  1002ee:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002f5:	66 c1 e8 08          	shr    $0x8,%ax
  1002f9:	0f b6 c0             	movzbl %al,%eax
  1002fc:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  100302:	83 c2 01             	add    $0x1,%edx
  100305:	83 ec 08             	sub    $0x8,%esp
  100308:	50                   	push   %eax
  100309:	52                   	push   %edx
  10030a:	e8 0a 38 00 00       	call   103b19 <outb>
  10030f:	83 c4 10             	add    $0x10,%esp
  100312:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100318:	83 ec 08             	sub    $0x8,%esp
  10031b:	6a 0f                	push   $0xf
  10031d:	50                   	push   %eax
  10031e:	e8 f6 37 00 00       	call   103b19 <outb>
  100323:	83 c4 10             	add    $0x10,%esp
  100326:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  10032d:	0f b6 c0             	movzbl %al,%eax
  100330:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  100336:	83 c2 01             	add    $0x1,%edx
  100339:	83 ec 08             	sub    $0x8,%esp
  10033c:	50                   	push   %eax
  10033d:	52                   	push   %edx
  10033e:	e8 d6 37 00 00       	call   103b19 <outb>
  100343:	83 c4 10             	add    $0x10,%esp
  100346:	90                   	nop
  100347:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10034a:	5b                   	pop    %ebx
  10034b:	5e                   	pop    %esi
  10034c:	5d                   	pop    %ebp
  10034d:	c3                   	ret

0010034e <video_set_cursor>:
  10034e:	55                   	push   %ebp
  10034f:	89 e5                	mov    %esp,%ebp
  100351:	e8 66 00 00 00       	call   1003bc <__x86.get_pc_thunk.dx>
  100356:	81 c2 9e cc 00 00    	add    $0xcc9e,%edx
  10035c:	8b 45 08             	mov    0x8(%ebp),%eax
  10035f:	89 c1                	mov    %eax,%ecx
  100361:	89 c8                	mov    %ecx,%eax
  100363:	c1 e0 02             	shl    $0x2,%eax
  100366:	01 c8                	add    %ecx,%eax
  100368:	c1 e0 04             	shl    $0x4,%eax
  10036b:	89 c1                	mov    %eax,%ecx
  10036d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100370:	01 c8                	add    %ecx,%eax
  100372:	66 89 82 14 60 00 00 	mov    %ax,0x6014(%edx)
  100379:	90                   	nop
  10037a:	5d                   	pop    %ebp
  10037b:	c3                   	ret

0010037c <video_clear_screen>:
  10037c:	55                   	push   %ebp
  10037d:	89 e5                	mov    %esp,%ebp
  10037f:	83 ec 10             	sub    $0x10,%esp
  100382:	e8 31 00 00 00       	call   1003b8 <__x86.get_pc_thunk.ax>
  100387:	05 6d cc 00 00       	add    $0xcc6d,%eax
  10038c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100393:	eb 16                	jmp    1003ab <video_clear_screen+0x2f>
  100395:	8b 90 10 60 00 00    	mov    0x6010(%eax),%edx
  10039b:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10039e:	01 c9                	add    %ecx,%ecx
  1003a0:	01 ca                	add    %ecx,%edx
  1003a2:	66 c7 02 20 00       	movw   $0x20,(%edx)
  1003a7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1003ab:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  1003b2:	7e e1                	jle    100395 <video_clear_screen+0x19>
  1003b4:	90                   	nop
  1003b5:	90                   	nop
  1003b6:	c9                   	leave
  1003b7:	c3                   	ret

001003b8 <__x86.get_pc_thunk.ax>:
  1003b8:	8b 04 24             	mov    (%esp),%eax
  1003bb:	c3                   	ret

001003bc <__x86.get_pc_thunk.dx>:
  1003bc:	8b 14 24             	mov    (%esp),%edx
  1003bf:	c3                   	ret

001003c0 <__x86.get_pc_thunk.bx>:
  1003c0:	8b 1c 24             	mov    (%esp),%ebx
  1003c3:	c3                   	ret

001003c4 <cons_init>:
  1003c4:	55                   	push   %ebp
  1003c5:	89 e5                	mov    %esp,%ebp
  1003c7:	53                   	push   %ebx
  1003c8:	83 ec 04             	sub    $0x4,%esp
  1003cb:	e8 f0 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1003d0:	81 c3 24 cc 00 00    	add    $0xcc24,%ebx
  1003d6:	83 ec 04             	sub    $0x4,%esp
  1003d9:	68 08 02 00 00       	push   $0x208
  1003de:	6a 00                	push   $0x0
  1003e0:	8d 83 2c 60 00 00    	lea    0x602c(%ebx),%eax
  1003e6:	50                   	push   %eax
  1003e7:	e8 bf 23 00 00       	call   1027ab <memset>
  1003ec:	83 c4 10             	add    $0x10,%esp
  1003ef:	e8 2f 04 00 00       	call   100823 <serial_init>
  1003f4:	e8 07 fc ff ff       	call   100000 <video_init>
  1003f9:	90                   	nop
  1003fa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1003fd:	c9                   	leave
  1003fe:	c3                   	ret

001003ff <cons_intr>:
  1003ff:	55                   	push   %ebp
  100400:	89 e5                	mov    %esp,%ebp
  100402:	53                   	push   %ebx
  100403:	83 ec 14             	sub    $0x14,%esp
  100406:	e8 b5 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10040b:	81 c3 e9 cb 00 00    	add    $0xcbe9,%ebx
  100411:	eb 39                	jmp    10044c <cons_intr+0x4d>
  100413:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100417:	74 32                	je     10044b <cons_intr+0x4c>
  100419:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  10041f:	8d 50 01             	lea    0x1(%eax),%edx
  100422:	89 93 30 62 00 00    	mov    %edx,0x6230(%ebx)
  100428:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10042b:	88 94 03 2c 60 00 00 	mov    %dl,0x602c(%ebx,%eax,1)
  100432:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  100438:	3d 00 02 00 00       	cmp    $0x200,%eax
  10043d:	75 0d                	jne    10044c <cons_intr+0x4d>
  10043f:	c7 83 30 62 00 00 00 	movl   $0x0,0x6230(%ebx)
  100446:	00 00 00 
  100449:	eb 01                	jmp    10044c <cons_intr+0x4d>
  10044b:	90                   	nop
  10044c:	8b 45 08             	mov    0x8(%ebp),%eax
  10044f:	ff d0                	call   *%eax
  100451:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100454:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
  100458:	75 b9                	jne    100413 <cons_intr+0x14>
  10045a:	90                   	nop
  10045b:	90                   	nop
  10045c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10045f:	c9                   	leave
  100460:	c3                   	ret

00100461 <cons_getc>:
  100461:	55                   	push   %ebp
  100462:	89 e5                	mov    %esp,%ebp
  100464:	53                   	push   %ebx
  100465:	83 ec 14             	sub    $0x14,%esp
  100468:	e8 53 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10046d:	81 c3 87 cb 00 00    	add    $0xcb87,%ebx
  100473:	e8 81 02 00 00       	call   1006f9 <serial_intr>
  100478:	e8 59 06 00 00       	call   100ad6 <keyboard_intr>
  10047d:	8b 93 2c 62 00 00    	mov    0x622c(%ebx),%edx
  100483:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  100489:	39 c2                	cmp    %eax,%edx
  10048b:	74 39                	je     1004c6 <cons_getc+0x65>
  10048d:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  100493:	8d 50 01             	lea    0x1(%eax),%edx
  100496:	89 93 2c 62 00 00    	mov    %edx,0x622c(%ebx)
  10049c:	0f b6 84 03 2c 60 00 	movzbl 0x602c(%ebx,%eax,1),%eax
  1004a3:	00 
  1004a4:	0f be c0             	movsbl %al,%eax
  1004a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004aa:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  1004b0:	3d 00 02 00 00       	cmp    $0x200,%eax
  1004b5:	75 0a                	jne    1004c1 <cons_getc+0x60>
  1004b7:	c7 83 2c 62 00 00 00 	movl   $0x0,0x622c(%ebx)
  1004be:	00 00 00 
  1004c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004c4:	eb 05                	jmp    1004cb <cons_getc+0x6a>
  1004c6:	b8 00 00 00 00       	mov    $0x0,%eax
  1004cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1004ce:	c9                   	leave
  1004cf:	c3                   	ret

001004d0 <cons_putc>:
  1004d0:	55                   	push   %ebp
  1004d1:	89 e5                	mov    %esp,%ebp
  1004d3:	53                   	push   %ebx
  1004d4:	83 ec 14             	sub    $0x14,%esp
  1004d7:	e8 e4 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1004dc:	81 c3 18 cb 00 00    	add    $0xcb18,%ebx
  1004e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1004e5:	88 45 f4             	mov    %al,-0xc(%ebp)
  1004e8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004ec:	83 ec 0c             	sub    $0xc,%esp
  1004ef:	50                   	push   %eax
  1004f0:	e8 9d 02 00 00       	call   100792 <serial_putc>
  1004f5:	83 c4 10             	add    $0x10,%esp
  1004f8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004fc:	83 ec 0c             	sub    $0xc,%esp
  1004ff:	50                   	push   %eax
  100500:	e8 0f fc ff ff       	call   100114 <video_putc>
  100505:	83 c4 10             	add    $0x10,%esp
  100508:	90                   	nop
  100509:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10050c:	c9                   	leave
  10050d:	c3                   	ret

0010050e <getchar>:
  10050e:	55                   	push   %ebp
  10050f:	89 e5                	mov    %esp,%ebp
  100511:	83 ec 18             	sub    $0x18,%esp
  100514:	e8 9f fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100519:	05 db ca 00 00       	add    $0xcadb,%eax
  10051e:	90                   	nop
  10051f:	e8 3d ff ff ff       	call   100461 <cons_getc>
  100524:	88 45 f7             	mov    %al,-0x9(%ebp)
  100527:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  10052b:	74 f2                	je     10051f <getchar+0x11>
  10052d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  100531:	c9                   	leave
  100532:	c3                   	ret

00100533 <putchar>:
  100533:	55                   	push   %ebp
  100534:	89 e5                	mov    %esp,%ebp
  100536:	83 ec 18             	sub    $0x18,%esp
  100539:	e8 7a fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10053e:	05 b6 ca 00 00       	add    $0xcab6,%eax
  100543:	8b 45 08             	mov    0x8(%ebp),%eax
  100546:	88 45 f4             	mov    %al,-0xc(%ebp)
  100549:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  10054d:	83 ec 0c             	sub    $0xc,%esp
  100550:	50                   	push   %eax
  100551:	e8 7a ff ff ff       	call   1004d0 <cons_putc>
  100556:	83 c4 10             	add    $0x10,%esp
  100559:	90                   	nop
  10055a:	c9                   	leave
  10055b:	c3                   	ret

0010055c <readline>:
  10055c:	55                   	push   %ebp
  10055d:	89 e5                	mov    %esp,%ebp
  10055f:	53                   	push   %ebx
  100560:	83 ec 14             	sub    $0x14,%esp
  100563:	e8 58 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100568:	81 c3 8c ca 00 00    	add    $0xca8c,%ebx
  10056e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100572:	74 15                	je     100589 <readline+0x2d>
  100574:	83 ec 08             	sub    $0x8,%esp
  100577:	ff 75 08             	push   0x8(%ebp)
  10057a:	8d 83 1a b0 ff ff    	lea    -0x4fe6(%ebx),%eax
  100580:	50                   	push   %eax
  100581:	e8 e6 27 00 00       	call   102d6c <dprintf>
  100586:	83 c4 10             	add    $0x10,%esp
  100589:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100590:	e8 79 ff ff ff       	call   10050e <getchar>
  100595:	88 45 f3             	mov    %al,-0xd(%ebp)
  100598:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  10059c:	79 21                	jns    1005bf <readline+0x63>
  10059e:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005a2:	83 ec 08             	sub    $0x8,%esp
  1005a5:	50                   	push   %eax
  1005a6:	8d 83 1d b0 ff ff    	lea    -0x4fe3(%ebx),%eax
  1005ac:	50                   	push   %eax
  1005ad:	e8 ba 27 00 00       	call   102d6c <dprintf>
  1005b2:	83 c4 10             	add    $0x10,%esp
  1005b5:	b8 00 00 00 00       	mov    $0x0,%eax
  1005ba:	e9 92 00 00 00       	jmp    100651 <readline+0xf5>
  1005bf:	80 7d f3 08          	cmpb   $0x8,-0xd(%ebp)
  1005c3:	74 06                	je     1005cb <readline+0x6f>
  1005c5:	80 7d f3 7f          	cmpb   $0x7f,-0xd(%ebp)
  1005c9:	75 19                	jne    1005e4 <readline+0x88>
  1005cb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1005cf:	7e 13                	jle    1005e4 <readline+0x88>
  1005d1:	83 ec 0c             	sub    $0xc,%esp
  1005d4:	6a 08                	push   $0x8
  1005d6:	e8 58 ff ff ff       	call   100533 <putchar>
  1005db:	83 c4 10             	add    $0x10,%esp
  1005de:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  1005e2:	eb 68                	jmp    10064c <readline+0xf0>
  1005e4:	80 7d f3 1f          	cmpb   $0x1f,-0xd(%ebp)
  1005e8:	7e 2f                	jle    100619 <readline+0xbd>
  1005ea:	81 7d f4 fe 03 00 00 	cmpl   $0x3fe,-0xc(%ebp)
  1005f1:	7f 26                	jg     100619 <readline+0xbd>
  1005f3:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005f7:	83 ec 0c             	sub    $0xc,%esp
  1005fa:	50                   	push   %eax
  1005fb:	e8 33 ff ff ff       	call   100533 <putchar>
  100600:	83 c4 10             	add    $0x10,%esp
  100603:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100606:	8d 50 01             	lea    0x1(%eax),%edx
  100609:	89 55 f4             	mov    %edx,-0xc(%ebp)
  10060c:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
  100610:	88 94 03 4c 62 00 00 	mov    %dl,0x624c(%ebx,%eax,1)
  100617:	eb 33                	jmp    10064c <readline+0xf0>
  100619:	80 7d f3 0a          	cmpb   $0xa,-0xd(%ebp)
  10061d:	74 0a                	je     100629 <readline+0xcd>
  10061f:	80 7d f3 0d          	cmpb   $0xd,-0xd(%ebp)
  100623:	0f 85 67 ff ff ff    	jne    100590 <readline+0x34>
  100629:	83 ec 0c             	sub    $0xc,%esp
  10062c:	6a 0a                	push   $0xa
  10062e:	e8 00 ff ff ff       	call   100533 <putchar>
  100633:	83 c4 10             	add    $0x10,%esp
  100636:	8d 93 4c 62 00 00    	lea    0x624c(%ebx),%edx
  10063c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10063f:	01 d0                	add    %edx,%eax
  100641:	c6 00 00             	movb   $0x0,(%eax)
  100644:	8d 83 4c 62 00 00    	lea    0x624c(%ebx),%eax
  10064a:	eb 05                	jmp    100651 <readline+0xf5>
  10064c:	e9 3f ff ff ff       	jmp    100590 <readline+0x34>
  100651:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100654:	c9                   	leave
  100655:	c3                   	ret

00100656 <delay>:
  100656:	55                   	push   %ebp
  100657:	89 e5                	mov    %esp,%ebp
  100659:	53                   	push   %ebx
  10065a:	83 ec 04             	sub    $0x4,%esp
  10065d:	e8 5e fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100662:	81 c3 92 c9 00 00    	add    $0xc992,%ebx
  100668:	83 ec 0c             	sub    $0xc,%esp
  10066b:	68 84 00 00 00       	push   $0x84
  100670:	e8 55 34 00 00       	call   103aca <inb>
  100675:	83 c4 10             	add    $0x10,%esp
  100678:	83 ec 0c             	sub    $0xc,%esp
  10067b:	68 84 00 00 00       	push   $0x84
  100680:	e8 45 34 00 00       	call   103aca <inb>
  100685:	83 c4 10             	add    $0x10,%esp
  100688:	83 ec 0c             	sub    $0xc,%esp
  10068b:	68 84 00 00 00       	push   $0x84
  100690:	e8 35 34 00 00       	call   103aca <inb>
  100695:	83 c4 10             	add    $0x10,%esp
  100698:	83 ec 0c             	sub    $0xc,%esp
  10069b:	68 84 00 00 00       	push   $0x84
  1006a0:	e8 25 34 00 00       	call   103aca <inb>
  1006a5:	83 c4 10             	add    $0x10,%esp
  1006a8:	90                   	nop
  1006a9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006ac:	c9                   	leave
  1006ad:	c3                   	ret

001006ae <serial_proc_data>:
  1006ae:	55                   	push   %ebp
  1006af:	89 e5                	mov    %esp,%ebp
  1006b1:	53                   	push   %ebx
  1006b2:	83 ec 04             	sub    $0x4,%esp
  1006b5:	e8 06 fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1006ba:	81 c3 3a c9 00 00    	add    $0xc93a,%ebx
  1006c0:	83 ec 0c             	sub    $0xc,%esp
  1006c3:	68 fd 03 00 00       	push   $0x3fd
  1006c8:	e8 fd 33 00 00       	call   103aca <inb>
  1006cd:	83 c4 10             	add    $0x10,%esp
  1006d0:	0f b6 c0             	movzbl %al,%eax
  1006d3:	83 e0 01             	and    $0x1,%eax
  1006d6:	85 c0                	test   %eax,%eax
  1006d8:	75 07                	jne    1006e1 <serial_proc_data+0x33>
  1006da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006df:	eb 13                	jmp    1006f4 <serial_proc_data+0x46>
  1006e1:	83 ec 0c             	sub    $0xc,%esp
  1006e4:	68 f8 03 00 00       	push   $0x3f8
  1006e9:	e8 dc 33 00 00       	call   103aca <inb>
  1006ee:	83 c4 10             	add    $0x10,%esp
  1006f1:	0f b6 c0             	movzbl %al,%eax
  1006f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006f7:	c9                   	leave
  1006f8:	c3                   	ret

001006f9 <serial_intr>:
  1006f9:	55                   	push   %ebp
  1006fa:	89 e5                	mov    %esp,%ebp
  1006fc:	53                   	push   %ebx
  1006fd:	83 ec 04             	sub    $0x4,%esp
  100700:	e8 b3 fc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100705:	05 ef c8 00 00       	add    $0xc8ef,%eax
  10070a:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100711:	84 d2                	test   %dl,%dl
  100713:	74 14                	je     100729 <serial_intr+0x30>
  100715:	83 ec 0c             	sub    $0xc,%esp
  100718:	8d 90 ba 36 ff ff    	lea    -0xc946(%eax),%edx
  10071e:	52                   	push   %edx
  10071f:	89 c3                	mov    %eax,%ebx
  100721:	e8 d9 fc ff ff       	call   1003ff <cons_intr>
  100726:	83 c4 10             	add    $0x10,%esp
  100729:	90                   	nop
  10072a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10072d:	c9                   	leave
  10072e:	c3                   	ret

0010072f <serial_reformatnewline>:
  10072f:	55                   	push   %ebp
  100730:	89 e5                	mov    %esp,%ebp
  100732:	53                   	push   %ebx
  100733:	83 ec 14             	sub    $0x14,%esp
  100736:	e8 85 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10073b:	81 c3 b9 c8 00 00    	add    $0xc8b9,%ebx
  100741:	c7 45 f4 0d 00 00 00 	movl   $0xd,-0xc(%ebp)
  100748:	c7 45 f0 0a 00 00 00 	movl   $0xa,-0x10(%ebp)
  10074f:	8b 45 08             	mov    0x8(%ebp),%eax
  100752:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  100755:	75 31                	jne    100788 <serial_reformatnewline+0x59>
  100757:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10075a:	0f b6 c0             	movzbl %al,%eax
  10075d:	83 ec 08             	sub    $0x8,%esp
  100760:	50                   	push   %eax
  100761:	ff 75 0c             	push   0xc(%ebp)
  100764:	e8 b0 33 00 00       	call   103b19 <outb>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10076f:	0f b6 c0             	movzbl %al,%eax
  100772:	83 ec 08             	sub    $0x8,%esp
  100775:	50                   	push   %eax
  100776:	ff 75 0c             	push   0xc(%ebp)
  100779:	e8 9b 33 00 00       	call   103b19 <outb>
  10077e:	83 c4 10             	add    $0x10,%esp
  100781:	b8 01 00 00 00       	mov    $0x1,%eax
  100786:	eb 05                	jmp    10078d <serial_reformatnewline+0x5e>
  100788:	b8 00 00 00 00       	mov    $0x0,%eax
  10078d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100790:	c9                   	leave
  100791:	c3                   	ret

00100792 <serial_putc>:
  100792:	55                   	push   %ebp
  100793:	89 e5                	mov    %esp,%ebp
  100795:	53                   	push   %ebx
  100796:	83 ec 24             	sub    $0x24,%esp
  100799:	e8 22 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10079e:	81 c3 56 c8 00 00    	add    $0xc856,%ebx
  1007a4:	8b 45 08             	mov    0x8(%ebp),%eax
  1007a7:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1007aa:	0f b6 83 4c 66 00 00 	movzbl 0x664c(%ebx),%eax
  1007b1:	84 c0                	test   %al,%al
  1007b3:	74 68                	je     10081d <serial_putc+0x8b>
  1007b5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1007bc:	eb 09                	jmp    1007c7 <serial_putc+0x35>
  1007be:	e8 93 fe ff ff       	call   100656 <delay>
  1007c3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1007c7:	83 ec 0c             	sub    $0xc,%esp
  1007ca:	68 fd 03 00 00       	push   $0x3fd
  1007cf:	e8 f6 32 00 00       	call   103aca <inb>
  1007d4:	83 c4 10             	add    $0x10,%esp
  1007d7:	0f b6 c0             	movzbl %al,%eax
  1007da:	83 e0 20             	and    $0x20,%eax
  1007dd:	85 c0                	test   %eax,%eax
  1007df:	75 09                	jne    1007ea <serial_putc+0x58>
  1007e1:	81 7d f4 ff 31 00 00 	cmpl   $0x31ff,-0xc(%ebp)
  1007e8:	7e d4                	jle    1007be <serial_putc+0x2c>
  1007ea:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
  1007ee:	83 ec 08             	sub    $0x8,%esp
  1007f1:	68 f8 03 00 00       	push   $0x3f8
  1007f6:	50                   	push   %eax
  1007f7:	e8 33 ff ff ff       	call   10072f <serial_reformatnewline>
  1007fc:	83 c4 10             	add    $0x10,%esp
  1007ff:	85 c0                	test   %eax,%eax
  100801:	75 1b                	jne    10081e <serial_putc+0x8c>
  100803:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  100807:	0f b6 c0             	movzbl %al,%eax
  10080a:	83 ec 08             	sub    $0x8,%esp
  10080d:	50                   	push   %eax
  10080e:	68 f8 03 00 00       	push   $0x3f8
  100813:	e8 01 33 00 00       	call   103b19 <outb>
  100818:	83 c4 10             	add    $0x10,%esp
  10081b:	eb 01                	jmp    10081e <serial_putc+0x8c>
  10081d:	90                   	nop
  10081e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100821:	c9                   	leave
  100822:	c3                   	ret

00100823 <serial_init>:
  100823:	55                   	push   %ebp
  100824:	89 e5                	mov    %esp,%ebp
  100826:	53                   	push   %ebx
  100827:	83 ec 04             	sub    $0x4,%esp
  10082a:	e8 91 fb ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10082f:	81 c3 c5 c7 00 00    	add    $0xc7c5,%ebx
  100835:	83 ec 08             	sub    $0x8,%esp
  100838:	6a 00                	push   $0x0
  10083a:	68 f9 03 00 00       	push   $0x3f9
  10083f:	e8 d5 32 00 00       	call   103b19 <outb>
  100844:	83 c4 10             	add    $0x10,%esp
  100847:	83 ec 08             	sub    $0x8,%esp
  10084a:	68 80 00 00 00       	push   $0x80
  10084f:	68 fb 03 00 00       	push   $0x3fb
  100854:	e8 c0 32 00 00       	call   103b19 <outb>
  100859:	83 c4 10             	add    $0x10,%esp
  10085c:	83 ec 08             	sub    $0x8,%esp
  10085f:	6a 01                	push   $0x1
  100861:	68 f8 03 00 00       	push   $0x3f8
  100866:	e8 ae 32 00 00       	call   103b19 <outb>
  10086b:	83 c4 10             	add    $0x10,%esp
  10086e:	83 ec 08             	sub    $0x8,%esp
  100871:	6a 00                	push   $0x0
  100873:	68 f9 03 00 00       	push   $0x3f9
  100878:	e8 9c 32 00 00       	call   103b19 <outb>
  10087d:	83 c4 10             	add    $0x10,%esp
  100880:	83 ec 08             	sub    $0x8,%esp
  100883:	6a 03                	push   $0x3
  100885:	68 fb 03 00 00       	push   $0x3fb
  10088a:	e8 8a 32 00 00       	call   103b19 <outb>
  10088f:	83 c4 10             	add    $0x10,%esp
  100892:	83 ec 08             	sub    $0x8,%esp
  100895:	68 c7 00 00 00       	push   $0xc7
  10089a:	68 fa 03 00 00       	push   $0x3fa
  10089f:	e8 75 32 00 00       	call   103b19 <outb>
  1008a4:	83 c4 10             	add    $0x10,%esp
  1008a7:	83 ec 08             	sub    $0x8,%esp
  1008aa:	6a 0b                	push   $0xb
  1008ac:	68 fc 03 00 00       	push   $0x3fc
  1008b1:	e8 63 32 00 00       	call   103b19 <outb>
  1008b6:	83 c4 10             	add    $0x10,%esp
  1008b9:	83 ec 0c             	sub    $0xc,%esp
  1008bc:	68 fd 03 00 00       	push   $0x3fd
  1008c1:	e8 04 32 00 00       	call   103aca <inb>
  1008c6:	83 c4 10             	add    $0x10,%esp
  1008c9:	3c ff                	cmp    $0xff,%al
  1008cb:	0f 95 c0             	setne  %al
  1008ce:	88 83 4c 66 00 00    	mov    %al,0x664c(%ebx)
  1008d4:	83 ec 0c             	sub    $0xc,%esp
  1008d7:	68 fa 03 00 00       	push   $0x3fa
  1008dc:	e8 e9 31 00 00       	call   103aca <inb>
  1008e1:	83 c4 10             	add    $0x10,%esp
  1008e4:	83 ec 0c             	sub    $0xc,%esp
  1008e7:	68 f8 03 00 00       	push   $0x3f8
  1008ec:	e8 d9 31 00 00       	call   103aca <inb>
  1008f1:	83 c4 10             	add    $0x10,%esp
  1008f4:	90                   	nop
  1008f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1008f8:	c9                   	leave
  1008f9:	c3                   	ret

001008fa <serial_intenable>:
  1008fa:	55                   	push   %ebp
  1008fb:	89 e5                	mov    %esp,%ebp
  1008fd:	53                   	push   %ebx
  1008fe:	83 ec 04             	sub    $0x4,%esp
  100901:	e8 b2 fa ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100906:	05 ee c6 00 00       	add    $0xc6ee,%eax
  10090b:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100912:	84 d2                	test   %dl,%dl
  100914:	74 19                	je     10092f <serial_intenable+0x35>
  100916:	83 ec 08             	sub    $0x8,%esp
  100919:	6a 01                	push   $0x1
  10091b:	68 f9 03 00 00       	push   $0x3f9
  100920:	89 c3                	mov    %eax,%ebx
  100922:	e8 f2 31 00 00       	call   103b19 <outb>
  100927:	83 c4 10             	add    $0x10,%esp
  10092a:	e8 ca fd ff ff       	call   1006f9 <serial_intr>
  10092f:	90                   	nop
  100930:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100933:	c9                   	leave
  100934:	c3                   	ret

00100935 <kbd_proc_data>:
  100935:	55                   	push   %ebp
  100936:	89 e5                	mov    %esp,%ebp
  100938:	53                   	push   %ebx
  100939:	83 ec 14             	sub    $0x14,%esp
  10093c:	e8 7f fa ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100941:	81 c3 b3 c6 00 00    	add    $0xc6b3,%ebx
  100947:	83 ec 0c             	sub    $0xc,%esp
  10094a:	6a 64                	push   $0x64
  10094c:	e8 79 31 00 00       	call   103aca <inb>
  100951:	83 c4 10             	add    $0x10,%esp
  100954:	0f b6 c0             	movzbl %al,%eax
  100957:	83 e0 01             	and    $0x1,%eax
  10095a:	85 c0                	test   %eax,%eax
  10095c:	75 0a                	jne    100968 <kbd_proc_data+0x33>
  10095e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100963:	e9 69 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100968:	83 ec 0c             	sub    $0xc,%esp
  10096b:	6a 60                	push   $0x60
  10096d:	e8 58 31 00 00       	call   103aca <inb>
  100972:	83 c4 10             	add    $0x10,%esp
  100975:	88 45 f3             	mov    %al,-0xd(%ebp)
  100978:	80 7d f3 e0          	cmpb   $0xe0,-0xd(%ebp)
  10097c:	75 19                	jne    100997 <kbd_proc_data+0x62>
  10097e:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100984:	83 c8 40             	or     $0x40,%eax
  100987:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  10098d:	b8 00 00 00 00       	mov    $0x0,%eax
  100992:	e9 3a 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100997:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  10099b:	84 c0                	test   %al,%al
  10099d:	79 4b                	jns    1009ea <kbd_proc_data+0xb5>
  10099f:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009a5:	83 e0 40             	and    $0x40,%eax
  1009a8:	85 c0                	test   %eax,%eax
  1009aa:	75 09                	jne    1009b5 <kbd_proc_data+0x80>
  1009ac:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b0:	83 e0 7f             	and    $0x7f,%eax
  1009b3:	eb 04                	jmp    1009b9 <kbd_proc_data+0x84>
  1009b5:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b9:	88 45 f3             	mov    %al,-0xd(%ebp)
  1009bc:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009c0:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  1009c7:	00 
  1009c8:	83 c8 40             	or     $0x40,%eax
  1009cb:	0f b6 c0             	movzbl %al,%eax
  1009ce:	f7 d0                	not    %eax
  1009d0:	89 c2                	mov    %eax,%edx
  1009d2:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009d8:	21 d0                	and    %edx,%eax
  1009da:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  1009e0:	b8 00 00 00 00       	mov    $0x0,%eax
  1009e5:	e9 e7 00 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  1009ea:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009f0:	83 e0 40             	and    $0x40,%eax
  1009f3:	85 c0                	test   %eax,%eax
  1009f5:	74 13                	je     100a0a <kbd_proc_data+0xd5>
  1009f7:	80 4d f3 80          	orb    $0x80,-0xd(%ebp)
  1009fb:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a01:	83 e0 bf             	and    $0xffffffbf,%eax
  100a04:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a0a:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a0e:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  100a15:	00 
  100a16:	0f b6 d0             	movzbl %al,%edx
  100a19:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a1f:	09 d0                	or     %edx,%eax
  100a21:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a27:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a2b:	0f b6 84 03 0c 01 00 	movzbl 0x10c(%ebx,%eax,1),%eax
  100a32:	00 
  100a33:	0f b6 d0             	movzbl %al,%edx
  100a36:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a3c:	31 d0                	xor    %edx,%eax
  100a3e:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a44:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a4a:	83 e0 03             	and    $0x3,%eax
  100a4d:	8b 94 83 0c 05 00 00 	mov    0x50c(%ebx,%eax,4),%edx
  100a54:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a58:	01 d0                	add    %edx,%eax
  100a5a:	0f b6 00             	movzbl (%eax),%eax
  100a5d:	0f b6 c0             	movzbl %al,%eax
  100a60:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100a63:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a69:	83 e0 08             	and    $0x8,%eax
  100a6c:	85 c0                	test   %eax,%eax
  100a6e:	74 22                	je     100a92 <kbd_proc_data+0x15d>
  100a70:	83 7d f4 60          	cmpl   $0x60,-0xc(%ebp)
  100a74:	7e 0c                	jle    100a82 <kbd_proc_data+0x14d>
  100a76:	83 7d f4 7a          	cmpl   $0x7a,-0xc(%ebp)
  100a7a:	7f 06                	jg     100a82 <kbd_proc_data+0x14d>
  100a7c:	83 6d f4 20          	subl   $0x20,-0xc(%ebp)
  100a80:	eb 10                	jmp    100a92 <kbd_proc_data+0x15d>
  100a82:	83 7d f4 40          	cmpl   $0x40,-0xc(%ebp)
  100a86:	7e 0a                	jle    100a92 <kbd_proc_data+0x15d>
  100a88:	83 7d f4 5a          	cmpl   $0x5a,-0xc(%ebp)
  100a8c:	7f 04                	jg     100a92 <kbd_proc_data+0x15d>
  100a8e:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  100a92:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a98:	f7 d0                	not    %eax
  100a9a:	83 e0 06             	and    $0x6,%eax
  100a9d:	85 c0                	test   %eax,%eax
  100a9f:	75 2d                	jne    100ace <kbd_proc_data+0x199>
  100aa1:	81 7d f4 e9 00 00 00 	cmpl   $0xe9,-0xc(%ebp)
  100aa8:	75 24                	jne    100ace <kbd_proc_data+0x199>
  100aaa:	83 ec 0c             	sub    $0xc,%esp
  100aad:	8d 83 2d b0 ff ff    	lea    -0x4fd3(%ebx),%eax
  100ab3:	50                   	push   %eax
  100ab4:	e8 b3 22 00 00       	call   102d6c <dprintf>
  100ab9:	83 c4 10             	add    $0x10,%esp
  100abc:	83 ec 08             	sub    $0x8,%esp
  100abf:	6a 03                	push   $0x3
  100ac1:	68 92 00 00 00       	push   $0x92
  100ac6:	e8 4e 30 00 00       	call   103b19 <outb>
  100acb:	83 c4 10             	add    $0x10,%esp
  100ace:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ad1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100ad4:	c9                   	leave
  100ad5:	c3                   	ret

00100ad6 <keyboard_intr>:
  100ad6:	55                   	push   %ebp
  100ad7:	89 e5                	mov    %esp,%ebp
  100ad9:	53                   	push   %ebx
  100ada:	83 ec 04             	sub    $0x4,%esp
  100add:	e8 d6 f8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100ae2:	05 12 c5 00 00       	add    $0xc512,%eax
  100ae7:	83 ec 0c             	sub    $0xc,%esp
  100aea:	8d 90 41 39 ff ff    	lea    -0xc6bf(%eax),%edx
  100af0:	52                   	push   %edx
  100af1:	89 c3                	mov    %eax,%ebx
  100af3:	e8 07 f9 ff ff       	call   1003ff <cons_intr>
  100af8:	83 c4 10             	add    $0x10,%esp
  100afb:	90                   	nop
  100afc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100aff:	c9                   	leave
  100b00:	c3                   	ret

00100b01 <devinit>:
  100b01:	55                   	push   %ebp
  100b02:	89 e5                	mov    %esp,%ebp
  100b04:	53                   	push   %ebx
  100b05:	83 ec 04             	sub    $0x4,%esp
  100b08:	e8 b3 f8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100b0d:	81 c3 e7 c4 00 00    	add    $0xc4e7,%ebx
  100b13:	e8 4c 27 00 00       	call   103264 <seg_init>
  100b18:	e8 f1 2d 00 00       	call   10390e <enable_sse>
  100b1d:	e8 a2 f8 ff ff       	call   1003c4 <cons_init>
  100b22:	83 ec 04             	sub    $0x4,%esp
  100b25:	8d 83 39 b0 ff ff    	lea    -0x4fc7(%ebx),%eax
  100b2b:	50                   	push   %eax
  100b2c:	6a 12                	push   $0x12
  100b2e:	8d 83 4c b0 ff ff    	lea    -0x4fb4(%ebx),%eax
  100b34:	50                   	push   %eax
  100b35:	e8 5f 1f 00 00       	call   102a99 <debug_normal>
  100b3a:	83 c4 10             	add    $0x10,%esp
  100b3d:	ff 75 08             	push   0x8(%ebp)
  100b40:	8d 83 5f b0 ff ff    	lea    -0x4fa1(%ebx),%eax
  100b46:	50                   	push   %eax
  100b47:	6a 13                	push   $0x13
  100b49:	8d 83 4c b0 ff ff    	lea    -0x4fb4(%ebx),%eax
  100b4f:	50                   	push   %eax
  100b50:	e8 44 1f 00 00       	call   102a99 <debug_normal>
  100b55:	83 c4 10             	add    $0x10,%esp
  100b58:	e8 76 1a 00 00       	call   1025d3 <intr_init>
  100b5d:	83 ec 0c             	sub    $0xc,%esp
  100b60:	ff 75 08             	push   0x8(%ebp)
  100b63:	e8 a2 03 00 00       	call   100f0a <pmmap_init>
  100b68:	83 c4 10             	add    $0x10,%esp
  100b6b:	90                   	nop
  100b6c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100b6f:	c9                   	leave
  100b70:	c3                   	ret

00100b71 <pmmap_alloc_slot>:
  100b71:	55                   	push   %ebp
  100b72:	89 e5                	mov    %esp,%ebp
  100b74:	e8 43 f8 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  100b79:	81 c2 7b c4 00 00    	add    $0xc47b,%edx
  100b7f:	8b 82 6c 70 00 00    	mov    0x706c(%edx),%eax
  100b85:	3d 80 00 00 00       	cmp    $0x80,%eax
  100b8a:	0f 94 c0             	sete   %al
  100b8d:	0f b6 c0             	movzbl %al,%eax
  100b90:	85 c0                	test   %eax,%eax
  100b92:	74 07                	je     100b9b <pmmap_alloc_slot+0x2a>
  100b94:	b8 00 00 00 00       	mov    $0x0,%eax
  100b99:	eb 21                	jmp    100bbc <pmmap_alloc_slot+0x4b>
  100b9b:	8b 8a 6c 70 00 00    	mov    0x706c(%edx),%ecx
  100ba1:	8d 41 01             	lea    0x1(%ecx),%eax
  100ba4:	89 82 6c 70 00 00    	mov    %eax,0x706c(%edx)
  100baa:	89 c8                	mov    %ecx,%eax
  100bac:	c1 e0 02             	shl    $0x2,%eax
  100baf:	01 c8                	add    %ecx,%eax
  100bb1:	c1 e0 02             	shl    $0x2,%eax
  100bb4:	8d 92 6c 66 00 00    	lea    0x666c(%edx),%edx
  100bba:	01 d0                	add    %edx,%eax
  100bbc:	5d                   	pop    %ebp
  100bbd:	c3                   	ret

00100bbe <pmmap_insert>:
  100bbe:	55                   	push   %ebp
  100bbf:	89 e5                	mov    %esp,%ebp
  100bc1:	53                   	push   %ebx
  100bc2:	83 ec 14             	sub    $0x14,%esp
  100bc5:	e8 f6 f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100bca:	81 c3 2a c4 00 00    	add    $0xc42a,%ebx
  100bd0:	e8 9c ff ff ff       	call   100b71 <pmmap_alloc_slot>
  100bd5:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100bd8:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100bdc:	75 1b                	jne    100bf9 <pmmap_insert+0x3b>
  100bde:	83 ec 04             	sub    $0x4,%esp
  100be1:	8d 83 78 b0 ff ff    	lea    -0x4f88(%ebx),%eax
  100be7:	50                   	push   %eax
  100be8:	6a 3c                	push   $0x3c
  100bea:	8d 83 95 b0 ff ff    	lea    -0x4f6b(%ebx),%eax
  100bf0:	50                   	push   %eax
  100bf1:	e8 5e 1f 00 00       	call   102b54 <debug_panic>
  100bf6:	83 c4 10             	add    $0x10,%esp
  100bf9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100bfc:	8b 55 08             	mov    0x8(%ebp),%edx
  100bff:	89 10                	mov    %edx,(%eax)
  100c01:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c04:	8b 55 0c             	mov    0xc(%ebp),%edx
  100c07:	89 50 04             	mov    %edx,0x4(%eax)
  100c0a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c0d:	8b 55 10             	mov    0x10(%ebp),%edx
  100c10:	89 50 08             	mov    %edx,0x8(%eax)
  100c13:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100c1a:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100c20:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c23:	eb 19                	jmp    100c3e <pmmap_insert+0x80>
  100c25:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c28:	8b 00                	mov    (%eax),%eax
  100c2a:	39 45 08             	cmp    %eax,0x8(%ebp)
  100c2d:	72 17                	jb     100c46 <pmmap_insert+0x88>
  100c2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c32:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c35:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c38:	8b 40 0c             	mov    0xc(%eax),%eax
  100c3b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c3e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100c42:	75 e1                	jne    100c25 <pmmap_insert+0x67>
  100c44:	eb 01                	jmp    100c47 <pmmap_insert+0x89>
  100c46:	90                   	nop
  100c47:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100c4b:	75 17                	jne    100c64 <pmmap_insert+0xa6>
  100c4d:	8b 93 70 70 00 00    	mov    0x7070(%ebx),%edx
  100c53:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c56:	89 50 0c             	mov    %edx,0xc(%eax)
  100c59:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c5c:	89 83 70 70 00 00    	mov    %eax,0x7070(%ebx)
  100c62:	eb 15                	jmp    100c79 <pmmap_insert+0xbb>
  100c64:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c67:	8b 50 0c             	mov    0xc(%eax),%edx
  100c6a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c6d:	89 50 0c             	mov    %edx,0xc(%eax)
  100c70:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c73:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100c76:	89 50 0c             	mov    %edx,0xc(%eax)
  100c79:	90                   	nop
  100c7a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100c7d:	c9                   	leave
  100c7e:	c3                   	ret

00100c7f <pmmap_merge>:
  100c7f:	55                   	push   %ebp
  100c80:	89 e5                	mov    %esp,%ebp
  100c82:	53                   	push   %ebx
  100c83:	83 ec 24             	sub    $0x24,%esp
  100c86:	e8 35 f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100c8b:	81 c3 69 c3 00 00    	add    $0xc369,%ebx
  100c91:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  100c98:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  100c9f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  100ca6:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  100cad:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100cb3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100cb6:	eb 73                	jmp    100d2b <pmmap_merge+0xac>
  100cb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cbb:	8b 40 0c             	mov    0xc(%eax),%eax
  100cbe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100cc1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100cc5:	74 6c                	je     100d33 <pmmap_merge+0xb4>
  100cc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cca:	8b 00                	mov    (%eax),%eax
  100ccc:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100ccf:	8b 12                	mov    (%edx),%edx
  100cd1:	39 c2                	cmp    %eax,%edx
  100cd3:	72 4d                	jb     100d22 <pmmap_merge+0xa3>
  100cd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cd8:	8b 50 04             	mov    0x4(%eax),%edx
  100cdb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cde:	8b 00                	mov    (%eax),%eax
  100ce0:	39 c2                	cmp    %eax,%edx
  100ce2:	72 3e                	jb     100d22 <pmmap_merge+0xa3>
  100ce4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ce7:	8b 50 08             	mov    0x8(%eax),%edx
  100cea:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100ced:	8b 40 08             	mov    0x8(%eax),%eax
  100cf0:	39 c2                	cmp    %eax,%edx
  100cf2:	75 2e                	jne    100d22 <pmmap_merge+0xa3>
  100cf4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cf7:	8b 50 04             	mov    0x4(%eax),%edx
  100cfa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cfd:	8b 40 04             	mov    0x4(%eax),%eax
  100d00:	83 ec 08             	sub    $0x8,%esp
  100d03:	52                   	push   %edx
  100d04:	50                   	push   %eax
  100d05:	e8 c7 2a 00 00       	call   1037d1 <max>
  100d0a:	83 c4 10             	add    $0x10,%esp
  100d0d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d10:	89 42 04             	mov    %eax,0x4(%edx)
  100d13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d16:	8b 40 0c             	mov    0xc(%eax),%eax
  100d19:	8b 50 0c             	mov    0xc(%eax),%edx
  100d1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d1f:	89 50 0c             	mov    %edx,0xc(%eax)
  100d22:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d25:	8b 40 0c             	mov    0xc(%eax),%eax
  100d28:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d2b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100d2f:	75 87                	jne    100cb8 <pmmap_merge+0x39>
  100d31:	eb 01                	jmp    100d34 <pmmap_merge+0xb5>
  100d33:	90                   	nop
  100d34:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100d3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d3d:	e9 cf 00 00 00       	jmp    100e11 <pmmap_merge+0x192>
  100d42:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d45:	8b 40 08             	mov    0x8(%eax),%eax
  100d48:	83 f8 01             	cmp    $0x1,%eax
  100d4b:	74 3d                	je     100d8a <pmmap_merge+0x10b>
  100d4d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d50:	8b 40 08             	mov    0x8(%eax),%eax
  100d53:	83 f8 02             	cmp    $0x2,%eax
  100d56:	74 2b                	je     100d83 <pmmap_merge+0x104>
  100d58:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d5b:	8b 40 08             	mov    0x8(%eax),%eax
  100d5e:	83 f8 03             	cmp    $0x3,%eax
  100d61:	74 19                	je     100d7c <pmmap_merge+0xfd>
  100d63:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d66:	8b 40 08             	mov    0x8(%eax),%eax
  100d69:	83 f8 04             	cmp    $0x4,%eax
  100d6c:	75 07                	jne    100d75 <pmmap_merge+0xf6>
  100d6e:	b8 03 00 00 00       	mov    $0x3,%eax
  100d73:	eb 1a                	jmp    100d8f <pmmap_merge+0x110>
  100d75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100d7a:	eb 13                	jmp    100d8f <pmmap_merge+0x110>
  100d7c:	b8 02 00 00 00       	mov    $0x2,%eax
  100d81:	eb 0c                	jmp    100d8f <pmmap_merge+0x110>
  100d83:	b8 01 00 00 00       	mov    $0x1,%eax
  100d88:	eb 05                	jmp    100d8f <pmmap_merge+0x110>
  100d8a:	b8 00 00 00 00       	mov    $0x0,%eax
  100d8f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100d92:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
  100d96:	75 1f                	jne    100db7 <pmmap_merge+0x138>
  100d98:	8d 83 a6 b0 ff ff    	lea    -0x4f5a(%ebx),%eax
  100d9e:	50                   	push   %eax
  100d9f:	8d 83 b7 b0 ff ff    	lea    -0x4f49(%ebx),%eax
  100da5:	50                   	push   %eax
  100da6:	6a 6b                	push   $0x6b
  100da8:	8d 83 95 b0 ff ff    	lea    -0x4f6b(%ebx),%eax
  100dae:	50                   	push   %eax
  100daf:	e8 a0 1d 00 00       	call   102b54 <debug_panic>
  100db4:	83 c4 10             	add    $0x10,%esp
  100db7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dba:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dbe:	85 c0                	test   %eax,%eax
  100dc0:	74 1f                	je     100de1 <pmmap_merge+0x162>
  100dc2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dc5:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dc9:	8b 50 10             	mov    0x10(%eax),%edx
  100dcc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dcf:	89 50 10             	mov    %edx,0x10(%eax)
  100dd2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dd5:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dd9:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ddc:	89 50 10             	mov    %edx,0x10(%eax)
  100ddf:	eb 1d                	jmp    100dfe <pmmap_merge+0x17f>
  100de1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100de4:	8b 94 83 74 70 00 00 	mov    0x7074(%ebx,%eax,4),%edx
  100deb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dee:	89 50 10             	mov    %edx,0x10(%eax)
  100df1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100df4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100df7:	89 94 83 74 70 00 00 	mov    %edx,0x7074(%ebx,%eax,4)
  100dfe:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e01:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100e04:	89 54 85 dc          	mov    %edx,-0x24(%ebp,%eax,4)
  100e08:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e0b:	8b 40 0c             	mov    0xc(%eax),%eax
  100e0e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e11:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100e15:	0f 85 27 ff ff ff    	jne    100d42 <pmmap_merge+0xc3>
  100e1b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e1e:	85 c0                	test   %eax,%eax
  100e20:	74 0c                	je     100e2e <pmmap_merge+0x1af>
  100e22:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e25:	8b 40 04             	mov    0x4(%eax),%eax
  100e28:	89 83 84 70 00 00    	mov    %eax,0x7084(%ebx)
  100e2e:	90                   	nop
  100e2f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e32:	c9                   	leave
  100e33:	c3                   	ret

00100e34 <pmmap_dump>:
  100e34:	55                   	push   %ebp
  100e35:	89 e5                	mov    %esp,%ebp
  100e37:	53                   	push   %ebx
  100e38:	83 ec 14             	sub    $0x14,%esp
  100e3b:	e8 80 f5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100e40:	81 c3 b4 c1 00 00    	add    $0xc1b4,%ebx
  100e46:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100e4c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e4f:	e9 a5 00 00 00       	jmp    100ef9 <pmmap_dump+0xc5>
  100e54:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e57:	8b 40 08             	mov    0x8(%eax),%eax
  100e5a:	83 f8 01             	cmp    $0x1,%eax
  100e5d:	74 41                	je     100ea0 <pmmap_dump+0x6c>
  100e5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e62:	8b 40 08             	mov    0x8(%eax),%eax
  100e65:	83 f8 02             	cmp    $0x2,%eax
  100e68:	74 2e                	je     100e98 <pmmap_dump+0x64>
  100e6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e6d:	8b 40 08             	mov    0x8(%eax),%eax
  100e70:	83 f8 03             	cmp    $0x3,%eax
  100e73:	74 1b                	je     100e90 <pmmap_dump+0x5c>
  100e75:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e78:	8b 40 08             	mov    0x8(%eax),%eax
  100e7b:	83 f8 04             	cmp    $0x4,%eax
  100e7e:	75 08                	jne    100e88 <pmmap_dump+0x54>
  100e80:	8d 83 d4 b0 ff ff    	lea    -0x4f2c(%ebx),%eax
  100e86:	eb 1e                	jmp    100ea6 <pmmap_dump+0x72>
  100e88:	8d 83 dd b0 ff ff    	lea    -0x4f23(%ebx),%eax
  100e8e:	eb 16                	jmp    100ea6 <pmmap_dump+0x72>
  100e90:	8d 83 e5 b0 ff ff    	lea    -0x4f1b(%ebx),%eax
  100e96:	eb 0e                	jmp    100ea6 <pmmap_dump+0x72>
  100e98:	8d 83 ef b0 ff ff    	lea    -0x4f11(%ebx),%eax
  100e9e:	eb 06                	jmp    100ea6 <pmmap_dump+0x72>
  100ea0:	8d 83 f8 b0 ff ff    	lea    -0x4f08(%ebx),%eax
  100ea6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ea9:	8b 0a                	mov    (%edx),%ecx
  100eab:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eae:	8b 52 04             	mov    0x4(%edx),%edx
  100eb1:	39 d1                	cmp    %edx,%ecx
  100eb3:	75 08                	jne    100ebd <pmmap_dump+0x89>
  100eb5:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eb8:	8b 52 04             	mov    0x4(%edx),%edx
  100ebb:	eb 1c                	jmp    100ed9 <pmmap_dump+0xa5>
  100ebd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ec0:	8b 52 04             	mov    0x4(%edx),%edx
  100ec3:	83 fa ff             	cmp    $0xffffffff,%edx
  100ec6:	75 08                	jne    100ed0 <pmmap_dump+0x9c>
  100ec8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ecb:	8b 52 04             	mov    0x4(%edx),%edx
  100ece:	eb 09                	jmp    100ed9 <pmmap_dump+0xa5>
  100ed0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ed3:	8b 52 04             	mov    0x4(%edx),%edx
  100ed6:	83 ea 01             	sub    $0x1,%edx
  100ed9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100edc:	8b 09                	mov    (%ecx),%ecx
  100ede:	50                   	push   %eax
  100edf:	52                   	push   %edx
  100ee0:	51                   	push   %ecx
  100ee1:	8d 83 00 b1 ff ff    	lea    -0x4f00(%ebx),%eax
  100ee7:	50                   	push   %eax
  100ee8:	e8 7b 1b 00 00       	call   102a68 <debug_info>
  100eed:	83 c4 10             	add    $0x10,%esp
  100ef0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ef3:	8b 40 0c             	mov    0xc(%eax),%eax
  100ef6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ef9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100efd:	0f 85 51 ff ff ff    	jne    100e54 <pmmap_dump+0x20>
  100f03:	90                   	nop
  100f04:	90                   	nop
  100f05:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100f08:	c9                   	leave
  100f09:	c3                   	ret

00100f0a <pmmap_init>:
  100f0a:	55                   	push   %ebp
  100f0b:	89 e5                	mov    %esp,%ebp
  100f0d:	53                   	push   %ebx
  100f0e:	83 ec 24             	sub    $0x24,%esp
  100f11:	e8 aa f4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100f16:	81 c3 de c0 00 00    	add    $0xc0de,%ebx
  100f1c:	83 ec 0c             	sub    $0xc,%esp
  100f1f:	8d 83 21 b1 ff ff    	lea    -0x4edf(%ebx),%eax
  100f25:	50                   	push   %eax
  100f26:	e8 3d 1b 00 00       	call   102a68 <debug_info>
  100f2b:	83 c4 10             	add    $0x10,%esp
  100f2e:	8b 45 08             	mov    0x8(%ebp),%eax
  100f31:	89 45 e8             	mov    %eax,-0x18(%ebp)
  100f34:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100f37:	8b 40 30             	mov    0x30(%eax),%eax
  100f3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f3d:	c7 83 70 70 00 00 00 	movl   $0x0,0x7070(%ebx)
  100f44:	00 00 00 
  100f47:	c7 83 74 70 00 00 00 	movl   $0x0,0x7074(%ebx)
  100f4e:	00 00 00 
  100f51:	c7 83 78 70 00 00 00 	movl   $0x0,0x7078(%ebx)
  100f58:	00 00 00 
  100f5b:	c7 83 7c 70 00 00 00 	movl   $0x0,0x707c(%ebx)
  100f62:	00 00 00 
  100f65:	c7 83 80 70 00 00 00 	movl   $0x0,0x7080(%ebx)
  100f6c:	00 00 00 
  100f6f:	eb 6c                	jmp    100fdd <pmmap_init+0xd3>
  100f71:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f74:	8b 40 08             	mov    0x8(%eax),%eax
  100f77:	85 c0                	test   %eax,%eax
  100f79:	75 58                	jne    100fd3 <pmmap_init+0xc9>
  100f7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f7e:	8b 40 04             	mov    0x4(%eax),%eax
  100f81:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100f84:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f87:	8b 40 10             	mov    0x10(%eax),%eax
  100f8a:	85 c0                	test   %eax,%eax
  100f8c:	75 0f                	jne    100f9d <pmmap_init+0x93>
  100f8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f91:	8b 50 0c             	mov    0xc(%eax),%edx
  100f94:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100f97:	f7 d0                	not    %eax
  100f99:	39 c2                	cmp    %eax,%edx
  100f9b:	72 09                	jb     100fa6 <pmmap_init+0x9c>
  100f9d:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
  100fa4:	eb 0e                	jmp    100fb4 <pmmap_init+0xaa>
  100fa6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fa9:	8b 50 0c             	mov    0xc(%eax),%edx
  100fac:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100faf:	01 d0                	add    %edx,%eax
  100fb1:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100fb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fb7:	8b 40 14             	mov    0x14(%eax),%eax
  100fba:	89 45 e0             	mov    %eax,-0x20(%ebp)
  100fbd:	83 ec 04             	sub    $0x4,%esp
  100fc0:	ff 75 e0             	push   -0x20(%ebp)
  100fc3:	ff 75 f0             	push   -0x10(%ebp)
  100fc6:	ff 75 e4             	push   -0x1c(%ebp)
  100fc9:	e8 f0 fb ff ff       	call   100bbe <pmmap_insert>
  100fce:	83 c4 10             	add    $0x10,%esp
  100fd1:	eb 01                	jmp    100fd4 <pmmap_init+0xca>
  100fd3:	90                   	nop
  100fd4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fd7:	83 c0 18             	add    $0x18,%eax
  100fda:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100fdd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100fe0:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100fe3:	8b 40 30             	mov    0x30(%eax),%eax
  100fe6:	29 c2                	sub    %eax,%edx
  100fe8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100feb:	8b 40 2c             	mov    0x2c(%eax),%eax
  100fee:	39 c2                	cmp    %eax,%edx
  100ff0:	0f 82 7b ff ff ff    	jb     100f71 <pmmap_init+0x67>
  100ff6:	e8 84 fc ff ff       	call   100c7f <pmmap_merge>
  100ffb:	e8 34 fe ff ff       	call   100e34 <pmmap_dump>
  101000:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  101006:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101009:	eb 18                	jmp    101023 <pmmap_init+0x119>
  10100b:	8b 83 8c 70 00 00    	mov    0x708c(%ebx),%eax
  101011:	83 c0 01             	add    $0x1,%eax
  101014:	89 83 8c 70 00 00    	mov    %eax,0x708c(%ebx)
  10101a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10101d:	8b 40 0c             	mov    0xc(%eax),%eax
  101020:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101023:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  101027:	75 e2                	jne    10100b <pmmap_init+0x101>
  101029:	8b 83 84 70 00 00    	mov    0x7084(%ebx),%eax
  10102f:	83 ec 08             	sub    $0x8,%esp
  101032:	68 00 10 00 00       	push   $0x1000
  101037:	50                   	push   %eax
  101038:	e8 c8 27 00 00       	call   103805 <rounddown>
  10103d:	83 c4 10             	add    $0x10,%esp
  101040:	c1 e8 0c             	shr    $0xc,%eax
  101043:	89 83 88 70 00 00    	mov    %eax,0x7088(%ebx)
  101049:	90                   	nop
  10104a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10104d:	c9                   	leave
  10104e:	c3                   	ret

0010104f <get_size>:
  10104f:	55                   	push   %ebp
  101050:	89 e5                	mov    %esp,%ebp
  101052:	e8 61 f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101057:	05 9d bf 00 00       	add    $0xbf9d,%eax
  10105c:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  101062:	5d                   	pop    %ebp
  101063:	c3                   	ret

00101064 <get_mms>:
  101064:	55                   	push   %ebp
  101065:	89 e5                	mov    %esp,%ebp
  101067:	83 ec 10             	sub    $0x10,%esp
  10106a:	e8 49 f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10106f:	05 85 bf 00 00       	add    $0xbf85,%eax
  101074:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10107b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101082:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  101088:	89 55 f8             	mov    %edx,-0x8(%ebp)
  10108b:	eb 15                	jmp    1010a2 <get_mms+0x3e>
  10108d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101090:	3b 55 08             	cmp    0x8(%ebp),%edx
  101093:	74 15                	je     1010aa <get_mms+0x46>
  101095:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101099:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10109c:	8b 52 0c             	mov    0xc(%edx),%edx
  10109f:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010a2:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010a6:	75 e5                	jne    10108d <get_mms+0x29>
  1010a8:	eb 01                	jmp    1010ab <get_mms+0x47>
  1010aa:	90                   	nop
  1010ab:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010af:	74 0b                	je     1010bc <get_mms+0x58>
  1010b1:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  1010b7:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  1010ba:	75 07                	jne    1010c3 <get_mms+0x5f>
  1010bc:	b8 00 00 00 00       	mov    $0x0,%eax
  1010c1:	eb 05                	jmp    1010c8 <get_mms+0x64>
  1010c3:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1010c6:	8b 00                	mov    (%eax),%eax
  1010c8:	c9                   	leave
  1010c9:	c3                   	ret

001010ca <get_mml>:
  1010ca:	55                   	push   %ebp
  1010cb:	89 e5                	mov    %esp,%ebp
  1010cd:	83 ec 10             	sub    $0x10,%esp
  1010d0:	e8 e3 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1010d5:	05 1f bf 00 00       	add    $0xbf1f,%eax
  1010da:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1010e1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1010e8:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  1010ee:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010f1:	eb 15                	jmp    101108 <get_mml+0x3e>
  1010f3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1010f6:	3b 55 08             	cmp    0x8(%ebp),%edx
  1010f9:	74 15                	je     101110 <get_mml+0x46>
  1010fb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1010ff:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101102:	8b 52 0c             	mov    0xc(%edx),%edx
  101105:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101108:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10110c:	75 e5                	jne    1010f3 <get_mml+0x29>
  10110e:	eb 01                	jmp    101111 <get_mml+0x47>
  101110:	90                   	nop
  101111:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101115:	74 0b                	je     101122 <get_mml+0x58>
  101117:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  10111d:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101120:	75 07                	jne    101129 <get_mml+0x5f>
  101122:	ba 00 00 00 00       	mov    $0x0,%edx
  101127:	eb 0d                	jmp    101136 <get_mml+0x6c>
  101129:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10112c:	8b 50 04             	mov    0x4(%eax),%edx
  10112f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101132:	8b 00                	mov    (%eax),%eax
  101134:	29 c2                	sub    %eax,%edx
  101136:	89 d0                	mov    %edx,%eax
  101138:	c9                   	leave
  101139:	c3                   	ret

0010113a <is_usable>:
  10113a:	55                   	push   %ebp
  10113b:	89 e5                	mov    %esp,%ebp
  10113d:	83 ec 10             	sub    $0x10,%esp
  101140:	e8 73 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101145:	05 af be 00 00       	add    $0xbeaf,%eax
  10114a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101151:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101158:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  10115e:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101161:	eb 15                	jmp    101178 <is_usable+0x3e>
  101163:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101166:	3b 55 08             	cmp    0x8(%ebp),%edx
  101169:	74 15                	je     101180 <is_usable+0x46>
  10116b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10116f:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101172:	8b 52 0c             	mov    0xc(%edx),%edx
  101175:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101178:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10117c:	75 e5                	jne    101163 <is_usable+0x29>
  10117e:	eb 01                	jmp    101181 <is_usable+0x47>
  101180:	90                   	nop
  101181:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101185:	74 0b                	je     101192 <is_usable+0x58>
  101187:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  10118d:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101190:	75 07                	jne    101199 <is_usable+0x5f>
  101192:	b8 00 00 00 00       	mov    $0x0,%eax
  101197:	eb 0f                	jmp    1011a8 <is_usable+0x6e>
  101199:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10119c:	8b 40 08             	mov    0x8(%eax),%eax
  10119f:	83 f8 01             	cmp    $0x1,%eax
  1011a2:	0f 94 c0             	sete   %al
  1011a5:	0f b6 c0             	movzbl %al,%eax
  1011a8:	c9                   	leave
  1011a9:	c3                   	ret

001011aa <set_cr3>:
  1011aa:	55                   	push   %ebp
  1011ab:	89 e5                	mov    %esp,%ebp
  1011ad:	53                   	push   %ebx
  1011ae:	83 ec 04             	sub    $0x4,%esp
  1011b1:	e8 02 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1011b6:	05 3e be 00 00       	add    $0xbe3e,%eax
  1011bb:	8b 55 08             	mov    0x8(%ebp),%edx
  1011be:	83 ec 0c             	sub    $0xc,%esp
  1011c1:	52                   	push   %edx
  1011c2:	89 c3                	mov    %eax,%ebx
  1011c4:	e8 ba 28 00 00       	call   103a83 <lcr3>
  1011c9:	83 c4 10             	add    $0x10,%esp
  1011cc:	90                   	nop
  1011cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1011d0:	c9                   	leave
  1011d1:	c3                   	ret

001011d2 <enable_paging>:
  1011d2:	55                   	push   %ebp
  1011d3:	89 e5                	mov    %esp,%ebp
  1011d5:	53                   	push   %ebx
  1011d6:	83 ec 14             	sub    $0x14,%esp
  1011d9:	e8 e2 f1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1011de:	81 c3 16 be 00 00    	add    $0xbe16,%ebx
  1011e4:	e8 c6 28 00 00       	call   103aaf <rcr4>
  1011e9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1011ec:	81 4d f4 80 00 00 00 	orl    $0x80,-0xc(%ebp)
  1011f3:	83 ec 0c             	sub    $0xc,%esp
  1011f6:	ff 75 f4             	push   -0xc(%ebp)
  1011f9:	e8 9b 28 00 00       	call   103a99 <lcr4>
  1011fe:	83 c4 10             	add    $0x10,%esp
  101201:	e8 47 28 00 00       	call   103a4d <rcr0>
  101206:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101209:	81 4d f0 23 00 05 80 	orl    $0x80050023,-0x10(%ebp)
  101210:	83 65 f0 f3          	andl   $0xfffffff3,-0x10(%ebp)
  101214:	83 ec 0c             	sub    $0xc,%esp
  101217:	ff 75 f0             	push   -0x10(%ebp)
  10121a:	e8 18 28 00 00       	call   103a37 <lcr0>
  10121f:	83 c4 10             	add    $0x10,%esp
  101222:	90                   	nop
  101223:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101226:	c9                   	leave
  101227:	c3                   	ret

00101228 <intr_init_idt>:
  101228:	55                   	push   %ebp
  101229:	89 e5                	mov    %esp,%ebp
  10122b:	83 ec 10             	sub    $0x10,%esp
  10122e:	e8 85 f1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101233:	05 c1 bd 00 00       	add    $0xbdc1,%eax
  101238:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10123f:	e9 bb 00 00 00       	jmp    1012ff <intr_init_idt+0xd7>
  101244:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  10124a:	89 d1                	mov    %edx,%ecx
  10124c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10124f:	66 89 8c d0 ac 70 00 	mov    %cx,0x70ac(%eax,%edx,8)
  101256:	00 
  101257:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10125a:	66 c7 84 d0 ae 70 00 	movw   $0x8,0x70ae(%eax,%edx,8)
  101261:	00 08 00 
  101264:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101267:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  10126e:	00 
  10126f:	83 e1 e0             	and    $0xffffffe0,%ecx
  101272:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  101279:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10127c:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  101283:	00 
  101284:	83 e1 1f             	and    $0x1f,%ecx
  101287:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  10128e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101291:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  101298:	00 
  101299:	83 e1 f0             	and    $0xfffffff0,%ecx
  10129c:	83 c9 0e             	or     $0xe,%ecx
  10129f:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012a6:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012a9:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012b0:	00 
  1012b1:	83 e1 ef             	and    $0xffffffef,%ecx
  1012b4:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012bb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012be:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012c5:	00 
  1012c6:	83 e1 9f             	and    $0xffffff9f,%ecx
  1012c9:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012d0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012d3:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012da:	00 
  1012db:	83 c9 80             	or     $0xffffff80,%ecx
  1012de:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012e5:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  1012eb:	c1 ea 10             	shr    $0x10,%edx
  1012ee:	89 d1                	mov    %edx,%ecx
  1012f0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012f3:	66 89 8c d0 b2 70 00 	mov    %cx,0x70b2(%eax,%edx,8)
  1012fa:	00 
  1012fb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1012ff:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101302:	81 fa ff 00 00 00    	cmp    $0xff,%edx
  101308:	0f 86 36 ff ff ff    	jbe    101244 <intr_init_idt+0x1c>
  10130e:	c7 c2 10 26 10 00    	mov    $0x102610,%edx
  101314:	66 89 90 ac 70 00 00 	mov    %dx,0x70ac(%eax)
  10131b:	66 c7 80 ae 70 00 00 	movw   $0x8,0x70ae(%eax)
  101322:	08 00 
  101324:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  10132b:	83 e2 e0             	and    $0xffffffe0,%edx
  10132e:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101334:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  10133b:	83 e2 1f             	and    $0x1f,%edx
  10133e:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101344:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10134b:	83 e2 f0             	and    $0xfffffff0,%edx
  10134e:	83 ca 0e             	or     $0xe,%edx
  101351:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101357:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10135e:	83 e2 ef             	and    $0xffffffef,%edx
  101361:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101367:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10136e:	83 e2 9f             	and    $0xffffff9f,%edx
  101371:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101377:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10137e:	83 ca 80             	or     $0xffffff80,%edx
  101381:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101387:	c7 c2 10 26 10 00    	mov    $0x102610,%edx
  10138d:	c1 ea 10             	shr    $0x10,%edx
  101390:	66 89 90 b2 70 00 00 	mov    %dx,0x70b2(%eax)
  101397:	c7 c2 1a 26 10 00    	mov    $0x10261a,%edx
  10139d:	66 89 90 b4 70 00 00 	mov    %dx,0x70b4(%eax)
  1013a4:	66 c7 80 b6 70 00 00 	movw   $0x8,0x70b6(%eax)
  1013ab:	08 00 
  1013ad:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  1013b4:	83 e2 e0             	and    $0xffffffe0,%edx
  1013b7:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  1013bd:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  1013c4:	83 e2 1f             	and    $0x1f,%edx
  1013c7:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  1013cd:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013d4:	83 e2 f0             	and    $0xfffffff0,%edx
  1013d7:	83 ca 0e             	or     $0xe,%edx
  1013da:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  1013e0:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013e7:	83 e2 ef             	and    $0xffffffef,%edx
  1013ea:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  1013f0:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013f7:	83 e2 9f             	and    $0xffffff9f,%edx
  1013fa:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101400:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  101407:	83 ca 80             	or     $0xffffff80,%edx
  10140a:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101410:	c7 c2 1a 26 10 00    	mov    $0x10261a,%edx
  101416:	c1 ea 10             	shr    $0x10,%edx
  101419:	66 89 90 ba 70 00 00 	mov    %dx,0x70ba(%eax)
  101420:	c7 c2 24 26 10 00    	mov    $0x102624,%edx
  101426:	66 89 90 bc 70 00 00 	mov    %dx,0x70bc(%eax)
  10142d:	66 c7 80 be 70 00 00 	movw   $0x8,0x70be(%eax)
  101434:	08 00 
  101436:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  10143d:	83 e2 e0             	and    $0xffffffe0,%edx
  101440:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  101446:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  10144d:	83 e2 1f             	and    $0x1f,%edx
  101450:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  101456:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  10145d:	83 e2 f0             	and    $0xfffffff0,%edx
  101460:	83 ca 0e             	or     $0xe,%edx
  101463:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101469:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101470:	83 e2 ef             	and    $0xffffffef,%edx
  101473:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101479:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101480:	83 e2 9f             	and    $0xffffff9f,%edx
  101483:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101489:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101490:	83 ca 80             	or     $0xffffff80,%edx
  101493:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101499:	c7 c2 24 26 10 00    	mov    $0x102624,%edx
  10149f:	c1 ea 10             	shr    $0x10,%edx
  1014a2:	66 89 90 c2 70 00 00 	mov    %dx,0x70c2(%eax)
  1014a9:	c7 c2 2e 26 10 00    	mov    $0x10262e,%edx
  1014af:	66 89 90 c4 70 00 00 	mov    %dx,0x70c4(%eax)
  1014b6:	66 c7 80 c6 70 00 00 	movw   $0x8,0x70c6(%eax)
  1014bd:	08 00 
  1014bf:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  1014c6:	83 e2 e0             	and    $0xffffffe0,%edx
  1014c9:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  1014cf:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  1014d6:	83 e2 1f             	and    $0x1f,%edx
  1014d9:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  1014df:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  1014e6:	83 e2 f0             	and    $0xfffffff0,%edx
  1014e9:	83 ca 0e             	or     $0xe,%edx
  1014ec:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  1014f2:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  1014f9:	83 e2 ef             	and    $0xffffffef,%edx
  1014fc:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101502:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  101509:	83 ca 60             	or     $0x60,%edx
  10150c:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101512:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  101519:	83 ca 80             	or     $0xffffff80,%edx
  10151c:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101522:	c7 c2 2e 26 10 00    	mov    $0x10262e,%edx
  101528:	c1 ea 10             	shr    $0x10,%edx
  10152b:	66 89 90 ca 70 00 00 	mov    %dx,0x70ca(%eax)
  101532:	c7 c2 38 26 10 00    	mov    $0x102638,%edx
  101538:	66 89 90 cc 70 00 00 	mov    %dx,0x70cc(%eax)
  10153f:	66 c7 80 ce 70 00 00 	movw   $0x8,0x70ce(%eax)
  101546:	08 00 
  101548:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  10154f:	83 e2 e0             	and    $0xffffffe0,%edx
  101552:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  101558:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  10155f:	83 e2 1f             	and    $0x1f,%edx
  101562:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  101568:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  10156f:	83 e2 f0             	and    $0xfffffff0,%edx
  101572:	83 ca 0e             	or     $0xe,%edx
  101575:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10157b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  101582:	83 e2 ef             	and    $0xffffffef,%edx
  101585:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10158b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  101592:	83 ca 60             	or     $0x60,%edx
  101595:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10159b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  1015a2:	83 ca 80             	or     $0xffffff80,%edx
  1015a5:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  1015ab:	c7 c2 38 26 10 00    	mov    $0x102638,%edx
  1015b1:	c1 ea 10             	shr    $0x10,%edx
  1015b4:	66 89 90 d2 70 00 00 	mov    %dx,0x70d2(%eax)
  1015bb:	c7 c2 42 26 10 00    	mov    $0x102642,%edx
  1015c1:	66 89 90 d4 70 00 00 	mov    %dx,0x70d4(%eax)
  1015c8:	66 c7 80 d6 70 00 00 	movw   $0x8,0x70d6(%eax)
  1015cf:	08 00 
  1015d1:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  1015d8:	83 e2 e0             	and    $0xffffffe0,%edx
  1015db:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  1015e1:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  1015e8:	83 e2 1f             	and    $0x1f,%edx
  1015eb:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  1015f1:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  1015f8:	83 e2 f0             	and    $0xfffffff0,%edx
  1015fb:	83 ca 0e             	or     $0xe,%edx
  1015fe:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101604:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10160b:	83 e2 ef             	and    $0xffffffef,%edx
  10160e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101614:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10161b:	83 e2 9f             	and    $0xffffff9f,%edx
  10161e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101624:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10162b:	83 ca 80             	or     $0xffffff80,%edx
  10162e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101634:	c7 c2 42 26 10 00    	mov    $0x102642,%edx
  10163a:	c1 ea 10             	shr    $0x10,%edx
  10163d:	66 89 90 da 70 00 00 	mov    %dx,0x70da(%eax)
  101644:	c7 c2 4c 26 10 00    	mov    $0x10264c,%edx
  10164a:	66 89 90 dc 70 00 00 	mov    %dx,0x70dc(%eax)
  101651:	66 c7 80 de 70 00 00 	movw   $0x8,0x70de(%eax)
  101658:	08 00 
  10165a:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  101661:	83 e2 e0             	and    $0xffffffe0,%edx
  101664:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  10166a:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  101671:	83 e2 1f             	and    $0x1f,%edx
  101674:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  10167a:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  101681:	83 e2 f0             	and    $0xfffffff0,%edx
  101684:	83 ca 0e             	or     $0xe,%edx
  101687:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  10168d:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  101694:	83 e2 ef             	and    $0xffffffef,%edx
  101697:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  10169d:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016a4:	83 e2 9f             	and    $0xffffff9f,%edx
  1016a7:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016ad:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016b4:	83 ca 80             	or     $0xffffff80,%edx
  1016b7:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016bd:	c7 c2 4c 26 10 00    	mov    $0x10264c,%edx
  1016c3:	c1 ea 10             	shr    $0x10,%edx
  1016c6:	66 89 90 e2 70 00 00 	mov    %dx,0x70e2(%eax)
  1016cd:	c7 c2 56 26 10 00    	mov    $0x102656,%edx
  1016d3:	66 89 90 e4 70 00 00 	mov    %dx,0x70e4(%eax)
  1016da:	66 c7 80 e6 70 00 00 	movw   $0x8,0x70e6(%eax)
  1016e1:	08 00 
  1016e3:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  1016ea:	83 e2 e0             	and    $0xffffffe0,%edx
  1016ed:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  1016f3:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  1016fa:	83 e2 1f             	and    $0x1f,%edx
  1016fd:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  101703:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10170a:	83 e2 f0             	and    $0xfffffff0,%edx
  10170d:	83 ca 0e             	or     $0xe,%edx
  101710:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101716:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10171d:	83 e2 ef             	and    $0xffffffef,%edx
  101720:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101726:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10172d:	83 e2 9f             	and    $0xffffff9f,%edx
  101730:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101736:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10173d:	83 ca 80             	or     $0xffffff80,%edx
  101740:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101746:	c7 c2 56 26 10 00    	mov    $0x102656,%edx
  10174c:	c1 ea 10             	shr    $0x10,%edx
  10174f:	66 89 90 ea 70 00 00 	mov    %dx,0x70ea(%eax)
  101756:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  10175c:	66 89 90 ec 70 00 00 	mov    %dx,0x70ec(%eax)
  101763:	66 c7 80 ee 70 00 00 	movw   $0x8,0x70ee(%eax)
  10176a:	08 00 
  10176c:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  101773:	83 e2 e0             	and    $0xffffffe0,%edx
  101776:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  10177c:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  101783:	83 e2 1f             	and    $0x1f,%edx
  101786:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  10178c:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  101793:	83 e2 f0             	and    $0xfffffff0,%edx
  101796:	83 ca 0e             	or     $0xe,%edx
  101799:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  10179f:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017a6:	83 e2 ef             	and    $0xffffffef,%edx
  1017a9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017af:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017b6:	83 e2 9f             	and    $0xffffff9f,%edx
  1017b9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017bf:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017c6:	83 ca 80             	or     $0xffffff80,%edx
  1017c9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017cf:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  1017d5:	c1 ea 10             	shr    $0x10,%edx
  1017d8:	66 89 90 f2 70 00 00 	mov    %dx,0x70f2(%eax)
  1017df:	c7 c2 72 26 10 00    	mov    $0x102672,%edx
  1017e5:	66 89 90 fc 70 00 00 	mov    %dx,0x70fc(%eax)
  1017ec:	66 c7 80 fe 70 00 00 	movw   $0x8,0x70fe(%eax)
  1017f3:	08 00 
  1017f5:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  1017fc:	83 e2 e0             	and    $0xffffffe0,%edx
  1017ff:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  101805:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  10180c:	83 e2 1f             	and    $0x1f,%edx
  10180f:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  101815:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10181c:	83 e2 f0             	and    $0xfffffff0,%edx
  10181f:	83 ca 0e             	or     $0xe,%edx
  101822:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101828:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10182f:	83 e2 ef             	and    $0xffffffef,%edx
  101832:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101838:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10183f:	83 e2 9f             	and    $0xffffff9f,%edx
  101842:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101848:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10184f:	83 ca 80             	or     $0xffffff80,%edx
  101852:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101858:	c7 c2 72 26 10 00    	mov    $0x102672,%edx
  10185e:	c1 ea 10             	shr    $0x10,%edx
  101861:	66 89 90 02 71 00 00 	mov    %dx,0x7102(%eax)
  101868:	c7 c2 7a 26 10 00    	mov    $0x10267a,%edx
  10186e:	66 89 90 04 71 00 00 	mov    %dx,0x7104(%eax)
  101875:	66 c7 80 06 71 00 00 	movw   $0x8,0x7106(%eax)
  10187c:	08 00 
  10187e:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  101885:	83 e2 e0             	and    $0xffffffe0,%edx
  101888:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  10188e:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  101895:	83 e2 1f             	and    $0x1f,%edx
  101898:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  10189e:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018a5:	83 e2 f0             	and    $0xfffffff0,%edx
  1018a8:	83 ca 0e             	or     $0xe,%edx
  1018ab:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018b1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018b8:	83 e2 ef             	and    $0xffffffef,%edx
  1018bb:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018c1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018c8:	83 e2 9f             	and    $0xffffff9f,%edx
  1018cb:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018d1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018d8:	83 ca 80             	or     $0xffffff80,%edx
  1018db:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018e1:	c7 c2 7a 26 10 00    	mov    $0x10267a,%edx
  1018e7:	c1 ea 10             	shr    $0x10,%edx
  1018ea:	66 89 90 0a 71 00 00 	mov    %dx,0x710a(%eax)
  1018f1:	c7 c2 82 26 10 00    	mov    $0x102682,%edx
  1018f7:	66 89 90 0c 71 00 00 	mov    %dx,0x710c(%eax)
  1018fe:	66 c7 80 0e 71 00 00 	movw   $0x8,0x710e(%eax)
  101905:	08 00 
  101907:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  10190e:	83 e2 e0             	and    $0xffffffe0,%edx
  101911:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  101917:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  10191e:	83 e2 1f             	and    $0x1f,%edx
  101921:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  101927:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  10192e:	83 e2 f0             	and    $0xfffffff0,%edx
  101931:	83 ca 0e             	or     $0xe,%edx
  101934:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10193a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101941:	83 e2 ef             	and    $0xffffffef,%edx
  101944:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10194a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101951:	83 e2 9f             	and    $0xffffff9f,%edx
  101954:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10195a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101961:	83 ca 80             	or     $0xffffff80,%edx
  101964:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10196a:	c7 c2 82 26 10 00    	mov    $0x102682,%edx
  101970:	c1 ea 10             	shr    $0x10,%edx
  101973:	66 89 90 12 71 00 00 	mov    %dx,0x7112(%eax)
  10197a:	c7 c2 8a 26 10 00    	mov    $0x10268a,%edx
  101980:	66 89 90 14 71 00 00 	mov    %dx,0x7114(%eax)
  101987:	66 c7 80 16 71 00 00 	movw   $0x8,0x7116(%eax)
  10198e:	08 00 
  101990:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  101997:	83 e2 e0             	and    $0xffffffe0,%edx
  10199a:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  1019a0:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  1019a7:	83 e2 1f             	and    $0x1f,%edx
  1019aa:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  1019b0:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019b7:	83 e2 f0             	and    $0xfffffff0,%edx
  1019ba:	83 ca 0e             	or     $0xe,%edx
  1019bd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019c3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019ca:	83 e2 ef             	and    $0xffffffef,%edx
  1019cd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019d3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019da:	83 e2 9f             	and    $0xffffff9f,%edx
  1019dd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019e3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019ea:	83 ca 80             	or     $0xffffff80,%edx
  1019ed:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019f3:	c7 c2 8a 26 10 00    	mov    $0x10268a,%edx
  1019f9:	c1 ea 10             	shr    $0x10,%edx
  1019fc:	66 89 90 1a 71 00 00 	mov    %dx,0x711a(%eax)
  101a03:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  101a09:	66 89 90 1c 71 00 00 	mov    %dx,0x711c(%eax)
  101a10:	66 c7 80 1e 71 00 00 	movw   $0x8,0x711e(%eax)
  101a17:	08 00 
  101a19:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a20:	83 e2 e0             	and    $0xffffffe0,%edx
  101a23:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a29:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a30:	83 e2 1f             	and    $0x1f,%edx
  101a33:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a39:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a40:	83 e2 f0             	and    $0xfffffff0,%edx
  101a43:	83 ca 0e             	or     $0xe,%edx
  101a46:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a4c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a53:	83 e2 ef             	and    $0xffffffef,%edx
  101a56:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a5c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a63:	83 e2 9f             	and    $0xffffff9f,%edx
  101a66:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a6c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a73:	83 ca 80             	or     $0xffffff80,%edx
  101a76:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a7c:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  101a82:	c1 ea 10             	shr    $0x10,%edx
  101a85:	66 89 90 22 71 00 00 	mov    %dx,0x7122(%eax)
  101a8c:	c7 c2 a4 26 10 00    	mov    $0x1026a4,%edx
  101a92:	66 89 90 2c 71 00 00 	mov    %dx,0x712c(%eax)
  101a99:	66 c7 80 2e 71 00 00 	movw   $0x8,0x712e(%eax)
  101aa0:	08 00 
  101aa2:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101aa9:	83 e2 e0             	and    $0xffffffe0,%edx
  101aac:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101ab2:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101ab9:	83 e2 1f             	and    $0x1f,%edx
  101abc:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101ac2:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101ac9:	83 e2 f0             	and    $0xfffffff0,%edx
  101acc:	83 ca 0e             	or     $0xe,%edx
  101acf:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101ad5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101adc:	83 e2 ef             	and    $0xffffffef,%edx
  101adf:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101ae5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101aec:	83 e2 9f             	and    $0xffffff9f,%edx
  101aef:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101af5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101afc:	83 ca 80             	or     $0xffffff80,%edx
  101aff:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101b05:	c7 c2 a4 26 10 00    	mov    $0x1026a4,%edx
  101b0b:	c1 ea 10             	shr    $0x10,%edx
  101b0e:	66 89 90 32 71 00 00 	mov    %dx,0x7132(%eax)
  101b15:	c7 c2 ae 26 10 00    	mov    $0x1026ae,%edx
  101b1b:	66 89 90 34 71 00 00 	mov    %dx,0x7134(%eax)
  101b22:	66 c7 80 36 71 00 00 	movw   $0x8,0x7136(%eax)
  101b29:	08 00 
  101b2b:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b32:	83 e2 e0             	and    $0xffffffe0,%edx
  101b35:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101b3b:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b42:	83 e2 1f             	and    $0x1f,%edx
  101b45:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101b4b:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b52:	83 e2 f0             	and    $0xfffffff0,%edx
  101b55:	83 ca 0e             	or     $0xe,%edx
  101b58:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b5e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b65:	83 e2 ef             	and    $0xffffffef,%edx
  101b68:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b6e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b75:	83 e2 9f             	and    $0xffffff9f,%edx
  101b78:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b7e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b85:	83 ca 80             	or     $0xffffff80,%edx
  101b88:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b8e:	c7 c2 ae 26 10 00    	mov    $0x1026ae,%edx
  101b94:	c1 ea 10             	shr    $0x10,%edx
  101b97:	66 89 90 3a 71 00 00 	mov    %dx,0x713a(%eax)
  101b9e:	c7 c2 b6 26 10 00    	mov    $0x1026b6,%edx
  101ba4:	66 89 90 3c 71 00 00 	mov    %dx,0x713c(%eax)
  101bab:	66 c7 80 3e 71 00 00 	movw   $0x8,0x713e(%eax)
  101bb2:	08 00 
  101bb4:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101bbb:	83 e2 e0             	and    $0xffffffe0,%edx
  101bbe:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101bc4:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101bcb:	83 e2 1f             	and    $0x1f,%edx
  101bce:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101bd4:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bdb:	83 e2 f0             	and    $0xfffffff0,%edx
  101bde:	83 ca 0e             	or     $0xe,%edx
  101be1:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101be7:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bee:	83 e2 ef             	and    $0xffffffef,%edx
  101bf1:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101bf7:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bfe:	83 e2 9f             	and    $0xffffff9f,%edx
  101c01:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c07:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101c0e:	83 ca 80             	or     $0xffffff80,%edx
  101c11:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c17:	c7 c2 b6 26 10 00    	mov    $0x1026b6,%edx
  101c1d:	c1 ea 10             	shr    $0x10,%edx
  101c20:	66 89 90 42 71 00 00 	mov    %dx,0x7142(%eax)
  101c27:	c7 c2 c0 26 10 00    	mov    $0x1026c0,%edx
  101c2d:	66 89 90 ac 71 00 00 	mov    %dx,0x71ac(%eax)
  101c34:	66 c7 80 ae 71 00 00 	movw   $0x8,0x71ae(%eax)
  101c3b:	08 00 
  101c3d:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101c44:	83 e2 e0             	and    $0xffffffe0,%edx
  101c47:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101c4d:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101c54:	83 e2 1f             	and    $0x1f,%edx
  101c57:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101c5d:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c64:	83 e2 f0             	and    $0xfffffff0,%edx
  101c67:	83 ca 0e             	or     $0xe,%edx
  101c6a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c70:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c77:	83 e2 ef             	and    $0xffffffef,%edx
  101c7a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c80:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c87:	83 e2 9f             	and    $0xffffff9f,%edx
  101c8a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c90:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c97:	83 ca 80             	or     $0xffffff80,%edx
  101c9a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101ca0:	c7 c2 c0 26 10 00    	mov    $0x1026c0,%edx
  101ca6:	c1 ea 10             	shr    $0x10,%edx
  101ca9:	66 89 90 b2 71 00 00 	mov    %dx,0x71b2(%eax)
  101cb0:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  101cb6:	66 89 90 b4 71 00 00 	mov    %dx,0x71b4(%eax)
  101cbd:	66 c7 80 b6 71 00 00 	movw   $0x8,0x71b6(%eax)
  101cc4:	08 00 
  101cc6:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101ccd:	83 e2 e0             	and    $0xffffffe0,%edx
  101cd0:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101cd6:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101cdd:	83 e2 1f             	and    $0x1f,%edx
  101ce0:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101ce6:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101ced:	83 e2 f0             	and    $0xfffffff0,%edx
  101cf0:	83 ca 0e             	or     $0xe,%edx
  101cf3:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101cf9:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d00:	83 e2 ef             	and    $0xffffffef,%edx
  101d03:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d09:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d10:	83 e2 9f             	and    $0xffffff9f,%edx
  101d13:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d19:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d20:	83 ca 80             	or     $0xffffff80,%edx
  101d23:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d29:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  101d2f:	c1 ea 10             	shr    $0x10,%edx
  101d32:	66 89 90 ba 71 00 00 	mov    %dx,0x71ba(%eax)
  101d39:	c7 c2 d4 26 10 00    	mov    $0x1026d4,%edx
  101d3f:	66 89 90 bc 71 00 00 	mov    %dx,0x71bc(%eax)
  101d46:	66 c7 80 be 71 00 00 	movw   $0x8,0x71be(%eax)
  101d4d:	08 00 
  101d4f:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101d56:	83 e2 e0             	and    $0xffffffe0,%edx
  101d59:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101d5f:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101d66:	83 e2 1f             	and    $0x1f,%edx
  101d69:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101d6f:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d76:	83 e2 f0             	and    $0xfffffff0,%edx
  101d79:	83 ca 0e             	or     $0xe,%edx
  101d7c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101d82:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d89:	83 e2 ef             	and    $0xffffffef,%edx
  101d8c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101d92:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d99:	83 e2 9f             	and    $0xffffff9f,%edx
  101d9c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101da2:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101da9:	83 ca 80             	or     $0xffffff80,%edx
  101dac:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101db2:	c7 c2 d4 26 10 00    	mov    $0x1026d4,%edx
  101db8:	c1 ea 10             	shr    $0x10,%edx
  101dbb:	66 89 90 c2 71 00 00 	mov    %dx,0x71c2(%eax)
  101dc2:	c7 c2 de 26 10 00    	mov    $0x1026de,%edx
  101dc8:	66 89 90 c4 71 00 00 	mov    %dx,0x71c4(%eax)
  101dcf:	66 c7 80 c6 71 00 00 	movw   $0x8,0x71c6(%eax)
  101dd6:	08 00 
  101dd8:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101ddf:	83 e2 e0             	and    $0xffffffe0,%edx
  101de2:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101de8:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101def:	83 e2 1f             	and    $0x1f,%edx
  101df2:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101df8:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101dff:	83 e2 f0             	and    $0xfffffff0,%edx
  101e02:	83 ca 0e             	or     $0xe,%edx
  101e05:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e0b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e12:	83 e2 ef             	and    $0xffffffef,%edx
  101e15:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e1b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e22:	83 e2 9f             	and    $0xffffff9f,%edx
  101e25:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e2b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e32:	83 ca 80             	or     $0xffffff80,%edx
  101e35:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e3b:	c7 c2 de 26 10 00    	mov    $0x1026de,%edx
  101e41:	c1 ea 10             	shr    $0x10,%edx
  101e44:	66 89 90 ca 71 00 00 	mov    %dx,0x71ca(%eax)
  101e4b:	c7 c2 e8 26 10 00    	mov    $0x1026e8,%edx
  101e51:	66 89 90 cc 71 00 00 	mov    %dx,0x71cc(%eax)
  101e58:	66 c7 80 ce 71 00 00 	movw   $0x8,0x71ce(%eax)
  101e5f:	08 00 
  101e61:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101e68:	83 e2 e0             	and    $0xffffffe0,%edx
  101e6b:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101e71:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101e78:	83 e2 1f             	and    $0x1f,%edx
  101e7b:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101e81:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101e88:	83 e2 f0             	and    $0xfffffff0,%edx
  101e8b:	83 ca 0e             	or     $0xe,%edx
  101e8e:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101e94:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101e9b:	83 e2 ef             	and    $0xffffffef,%edx
  101e9e:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ea4:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101eab:	83 e2 9f             	and    $0xffffff9f,%edx
  101eae:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101eb4:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101ebb:	83 ca 80             	or     $0xffffff80,%edx
  101ebe:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ec4:	c7 c2 e8 26 10 00    	mov    $0x1026e8,%edx
  101eca:	c1 ea 10             	shr    $0x10,%edx
  101ecd:	66 89 90 d2 71 00 00 	mov    %dx,0x71d2(%eax)
  101ed4:	c7 c2 f2 26 10 00    	mov    $0x1026f2,%edx
  101eda:	66 89 90 d4 71 00 00 	mov    %dx,0x71d4(%eax)
  101ee1:	66 c7 80 d6 71 00 00 	movw   $0x8,0x71d6(%eax)
  101ee8:	08 00 
  101eea:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101ef1:	83 e2 e0             	and    $0xffffffe0,%edx
  101ef4:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101efa:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101f01:	83 e2 1f             	and    $0x1f,%edx
  101f04:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101f0a:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f11:	83 e2 f0             	and    $0xfffffff0,%edx
  101f14:	83 ca 0e             	or     $0xe,%edx
  101f17:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f1d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f24:	83 e2 ef             	and    $0xffffffef,%edx
  101f27:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f2d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f34:	83 e2 9f             	and    $0xffffff9f,%edx
  101f37:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f3d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f44:	83 ca 80             	or     $0xffffff80,%edx
  101f47:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f4d:	c7 c2 f2 26 10 00    	mov    $0x1026f2,%edx
  101f53:	c1 ea 10             	shr    $0x10,%edx
  101f56:	66 89 90 da 71 00 00 	mov    %dx,0x71da(%eax)
  101f5d:	c7 c2 fc 26 10 00    	mov    $0x1026fc,%edx
  101f63:	66 89 90 dc 71 00 00 	mov    %dx,0x71dc(%eax)
  101f6a:	66 c7 80 de 71 00 00 	movw   $0x8,0x71de(%eax)
  101f71:	08 00 
  101f73:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101f7a:	83 e2 e0             	and    $0xffffffe0,%edx
  101f7d:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101f83:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101f8a:	83 e2 1f             	and    $0x1f,%edx
  101f8d:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101f93:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101f9a:	83 e2 f0             	and    $0xfffffff0,%edx
  101f9d:	83 ca 0e             	or     $0xe,%edx
  101fa0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fa6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fad:	83 e2 ef             	and    $0xffffffef,%edx
  101fb0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fb6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fbd:	83 e2 9f             	and    $0xffffff9f,%edx
  101fc0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fc6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fcd:	83 ca 80             	or     $0xffffff80,%edx
  101fd0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fd6:	c7 c2 fc 26 10 00    	mov    $0x1026fc,%edx
  101fdc:	c1 ea 10             	shr    $0x10,%edx
  101fdf:	66 89 90 e2 71 00 00 	mov    %dx,0x71e2(%eax)
  101fe6:	c7 c2 02 27 10 00    	mov    $0x102702,%edx
  101fec:	66 89 90 e4 71 00 00 	mov    %dx,0x71e4(%eax)
  101ff3:	66 c7 80 e6 71 00 00 	movw   $0x8,0x71e6(%eax)
  101ffa:	08 00 
  101ffc:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102003:	83 e2 e0             	and    $0xffffffe0,%edx
  102006:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  10200c:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102013:	83 e2 1f             	and    $0x1f,%edx
  102016:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  10201c:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102023:	83 e2 f0             	and    $0xfffffff0,%edx
  102026:	83 ca 0e             	or     $0xe,%edx
  102029:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10202f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102036:	83 e2 ef             	and    $0xffffffef,%edx
  102039:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10203f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102046:	83 e2 9f             	and    $0xffffff9f,%edx
  102049:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10204f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102056:	83 ca 80             	or     $0xffffff80,%edx
  102059:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10205f:	c7 c2 02 27 10 00    	mov    $0x102702,%edx
  102065:	c1 ea 10             	shr    $0x10,%edx
  102068:	66 89 90 ea 71 00 00 	mov    %dx,0x71ea(%eax)
  10206f:	c7 c2 08 27 10 00    	mov    $0x102708,%edx
  102075:	66 89 90 ec 71 00 00 	mov    %dx,0x71ec(%eax)
  10207c:	66 c7 80 ee 71 00 00 	movw   $0x8,0x71ee(%eax)
  102083:	08 00 
  102085:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  10208c:	83 e2 e0             	and    $0xffffffe0,%edx
  10208f:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  102095:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  10209c:	83 e2 1f             	and    $0x1f,%edx
  10209f:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  1020a5:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020ac:	83 e2 f0             	and    $0xfffffff0,%edx
  1020af:	83 ca 0e             	or     $0xe,%edx
  1020b2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020b8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020bf:	83 e2 ef             	and    $0xffffffef,%edx
  1020c2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020c8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020cf:	83 e2 9f             	and    $0xffffff9f,%edx
  1020d2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020d8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020df:	83 ca 80             	or     $0xffffff80,%edx
  1020e2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020e8:	c7 c2 08 27 10 00    	mov    $0x102708,%edx
  1020ee:	c1 ea 10             	shr    $0x10,%edx
  1020f1:	66 89 90 f2 71 00 00 	mov    %dx,0x71f2(%eax)
  1020f8:	c7 c2 0e 27 10 00    	mov    $0x10270e,%edx
  1020fe:	66 89 90 f4 71 00 00 	mov    %dx,0x71f4(%eax)
  102105:	66 c7 80 f6 71 00 00 	movw   $0x8,0x71f6(%eax)
  10210c:	08 00 
  10210e:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  102115:	83 e2 e0             	and    $0xffffffe0,%edx
  102118:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  10211e:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  102125:	83 e2 1f             	and    $0x1f,%edx
  102128:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  10212e:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102135:	83 e2 f0             	and    $0xfffffff0,%edx
  102138:	83 ca 0e             	or     $0xe,%edx
  10213b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102141:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102148:	83 e2 ef             	and    $0xffffffef,%edx
  10214b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102151:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102158:	83 e2 9f             	and    $0xffffff9f,%edx
  10215b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102161:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102168:	83 ca 80             	or     $0xffffff80,%edx
  10216b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102171:	c7 c2 0e 27 10 00    	mov    $0x10270e,%edx
  102177:	c1 ea 10             	shr    $0x10,%edx
  10217a:	66 89 90 fa 71 00 00 	mov    %dx,0x71fa(%eax)
  102181:	c7 c2 14 27 10 00    	mov    $0x102714,%edx
  102187:	66 89 90 fc 71 00 00 	mov    %dx,0x71fc(%eax)
  10218e:	66 c7 80 fe 71 00 00 	movw   $0x8,0x71fe(%eax)
  102195:	08 00 
  102197:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  10219e:	83 e2 e0             	and    $0xffffffe0,%edx
  1021a1:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  1021a7:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  1021ae:	83 e2 1f             	and    $0x1f,%edx
  1021b1:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  1021b7:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021be:	83 e2 f0             	and    $0xfffffff0,%edx
  1021c1:	83 ca 0e             	or     $0xe,%edx
  1021c4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021ca:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021d1:	83 e2 ef             	and    $0xffffffef,%edx
  1021d4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021da:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021e1:	83 e2 9f             	and    $0xffffff9f,%edx
  1021e4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021ea:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021f1:	83 ca 80             	or     $0xffffff80,%edx
  1021f4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021fa:	c7 c2 14 27 10 00    	mov    $0x102714,%edx
  102200:	c1 ea 10             	shr    $0x10,%edx
  102203:	66 89 90 02 72 00 00 	mov    %dx,0x7202(%eax)
  10220a:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  102210:	66 89 90 04 72 00 00 	mov    %dx,0x7204(%eax)
  102217:	66 c7 80 06 72 00 00 	movw   $0x8,0x7206(%eax)
  10221e:	08 00 
  102220:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  102227:	83 e2 e0             	and    $0xffffffe0,%edx
  10222a:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102230:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  102237:	83 e2 1f             	and    $0x1f,%edx
  10223a:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102240:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  102247:	83 e2 f0             	and    $0xfffffff0,%edx
  10224a:	83 ca 0e             	or     $0xe,%edx
  10224d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102253:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10225a:	83 e2 ef             	and    $0xffffffef,%edx
  10225d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102263:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10226a:	83 e2 9f             	and    $0xffffff9f,%edx
  10226d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102273:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10227a:	83 ca 80             	or     $0xffffff80,%edx
  10227d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102283:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  102289:	c1 ea 10             	shr    $0x10,%edx
  10228c:	66 89 90 0a 72 00 00 	mov    %dx,0x720a(%eax)
  102293:	c7 c2 20 27 10 00    	mov    $0x102720,%edx
  102299:	66 89 90 0c 72 00 00 	mov    %dx,0x720c(%eax)
  1022a0:	66 c7 80 0e 72 00 00 	movw   $0x8,0x720e(%eax)
  1022a7:	08 00 
  1022a9:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  1022b0:	83 e2 e0             	and    $0xffffffe0,%edx
  1022b3:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  1022b9:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  1022c0:	83 e2 1f             	and    $0x1f,%edx
  1022c3:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  1022c9:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022d0:	83 e2 f0             	and    $0xfffffff0,%edx
  1022d3:	83 ca 0e             	or     $0xe,%edx
  1022d6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022dc:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022e3:	83 e2 ef             	and    $0xffffffef,%edx
  1022e6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022ec:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022f3:	83 e2 9f             	and    $0xffffff9f,%edx
  1022f6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022fc:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  102303:	83 ca 80             	or     $0xffffff80,%edx
  102306:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  10230c:	c7 c2 20 27 10 00    	mov    $0x102720,%edx
  102312:	c1 ea 10             	shr    $0x10,%edx
  102315:	66 89 90 12 72 00 00 	mov    %dx,0x7212(%eax)
  10231c:	c7 c2 26 27 10 00    	mov    $0x102726,%edx
  102322:	66 89 90 14 72 00 00 	mov    %dx,0x7214(%eax)
  102329:	66 c7 80 16 72 00 00 	movw   $0x8,0x7216(%eax)
  102330:	08 00 
  102332:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  102339:	83 e2 e0             	and    $0xffffffe0,%edx
  10233c:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  102342:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  102349:	83 e2 1f             	and    $0x1f,%edx
  10234c:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  102352:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  102359:	83 e2 f0             	and    $0xfffffff0,%edx
  10235c:	83 ca 0e             	or     $0xe,%edx
  10235f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102365:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10236c:	83 e2 ef             	and    $0xffffffef,%edx
  10236f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102375:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10237c:	83 e2 9f             	and    $0xffffff9f,%edx
  10237f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102385:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10238c:	83 ca 80             	or     $0xffffff80,%edx
  10238f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102395:	c7 c2 26 27 10 00    	mov    $0x102726,%edx
  10239b:	c1 ea 10             	shr    $0x10,%edx
  10239e:	66 89 90 1a 72 00 00 	mov    %dx,0x721a(%eax)
  1023a5:	c7 c2 2c 27 10 00    	mov    $0x10272c,%edx
  1023ab:	66 89 90 1c 72 00 00 	mov    %dx,0x721c(%eax)
  1023b2:	66 c7 80 1e 72 00 00 	movw   $0x8,0x721e(%eax)
  1023b9:	08 00 
  1023bb:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  1023c2:	83 e2 e0             	and    $0xffffffe0,%edx
  1023c5:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  1023cb:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  1023d2:	83 e2 1f             	and    $0x1f,%edx
  1023d5:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  1023db:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  1023e2:	83 e2 f0             	and    $0xfffffff0,%edx
  1023e5:	83 ca 0e             	or     $0xe,%edx
  1023e8:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  1023ee:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  1023f5:	83 e2 ef             	and    $0xffffffef,%edx
  1023f8:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  1023fe:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  102405:	83 e2 9f             	and    $0xffffff9f,%edx
  102408:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  10240e:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  102415:	83 ca 80             	or     $0xffffff80,%edx
  102418:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  10241e:	c7 c2 2c 27 10 00    	mov    $0x10272c,%edx
  102424:	c1 ea 10             	shr    $0x10,%edx
  102427:	66 89 90 22 72 00 00 	mov    %dx,0x7222(%eax)
  10242e:	c7 c2 32 27 10 00    	mov    $0x102732,%edx
  102434:	66 89 90 24 72 00 00 	mov    %dx,0x7224(%eax)
  10243b:	66 c7 80 26 72 00 00 	movw   $0x8,0x7226(%eax)
  102442:	08 00 
  102444:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  10244b:	83 e2 e0             	and    $0xffffffe0,%edx
  10244e:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  102454:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  10245b:	83 e2 1f             	and    $0x1f,%edx
  10245e:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  102464:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10246b:	83 e2 f0             	and    $0xfffffff0,%edx
  10246e:	83 ca 0e             	or     $0xe,%edx
  102471:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102477:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10247e:	83 e2 ef             	and    $0xffffffef,%edx
  102481:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102487:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10248e:	83 e2 9f             	and    $0xffffff9f,%edx
  102491:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102497:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10249e:	83 ca 80             	or     $0xffffff80,%edx
  1024a1:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  1024a7:	c7 c2 32 27 10 00    	mov    $0x102732,%edx
  1024ad:	c1 ea 10             	shr    $0x10,%edx
  1024b0:	66 89 90 2a 72 00 00 	mov    %dx,0x722a(%eax)
  1024b7:	c7 c2 68 27 10 00    	mov    $0x102768,%edx
  1024bd:	66 89 90 2c 72 00 00 	mov    %dx,0x722c(%eax)
  1024c4:	66 c7 80 2e 72 00 00 	movw   $0x8,0x722e(%eax)
  1024cb:	08 00 
  1024cd:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  1024d4:	83 e2 e0             	and    $0xffffffe0,%edx
  1024d7:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  1024dd:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  1024e4:	83 e2 1f             	and    $0x1f,%edx
  1024e7:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  1024ed:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  1024f4:	83 e2 f0             	and    $0xfffffff0,%edx
  1024f7:	83 ca 0e             	or     $0xe,%edx
  1024fa:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102500:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102507:	83 e2 ef             	and    $0xffffffef,%edx
  10250a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102510:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102517:	83 ca 60             	or     $0x60,%edx
  10251a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102520:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102527:	83 ca 80             	or     $0xffffff80,%edx
  10252a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102530:	c7 c2 68 27 10 00    	mov    $0x102768,%edx
  102536:	c1 ea 10             	shr    $0x10,%edx
  102539:	66 89 90 32 72 00 00 	mov    %dx,0x7232(%eax)
  102540:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  102546:	66 89 90 9c 78 00 00 	mov    %dx,0x789c(%eax)
  10254d:	66 c7 80 9e 78 00 00 	movw   $0x8,0x789e(%eax)
  102554:	08 00 
  102556:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  10255d:	83 e2 e0             	and    $0xffffffe0,%edx
  102560:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  102566:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  10256d:	83 e2 1f             	and    $0x1f,%edx
  102570:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  102576:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  10257d:	83 e2 f0             	and    $0xfffffff0,%edx
  102580:	83 ca 0e             	or     $0xe,%edx
  102583:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  102589:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  102590:	83 e2 ef             	and    $0xffffffef,%edx
  102593:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  102599:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025a0:	83 e2 9f             	and    $0xffffff9f,%edx
  1025a3:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025a9:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025b0:	83 ca 80             	or     $0xffffff80,%edx
  1025b3:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025b9:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  1025bf:	c1 ea 10             	shr    $0x10,%edx
  1025c2:	66 89 90 a2 78 00 00 	mov    %dx,0x78a2(%eax)
  1025c9:	0f 01 98 1c 05 00 00 	lidtl  0x51c(%eax)
  1025d0:	90                   	nop
  1025d1:	c9                   	leave
  1025d2:	c3                   	ret

001025d3 <intr_init>:
  1025d3:	55                   	push   %ebp
  1025d4:	89 e5                	mov    %esp,%ebp
  1025d6:	53                   	push   %ebx
  1025d7:	e8 e4 dd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1025dc:	81 c3 18 aa 00 00    	add    $0xaa18,%ebx
  1025e2:	0f b6 83 ac 78 00 00 	movzbl 0x78ac(%ebx),%eax
  1025e9:	3c 01                	cmp    $0x1,%al
  1025eb:	74 0e                	je     1025fb <intr_init+0x28>
  1025ed:	e8 36 ec ff ff       	call   101228 <intr_init_idt>
  1025f2:	c6 83 ac 78 00 00 01 	movb   $0x1,0x78ac(%ebx)
  1025f9:	eb 01                	jmp    1025fc <intr_init+0x29>
  1025fb:	90                   	nop
  1025fc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1025ff:	c9                   	leave
  102600:	c3                   	ret
  102601:	66 90                	xchg   %ax,%ax
  102603:	66 90                	xchg   %ax,%ax
  102605:	66 90                	xchg   %ax,%ax
  102607:	66 90                	xchg   %ax,%ax
  102609:	66 90                	xchg   %ax,%ax
  10260b:	66 90                	xchg   %ax,%ax
  10260d:	66 90                	xchg   %ax,%ax
  10260f:	90                   	nop

00102610 <Xdivide>:
  102610:	6a 00                	push   $0x0
  102612:	6a 00                	push   $0x0
  102614:	e9 67 01 00 00       	jmp    102780 <_alltraps>
  102619:	90                   	nop

0010261a <Xdebug>:
  10261a:	6a 00                	push   $0x0
  10261c:	6a 01                	push   $0x1
  10261e:	e9 5d 01 00 00       	jmp    102780 <_alltraps>
  102623:	90                   	nop

00102624 <Xnmi>:
  102624:	6a 00                	push   $0x0
  102626:	6a 02                	push   $0x2
  102628:	e9 53 01 00 00       	jmp    102780 <_alltraps>
  10262d:	90                   	nop

0010262e <Xbrkpt>:
  10262e:	6a 00                	push   $0x0
  102630:	6a 03                	push   $0x3
  102632:	e9 49 01 00 00       	jmp    102780 <_alltraps>
  102637:	90                   	nop

00102638 <Xoflow>:
  102638:	6a 00                	push   $0x0
  10263a:	6a 04                	push   $0x4
  10263c:	e9 3f 01 00 00       	jmp    102780 <_alltraps>
  102641:	90                   	nop

00102642 <Xbound>:
  102642:	6a 00                	push   $0x0
  102644:	6a 05                	push   $0x5
  102646:	e9 35 01 00 00       	jmp    102780 <_alltraps>
  10264b:	90                   	nop

0010264c <Xillop>:
  10264c:	6a 00                	push   $0x0
  10264e:	6a 06                	push   $0x6
  102650:	e9 2b 01 00 00       	jmp    102780 <_alltraps>
  102655:	90                   	nop

00102656 <Xdevice>:
  102656:	6a 00                	push   $0x0
  102658:	6a 07                	push   $0x7
  10265a:	e9 21 01 00 00       	jmp    102780 <_alltraps>
  10265f:	90                   	nop

00102660 <Xdblflt>:
  102660:	6a 08                	push   $0x8
  102662:	e9 19 01 00 00       	jmp    102780 <_alltraps>
  102667:	90                   	nop

00102668 <Xcoproc>:
  102668:	6a 00                	push   $0x0
  10266a:	6a 09                	push   $0x9
  10266c:	e9 0f 01 00 00       	jmp    102780 <_alltraps>
  102671:	90                   	nop

00102672 <Xtss>:
  102672:	6a 0a                	push   $0xa
  102674:	e9 07 01 00 00       	jmp    102780 <_alltraps>
  102679:	90                   	nop

0010267a <Xsegnp>:
  10267a:	6a 0b                	push   $0xb
  10267c:	e9 ff 00 00 00       	jmp    102780 <_alltraps>
  102681:	90                   	nop

00102682 <Xstack>:
  102682:	6a 0c                	push   $0xc
  102684:	e9 f7 00 00 00       	jmp    102780 <_alltraps>
  102689:	90                   	nop

0010268a <Xgpflt>:
  10268a:	6a 0d                	push   $0xd
  10268c:	e9 ef 00 00 00       	jmp    102780 <_alltraps>
  102691:	90                   	nop

00102692 <Xpgflt>:
  102692:	6a 0e                	push   $0xe
  102694:	e9 e7 00 00 00       	jmp    102780 <_alltraps>
  102699:	90                   	nop

0010269a <Xres>:
  10269a:	6a 00                	push   $0x0
  10269c:	6a 0f                	push   $0xf
  10269e:	e9 dd 00 00 00       	jmp    102780 <_alltraps>
  1026a3:	90                   	nop

001026a4 <Xfperr>:
  1026a4:	6a 00                	push   $0x0
  1026a6:	6a 10                	push   $0x10
  1026a8:	e9 d3 00 00 00       	jmp    102780 <_alltraps>
  1026ad:	90                   	nop

001026ae <Xalign>:
  1026ae:	6a 11                	push   $0x11
  1026b0:	e9 cb 00 00 00       	jmp    102780 <_alltraps>
  1026b5:	90                   	nop

001026b6 <Xmchk>:
  1026b6:	6a 00                	push   $0x0
  1026b8:	6a 12                	push   $0x12
  1026ba:	e9 c1 00 00 00       	jmp    102780 <_alltraps>
  1026bf:	90                   	nop

001026c0 <Xirq_timer>:
  1026c0:	6a 00                	push   $0x0
  1026c2:	6a 20                	push   $0x20
  1026c4:	e9 b7 00 00 00       	jmp    102780 <_alltraps>
  1026c9:	90                   	nop

001026ca <Xirq_kbd>:
  1026ca:	6a 00                	push   $0x0
  1026cc:	6a 21                	push   $0x21
  1026ce:	e9 ad 00 00 00       	jmp    102780 <_alltraps>
  1026d3:	90                   	nop

001026d4 <Xirq_slave>:
  1026d4:	6a 00                	push   $0x0
  1026d6:	6a 22                	push   $0x22
  1026d8:	e9 a3 00 00 00       	jmp    102780 <_alltraps>
  1026dd:	90                   	nop

001026de <Xirq_serial2>:
  1026de:	6a 00                	push   $0x0
  1026e0:	6a 23                	push   $0x23
  1026e2:	e9 99 00 00 00       	jmp    102780 <_alltraps>
  1026e7:	90                   	nop

001026e8 <Xirq_serial1>:
  1026e8:	6a 00                	push   $0x0
  1026ea:	6a 24                	push   $0x24
  1026ec:	e9 8f 00 00 00       	jmp    102780 <_alltraps>
  1026f1:	90                   	nop

001026f2 <Xirq_lpt>:
  1026f2:	6a 00                	push   $0x0
  1026f4:	6a 25                	push   $0x25
  1026f6:	e9 85 00 00 00       	jmp    102780 <_alltraps>
  1026fb:	90                   	nop

001026fc <Xirq_floppy>:
  1026fc:	6a 00                	push   $0x0
  1026fe:	6a 26                	push   $0x26
  102700:	eb 7e                	jmp    102780 <_alltraps>

00102702 <Xirq_spurious>:
  102702:	6a 00                	push   $0x0
  102704:	6a 27                	push   $0x27
  102706:	eb 78                	jmp    102780 <_alltraps>

00102708 <Xirq_rtc>:
  102708:	6a 00                	push   $0x0
  10270a:	6a 28                	push   $0x28
  10270c:	eb 72                	jmp    102780 <_alltraps>

0010270e <Xirq9>:
  10270e:	6a 00                	push   $0x0
  102710:	6a 29                	push   $0x29
  102712:	eb 6c                	jmp    102780 <_alltraps>

00102714 <Xirq10>:
  102714:	6a 00                	push   $0x0
  102716:	6a 2a                	push   $0x2a
  102718:	eb 66                	jmp    102780 <_alltraps>

0010271a <Xirq11>:
  10271a:	6a 00                	push   $0x0
  10271c:	6a 2b                	push   $0x2b
  10271e:	eb 60                	jmp    102780 <_alltraps>

00102720 <Xirq_mouse>:
  102720:	6a 00                	push   $0x0
  102722:	6a 2c                	push   $0x2c
  102724:	eb 5a                	jmp    102780 <_alltraps>

00102726 <Xirq_coproc>:
  102726:	6a 00                	push   $0x0
  102728:	6a 2d                	push   $0x2d
  10272a:	eb 54                	jmp    102780 <_alltraps>

0010272c <Xirq_ide1>:
  10272c:	6a 00                	push   $0x0
  10272e:	6a 2e                	push   $0x2e
  102730:	eb 4e                	jmp    102780 <_alltraps>

00102732 <Xirq_ide2>:
  102732:	6a 00                	push   $0x0
  102734:	6a 2f                	push   $0x2f
  102736:	eb 48                	jmp    102780 <_alltraps>

00102738 <Xirq_ehci1>:
  102738:	6a 00                	push   $0x0
  10273a:	6a 30                	push   $0x30
  10273c:	eb 42                	jmp    102780 <_alltraps>

0010273e <Xirq17>:
  10273e:	6a 00                	push   $0x0
  102740:	6a 31                	push   $0x31
  102742:	eb 3c                	jmp    102780 <_alltraps>

00102744 <Xirq18>:
  102744:	6a 00                	push   $0x0
  102746:	6a 32                	push   $0x32
  102748:	eb 36                	jmp    102780 <_alltraps>

0010274a <Xirq19>:
  10274a:	6a 00                	push   $0x0
  10274c:	6a 33                	push   $0x33
  10274e:	eb 30                	jmp    102780 <_alltraps>

00102750 <Xirq20>:
  102750:	6a 00                	push   $0x0
  102752:	6a 34                	push   $0x34
  102754:	eb 2a                	jmp    102780 <_alltraps>

00102756 <Xirq21>:
  102756:	6a 00                	push   $0x0
  102758:	6a 35                	push   $0x35
  10275a:	eb 24                	jmp    102780 <_alltraps>

0010275c <Xirq22>:
  10275c:	6a 00                	push   $0x0
  10275e:	6a 36                	push   $0x36
  102760:	eb 1e                	jmp    102780 <_alltraps>

00102762 <Xirq_ehci2>:
  102762:	6a 00                	push   $0x0
  102764:	6a 37                	push   $0x37
  102766:	eb 18                	jmp    102780 <_alltraps>

00102768 <Xsyscall>:
  102768:	6a 00                	push   $0x0
  10276a:	6a 30                	push   $0x30
  10276c:	eb 12                	jmp    102780 <_alltraps>

0010276e <Xdefault>:
  10276e:	68 fe 00 00 00       	push   $0xfe
  102773:	eb 0b                	jmp    102780 <_alltraps>
  102775:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10277c:	00 
  10277d:	8d 76 00             	lea    0x0(%esi),%esi

00102780 <_alltraps>:
  102780:	fa                   	cli
  102781:	1e                   	push   %ds
  102782:	06                   	push   %es
  102783:	60                   	pusha
  102784:	b8 10 00 00 00       	mov    $0x10,%eax
  102789:	8e d8                	mov    %eax,%ds
  10278b:	8e c0                	mov    %eax,%es
  10278d:	54                   	push   %esp
  10278e:	e8 69 21 00 00       	call   1048fc <trap>
  102793:	f4                   	hlt
  102794:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10279b:	00 
  10279c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001027a0 <trap_return>:
  1027a0:	8b 64 24 04          	mov    0x4(%esp),%esp
  1027a4:	61                   	popa
  1027a5:	07                   	pop    %es
  1027a6:	1f                   	pop    %ds
  1027a7:	83 c4 08             	add    $0x8,%esp
  1027aa:	c3                   	ret

001027ab <memset>:
  1027ab:	55                   	push   %ebp
  1027ac:	89 e5                	mov    %esp,%ebp
  1027ae:	57                   	push   %edi
  1027af:	e8 04 dc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1027b4:	05 40 a8 00 00       	add    $0xa840,%eax
  1027b9:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1027bd:	75 05                	jne    1027c4 <memset+0x19>
  1027bf:	8b 45 08             	mov    0x8(%ebp),%eax
  1027c2:	eb 5c                	jmp    102820 <memset+0x75>
  1027c4:	8b 45 08             	mov    0x8(%ebp),%eax
  1027c7:	83 e0 03             	and    $0x3,%eax
  1027ca:	85 c0                	test   %eax,%eax
  1027cc:	75 41                	jne    10280f <memset+0x64>
  1027ce:	8b 45 10             	mov    0x10(%ebp),%eax
  1027d1:	83 e0 03             	and    $0x3,%eax
  1027d4:	85 c0                	test   %eax,%eax
  1027d6:	75 37                	jne    10280f <memset+0x64>
  1027d8:	81 65 0c ff 00 00 00 	andl   $0xff,0xc(%ebp)
  1027df:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027e2:	c1 e0 18             	shl    $0x18,%eax
  1027e5:	89 c2                	mov    %eax,%edx
  1027e7:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027ea:	c1 e0 10             	shl    $0x10,%eax
  1027ed:	09 c2                	or     %eax,%edx
  1027ef:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027f2:	c1 e0 08             	shl    $0x8,%eax
  1027f5:	09 d0                	or     %edx,%eax
  1027f7:	09 45 0c             	or     %eax,0xc(%ebp)
  1027fa:	8b 45 10             	mov    0x10(%ebp),%eax
  1027fd:	c1 e8 02             	shr    $0x2,%eax
  102800:	89 c1                	mov    %eax,%ecx
  102802:	8b 55 08             	mov    0x8(%ebp),%edx
  102805:	8b 45 0c             	mov    0xc(%ebp),%eax
  102808:	89 d7                	mov    %edx,%edi
  10280a:	fc                   	cld
  10280b:	f3 ab                	rep stos %eax,%es:(%edi)
  10280d:	eb 0e                	jmp    10281d <memset+0x72>
  10280f:	8b 55 08             	mov    0x8(%ebp),%edx
  102812:	8b 45 0c             	mov    0xc(%ebp),%eax
  102815:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102818:	89 d7                	mov    %edx,%edi
  10281a:	fc                   	cld
  10281b:	f3 aa                	rep stos %al,%es:(%edi)
  10281d:	8b 45 08             	mov    0x8(%ebp),%eax
  102820:	8b 7d fc             	mov    -0x4(%ebp),%edi
  102823:	c9                   	leave
  102824:	c3                   	ret

00102825 <memmove>:
  102825:	55                   	push   %ebp
  102826:	89 e5                	mov    %esp,%ebp
  102828:	57                   	push   %edi
  102829:	56                   	push   %esi
  10282a:	53                   	push   %ebx
  10282b:	83 ec 10             	sub    $0x10,%esp
  10282e:	e8 85 db ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102833:	05 c1 a7 00 00       	add    $0xa7c1,%eax
  102838:	8b 45 0c             	mov    0xc(%ebp),%eax
  10283b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10283e:	8b 45 08             	mov    0x8(%ebp),%eax
  102841:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102844:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102847:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10284a:	73 6d                	jae    1028b9 <memmove+0x94>
  10284c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10284f:	8b 45 10             	mov    0x10(%ebp),%eax
  102852:	01 d0                	add    %edx,%eax
  102854:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  102857:	73 60                	jae    1028b9 <memmove+0x94>
  102859:	8b 45 10             	mov    0x10(%ebp),%eax
  10285c:	01 45 f0             	add    %eax,-0x10(%ebp)
  10285f:	8b 45 10             	mov    0x10(%ebp),%eax
  102862:	01 45 ec             	add    %eax,-0x14(%ebp)
  102865:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102868:	83 e0 03             	and    $0x3,%eax
  10286b:	85 c0                	test   %eax,%eax
  10286d:	75 2f                	jne    10289e <memmove+0x79>
  10286f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102872:	83 e0 03             	and    $0x3,%eax
  102875:	85 c0                	test   %eax,%eax
  102877:	75 25                	jne    10289e <memmove+0x79>
  102879:	8b 45 10             	mov    0x10(%ebp),%eax
  10287c:	83 e0 03             	and    $0x3,%eax
  10287f:	85 c0                	test   %eax,%eax
  102881:	75 1b                	jne    10289e <memmove+0x79>
  102883:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102886:	83 e8 04             	sub    $0x4,%eax
  102889:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10288c:	83 ea 04             	sub    $0x4,%edx
  10288f:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102892:	c1 e9 02             	shr    $0x2,%ecx
  102895:	89 c7                	mov    %eax,%edi
  102897:	89 d6                	mov    %edx,%esi
  102899:	fd                   	std
  10289a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  10289c:	eb 18                	jmp    1028b6 <memmove+0x91>
  10289e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028a1:	8d 50 ff             	lea    -0x1(%eax),%edx
  1028a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028a7:	8d 58 ff             	lea    -0x1(%eax),%ebx
  1028aa:	8b 45 10             	mov    0x10(%ebp),%eax
  1028ad:	89 d7                	mov    %edx,%edi
  1028af:	89 de                	mov    %ebx,%esi
  1028b1:	89 c1                	mov    %eax,%ecx
  1028b3:	fd                   	std
  1028b4:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1028b6:	fc                   	cld
  1028b7:	eb 45                	jmp    1028fe <memmove+0xd9>
  1028b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028bc:	83 e0 03             	and    $0x3,%eax
  1028bf:	85 c0                	test   %eax,%eax
  1028c1:	75 2b                	jne    1028ee <memmove+0xc9>
  1028c3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028c6:	83 e0 03             	and    $0x3,%eax
  1028c9:	85 c0                	test   %eax,%eax
  1028cb:	75 21                	jne    1028ee <memmove+0xc9>
  1028cd:	8b 45 10             	mov    0x10(%ebp),%eax
  1028d0:	83 e0 03             	and    $0x3,%eax
  1028d3:	85 c0                	test   %eax,%eax
  1028d5:	75 17                	jne    1028ee <memmove+0xc9>
  1028d7:	8b 45 10             	mov    0x10(%ebp),%eax
  1028da:	c1 e8 02             	shr    $0x2,%eax
  1028dd:	89 c1                	mov    %eax,%ecx
  1028df:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028e2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1028e5:	89 c7                	mov    %eax,%edi
  1028e7:	89 d6                	mov    %edx,%esi
  1028e9:	fc                   	cld
  1028ea:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1028ec:	eb 10                	jmp    1028fe <memmove+0xd9>
  1028ee:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028f1:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1028f4:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1028f7:	89 c7                	mov    %eax,%edi
  1028f9:	89 d6                	mov    %edx,%esi
  1028fb:	fc                   	cld
  1028fc:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1028fe:	8b 45 08             	mov    0x8(%ebp),%eax
  102901:	83 c4 10             	add    $0x10,%esp
  102904:	5b                   	pop    %ebx
  102905:	5e                   	pop    %esi
  102906:	5f                   	pop    %edi
  102907:	5d                   	pop    %ebp
  102908:	c3                   	ret

00102909 <memcpy>:
  102909:	55                   	push   %ebp
  10290a:	89 e5                	mov    %esp,%ebp
  10290c:	e8 a7 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102911:	05 e3 a6 00 00       	add    $0xa6e3,%eax
  102916:	ff 75 10             	push   0x10(%ebp)
  102919:	ff 75 0c             	push   0xc(%ebp)
  10291c:	ff 75 08             	push   0x8(%ebp)
  10291f:	e8 01 ff ff ff       	call   102825 <memmove>
  102924:	83 c4 0c             	add    $0xc,%esp
  102927:	c9                   	leave
  102928:	c3                   	ret

00102929 <strncmp>:
  102929:	55                   	push   %ebp
  10292a:	89 e5                	mov    %esp,%ebp
  10292c:	e8 87 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102931:	05 c3 a6 00 00       	add    $0xa6c3,%eax
  102936:	eb 0c                	jmp    102944 <strncmp+0x1b>
  102938:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10293c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102940:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  102944:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102948:	74 1a                	je     102964 <strncmp+0x3b>
  10294a:	8b 45 08             	mov    0x8(%ebp),%eax
  10294d:	0f b6 00             	movzbl (%eax),%eax
  102950:	84 c0                	test   %al,%al
  102952:	74 10                	je     102964 <strncmp+0x3b>
  102954:	8b 45 08             	mov    0x8(%ebp),%eax
  102957:	0f b6 10             	movzbl (%eax),%edx
  10295a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10295d:	0f b6 00             	movzbl (%eax),%eax
  102960:	38 c2                	cmp    %al,%dl
  102962:	74 d4                	je     102938 <strncmp+0xf>
  102964:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102968:	75 07                	jne    102971 <strncmp+0x48>
  10296a:	ba 00 00 00 00       	mov    $0x0,%edx
  10296f:	eb 14                	jmp    102985 <strncmp+0x5c>
  102971:	8b 45 08             	mov    0x8(%ebp),%eax
  102974:	0f b6 00             	movzbl (%eax),%eax
  102977:	0f b6 d0             	movzbl %al,%edx
  10297a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10297d:	0f b6 00             	movzbl (%eax),%eax
  102980:	0f b6 c0             	movzbl %al,%eax
  102983:	29 c2                	sub    %eax,%edx
  102985:	89 d0                	mov    %edx,%eax
  102987:	5d                   	pop    %ebp
  102988:	c3                   	ret

00102989 <strnlen>:
  102989:	55                   	push   %ebp
  10298a:	89 e5                	mov    %esp,%ebp
  10298c:	83 ec 10             	sub    $0x10,%esp
  10298f:	e8 24 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102994:	05 60 a6 00 00       	add    $0xa660,%eax
  102999:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1029a0:	eb 0c                	jmp    1029ae <strnlen+0x25>
  1029a2:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1029a6:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1029aa:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
  1029ae:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1029b2:	74 0a                	je     1029be <strnlen+0x35>
  1029b4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029b7:	0f b6 00             	movzbl (%eax),%eax
  1029ba:	84 c0                	test   %al,%al
  1029bc:	75 e4                	jne    1029a2 <strnlen+0x19>
  1029be:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1029c1:	c9                   	leave
  1029c2:	c3                   	ret

001029c3 <strcmp>:
  1029c3:	55                   	push   %ebp
  1029c4:	89 e5                	mov    %esp,%ebp
  1029c6:	e8 ed d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1029cb:	05 29 a6 00 00       	add    $0xa629,%eax
  1029d0:	eb 08                	jmp    1029da <strcmp+0x17>
  1029d2:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1029d6:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  1029da:	8b 45 08             	mov    0x8(%ebp),%eax
  1029dd:	0f b6 00             	movzbl (%eax),%eax
  1029e0:	84 c0                	test   %al,%al
  1029e2:	74 10                	je     1029f4 <strcmp+0x31>
  1029e4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029e7:	0f b6 10             	movzbl (%eax),%edx
  1029ea:	8b 45 0c             	mov    0xc(%ebp),%eax
  1029ed:	0f b6 00             	movzbl (%eax),%eax
  1029f0:	38 c2                	cmp    %al,%dl
  1029f2:	74 de                	je     1029d2 <strcmp+0xf>
  1029f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029f7:	0f b6 00             	movzbl (%eax),%eax
  1029fa:	0f b6 d0             	movzbl %al,%edx
  1029fd:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a00:	0f b6 00             	movzbl (%eax),%eax
  102a03:	0f b6 c0             	movzbl %al,%eax
  102a06:	29 c2                	sub    %eax,%edx
  102a08:	89 d0                	mov    %edx,%eax
  102a0a:	5d                   	pop    %ebp
  102a0b:	c3                   	ret

00102a0c <strchr>:
  102a0c:	55                   	push   %ebp
  102a0d:	89 e5                	mov    %esp,%ebp
  102a0f:	83 ec 04             	sub    $0x4,%esp
  102a12:	e8 a1 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a17:	05 dd a5 00 00       	add    $0xa5dd,%eax
  102a1c:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a1f:	88 45 fc             	mov    %al,-0x4(%ebp)
  102a22:	eb 14                	jmp    102a38 <strchr+0x2c>
  102a24:	8b 45 08             	mov    0x8(%ebp),%eax
  102a27:	0f b6 00             	movzbl (%eax),%eax
  102a2a:	38 45 fc             	cmp    %al,-0x4(%ebp)
  102a2d:	75 05                	jne    102a34 <strchr+0x28>
  102a2f:	8b 45 08             	mov    0x8(%ebp),%eax
  102a32:	eb 13                	jmp    102a47 <strchr+0x3b>
  102a34:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102a38:	8b 45 08             	mov    0x8(%ebp),%eax
  102a3b:	0f b6 00             	movzbl (%eax),%eax
  102a3e:	84 c0                	test   %al,%al
  102a40:	75 e2                	jne    102a24 <strchr+0x18>
  102a42:	b8 00 00 00 00       	mov    $0x0,%eax
  102a47:	c9                   	leave
  102a48:	c3                   	ret

00102a49 <memzero>:
  102a49:	55                   	push   %ebp
  102a4a:	89 e5                	mov    %esp,%ebp
  102a4c:	e8 67 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a51:	05 a3 a5 00 00       	add    $0xa5a3,%eax
  102a56:	ff 75 0c             	push   0xc(%ebp)
  102a59:	6a 00                	push   $0x0
  102a5b:	ff 75 08             	push   0x8(%ebp)
  102a5e:	e8 48 fd ff ff       	call   1027ab <memset>
  102a63:	83 c4 0c             	add    $0xc,%esp
  102a66:	c9                   	leave
  102a67:	c3                   	ret

00102a68 <debug_info>:
  102a68:	55                   	push   %ebp
  102a69:	89 e5                	mov    %esp,%ebp
  102a6b:	53                   	push   %ebx
  102a6c:	83 ec 14             	sub    $0x14,%esp
  102a6f:	e8 44 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a74:	05 80 a5 00 00       	add    $0xa580,%eax
  102a79:	8d 55 0c             	lea    0xc(%ebp),%edx
  102a7c:	89 55 f4             	mov    %edx,-0xc(%ebp)
  102a7f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102a82:	83 ec 08             	sub    $0x8,%esp
  102a85:	52                   	push   %edx
  102a86:	ff 75 08             	push   0x8(%ebp)
  102a89:	89 c3                	mov    %eax,%ebx
  102a8b:	e8 68 02 00 00       	call   102cf8 <vdprintf>
  102a90:	83 c4 10             	add    $0x10,%esp
  102a93:	90                   	nop
  102a94:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102a97:	c9                   	leave
  102a98:	c3                   	ret

00102a99 <debug_normal>:
  102a99:	55                   	push   %ebp
  102a9a:	89 e5                	mov    %esp,%ebp
  102a9c:	53                   	push   %ebx
  102a9d:	83 ec 14             	sub    $0x14,%esp
  102aa0:	e8 1b d9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102aa5:	81 c3 4f a5 00 00    	add    $0xa54f,%ebx
  102aab:	83 ec 04             	sub    $0x4,%esp
  102aae:	ff 75 0c             	push   0xc(%ebp)
  102ab1:	ff 75 08             	push   0x8(%ebp)
  102ab4:	8d 83 23 b1 ff ff    	lea    -0x4edd(%ebx),%eax
  102aba:	50                   	push   %eax
  102abb:	e8 ac 02 00 00       	call   102d6c <dprintf>
  102ac0:	83 c4 10             	add    $0x10,%esp
  102ac3:	8d 45 14             	lea    0x14(%ebp),%eax
  102ac6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102ac9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102acc:	83 ec 08             	sub    $0x8,%esp
  102acf:	50                   	push   %eax
  102ad0:	ff 75 10             	push   0x10(%ebp)
  102ad3:	e8 20 02 00 00       	call   102cf8 <vdprintf>
  102ad8:	83 c4 10             	add    $0x10,%esp
  102adb:	90                   	nop
  102adc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102adf:	c9                   	leave
  102ae0:	c3                   	ret

00102ae1 <debug_trace>:
  102ae1:	55                   	push   %ebp
  102ae2:	89 e5                	mov    %esp,%ebp
  102ae4:	83 ec 10             	sub    $0x10,%esp
  102ae7:	e8 cc d8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102aec:	05 08 a5 00 00       	add    $0xa508,%eax
  102af1:	8b 45 08             	mov    0x8(%ebp),%eax
  102af4:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102af7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102afe:	eb 23                	jmp    102b23 <debug_trace+0x42>
  102b00:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b03:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b0a:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b0d:	01 c2                	add    %eax,%edx
  102b0f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b12:	8b 40 04             	mov    0x4(%eax),%eax
  102b15:	89 02                	mov    %eax,(%edx)
  102b17:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b1a:	8b 00                	mov    (%eax),%eax
  102b1c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102b1f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b23:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b27:	7f 21                	jg     102b4a <debug_trace+0x69>
  102b29:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  102b2d:	75 d1                	jne    102b00 <debug_trace+0x1f>
  102b2f:	eb 19                	jmp    102b4a <debug_trace+0x69>
  102b31:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b34:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b3b:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b3e:	01 d0                	add    %edx,%eax
  102b40:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102b46:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b4a:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b4e:	7e e1                	jle    102b31 <debug_trace+0x50>
  102b50:	90                   	nop
  102b51:	90                   	nop
  102b52:	c9                   	leave
  102b53:	c3                   	ret

00102b54 <debug_panic>:
  102b54:	55                   	push   %ebp
  102b55:	89 e5                	mov    %esp,%ebp
  102b57:	53                   	push   %ebx
  102b58:	83 ec 44             	sub    $0x44,%esp
  102b5b:	e8 60 d8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102b60:	81 c3 94 a4 00 00    	add    $0xa494,%ebx
  102b66:	83 ec 04             	sub    $0x4,%esp
  102b69:	ff 75 0c             	push   0xc(%ebp)
  102b6c:	ff 75 08             	push   0x8(%ebp)
  102b6f:	8d 83 2f b1 ff ff    	lea    -0x4ed1(%ebx),%eax
  102b75:	50                   	push   %eax
  102b76:	e8 f1 01 00 00       	call   102d6c <dprintf>
  102b7b:	83 c4 10             	add    $0x10,%esp
  102b7e:	8d 45 14             	lea    0x14(%ebp),%eax
  102b81:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  102b84:	8b 45 c4             	mov    -0x3c(%ebp),%eax
  102b87:	83 ec 08             	sub    $0x8,%esp
  102b8a:	50                   	push   %eax
  102b8b:	ff 75 10             	push   0x10(%ebp)
  102b8e:	e8 65 01 00 00       	call   102cf8 <vdprintf>
  102b93:	83 c4 10             	add    $0x10,%esp
  102b96:	89 e8                	mov    %ebp,%eax
  102b98:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102b9b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102b9e:	83 ec 08             	sub    $0x8,%esp
  102ba1:	8d 55 c8             	lea    -0x38(%ebp),%edx
  102ba4:	52                   	push   %edx
  102ba5:	50                   	push   %eax
  102ba6:	e8 36 ff ff ff       	call   102ae1 <debug_trace>
  102bab:	83 c4 10             	add    $0x10,%esp
  102bae:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102bb5:	eb 1e                	jmp    102bd5 <debug_panic+0x81>
  102bb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bba:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102bbe:	83 ec 08             	sub    $0x8,%esp
  102bc1:	50                   	push   %eax
  102bc2:	8d 83 3b b1 ff ff    	lea    -0x4ec5(%ebx),%eax
  102bc8:	50                   	push   %eax
  102bc9:	e8 9e 01 00 00       	call   102d6c <dprintf>
  102bce:	83 c4 10             	add    $0x10,%esp
  102bd1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102bd5:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  102bd9:	7f 0b                	jg     102be6 <debug_panic+0x92>
  102bdb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bde:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102be2:	85 c0                	test   %eax,%eax
  102be4:	75 d1                	jne    102bb7 <debug_panic+0x63>
  102be6:	83 ec 0c             	sub    $0xc,%esp
  102be9:	8d 83 49 b1 ff ff    	lea    -0x4eb7(%ebx),%eax
  102bef:	50                   	push   %eax
  102bf0:	e8 77 01 00 00       	call   102d6c <dprintf>
  102bf5:	83 c4 10             	add    $0x10,%esp
  102bf8:	e8 e0 0c 00 00       	call   1038dd <halt>
  102bfd:	90                   	nop
  102bfe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c01:	c9                   	leave
  102c02:	c3                   	ret

00102c03 <debug_warn>:
  102c03:	55                   	push   %ebp
  102c04:	89 e5                	mov    %esp,%ebp
  102c06:	53                   	push   %ebx
  102c07:	83 ec 14             	sub    $0x14,%esp
  102c0a:	e8 b1 d7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102c0f:	81 c3 e5 a3 00 00    	add    $0xa3e5,%ebx
  102c15:	83 ec 04             	sub    $0x4,%esp
  102c18:	ff 75 0c             	push   0xc(%ebp)
  102c1b:	ff 75 08             	push   0x8(%ebp)
  102c1e:	8d 83 5b b1 ff ff    	lea    -0x4ea5(%ebx),%eax
  102c24:	50                   	push   %eax
  102c25:	e8 42 01 00 00       	call   102d6c <dprintf>
  102c2a:	83 c4 10             	add    $0x10,%esp
  102c2d:	8d 45 14             	lea    0x14(%ebp),%eax
  102c30:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102c33:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c36:	83 ec 08             	sub    $0x8,%esp
  102c39:	50                   	push   %eax
  102c3a:	ff 75 10             	push   0x10(%ebp)
  102c3d:	e8 b6 00 00 00       	call   102cf8 <vdprintf>
  102c42:	83 c4 10             	add    $0x10,%esp
  102c45:	90                   	nop
  102c46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c49:	c9                   	leave
  102c4a:	c3                   	ret

00102c4b <cputs>:
  102c4b:	55                   	push   %ebp
  102c4c:	89 e5                	mov    %esp,%ebp
  102c4e:	53                   	push   %ebx
  102c4f:	83 ec 04             	sub    $0x4,%esp
  102c52:	e8 69 d7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102c57:	81 c3 9d a3 00 00    	add    $0xa39d,%ebx
  102c5d:	eb 19                	jmp    102c78 <cputs+0x2d>
  102c5f:	8b 45 08             	mov    0x8(%ebp),%eax
  102c62:	0f b6 00             	movzbl (%eax),%eax
  102c65:	0f be c0             	movsbl %al,%eax
  102c68:	83 ec 0c             	sub    $0xc,%esp
  102c6b:	50                   	push   %eax
  102c6c:	e8 5f d8 ff ff       	call   1004d0 <cons_putc>
  102c71:	83 c4 10             	add    $0x10,%esp
  102c74:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102c78:	8b 45 08             	mov    0x8(%ebp),%eax
  102c7b:	0f b6 00             	movzbl (%eax),%eax
  102c7e:	84 c0                	test   %al,%al
  102c80:	75 dd                	jne    102c5f <cputs+0x14>
  102c82:	90                   	nop
  102c83:	90                   	nop
  102c84:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c87:	c9                   	leave
  102c88:	c3                   	ret

00102c89 <putch>:
  102c89:	55                   	push   %ebp
  102c8a:	89 e5                	mov    %esp,%ebp
  102c8c:	83 ec 08             	sub    $0x8,%esp
  102c8f:	e8 24 d7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102c94:	05 60 a3 00 00       	add    $0xa360,%eax
  102c99:	8b 45 0c             	mov    0xc(%ebp),%eax
  102c9c:	8b 00                	mov    (%eax),%eax
  102c9e:	8d 48 01             	lea    0x1(%eax),%ecx
  102ca1:	8b 55 0c             	mov    0xc(%ebp),%edx
  102ca4:	89 0a                	mov    %ecx,(%edx)
  102ca6:	8b 55 08             	mov    0x8(%ebp),%edx
  102ca9:	89 d1                	mov    %edx,%ecx
  102cab:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cae:	88 4c 02 08          	mov    %cl,0x8(%edx,%eax,1)
  102cb2:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cb5:	8b 00                	mov    (%eax),%eax
  102cb7:	3d ff 01 00 00       	cmp    $0x1ff,%eax
  102cbc:	75 28                	jne    102ce6 <putch+0x5d>
  102cbe:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cc1:	8b 00                	mov    (%eax),%eax
  102cc3:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cc6:	c6 44 02 08 00       	movb   $0x0,0x8(%edx,%eax,1)
  102ccb:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cce:	83 c0 08             	add    $0x8,%eax
  102cd1:	83 ec 0c             	sub    $0xc,%esp
  102cd4:	50                   	push   %eax
  102cd5:	e8 71 ff ff ff       	call   102c4b <cputs>
  102cda:	83 c4 10             	add    $0x10,%esp
  102cdd:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ce0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102ce6:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ce9:	8b 40 04             	mov    0x4(%eax),%eax
  102cec:	8d 50 01             	lea    0x1(%eax),%edx
  102cef:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cf2:	89 50 04             	mov    %edx,0x4(%eax)
  102cf5:	90                   	nop
  102cf6:	c9                   	leave
  102cf7:	c3                   	ret

00102cf8 <vdprintf>:
  102cf8:	55                   	push   %ebp
  102cf9:	89 e5                	mov    %esp,%ebp
  102cfb:	53                   	push   %ebx
  102cfc:	81 ec 14 02 00 00    	sub    $0x214,%esp
  102d02:	e8 b1 d6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102d07:	05 ed a2 00 00       	add    $0xa2ed,%eax
  102d0c:	c7 85 f0 fd ff ff 00 	movl   $0x0,-0x210(%ebp)
  102d13:	00 00 00 
  102d16:	c7 85 f4 fd ff ff 00 	movl   $0x0,-0x20c(%ebp)
  102d1d:	00 00 00 
  102d20:	ff 75 0c             	push   0xc(%ebp)
  102d23:	ff 75 08             	push   0x8(%ebp)
  102d26:	8d 95 f0 fd ff ff    	lea    -0x210(%ebp),%edx
  102d2c:	52                   	push   %edx
  102d2d:	8d 90 95 5c ff ff    	lea    -0xa36b(%eax),%edx
  102d33:	52                   	push   %edx
  102d34:	89 c3                	mov    %eax,%ebx
  102d36:	e8 d6 01 00 00       	call   102f11 <vprintfmt>
  102d3b:	83 c4 10             	add    $0x10,%esp
  102d3e:	8b 85 f0 fd ff ff    	mov    -0x210(%ebp),%eax
  102d44:	c6 84 05 f8 fd ff ff 	movb   $0x0,-0x208(%ebp,%eax,1)
  102d4b:	00 
  102d4c:	83 ec 0c             	sub    $0xc,%esp
  102d4f:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  102d55:	83 c0 08             	add    $0x8,%eax
  102d58:	50                   	push   %eax
  102d59:	e8 ed fe ff ff       	call   102c4b <cputs>
  102d5e:	83 c4 10             	add    $0x10,%esp
  102d61:	8b 85 f4 fd ff ff    	mov    -0x20c(%ebp),%eax
  102d67:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102d6a:	c9                   	leave
  102d6b:	c3                   	ret

00102d6c <dprintf>:
  102d6c:	55                   	push   %ebp
  102d6d:	89 e5                	mov    %esp,%ebp
  102d6f:	83 ec 18             	sub    $0x18,%esp
  102d72:	e8 41 d6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102d77:	05 7d a2 00 00       	add    $0xa27d,%eax
  102d7c:	8d 45 0c             	lea    0xc(%ebp),%eax
  102d7f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102d82:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102d85:	83 ec 08             	sub    $0x8,%esp
  102d88:	50                   	push   %eax
  102d89:	ff 75 08             	push   0x8(%ebp)
  102d8c:	e8 67 ff ff ff       	call   102cf8 <vdprintf>
  102d91:	83 c4 10             	add    $0x10,%esp
  102d94:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102d97:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102d9a:	c9                   	leave
  102d9b:	c3                   	ret

00102d9c <printnum>:
  102d9c:	55                   	push   %ebp
  102d9d:	89 e5                	mov    %esp,%ebp
  102d9f:	57                   	push   %edi
  102da0:	56                   	push   %esi
  102da1:	53                   	push   %ebx
  102da2:	83 ec 1c             	sub    $0x1c,%esp
  102da5:	e8 b2 04 00 00       	call   10325c <__x86.get_pc_thunk.si>
  102daa:	81 c6 4a a2 00 00    	add    $0xa24a,%esi
  102db0:	8b 45 10             	mov    0x10(%ebp),%eax
  102db3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  102db6:	8b 45 14             	mov    0x14(%ebp),%eax
  102db9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102dbc:	8b 45 18             	mov    0x18(%ebp),%eax
  102dbf:	ba 00 00 00 00       	mov    $0x0,%edx
  102dc4:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  102dc7:	39 45 e0             	cmp    %eax,-0x20(%ebp)
  102dca:	19 d1                	sbb    %edx,%ecx
  102dcc:	72 4d                	jb     102e1b <printnum+0x7f>
  102dce:	8b 45 1c             	mov    0x1c(%ebp),%eax
  102dd1:	8d 78 ff             	lea    -0x1(%eax),%edi
  102dd4:	8b 45 18             	mov    0x18(%ebp),%eax
  102dd7:	ba 00 00 00 00       	mov    $0x0,%edx
  102ddc:	52                   	push   %edx
  102ddd:	50                   	push   %eax
  102dde:	ff 75 e4             	push   -0x1c(%ebp)
  102de1:	ff 75 e0             	push   -0x20(%ebp)
  102de4:	89 f3                	mov    %esi,%ebx
  102de6:	e8 e5 47 00 00       	call   1075d0 <__udivdi3>
  102deb:	83 c4 10             	add    $0x10,%esp
  102dee:	83 ec 04             	sub    $0x4,%esp
  102df1:	ff 75 20             	push   0x20(%ebp)
  102df4:	57                   	push   %edi
  102df5:	ff 75 18             	push   0x18(%ebp)
  102df8:	52                   	push   %edx
  102df9:	50                   	push   %eax
  102dfa:	ff 75 0c             	push   0xc(%ebp)
  102dfd:	ff 75 08             	push   0x8(%ebp)
  102e00:	e8 97 ff ff ff       	call   102d9c <printnum>
  102e05:	83 c4 20             	add    $0x20,%esp
  102e08:	eb 1b                	jmp    102e25 <printnum+0x89>
  102e0a:	83 ec 08             	sub    $0x8,%esp
  102e0d:	ff 75 0c             	push   0xc(%ebp)
  102e10:	ff 75 20             	push   0x20(%ebp)
  102e13:	8b 45 08             	mov    0x8(%ebp),%eax
  102e16:	ff d0                	call   *%eax
  102e18:	83 c4 10             	add    $0x10,%esp
  102e1b:	83 6d 1c 01          	subl   $0x1,0x1c(%ebp)
  102e1f:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
  102e23:	7f e5                	jg     102e0a <printnum+0x6e>
  102e25:	8b 4d 18             	mov    0x18(%ebp),%ecx
  102e28:	bb 00 00 00 00       	mov    $0x0,%ebx
  102e2d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102e30:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  102e33:	53                   	push   %ebx
  102e34:	51                   	push   %ecx
  102e35:	52                   	push   %edx
  102e36:	50                   	push   %eax
  102e37:	89 f3                	mov    %esi,%ebx
  102e39:	e8 c2 48 00 00       	call   107700 <__umoddi3>
  102e3e:	83 c4 10             	add    $0x10,%esp
  102e41:	8d 8e 68 b1 ff ff    	lea    -0x4e98(%esi),%ecx
  102e47:	01 c8                	add    %ecx,%eax
  102e49:	0f b6 00             	movzbl (%eax),%eax
  102e4c:	0f be c0             	movsbl %al,%eax
  102e4f:	83 ec 08             	sub    $0x8,%esp
  102e52:	ff 75 0c             	push   0xc(%ebp)
  102e55:	50                   	push   %eax
  102e56:	8b 45 08             	mov    0x8(%ebp),%eax
  102e59:	ff d0                	call   *%eax
  102e5b:	83 c4 10             	add    $0x10,%esp
  102e5e:	90                   	nop
  102e5f:	8d 65 f4             	lea    -0xc(%ebp),%esp
  102e62:	5b                   	pop    %ebx
  102e63:	5e                   	pop    %esi
  102e64:	5f                   	pop    %edi
  102e65:	5d                   	pop    %ebp
  102e66:	c3                   	ret

00102e67 <getuint>:
  102e67:	55                   	push   %ebp
  102e68:	89 e5                	mov    %esp,%ebp
  102e6a:	e8 49 d5 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102e6f:	05 85 a1 00 00       	add    $0xa185,%eax
  102e74:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102e78:	7e 14                	jle    102e8e <getuint+0x27>
  102e7a:	8b 45 08             	mov    0x8(%ebp),%eax
  102e7d:	8b 00                	mov    (%eax),%eax
  102e7f:	8d 48 08             	lea    0x8(%eax),%ecx
  102e82:	8b 55 08             	mov    0x8(%ebp),%edx
  102e85:	89 0a                	mov    %ecx,(%edx)
  102e87:	8b 50 04             	mov    0x4(%eax),%edx
  102e8a:	8b 00                	mov    (%eax),%eax
  102e8c:	eb 30                	jmp    102ebe <getuint+0x57>
  102e8e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102e92:	74 16                	je     102eaa <getuint+0x43>
  102e94:	8b 45 08             	mov    0x8(%ebp),%eax
  102e97:	8b 00                	mov    (%eax),%eax
  102e99:	8d 48 04             	lea    0x4(%eax),%ecx
  102e9c:	8b 55 08             	mov    0x8(%ebp),%edx
  102e9f:	89 0a                	mov    %ecx,(%edx)
  102ea1:	8b 00                	mov    (%eax),%eax
  102ea3:	ba 00 00 00 00       	mov    $0x0,%edx
  102ea8:	eb 14                	jmp    102ebe <getuint+0x57>
  102eaa:	8b 45 08             	mov    0x8(%ebp),%eax
  102ead:	8b 00                	mov    (%eax),%eax
  102eaf:	8d 48 04             	lea    0x4(%eax),%ecx
  102eb2:	8b 55 08             	mov    0x8(%ebp),%edx
  102eb5:	89 0a                	mov    %ecx,(%edx)
  102eb7:	8b 00                	mov    (%eax),%eax
  102eb9:	ba 00 00 00 00       	mov    $0x0,%edx
  102ebe:	5d                   	pop    %ebp
  102ebf:	c3                   	ret

00102ec0 <getint>:
  102ec0:	55                   	push   %ebp
  102ec1:	89 e5                	mov    %esp,%ebp
  102ec3:	e8 f0 d4 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102ec8:	05 2c a1 00 00       	add    $0xa12c,%eax
  102ecd:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102ed1:	7e 14                	jle    102ee7 <getint+0x27>
  102ed3:	8b 45 08             	mov    0x8(%ebp),%eax
  102ed6:	8b 00                	mov    (%eax),%eax
  102ed8:	8d 48 08             	lea    0x8(%eax),%ecx
  102edb:	8b 55 08             	mov    0x8(%ebp),%edx
  102ede:	89 0a                	mov    %ecx,(%edx)
  102ee0:	8b 50 04             	mov    0x4(%eax),%edx
  102ee3:	8b 00                	mov    (%eax),%eax
  102ee5:	eb 28                	jmp    102f0f <getint+0x4f>
  102ee7:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102eeb:	74 12                	je     102eff <getint+0x3f>
  102eed:	8b 45 08             	mov    0x8(%ebp),%eax
  102ef0:	8b 00                	mov    (%eax),%eax
  102ef2:	8d 48 04             	lea    0x4(%eax),%ecx
  102ef5:	8b 55 08             	mov    0x8(%ebp),%edx
  102ef8:	89 0a                	mov    %ecx,(%edx)
  102efa:	8b 00                	mov    (%eax),%eax
  102efc:	99                   	cltd
  102efd:	eb 10                	jmp    102f0f <getint+0x4f>
  102eff:	8b 45 08             	mov    0x8(%ebp),%eax
  102f02:	8b 00                	mov    (%eax),%eax
  102f04:	8d 48 04             	lea    0x4(%eax),%ecx
  102f07:	8b 55 08             	mov    0x8(%ebp),%edx
  102f0a:	89 0a                	mov    %ecx,(%edx)
  102f0c:	8b 00                	mov    (%eax),%eax
  102f0e:	99                   	cltd
  102f0f:	5d                   	pop    %ebp
  102f10:	c3                   	ret

00102f11 <vprintfmt>:
  102f11:	55                   	push   %ebp
  102f12:	89 e5                	mov    %esp,%ebp
  102f14:	57                   	push   %edi
  102f15:	56                   	push   %esi
  102f16:	53                   	push   %ebx
  102f17:	83 ec 2c             	sub    $0x2c,%esp
  102f1a:	e8 41 03 00 00       	call   103260 <__x86.get_pc_thunk.di>
  102f1f:	81 c7 d5 a0 00 00    	add    $0xa0d5,%edi
  102f25:	eb 17                	jmp    102f3e <vprintfmt+0x2d>
  102f27:	85 db                	test   %ebx,%ebx
  102f29:	0f 84 24 03 00 00    	je     103253 <.L21+0x2d>
  102f2f:	83 ec 08             	sub    $0x8,%esp
  102f32:	ff 75 0c             	push   0xc(%ebp)
  102f35:	53                   	push   %ebx
  102f36:	8b 45 08             	mov    0x8(%ebp),%eax
  102f39:	ff d0                	call   *%eax
  102f3b:	83 c4 10             	add    $0x10,%esp
  102f3e:	8b 45 10             	mov    0x10(%ebp),%eax
  102f41:	8d 50 01             	lea    0x1(%eax),%edx
  102f44:	89 55 10             	mov    %edx,0x10(%ebp)
  102f47:	0f b6 00             	movzbl (%eax),%eax
  102f4a:	0f b6 d8             	movzbl %al,%ebx
  102f4d:	83 fb 25             	cmp    $0x25,%ebx
  102f50:	75 d5                	jne    102f27 <vprintfmt+0x16>
  102f52:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
  102f56:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
  102f5d:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  102f64:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  102f6b:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
  102f72:	eb 04                	jmp    102f78 <vprintfmt+0x67>
  102f74:	90                   	nop
  102f75:	eb 01                	jmp    102f78 <vprintfmt+0x67>
  102f77:	90                   	nop
  102f78:	8b 45 10             	mov    0x10(%ebp),%eax
  102f7b:	8d 50 01             	lea    0x1(%eax),%edx
  102f7e:	89 55 10             	mov    %edx,0x10(%ebp)
  102f81:	0f b6 00             	movzbl (%eax),%eax
  102f84:	0f b6 d8             	movzbl %al,%ebx
  102f87:	8d 43 dd             	lea    -0x23(%ebx),%eax
  102f8a:	83 f8 55             	cmp    $0x55,%eax
  102f8d:	0f 87 93 02 00 00    	ja     103226 <.L21>
  102f93:	c1 e0 02             	shl    $0x2,%eax
  102f96:	8b 84 38 80 b1 ff ff 	mov    -0x4e80(%eax,%edi,1),%eax
  102f9d:	01 f8                	add    %edi,%eax
  102f9f:	ff e0                	jmp    *%eax

00102fa1 <.L33>:
  102fa1:	c6 45 cb 2d          	movb   $0x2d,-0x35(%ebp)
  102fa5:	eb d1                	jmp    102f78 <vprintfmt+0x67>

00102fa7 <.L31>:
  102fa7:	c6 45 cb 30          	movb   $0x30,-0x35(%ebp)
  102fab:	eb cb                	jmp    102f78 <vprintfmt+0x67>

00102fad <.L30>:
  102fad:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  102fb4:	8b 55 d0             	mov    -0x30(%ebp),%edx
  102fb7:	89 d0                	mov    %edx,%eax
  102fb9:	c1 e0 02             	shl    $0x2,%eax
  102fbc:	01 d0                	add    %edx,%eax
  102fbe:	01 c0                	add    %eax,%eax
  102fc0:	01 d8                	add    %ebx,%eax
  102fc2:	83 e8 30             	sub    $0x30,%eax
  102fc5:	89 45 d0             	mov    %eax,-0x30(%ebp)
  102fc8:	8b 45 10             	mov    0x10(%ebp),%eax
  102fcb:	0f b6 00             	movzbl (%eax),%eax
  102fce:	0f be d8             	movsbl %al,%ebx
  102fd1:	83 fb 2f             	cmp    $0x2f,%ebx
  102fd4:	7e 3d                	jle    103013 <.L36+0xc>
  102fd6:	83 fb 39             	cmp    $0x39,%ebx
  102fd9:	7f 38                	jg     103013 <.L36+0xc>
  102fdb:	83 45 10 01          	addl   $0x1,0x10(%ebp)
  102fdf:	eb d3                	jmp    102fb4 <.L30+0x7>

00102fe1 <.L34>:
  102fe1:	8b 45 14             	mov    0x14(%ebp),%eax
  102fe4:	8d 50 04             	lea    0x4(%eax),%edx
  102fe7:	89 55 14             	mov    %edx,0x14(%ebp)
  102fea:	8b 00                	mov    (%eax),%eax
  102fec:	89 45 d0             	mov    %eax,-0x30(%ebp)
  102fef:	eb 23                	jmp    103014 <.L36+0xd>

00102ff1 <.L32>:
  102ff1:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  102ff5:	0f 89 79 ff ff ff    	jns    102f74 <vprintfmt+0x63>
  102ffb:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  103002:	e9 6d ff ff ff       	jmp    102f74 <vprintfmt+0x63>

00103007 <.L36>:
  103007:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  10300e:	e9 65 ff ff ff       	jmp    102f78 <vprintfmt+0x67>
  103013:	90                   	nop
  103014:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103018:	0f 89 59 ff ff ff    	jns    102f77 <vprintfmt+0x66>
  10301e:	8b 45 d0             	mov    -0x30(%ebp),%eax
  103021:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  103024:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  10302b:	e9 47 ff ff ff       	jmp    102f77 <vprintfmt+0x66>

00103030 <.L27>:
  103030:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
  103034:	e9 3f ff ff ff       	jmp    102f78 <vprintfmt+0x67>

00103039 <.L29>:
  103039:	8b 45 14             	mov    0x14(%ebp),%eax
  10303c:	8d 50 04             	lea    0x4(%eax),%edx
  10303f:	89 55 14             	mov    %edx,0x14(%ebp)
  103042:	8b 00                	mov    (%eax),%eax
  103044:	83 ec 08             	sub    $0x8,%esp
  103047:	ff 75 0c             	push   0xc(%ebp)
  10304a:	50                   	push   %eax
  10304b:	8b 45 08             	mov    0x8(%ebp),%eax
  10304e:	ff d0                	call   *%eax
  103050:	83 c4 10             	add    $0x10,%esp
  103053:	e9 f6 01 00 00       	jmp    10324e <.L21+0x28>

00103058 <.L25>:
  103058:	8b 45 14             	mov    0x14(%ebp),%eax
  10305b:	8d 50 04             	lea    0x4(%eax),%edx
  10305e:	89 55 14             	mov    %edx,0x14(%ebp)
  103061:	8b 30                	mov    (%eax),%esi
  103063:	85 f6                	test   %esi,%esi
  103065:	75 06                	jne    10306d <.L25+0x15>
  103067:	8d b7 79 b1 ff ff    	lea    -0x4e87(%edi),%esi
  10306d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103071:	7e 71                	jle    1030e4 <.L25+0x8c>
  103073:	80 7d cb 2d          	cmpb   $0x2d,-0x35(%ebp)
  103077:	74 6b                	je     1030e4 <.L25+0x8c>
  103079:	8b 45 d0             	mov    -0x30(%ebp),%eax
  10307c:	83 ec 08             	sub    $0x8,%esp
  10307f:	50                   	push   %eax
  103080:	56                   	push   %esi
  103081:	89 fb                	mov    %edi,%ebx
  103083:	e8 01 f9 ff ff       	call   102989 <strnlen>
  103088:	83 c4 10             	add    $0x10,%esp
  10308b:	29 45 d4             	sub    %eax,-0x2c(%ebp)
  10308e:	eb 17                	jmp    1030a7 <.L25+0x4f>
  103090:	0f be 45 cb          	movsbl -0x35(%ebp),%eax
  103094:	83 ec 08             	sub    $0x8,%esp
  103097:	ff 75 0c             	push   0xc(%ebp)
  10309a:	50                   	push   %eax
  10309b:	8b 45 08             	mov    0x8(%ebp),%eax
  10309e:	ff d0                	call   *%eax
  1030a0:	83 c4 10             	add    $0x10,%esp
  1030a3:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  1030a7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1030ab:	7f e3                	jg     103090 <.L25+0x38>
  1030ad:	eb 35                	jmp    1030e4 <.L25+0x8c>
  1030af:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
  1030b3:	74 1c                	je     1030d1 <.L25+0x79>
  1030b5:	83 fb 1f             	cmp    $0x1f,%ebx
  1030b8:	7e 05                	jle    1030bf <.L25+0x67>
  1030ba:	83 fb 7e             	cmp    $0x7e,%ebx
  1030bd:	7e 12                	jle    1030d1 <.L25+0x79>
  1030bf:	83 ec 08             	sub    $0x8,%esp
  1030c2:	ff 75 0c             	push   0xc(%ebp)
  1030c5:	6a 3f                	push   $0x3f
  1030c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1030ca:	ff d0                	call   *%eax
  1030cc:	83 c4 10             	add    $0x10,%esp
  1030cf:	eb 0f                	jmp    1030e0 <.L25+0x88>
  1030d1:	83 ec 08             	sub    $0x8,%esp
  1030d4:	ff 75 0c             	push   0xc(%ebp)
  1030d7:	53                   	push   %ebx
  1030d8:	8b 45 08             	mov    0x8(%ebp),%eax
  1030db:	ff d0                	call   *%eax
  1030dd:	83 c4 10             	add    $0x10,%esp
  1030e0:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  1030e4:	89 f0                	mov    %esi,%eax
  1030e6:	8d 70 01             	lea    0x1(%eax),%esi
  1030e9:	0f b6 00             	movzbl (%eax),%eax
  1030ec:	0f be d8             	movsbl %al,%ebx
  1030ef:	85 db                	test   %ebx,%ebx
  1030f1:	74 26                	je     103119 <.L25+0xc1>
  1030f3:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  1030f7:	78 b6                	js     1030af <.L25+0x57>
  1030f9:	83 6d d0 01          	subl   $0x1,-0x30(%ebp)
  1030fd:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  103101:	79 ac                	jns    1030af <.L25+0x57>
  103103:	eb 14                	jmp    103119 <.L25+0xc1>
  103105:	83 ec 08             	sub    $0x8,%esp
  103108:	ff 75 0c             	push   0xc(%ebp)
  10310b:	6a 20                	push   $0x20
  10310d:	8b 45 08             	mov    0x8(%ebp),%eax
  103110:	ff d0                	call   *%eax
  103112:	83 c4 10             	add    $0x10,%esp
  103115:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  103119:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  10311d:	7f e6                	jg     103105 <.L25+0xad>
  10311f:	e9 2a 01 00 00       	jmp    10324e <.L21+0x28>

00103124 <.L28>:
  103124:	83 ec 08             	sub    $0x8,%esp
  103127:	ff 75 d8             	push   -0x28(%ebp)
  10312a:	8d 45 14             	lea    0x14(%ebp),%eax
  10312d:	50                   	push   %eax
  10312e:	e8 8d fd ff ff       	call   102ec0 <getint>
  103133:	83 c4 10             	add    $0x10,%esp
  103136:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103139:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10313c:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10313f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103142:	85 d2                	test   %edx,%edx
  103144:	79 23                	jns    103169 <.L28+0x45>
  103146:	83 ec 08             	sub    $0x8,%esp
  103149:	ff 75 0c             	push   0xc(%ebp)
  10314c:	6a 2d                	push   $0x2d
  10314e:	8b 45 08             	mov    0x8(%ebp),%eax
  103151:	ff d0                	call   *%eax
  103153:	83 c4 10             	add    $0x10,%esp
  103156:	8b 45 e0             	mov    -0x20(%ebp),%eax
  103159:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10315c:	f7 d8                	neg    %eax
  10315e:	83 d2 00             	adc    $0x0,%edx
  103161:	f7 da                	neg    %edx
  103163:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103166:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  103169:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  103170:	eb 7e                	jmp    1031f0 <.L22+0x1f>

00103172 <.L24>:
  103172:	83 ec 08             	sub    $0x8,%esp
  103175:	ff 75 d8             	push   -0x28(%ebp)
  103178:	8d 45 14             	lea    0x14(%ebp),%eax
  10317b:	50                   	push   %eax
  10317c:	e8 e6 fc ff ff       	call   102e67 <getuint>
  103181:	83 c4 10             	add    $0x10,%esp
  103184:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103187:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10318a:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  103191:	eb 5d                	jmp    1031f0 <.L22+0x1f>

00103193 <.L26>:
  103193:	83 ec 08             	sub    $0x8,%esp
  103196:	ff 75 0c             	push   0xc(%ebp)
  103199:	6a 30                	push   $0x30
  10319b:	8b 45 08             	mov    0x8(%ebp),%eax
  10319e:	ff d0                	call   *%eax
  1031a0:	83 c4 10             	add    $0x10,%esp
  1031a3:	83 ec 08             	sub    $0x8,%esp
  1031a6:	ff 75 0c             	push   0xc(%ebp)
  1031a9:	6a 78                	push   $0x78
  1031ab:	8b 45 08             	mov    0x8(%ebp),%eax
  1031ae:	ff d0                	call   *%eax
  1031b0:	83 c4 10             	add    $0x10,%esp
  1031b3:	8b 45 14             	mov    0x14(%ebp),%eax
  1031b6:	8d 50 04             	lea    0x4(%eax),%edx
  1031b9:	89 55 14             	mov    %edx,0x14(%ebp)
  1031bc:	8b 00                	mov    (%eax),%eax
  1031be:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031c1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1031c8:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  1031cf:	eb 1f                	jmp    1031f0 <.L22+0x1f>

001031d1 <.L22>:
  1031d1:	83 ec 08             	sub    $0x8,%esp
  1031d4:	ff 75 d8             	push   -0x28(%ebp)
  1031d7:	8d 45 14             	lea    0x14(%ebp),%eax
  1031da:	50                   	push   %eax
  1031db:	e8 87 fc ff ff       	call   102e67 <getuint>
  1031e0:	83 c4 10             	add    $0x10,%esp
  1031e3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031e6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  1031e9:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  1031f0:	0f be 55 cb          	movsbl -0x35(%ebp),%edx
  1031f4:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1031f7:	83 ec 04             	sub    $0x4,%esp
  1031fa:	52                   	push   %edx
  1031fb:	ff 75 d4             	push   -0x2c(%ebp)
  1031fe:	50                   	push   %eax
  1031ff:	ff 75 e4             	push   -0x1c(%ebp)
  103202:	ff 75 e0             	push   -0x20(%ebp)
  103205:	ff 75 0c             	push   0xc(%ebp)
  103208:	ff 75 08             	push   0x8(%ebp)
  10320b:	e8 8c fb ff ff       	call   102d9c <printnum>
  103210:	83 c4 20             	add    $0x20,%esp
  103213:	eb 39                	jmp    10324e <.L21+0x28>

00103215 <.L35>:
  103215:	83 ec 08             	sub    $0x8,%esp
  103218:	ff 75 0c             	push   0xc(%ebp)
  10321b:	53                   	push   %ebx
  10321c:	8b 45 08             	mov    0x8(%ebp),%eax
  10321f:	ff d0                	call   *%eax
  103221:	83 c4 10             	add    $0x10,%esp
  103224:	eb 28                	jmp    10324e <.L21+0x28>

00103226 <.L21>:
  103226:	83 ec 08             	sub    $0x8,%esp
  103229:	ff 75 0c             	push   0xc(%ebp)
  10322c:	6a 25                	push   $0x25
  10322e:	8b 45 08             	mov    0x8(%ebp),%eax
  103231:	ff d0                	call   *%eax
  103233:	83 c4 10             	add    $0x10,%esp
  103236:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10323a:	eb 04                	jmp    103240 <.L21+0x1a>
  10323c:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  103240:	8b 45 10             	mov    0x10(%ebp),%eax
  103243:	83 e8 01             	sub    $0x1,%eax
  103246:	0f b6 00             	movzbl (%eax),%eax
  103249:	3c 25                	cmp    $0x25,%al
  10324b:	75 ef                	jne    10323c <.L21+0x16>
  10324d:	90                   	nop
  10324e:	e9 eb fc ff ff       	jmp    102f3e <vprintfmt+0x2d>
  103253:	90                   	nop
  103254:	8d 65 f4             	lea    -0xc(%ebp),%esp
  103257:	5b                   	pop    %ebx
  103258:	5e                   	pop    %esi
  103259:	5f                   	pop    %edi
  10325a:	5d                   	pop    %ebp
  10325b:	c3                   	ret

0010325c <__x86.get_pc_thunk.si>:
  10325c:	8b 34 24             	mov    (%esp),%esi
  10325f:	c3                   	ret

00103260 <__x86.get_pc_thunk.di>:
  103260:	8b 3c 24             	mov    (%esp),%edi
  103263:	c3                   	ret

00103264 <seg_init>:
  103264:	55                   	push   %ebp
  103265:	89 e5                	mov    %esp,%ebp
  103267:	53                   	push   %ebx
  103268:	83 ec 14             	sub    $0x14,%esp
  10326b:	e8 50 d1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103270:	81 c3 84 9d 00 00    	add    $0x9d84,%ebx
  103276:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  10327c:	c7 c2 e0 28 11 00    	mov    $0x1128e0,%edx
  103282:	29 d0                	sub    %edx,%eax
  103284:	83 ec 08             	sub    $0x8,%esp
  103287:	50                   	push   %eax
  103288:	c7 c0 e0 28 11 00    	mov    $0x1128e0,%eax
  10328e:	50                   	push   %eax
  10328f:	e8 b5 f7 ff ff       	call   102a49 <memzero>
  103294:	83 c4 10             	add    $0x10,%esp
  103297:	c7 c0 00 f0 99 01    	mov    $0x199f000,%eax
  10329d:	89 c2                	mov    %eax,%edx
  10329f:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1032a5:	29 c2                	sub    %eax,%edx
  1032a7:	8d 82 00 f0 ff ff    	lea    -0x1000(%edx),%eax
  1032ad:	89 c2                	mov    %eax,%edx
  1032af:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  1032b5:	83 ec 08             	sub    $0x8,%esp
  1032b8:	52                   	push   %edx
  1032b9:	50                   	push   %eax
  1032ba:	e8 8a f7 ff ff       	call   102a49 <memzero>
  1032bf:	83 c4 10             	add    $0x10,%esp
  1032c2:	c7 83 0c 90 04 00 00 	movl   $0x0,0x4900c(%ebx)
  1032c9:	00 00 00 
  1032cc:	c7 83 10 90 04 00 00 	movl   $0x0,0x49010(%ebx)
  1032d3:	00 00 00 
  1032d6:	66 c7 83 14 90 04 00 	movw   $0xffff,0x49014(%ebx)
  1032dd:	ff ff 
  1032df:	66 c7 83 16 90 04 00 	movw   $0x0,0x49016(%ebx)
  1032e6:	00 00 
  1032e8:	c6 83 18 90 04 00 00 	movb   $0x0,0x49018(%ebx)
  1032ef:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  1032f6:	83 e0 f0             	and    $0xfffffff0,%eax
  1032f9:	83 c8 0a             	or     $0xa,%eax
  1032fc:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103302:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103309:	83 c8 10             	or     $0x10,%eax
  10330c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103312:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103319:	83 e0 9f             	and    $0xffffff9f,%eax
  10331c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103322:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103329:	83 c8 80             	or     $0xffffff80,%eax
  10332c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103332:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103339:	83 c8 0f             	or     $0xf,%eax
  10333c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103342:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103349:	83 e0 ef             	and    $0xffffffef,%eax
  10334c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103352:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103359:	83 e0 df             	and    $0xffffffdf,%eax
  10335c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103362:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103369:	83 c8 40             	or     $0x40,%eax
  10336c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103372:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103379:	83 c8 80             	or     $0xffffff80,%eax
  10337c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103382:	c6 83 1b 90 04 00 00 	movb   $0x0,0x4901b(%ebx)
  103389:	66 c7 83 1c 90 04 00 	movw   $0xffff,0x4901c(%ebx)
  103390:	ff ff 
  103392:	66 c7 83 1e 90 04 00 	movw   $0x0,0x4901e(%ebx)
  103399:	00 00 
  10339b:	c6 83 20 90 04 00 00 	movb   $0x0,0x49020(%ebx)
  1033a2:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033a9:	83 e0 f0             	and    $0xfffffff0,%eax
  1033ac:	83 c8 02             	or     $0x2,%eax
  1033af:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033b5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033bc:	83 c8 10             	or     $0x10,%eax
  1033bf:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033c5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033cc:	83 e0 9f             	and    $0xffffff9f,%eax
  1033cf:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033d5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033dc:	83 c8 80             	or     $0xffffff80,%eax
  1033df:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033e5:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  1033ec:	83 c8 0f             	or     $0xf,%eax
  1033ef:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  1033f5:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  1033fc:	83 e0 ef             	and    $0xffffffef,%eax
  1033ff:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103405:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10340c:	83 e0 df             	and    $0xffffffdf,%eax
  10340f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103415:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10341c:	83 c8 40             	or     $0x40,%eax
  10341f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103425:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10342c:	83 c8 80             	or     $0xffffff80,%eax
  10342f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103435:	c6 83 23 90 04 00 00 	movb   $0x0,0x49023(%ebx)
  10343c:	66 c7 83 24 90 04 00 	movw   $0xffff,0x49024(%ebx)
  103443:	ff ff 
  103445:	66 c7 83 26 90 04 00 	movw   $0x0,0x49026(%ebx)
  10344c:	00 00 
  10344e:	c6 83 28 90 04 00 00 	movb   $0x0,0x49028(%ebx)
  103455:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10345c:	83 e0 f0             	and    $0xfffffff0,%eax
  10345f:	83 c8 0a             	or     $0xa,%eax
  103462:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103468:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10346f:	83 c8 10             	or     $0x10,%eax
  103472:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103478:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10347f:	83 c8 60             	or     $0x60,%eax
  103482:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103488:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10348f:	83 c8 80             	or     $0xffffff80,%eax
  103492:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103498:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  10349f:	83 c8 0f             	or     $0xf,%eax
  1034a2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034a8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034af:	83 e0 ef             	and    $0xffffffef,%eax
  1034b2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034b8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034bf:	83 e0 df             	and    $0xffffffdf,%eax
  1034c2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034c8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034cf:	83 c8 40             	or     $0x40,%eax
  1034d2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034d8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034df:	83 c8 80             	or     $0xffffff80,%eax
  1034e2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034e8:	c6 83 2b 90 04 00 00 	movb   $0x0,0x4902b(%ebx)
  1034ef:	66 c7 83 2c 90 04 00 	movw   $0xffff,0x4902c(%ebx)
  1034f6:	ff ff 
  1034f8:	66 c7 83 2e 90 04 00 	movw   $0x0,0x4902e(%ebx)
  1034ff:	00 00 
  103501:	c6 83 30 90 04 00 00 	movb   $0x0,0x49030(%ebx)
  103508:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  10350f:	83 e0 f0             	and    $0xfffffff0,%eax
  103512:	83 c8 02             	or     $0x2,%eax
  103515:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10351b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103522:	83 c8 10             	or     $0x10,%eax
  103525:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10352b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103532:	83 c8 60             	or     $0x60,%eax
  103535:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10353b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103542:	83 c8 80             	or     $0xffffff80,%eax
  103545:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10354b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103552:	83 c8 0f             	or     $0xf,%eax
  103555:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10355b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103562:	83 e0 ef             	and    $0xffffffef,%eax
  103565:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10356b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103572:	83 e0 df             	and    $0xffffffdf,%eax
  103575:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10357b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103582:	83 c8 40             	or     $0x40,%eax
  103585:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10358b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103592:	83 c8 80             	or     $0xffffff80,%eax
  103595:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10359b:	c6 83 33 90 04 00 00 	movb   $0x0,0x49033(%ebx)
  1035a2:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1035a8:	05 00 10 00 00       	add    $0x1000,%eax
  1035ad:	89 83 50 cb 04 00    	mov    %eax,0x4cb50(%ebx)
  1035b3:	66 c7 83 54 cb 04 00 	movw   $0x10,0x4cb54(%ebx)
  1035ba:	10 00 
  1035bc:	66 c7 83 34 90 04 00 	movw   $0xeb,0x49034(%ebx)
  1035c3:	eb 00 
  1035c5:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  1035cb:	66 89 83 36 90 04 00 	mov    %ax,0x49036(%ebx)
  1035d2:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  1035d8:	c1 e8 10             	shr    $0x10,%eax
  1035db:	88 83 38 90 04 00    	mov    %al,0x49038(%ebx)
  1035e1:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  1035e8:	83 e0 f0             	and    $0xfffffff0,%eax
  1035eb:	83 c8 09             	or     $0x9,%eax
  1035ee:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  1035f4:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  1035fb:	83 c8 10             	or     $0x10,%eax
  1035fe:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103604:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10360b:	83 e0 9f             	and    $0xffffff9f,%eax
  10360e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103614:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10361b:	83 c8 80             	or     $0xffffff80,%eax
  10361e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103624:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10362b:	83 e0 f0             	and    $0xfffffff0,%eax
  10362e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103634:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10363b:	83 e0 ef             	and    $0xffffffef,%eax
  10363e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103644:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10364b:	83 e0 df             	and    $0xffffffdf,%eax
  10364e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103654:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10365b:	83 c8 40             	or     $0x40,%eax
  10365e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103664:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10366b:	83 e0 7f             	and    $0x7f,%eax
  10366e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103674:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  10367a:	c1 e8 18             	shr    $0x18,%eax
  10367d:	88 83 3b 90 04 00    	mov    %al,0x4903b(%ebx)
  103683:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10368a:	83 e0 ef             	and    $0xffffffef,%eax
  10368d:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103693:	66 c7 45 ee 2f 00    	movw   $0x2f,-0x12(%ebp)
  103699:	8d 83 0c 90 04 00    	lea    0x4900c(%ebx),%eax
  10369f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1036a2:	0f 01 55 ee          	lgdtl  -0x12(%ebp)
  1036a6:	b8 10 00 00 00       	mov    $0x10,%eax
  1036ab:	8e e8                	mov    %eax,%gs
  1036ad:	b8 10 00 00 00       	mov    $0x10,%eax
  1036b2:	8e e0                	mov    %eax,%fs
  1036b4:	b8 10 00 00 00       	mov    $0x10,%eax
  1036b9:	8e c0                	mov    %eax,%es
  1036bb:	b8 10 00 00 00       	mov    $0x10,%eax
  1036c0:	8e d8                	mov    %eax,%ds
  1036c2:	b8 10 00 00 00       	mov    $0x10,%eax
  1036c7:	8e d0                	mov    %eax,%ss
  1036c9:	ea d0 36 10 00 08 00 	ljmp   $0x8,$0x1036d0
  1036d0:	83 ec 0c             	sub    $0xc,%esp
  1036d3:	6a 00                	push   $0x0
  1036d5:	e8 70 01 00 00       	call   10384a <lldt>
  1036da:	83 c4 10             	add    $0x10,%esp
  1036dd:	83 ec 0c             	sub    $0xc,%esp
  1036e0:	6a 28                	push   $0x28
  1036e2:	e8 2f 03 00 00       	call   103a16 <ltr>
  1036e7:	83 c4 10             	add    $0x10,%esp
  1036ea:	83 ec 08             	sub    $0x8,%esp
  1036ed:	68 00 3b 00 00       	push   $0x3b00
  1036f2:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  1036f8:	50                   	push   %eax
  1036f9:	e8 4b f3 ff ff       	call   102a49 <memzero>
  1036fe:	83 c4 10             	add    $0x10,%esp
  103701:	83 ec 08             	sub    $0x8,%esp
  103704:	68 00 00 04 00       	push   $0x40000
  103709:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  10370f:	50                   	push   %eax
  103710:	e8 34 f3 ff ff       	call   102a49 <memzero>
  103715:	83 c4 10             	add    $0x10,%esp
  103718:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10371f:	e9 9d 00 00 00       	jmp    1037c1 <seg_init+0x55d>
  103724:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103727:	c1 e0 0c             	shl    $0xc,%eax
  10372a:	89 c2                	mov    %eax,%edx
  10372c:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  103732:	01 d0                	add    %edx,%eax
  103734:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
  10373a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10373d:	8d 83 50 90 04 00    	lea    0x49050(%ebx),%eax
  103743:	69 c9 ec 00 00 00    	imul   $0xec,%ecx,%ecx
  103749:	01 c8                	add    %ecx,%eax
  10374b:	89 10                	mov    %edx,(%eax)
  10374d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103750:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  103756:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  10375c:	01 d0                	add    %edx,%eax
  10375e:	66 c7 00 10 00       	movw   $0x10,(%eax)
  103763:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103766:	8d 83 52 90 04 00    	lea    0x49052(%ebx),%eax
  10376c:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  103772:	01 d0                	add    %edx,%eax
  103774:	83 c0 60             	add    $0x60,%eax
  103777:	66 c7 00 68 00       	movw   $0x68,(%eax)
  10377c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10377f:	69 c0 ec 00 00 00    	imul   $0xec,%eax,%eax
  103785:	8d 50 60             	lea    0x60(%eax),%edx
  103788:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  10378e:	01 d0                	add    %edx,%eax
  103790:	83 c0 08             	add    $0x8,%eax
  103793:	83 ec 08             	sub    $0x8,%esp
  103796:	68 80 00 00 00       	push   $0x80
  10379b:	50                   	push   %eax
  10379c:	e8 a8 f2 ff ff       	call   102a49 <memzero>
  1037a1:	83 c4 10             	add    $0x10,%esp
  1037a4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1037a7:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  1037ad:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  1037b3:	01 d0                	add    %edx,%eax
  1037b5:	05 e0 00 00 00       	add    $0xe0,%eax
  1037ba:	c6 00 ff             	movb   $0xff,(%eax)
  1037bd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1037c1:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
  1037c5:	0f 86 59 ff ff ff    	jbe    103724 <seg_init+0x4c0>
  1037cb:	90                   	nop
  1037cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1037cf:	c9                   	leave
  1037d0:	c3                   	ret

001037d1 <max>:
  1037d1:	55                   	push   %ebp
  1037d2:	89 e5                	mov    %esp,%ebp
  1037d4:	e8 df cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1037d9:	05 1b 98 00 00       	add    $0x981b,%eax
  1037de:	8b 55 0c             	mov    0xc(%ebp),%edx
  1037e1:	8b 45 08             	mov    0x8(%ebp),%eax
  1037e4:	39 c2                	cmp    %eax,%edx
  1037e6:	0f 43 c2             	cmovae %edx,%eax
  1037e9:	5d                   	pop    %ebp
  1037ea:	c3                   	ret

001037eb <min>:
  1037eb:	55                   	push   %ebp
  1037ec:	89 e5                	mov    %esp,%ebp
  1037ee:	e8 c5 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1037f3:	05 01 98 00 00       	add    $0x9801,%eax
  1037f8:	8b 55 0c             	mov    0xc(%ebp),%edx
  1037fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1037fe:	39 c2                	cmp    %eax,%edx
  103800:	0f 46 c2             	cmovbe %edx,%eax
  103803:	5d                   	pop    %ebp
  103804:	c3                   	ret

00103805 <rounddown>:
  103805:	55                   	push   %ebp
  103806:	89 e5                	mov    %esp,%ebp
  103808:	e8 ab cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10380d:	05 e7 97 00 00       	add    $0x97e7,%eax
  103812:	8b 45 08             	mov    0x8(%ebp),%eax
  103815:	ba 00 00 00 00       	mov    $0x0,%edx
  10381a:	f7 75 0c             	divl   0xc(%ebp)
  10381d:	8b 45 08             	mov    0x8(%ebp),%eax
  103820:	29 d0                	sub    %edx,%eax
  103822:	5d                   	pop    %ebp
  103823:	c3                   	ret

00103824 <roundup>:
  103824:	55                   	push   %ebp
  103825:	89 e5                	mov    %esp,%ebp
  103827:	e8 8c cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10382c:	05 c8 97 00 00       	add    $0x97c8,%eax
  103831:	8b 55 08             	mov    0x8(%ebp),%edx
  103834:	8b 45 0c             	mov    0xc(%ebp),%eax
  103837:	01 d0                	add    %edx,%eax
  103839:	83 e8 01             	sub    $0x1,%eax
  10383c:	ff 75 0c             	push   0xc(%ebp)
  10383f:	50                   	push   %eax
  103840:	e8 c0 ff ff ff       	call   103805 <rounddown>
  103845:	83 c4 08             	add    $0x8,%esp
  103848:	c9                   	leave
  103849:	c3                   	ret

0010384a <lldt>:
  10384a:	55                   	push   %ebp
  10384b:	89 e5                	mov    %esp,%ebp
  10384d:	83 ec 04             	sub    $0x4,%esp
  103850:	e8 63 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103855:	05 9f 97 00 00       	add    $0x979f,%eax
  10385a:	8b 45 08             	mov    0x8(%ebp),%eax
  10385d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103861:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  103865:	0f 00 d0             	lldt   %eax
  103868:	90                   	nop
  103869:	c9                   	leave
  10386a:	c3                   	ret

0010386b <cli>:
  10386b:	55                   	push   %ebp
  10386c:	89 e5                	mov    %esp,%ebp
  10386e:	e8 45 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103873:	05 81 97 00 00       	add    $0x9781,%eax
  103878:	fa                   	cli
  103879:	90                   	nop
  10387a:	5d                   	pop    %ebp
  10387b:	c3                   	ret

0010387c <sti>:
  10387c:	55                   	push   %ebp
  10387d:	89 e5                	mov    %esp,%ebp
  10387f:	e8 34 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103884:	05 70 97 00 00       	add    $0x9770,%eax
  103889:	fb                   	sti
  10388a:	90                   	nop
  10388b:	90                   	nop
  10388c:	5d                   	pop    %ebp
  10388d:	c3                   	ret

0010388e <rdmsr>:
  10388e:	55                   	push   %ebp
  10388f:	89 e5                	mov    %esp,%ebp
  103891:	83 ec 10             	sub    $0x10,%esp
  103894:	e8 1f cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103899:	05 5b 97 00 00       	add    $0x975b,%eax
  10389e:	8b 45 08             	mov    0x8(%ebp),%eax
  1038a1:	89 c1                	mov    %eax,%ecx
  1038a3:	0f 32                	rdmsr
  1038a5:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1038a8:	89 55 fc             	mov    %edx,-0x4(%ebp)
  1038ab:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1038ae:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1038b1:	c9                   	leave
  1038b2:	c3                   	ret

001038b3 <wrmsr>:
  1038b3:	55                   	push   %ebp
  1038b4:	89 e5                	mov    %esp,%ebp
  1038b6:	83 ec 08             	sub    $0x8,%esp
  1038b9:	e8 fa ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038be:	05 36 97 00 00       	add    $0x9736,%eax
  1038c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1038c6:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1038c9:	8b 45 10             	mov    0x10(%ebp),%eax
  1038cc:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1038cf:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1038d2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1038d5:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1038d8:	0f 30                	wrmsr
  1038da:	90                   	nop
  1038db:	c9                   	leave
  1038dc:	c3                   	ret

001038dd <halt>:
  1038dd:	55                   	push   %ebp
  1038de:	89 e5                	mov    %esp,%ebp
  1038e0:	e8 d3 ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038e5:	05 0f 97 00 00       	add    $0x970f,%eax
  1038ea:	f4                   	hlt
  1038eb:	90                   	nop
  1038ec:	5d                   	pop    %ebp
  1038ed:	c3                   	ret

001038ee <rdtsc>:
  1038ee:	55                   	push   %ebp
  1038ef:	89 e5                	mov    %esp,%ebp
  1038f1:	83 ec 10             	sub    $0x10,%esp
  1038f4:	e8 bf ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038f9:	05 fb 96 00 00       	add    $0x96fb,%eax
  1038fe:	0f 31                	rdtsc
  103900:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103903:	89 55 fc             	mov    %edx,-0x4(%ebp)
  103906:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103909:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10390c:	c9                   	leave
  10390d:	c3                   	ret

0010390e <enable_sse>:
  10390e:	55                   	push   %ebp
  10390f:	89 e5                	mov    %esp,%ebp
  103911:	83 ec 20             	sub    $0x20,%esp
  103914:	e8 9f ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103919:	05 db 96 00 00       	add    $0x96db,%eax
  10391e:	0f 20 e0             	mov    %cr4,%eax
  103921:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103924:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103927:	80 cc 06             	or     $0x6,%ah
  10392a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10392d:	0f ae f0             	mfence
  103930:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103933:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103936:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103939:	0f 22 e0             	mov    %eax,%cr4
  10393c:	90                   	nop
  10393d:	0f 20 c0             	mov    %cr0,%eax
  103940:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103943:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103946:	83 c8 02             	or     $0x2,%eax
  103949:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10394c:	0f ae f0             	mfence
  10394f:	83 65 f8 f3          	andl   $0xfffffff3,-0x8(%ebp)
  103953:	90                   	nop
  103954:	c9                   	leave
  103955:	c3                   	ret

00103956 <cpuid>:
  103956:	55                   	push   %ebp
  103957:	89 e5                	mov    %esp,%ebp
  103959:	53                   	push   %ebx
  10395a:	83 ec 10             	sub    $0x10,%esp
  10395d:	e8 56 ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103962:	05 92 96 00 00       	add    $0x9692,%eax
  103967:	8b 45 08             	mov    0x8(%ebp),%eax
  10396a:	0f a2                	cpuid
  10396c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10396f:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  103972:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  103975:	89 55 ec             	mov    %edx,-0x14(%ebp)
  103978:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10397c:	74 08                	je     103986 <cpuid+0x30>
  10397e:	8b 45 0c             	mov    0xc(%ebp),%eax
  103981:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103984:	89 10                	mov    %edx,(%eax)
  103986:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  10398a:	74 08                	je     103994 <cpuid+0x3e>
  10398c:	8b 45 10             	mov    0x10(%ebp),%eax
  10398f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103992:	89 10                	mov    %edx,(%eax)
  103994:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  103998:	74 08                	je     1039a2 <cpuid+0x4c>
  10399a:	8b 45 14             	mov    0x14(%ebp),%eax
  10399d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1039a0:	89 10                	mov    %edx,(%eax)
  1039a2:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
  1039a6:	74 08                	je     1039b0 <cpuid+0x5a>
  1039a8:	8b 45 18             	mov    0x18(%ebp),%eax
  1039ab:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1039ae:	89 10                	mov    %edx,(%eax)
  1039b0:	90                   	nop
  1039b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1039b4:	c9                   	leave
  1039b5:	c3                   	ret

001039b6 <rcr3>:
  1039b6:	55                   	push   %ebp
  1039b7:	89 e5                	mov    %esp,%ebp
  1039b9:	83 ec 10             	sub    $0x10,%esp
  1039bc:	e8 f7 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039c1:	05 33 96 00 00       	add    $0x9633,%eax
  1039c6:	0f 20 d8             	mov    %cr3,%eax
  1039c9:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1039cc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1039cf:	c9                   	leave
  1039d0:	c3                   	ret

001039d1 <outl>:
  1039d1:	55                   	push   %ebp
  1039d2:	89 e5                	mov    %esp,%ebp
  1039d4:	e8 df c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039d9:	05 1b 96 00 00       	add    $0x961b,%eax
  1039de:	8b 45 0c             	mov    0xc(%ebp),%eax
  1039e1:	8b 55 08             	mov    0x8(%ebp),%edx
  1039e4:	ef                   	out    %eax,(%dx)
  1039e5:	90                   	nop
  1039e6:	5d                   	pop    %ebp
  1039e7:	c3                   	ret

001039e8 <inl>:
  1039e8:	55                   	push   %ebp
  1039e9:	89 e5                	mov    %esp,%ebp
  1039eb:	83 ec 10             	sub    $0x10,%esp
  1039ee:	e8 c5 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039f3:	05 01 96 00 00       	add    $0x9601,%eax
  1039f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1039fb:	89 c2                	mov    %eax,%edx
  1039fd:	ed                   	in     (%dx),%eax
  1039fe:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a01:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a04:	c9                   	leave
  103a05:	c3                   	ret

00103a06 <smp_wmb>:
  103a06:	55                   	push   %ebp
  103a07:	89 e5                	mov    %esp,%ebp
  103a09:	e8 aa c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a0e:	05 e6 95 00 00       	add    $0x95e6,%eax
  103a13:	90                   	nop
  103a14:	5d                   	pop    %ebp
  103a15:	c3                   	ret

00103a16 <ltr>:
  103a16:	55                   	push   %ebp
  103a17:	89 e5                	mov    %esp,%ebp
  103a19:	83 ec 04             	sub    $0x4,%esp
  103a1c:	e8 97 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a21:	05 d3 95 00 00       	add    $0x95d3,%eax
  103a26:	8b 45 08             	mov    0x8(%ebp),%eax
  103a29:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103a2d:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  103a31:	0f 00 d8             	ltr    %eax
  103a34:	90                   	nop
  103a35:	c9                   	leave
  103a36:	c3                   	ret

00103a37 <lcr0>:
  103a37:	55                   	push   %ebp
  103a38:	89 e5                	mov    %esp,%ebp
  103a3a:	e8 79 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a3f:	05 b5 95 00 00       	add    $0x95b5,%eax
  103a44:	8b 45 08             	mov    0x8(%ebp),%eax
  103a47:	0f 22 c0             	mov    %eax,%cr0
  103a4a:	90                   	nop
  103a4b:	5d                   	pop    %ebp
  103a4c:	c3                   	ret

00103a4d <rcr0>:
  103a4d:	55                   	push   %ebp
  103a4e:	89 e5                	mov    %esp,%ebp
  103a50:	83 ec 10             	sub    $0x10,%esp
  103a53:	e8 60 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a58:	05 9c 95 00 00       	add    $0x959c,%eax
  103a5d:	0f 20 c0             	mov    %cr0,%eax
  103a60:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a63:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a66:	c9                   	leave
  103a67:	c3                   	ret

00103a68 <rcr2>:
  103a68:	55                   	push   %ebp
  103a69:	89 e5                	mov    %esp,%ebp
  103a6b:	83 ec 10             	sub    $0x10,%esp
  103a6e:	e8 45 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a73:	05 81 95 00 00       	add    $0x9581,%eax
  103a78:	0f 20 d0             	mov    %cr2,%eax
  103a7b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a7e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a81:	c9                   	leave
  103a82:	c3                   	ret

00103a83 <lcr3>:
  103a83:	55                   	push   %ebp
  103a84:	89 e5                	mov    %esp,%ebp
  103a86:	e8 2d c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a8b:	05 69 95 00 00       	add    $0x9569,%eax
  103a90:	8b 45 08             	mov    0x8(%ebp),%eax
  103a93:	0f 22 d8             	mov    %eax,%cr3
  103a96:	90                   	nop
  103a97:	5d                   	pop    %ebp
  103a98:	c3                   	ret

00103a99 <lcr4>:
  103a99:	55                   	push   %ebp
  103a9a:	89 e5                	mov    %esp,%ebp
  103a9c:	e8 17 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103aa1:	05 53 95 00 00       	add    $0x9553,%eax
  103aa6:	8b 45 08             	mov    0x8(%ebp),%eax
  103aa9:	0f 22 e0             	mov    %eax,%cr4
  103aac:	90                   	nop
  103aad:	5d                   	pop    %ebp
  103aae:	c3                   	ret

00103aaf <rcr4>:
  103aaf:	55                   	push   %ebp
  103ab0:	89 e5                	mov    %esp,%ebp
  103ab2:	83 ec 10             	sub    $0x10,%esp
  103ab5:	e8 fe c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103aba:	05 3a 95 00 00       	add    $0x953a,%eax
  103abf:	0f 20 e0             	mov    %cr4,%eax
  103ac2:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103ac5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ac8:	c9                   	leave
  103ac9:	c3                   	ret

00103aca <inb>:
  103aca:	55                   	push   %ebp
  103acb:	89 e5                	mov    %esp,%ebp
  103acd:	83 ec 10             	sub    $0x10,%esp
  103ad0:	e8 e3 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103ad5:	05 1f 95 00 00       	add    $0x951f,%eax
  103ada:	8b 45 08             	mov    0x8(%ebp),%eax
  103add:	89 c2                	mov    %eax,%edx
  103adf:	ec                   	in     (%dx),%al
  103ae0:	88 45 ff             	mov    %al,-0x1(%ebp)
  103ae3:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  103ae7:	c9                   	leave
  103ae8:	c3                   	ret

00103ae9 <insl>:
  103ae9:	55                   	push   %ebp
  103aea:	89 e5                	mov    %esp,%ebp
  103aec:	57                   	push   %edi
  103aed:	53                   	push   %ebx
  103aee:	e8 c5 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103af3:	05 01 95 00 00       	add    $0x9501,%eax
  103af8:	8b 55 08             	mov    0x8(%ebp),%edx
  103afb:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103afe:	8b 45 10             	mov    0x10(%ebp),%eax
  103b01:	89 cb                	mov    %ecx,%ebx
  103b03:	89 df                	mov    %ebx,%edi
  103b05:	89 c1                	mov    %eax,%ecx
  103b07:	fc                   	cld
  103b08:	f2 6d                	repnz insl (%dx),%es:(%edi)
  103b0a:	89 c8                	mov    %ecx,%eax
  103b0c:	89 fb                	mov    %edi,%ebx
  103b0e:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103b11:	89 45 10             	mov    %eax,0x10(%ebp)
  103b14:	90                   	nop
  103b15:	5b                   	pop    %ebx
  103b16:	5f                   	pop    %edi
  103b17:	5d                   	pop    %ebp
  103b18:	c3                   	ret

00103b19 <outb>:
  103b19:	55                   	push   %ebp
  103b1a:	89 e5                	mov    %esp,%ebp
  103b1c:	83 ec 04             	sub    $0x4,%esp
  103b1f:	e8 94 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103b24:	05 d0 94 00 00       	add    $0x94d0,%eax
  103b29:	8b 45 0c             	mov    0xc(%ebp),%eax
  103b2c:	88 45 fc             	mov    %al,-0x4(%ebp)
  103b2f:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  103b33:	8b 55 08             	mov    0x8(%ebp),%edx
  103b36:	ee                   	out    %al,(%dx)
  103b37:	90                   	nop
  103b38:	c9                   	leave
  103b39:	c3                   	ret

00103b3a <outsw>:
  103b3a:	55                   	push   %ebp
  103b3b:	89 e5                	mov    %esp,%ebp
  103b3d:	56                   	push   %esi
  103b3e:	53                   	push   %ebx
  103b3f:	e8 74 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103b44:	05 b0 94 00 00       	add    $0x94b0,%eax
  103b49:	8b 55 08             	mov    0x8(%ebp),%edx
  103b4c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103b4f:	8b 45 10             	mov    0x10(%ebp),%eax
  103b52:	89 cb                	mov    %ecx,%ebx
  103b54:	89 de                	mov    %ebx,%esi
  103b56:	89 c1                	mov    %eax,%ecx
  103b58:	fc                   	cld
  103b59:	f2 66 6f             	repnz outsw %ds:(%esi),(%dx)
  103b5c:	89 c8                	mov    %ecx,%eax
  103b5e:	89 f3                	mov    %esi,%ebx
  103b60:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103b63:	89 45 10             	mov    %eax,0x10(%ebp)
  103b66:	90                   	nop
  103b67:	5b                   	pop    %ebx
  103b68:	5e                   	pop    %esi
  103b69:	5d                   	pop    %ebp
  103b6a:	c3                   	ret

00103b6b <mon_help>:
  103b6b:	55                   	push   %ebp
  103b6c:	89 e5                	mov    %esp,%ebp
  103b6e:	56                   	push   %esi
  103b6f:	53                   	push   %ebx
  103b70:	83 ec 10             	sub    $0x10,%esp
  103b73:	e8 48 c8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103b78:	81 c3 7c 94 00 00    	add    $0x947c,%ebx
  103b7e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103b85:	eb 44                	jmp    103bcb <mon_help+0x60>
  103b87:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103b8a:	8d 8b 30 05 00 00    	lea    0x530(%ebx),%ecx
  103b90:	89 d0                	mov    %edx,%eax
  103b92:	01 c0                	add    %eax,%eax
  103b94:	01 d0                	add    %edx,%eax
  103b96:	c1 e0 02             	shl    $0x2,%eax
  103b99:	01 c8                	add    %ecx,%eax
  103b9b:	8b 08                	mov    (%eax),%ecx
  103b9d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103ba0:	8d b3 2c 05 00 00    	lea    0x52c(%ebx),%esi
  103ba6:	89 d0                	mov    %edx,%eax
  103ba8:	01 c0                	add    %eax,%eax
  103baa:	01 d0                	add    %edx,%eax
  103bac:	c1 e0 02             	shl    $0x2,%eax
  103baf:	01 f0                	add    %esi,%eax
  103bb1:	8b 00                	mov    (%eax),%eax
  103bb3:	83 ec 04             	sub    $0x4,%esp
  103bb6:	51                   	push   %ecx
  103bb7:	50                   	push   %eax
  103bb8:	8d 83 4c b3 ff ff    	lea    -0x4cb4(%ebx),%eax
  103bbe:	50                   	push   %eax
  103bbf:	e8 a8 f1 ff ff       	call   102d6c <dprintf>
  103bc4:	83 c4 10             	add    $0x10,%esp
  103bc7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  103bcb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103bce:	83 f8 02             	cmp    $0x2,%eax
  103bd1:	76 b4                	jbe    103b87 <mon_help+0x1c>
  103bd3:	b8 00 00 00 00       	mov    $0x0,%eax
  103bd8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  103bdb:	5b                   	pop    %ebx
  103bdc:	5e                   	pop    %esi
  103bdd:	5d                   	pop    %ebp
  103bde:	c3                   	ret

00103bdf <mon_kerninfo>:
  103bdf:	55                   	push   %ebp
  103be0:	89 e5                	mov    %esp,%ebp
  103be2:	53                   	push   %ebx
  103be3:	83 ec 14             	sub    $0x14,%esp
  103be6:	e8 d5 c7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103beb:	81 c3 09 94 00 00    	add    $0x9409,%ebx
  103bf1:	83 ec 0c             	sub    $0xc,%esp
  103bf4:	8d 83 55 b3 ff ff    	lea    -0x4cab(%ebx),%eax
  103bfa:	50                   	push   %eax
  103bfb:	e8 6c f1 ff ff       	call   102d6c <dprintf>
  103c00:	83 c4 10             	add    $0x10,%esp
  103c03:	83 ec 08             	sub    $0x8,%esp
  103c06:	c7 c0 74 4b 10 00    	mov    $0x104b74,%eax
  103c0c:	50                   	push   %eax
  103c0d:	8d 83 6e b3 ff ff    	lea    -0x4c92(%ebx),%eax
  103c13:	50                   	push   %eax
  103c14:	e8 53 f1 ff ff       	call   102d6c <dprintf>
  103c19:	83 c4 10             	add    $0x10,%esp
  103c1c:	83 ec 08             	sub    $0x8,%esp
  103c1f:	c7 c0 46 78 10 00    	mov    $0x107846,%eax
  103c25:	50                   	push   %eax
  103c26:	8d 83 7d b3 ff ff    	lea    -0x4c83(%ebx),%eax
  103c2c:	50                   	push   %eax
  103c2d:	e8 3a f1 ff ff       	call   102d6c <dprintf>
  103c32:	83 c4 10             	add    $0x10,%esp
  103c35:	83 ec 08             	sub    $0x8,%esp
  103c38:	c7 c0 e0 28 11 00    	mov    $0x1128e0,%eax
  103c3e:	50                   	push   %eax
  103c3f:	8d 83 8c b3 ff ff    	lea    -0x4c74(%ebx),%eax
  103c45:	50                   	push   %eax
  103c46:	e8 21 f1 ff ff       	call   102d6c <dprintf>
  103c4b:	83 c4 10             	add    $0x10,%esp
  103c4e:	83 ec 08             	sub    $0x8,%esp
  103c51:	c7 c0 00 f0 99 01    	mov    $0x199f000,%eax
  103c57:	50                   	push   %eax
  103c58:	8d 83 9b b3 ff ff    	lea    -0x4c65(%ebx),%eax
  103c5e:	50                   	push   %eax
  103c5f:	e8 08 f1 ff ff       	call   102d6c <dprintf>
  103c64:	83 c4 10             	add    $0x10,%esp
  103c67:	c7 c0 00 f0 99 01    	mov    $0x199f000,%eax
  103c6d:	89 c1                	mov    %eax,%ecx
  103c6f:	c7 c0 74 4b 10 00    	mov    $0x104b74,%eax
  103c75:	89 c2                	mov    %eax,%edx
  103c77:	89 c8                	mov    %ecx,%eax
  103c79:	29 d0                	sub    %edx,%eax
  103c7b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103c7e:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
  103c85:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103c88:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c8b:	01 d0                	add    %edx,%eax
  103c8d:	83 e8 01             	sub    $0x1,%eax
  103c90:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103c93:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c96:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103c99:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103c9c:	99                   	cltd
  103c9d:	f7 7d e8             	idivl  -0x18(%ebp)
  103ca0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103ca3:	29 d0                	sub    %edx,%eax
  103ca5:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
  103cab:	85 c0                	test   %eax,%eax
  103cad:	0f 48 c2             	cmovs  %edx,%eax
  103cb0:	c1 f8 0a             	sar    $0xa,%eax
  103cb3:	83 ec 08             	sub    $0x8,%esp
  103cb6:	50                   	push   %eax
  103cb7:	8d 83 ac b3 ff ff    	lea    -0x4c54(%ebx),%eax
  103cbd:	50                   	push   %eax
  103cbe:	e8 a9 f0 ff ff       	call   102d6c <dprintf>
  103cc3:	83 c4 10             	add    $0x10,%esp
  103cc6:	b8 00 00 00 00       	mov    $0x0,%eax
  103ccb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103cce:	c9                   	leave
  103ccf:	c3                   	ret

00103cd0 <mon_backtrace>:
  103cd0:	55                   	push   %ebp
  103cd1:	89 e5                	mov    %esp,%ebp
  103cd3:	e8 e0 c6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103cd8:	05 1c 93 00 00       	add    $0x931c,%eax
  103cdd:	b8 00 00 00 00       	mov    $0x0,%eax
  103ce2:	5d                   	pop    %ebp
  103ce3:	c3                   	ret

00103ce4 <mon_start_user>:
  103ce4:	55                   	push   %ebp
  103ce5:	89 e5                	mov    %esp,%ebp
  103ce7:	53                   	push   %ebx
  103ce8:	83 ec 14             	sub    $0x14,%esp
  103ceb:	e8 d0 c6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103cf0:	81 c3 04 93 00 00    	add    $0x9304,%ebx
  103cf6:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103cfc:	85 c0                	test   %eax,%eax
  103cfe:	74 1c                	je     103d1c <mon_start_user+0x38>
  103d00:	83 ec 0c             	sub    $0xc,%esp
  103d03:	8d 83 d8 b3 ff ff    	lea    -0x4c28(%ebx),%eax
  103d09:	50                   	push   %eax
  103d0a:	e8 5d f0 ff ff       	call   102d6c <dprintf>
  103d0f:	83 c4 10             	add    $0x10,%esp
  103d12:	b8 00 00 00 00       	mov    $0x0,%eax
  103d17:	e9 81 00 00 00       	jmp    103d9d <mon_start_user+0xb9>
  103d1c:	c7 c0 00 f0 10 00    	mov    $0x10f000,%eax
  103d22:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103d25:	83 ec 0c             	sub    $0xc,%esp
  103d28:	6a 00                	push   $0x0
  103d2a:	e8 f1 22 00 00       	call   106020 <container_get_quota>
  103d2f:	83 c4 10             	add    $0x10,%esp
  103d32:	83 ec 08             	sub    $0x8,%esp
  103d35:	50                   	push   %eax
  103d36:	6a 00                	push   $0x0
  103d38:	e8 f3 36 00 00       	call   107430 <alloc_mem_quota>
  103d3d:	83 c4 10             	add    $0x10,%esp
  103d40:	89 83 38 cc 04 00    	mov    %eax,0x4cc38(%ebx)
  103d46:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d4c:	83 ec 08             	sub    $0x8,%esp
  103d4f:	50                   	push   %eax
  103d50:	ff 75 f4             	push   -0xc(%ebp)
  103d53:	e8 48 05 00 00       	call   1042a0 <elf_load>
  103d58:	83 c4 10             	add    $0x10,%esp
  103d5b:	83 ec 08             	sub    $0x8,%esp
  103d5e:	ff 75 f4             	push   -0xc(%ebp)
  103d61:	8d 83 34 b4 ff ff    	lea    -0x4bcc(%ebx),%eax
  103d67:	50                   	push   %eax
  103d68:	e8 ff ef ff ff       	call   102d6c <dprintf>
  103d6d:	83 c4 10             	add    $0x10,%esp
  103d70:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d76:	83 ec 0c             	sub    $0xc,%esp
  103d79:	50                   	push   %eax
  103d7a:	e8 d1 26 00 00       	call   106450 <set_pdir_base>
  103d7f:	83 c4 10             	add    $0x10,%esp
  103d82:	83 ec 0c             	sub    $0xc,%esp
  103d85:	ff 75 f4             	push   -0xc(%ebp)
  103d88:	e8 d3 07 00 00       	call   104560 <elf_entry>
  103d8d:	83 c4 10             	add    $0x10,%esp
  103d90:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103d93:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103d96:	ff d0                	call   *%eax
  103d98:	b8 00 00 00 00       	mov    $0x0,%eax
  103d9d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103da0:	c9                   	leave
  103da1:	c3                   	ret

00103da2 <runcmd>:
  103da2:	55                   	push   %ebp
  103da3:	89 e5                	mov    %esp,%ebp
  103da5:	53                   	push   %ebx
  103da6:	83 ec 54             	sub    $0x54,%esp
  103da9:	e8 12 c6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103dae:	81 c3 46 92 00 00    	add    $0x9246,%ebx
  103db4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103dbb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103dbe:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103dc5:	00 
  103dc6:	eb 0c                	jmp    103dd4 <runcmd+0x32>
  103dc8:	8b 45 08             	mov    0x8(%ebp),%eax
  103dcb:	8d 50 01             	lea    0x1(%eax),%edx
  103dce:	89 55 08             	mov    %edx,0x8(%ebp)
  103dd1:	c6 00 00             	movb   $0x0,(%eax)
  103dd4:	8b 45 08             	mov    0x8(%ebp),%eax
  103dd7:	0f b6 00             	movzbl (%eax),%eax
  103dda:	84 c0                	test   %al,%al
  103ddc:	74 20                	je     103dfe <runcmd+0x5c>
  103dde:	8b 45 08             	mov    0x8(%ebp),%eax
  103de1:	0f b6 00             	movzbl (%eax),%eax
  103de4:	0f be c0             	movsbl %al,%eax
  103de7:	83 ec 08             	sub    $0x8,%esp
  103dea:	50                   	push   %eax
  103deb:	8d 83 4f b4 ff ff    	lea    -0x4bb1(%ebx),%eax
  103df1:	50                   	push   %eax
  103df2:	e8 15 ec ff ff       	call   102a0c <strchr>
  103df7:	83 c4 10             	add    $0x10,%esp
  103dfa:	85 c0                	test   %eax,%eax
  103dfc:	75 ca                	jne    103dc8 <runcmd+0x26>
  103dfe:	8b 45 08             	mov    0x8(%ebp),%eax
  103e01:	0f b6 00             	movzbl (%eax),%eax
  103e04:	84 c0                	test   %al,%al
  103e06:	74 69                	je     103e71 <runcmd+0xcf>
  103e08:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
  103e0c:	75 1e                	jne    103e2c <runcmd+0x8a>
  103e0e:	83 ec 08             	sub    $0x8,%esp
  103e11:	6a 10                	push   $0x10
  103e13:	8d 83 54 b4 ff ff    	lea    -0x4bac(%ebx),%eax
  103e19:	50                   	push   %eax
  103e1a:	e8 4d ef ff ff       	call   102d6c <dprintf>
  103e1f:	83 c4 10             	add    $0x10,%esp
  103e22:	b8 00 00 00 00       	mov    $0x0,%eax
  103e27:	e9 e5 00 00 00       	jmp    103f11 <runcmd+0x16f>
  103e2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e2f:	8d 50 01             	lea    0x1(%eax),%edx
  103e32:	89 55 f4             	mov    %edx,-0xc(%ebp)
  103e35:	8b 55 08             	mov    0x8(%ebp),%edx
  103e38:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4)
  103e3c:	eb 04                	jmp    103e42 <runcmd+0xa0>
  103e3e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  103e42:	8b 45 08             	mov    0x8(%ebp),%eax
  103e45:	0f b6 00             	movzbl (%eax),%eax
  103e48:	84 c0                	test   %al,%al
  103e4a:	74 88                	je     103dd4 <runcmd+0x32>
  103e4c:	8b 45 08             	mov    0x8(%ebp),%eax
  103e4f:	0f b6 00             	movzbl (%eax),%eax
  103e52:	0f be c0             	movsbl %al,%eax
  103e55:	83 ec 08             	sub    $0x8,%esp
  103e58:	50                   	push   %eax
  103e59:	8d 83 4f b4 ff ff    	lea    -0x4bb1(%ebx),%eax
  103e5f:	50                   	push   %eax
  103e60:	e8 a7 eb ff ff       	call   102a0c <strchr>
  103e65:	83 c4 10             	add    $0x10,%esp
  103e68:	85 c0                	test   %eax,%eax
  103e6a:	74 d2                	je     103e3e <runcmd+0x9c>
  103e6c:	e9 63 ff ff ff       	jmp    103dd4 <runcmd+0x32>
  103e71:	90                   	nop
  103e72:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e75:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103e7c:	00 
  103e7d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103e81:	75 0a                	jne    103e8d <runcmd+0xeb>
  103e83:	b8 00 00 00 00       	mov    $0x0,%eax
  103e88:	e9 84 00 00 00       	jmp    103f11 <runcmd+0x16f>
  103e8d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103e94:	eb 58                	jmp    103eee <runcmd+0x14c>
  103e96:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103e99:	8d 8b 2c 05 00 00    	lea    0x52c(%ebx),%ecx
  103e9f:	89 d0                	mov    %edx,%eax
  103ea1:	01 c0                	add    %eax,%eax
  103ea3:	01 d0                	add    %edx,%eax
  103ea5:	c1 e0 02             	shl    $0x2,%eax
  103ea8:	01 c8                	add    %ecx,%eax
  103eaa:	8b 10                	mov    (%eax),%edx
  103eac:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103eaf:	83 ec 08             	sub    $0x8,%esp
  103eb2:	52                   	push   %edx
  103eb3:	50                   	push   %eax
  103eb4:	e8 0a eb ff ff       	call   1029c3 <strcmp>
  103eb9:	83 c4 10             	add    $0x10,%esp
  103ebc:	85 c0                	test   %eax,%eax
  103ebe:	75 2a                	jne    103eea <runcmd+0x148>
  103ec0:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103ec3:	8d 8b 34 05 00 00    	lea    0x534(%ebx),%ecx
  103ec9:	89 d0                	mov    %edx,%eax
  103ecb:	01 c0                	add    %eax,%eax
  103ecd:	01 d0                	add    %edx,%eax
  103ecf:	c1 e0 02             	shl    $0x2,%eax
  103ed2:	01 c8                	add    %ecx,%eax
  103ed4:	8b 00                	mov    (%eax),%eax
  103ed6:	83 ec 04             	sub    $0x4,%esp
  103ed9:	ff 75 0c             	push   0xc(%ebp)
  103edc:	8d 55 b0             	lea    -0x50(%ebp),%edx
  103edf:	52                   	push   %edx
  103ee0:	ff 75 f4             	push   -0xc(%ebp)
  103ee3:	ff d0                	call   *%eax
  103ee5:	83 c4 10             	add    $0x10,%esp
  103ee8:	eb 27                	jmp    103f11 <runcmd+0x16f>
  103eea:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  103eee:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103ef1:	83 f8 02             	cmp    $0x2,%eax
  103ef4:	76 a0                	jbe    103e96 <runcmd+0xf4>
  103ef6:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103ef9:	83 ec 08             	sub    $0x8,%esp
  103efc:	50                   	push   %eax
  103efd:	8d 83 71 b4 ff ff    	lea    -0x4b8f(%ebx),%eax
  103f03:	50                   	push   %eax
  103f04:	e8 63 ee ff ff       	call   102d6c <dprintf>
  103f09:	83 c4 10             	add    $0x10,%esp
  103f0c:	b8 00 00 00 00       	mov    $0x0,%eax
  103f11:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103f14:	c9                   	leave
  103f15:	c3                   	ret

00103f16 <monitor>:
  103f16:	55                   	push   %ebp
  103f17:	89 e5                	mov    %esp,%ebp
  103f19:	53                   	push   %ebx
  103f1a:	83 ec 14             	sub    $0x14,%esp
  103f1d:	e8 9e c4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103f22:	81 c3 d2 90 00 00    	add    $0x90d2,%ebx
  103f28:	83 ec 0c             	sub    $0xc,%esp
  103f2b:	8d 83 88 b4 ff ff    	lea    -0x4b78(%ebx),%eax
  103f31:	50                   	push   %eax
  103f32:	e8 35 ee ff ff       	call   102d6c <dprintf>
  103f37:	83 c4 10             	add    $0x10,%esp
  103f3a:	83 ec 0c             	sub    $0xc,%esp
  103f3d:	8d 83 b4 b4 ff ff    	lea    -0x4b4c(%ebx),%eax
  103f43:	50                   	push   %eax
  103f44:	e8 23 ee ff ff       	call   102d6c <dprintf>
  103f49:	83 c4 10             	add    $0x10,%esp
  103f4c:	83 ec 0c             	sub    $0xc,%esp
  103f4f:	8d 83 88 b4 ff ff    	lea    -0x4b78(%ebx),%eax
  103f55:	50                   	push   %eax
  103f56:	e8 11 ee ff ff       	call   102d6c <dprintf>
  103f5b:	83 c4 10             	add    $0x10,%esp
  103f5e:	83 ec 0c             	sub    $0xc,%esp
  103f61:	8d 83 e0 b4 ff ff    	lea    -0x4b20(%ebx),%eax
  103f67:	50                   	push   %eax
  103f68:	e8 ff ed ff ff       	call   102d6c <dprintf>
  103f6d:	83 c4 10             	add    $0x10,%esp
  103f70:	83 ec 0c             	sub    $0xc,%esp
  103f73:	8d 83 05 b5 ff ff    	lea    -0x4afb(%ebx),%eax
  103f79:	50                   	push   %eax
  103f7a:	e8 dd c5 ff ff       	call   10055c <readline>
  103f7f:	83 c4 10             	add    $0x10,%esp
  103f82:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f85:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103f89:	74 e5                	je     103f70 <monitor+0x5a>
  103f8b:	83 ec 08             	sub    $0x8,%esp
  103f8e:	ff 75 08             	push   0x8(%ebp)
  103f91:	ff 75 f4             	push   -0xc(%ebp)
  103f94:	e8 09 fe ff ff       	call   103da2 <runcmd>
  103f99:	83 c4 10             	add    $0x10,%esp
  103f9c:	85 c0                	test   %eax,%eax
  103f9e:	78 02                	js     103fa2 <monitor+0x8c>
  103fa0:	eb ce                	jmp    103f70 <monitor+0x5a>
  103fa2:	90                   	nop
  103fa3:	90                   	nop
  103fa4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103fa7:	c9                   	leave
  103fa8:	c3                   	ret

00103fa9 <pt_copyin>:
  103fa9:	55                   	push   %ebp
  103faa:	89 e5                	mov    %esp,%ebp
  103fac:	53                   	push   %ebx
  103fad:	83 ec 14             	sub    $0x14,%esp
  103fb0:	e8 0b c4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103fb5:	81 c3 3f 90 00 00    	add    $0x903f,%ebx
  103fbb:	81 7d 0c ff ff ff 3f 	cmpl   $0x3fffffff,0xc(%ebp)
  103fc2:	76 0f                	jbe    103fd3 <pt_copyin+0x2a>
  103fc4:	8b 55 0c             	mov    0xc(%ebp),%edx
  103fc7:	8b 45 14             	mov    0x14(%ebp),%eax
  103fca:	01 d0                	add    %edx,%eax
  103fcc:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  103fd1:	76 0a                	jbe    103fdd <pt_copyin+0x34>
  103fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  103fd8:	e9 d7 00 00 00       	jmp    1040b4 <pt_copyin+0x10b>
  103fdd:	8b 55 10             	mov    0x10(%ebp),%edx
  103fe0:	8b 45 14             	mov    0x14(%ebp),%eax
  103fe3:	01 d0                	add    %edx,%eax
  103fe5:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  103fea:	76 0a                	jbe    103ff6 <pt_copyin+0x4d>
  103fec:	b8 00 00 00 00       	mov    $0x0,%eax
  103ff1:	e9 be 00 00 00       	jmp    1040b4 <pt_copyin+0x10b>
  103ff6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103ffd:	e9 a5 00 00 00       	jmp    1040a7 <pt_copyin+0xfe>
  104002:	83 ec 08             	sub    $0x8,%esp
  104005:	ff 75 0c             	push   0xc(%ebp)
  104008:	ff 75 08             	push   0x8(%ebp)
  10400b:	e8 b0 28 00 00       	call   1068c0 <get_ptbl_entry_by_va>
  104010:	83 c4 10             	add    $0x10,%esp
  104013:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104016:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104019:	83 e0 01             	and    $0x1,%eax
  10401c:	85 c0                	test   %eax,%eax
  10401e:	75 27                	jne    104047 <pt_copyin+0x9e>
  104020:	83 ec 04             	sub    $0x4,%esp
  104023:	6a 07                	push   $0x7
  104025:	ff 75 0c             	push   0xc(%ebp)
  104028:	ff 75 08             	push   0x8(%ebp)
  10402b:	e8 b0 33 00 00       	call   1073e0 <alloc_page>
  104030:	83 c4 10             	add    $0x10,%esp
  104033:	83 ec 08             	sub    $0x8,%esp
  104036:	ff 75 0c             	push   0xc(%ebp)
  104039:	ff 75 08             	push   0x8(%ebp)
  10403c:	e8 7f 28 00 00       	call   1068c0 <get_ptbl_entry_by_va>
  104041:	83 c4 10             	add    $0x10,%esp
  104044:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104047:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10404a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10404f:	89 c2                	mov    %eax,%edx
  104051:	8b 45 0c             	mov    0xc(%ebp),%eax
  104054:	25 ff 0f 00 00       	and    $0xfff,%eax
  104059:	09 d0                	or     %edx,%eax
  10405b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10405e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104061:	25 ff 0f 00 00       	and    $0xfff,%eax
  104066:	89 c2                	mov    %eax,%edx
  104068:	b8 00 10 00 00       	mov    $0x1000,%eax
  10406d:	29 d0                	sub    %edx,%eax
  10406f:	8b 55 14             	mov    0x14(%ebp),%edx
  104072:	39 c2                	cmp    %eax,%edx
  104074:	0f 46 c2             	cmovbe %edx,%eax
  104077:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10407a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10407d:	83 ec 04             	sub    $0x4,%esp
  104080:	ff 75 ec             	push   -0x14(%ebp)
  104083:	50                   	push   %eax
  104084:	ff 75 10             	push   0x10(%ebp)
  104087:	e8 7d e8 ff ff       	call   102909 <memcpy>
  10408c:	83 c4 10             	add    $0x10,%esp
  10408f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104092:	29 45 14             	sub    %eax,0x14(%ebp)
  104095:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104098:	01 45 0c             	add    %eax,0xc(%ebp)
  10409b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10409e:	01 45 10             	add    %eax,0x10(%ebp)
  1040a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1040a4:	01 45 f4             	add    %eax,-0xc(%ebp)
  1040a7:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1040ab:	0f 85 51 ff ff ff    	jne    104002 <pt_copyin+0x59>
  1040b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1040b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1040b7:	c9                   	leave
  1040b8:	c3                   	ret

001040b9 <pt_copyout>:
  1040b9:	55                   	push   %ebp
  1040ba:	89 e5                	mov    %esp,%ebp
  1040bc:	53                   	push   %ebx
  1040bd:	83 ec 14             	sub    $0x14,%esp
  1040c0:	e8 fb c2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1040c5:	81 c3 2f 8f 00 00    	add    $0x8f2f,%ebx
  1040cb:	81 7d 10 ff ff ff 3f 	cmpl   $0x3fffffff,0x10(%ebp)
  1040d2:	76 0f                	jbe    1040e3 <pt_copyout+0x2a>
  1040d4:	8b 55 10             	mov    0x10(%ebp),%edx
  1040d7:	8b 45 14             	mov    0x14(%ebp),%eax
  1040da:	01 d0                	add    %edx,%eax
  1040dc:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  1040e1:	76 0a                	jbe    1040ed <pt_copyout+0x34>
  1040e3:	b8 00 00 00 00       	mov    $0x0,%eax
  1040e8:	e9 d7 00 00 00       	jmp    1041c4 <pt_copyout+0x10b>
  1040ed:	8b 55 08             	mov    0x8(%ebp),%edx
  1040f0:	8b 45 14             	mov    0x14(%ebp),%eax
  1040f3:	01 d0                	add    %edx,%eax
  1040f5:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  1040fa:	76 0a                	jbe    104106 <pt_copyout+0x4d>
  1040fc:	b8 00 00 00 00       	mov    $0x0,%eax
  104101:	e9 be 00 00 00       	jmp    1041c4 <pt_copyout+0x10b>
  104106:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10410d:	e9 a5 00 00 00       	jmp    1041b7 <pt_copyout+0xfe>
  104112:	83 ec 08             	sub    $0x8,%esp
  104115:	ff 75 10             	push   0x10(%ebp)
  104118:	ff 75 0c             	push   0xc(%ebp)
  10411b:	e8 a0 27 00 00       	call   1068c0 <get_ptbl_entry_by_va>
  104120:	83 c4 10             	add    $0x10,%esp
  104123:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104126:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104129:	83 e0 01             	and    $0x1,%eax
  10412c:	85 c0                	test   %eax,%eax
  10412e:	75 27                	jne    104157 <pt_copyout+0x9e>
  104130:	83 ec 04             	sub    $0x4,%esp
  104133:	6a 07                	push   $0x7
  104135:	ff 75 10             	push   0x10(%ebp)
  104138:	ff 75 0c             	push   0xc(%ebp)
  10413b:	e8 a0 32 00 00       	call   1073e0 <alloc_page>
  104140:	83 c4 10             	add    $0x10,%esp
  104143:	83 ec 08             	sub    $0x8,%esp
  104146:	ff 75 10             	push   0x10(%ebp)
  104149:	ff 75 0c             	push   0xc(%ebp)
  10414c:	e8 6f 27 00 00       	call   1068c0 <get_ptbl_entry_by_va>
  104151:	83 c4 10             	add    $0x10,%esp
  104154:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104157:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10415a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10415f:	89 c2                	mov    %eax,%edx
  104161:	8b 45 10             	mov    0x10(%ebp),%eax
  104164:	25 ff 0f 00 00       	and    $0xfff,%eax
  104169:	09 d0                	or     %edx,%eax
  10416b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10416e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104171:	25 ff 0f 00 00       	and    $0xfff,%eax
  104176:	89 c2                	mov    %eax,%edx
  104178:	b8 00 10 00 00       	mov    $0x1000,%eax
  10417d:	29 d0                	sub    %edx,%eax
  10417f:	8b 55 14             	mov    0x14(%ebp),%edx
  104182:	39 c2                	cmp    %eax,%edx
  104184:	0f 46 c2             	cmovbe %edx,%eax
  104187:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10418a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10418d:	83 ec 04             	sub    $0x4,%esp
  104190:	ff 75 ec             	push   -0x14(%ebp)
  104193:	ff 75 08             	push   0x8(%ebp)
  104196:	50                   	push   %eax
  104197:	e8 6d e7 ff ff       	call   102909 <memcpy>
  10419c:	83 c4 10             	add    $0x10,%esp
  10419f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041a2:	29 45 14             	sub    %eax,0x14(%ebp)
  1041a5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041a8:	01 45 10             	add    %eax,0x10(%ebp)
  1041ab:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041ae:	01 45 08             	add    %eax,0x8(%ebp)
  1041b1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041b4:	01 45 f4             	add    %eax,-0xc(%ebp)
  1041b7:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1041bb:	0f 85 51 ff ff ff    	jne    104112 <pt_copyout+0x59>
  1041c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1041c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1041c7:	c9                   	leave
  1041c8:	c3                   	ret

001041c9 <pt_memset>:
  1041c9:	55                   	push   %ebp
  1041ca:	89 e5                	mov    %esp,%ebp
  1041cc:	53                   	push   %ebx
  1041cd:	83 ec 24             	sub    $0x24,%esp
  1041d0:	e8 eb c1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1041d5:	81 c3 1f 8e 00 00    	add    $0x8e1f,%ebx
  1041db:	8b 45 10             	mov    0x10(%ebp),%eax
  1041de:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1041e1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1041e8:	e9 a1 00 00 00       	jmp    10428e <pt_memset+0xc5>
  1041ed:	83 ec 08             	sub    $0x8,%esp
  1041f0:	ff 75 0c             	push   0xc(%ebp)
  1041f3:	ff 75 08             	push   0x8(%ebp)
  1041f6:	e8 c5 26 00 00       	call   1068c0 <get_ptbl_entry_by_va>
  1041fb:	83 c4 10             	add    $0x10,%esp
  1041fe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104201:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104204:	83 e0 01             	and    $0x1,%eax
  104207:	85 c0                	test   %eax,%eax
  104209:	75 27                	jne    104232 <pt_memset+0x69>
  10420b:	83 ec 04             	sub    $0x4,%esp
  10420e:	6a 07                	push   $0x7
  104210:	ff 75 0c             	push   0xc(%ebp)
  104213:	ff 75 08             	push   0x8(%ebp)
  104216:	e8 c5 31 00 00       	call   1073e0 <alloc_page>
  10421b:	83 c4 10             	add    $0x10,%esp
  10421e:	83 ec 08             	sub    $0x8,%esp
  104221:	ff 75 0c             	push   0xc(%ebp)
  104224:	ff 75 08             	push   0x8(%ebp)
  104227:	e8 94 26 00 00       	call   1068c0 <get_ptbl_entry_by_va>
  10422c:	83 c4 10             	add    $0x10,%esp
  10422f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104232:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104235:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10423a:	89 c2                	mov    %eax,%edx
  10423c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10423f:	25 ff 0f 00 00       	and    $0xfff,%eax
  104244:	09 d0                	or     %edx,%eax
  104246:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104249:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10424c:	25 ff 0f 00 00       	and    $0xfff,%eax
  104251:	89 c2                	mov    %eax,%edx
  104253:	b8 00 10 00 00       	mov    $0x1000,%eax
  104258:	29 d0                	sub    %edx,%eax
  10425a:	8b 55 14             	mov    0x14(%ebp),%edx
  10425d:	39 c2                	cmp    %eax,%edx
  10425f:	0f 46 c2             	cmovbe %edx,%eax
  104262:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104265:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
  104269:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10426c:	83 ec 04             	sub    $0x4,%esp
  10426f:	ff 75 ec             	push   -0x14(%ebp)
  104272:	52                   	push   %edx
  104273:	50                   	push   %eax
  104274:	e8 32 e5 ff ff       	call   1027ab <memset>
  104279:	83 c4 10             	add    $0x10,%esp
  10427c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10427f:	29 45 14             	sub    %eax,0x14(%ebp)
  104282:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104285:	01 45 0c             	add    %eax,0xc(%ebp)
  104288:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10428b:	01 45 f4             	add    %eax,-0xc(%ebp)
  10428e:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  104292:	0f 85 55 ff ff ff    	jne    1041ed <pt_memset+0x24>
  104298:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10429b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10429e:	c9                   	leave
  10429f:	c3                   	ret

001042a0 <elf_load>:
  1042a0:	55                   	push   %ebp
  1042a1:	89 e5                	mov    %esp,%ebp
  1042a3:	53                   	push   %ebx
  1042a4:	83 ec 34             	sub    $0x34,%esp
  1042a7:	e8 14 c1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1042ac:	81 c3 48 8d 00 00    	add    $0x8d48,%ebx
  1042b2:	8b 45 08             	mov    0x8(%ebp),%eax
  1042b5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1042b8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1042bb:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1042be:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1042c1:	8b 00                	mov    (%eax),%eax
  1042c3:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  1042c8:	74 1f                	je     1042e9 <elf_load+0x49>
  1042ca:	8d 83 0c b5 ff ff    	lea    -0x4af4(%ebx),%eax
  1042d0:	50                   	push   %eax
  1042d1:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  1042d7:	50                   	push   %eax
  1042d8:	6a 26                	push   $0x26
  1042da:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  1042e0:	50                   	push   %eax
  1042e1:	e8 6e e8 ff ff       	call   102b54 <debug_panic>
  1042e6:	83 c4 10             	add    $0x10,%esp
  1042e9:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1042ec:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  1042f0:	66 85 c0             	test   %ax,%ax
  1042f3:	75 1f                	jne    104314 <elf_load+0x74>
  1042f5:	8d 83 54 b5 ff ff    	lea    -0x4aac(%ebx),%eax
  1042fb:	50                   	push   %eax
  1042fc:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  104302:	50                   	push   %eax
  104303:	6a 27                	push   $0x27
  104305:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  10430b:	50                   	push   %eax
  10430c:	e8 43 e8 ff ff       	call   102b54 <debug_panic>
  104311:	83 c4 10             	add    $0x10,%esp
  104314:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104317:	8b 50 20             	mov    0x20(%eax),%edx
  10431a:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10431d:	01 d0                	add    %edx,%eax
  10431f:	89 45 dc             	mov    %eax,-0x24(%ebp)
  104322:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104325:	0f b7 40 30          	movzwl 0x30(%eax),%eax
  104329:	0f b7 d0             	movzwl %ax,%edx
  10432c:	89 d0                	mov    %edx,%eax
  10432e:	c1 e0 02             	shl    $0x2,%eax
  104331:	01 d0                	add    %edx,%eax
  104333:	c1 e0 03             	shl    $0x3,%eax
  104336:	89 c2                	mov    %eax,%edx
  104338:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10433b:	01 d0                	add    %edx,%eax
  10433d:	89 45 d8             	mov    %eax,-0x28(%ebp)
  104340:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104343:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  104347:	0f b7 d0             	movzwl %ax,%edx
  10434a:	89 d0                	mov    %edx,%eax
  10434c:	c1 e0 02             	shl    $0x2,%eax
  10434f:	01 d0                	add    %edx,%eax
  104351:	c1 e0 03             	shl    $0x3,%eax
  104354:	89 c2                	mov    %eax,%edx
  104356:	8b 45 dc             	mov    -0x24(%ebp),%eax
  104359:	01 d0                	add    %edx,%eax
  10435b:	8b 50 10             	mov    0x10(%eax),%edx
  10435e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  104361:	01 d0                	add    %edx,%eax
  104363:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  104366:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104369:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  10436d:	0f b7 d0             	movzwl %ax,%edx
  104370:	89 d0                	mov    %edx,%eax
  104372:	c1 e0 02             	shl    $0x2,%eax
  104375:	01 d0                	add    %edx,%eax
  104377:	c1 e0 03             	shl    $0x3,%eax
  10437a:	89 c2                	mov    %eax,%edx
  10437c:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10437f:	01 d0                	add    %edx,%eax
  104381:	8b 40 04             	mov    0x4(%eax),%eax
  104384:	83 f8 03             	cmp    $0x3,%eax
  104387:	74 1f                	je     1043a8 <elf_load+0x108>
  104389:	8d 83 74 b5 ff ff    	lea    -0x4a8c(%ebx),%eax
  10438f:	50                   	push   %eax
  104390:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  104396:	50                   	push   %eax
  104397:	6a 2d                	push   $0x2d
  104399:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  10439f:	50                   	push   %eax
  1043a0:	e8 af e7 ff ff       	call   102b54 <debug_panic>
  1043a5:	83 c4 10             	add    $0x10,%esp
  1043a8:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043ab:	8b 50 1c             	mov    0x1c(%eax),%edx
  1043ae:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043b1:	01 d0                	add    %edx,%eax
  1043b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1043b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043b9:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  1043bd:	0f b7 c0             	movzwl %ax,%eax
  1043c0:	c1 e0 05             	shl    $0x5,%eax
  1043c3:	89 c2                	mov    %eax,%edx
  1043c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043c8:	01 d0                	add    %edx,%eax
  1043ca:	89 45 d0             	mov    %eax,-0x30(%ebp)
  1043cd:	e9 5f 01 00 00       	jmp    104531 <elf_load+0x291>
  1043d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043d5:	8b 00                	mov    (%eax),%eax
  1043d7:	83 f8 01             	cmp    $0x1,%eax
  1043da:	0f 85 4c 01 00 00    	jne    10452c <elf_load+0x28c>
  1043e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043e3:	8b 40 04             	mov    0x4(%eax),%eax
  1043e6:	83 ec 08             	sub    $0x8,%esp
  1043e9:	68 00 10 00 00       	push   $0x1000
  1043ee:	50                   	push   %eax
  1043ef:	e8 11 f4 ff ff       	call   103805 <rounddown>
  1043f4:	83 c4 10             	add    $0x10,%esp
  1043f7:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1043fa:	01 d0                	add    %edx,%eax
  1043fc:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1043ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104402:	8b 40 08             	mov    0x8(%eax),%eax
  104405:	83 ec 08             	sub    $0x8,%esp
  104408:	68 00 10 00 00       	push   $0x1000
  10440d:	50                   	push   %eax
  10440e:	e8 f2 f3 ff ff       	call   103805 <rounddown>
  104413:	83 c4 10             	add    $0x10,%esp
  104416:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104419:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10441c:	8b 50 08             	mov    0x8(%eax),%edx
  10441f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104422:	8b 40 10             	mov    0x10(%eax),%eax
  104425:	01 d0                	add    %edx,%eax
  104427:	89 45 cc             	mov    %eax,-0x34(%ebp)
  10442a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10442d:	8b 50 08             	mov    0x8(%eax),%edx
  104430:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104433:	8b 40 14             	mov    0x14(%eax),%eax
  104436:	01 d0                	add    %edx,%eax
  104438:	83 ec 08             	sub    $0x8,%esp
  10443b:	68 00 10 00 00       	push   $0x1000
  104440:	50                   	push   %eax
  104441:	e8 de f3 ff ff       	call   103824 <roundup>
  104446:	83 c4 10             	add    $0x10,%esp
  104449:	89 45 c8             	mov    %eax,-0x38(%ebp)
  10444c:	c7 45 e8 05 00 00 00 	movl   $0x5,-0x18(%ebp)
  104453:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104456:	8b 40 18             	mov    0x18(%eax),%eax
  104459:	83 e0 02             	and    $0x2,%eax
  10445c:	85 c0                	test   %eax,%eax
  10445e:	0f 84 ba 00 00 00    	je     10451e <elf_load+0x27e>
  104464:	83 4d e8 02          	orl    $0x2,-0x18(%ebp)
  104468:	e9 b1 00 00 00       	jmp    10451e <elf_load+0x27e>
  10446d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104470:	83 ec 04             	sub    $0x4,%esp
  104473:	ff 75 e8             	push   -0x18(%ebp)
  104476:	ff 75 ec             	push   -0x14(%ebp)
  104479:	50                   	push   %eax
  10447a:	e8 61 2f 00 00       	call   1073e0 <alloc_page>
  10447f:	83 c4 10             	add    $0x10,%esp
  104482:	83 ec 08             	sub    $0x8,%esp
  104485:	68 00 10 00 00       	push   $0x1000
  10448a:	ff 75 cc             	push   -0x34(%ebp)
  10448d:	e8 73 f3 ff ff       	call   103805 <rounddown>
  104492:	83 c4 10             	add    $0x10,%esp
  104495:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  104498:	73 1a                	jae    1044b4 <elf_load+0x214>
  10449a:	8b 55 0c             	mov    0xc(%ebp),%edx
  10449d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1044a0:	68 00 10 00 00       	push   $0x1000
  1044a5:	ff 75 ec             	push   -0x14(%ebp)
  1044a8:	52                   	push   %edx
  1044a9:	50                   	push   %eax
  1044aa:	e8 0a fc ff ff       	call   1040b9 <pt_copyout>
  1044af:	83 c4 10             	add    $0x10,%esp
  1044b2:	eb 5c                	jmp    104510 <elf_load+0x270>
  1044b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1044b7:	3b 45 cc             	cmp    -0x34(%ebp),%eax
  1044ba:	73 3e                	jae    1044fa <elf_load+0x25a>
  1044bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1044bf:	8b 40 10             	mov    0x10(%eax),%eax
  1044c2:	85 c0                	test   %eax,%eax
  1044c4:	74 34                	je     1044fa <elf_load+0x25a>
  1044c6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044c9:	68 00 10 00 00       	push   $0x1000
  1044ce:	6a 00                	push   $0x0
  1044d0:	ff 75 ec             	push   -0x14(%ebp)
  1044d3:	50                   	push   %eax
  1044d4:	e8 f0 fc ff ff       	call   1041c9 <pt_memset>
  1044d9:	83 c4 10             	add    $0x10,%esp
  1044dc:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1044df:	2b 45 ec             	sub    -0x14(%ebp),%eax
  1044e2:	89 c1                	mov    %eax,%ecx
  1044e4:	8b 55 0c             	mov    0xc(%ebp),%edx
  1044e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1044ea:	51                   	push   %ecx
  1044eb:	ff 75 ec             	push   -0x14(%ebp)
  1044ee:	52                   	push   %edx
  1044ef:	50                   	push   %eax
  1044f0:	e8 c4 fb ff ff       	call   1040b9 <pt_copyout>
  1044f5:	83 c4 10             	add    $0x10,%esp
  1044f8:	eb 16                	jmp    104510 <elf_load+0x270>
  1044fa:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044fd:	68 00 10 00 00       	push   $0x1000
  104502:	6a 00                	push   $0x0
  104504:	ff 75 ec             	push   -0x14(%ebp)
  104507:	50                   	push   %eax
  104508:	e8 bc fc ff ff       	call   1041c9 <pt_memset>
  10450d:	83 c4 10             	add    $0x10,%esp
  104510:	81 45 ec 00 10 00 00 	addl   $0x1000,-0x14(%ebp)
  104517:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
  10451e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104521:	3b 45 c8             	cmp    -0x38(%ebp),%eax
  104524:	0f 82 43 ff ff ff    	jb     10446d <elf_load+0x1cd>
  10452a:	eb 01                	jmp    10452d <elf_load+0x28d>
  10452c:	90                   	nop
  10452d:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  104531:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104534:	3b 45 d0             	cmp    -0x30(%ebp),%eax
  104537:	0f 82 95 fe ff ff    	jb     1043d2 <elf_load+0x132>
  10453d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104540:	68 00 10 00 00       	push   $0x1000
  104545:	68 00 00 00 e0       	push   $0xe0000000
  10454a:	50                   	push   %eax
  10454b:	8d 83 0c 10 00 00    	lea    0x100c(%ebx),%eax
  104551:	50                   	push   %eax
  104552:	e8 62 fb ff ff       	call   1040b9 <pt_copyout>
  104557:	83 c4 10             	add    $0x10,%esp
  10455a:	90                   	nop
  10455b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10455e:	c9                   	leave
  10455f:	c3                   	ret

00104560 <elf_entry>:
  104560:	55                   	push   %ebp
  104561:	89 e5                	mov    %esp,%ebp
  104563:	53                   	push   %ebx
  104564:	83 ec 14             	sub    $0x14,%esp
  104567:	e8 4c be ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10456c:	05 88 8a 00 00       	add    $0x8a88,%eax
  104571:	8b 55 08             	mov    0x8(%ebp),%edx
  104574:	89 55 f4             	mov    %edx,-0xc(%ebp)
  104577:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10457a:	89 55 f0             	mov    %edx,-0x10(%ebp)
  10457d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  104580:	8b 12                	mov    (%edx),%edx
  104582:	81 fa 7f 45 4c 46    	cmp    $0x464c457f,%edx
  104588:	74 21                	je     1045ab <elf_entry+0x4b>
  10458a:	8d 90 0c b5 ff ff    	lea    -0x4af4(%eax),%edx
  104590:	52                   	push   %edx
  104591:	8d 90 25 b5 ff ff    	lea    -0x4adb(%eax),%edx
  104597:	52                   	push   %edx
  104598:	6a 5b                	push   $0x5b
  10459a:	8d 90 42 b5 ff ff    	lea    -0x4abe(%eax),%edx
  1045a0:	52                   	push   %edx
  1045a1:	89 c3                	mov    %eax,%ebx
  1045a3:	e8 ac e5 ff ff       	call   102b54 <debug_panic>
  1045a8:	83 c4 10             	add    $0x10,%esp
  1045ab:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1045ae:	8b 40 18             	mov    0x18(%eax),%eax
  1045b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1045b4:	c9                   	leave
  1045b5:	c3                   	ret

001045b6 <trap_dump>:
  1045b6:	55                   	push   %ebp
  1045b7:	89 e5                	mov    %esp,%ebp
  1045b9:	53                   	push   %ebx
  1045ba:	83 ec 14             	sub    $0x14,%esp
  1045bd:	e8 fe bd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1045c2:	81 c3 32 8a 00 00    	add    $0x8a32,%ebx
  1045c8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1045cc:	0f 84 4f 02 00 00    	je     104821 <trap_dump+0x26b>
  1045d2:	8b 45 08             	mov    0x8(%ebp),%eax
  1045d5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1045d8:	ff 75 f4             	push   -0xc(%ebp)
  1045db:	8d 83 a4 b5 ff ff    	lea    -0x4a5c(%ebx),%eax
  1045e1:	50                   	push   %eax
  1045e2:	6a 12                	push   $0x12
  1045e4:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  1045ea:	50                   	push   %eax
  1045eb:	e8 a9 e4 ff ff       	call   102a99 <debug_normal>
  1045f0:	83 c4 10             	add    $0x10,%esp
  1045f3:	8b 45 08             	mov    0x8(%ebp),%eax
  1045f6:	8b 10                	mov    (%eax),%edx
  1045f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1045fb:	83 ec 04             	sub    $0x4,%esp
  1045fe:	52                   	push   %edx
  1045ff:	50                   	push   %eax
  104600:	8d 83 c5 b5 ff ff    	lea    -0x4a3b(%ebx),%eax
  104606:	50                   	push   %eax
  104607:	e8 5c e4 ff ff       	call   102a68 <debug_info>
  10460c:	83 c4 10             	add    $0x10,%esp
  10460f:	8b 45 08             	mov    0x8(%ebp),%eax
  104612:	8b 40 04             	mov    0x4(%eax),%eax
  104615:	8b 55 08             	mov    0x8(%ebp),%edx
  104618:	83 c2 04             	add    $0x4,%edx
  10461b:	83 ec 04             	sub    $0x4,%esp
  10461e:	50                   	push   %eax
  10461f:	52                   	push   %edx
  104620:	8d 83 db b5 ff ff    	lea    -0x4a25(%ebx),%eax
  104626:	50                   	push   %eax
  104627:	e8 3c e4 ff ff       	call   102a68 <debug_info>
  10462c:	83 c4 10             	add    $0x10,%esp
  10462f:	8b 45 08             	mov    0x8(%ebp),%eax
  104632:	8b 40 08             	mov    0x8(%eax),%eax
  104635:	8b 55 08             	mov    0x8(%ebp),%edx
  104638:	83 c2 08             	add    $0x8,%edx
  10463b:	83 ec 04             	sub    $0x4,%esp
  10463e:	50                   	push   %eax
  10463f:	52                   	push   %edx
  104640:	8d 83 f1 b5 ff ff    	lea    -0x4a0f(%ebx),%eax
  104646:	50                   	push   %eax
  104647:	e8 1c e4 ff ff       	call   102a68 <debug_info>
  10464c:	83 c4 10             	add    $0x10,%esp
  10464f:	8b 45 08             	mov    0x8(%ebp),%eax
  104652:	8b 40 0c             	mov    0xc(%eax),%eax
  104655:	8b 55 08             	mov    0x8(%ebp),%edx
  104658:	83 c2 0c             	add    $0xc,%edx
  10465b:	83 ec 04             	sub    $0x4,%esp
  10465e:	50                   	push   %eax
  10465f:	52                   	push   %edx
  104660:	8d 83 07 b6 ff ff    	lea    -0x49f9(%ebx),%eax
  104666:	50                   	push   %eax
  104667:	e8 fc e3 ff ff       	call   102a68 <debug_info>
  10466c:	83 c4 10             	add    $0x10,%esp
  10466f:	8b 45 08             	mov    0x8(%ebp),%eax
  104672:	8b 40 10             	mov    0x10(%eax),%eax
  104675:	8b 55 08             	mov    0x8(%ebp),%edx
  104678:	83 c2 10             	add    $0x10,%edx
  10467b:	83 ec 04             	sub    $0x4,%esp
  10467e:	50                   	push   %eax
  10467f:	52                   	push   %edx
  104680:	8d 83 1d b6 ff ff    	lea    -0x49e3(%ebx),%eax
  104686:	50                   	push   %eax
  104687:	e8 dc e3 ff ff       	call   102a68 <debug_info>
  10468c:	83 c4 10             	add    $0x10,%esp
  10468f:	8b 45 08             	mov    0x8(%ebp),%eax
  104692:	8b 40 14             	mov    0x14(%eax),%eax
  104695:	8b 55 08             	mov    0x8(%ebp),%edx
  104698:	83 c2 14             	add    $0x14,%edx
  10469b:	83 ec 04             	sub    $0x4,%esp
  10469e:	50                   	push   %eax
  10469f:	52                   	push   %edx
  1046a0:	8d 83 33 b6 ff ff    	lea    -0x49cd(%ebx),%eax
  1046a6:	50                   	push   %eax
  1046a7:	e8 bc e3 ff ff       	call   102a68 <debug_info>
  1046ac:	83 c4 10             	add    $0x10,%esp
  1046af:	8b 45 08             	mov    0x8(%ebp),%eax
  1046b2:	8b 40 18             	mov    0x18(%eax),%eax
  1046b5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046b8:	83 c2 18             	add    $0x18,%edx
  1046bb:	83 ec 04             	sub    $0x4,%esp
  1046be:	50                   	push   %eax
  1046bf:	52                   	push   %edx
  1046c0:	8d 83 49 b6 ff ff    	lea    -0x49b7(%ebx),%eax
  1046c6:	50                   	push   %eax
  1046c7:	e8 9c e3 ff ff       	call   102a68 <debug_info>
  1046cc:	83 c4 10             	add    $0x10,%esp
  1046cf:	8b 45 08             	mov    0x8(%ebp),%eax
  1046d2:	8b 40 1c             	mov    0x1c(%eax),%eax
  1046d5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046d8:	83 c2 1c             	add    $0x1c,%edx
  1046db:	83 ec 04             	sub    $0x4,%esp
  1046de:	50                   	push   %eax
  1046df:	52                   	push   %edx
  1046e0:	8d 83 5f b6 ff ff    	lea    -0x49a1(%ebx),%eax
  1046e6:	50                   	push   %eax
  1046e7:	e8 7c e3 ff ff       	call   102a68 <debug_info>
  1046ec:	83 c4 10             	add    $0x10,%esp
  1046ef:	8b 45 08             	mov    0x8(%ebp),%eax
  1046f2:	0f b7 40 20          	movzwl 0x20(%eax),%eax
  1046f6:	0f b7 c0             	movzwl %ax,%eax
  1046f9:	8b 55 08             	mov    0x8(%ebp),%edx
  1046fc:	83 c2 20             	add    $0x20,%edx
  1046ff:	83 ec 04             	sub    $0x4,%esp
  104702:	50                   	push   %eax
  104703:	52                   	push   %edx
  104704:	8d 83 75 b6 ff ff    	lea    -0x498b(%ebx),%eax
  10470a:	50                   	push   %eax
  10470b:	e8 58 e3 ff ff       	call   102a68 <debug_info>
  104710:	83 c4 10             	add    $0x10,%esp
  104713:	8b 45 08             	mov    0x8(%ebp),%eax
  104716:	0f b7 40 24          	movzwl 0x24(%eax),%eax
  10471a:	0f b7 c0             	movzwl %ax,%eax
  10471d:	8b 55 08             	mov    0x8(%ebp),%edx
  104720:	83 c2 24             	add    $0x24,%edx
  104723:	83 ec 04             	sub    $0x4,%esp
  104726:	50                   	push   %eax
  104727:	52                   	push   %edx
  104728:	8d 83 8b b6 ff ff    	lea    -0x4975(%ebx),%eax
  10472e:	50                   	push   %eax
  10472f:	e8 34 e3 ff ff       	call   102a68 <debug_info>
  104734:	83 c4 10             	add    $0x10,%esp
  104737:	8b 45 08             	mov    0x8(%ebp),%eax
  10473a:	8b 40 28             	mov    0x28(%eax),%eax
  10473d:	8b 55 08             	mov    0x8(%ebp),%edx
  104740:	83 c2 28             	add    $0x28,%edx
  104743:	83 ec 04             	sub    $0x4,%esp
  104746:	50                   	push   %eax
  104747:	52                   	push   %edx
  104748:	8d 83 a1 b6 ff ff    	lea    -0x495f(%ebx),%eax
  10474e:	50                   	push   %eax
  10474f:	e8 14 e3 ff ff       	call   102a68 <debug_info>
  104754:	83 c4 10             	add    $0x10,%esp
  104757:	8b 45 08             	mov    0x8(%ebp),%eax
  10475a:	8b 40 2c             	mov    0x2c(%eax),%eax
  10475d:	8b 55 08             	mov    0x8(%ebp),%edx
  104760:	83 c2 2c             	add    $0x2c,%edx
  104763:	83 ec 04             	sub    $0x4,%esp
  104766:	50                   	push   %eax
  104767:	52                   	push   %edx
  104768:	8d 83 b7 b6 ff ff    	lea    -0x4949(%ebx),%eax
  10476e:	50                   	push   %eax
  10476f:	e8 f4 e2 ff ff       	call   102a68 <debug_info>
  104774:	83 c4 10             	add    $0x10,%esp
  104777:	8b 45 08             	mov    0x8(%ebp),%eax
  10477a:	8b 40 30             	mov    0x30(%eax),%eax
  10477d:	8b 55 08             	mov    0x8(%ebp),%edx
  104780:	83 c2 30             	add    $0x30,%edx
  104783:	83 ec 04             	sub    $0x4,%esp
  104786:	50                   	push   %eax
  104787:	52                   	push   %edx
  104788:	8d 83 cd b6 ff ff    	lea    -0x4933(%ebx),%eax
  10478e:	50                   	push   %eax
  10478f:	e8 d4 e2 ff ff       	call   102a68 <debug_info>
  104794:	83 c4 10             	add    $0x10,%esp
  104797:	8b 45 08             	mov    0x8(%ebp),%eax
  10479a:	0f b7 40 34          	movzwl 0x34(%eax),%eax
  10479e:	0f b7 c0             	movzwl %ax,%eax
  1047a1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047a4:	83 c2 34             	add    $0x34,%edx
  1047a7:	83 ec 04             	sub    $0x4,%esp
  1047aa:	50                   	push   %eax
  1047ab:	52                   	push   %edx
  1047ac:	8d 83 e3 b6 ff ff    	lea    -0x491d(%ebx),%eax
  1047b2:	50                   	push   %eax
  1047b3:	e8 b0 e2 ff ff       	call   102a68 <debug_info>
  1047b8:	83 c4 10             	add    $0x10,%esp
  1047bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1047be:	8b 40 38             	mov    0x38(%eax),%eax
  1047c1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047c4:	83 c2 38             	add    $0x38,%edx
  1047c7:	83 ec 04             	sub    $0x4,%esp
  1047ca:	50                   	push   %eax
  1047cb:	52                   	push   %edx
  1047cc:	8d 83 f9 b6 ff ff    	lea    -0x4907(%ebx),%eax
  1047d2:	50                   	push   %eax
  1047d3:	e8 90 e2 ff ff       	call   102a68 <debug_info>
  1047d8:	83 c4 10             	add    $0x10,%esp
  1047db:	8b 45 08             	mov    0x8(%ebp),%eax
  1047de:	8b 40 3c             	mov    0x3c(%eax),%eax
  1047e1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047e4:	83 c2 3c             	add    $0x3c,%edx
  1047e7:	83 ec 04             	sub    $0x4,%esp
  1047ea:	50                   	push   %eax
  1047eb:	52                   	push   %edx
  1047ec:	8d 83 07 b6 ff ff    	lea    -0x49f9(%ebx),%eax
  1047f2:	50                   	push   %eax
  1047f3:	e8 70 e2 ff ff       	call   102a68 <debug_info>
  1047f8:	83 c4 10             	add    $0x10,%esp
  1047fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1047fe:	0f b7 40 40          	movzwl 0x40(%eax),%eax
  104802:	0f b7 c0             	movzwl %ax,%eax
  104805:	8b 55 08             	mov    0x8(%ebp),%edx
  104808:	83 c2 40             	add    $0x40,%edx
  10480b:	83 ec 04             	sub    $0x4,%esp
  10480e:	50                   	push   %eax
  10480f:	52                   	push   %edx
  104810:	8d 83 0f b7 ff ff    	lea    -0x48f1(%ebx),%eax
  104816:	50                   	push   %eax
  104817:	e8 4c e2 ff ff       	call   102a68 <debug_info>
  10481c:	83 c4 10             	add    $0x10,%esp
  10481f:	eb 01                	jmp    104822 <trap_dump+0x26c>
  104821:	90                   	nop
  104822:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104825:	c9                   	leave
  104826:	c3                   	ret

00104827 <pgflt_handler>:
  104827:	55                   	push   %ebp
  104828:	89 e5                	mov    %esp,%ebp
  10482a:	53                   	push   %ebx
  10482b:	83 ec 14             	sub    $0x14,%esp
  10482e:	e8 8d bb ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104833:	81 c3 c1 87 00 00    	add    $0x87c1,%ebx
  104839:	8b 45 08             	mov    0x8(%ebp),%eax
  10483c:	8b 40 2c             	mov    0x2c(%eax),%eax
  10483f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104842:	e8 21 f2 ff ff       	call   103a68 <rcr2>
  104847:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10484a:	8b 45 08             	mov    0x8(%ebp),%eax
  10484d:	8b 50 30             	mov    0x30(%eax),%edx
  104850:	c7 c0 2c 9c 15 00    	mov    $0x159c2c,%eax
  104856:	8b 00                	mov    (%eax),%eax
  104858:	83 ec 0c             	sub    $0xc,%esp
  10485b:	52                   	push   %edx
  10485c:	50                   	push   %eax
  10485d:	ff 75 f4             	push   -0xc(%ebp)
  104860:	ff 75 f0             	push   -0x10(%ebp)
  104863:	8d 83 28 b7 ff ff    	lea    -0x48d8(%ebx),%eax
  104869:	50                   	push   %eax
  10486a:	e8 fd e4 ff ff       	call   102d6c <dprintf>
  10486f:	83 c4 20             	add    $0x20,%esp
  104872:	8b 45 08             	mov    0x8(%ebp),%eax
  104875:	8b 40 2c             	mov    0x2c(%eax),%eax
  104878:	83 e0 01             	and    $0x1,%eax
  10487b:	85 c0                	test   %eax,%eax
  10487d:	74 23                	je     1048a2 <pgflt_handler+0x7b>
  10487f:	83 ec 0c             	sub    $0xc,%esp
  104882:	ff 75 f4             	push   -0xc(%ebp)
  104885:	ff 75 f0             	push   -0x10(%ebp)
  104888:	8d 83 6c b7 ff ff    	lea    -0x4894(%ebx),%eax
  10488e:	50                   	push   %eax
  10488f:	6a 32                	push   $0x32
  104891:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  104897:	50                   	push   %eax
  104898:	e8 b7 e2 ff ff       	call   102b54 <debug_panic>
  10489d:	83 c4 20             	add    $0x20,%esp
  1048a0:	eb 2a                	jmp    1048cc <pgflt_handler+0xa5>
  1048a2:	83 ec 08             	sub    $0x8,%esp
  1048a5:	68 00 10 00 00       	push   $0x1000
  1048aa:	ff 75 f0             	push   -0x10(%ebp)
  1048ad:	e8 53 ef ff ff       	call   103805 <rounddown>
  1048b2:	83 c4 10             	add    $0x10,%esp
  1048b5:	c7 c2 2c 9c 15 00    	mov    $0x159c2c,%edx
  1048bb:	8b 12                	mov    (%edx),%edx
  1048bd:	83 ec 04             	sub    $0x4,%esp
  1048c0:	6a 07                	push   $0x7
  1048c2:	50                   	push   %eax
  1048c3:	52                   	push   %edx
  1048c4:	e8 17 2b 00 00       	call   1073e0 <alloc_page>
  1048c9:	83 c4 10             	add    $0x10,%esp
  1048cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1048cf:	c9                   	leave
  1048d0:	c3                   	ret

001048d1 <checkpoint>:
  1048d1:	55                   	push   %ebp
  1048d2:	89 e5                	mov    %esp,%ebp
  1048d4:	53                   	push   %ebx
  1048d5:	83 ec 04             	sub    $0x4,%esp
  1048d8:	e8 db ba ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1048dd:	05 17 87 00 00       	add    $0x8717,%eax
  1048e2:	83 ec 0c             	sub    $0xc,%esp
  1048e5:	8d 90 9d b7 ff ff    	lea    -0x4863(%eax),%edx
  1048eb:	52                   	push   %edx
  1048ec:	89 c3                	mov    %eax,%ebx
  1048ee:	e8 75 e1 ff ff       	call   102a68 <debug_info>
  1048f3:	83 c4 10             	add    $0x10,%esp
  1048f6:	90                   	nop
  1048f7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1048fa:	c9                   	leave
  1048fb:	c3                   	ret

001048fc <trap>:
  1048fc:	55                   	push   %ebp
  1048fd:	89 e5                	mov    %esp,%ebp
  1048ff:	53                   	push   %ebx
  104900:	83 ec 04             	sub    $0x4,%esp
  104903:	e8 b8 ba ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104908:	81 c3 ec 86 00 00    	add    $0x86ec,%ebx
  10490e:	8b 45 08             	mov    0x8(%ebp),%eax
  104911:	8b 40 28             	mov    0x28(%eax),%eax
  104914:	83 f8 0e             	cmp    $0xe,%eax
  104917:	75 1d                	jne    104936 <trap+0x3a>
  104919:	83 ec 0c             	sub    $0xc,%esp
  10491c:	6a 00                	push   $0x0
  10491e:	e8 2d 1b 00 00       	call   106450 <set_pdir_base>
  104923:	83 c4 10             	add    $0x10,%esp
  104926:	83 ec 0c             	sub    $0xc,%esp
  104929:	ff 75 08             	push   0x8(%ebp)
  10492c:	e8 f6 fe ff ff       	call   104827 <pgflt_handler>
  104931:	83 c4 10             	add    $0x10,%esp
  104934:	eb 48                	jmp    10497e <trap+0x82>
  104936:	8b 45 08             	mov    0x8(%ebp),%eax
  104939:	8b 40 28             	mov    0x28(%eax),%eax
  10493c:	50                   	push   %eax
  10493d:	8d 83 aa b7 ff ff    	lea    -0x4856(%ebx),%eax
  104943:	50                   	push   %eax
  104944:	6a 45                	push   $0x45
  104946:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  10494c:	50                   	push   %eax
  10494d:	e8 47 e1 ff ff       	call   102a99 <debug_normal>
  104952:	83 c4 10             	add    $0x10,%esp
  104955:	83 ec 0c             	sub    $0xc,%esp
  104958:	ff 75 08             	push   0x8(%ebp)
  10495b:	e8 56 fc ff ff       	call   1045b6 <trap_dump>
  104960:	83 c4 10             	add    $0x10,%esp
  104963:	83 ec 04             	sub    $0x4,%esp
  104966:	8d 83 be b7 ff ff    	lea    -0x4842(%ebx),%eax
  10496c:	50                   	push   %eax
  10496d:	6a 47                	push   $0x47
  10496f:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  104975:	50                   	push   %eax
  104976:	e8 d9 e1 ff ff       	call   102b54 <debug_panic>
  10497b:	83 c4 10             	add    $0x10,%esp
  10497e:	c7 c0 2c 9c 15 00    	mov    $0x159c2c,%eax
  104984:	8b 00                	mov    (%eax),%eax
  104986:	83 ec 0c             	sub    $0xc,%esp
  104989:	50                   	push   %eax
  10498a:	e8 c1 1a 00 00       	call   106450 <set_pdir_base>
  10498f:	83 c4 10             	add    $0x10,%esp
  104992:	83 ec 0c             	sub    $0xc,%esp
  104995:	ff 75 08             	push   0x8(%ebp)
  104998:	e8 03 de ff ff       	call   1027a0 <trap_return>
  10499d:	83 c4 10             	add    $0x10,%esp
  1049a0:	90                   	nop
  1049a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1049a4:	c9                   	leave
  1049a5:	c3                   	ret
  1049a6:	66 90                	xchg   %ax,%ax
  1049a8:	66 90                	xchg   %ax,%ax
  1049aa:	66 90                	xchg   %ax,%ax
  1049ac:	66 90                	xchg   %ax,%ax
  1049ae:	66 90                	xchg   %ax,%ax

001049b0 <kern_init>:
    monitor(NULL);
#endif
}

void kern_init(uintptr_t mbi_addr)
{
  1049b0:	57                   	push   %edi
  1049b1:	56                   	push   %esi
  1049b2:	53                   	push   %ebx
  1049b3:	8b 7c 24 10          	mov    0x10(%esp),%edi
  1049b7:	e8 04 ba ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1049bc:	81 c3 38 86 00 00    	add    $0x8638,%ebx
    pmem_init((unsigned int)mbi_addr);
  1049c2:	83 ec 0c             	sub    $0xc,%esp
  1049c5:	57                   	push   %edi
  1049c6:	e8 85 09 00 00       	call   105350 <pmem_init>
    KERN_DEBUG("Kernel initialized.\n");
  1049cb:	8d b3 da b7 ff ff    	lea    -0x4826(%ebx),%esi
  1049d1:	83 c4 0c             	add    $0xc,%esp
  1049d4:	8d 83 c5 b7 ff ff    	lea    -0x483b(%ebx),%eax
  1049da:	50                   	push   %eax
  1049db:	68 aa 00 00 00       	push   $0xaa
  1049e0:	56                   	push   %esi
  1049e1:	e8 b3 e0 ff ff       	call   102a99 <debug_normal>
    KERN_DEBUG("In kernel main.\n\n");
  1049e6:	83 c4 0c             	add    $0xc,%esp
  1049e9:	8d 83 eb b7 ff ff    	lea    -0x4815(%ebx),%eax
  1049ef:	50                   	push   %eax
  1049f0:	6a 78                	push   $0x78
  1049f2:	56                   	push   %esi
  1049f3:	e8 a1 e0 ff ff       	call   102a99 <debug_normal>
    dprintf("Testing the MATIntro layer...\n");
  1049f8:	8d 83 08 bb ff ff    	lea    -0x44f8(%ebx),%eax
  1049fe:	89 04 24             	mov    %eax,(%esp)
  104a01:	e8 66 e3 ff ff       	call   102d6c <dprintf>
    if (test_MATIntro() == 0)
  104a06:	e8 d5 08 00 00       	call   1052e0 <test_MATIntro>
  104a0b:	83 c4 10             	add    $0x10,%esp
  104a0e:	85 c0                	test   %eax,%eax
  104a10:	0f 85 f2 00 00 00    	jne    104b08 <kern_init+0x158>
        dprintf("All tests passed.\n");
  104a16:	83 ec 0c             	sub    $0xc,%esp
  104a19:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a1f:	50                   	push   %eax
  104a20:	e8 47 e3 ff ff       	call   102d6c <dprintf>
  104a25:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104a28:	83 ec 0c             	sub    $0xc,%esp
  104a2b:	8d b3 fb b7 ff ff    	lea    -0x4805(%ebx),%esi
  104a31:	56                   	push   %esi
  104a32:	e8 35 e3 ff ff       	call   102d6c <dprintf>
    pmem_init((unsigned int)mbi_addr);
  104a37:	89 3c 24             	mov    %edi,(%esp)
  104a3a:	e8 11 09 00 00       	call   105350 <pmem_init>
    dprintf("Testing the MATInit layer...\n");
  104a3f:	8d 83 1e b8 ff ff    	lea    -0x47e2(%ebx),%eax
  104a45:	89 04 24             	mov    %eax,(%esp)
  104a48:	e8 1f e3 ff ff       	call   102d6c <dprintf>
    if (test_MATInit() == 0)
  104a4d:	e8 ae 0d 00 00       	call   105800 <test_MATInit>
  104a52:	83 c4 10             	add    $0x10,%esp
  104a55:	85 c0                	test   %eax,%eax
  104a57:	0f 85 f3 00 00 00    	jne    104b50 <kern_init+0x1a0>
        dprintf("All tests passed.\n");
  104a5d:	83 ec 0c             	sub    $0xc,%esp
  104a60:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a66:	50                   	push   %eax
  104a67:	e8 00 e3 ff ff       	call   102d6c <dprintf>
  104a6c:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104a6f:	83 ec 0c             	sub    $0xc,%esp
  104a72:	56                   	push   %esi
  104a73:	e8 f4 e2 ff ff       	call   102d6c <dprintf>
    dprintf("Testing the MATOp layer...\n");
  104a78:	8d 83 3c b8 ff ff    	lea    -0x47c4(%ebx),%eax
  104a7e:	89 04 24             	mov    %eax,(%esp)
  104a81:	e8 e6 e2 ff ff       	call   102d6c <dprintf>
    if (test_MATOp() == 0)
  104a86:	e8 45 14 00 00       	call   105ed0 <test_MATOp>
  104a8b:	83 c4 10             	add    $0x10,%esp
  104a8e:	85 c0                	test   %eax,%eax
  104a90:	0f 85 a2 00 00 00    	jne    104b38 <kern_init+0x188>
        dprintf("All tests passed.\n");
  104a96:	83 ec 0c             	sub    $0xc,%esp
  104a99:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a9f:	50                   	push   %eax
  104aa0:	e8 c7 e2 ff ff       	call   102d6c <dprintf>
  104aa5:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104aa8:	83 ec 0c             	sub    $0xc,%esp
  104aab:	56                   	push   %esi
  104aac:	e8 bb e2 ff ff       	call   102d6c <dprintf>
    container_init((unsigned int)mbi_addr);
  104ab1:	89 3c 24             	mov    %edi,(%esp)
  104ab4:	e8 37 14 00 00       	call   105ef0 <container_init>
    dprintf("Testing the MContainer layer...\n");
  104ab9:	8d 83 28 bb ff ff    	lea    -0x44d8(%ebx),%eax
  104abf:	89 04 24             	mov    %eax,(%esp)
  104ac2:	e8 a5 e2 ff ff       	call   102d6c <dprintf>
    if (test_MContainer() == 0)
  104ac7:	e8 64 19 00 00       	call   106430 <test_MContainer>
  104acc:	83 c4 10             	add    $0x10,%esp
  104acf:	84 c0                	test   %al,%al
  104ad1:	75 4d                	jne    104b20 <kern_init+0x170>
        dprintf("All tests passed.\n");
  104ad3:	83 ec 0c             	sub    $0xc,%esp
  104ad6:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104adc:	50                   	push   %eax
  104add:	e8 8a e2 ff ff       	call   102d6c <dprintf>
  104ae2:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104ae5:	83 ec 0c             	sub    $0xc,%esp
  104ae8:	56                   	push   %esi
  104ae9:	e8 7e e2 ff ff       	call   102d6c <dprintf>
    dprintf("\nTest complete. Please Use Ctrl-a x to exit qemu.");
  104aee:	8d 83 4c bb ff ff    	lea    -0x44b4(%ebx),%eax
  104af4:	89 04 24             	mov    %eax,(%esp)
  104af7:	e8 70 e2 ff ff       	call   102d6c <dprintf>
    kern_main(mbi_addr);
}
  104afc:	83 c4 10             	add    $0x10,%esp
  104aff:	5b                   	pop    %ebx
  104b00:	5e                   	pop    %esi
  104b01:	5f                   	pop    %edi
  104b02:	c3                   	ret
  104b03:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("Test failed.\n");
  104b08:	83 ec 0c             	sub    $0xc,%esp
  104b0b:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b11:	50                   	push   %eax
  104b12:	e8 55 e2 ff ff       	call   102d6c <dprintf>
  104b17:	83 c4 10             	add    $0x10,%esp
  104b1a:	e9 09 ff ff ff       	jmp    104a28 <kern_init+0x78>
  104b1f:	90                   	nop
        dprintf("Test failed.\n");
  104b20:	83 ec 0c             	sub    $0xc,%esp
  104b23:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b29:	50                   	push   %eax
  104b2a:	e8 3d e2 ff ff       	call   102d6c <dprintf>
  104b2f:	83 c4 10             	add    $0x10,%esp
  104b32:	eb b1                	jmp    104ae5 <kern_init+0x135>
  104b34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Test failed.\n");
  104b38:	83 ec 0c             	sub    $0xc,%esp
  104b3b:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b41:	50                   	push   %eax
  104b42:	e8 25 e2 ff ff       	call   102d6c <dprintf>
  104b47:	83 c4 10             	add    $0x10,%esp
  104b4a:	e9 59 ff ff ff       	jmp    104aa8 <kern_init+0xf8>
  104b4f:	90                   	nop
        dprintf("Test failed.\n");
  104b50:	83 ec 0c             	sub    $0xc,%esp
  104b53:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b59:	50                   	push   %eax
  104b5a:	e8 0d e2 ff ff       	call   102d6c <dprintf>
  104b5f:	83 c4 10             	add    $0x10,%esp
  104b62:	e9 08 ff ff ff       	jmp    104a6f <kern_init+0xbf>
  104b67:	90                   	nop
  104b68:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  104b6e:	00 00                	add    %al,(%eax)
  104b70:	fb                   	sti
  104b71:	4f                   	dec    %edi
  104b72:	52                   	push   %edx
  104b73:	e4                   	.byte 0xe4

00104b74 <start>:
  104b74:	fa                   	cli
  104b75:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
  104b7a:	75 27                	jne    104ba3 <spin>
  104b7c:	89 1d a4 4b 10 00    	mov    %ebx,0x104ba4
  104b82:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
  104b89:	34 12 
  104b8b:	6a 02                	push   $0x2
  104b8d:	9d                   	popf
  104b8e:	bd 00 00 00 00       	mov    $0x0,%ebp
  104b93:	bc 00 60 11 00       	mov    $0x116000,%esp
  104b98:	ff 35 a4 4b 10 00    	push   0x104ba4
  104b9e:	e8 0d fe ff ff       	call   1049b0 <kern_init>

00104ba3 <spin>:
  104ba3:	f4                   	hlt

00104ba4 <multiboot_ptr>:
  104ba4:	00 00                	add    %al,(%eax)
  104ba6:	00 00                	add    %al,(%eax)
  104ba8:	66 90                	xchg   %ax,%ax
  104baa:	66 90                	xchg   %ax,%ax
  104bac:	66 90                	xchg   %ax,%ax
  104bae:	66 90                	xchg   %ax,%ax

00104bb0 <pmm_init_freelists>:
static int free_list[MAX_ORDER];


// Initialize the freelists to empty
void pmm_init_freelists(void) {
    for (int i = 0; i < MAX_ORDER; i++) {
  104bb0:	e8 03 b8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104bb5:	05 3f 84 00 00       	add    $0x843f,%eax
  104bba:	8d 80 4c cc 44 01    	lea    0x144cc4c(%eax),%eax
        free_list[i] = -1;
  104bc0:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  104bc6:	8d 50 2c             	lea    0x2c(%eax),%edx
    for (int i = 0; i < MAX_ORDER; i++) {
  104bc9:	83 c0 04             	add    $0x4,%eax
  104bcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        free_list[i] = -1;
  104bd0:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104bd6:	83 c0 08             	add    $0x8,%eax
        free_list[i] = -1;
  104bd9:	c7 40 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104be0:	39 d0                	cmp    %edx,%eax
  104be2:	75 ec                	jne    104bd0 <pmm_init_freelists+0x20>
    }
}
  104be4:	c3                   	ret
  104be5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104bec:	00 
  104bed:	8d 76 00             	lea    0x0(%esi),%esi

00104bf0 <get_nps>:

// Getter function for NUM_PAGES.
unsigned int get_nps(void) {
    return NUM_PAGES;
  104bf0:	e8 c3 b7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104bf5:	05 ff 83 00 00       	add    $0x83ff,%eax
  104bfa:	8b 80 78 cc 44 01    	mov    0x144cc78(%eax),%eax
}
  104c00:	c3                   	ret
  104c01:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c08:	00 
  104c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00104c10 <set_nps>:

// Setter function for NUM_PAGES.
void set_nps(unsigned int nps) {
    NUM_PAGES = nps;
  104c10:	e8 a3 b7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104c15:	05 df 83 00 00       	add    $0x83df,%eax
  104c1a:	8b 54 24 04          	mov    0x4(%esp),%edx
  104c1e:	89 90 78 cc 44 01    	mov    %edx,0x144cc78(%eax)
}
  104c24:	c3                   	ret
  104c25:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c2c:	00 
  104c2d:	8d 76 00             	lea    0x0(%esi),%esi

00104c30 <at_is_norm>:
    return NUM_PAGES;
  104c30:	e8 08 02 00 00       	call   104e3d <__x86.get_pc_thunk.cx>
  104c35:	81 c1 bf 83 00 00    	add    $0x83bf,%ecx

// Getter function for page permission.
unsigned int at_is_norm(unsigned int page_index) {
  104c3b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < get_nps() && AT[page_index].perm == 2) {
        return 1;
    }
    return 0;
  104c3f:	31 d2                	xor    %edx,%edx
    if (page_index < get_nps() && AT[page_index].perm == 2) {
  104c41:	3b 81 78 cc 44 01    	cmp    0x144cc78(%ecx),%eax
  104c47:	73 10                	jae    104c59 <at_is_norm+0x29>
  104c49:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104c4c:	31 d2                	xor    %edx,%edx
  104c4e:	83 bc 81 4c cc 04 00 	cmpl   $0x2,0x4cc4c(%ecx,%eax,4)
  104c55:	02 
  104c56:	0f 94 c2             	sete   %dl
}
  104c59:	89 d0                	mov    %edx,%eax
  104c5b:	c3                   	ret
  104c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104c60 <at_set_perm>:

// Setter function for page permission.
void at_set_perm(unsigned int page_index, unsigned int perm) {
    if (page_index < NUM_PAGES) {
  104c60:	e8 57 b7 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104c65:	81 c2 8f 83 00 00    	add    $0x838f,%edx
void at_set_perm(unsigned int page_index, unsigned int perm) {
  104c6b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < NUM_PAGES) {
  104c6f:	3b 82 78 cc 44 01    	cmp    0x144cc78(%edx),%eax
  104c75:	73 0e                	jae    104c85 <at_set_perm+0x25>
        AT[page_index].perm = perm;
  104c77:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104c7b:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104c7e:	89 8c 82 4c cc 04 00 	mov    %ecx,0x4cc4c(%edx,%eax,4)
    }
}
  104c85:	c3                   	ret
  104c86:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c8d:	00 
  104c8e:	66 90                	xchg   %ax,%ax

00104c90 <at_is_allocated>:

// Getter function for page allocation status.
unsigned int at_is_allocated(unsigned int page_index) {
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
  104c90:	e8 a8 01 00 00       	call   104e3d <__x86.get_pc_thunk.cx>
  104c95:	81 c1 5f 83 00 00    	add    $0x835f,%ecx
unsigned int at_is_allocated(unsigned int page_index) {
  104c9b:	8b 44 24 04          	mov    0x4(%esp),%eax
        return 1;
    }
    return 0;
  104c9f:	31 d2                	xor    %edx,%edx
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
  104ca1:	3b 81 78 cc 44 01    	cmp    0x144cc78(%ecx),%eax
  104ca7:	73 11                	jae    104cba <at_is_allocated+0x2a>
  104ca9:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104cac:	31 d2                	xor    %edx,%edx
  104cae:	8b 84 81 50 cc 04 00 	mov    0x4cc50(%ecx,%eax,4),%eax
  104cb5:	85 c0                	test   %eax,%eax
  104cb7:	0f 95 c2             	setne  %dl
}
  104cba:	89 d0                	mov    %edx,%eax
  104cbc:	c3                   	ret
  104cbd:	8d 76 00             	lea    0x0(%esi),%esi

00104cc0 <at_set_allocated>:

// Setter function for page allocation status.
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
    if (page_index < NUM_PAGES) {
  104cc0:	e8 f7 b6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104cc5:	81 c2 2f 83 00 00    	add    $0x832f,%edx
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
  104ccb:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < NUM_PAGES) {
  104ccf:	3b 82 78 cc 44 01    	cmp    0x144cc78(%edx),%eax
  104cd5:	73 0e                	jae    104ce5 <at_set_allocated+0x25>
        AT[page_index].allocated = allocated;
  104cd7:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104cdb:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104cde:	89 8c 82 50 cc 04 00 	mov    %ecx,0x4cc50(%edx,%eax,4)
    }
}
  104ce5:	c3                   	ret
  104ce6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104ced:	00 
  104cee:	66 90                	xchg   %ax,%ax

00104cf0 <get_free_list_head>:

int get_free_list_head(unsigned int order) {
    if (order >= MAX_ORDER) return -1;
  104cf0:	e8 c7 b6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104cf5:	81 c2 ff 82 00 00    	add    $0x82ff,%edx
int get_free_list_head(unsigned int order) {
  104cfb:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (order >= MAX_ORDER) return -1;
  104cff:	83 f8 0a             	cmp    $0xa,%eax
  104d02:	77 0c                	ja     104d10 <get_free_list_head+0x20>
    return free_list[order];
  104d04:	8b 84 82 4c cc 44 01 	mov    0x144cc4c(%edx,%eax,4),%eax
  104d0b:	c3                   	ret
  104d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if (order >= MAX_ORDER) return -1;
  104d10:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  104d15:	c3                   	ret
  104d16:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104d1d:	00 
  104d1e:	66 90                	xchg   %ax,%ax

00104d20 <at_list_add>:

// Add a page to the free list at the specified order.
void at_list_add(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104d20:	e8 18 01 00 00       	call   104e3d <__x86.get_pc_thunk.cx>
  104d25:	81 c1 cf 82 00 00    	add    $0x82cf,%ecx
void at_list_add(unsigned int order, unsigned int page_index) {
  104d2b:	55                   	push   %ebp
  104d2c:	57                   	push   %edi
  104d2d:	56                   	push   %esi
  104d2e:	53                   	push   %ebx
  104d2f:	83 ec 08             	sub    $0x8,%esp
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104d32:	83 7c 24 1c 0a       	cmpl   $0xa,0x1c(%esp)
void at_list_add(unsigned int order, unsigned int page_index) {
  104d37:	8b 54 24 20          	mov    0x20(%esp),%edx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104d3b:	77 5f                	ja     104d9c <at_list_add+0x7c>
  104d3d:	3b 91 78 cc 44 01    	cmp    0x144cc78(%ecx),%edx
  104d43:	73 57                	jae    104d9c <at_list_add+0x7c>

    // Gatekeeper: buddy freelists must contain ONLY normal RAM pages
    if (AT[page_index].perm != 2) return;
  104d45:	8d 35 4c cc 04 00    	lea    0x4cc4c,%esi
  104d4b:	8d 04 92             	lea    (%edx,%edx,4),%eax
  104d4e:	8d 1c 31             	lea    (%ecx,%esi,1),%ebx
  104d51:	c1 e0 02             	shl    $0x2,%eax
  104d54:	89 1c 24             	mov    %ebx,(%esp)
  104d57:	01 c3                	add    %eax,%ebx
  104d59:	83 3b 02             	cmpl   $0x2,(%ebx)
  104d5c:	75 3e                	jne    104d9c <at_list_add+0x7c>

    int current_head = free_list[order];
  104d5e:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  104d62:	8d a9 4c cc 44 01    	lea    0x144cc4c(%ecx),%ebp

    AT[page_index].order = order;
  104d68:	01 c8                	add    %ecx,%eax
    AT[page_index].next  = current_head;
    AT[page_index].prev  = -1;
  104d6a:	c7 43 10 ff ff ff ff 	movl   $0xffffffff,0x10(%ebx)
    int current_head = free_list[order];
  104d71:	89 6c 24 04          	mov    %ebp,0x4(%esp)
    AT[page_index].order = order;
  104d75:	01 f0                	add    %esi,%eax
    int current_head = free_list[order];
  104d77:	8b 6c bd 00          	mov    0x0(%ebp,%edi,4),%ebp
    AT[page_index].order = order;
  104d7b:	89 78 08             	mov    %edi,0x8(%eax)
    AT[page_index].next  = current_head;
  104d7e:	89 68 0c             	mov    %ebp,0xc(%eax)

    if (current_head != -1) {
  104d81:	83 fd ff             	cmp    $0xffffffff,%ebp
  104d84:	74 0b                	je     104d91 <at_list_add+0x71>
        AT[current_head].prev = (int)page_index;
  104d86:	8b 1c 24             	mov    (%esp),%ebx
  104d89:	8d 44 ad 00          	lea    0x0(%ebp,%ebp,4),%eax
  104d8d:	89 54 83 10          	mov    %edx,0x10(%ebx,%eax,4)
    }
    free_list[order] = (int)page_index;
  104d91:	8b 44 24 04          	mov    0x4(%esp),%eax
  104d95:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  104d99:	89 14 b8             	mov    %edx,(%eax,%edi,4)
}
  104d9c:	83 c4 08             	add    $0x8,%esp
  104d9f:	5b                   	pop    %ebx
  104da0:	5e                   	pop    %esi
  104da1:	5f                   	pop    %edi
  104da2:	5d                   	pop    %ebp
  104da3:	c3                   	ret
  104da4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104dab:	00 
  104dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104db0 <at_list_remove>:


// Removes a page from the free list at the specified order.
void at_list_remove(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104db0:	e8 03 b6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104db5:	05 3f 82 00 00       	add    $0x823f,%eax
void at_list_remove(unsigned int order, unsigned int page_index) {
  104dba:	55                   	push   %ebp
  104dbb:	57                   	push   %edi
  104dbc:	56                   	push   %esi
  104dbd:	53                   	push   %ebx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104dbe:	83 7c 24 14 0a       	cmpl   $0xa,0x14(%esp)
  104dc3:	77 66                	ja     104e2b <at_list_remove+0x7b>
  104dc5:	8b b0 78 cc 44 01    	mov    0x144cc78(%eax),%esi
  104dcb:	39 74 24 18          	cmp    %esi,0x18(%esp)
  104dcf:	73 5a                	jae    104e2b <at_list_remove+0x7b>

    int n = AT[page_index].next;
  104dd1:	8b 7c 24 18          	mov    0x18(%esp),%edi
  104dd5:	8d 14 bd 00 00 00 00 	lea    0x0(,%edi,4),%edx
  104ddc:	89 d3                	mov    %edx,%ebx
  104dde:	01 fb                	add    %edi,%ebx
  104de0:	8d 3d 4c cc 04 00    	lea    0x4cc4c,%edi
  104de6:	c1 e3 02             	shl    $0x2,%ebx
    int p = AT[page_index].prev;
  104de9:	8d 34 07             	lea    (%edi,%eax,1),%esi
    int n = AT[page_index].next;
  104dec:	8b 8c 18 58 cc 04 00 	mov    0x4cc58(%eax,%ebx,1),%ecx
    int p = AT[page_index].prev;
  104df3:	8b 5c 33 10          	mov    0x10(%ebx,%esi,1),%ebx

    if (p != -1) {
  104df7:	83 fb ff             	cmp    $0xffffffff,%ebx
  104dfa:	74 34                	je     104e30 <at_list_remove+0x80>
        AT[p].next = n;
  104dfc:	8d 2c 9b             	lea    (%ebx,%ebx,4),%ebp
  104dff:	8d 2c a8             	lea    (%eax,%ebp,4),%ebp
  104e02:	89 4c 2f 0c          	mov    %ecx,0xc(%edi,%ebp,1)
    } else {
        free_list[order] = n;
    }

    if (n != -1) {
  104e06:	83 f9 ff             	cmp    $0xffffffff,%ecx
  104e09:	74 07                	je     104e12 <at_list_remove+0x62>
        AT[n].prev = p;
  104e0b:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
  104e0e:	89 5c 8e 10          	mov    %ebx,0x10(%esi,%ecx,4)
    }

    AT[page_index].next = -1;
  104e12:	03 54 24 18          	add    0x18(%esp),%edx
  104e16:	c1 e2 02             	shl    $0x2,%edx
  104e19:	01 d0                	add    %edx,%eax
    AT[page_index].prev = -1;
  104e1b:	c7 44 32 10 ff ff ff 	movl   $0xffffffff,0x10(%edx,%esi,1)
  104e22:	ff 
    AT[page_index].next = -1;
  104e23:	c7 44 07 0c ff ff ff 	movl   $0xffffffff,0xc(%edi,%eax,1)
  104e2a:	ff 
}
  104e2b:	5b                   	pop    %ebx
  104e2c:	5e                   	pop    %esi
  104e2d:	5f                   	pop    %edi
  104e2e:	5d                   	pop    %ebp
  104e2f:	c3                   	ret
        free_list[order] = n;
  104e30:	8b 6c 24 14          	mov    0x14(%esp),%ebp
  104e34:	89 8c a8 4c cc 44 01 	mov    %ecx,0x144cc4c(%eax,%ebp,4)
  104e3b:	eb c9                	jmp    104e06 <at_list_remove+0x56>

00104e3d <__x86.get_pc_thunk.cx>:
  104e3d:	8b 0c 24             	mov    (%esp),%ecx
  104e40:	c3                   	ret
  104e41:	66 90                	xchg   %ax,%ax
  104e43:	66 90                	xchg   %ax,%ax
  104e45:	66 90                	xchg   %ax,%ax
  104e47:	66 90                	xchg   %ax,%ax
  104e49:	66 90                	xchg   %ax,%ax
  104e4b:	66 90                	xchg   %ax,%ax
  104e4d:	66 90                	xchg   %ax,%ax
  104e4f:	90                   	nop

00104e50 <MATIntro_test1>:
#include "export.h"



// Test case 1: Test get_nps and set_nps functions.
int MATIntro_test1() {
  104e50:	55                   	push   %ebp
  104e51:	57                   	push   %edi
  104e52:	56                   	push   %esi
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
    int i;
    int nps = get_nps();
    for (i = 0; i < 10; i++) {
  104e53:	31 f6                	xor    %esi,%esi
int MATIntro_test1() {
  104e55:	53                   	push   %ebx
  104e56:	e8 65 b5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104e5b:	81 c3 99 81 00 00    	add    $0x8199,%ebx
  104e61:	83 ec 4c             	sub    $0x4c,%esp
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
  104e64:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
  104e6b:	00 
  104e6c:	8d 7c 24 18          	lea    0x18(%esp),%edi
  104e70:	c7 44 24 1c 03 00 00 	movl   $0x3,0x1c(%esp)
  104e77:	00 
  104e78:	c7 44 24 20 05 00 00 	movl   $0x5,0x20(%esp)
  104e7f:	00 
  104e80:	c7 44 24 24 06 00 00 	movl   $0x6,0x24(%esp)
  104e87:	00 
  104e88:	c7 44 24 28 4e 00 00 	movl   $0x4e,0x28(%esp)
  104e8f:	00 
  104e90:	c7 44 24 2c f8 0d 00 	movl   $0xdf8,0x2c(%esp)
  104e97:	00 
  104e98:	c7 44 24 30 20 00 00 	movl   $0x20,0x30(%esp)
  104e9f:	00 
  104ea0:	c7 44 24 34 08 00 00 	movl   $0x8,0x34(%esp)
  104ea7:	00 
  104ea8:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
  104eaf:	00 
  104eb0:	c7 44 24 3c 64 00 00 	movl   $0x64,0x3c(%esp)
  104eb7:	00 
    int nps = get_nps();
  104eb8:	e8 33 fd ff ff       	call   104bf0 <get_nps>
  104ebd:	89 44 24 0c          	mov    %eax,0xc(%esp)
    for (i = 0; i < 10; i++) {
  104ec1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        set_nps(rn10[i]);
  104ec8:	8b 2c b7             	mov    (%edi,%esi,4),%ebp
  104ecb:	83 ec 0c             	sub    $0xc,%esp
  104ece:	55                   	push   %ebp
  104ecf:	e8 3c fd ff ff       	call   104c10 <set_nps>
        if (get_nps() != rn10[i]) {
  104ed4:	e8 17 fd ff ff       	call   104bf0 <get_nps>
  104ed9:	83 c4 10             	add    $0x10,%esp
  104edc:	39 c5                	cmp    %eax,%ebp
  104ede:	75 30                	jne    104f10 <MATIntro_test1+0xc0>
    for (i = 0; i < 10; i++) {
  104ee0:	83 c6 01             	add    $0x1,%esi
  104ee3:	83 fe 0a             	cmp    $0xa,%esi
  104ee6:	75 e0                	jne    104ec8 <MATIntro_test1+0x78>
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
            set_nps(nps);
            return 1;
        }
    }
    set_nps(nps);
  104ee8:	83 ec 0c             	sub    $0xc,%esp
  104eeb:	ff 74 24 18          	push   0x18(%esp)
  104eef:	e8 1c fd ff ff       	call   104c10 <set_nps>
    dprintf("test 1 passed.\n");
  104ef4:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  104efa:	89 04 24             	mov    %eax,(%esp)
  104efd:	e8 6a de ff ff       	call   102d6c <dprintf>
    return 0;
  104f02:	83 c4 10             	add    $0x10,%esp
  104f05:	31 c0                	xor    %eax,%eax
}
  104f07:	83 c4 4c             	add    $0x4c,%esp
  104f0a:	5b                   	pop    %ebx
  104f0b:	5e                   	pop    %esi
  104f0c:	5f                   	pop    %edi
  104f0d:	5d                   	pop    %ebp
  104f0e:	c3                   	ret
  104f0f:	90                   	nop
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
  104f10:	e8 db fc ff ff       	call   104bf0 <get_nps>
  104f15:	55                   	push   %ebp
  104f16:	50                   	push   %eax
  104f17:	8d 83 80 bb ff ff    	lea    -0x4480(%ebx),%eax
  104f1d:	56                   	push   %esi
  104f1e:	50                   	push   %eax
  104f1f:	e8 48 de ff ff       	call   102d6c <dprintf>
            set_nps(nps);
  104f24:	58                   	pop    %eax
  104f25:	ff 74 24 18          	push   0x18(%esp)
  104f29:	e8 e2 fc ff ff       	call   104c10 <set_nps>
            return 1;
  104f2e:	83 c4 10             	add    $0x10,%esp
  104f31:	b8 01 00 00 00       	mov    $0x1,%eax
}
  104f36:	83 c4 4c             	add    $0x4c,%esp
  104f39:	5b                   	pop    %ebx
  104f3a:	5e                   	pop    %esi
  104f3b:	5f                   	pop    %edi
  104f3c:	5d                   	pop    %ebp
  104f3d:	c3                   	ret
  104f3e:	66 90                	xchg   %ax,%ax

00104f40 <MATIntro_test2>:

// Test case 2: Test permissions and allocation.
int MATIntro_test2() {
  104f40:	56                   	push   %esi
  104f41:	53                   	push   %ebx
  104f42:	e8 79 b4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104f47:	81 c3 ad 80 00 00    	add    $0x80ad,%ebx
  104f4d:	83 ec 0c             	sub    $0xc,%esp
    at_set_perm(0, 2); // Set to normal
  104f50:	6a 02                	push   $0x2
  104f52:	6a 00                	push   $0x0
  104f54:	e8 07 fd ff ff       	call   104c60 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0) {
  104f59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104f60:	e8 cb fc ff ff       	call   104c30 <at_is_norm>
  104f65:	83 c4 10             	add    $0x10,%esp
  104f68:	83 f8 01             	cmp    $0x1,%eax
  104f6b:	75 11                	jne    104f7e <MATIntro_test2+0x3e>
  104f6d:	83 ec 0c             	sub    $0xc,%esp
  104f70:	6a 00                	push   $0x0
  104f72:	e8 19 fd ff ff       	call   104c90 <at_is_allocated>
  104f77:	83 c4 10             	add    $0x10,%esp
  104f7a:	85 c0                	test   %eax,%eax
  104f7c:	74 3a                	je     104fb8 <MATIntro_test2+0x78>
        dprintf("test 2.1 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  104f7e:	83 ec 0c             	sub    $0xc,%esp
  104f81:	6a 00                	push   $0x0
  104f83:	e8 08 fd ff ff       	call   104c90 <at_is_allocated>
  104f88:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104f8f:	89 c6                	mov    %eax,%esi
  104f91:	e8 9a fc ff ff       	call   104c30 <at_is_norm>
  104f96:	83 c4 0c             	add    $0xc,%esp
  104f99:	56                   	push   %esi
  104f9a:	50                   	push   %eax
  104f9b:	8d 83 a8 bb ff ff    	lea    -0x4458(%ebx),%eax
  104fa1:	50                   	push   %eax
  104fa2:	e8 c5 dd ff ff       	call   102d6c <dprintf>
        return 1;
  104fa7:	83 c4 10             	add    $0x10,%esp
        dprintf("test 2.2 failed: permission not reset\n");
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  104faa:	83 c4 04             	add    $0x4,%esp
        return 1;
  104fad:	b8 01 00 00 00       	mov    $0x1,%eax
}
  104fb2:	5b                   	pop    %ebx
  104fb3:	5e                   	pop    %esi
  104fb4:	c3                   	ret
  104fb5:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_perm(0, 0); // Set to reserved
  104fb8:	83 ec 08             	sub    $0x8,%esp
  104fbb:	6a 00                	push   $0x0
  104fbd:	6a 00                	push   $0x0
  104fbf:	e8 9c fc ff ff       	call   104c60 <at_set_perm>
    if (at_is_norm(0) != 0) {
  104fc4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104fcb:	e8 60 fc ff ff       	call   104c30 <at_is_norm>
  104fd0:	83 c4 10             	add    $0x10,%esp
  104fd3:	85 c0                	test   %eax,%eax
  104fd5:	75 21                	jne    104ff8 <MATIntro_test2+0xb8>
    dprintf("test 2 passed.\n");
  104fd7:	83 ec 0c             	sub    $0xc,%esp
  104fda:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  104fe0:	50                   	push   %eax
  104fe1:	e8 86 dd ff ff       	call   102d6c <dprintf>
    return 0;
  104fe6:	83 c4 10             	add    $0x10,%esp
  104fe9:	31 c0                	xor    %eax,%eax
}
  104feb:	83 c4 04             	add    $0x4,%esp
  104fee:	5b                   	pop    %ebx
  104fef:	5e                   	pop    %esi
  104ff0:	c3                   	ret
  104ff1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 2.2 failed: permission not reset\n");
  104ff8:	83 ec 0c             	sub    $0xc,%esp
  104ffb:	8d 83 d0 bb ff ff    	lea    -0x4430(%ebx),%eax
  105001:	50                   	push   %eax
  105002:	e8 65 dd ff ff       	call   102d6c <dprintf>
        return 1;
  105007:	83 c4 10             	add    $0x10,%esp
  10500a:	eb 9e                	jmp    104faa <MATIntro_test2+0x6a>
  10500c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00105010 <MATIntro_test3>:

// Test case 3: Test allocation status.
int MATIntro_test3() {
  105010:	53                   	push   %ebx
  105011:	e8 aa b3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105016:	81 c3 de 7f 00 00    	add    $0x7fde,%ebx
  10501c:	83 ec 10             	sub    $0x10,%esp
    at_set_allocated(1, 0);
  10501f:	6a 00                	push   $0x0
  105021:	6a 01                	push   $0x1
  105023:	e8 98 fc ff ff       	call   104cc0 <at_set_allocated>
    if (at_is_allocated(1) != 0) {
  105028:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  10502f:	e8 5c fc ff ff       	call   104c90 <at_is_allocated>
  105034:	83 c4 10             	add    $0x10,%esp
  105037:	85 c0                	test   %eax,%eax
  105039:	75 75                	jne    1050b0 <MATIntro_test3+0xa0>
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
        return 1;
    }
    at_set_allocated(1, 1);
  10503b:	83 ec 08             	sub    $0x8,%esp
  10503e:	6a 01                	push   $0x1
  105040:	6a 01                	push   $0x1
  105042:	e8 79 fc ff ff       	call   104cc0 <at_set_allocated>
    if (at_is_allocated(1) != 1) {
  105047:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  10504e:	e8 3d fc ff ff       	call   104c90 <at_is_allocated>
  105053:	83 c4 10             	add    $0x10,%esp
  105056:	83 f8 01             	cmp    $0x1,%eax
  105059:	74 2d                	je     105088 <MATIntro_test3+0x78>
        dprintf("test 3.2 failed: (%d != 1)\n", at_is_allocated(1));
  10505b:	83 ec 0c             	sub    $0xc,%esp
  10505e:	6a 01                	push   $0x1
  105060:	e8 2b fc ff ff       	call   104c90 <at_is_allocated>
  105065:	5a                   	pop    %edx
  105066:	59                   	pop    %ecx
  105067:	50                   	push   %eax
  105068:	8d 83 94 b8 ff ff    	lea    -0x476c(%ebx),%eax
  10506e:	50                   	push   %eax
  10506f:	e8 f8 dc ff ff       	call   102d6c <dprintf>
        return 1;
  105074:	83 c4 10             	add    $0x10,%esp
    }
    at_set_allocated(1, 0);
    dprintf("test 3 passed.\n");
    return 0;
}
  105077:	83 c4 08             	add    $0x8,%esp
        return 1;
  10507a:	b8 01 00 00 00       	mov    $0x1,%eax
}
  10507f:	5b                   	pop    %ebx
  105080:	c3                   	ret
  105081:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    at_set_allocated(1, 0);
  105088:	83 ec 08             	sub    $0x8,%esp
  10508b:	6a 00                	push   $0x0
  10508d:	6a 01                	push   $0x1
  10508f:	e8 2c fc ff ff       	call   104cc0 <at_set_allocated>
    dprintf("test 3 passed.\n");
  105094:	8d 83 b0 b8 ff ff    	lea    -0x4750(%ebx),%eax
  10509a:	89 04 24             	mov    %eax,(%esp)
  10509d:	e8 ca dc ff ff       	call   102d6c <dprintf>
    return 0;
  1050a2:	83 c4 10             	add    $0x10,%esp
  1050a5:	31 c0                	xor    %eax,%eax
}
  1050a7:	83 c4 08             	add    $0x8,%esp
  1050aa:	5b                   	pop    %ebx
  1050ab:	c3                   	ret
  1050ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
  1050b0:	83 ec 0c             	sub    $0xc,%esp
  1050b3:	6a 01                	push   $0x1
  1050b5:	e8 d6 fb ff ff       	call   104c90 <at_is_allocated>
  1050ba:	5a                   	pop    %edx
  1050bb:	59                   	pop    %ecx
  1050bc:	50                   	push   %eax
  1050bd:	8d 83 78 b8 ff ff    	lea    -0x4788(%ebx),%eax
  1050c3:	50                   	push   %eax
  1050c4:	e8 a3 dc ff ff       	call   102d6c <dprintf>
        return 1;
  1050c9:	83 c4 10             	add    $0x10,%esp
  1050cc:	eb a9                	jmp    105077 <MATIntro_test3+0x67>
  1050ce:	66 90                	xchg   %ax,%ax

001050d0 <MATIntro_test_buddy>:

// Buddy allocator test case: Verifies the link-list pointers in AT.
int MATIntro_test_buddy() {
  1050d0:	57                   	push   %edi
  1050d1:	56                   	push   %esi
  1050d2:	53                   	push   %ebx
  1050d3:	e8 e8 b2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1050d8:	81 c3 1c 7f 00 00    	add    $0x7f1c,%ebx
    // Save previous state so we don't contaminate later layers
    unsigned int old_nps = get_nps();
  1050de:	e8 0d fb ff ff       	call   104bf0 <get_nps>

    set_nps(2048);
  1050e3:	83 ec 0c             	sub    $0xc,%esp
  1050e6:	68 00 08 00 00       	push   $0x800
    unsigned int old_nps = get_nps();
  1050eb:	89 c6                	mov    %eax,%esi
    set_nps(2048);
  1050ed:	e8 1e fb ff ff       	call   104c10 <set_nps>
    pmm_init_freelists();
  1050f2:	e8 b9 fa ff ff       	call   104bb0 <pmm_init_freelists>

    // Make sure pages we add are Normal RAM (perm==2)
    at_set_allocated(10, 0);
  1050f7:	5f                   	pop    %edi
  1050f8:	58                   	pop    %eax
  1050f9:	6a 00                	push   $0x0
  1050fb:	6a 0a                	push   $0xa
  1050fd:	e8 be fb ff ff       	call   104cc0 <at_set_allocated>
    at_set_allocated(20, 0);
  105102:	58                   	pop    %eax
  105103:	5a                   	pop    %edx
  105104:	6a 00                	push   $0x0
  105106:	6a 14                	push   $0x14
  105108:	e8 b3 fb ff ff       	call   104cc0 <at_set_allocated>
    at_set_perm(10, 2);
  10510d:	59                   	pop    %ecx
  10510e:	5f                   	pop    %edi
  10510f:	6a 02                	push   $0x2
  105111:	6a 0a                	push   $0xa
  105113:	e8 48 fb ff ff       	call   104c60 <at_set_perm>
    at_set_perm(20, 2);
  105118:	58                   	pop    %eax
  105119:	5a                   	pop    %edx
  10511a:	6a 02                	push   $0x2
  10511c:	6a 14                	push   $0x14
  10511e:	e8 3d fb ff ff       	call   104c60 <at_set_perm>

    at_set_allocated(512, 0);
  105123:	59                   	pop    %ecx
  105124:	5f                   	pop    %edi
  105125:	6a 00                	push   $0x0
  105127:	68 00 02 00 00       	push   $0x200
  10512c:	e8 8f fb ff ff       	call   104cc0 <at_set_allocated>
    at_set_perm(512, 2);
  105131:	58                   	pop    %eax
  105132:	5a                   	pop    %edx
  105133:	6a 02                	push   $0x2
  105135:	68 00 02 00 00       	push   $0x200
  10513a:	e8 21 fb ff ff       	call   104c60 <at_set_perm>

    // Test A: Add pages to Order 0 (4KB)
    at_list_add(0, 10);
  10513f:	59                   	pop    %ecx
  105140:	5f                   	pop    %edi
  105141:	6a 0a                	push   $0xa
  105143:	6a 00                	push   $0x0
  105145:	e8 d6 fb ff ff       	call   104d20 <at_list_add>
    at_list_add(0, 20);
  10514a:	58                   	pop    %eax
  10514b:	5a                   	pop    %edx
  10514c:	6a 14                	push   $0x14
  10514e:	6a 00                	push   $0x0
  105150:	e8 cb fb ff ff       	call   104d20 <at_list_add>

    if (get_free_list_head(0) != 20) {
  105155:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10515c:	e8 8f fb ff ff       	call   104cf0 <get_free_list_head>
  105161:	83 c4 10             	add    $0x10,%esp
  105164:	83 f8 14             	cmp    $0x14,%eax
  105167:	74 57                	je     1051c0 <MATIntro_test_buddy+0xf0>
        dprintf("Buddy Test failed: Head of order 0 should be 20, got %d\n", get_free_list_head(0));
  105169:	83 ec 0c             	sub    $0xc,%esp
  10516c:	6a 00                	push   $0x0
  10516e:	e8 7d fb ff ff       	call   104cf0 <get_free_list_head>
  105173:	5a                   	pop    %edx
  105174:	59                   	pop    %ecx
  105175:	50                   	push   %eax
  105176:	8d 83 f8 bb ff ff    	lea    -0x4408(%ebx),%eax
        return 1;
    }

    int head = get_free_list_head(0);
    if (AT[head].next != 10) {
        dprintf("Buddy Test failed: AT[20].next should be 10, got %d\n", AT[head].next);
  10517c:	50                   	push   %eax
  10517d:	e8 ea db ff ff       	call   102d6c <dprintf>
        at_set_perm(10, 0);
  105182:	59                   	pop    %ecx
  105183:	5f                   	pop    %edi
  105184:	6a 00                	push   $0x0
  105186:	6a 0a                	push   $0xa
  105188:	e8 d3 fa ff ff       	call   104c60 <at_set_perm>
        at_set_perm(20, 0);
  10518d:	58                   	pop    %eax
  10518e:	5a                   	pop    %edx
  10518f:	6a 00                	push   $0x0
  105191:	6a 14                	push   $0x14
  105193:	e8 c8 fa ff ff       	call   104c60 <at_set_perm>
        at_set_perm(512, 0);
  105198:	59                   	pop    %ecx
  105199:	5f                   	pop    %edi
  10519a:	6a 00                	push   $0x0
  10519c:	68 00 02 00 00       	push   $0x200
  1051a1:	e8 ba fa ff ff       	call   104c60 <at_set_perm>
        pmm_init_freelists();
  1051a6:	e8 05 fa ff ff       	call   104bb0 <pmm_init_freelists>
        set_nps(old_nps);
  1051ab:	89 34 24             	mov    %esi,(%esp)
  1051ae:	e8 5d fa ff ff       	call   104c10 <set_nps>
        return 1;
  1051b3:	83 c4 10             	add    $0x10,%esp
        return 1;
  1051b6:	b8 01 00 00 00       	mov    $0x1,%eax
    at_set_perm(512, 0);
    pmm_init_freelists();
    set_nps(old_nps);

    return 0;
}
  1051bb:	5b                   	pop    %ebx
  1051bc:	5e                   	pop    %esi
  1051bd:	5f                   	pop    %edi
  1051be:	c3                   	ret
  1051bf:	90                   	nop
    int head = get_free_list_head(0);
  1051c0:	83 ec 0c             	sub    $0xc,%esp
  1051c3:	6a 00                	push   $0x0
  1051c5:	e8 26 fb ff ff       	call   104cf0 <get_free_list_head>
    if (AT[head].next != 10) {
  1051ca:	c7 c7 40 9c 15 00    	mov    $0x159c40,%edi
  1051d0:	83 c4 10             	add    $0x10,%esp
  1051d3:	8d 04 80             	lea    (%eax,%eax,4),%eax
  1051d6:	8b 44 87 0c          	mov    0xc(%edi,%eax,4),%eax
  1051da:	83 f8 0a             	cmp    $0xa,%eax
  1051dd:	75 61                	jne    105240 <MATIntro_test_buddy+0x170>
    if (AT[10].prev != 20) {
  1051df:	8b 87 d8 00 00 00    	mov    0xd8(%edi),%eax
  1051e5:	83 f8 14             	cmp    $0x14,%eax
  1051e8:	75 46                	jne    105230 <MATIntro_test_buddy+0x160>
    at_list_add(9, 512);
  1051ea:	83 ec 08             	sub    $0x8,%esp
  1051ed:	68 00 02 00 00       	push   $0x200
  1051f2:	6a 09                	push   $0x9
  1051f4:	e8 27 fb ff ff       	call   104d20 <at_list_add>
    if (get_free_list_head(9) != 512 || AT[512].order != 9) {
  1051f9:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  105200:	e8 eb fa ff ff       	call   104cf0 <get_free_list_head>
  105205:	83 c4 10             	add    $0x10,%esp
  105208:	3d 00 02 00 00       	cmp    $0x200,%eax
  10520d:	75 09                	jne    105218 <MATIntro_test_buddy+0x148>
  10520f:	83 bf 08 28 00 00 09 	cmpl   $0x9,0x2808(%edi)
  105216:	74 38                	je     105250 <MATIntro_test_buddy+0x180>
        dprintf("Buddy Test failed: Order 9 initialization failed\n");
  105218:	83 ec 0c             	sub    $0xc,%esp
  10521b:	8d 83 a4 bc ff ff    	lea    -0x435c(%ebx),%eax
  105221:	e9 56 ff ff ff       	jmp    10517c <MATIntro_test_buddy+0xac>
  105226:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10522d:	00 
  10522e:	66 90                	xchg   %ax,%ax
        dprintf("Buddy Test failed: AT[10].prev should be 20, got %d\n", AT[10].prev);
  105230:	83 ec 08             	sub    $0x8,%esp
  105233:	50                   	push   %eax
  105234:	8d 83 6c bc ff ff    	lea    -0x4394(%ebx),%eax
  10523a:	e9 3d ff ff ff       	jmp    10517c <MATIntro_test_buddy+0xac>
  10523f:	90                   	nop
        dprintf("Buddy Test failed: AT[20].next should be 10, got %d\n", AT[head].next);
  105240:	83 ec 08             	sub    $0x8,%esp
  105243:	50                   	push   %eax
  105244:	8d 83 34 bc ff ff    	lea    -0x43cc(%ebx),%eax
  10524a:	e9 2d ff ff ff       	jmp    10517c <MATIntro_test_buddy+0xac>
  10524f:	90                   	nop
    at_list_remove(0, 20);
  105250:	83 ec 08             	sub    $0x8,%esp
  105253:	6a 14                	push   $0x14
  105255:	6a 00                	push   $0x0
  105257:	e8 54 fb ff ff       	call   104db0 <at_list_remove>
    if (get_free_list_head(0) != 10 || AT[10].prev != -1) {
  10525c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105263:	e8 88 fa ff ff       	call   104cf0 <get_free_list_head>
  105268:	83 c4 10             	add    $0x10,%esp
  10526b:	83 f8 0a             	cmp    $0xa,%eax
  10526e:	75 09                	jne    105279 <MATIntro_test_buddy+0x1a9>
  105270:	83 bf d8 00 00 00 ff 	cmpl   $0xffffffff,0xd8(%edi)
  105277:	74 0e                	je     105287 <MATIntro_test_buddy+0x1b7>
        dprintf("Buddy Test failed: Removal logic failed to update head/prev\n");
  105279:	83 ec 0c             	sub    $0xc,%esp
  10527c:	8d 83 d8 bc ff ff    	lea    -0x4328(%ebx),%eax
  105282:	e9 f5 fe ff ff       	jmp    10517c <MATIntro_test_buddy+0xac>
    dprintf("Buddy list logic tests passed.\n");
  105287:	83 ec 0c             	sub    $0xc,%esp
  10528a:	8d 83 18 bd ff ff    	lea    -0x42e8(%ebx),%eax
  105290:	50                   	push   %eax
  105291:	e8 d6 da ff ff       	call   102d6c <dprintf>
    at_set_perm(10, 0);
  105296:	58                   	pop    %eax
  105297:	5a                   	pop    %edx
  105298:	6a 00                	push   $0x0
  10529a:	6a 0a                	push   $0xa
  10529c:	e8 bf f9 ff ff       	call   104c60 <at_set_perm>
    at_set_perm(20, 0);
  1052a1:	59                   	pop    %ecx
  1052a2:	5f                   	pop    %edi
  1052a3:	6a 00                	push   $0x0
  1052a5:	6a 14                	push   $0x14
  1052a7:	e8 b4 f9 ff ff       	call   104c60 <at_set_perm>
    at_set_perm(512, 0);
  1052ac:	58                   	pop    %eax
  1052ad:	5a                   	pop    %edx
  1052ae:	6a 00                	push   $0x0
  1052b0:	68 00 02 00 00       	push   $0x200
  1052b5:	e8 a6 f9 ff ff       	call   104c60 <at_set_perm>
    pmm_init_freelists();
  1052ba:	e8 f1 f8 ff ff       	call   104bb0 <pmm_init_freelists>
    set_nps(old_nps);
  1052bf:	89 34 24             	mov    %esi,(%esp)
  1052c2:	e8 49 f9 ff ff       	call   104c10 <set_nps>
    return 0;
  1052c7:	83 c4 10             	add    $0x10,%esp
  1052ca:	31 c0                	xor    %eax,%eax
  1052cc:	e9 ea fe ff ff       	jmp    1051bb <MATIntro_test_buddy+0xeb>
  1052d1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1052d8:	00 
  1052d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

001052e0 <test_MATIntro>:



// The main entry point for the MATIntro layer test.
int test_MATIntro() {
  1052e0:	57                   	push   %edi
  1052e1:	e8 7a df ff ff       	call   103260 <__x86.get_pc_thunk.di>
  1052e6:	81 c7 0e 7d 00 00    	add    $0x7d0e,%edi
  1052ec:	56                   	push   %esi
  1052ed:	53                   	push   %ebx
    int error = 0;
    error += MATIntro_test1();
  1052ee:	e8 5d fb ff ff       	call   104e50 <MATIntro_test1>
  1052f3:	89 c3                	mov    %eax,%ebx
    error += MATIntro_test2();
  1052f5:	e8 46 fc ff ff       	call   104f40 <MATIntro_test2>
  1052fa:	01 c3                	add    %eax,%ebx
    error += MATIntro_test3();
  1052fc:	e8 0f fd ff ff       	call   105010 <MATIntro_test3>
  105301:	01 c3                	add    %eax,%ebx
    error += MATIntro_test_buddy();
  105303:	e8 c8 fd ff ff       	call   1050d0 <MATIntro_test_buddy>

    if (error == 0) {
  105308:	89 de                	mov    %ebx,%esi
  10530a:	01 c6                	add    %eax,%esi
  10530c:	75 22                	jne    105330 <test_MATIntro+0x50>
        dprintf("ALL MATIntro TESTS PASSED\n");
  10530e:	83 ec 0c             	sub    $0xc,%esp
  105311:	8d 87 c0 b8 ff ff    	lea    -0x4740(%edi),%eax
  105317:	89 fb                	mov    %edi,%ebx
  105319:	50                   	push   %eax
  10531a:	e8 4d da ff ff       	call   102d6c <dprintf>
  10531f:	83 c4 10             	add    $0x10,%esp
    } else {
        dprintf("MATIntro TESTS FAILED WITH %d ERRORS\n", error);
    }
    return error;
  105322:	89 f0                	mov    %esi,%eax
  105324:	5b                   	pop    %ebx
  105325:	5e                   	pop    %esi
  105326:	5f                   	pop    %edi
  105327:	c3                   	ret
  105328:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10532f:	00 
        dprintf("MATIntro TESTS FAILED WITH %d ERRORS\n", error);
  105330:	83 ec 08             	sub    $0x8,%esp
  105333:	8d 87 38 bd ff ff    	lea    -0x42c8(%edi),%eax
  105339:	89 fb                	mov    %edi,%ebx
  10533b:	56                   	push   %esi
  10533c:	50                   	push   %eax
  10533d:	e8 2a da ff ff       	call   102d6c <dprintf>
  105342:	83 c4 10             	add    $0x10,%esp
  105345:	89 f0                	mov    %esi,%eax
  105347:	5b                   	pop    %ebx
  105348:	5e                   	pop    %esi
  105349:	5f                   	pop    %edi
  10534a:	c3                   	ret
  10534b:	66 90                	xchg   %ax,%ax
  10534d:	66 90                	xchg   %ax,%ax
  10534f:	90                   	nop

00105350 <pmem_init>:
    }
    return 1;
}

void pmem_init(unsigned int mbi_addr)
{
  105350:	55                   	push   %ebp
  105351:	57                   	push   %edi
  105352:	56                   	push   %esi
  105353:	53                   	push   %ebx
  105354:	e8 67 b0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105359:	81 c3 9b 7c 00 00    	add    $0x7c9b,%ebx
  10535f:	83 ec 38             	sub    $0x38,%esp
    unsigned int i, j;
    unsigned int highest_addr = 0;

    devinit(mbi_addr);
  105362:	ff 74 24 4c          	push   0x4c(%esp)
  105366:	e8 96 b7 ff ff       	call   100b01 <devinit>
    unsigned int n_entries = get_size();
  10536b:	e8 df bc ff ff       	call   10104f <get_size>

    // Find end of physical RAM
    for (i = 0; i < n_entries; i++) {
  105370:	83 c4 10             	add    $0x10,%esp
    unsigned int n_entries = get_size();
  105373:	89 c7                	mov    %eax,%edi
    for (i = 0; i < n_entries; i++) {
  105375:	85 c0                	test   %eax,%eax
  105377:	0f 84 e7 02 00 00    	je     105664 <pmem_init+0x314>
  10537d:	89 44 24 08          	mov    %eax,0x8(%esp)
    unsigned int highest_addr = 0;
  105381:	31 d2                	xor    %edx,%edx
    for (i = 0; i < n_entries; i++) {
  105383:	31 ed                	xor    %ebp,%ebp
  105385:	89 d7                	mov    %edx,%edi
  105387:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10538e:	00 
  10538f:	90                   	nop
        unsigned int end = get_mms(i) + get_mml(i);
  105390:	83 ec 0c             	sub    $0xc,%esp
  105393:	55                   	push   %ebp
  105394:	e8 cb bc ff ff       	call   101064 <get_mms>
  105399:	89 2c 24             	mov    %ebp,(%esp)
  10539c:	89 c6                	mov    %eax,%esi
  10539e:	e8 27 bd ff ff       	call   1010ca <get_mml>
  1053a3:	01 f0                	add    %esi,%eax
        if (end > highest_addr) highest_addr = end;
  1053a5:	39 c7                	cmp    %eax,%edi
  1053a7:	0f 42 f8             	cmovb  %eax,%edi
    for (i = 0; i < n_entries; i++) {
  1053aa:	83 c4 10             	add    $0x10,%esp
  1053ad:	83 c5 01             	add    $0x1,%ebp
  1053b0:	39 6c 24 08          	cmp    %ebp,0x8(%esp)
  1053b4:	75 da                	jne    105390 <pmem_init+0x40>
    }
    unsigned int phys_nps = highest_addr / PAGESIZE;
  1053b6:	89 fa                	mov    %edi,%edx
  1053b8:	8b 7c 24 08          	mov    0x8(%esp),%edi
  1053bc:	c1 ea 0c             	shr    $0xc,%edx
  1053bf:	89 54 24 14          	mov    %edx,0x14(%esp)

    // AT must cover the PI window used by tests
    set_nps(VM_USERHI_PI);
  1053c3:	83 ec 0c             	sub    $0xc,%esp

    pmm_init_freelists();

    // PHASE 1: reset whole AT
    for (i = 0; i < get_nps(); i++) {
  1053c6:	31 f6                	xor    %esi,%esi
    set_nps(VM_USERHI_PI);
  1053c8:	68 00 00 0f 00       	push   $0xf0000
  1053cd:	e8 3e f8 ff ff       	call   104c10 <set_nps>
    pmm_init_freelists();
  1053d2:	e8 d9 f7 ff ff       	call   104bb0 <pmm_init_freelists>
    for (i = 0; i < get_nps(); i++) {
  1053d7:	c7 c0 40 9c 15 00    	mov    $0x159c40,%eax
  1053dd:	89 44 24 28          	mov    %eax,0x28(%esp)
  1053e1:	8d 68 08             	lea    0x8(%eax),%ebp
  1053e4:	83 c4 10             	add    $0x10,%esp
  1053e7:	eb 3a                	jmp    105423 <pmem_init+0xd3>
  1053e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        at_set_allocated(i, 0);
  1053f0:	83 ec 08             	sub    $0x8,%esp
  1053f3:	83 c5 14             	add    $0x14,%ebp
  1053f6:	6a 00                	push   $0x0
  1053f8:	56                   	push   %esi
  1053f9:	e8 c2 f8 ff ff       	call   104cc0 <at_set_allocated>
        at_set_perm(i, 0);
  1053fe:	58                   	pop    %eax
  1053ff:	5a                   	pop    %edx
  105400:	6a 00                	push   $0x0
  105402:	56                   	push   %esi
    for (i = 0; i < get_nps(); i++) {
  105403:	83 c6 01             	add    $0x1,%esi
        at_set_perm(i, 0);
  105406:	e8 55 f8 ff ff       	call   104c60 <at_set_perm>
        AT[i].next = -1;
  10540b:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
        AT[i].prev = -1;
  105412:	83 c4 10             	add    $0x10,%esp
  105415:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
        AT[i].order = 0;
  10541c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    for (i = 0; i < get_nps(); i++) {
  105423:	e8 c8 f7 ff ff       	call   104bf0 <get_nps>
  105428:	39 c6                	cmp    %eax,%esi
  10542a:	72 c4                	jb     1053f0 <pmem_init+0xa0>
    }

    // Mark below-user window as kernel/reserved (not allocatable)
    for (i = 0; i < VM_USERLO_PI; i++) {
  10542c:	31 ed                	xor    %ebp,%ebp
  10542e:	66 90                	xchg   %ax,%ax
        at_set_perm(i, 1);
  105430:	83 ec 08             	sub    $0x8,%esp
  105433:	6a 01                	push   $0x1
  105435:	55                   	push   %ebp
    for (i = 0; i < VM_USERLO_PI; i++) {
  105436:	83 c5 01             	add    $0x1,%ebp
        at_set_perm(i, 1);
  105439:	e8 22 f8 ff ff       	call   104c60 <at_set_perm>
    for (i = 0; i < VM_USERLO_PI; i++) {
  10543e:	83 c4 10             	add    $0x10,%esp
  105441:	81 fd 00 00 04 00    	cmp    $0x40000,%ebp
  105447:	75 e7                	jne    105430 <pmem_init+0xe0>
  105449:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  105450:	00 
    }

    // PHASE 2a: mark user-window pages as Normal/Reserved via BIOS (shifted mapping)
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  105451:	b8 00 00 04 00       	mov    $0x40000,%eax
  105456:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
  10545a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        unsigned int phys_pi = i - VM_USERLO_PI;

        if (phys_pi >= phys_nps) {
  105460:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  105464:	8d 90 00 00 fc ff    	lea    -0x40000(%eax),%edx
  10546a:	39 ca                	cmp    %ecx,%edx
  10546c:	0f 83 3e 01 00 00    	jae    1055b0 <pmem_init+0x260>

        unsigned int paddr_start = phys_pi * PAGESIZE;
        unsigned int paddr_end   = paddr_start + PAGESIZE;

        int is_ram = 0;
        for (j = 0; j < n_entries; j++) {
  105472:	85 ff                	test   %edi,%edi
  105474:	0f 84 97 01 00 00    	je     105611 <pmem_init+0x2c1>
  10547a:	8b 54 24 0c          	mov    0xc(%esp),%edx
  10547e:	89 44 24 10          	mov    %eax,0x10(%esp)
  105482:	31 f6                	xor    %esi,%esi
  105484:	81 c2 00 10 00 00    	add    $0x1000,%edx
  10548a:	89 54 24 08          	mov    %edx,0x8(%esp)
  10548e:	66 90                	xchg   %ax,%ax
            if (!is_usable(j)) continue;
  105490:	83 ec 0c             	sub    $0xc,%esp
  105493:	56                   	push   %esi
  105494:	e8 a1 bc ff ff       	call   10113a <is_usable>
  105499:	83 c4 10             	add    $0x10,%esp
  10549c:	85 c0                	test   %eax,%eax
  10549e:	74 2a                	je     1054ca <pmem_init+0x17a>

            unsigned int start = get_mms(j);
  1054a0:	83 ec 0c             	sub    $0xc,%esp
  1054a3:	56                   	push   %esi
  1054a4:	e8 bb bb ff ff       	call   101064 <get_mms>
            unsigned int end   = start + get_mml(j);
  1054a9:	89 34 24             	mov    %esi,(%esp)
            unsigned int start = get_mms(j);
  1054ac:	89 c5                	mov    %eax,%ebp
            unsigned int end   = start + get_mml(j);
  1054ae:	e8 17 bc ff ff       	call   1010ca <get_mml>

            if (start <= paddr_start && paddr_end <= end) {
  1054b3:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  1054b7:	83 c4 10             	add    $0x10,%esp
            unsigned int end   = start + get_mml(j);
  1054ba:	01 e8                	add    %ebp,%eax
            if (start <= paddr_start && paddr_end <= end) {
  1054bc:	39 c8                	cmp    %ecx,%eax
  1054be:	72 0a                	jb     1054ca <pmem_init+0x17a>
  1054c0:	39 6c 24 0c          	cmp    %ebp,0xc(%esp)
  1054c4:	0f 83 16 01 00 00    	jae    1055e0 <pmem_init+0x290>
        for (j = 0; j < n_entries; j++) {
  1054ca:	83 c6 01             	add    $0x1,%esi
  1054cd:	39 f7                	cmp    %esi,%edi
  1054cf:	75 bf                	jne    105490 <pmem_init+0x140>
  1054d1:	8b 44 24 10          	mov    0x10(%esp),%eax

        if (is_ram) {
            at_set_perm(i, 2);   // Normal RAM
            at_set_allocated(i, 0);
        } else {
            at_set_perm(i, 0);   // Reserved hole
  1054d5:	83 ec 08             	sub    $0x8,%esp
  1054d8:	6a 00                	push   $0x0
  1054da:	50                   	push   %eax
  1054db:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  1054df:	e8 7c f7 ff ff       	call   104c60 <at_set_perm>
  1054e4:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1054e8:	83 c4 10             	add    $0x10,%esp
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  1054eb:	8b 54 24 08          	mov    0x8(%esp),%edx
  1054ef:	83 c0 01             	add    $0x1,%eax
  1054f2:	89 54 24 0c          	mov    %edx,0xc(%esp)
  1054f6:	3d 00 00 0f 00       	cmp    $0xf0000,%eax
  1054fb:	0f 85 5f ff ff ff    	jne    105460 <pmem_init+0x110>
    unsigned int n = 1U << order;
  105501:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
  105505:	eb 18                	jmp    10551f <pmem_init+0x1cf>
  105507:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10550e:	00 
  10550f:	90                   	nop
            }
        }

        if (order < 0) {
            // should not happen, but safe fallback
            i++;
  105510:	83 c5 01             	add    $0x1,%ebp
    while (i < VM_USERHI_PI) {
  105513:	81 fd ff ff 0e 00    	cmp    $0xeffff,%ebp
  105519:	0f 87 3d 01 00 00    	ja     10565c <pmem_init+0x30c>
        if (AT[i].perm != 2 || AT[i].allocated != 0) {
  10551f:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  105523:	8d 14 ad 00 00 00 00 	lea    0x0(,%ebp,4),%edx
  10552a:	8d 04 2a             	lea    (%edx,%ebp,1),%eax
  10552d:	8d 34 81             	lea    (%ecx,%eax,4),%esi
  105530:	83 3e 02             	cmpl   $0x2,(%esi)
  105533:	75 db                	jne    105510 <pmem_init+0x1c0>
  105535:	8b 46 04             	mov    0x4(%esi),%eax
  105538:	85 c0                	test   %eax,%eax
  10553a:	75 d4                	jne    105510 <pmem_init+0x1c0>
            if ((i & (size - 1)) != 0) continue;
  10553c:	89 54 24 08          	mov    %edx,0x8(%esp)
        for (order = MAX_ORDER - 1; order >= 0; order--) {
  105540:	b9 0a 00 00 00       	mov    $0xa,%ecx
            if ((i & (size - 1)) != 0) continue;
  105545:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  10554a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  105550:	89 f8                	mov    %edi,%eax
  105552:	d3 e0                	shl    %cl,%eax
  105554:	f7 d0                	not    %eax
  105556:	85 e8                	test   %ebp,%eax
  105558:	75 46                	jne    1055a0 <pmem_init+0x250>
    if (base < VM_USERLO_PI) return 0;
  10555a:	81 fd ff ff 03 00    	cmp    $0x3ffff,%ebp
  105560:	76 3e                	jbe    1055a0 <pmem_init+0x250>
    unsigned int n = 1U << order;
  105562:	b8 01 00 00 00       	mov    $0x1,%eax
  105567:	d3 e0                	shl    %cl,%eax
    if (base + n > VM_USERHI_PI) return 0;
  105569:	01 e8                	add    %ebp,%eax
  10556b:	3d 00 00 0f 00       	cmp    $0xf0000,%eax
  105570:	77 2e                	ja     1055a0 <pmem_init+0x250>
  105572:	8b 54 24 18          	mov    0x18(%esp),%edx
  105576:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105579:	8d 14 82             	lea    (%edx,%eax,4),%edx
  10557c:	89 f0                	mov    %esi,%eax
  10557e:	eb 11                	jmp    105591 <pmem_init+0x241>
        if (AT[pi].allocated != 0) return 0;
  105580:	83 78 04 00          	cmpl   $0x0,0x4(%eax)
  105584:	75 1a                	jne    1055a0 <pmem_init+0x250>
    for (i = 0; i < n; i++) {
  105586:	83 c0 14             	add    $0x14,%eax
  105589:	39 d0                	cmp    %edx,%eax
  10558b:	0f 84 93 00 00 00    	je     105624 <pmem_init+0x2d4>
        if (AT[pi].perm != 2) return 0;
  105591:	83 38 02             	cmpl   $0x2,(%eax)
  105594:	74 ea                	je     105580 <pmem_init+0x230>
  105596:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10559d:	00 
  10559e:	66 90                	xchg   %ax,%ax
        for (order = MAX_ORDER - 1; order >= 0; order--) {
  1055a0:	83 e9 01             	sub    $0x1,%ecx
  1055a3:	73 ab                	jae    105550 <pmem_init+0x200>
  1055a5:	e9 66 ff ff ff       	jmp    105510 <pmem_init+0x1c0>
  1055aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            at_set_perm(i, 0);
  1055b0:	83 ec 08             	sub    $0x8,%esp
  1055b3:	6a 00                	push   $0x0
  1055b5:	50                   	push   %eax
  1055b6:	89 44 24 20          	mov    %eax,0x20(%esp)
  1055ba:	e8 a1 f6 ff ff       	call   104c60 <at_set_perm>
            continue;
  1055bf:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1055c3:	83 c4 10             	add    $0x10,%esp
  1055c6:	05 00 10 00 00       	add    $0x1000,%eax
  1055cb:	89 44 24 08          	mov    %eax,0x8(%esp)
  1055cf:	8b 44 24 10          	mov    0x10(%esp),%eax
  1055d3:	e9 13 ff ff ff       	jmp    1054eb <pmem_init+0x19b>
  1055d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1055df:	00 
  1055e0:	8b 44 24 10          	mov    0x10(%esp),%eax
            at_set_perm(i, 2);   // Normal RAM
  1055e4:	83 ec 08             	sub    $0x8,%esp
  1055e7:	6a 02                	push   $0x2
  1055e9:	50                   	push   %eax
  1055ea:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  1055ee:	e8 6d f6 ff ff       	call   104c60 <at_set_perm>
            at_set_allocated(i, 0);
  1055f3:	5a                   	pop    %edx
  1055f4:	59                   	pop    %ecx
  1055f5:	6a 00                	push   $0x0
  1055f7:	8b 44 24 18          	mov    0x18(%esp),%eax
  1055fb:	50                   	push   %eax
  1055fc:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  105600:	e8 bb f6 ff ff       	call   104cc0 <at_set_allocated>
  105605:	83 c4 10             	add    $0x10,%esp
  105608:	8b 44 24 0c          	mov    0xc(%esp),%eax
  10560c:	e9 da fe ff ff       	jmp    1054eb <pmem_init+0x19b>
  105611:	8b 54 24 0c          	mov    0xc(%esp),%edx
  105615:	81 c2 00 10 00 00    	add    $0x1000,%edx
  10561b:	89 54 24 08          	mov    %edx,0x8(%esp)
  10561f:	e9 b1 fe ff ff       	jmp    1054d5 <pmem_init+0x185>
  105624:	8b 54 24 08          	mov    0x8(%esp),%edx
            continue;
        }

        // add this block head to its order list
        AT[i].order = (unsigned int)order;
  105628:	8b 44 24 18          	mov    0x18(%esp),%eax
        at_list_add((unsigned int)order, i);
  10562c:	83 ec 08             	sub    $0x8,%esp
        AT[i].order = (unsigned int)order;
  10562f:	01 ea                	add    %ebp,%edx
  105631:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
        at_list_add((unsigned int)order, i);
  105635:	55                   	push   %ebp
  105636:	51                   	push   %ecx
  105637:	89 4c 24 18          	mov    %ecx,0x18(%esp)
  10563b:	e8 e0 f6 ff ff       	call   104d20 <at_list_add>

        // skip past the block
        i += (1U << order);
  105640:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  105644:	b8 01 00 00 00       	mov    $0x1,%eax
  105649:	83 c4 10             	add    $0x10,%esp
  10564c:	d3 e0                	shl    %cl,%eax
  10564e:	01 c5                	add    %eax,%ebp
    while (i < VM_USERHI_PI) {
  105650:	81 fd ff ff 0e 00    	cmp    $0xeffff,%ebp
  105656:	0f 86 c3 fe ff ff    	jbe    10551f <pmem_init+0x1cf>
    }
}
  10565c:	83 c4 2c             	add    $0x2c,%esp
  10565f:	5b                   	pop    %ebx
  105660:	5e                   	pop    %esi
  105661:	5f                   	pop    %edi
  105662:	5d                   	pop    %ebp
  105663:	c3                   	ret
    for (i = 0; i < n_entries; i++) {
  105664:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
  10566b:	00 
  10566c:	e9 52 fd ff ff       	jmp    1053c3 <pmem_init+0x73>
  105671:	66 90                	xchg   %ax,%ax
  105673:	66 90                	xchg   %ax,%ax
  105675:	66 90                	xchg   %ax,%ax
  105677:	66 90                	xchg   %ax,%ax
  105679:	66 90                	xchg   %ax,%ax
  10567b:	66 90                	xchg   %ax,%ax
  10567d:	66 90                	xchg   %ax,%ax
  10567f:	90                   	nop

00105680 <MATInit_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATInit_test1()
{
  105680:	57                   	push   %edi
  105681:	56                   	push   %esi
  105682:	31 f6                	xor    %esi,%esi
  105684:	53                   	push   %ebx
  105685:	e8 36 ad ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10568a:	81 c3 6a 79 00 00    	add    $0x796a,%ebx
    int i;
    int nps = get_nps();
  105690:	e8 5b f5 ff ff       	call   104bf0 <get_nps>
  105695:	89 c7                	mov    %eax,%edi
    if (nps <= 1000) {
  105697:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  10569c:	7f 11                	jg     1056af <MATInit_test1+0x2f>
  10569e:	e9 ad 00 00 00       	jmp    105750 <MATInit_test1+0xd0>
  1056a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
        return 1;
    }
    for (i = 0; i < nps; i++) {
  1056a8:	83 c6 01             	add    $0x1,%esi
  1056ab:	39 f7                	cmp    %esi,%edi
  1056ad:	74 51                	je     105700 <MATInit_test1+0x80>
        if (at_is_allocated(i) != 0) {
  1056af:	83 ec 0c             	sub    $0xc,%esp
  1056b2:	56                   	push   %esi
  1056b3:	e8 d8 f5 ff ff       	call   104c90 <at_is_allocated>
  1056b8:	83 c4 10             	add    $0x10,%esp
  1056bb:	85 c0                	test   %eax,%eax
  1056bd:	75 61                	jne    105720 <MATInit_test1+0xa0>
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
            return 1;
        }
        if ((i < VM_USERLO_PI || VM_USERHI_PI <= i) && at_is_norm(i) != 0) {
  1056bf:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  1056c5:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  1056ca:	76 dc                	jbe    1056a8 <MATInit_test1+0x28>
  1056cc:	83 ec 0c             	sub    $0xc,%esp
  1056cf:	56                   	push   %esi
  1056d0:	e8 5b f5 ff ff       	call   104c30 <at_is_norm>
  1056d5:	83 c4 10             	add    $0x10,%esp
  1056d8:	85 c0                	test   %eax,%eax
  1056da:	74 cc                	je     1056a8 <MATInit_test1+0x28>
            dprintf("test 1.3 failed (i = %d): (%d != 0)\n", i, at_is_norm(i));
  1056dc:	83 ec 0c             	sub    $0xc,%esp
  1056df:	56                   	push   %esi
  1056e0:	e8 4b f5 ff ff       	call   104c30 <at_is_norm>
  1056e5:	83 c4 0c             	add    $0xc,%esp
  1056e8:	50                   	push   %eax
  1056e9:	8d 83 a8 bd ff ff    	lea    -0x4258(%ebx),%eax
  1056ef:	56                   	push   %esi
  1056f0:	50                   	push   %eax
  1056f1:	e8 76 d6 ff ff       	call   102d6c <dprintf>
            return 1;
  1056f6:	83 c4 10             	add    $0x10,%esp
  1056f9:	eb 42                	jmp    10573d <MATInit_test1+0xbd>
  1056fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        }
    }
    dprintf("test 1 passed.\n");
  105700:	83 ec 0c             	sub    $0xc,%esp
  105703:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  105709:	50                   	push   %eax
  10570a:	e8 5d d6 ff ff       	call   102d6c <dprintf>
    return 0;
  10570f:	83 c4 10             	add    $0x10,%esp
  105712:	31 c0                	xor    %eax,%eax
}
  105714:	5b                   	pop    %ebx
  105715:	5e                   	pop    %esi
  105716:	5f                   	pop    %edi
  105717:	c3                   	ret
  105718:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10571f:	00 
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
  105720:	83 ec 0c             	sub    $0xc,%esp
  105723:	56                   	push   %esi
  105724:	e8 67 f5 ff ff       	call   104c90 <at_is_allocated>
  105729:	83 c4 0c             	add    $0xc,%esp
  10572c:	50                   	push   %eax
  10572d:	8d 83 80 bd ff ff    	lea    -0x4280(%ebx),%eax
  105733:	56                   	push   %esi
  105734:	50                   	push   %eax
  105735:	e8 32 d6 ff ff       	call   102d6c <dprintf>
            return 1;
  10573a:	83 c4 10             	add    $0x10,%esp
}
  10573d:	5b                   	pop    %ebx
        return 1;
  10573e:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105743:	5e                   	pop    %esi
  105744:	5f                   	pop    %edi
  105745:	c3                   	ret
  105746:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10574d:	00 
  10574e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
  105750:	83 ec 08             	sub    $0x8,%esp
  105753:	50                   	push   %eax
  105754:	8d 83 60 bd ff ff    	lea    -0x42a0(%ebx),%eax
  10575a:	50                   	push   %eax
  10575b:	e8 0c d6 ff ff       	call   102d6c <dprintf>
        return 1;
  105760:	83 c4 10             	add    $0x10,%esp
  105763:	eb d8                	jmp    10573d <MATInit_test1+0xbd>
  105765:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10576c:	00 
  10576d:	8d 76 00             	lea    0x0(%esi),%esi

00105770 <MATInit_test_buddy>:

// Check if the Buddy System was populated during pmem_init
int MATInit_test_buddy()
{
  105770:	56                   	push   %esi
  105771:	53                   	push   %ebx
  105772:	e8 49 ac ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105777:	81 c3 7d 78 00 00    	add    $0x787d,%ebx
  10577d:	83 ec 10             	sub    $0x10,%esp
    int head = get_free_list_head(0);
  105780:	6a 00                	push   $0x0
  105782:	e8 69 f5 ff ff       	call   104cf0 <get_free_list_head>
    if (head == -1) {
  105787:	83 c4 10             	add    $0x10,%esp
  10578a:	83 f8 ff             	cmp    $0xffffffff,%eax
  10578d:	74 51                	je     1057e0 <MATInit_test_buddy+0x70>
        dprintf("Buddy Init Test failed: Order 0 free list is empty!\n");
        return 1;
    }
    
    // Verify the head is actually a normal page
    if (at_is_norm(head) != 1) {
  10578f:	83 ec 0c             	sub    $0xc,%esp
  105792:	89 c6                	mov    %eax,%esi
  105794:	50                   	push   %eax
  105795:	e8 96 f4 ff ff       	call   104c30 <at_is_norm>
  10579a:	83 c4 10             	add    $0x10,%esp
  10579d:	83 f8 01             	cmp    $0x1,%eax
  1057a0:	74 1e                	je     1057c0 <MATInit_test_buddy+0x50>
        dprintf("Buddy Init Test failed: Head page %d is not Normal RAM\n", head);
  1057a2:	83 ec 08             	sub    $0x8,%esp
  1057a5:	8d 83 08 be ff ff    	lea    -0x41f8(%ebx),%eax
  1057ab:	56                   	push   %esi
  1057ac:	50                   	push   %eax
  1057ad:	e8 ba d5 ff ff       	call   102d6c <dprintf>
        return 1;
  1057b2:	83 c4 10             	add    $0x10,%esp
    }

    dprintf("Buddy Init test passed.\n");
    return 0;
}
  1057b5:	83 c4 04             	add    $0x4,%esp
        return 1;
  1057b8:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1057bd:	5b                   	pop    %ebx
  1057be:	5e                   	pop    %esi
  1057bf:	c3                   	ret
    dprintf("Buddy Init test passed.\n");
  1057c0:	83 ec 0c             	sub    $0xc,%esp
  1057c3:	8d 83 db b8 ff ff    	lea    -0x4725(%ebx),%eax
  1057c9:	50                   	push   %eax
  1057ca:	e8 9d d5 ff ff       	call   102d6c <dprintf>
    return 0;
  1057cf:	83 c4 10             	add    $0x10,%esp
  1057d2:	31 c0                	xor    %eax,%eax
}
  1057d4:	83 c4 04             	add    $0x4,%esp
  1057d7:	5b                   	pop    %ebx
  1057d8:	5e                   	pop    %esi
  1057d9:	c3                   	ret
  1057da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("Buddy Init Test failed: Order 0 free list is empty!\n");
  1057e0:	83 ec 0c             	sub    $0xc,%esp
  1057e3:	8d 83 d0 bd ff ff    	lea    -0x4230(%ebx),%eax
  1057e9:	50                   	push   %eax
  1057ea:	e8 7d d5 ff ff       	call   102d6c <dprintf>
        return 1;
  1057ef:	83 c4 10             	add    $0x10,%esp
  1057f2:	eb c1                	jmp    1057b5 <MATInit_test_buddy+0x45>
  1057f4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1057fb:	00 
  1057fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00105800 <test_MATInit>:

int test_MATInit()
{
  105800:	53                   	push   %ebx
  105801:	83 ec 08             	sub    $0x8,%esp
    return MATInit_test1() + MATInit_test_buddy();
  105804:	e8 77 fe ff ff       	call   105680 <MATInit_test1>
  105809:	89 c3                	mov    %eax,%ebx
  10580b:	e8 60 ff ff ff       	call   105770 <MATInit_test_buddy>
}
  105810:	83 c4 08             	add    $0x8,%esp
    return MATInit_test1() + MATInit_test_buddy();
  105813:	01 d8                	add    %ebx,%eax
}
  105815:	5b                   	pop    %ebx
  105816:	c3                   	ret
  105817:	66 90                	xchg   %ax,%ax
  105819:	66 90                	xchg   %ax,%ax
  10581b:	66 90                	xchg   %ax,%ax
  10581d:	66 90                	xchg   %ax,%ax
  10581f:	90                   	nop

00105820 <palloc_order>:
/*
 * Standard buddy-style allocation:
 * - find smallest k >= order with non-empty free_list[k]
 * - pop block, split down to 'order'
 */
int palloc_order(unsigned int order) {
  105820:	55                   	push   %ebp
  105821:	57                   	push   %edi
  105822:	56                   	push   %esi
  105823:	53                   	push   %ebx
  105824:	e8 97 ab ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105829:	81 c3 cb 77 00 00    	add    $0x77cb,%ebx
  10582f:	83 ec 1c             	sub    $0x1c,%esp
    if (order >= MAX_ORDER) return -1;
  105832:	83 7c 24 30 0a       	cmpl   $0xa,0x30(%esp)
  105837:	0f 87 33 01 00 00    	ja     105970 <palloc_order+0x150>

    unsigned int k = order;
  10583d:	8b 7c 24 30          	mov    0x30(%esp),%edi
  105841:	eb 11                	jmp    105854 <palloc_order+0x34>
  105843:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    while (k < MAX_ORDER && get_free_list_head(k) == -1) {
        k++;
  105848:	83 c7 01             	add    $0x1,%edi
    while (k < MAX_ORDER && get_free_list_head(k) == -1) {
  10584b:	83 ff 0b             	cmp    $0xb,%edi
  10584e:	0f 84 1c 01 00 00    	je     105970 <palloc_order+0x150>
  105854:	83 ec 0c             	sub    $0xc,%esp
  105857:	57                   	push   %edi
  105858:	e8 93 f4 ff ff       	call   104cf0 <get_free_list_head>
  10585d:	83 c4 10             	add    $0x10,%esp
  105860:	83 f8 ff             	cmp    $0xffffffff,%eax
  105863:	74 e3                	je     105848 <palloc_order+0x28>
    }
    if (k >= MAX_ORDER) return -1;

    int pindex = get_free_list_head(k);
  105865:	83 ec 0c             	sub    $0xc,%esp
  105868:	57                   	push   %edi
  105869:	e8 82 f4 ff ff       	call   104cf0 <get_free_list_head>
  10586e:	89 c6                	mov    %eax,%esi
    at_list_remove(k, pindex);
  105870:	58                   	pop    %eax
  105871:	5a                   	pop    %edx
  105872:	56                   	push   %esi
  105873:	57                   	push   %edi
  105874:	e8 37 f5 ff ff       	call   104db0 <at_list_remove>

    // Allocate the block head

    //New added

    unsigned int size = 1U << order;
  105879:	0f b6 4c 24 40       	movzbl 0x40(%esp),%ecx
  10587e:	b8 01 00 00 00       	mov    $0x1,%eax
  105883:	d3 e0                	shl    %cl,%eax
  105885:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  105889:	c7 c0 40 9c 15 00    	mov    $0x159c40,%eax
    while (k > order) {
  10588f:	83 c4 10             	add    $0x10,%esp
  105892:	89 44 24 08          	mov    %eax,0x8(%esp)
  105896:	39 7c 24 30          	cmp    %edi,0x30(%esp)
  10589a:	73 3b                	jae    1058d7 <palloc_order+0xb7>
  10589c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        k--;
  1058a0:	83 ef 01             	sub    $0x1,%edi
        int buddy = pindex + (1 << k);
  1058a3:	bd 01 00 00 00       	mov    $0x1,%ebp
        AT[buddy].order = k;
  1058a8:	8b 54 24 08          	mov    0x8(%esp),%edx
        at_set_allocated(buddy, 0);
  1058ac:	83 ec 08             	sub    $0x8,%esp
        int buddy = pindex + (1 << k);
  1058af:	89 f9                	mov    %edi,%ecx
  1058b1:	d3 e5                	shl    %cl,%ebp
  1058b3:	01 f5                	add    %esi,%ebp
        AT[buddy].order = k;
  1058b5:	8d 44 ad 00          	lea    0x0(%ebp,%ebp,4),%eax
  1058b9:	89 7c 82 08          	mov    %edi,0x8(%edx,%eax,4)
        at_set_allocated(buddy, 0);
  1058bd:	6a 00                	push   $0x0
  1058bf:	55                   	push   %ebp
  1058c0:	e8 fb f3 ff ff       	call   104cc0 <at_set_allocated>
        at_list_add(k, buddy);
  1058c5:	59                   	pop    %ecx
  1058c6:	58                   	pop    %eax
  1058c7:	55                   	push   %ebp
  1058c8:	57                   	push   %edi
  1058c9:	e8 52 f4 ff ff       	call   104d20 <at_list_add>
    while (k > order) {
  1058ce:	83 c4 10             	add    $0x10,%esp
  1058d1:	39 7c 24 30          	cmp    %edi,0x30(%esp)
  1058d5:	75 c9                	jne    1058a0 <palloc_order+0x80>
  1058d7:	8b 6c 24 0c          	mov    0xc(%esp),%ebp

    for (unsigned int i = 0; i < size; i++) {
  1058db:	31 ff                	xor    %edi,%edi
  1058dd:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_allocated(pindex + i, 1);
  1058e0:	83 ec 08             	sub    $0x8,%esp
  1058e3:	8d 04 3e             	lea    (%esi,%edi,1),%eax
    for (unsigned int i = 0; i < size; i++) {
  1058e6:	83 c7 01             	add    $0x1,%edi
    at_set_allocated(pindex + i, 1);
  1058e9:	6a 01                	push   $0x1
  1058eb:	50                   	push   %eax
  1058ec:	e8 cf f3 ff ff       	call   104cc0 <at_set_allocated>
    for (unsigned int i = 0; i < size; i++) {
  1058f1:	83 c4 10             	add    $0x10,%esp
  1058f4:	39 ef                	cmp    %ebp,%edi
  1058f6:	72 e8                	jb     1058e0 <palloc_order+0xc0>
    }

    AT[pindex].order = order;
  1058f8:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  1058fc:	8b 54 24 30          	mov    0x30(%esp),%edx
  105900:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  105903:	c1 e0 02             	shl    $0x2,%eax
  105906:	89 54 01 08          	mov    %edx,0x8(%ecx,%eax,1)

    /* Clean internal metadata */
    for (unsigned int i = 1; i < size; i++) {
  10590a:	85 d2                	test   %edx,%edx
  10590c:	74 46                	je     105954 <palloc_order+0x134>
  10590e:	8b 54 24 0c          	mov    0xc(%esp),%edx
  105912:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  105916:	01 f2                	add    %esi,%edx
  105918:	8d 44 01 1c          	lea    0x1c(%ecx,%eax,1),%eax
  10591c:	8d 14 92             	lea    (%edx,%edx,4),%edx
  10591f:	8d 54 91 08          	lea    0x8(%ecx,%edx,4),%edx
  105923:	89 d1                	mov    %edx,%ecx
  105925:	29 c1                	sub    %eax,%ecx
  105927:	83 e1 04             	and    $0x4,%ecx
  10592a:	74 14                	je     105940 <palloc_order+0x120>
    AT[pindex + i].order = 0;
  10592c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (unsigned int i = 1; i < size; i++) {
  105932:	83 c0 14             	add    $0x14,%eax
  105935:	39 d0                	cmp    %edx,%eax
  105937:	74 1b                	je     105954 <palloc_order+0x134>
  105939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    AT[pindex + i].order = 0;
  105940:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (unsigned int i = 1; i < size; i++) {
  105946:	83 c0 28             	add    $0x28,%eax
    AT[pindex + i].order = 0;
  105949:	c7 40 ec 00 00 00 00 	movl   $0x0,-0x14(%eax)
    for (unsigned int i = 1; i < size; i++) {
  105950:	39 d0                	cmp    %edx,%eax
  105952:	75 ec                	jne    105940 <palloc_order+0x120>
    }


    at_set_allocated(pindex, 1);
  105954:	83 ec 08             	sub    $0x8,%esp
  105957:	6a 01                	push   $0x1
  105959:	56                   	push   %esi
  10595a:	e8 61 f3 ff ff       	call   104cc0 <at_set_allocated>

    return pindex;
  10595f:	83 c4 10             	add    $0x10,%esp
}
  105962:	83 c4 1c             	add    $0x1c,%esp
  105965:	89 f0                	mov    %esi,%eax
  105967:	5b                   	pop    %ebx
  105968:	5e                   	pop    %esi
  105969:	5f                   	pop    %edi
  10596a:	5d                   	pop    %ebp
  10596b:	c3                   	ret
  10596c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if (order >= MAX_ORDER) return -1;
  105970:	be ff ff ff ff       	mov    $0xffffffff,%esi
  105975:	eb eb                	jmp    105962 <palloc_order+0x142>
  105977:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10597e:	00 
  10597f:	90                   	nop

00105980 <palloc>:

unsigned int palloc(void) {
  105980:	83 ec 18             	sub    $0x18,%esp
    int res = palloc_order(0);
  105983:	6a 00                	push   $0x0
  105985:	e8 96 fe ff ff       	call   105820 <palloc_order>
    if (res == -1) return 0;
  10598a:	31 d2                	xor    %edx,%edx
  10598c:	83 f8 ff             	cmp    $0xffffffff,%eax
  10598f:	0f 44 c2             	cmove  %edx,%eax
    return (unsigned int)res;
}
  105992:	83 c4 1c             	add    $0x1c,%esp
  105995:	c3                   	ret
  105996:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10599d:	00 
  10599e:	66 90                	xchg   %ax,%ax

001059a0 <pfree_order>:

/*
 * Free + merge (buddy coalescing)
 * FIX: must clear allocated even when we merge, otherwise MATOp test 1.4 fails.
 */
void pfree_order(unsigned int pindex) { //changed
  1059a0:	55                   	push   %ebp
  1059a1:	57                   	push   %edi
  1059a2:	56                   	push   %esi
  1059a3:	53                   	push   %ebx
  1059a4:	e8 17 aa ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1059a9:	81 c3 4b 76 00 00    	add    $0x764b,%ebx
  1059af:	83 ec 1c             	sub    $0x1c,%esp
  1059b2:	8b 54 24 30          	mov    0x30(%esp),%edx

    unsigned int order = AT[pindex].order;
  1059b6:	c7 c0 40 9c 15 00    	mov    $0x159c40,%eax
  1059bc:	89 c1                	mov    %eax,%ecx
  1059be:	89 44 24 0c          	mov    %eax,0xc(%esp)
  1059c2:	8d 04 92             	lea    (%edx,%edx,4),%eax
  1059c5:	8b 6c 81 08          	mov    0x8(%ecx,%eax,4),%ebp

    while (order < MAX_ORDER - 1) {
  1059c9:	83 fd 09             	cmp    $0x9,%ebp
  1059cc:	0f 87 f1 00 00 00    	ja     105ac3 <pfree_order+0x123>
  1059d2:	89 e9                	mov    %ebp,%ecx
  1059d4:	89 d5                	mov    %edx,%ebp
  1059d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1059dd:	00 
  1059de:	66 90                	xchg   %ax,%ax

        unsigned int size = 1U << order;
  1059e0:	b8 01 00 00 00       	mov    $0x1,%eax
  1059e5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  1059e9:	89 ee                	mov    %ebp,%esi
  1059eb:	d3 e0                	shl    %cl,%eax
  1059ed:	89 44 24 04          	mov    %eax,0x4(%esp)
  1059f1:	8d 3c 28             	lea    (%eax,%ebp,1),%edi
  1059f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

        // Clear allocation bits for this block
        for (unsigned int i = 0; i < size; i++) {
            at_set_allocated(pindex + i, 0);
  1059f8:	83 ec 08             	sub    $0x8,%esp
  1059fb:	6a 00                	push   $0x0
  1059fd:	56                   	push   %esi
        for (unsigned int i = 0; i < size; i++) {
  1059fe:	83 c6 01             	add    $0x1,%esi
            at_set_allocated(pindex + i, 0);
  105a01:	e8 ba f2 ff ff       	call   104cc0 <at_set_allocated>
        for (unsigned int i = 0; i < size; i++) {
  105a06:	83 c4 10             	add    $0x10,%esp
  105a09:	39 fe                	cmp    %edi,%esi
  105a0b:	75 eb                	jne    1059f8 <pfree_order+0x58>
        }

        unsigned int buddy_idx = pindex ^ size;
  105a0d:	8b 44 24 04          	mov    0x4(%esp),%eax
  105a11:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  105a15:	31 e8                	xor    %ebp,%eax
  105a17:	89 c6                	mov    %eax,%esi

        // Check if buddy can merge
        if (buddy_idx < VM_USERLO_PI ||
  105a19:	8d 80 00 00 fc ff    	lea    -0x40000(%eax),%eax
  105a1f:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105a24:	77 63                	ja     105a89 <pfree_order+0xe9>
            buddy_idx >= VM_USERHI_PI ||
  105a26:	8b 54 24 0c          	mov    0xc(%esp),%edx
            AT[buddy_idx].order != order ||
  105a2a:	8d 04 b6             	lea    (%esi,%esi,4),%eax
            buddy_idx >= VM_USERHI_PI ||
  105a2d:	39 4c 82 08          	cmp    %ecx,0x8(%edx,%eax,4)
  105a31:	75 56                	jne    105a89 <pfree_order+0xe9>
  105a33:	89 4c 24 04          	mov    %ecx,0x4(%esp)
            at_is_allocated(buddy_idx) != 0) {
  105a37:	83 ec 0c             	sub    $0xc,%esp
  105a3a:	56                   	push   %esi
  105a3b:	e8 50 f2 ff ff       	call   104c90 <at_is_allocated>
            AT[buddy_idx].order != order ||
  105a40:	83 c4 10             	add    $0x10,%esp
  105a43:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  105a47:	85 c0                	test   %eax,%eax
  105a49:	75 3e                	jne    105a89 <pfree_order+0xe9>
            break;
        }

        // Remove buddy from freelist
        at_list_remove(order, buddy_idx);
  105a4b:	83 ec 08             	sub    $0x8,%esp
  105a4e:	56                   	push   %esi
  105a4f:	51                   	push   %ecx
  105a50:	89 4c 24 14          	mov    %ecx,0x14(%esp)
  105a54:	e8 57 f3 ff ff       	call   104db0 <at_list_remove>

        // Choose lower address as new base
        if (buddy_idx < pindex) {
  105a59:	39 f5                	cmp    %esi,%ebp
            pindex = buddy_idx;
        }

        order++;
  105a5b:	8b 4c 24 14          	mov    0x14(%esp),%ecx
        AT[pindex].order = order;
  105a5f:	8b 54 24 1c          	mov    0x1c(%esp),%edx
        if (buddy_idx < pindex) {
  105a63:	0f 47 ee             	cmova  %esi,%ebp
    while (order < MAX_ORDER - 1) {
  105a66:	83 c4 10             	add    $0x10,%esp
        order++;
  105a69:	83 c1 01             	add    $0x1,%ecx
        AT[pindex].order = order;
  105a6c:	8d 44 ad 00          	lea    0x0(%ebp,%ebp,4),%eax
  105a70:	89 4c 82 08          	mov    %ecx,0x8(%edx,%eax,4)
    while (order < MAX_ORDER - 1) {
  105a74:	83 f9 0a             	cmp    $0xa,%ecx
  105a77:	0f 85 63 ff ff ff    	jne    1059e0 <pfree_order+0x40>
  105a7d:	89 ea                	mov    %ebp,%edx
  105a7f:	89 cd                	mov    %ecx,%ebp
  105a81:	8d ba 00 04 00 00    	lea    0x400(%edx),%edi
  105a87:	eb 04                	jmp    105a8d <pfree_order+0xed>
  105a89:	89 ea                	mov    %ebp,%edx
  105a8b:	89 cd                	mov    %ecx,%ebp
  105a8d:	89 54 24 30          	mov    %edx,0x30(%esp)
  105a91:	89 d6                	mov    %edx,%esi
  105a93:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    }

    // Finally clear allocation bits for final merged block
    unsigned int final_size = 1U << order;
    for (unsigned int i = 0; i < final_size; i++) {
        at_set_allocated(pindex + i, 0);
  105a98:	83 ec 08             	sub    $0x8,%esp
  105a9b:	6a 00                	push   $0x0
  105a9d:	56                   	push   %esi
    for (unsigned int i = 0; i < final_size; i++) {
  105a9e:	83 c6 01             	add    $0x1,%esi
        at_set_allocated(pindex + i, 0);
  105aa1:	e8 1a f2 ff ff       	call   104cc0 <at_set_allocated>
    for (unsigned int i = 0; i < final_size; i++) {
  105aa6:	83 c4 10             	add    $0x10,%esp
  105aa9:	39 fe                	cmp    %edi,%esi
  105aab:	75 eb                	jne    105a98 <pfree_order+0xf8>
    }

    at_list_add(order, pindex);
  105aad:	8b 54 24 30          	mov    0x30(%esp),%edx
  105ab1:	83 ec 08             	sub    $0x8,%esp
  105ab4:	52                   	push   %edx
  105ab5:	55                   	push   %ebp
  105ab6:	e8 65 f2 ff ff       	call   104d20 <at_list_add>
}
  105abb:	83 c4 2c             	add    $0x2c,%esp
  105abe:	5b                   	pop    %ebx
  105abf:	5e                   	pop    %esi
  105ac0:	5f                   	pop    %edi
  105ac1:	5d                   	pop    %ebp
  105ac2:	c3                   	ret
    unsigned int final_size = 1U << order;
  105ac3:	b8 01 00 00 00       	mov    $0x1,%eax
  105ac8:	89 e9                	mov    %ebp,%ecx
  105aca:	d3 e0                	shl    %cl,%eax
  105acc:	8d 3c 10             	lea    (%eax,%edx,1),%edi
  105acf:	eb bc                	jmp    105a8d <pfree_order+0xed>
  105ad1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105ad8:	00 
  105ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105ae0 <pfree>:


void pfree(unsigned int pindex) {
  105ae0:	56                   	push   %esi
  105ae1:	53                   	push   %ebx
  105ae2:	e8 d9 a8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105ae7:	81 c3 0d 75 00 00    	add    $0x750d,%ebx
  105aed:	83 ec 04             	sub    $0x4,%esp
  105af0:	8b 74 24 10          	mov    0x10(%esp),%esi
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) return;
  105af4:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  105afa:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105aff:	76 0f                	jbe    105b10 <pfree+0x30>
    if (at_is_allocated(pindex) == 0) return;

    pfree_order(pindex);
}
  105b01:	83 c4 04             	add    $0x4,%esp
  105b04:	5b                   	pop    %ebx
  105b05:	5e                   	pop    %esi
  105b06:	c3                   	ret
  105b07:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105b0e:	00 
  105b0f:	90                   	nop
    if (at_is_allocated(pindex) == 0) return;
  105b10:	83 ec 0c             	sub    $0xc,%esp
  105b13:	56                   	push   %esi
  105b14:	e8 77 f1 ff ff       	call   104c90 <at_is_allocated>
  105b19:	83 c4 10             	add    $0x10,%esp
  105b1c:	85 c0                	test   %eax,%eax
  105b1e:	74 e1                	je     105b01 <pfree+0x21>
    pfree_order(pindex);
  105b20:	89 74 24 10          	mov    %esi,0x10(%esp)
}
  105b24:	83 c4 04             	add    $0x4,%esp
  105b27:	5b                   	pop    %ebx
  105b28:	5e                   	pop    %esi
    pfree_order(pindex);
  105b29:	e9 72 fe ff ff       	jmp    1059a0 <pfree_order>
  105b2e:	66 90                	xchg   %ax,%ax

00105b30 <palloc_superpage>:

//Superpage allocation

unsigned int palloc_superpage(void) {
  105b30:	83 ec 18             	sub    $0x18,%esp
    int res = palloc_order(SUPERPAGE_ORDER);
  105b33:	6a 0a                	push   $0xa
  105b35:	e8 e6 fc ff ff       	call   105820 <palloc_order>
    if (res == -1) {
  105b3a:	31 d2                	xor    %edx,%edx
  105b3c:	83 f8 ff             	cmp    $0xffffffff,%eax
  105b3f:	0f 44 c2             	cmove  %edx,%eax
        return 0;
    }
    return (unsigned int)res;
}
  105b42:	83 c4 1c             	add    $0x1c,%esp
  105b45:	c3                   	ret
  105b46:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105b4d:	00 
  105b4e:	66 90                	xchg   %ax,%ax

00105b50 <pfree_superpage>:

void pfree_superpage(unsigned int pindex) {

    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) {
  105b50:	e8 e8 f2 ff ff       	call   104e3d <__x86.get_pc_thunk.cx>
  105b55:	81 c1 9f 74 00 00    	add    $0x749f,%ecx
void pfree_superpage(unsigned int pindex) {
  105b5b:	8b 54 24 04          	mov    0x4(%esp),%edx
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) {
  105b5f:	8d 82 00 00 fc ff    	lea    -0x40000(%edx),%eax
  105b65:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105b6a:	77 12                	ja     105b7e <pfree_superpage+0x2e>
        return;
    }

    if (AT[pindex].order != SUPERPAGE_ORDER) {
  105b6c:	8d 04 92             	lea    (%edx,%edx,4),%eax
  105b6f:	c1 e0 02             	shl    $0x2,%eax
  105b72:	81 c0 40 9c 15 00    	add    $0x159c40,%eax
  105b78:	83 78 08 0a          	cmpl   $0xa,0x8(%eax)
  105b7c:	74 02                	je     105b80 <pfree_superpage+0x30>
        return;   // not a superpage head
    }

    pfree_order(pindex);
}
  105b7e:	c3                   	ret
  105b7f:	90                   	nop
    pfree_order(pindex);
  105b80:	89 54 24 04          	mov    %edx,0x4(%esp)
  105b84:	e9 17 fe ff ff       	jmp    1059a0 <pfree_order>
  105b89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105b90 <is_superpage_aligned>:


int is_superpage_aligned(unsigned int pindex) {
    unsigned int pages = 1U << SUPERPAGE_ORDER;
    return (pindex & (pages - 1)) == 0;
  105b90:	31 c0                	xor    %eax,%eax
  105b92:	66 f7 44 24 04 ff 03 	testw  $0x3ff,0x4(%esp)
  105b99:	0f 94 c0             	sete   %al
}
  105b9c:	c3                   	ret
  105b9d:	66 90                	xchg   %ax,%ax
  105b9f:	90                   	nop

00105ba0 <MATOp_test1>:
#define SUPERPAGE_ORDER 10

// #define SUPERPAGE_ORDER 9

int MATOp_test1()
{
  105ba0:	56                   	push   %esi
  105ba1:	53                   	push   %ebx
  105ba2:	e8 19 a8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105ba7:	81 c3 4d 74 00 00    	add    $0x744d,%ebx
  105bad:	83 ec 04             	sub    $0x4,%esp
    int page_index = palloc();
  105bb0:	e8 cb fd ff ff       	call   105980 <palloc>
  105bb5:	89 c6                	mov    %eax,%esi
    if (page_index < VM_USERLO_PI || VM_USERHI_PI <= page_index) {
  105bb7:	2d 00 00 04 00       	sub    $0x40000,%eax
  105bbc:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105bc1:	0f 87 91 00 00 00    	ja     105c58 <MATOp_test1+0xb8>
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
  105bc7:	83 ec 0c             	sub    $0xc,%esp
  105bca:	56                   	push   %esi
  105bcb:	e8 60 f0 ff ff       	call   104c30 <at_is_norm>
  105bd0:	83 c4 10             	add    $0x10,%esp
  105bd3:	83 f8 01             	cmp    $0x1,%eax
  105bd6:	74 38                	je     105c10 <MATOp_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
  105bd8:	83 ec 0c             	sub    $0xc,%esp
  105bdb:	56                   	push   %esi
  105bdc:	e8 4f f0 ff ff       	call   104c30 <at_is_norm>
  105be1:	5a                   	pop    %edx
  105be2:	59                   	pop    %ecx
  105be3:	50                   	push   %eax
  105be4:	8d 83 f4 b8 ff ff    	lea    -0x470c(%ebx),%eax
  105bea:	50                   	push   %eax
  105beb:	e8 7c d1 ff ff       	call   102d6c <dprintf>
        pfree(page_index);
  105bf0:	89 34 24             	mov    %esi,(%esp)
  105bf3:	e8 e8 fe ff ff       	call   105ae0 <pfree>
        return 1;
  105bf8:	83 c4 10             	add    $0x10,%esp
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  105bfb:	83 c4 04             	add    $0x4,%esp
        return 1;
  105bfe:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105c03:	5b                   	pop    %ebx
  105c04:	5e                   	pop    %esi
  105c05:	c3                   	ret
  105c06:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105c0d:	00 
  105c0e:	66 90                	xchg   %ax,%ax
    if (at_is_allocated(page_index) != 1) {
  105c10:	83 ec 0c             	sub    $0xc,%esp
  105c13:	56                   	push   %esi
  105c14:	e8 77 f0 ff ff       	call   104c90 <at_is_allocated>
  105c19:	83 c4 10             	add    $0x10,%esp
  105c1c:	83 f8 01             	cmp    $0x1,%eax
  105c1f:	75 47                	jne    105c68 <MATOp_test1+0xc8>
    pfree(page_index);
  105c21:	83 ec 0c             	sub    $0xc,%esp
  105c24:	56                   	push   %esi
  105c25:	e8 b6 fe ff ff       	call   105ae0 <pfree>
    if (at_is_allocated(page_index) != 0) {
  105c2a:	89 34 24             	mov    %esi,(%esp)
  105c2d:	e8 5e f0 ff ff       	call   104c90 <at_is_allocated>
  105c32:	83 c4 10             	add    $0x10,%esp
  105c35:	85 c0                	test   %eax,%eax
  105c37:	75 47                	jne    105c80 <MATOp_test1+0xe0>
    dprintf("test 1 passed.\n");
  105c39:	83 ec 0c             	sub    $0xc,%esp
  105c3c:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  105c42:	50                   	push   %eax
  105c43:	e8 24 d1 ff ff       	call   102d6c <dprintf>
    return 0;
  105c48:	83 c4 10             	add    $0x10,%esp
  105c4b:	31 c0                	xor    %eax,%eax
}
  105c4d:	83 c4 04             	add    $0x4,%esp
  105c50:	5b                   	pop    %ebx
  105c51:	5e                   	pop    %esi
  105c52:	c3                   	ret
  105c53:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
  105c58:	83 ec 04             	sub    $0x4,%esp
  105c5b:	8d 83 40 be ff ff    	lea    -0x41c0(%ebx),%eax
  105c61:	56                   	push   %esi
  105c62:	56                   	push   %esi
  105c63:	eb 85                	jmp    105bea <MATOp_test1+0x4a>
  105c65:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
  105c68:	83 ec 0c             	sub    $0xc,%esp
  105c6b:	56                   	push   %esi
  105c6c:	e8 1f f0 ff ff       	call   104c90 <at_is_allocated>
  105c71:	5a                   	pop    %edx
  105c72:	59                   	pop    %ecx
  105c73:	50                   	push   %eax
  105c74:	8d 83 10 b9 ff ff    	lea    -0x46f0(%ebx),%eax
  105c7a:	e9 6b ff ff ff       	jmp    105bea <MATOp_test1+0x4a>
  105c7f:	90                   	nop
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
  105c80:	83 ec 0c             	sub    $0xc,%esp
  105c83:	56                   	push   %esi
  105c84:	e8 07 f0 ff ff       	call   104c90 <at_is_allocated>
  105c89:	5a                   	pop    %edx
  105c8a:	59                   	pop    %ecx
  105c8b:	50                   	push   %eax
  105c8c:	8d 83 2c b9 ff ff    	lea    -0x46d4(%ebx),%eax
  105c92:	50                   	push   %eax
  105c93:	e8 d4 d0 ff ff       	call   102d6c <dprintf>
        return 1;
  105c98:	83 c4 10             	add    $0x10,%esp
  105c9b:	e9 5b ff ff ff       	jmp    105bfb <MATOp_test1+0x5b>

00105ca0 <MATOp_test_own>:

// Ownership test to verify buddy system contiguous properties
int MATOp_test_own()
{
  105ca0:	53                   	push   %ebx
  105ca1:	e8 1a a7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105ca6:	81 c3 4e 73 00 00    	add    $0x734e,%ebx
  105cac:	83 ec 14             	sub    $0x14,%esp
    dprintf("Testing buddy contiguous allocation (Order 2)...\n");
  105caf:	8d 83 7c be ff ff    	lea    -0x4184(%ebx),%eax
  105cb5:	50                   	push   %eax
  105cb6:	e8 b1 d0 ff ff       	call   102d6c <dprintf>
    int order = 2;
    int pindex = palloc_order(order); // You'll need to add this to your export.h or export it
  105cbb:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  105cc2:	e8 59 fb ff ff       	call   105820 <palloc_order>
    
    if (pindex <= 0) {
  105cc7:	83 c4 10             	add    $0x10,%esp
  105cca:	85 c0                	test   %eax,%eax
  105ccc:	7e 62                	jle    105d30 <MATOp_test_own+0x90>
        dprintf("Buddy allocation failed.\n");
        return 1;
    }

    // Accessing AT[pindex].order now works because of the extern struct ATStruct AT[]
    if (AT[pindex].order != order) {
  105cce:	c7 c1 40 9c 15 00    	mov    $0x159c40,%ecx
  105cd4:	8d 14 80             	lea    (%eax,%eax,4),%edx
  105cd7:	8d 14 91             	lea    (%ecx,%edx,4),%edx
  105cda:	8b 52 08             	mov    0x8(%edx),%edx
  105cdd:	83 fa 02             	cmp    $0x2,%edx
  105ce0:	74 26                	je     105d08 <MATOp_test_own+0x68>
        dprintf("test own failed: Order mismatch. Expected %d, got %d\n", order, AT[pindex].order);
  105ce2:	83 ec 04             	sub    $0x4,%esp
  105ce5:	8d 83 b0 be ff ff    	lea    -0x4150(%ebx),%eax
  105ceb:	52                   	push   %edx
  105cec:	6a 02                	push   $0x2
  105cee:	50                   	push   %eax
  105cef:	e8 78 d0 ff ff       	call   102d6c <dprintf>
        return 1;
  105cf4:	83 c4 10             	add    $0x10,%esp
    }

    pfree(pindex);
    dprintf("Buddy contiguous test passed.\n");
    return 0;
}
  105cf7:	83 c4 08             	add    $0x8,%esp
        return 1;
  105cfa:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105cff:	5b                   	pop    %ebx
  105d00:	c3                   	ret
  105d01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    pfree(pindex);
  105d08:	83 ec 0c             	sub    $0xc,%esp
  105d0b:	50                   	push   %eax
  105d0c:	e8 cf fd ff ff       	call   105ae0 <pfree>
    dprintf("Buddy contiguous test passed.\n");
  105d11:	8d 83 e8 be ff ff    	lea    -0x4118(%ebx),%eax
  105d17:	89 04 24             	mov    %eax,(%esp)
  105d1a:	e8 4d d0 ff ff       	call   102d6c <dprintf>
    return 0;
  105d1f:	83 c4 10             	add    $0x10,%esp
  105d22:	31 c0                	xor    %eax,%eax
}
  105d24:	83 c4 08             	add    $0x8,%esp
  105d27:	5b                   	pop    %ebx
  105d28:	c3                   	ret
  105d29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Buddy allocation failed.\n");
  105d30:	83 ec 0c             	sub    $0xc,%esp
  105d33:	8d 83 48 b9 ff ff    	lea    -0x46b8(%ebx),%eax
  105d39:	50                   	push   %eax
  105d3a:	e8 2d d0 ff ff       	call   102d6c <dprintf>
        return 1;
  105d3f:	83 c4 10             	add    $0x10,%esp
  105d42:	eb b3                	jmp    105cf7 <MATOp_test_own+0x57>
  105d44:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105d4b:	00 
  105d4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00105d50 <MATOp_test_superpage>:


//superpage allocation test

int MATOp_test_superpage()
{
  105d50:	55                   	push   %ebp
  105d51:	57                   	push   %edi
  105d52:	56                   	push   %esi
  105d53:	53                   	push   %ebx
  105d54:	e8 67 a6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105d59:	81 c3 9b 72 00 00    	add    $0x729b,%ebx
  105d5f:	83 ec 18             	sub    $0x18,%esp
    dprintf("Testing superpage allocation (Order 10)...\n");
  105d62:	8d 83 08 bf ff ff    	lea    -0x40f8(%ebx),%eax
  105d68:	50                   	push   %eax
  105d69:	e8 fe cf ff ff       	call   102d6c <dprintf>

    int pindex = palloc_superpage();
  105d6e:	e8 bd fd ff ff       	call   105b30 <palloc_superpage>

    if (pindex == 0) {
  105d73:	83 c4 10             	add    $0x10,%esp
  105d76:	85 c0                	test   %eax,%eax
  105d78:	0f 84 a2 00 00 00    	je     105e20 <MATOp_test_superpage+0xd0>
  105d7e:	89 c7                	mov    %eax,%edi
        dprintf("Superpage allocation failed.\n");
        return 1;
    }

    // Check range
    if (pindex < VM_USERLO_PI || VM_USERHI_PI <= pindex) {
  105d80:	8d 80 00 00 fc ff    	lea    -0x40000(%eax),%eax
  105d86:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105d8b:	0f 87 a7 00 00 00    	ja     105e38 <MATOp_test_superpage+0xe8>
        return 1;
    }

    //Check alignment (must be 1024-page aligned)
    unsigned int pages = 1U << SUPERPAGE_ORDER;
    if ((pindex & (pages - 1)) != 0) {
  105d91:	89 fd                	mov    %edi,%ebp
  105d93:	81 e5 ff 03 00 00    	and    $0x3ff,%ebp
  105d99:	0f 85 b1 00 00 00    	jne    105e50 <MATOp_test_superpage+0x100>
        dprintf("Superpage test failed: not properly aligned.\n");
        return 1;
    }

    //Check order metadata
    if (AT[pindex].order != SUPERPAGE_ORDER) {
  105d9f:	c7 c2 40 9c 15 00    	mov    $0x159c40,%edx
  105da5:	8d 04 bf             	lea    (%edi,%edi,4),%eax
                SUPERPAGE_ORDER, AT[pindex].order);
        return 1;
    }

    //Check all 1024 pages allocated
    for (unsigned int i = 0; i < pages; i++) {
  105da8:	31 f6                	xor    %esi,%esi
    if (AT[pindex].order != SUPERPAGE_ORDER) {
  105daa:	8d 04 82             	lea    (%edx,%eax,4),%eax
  105dad:	8b 40 08             	mov    0x8(%eax),%eax
  105db0:	83 f8 0a             	cmp    $0xa,%eax
  105db3:	74 36                	je     105deb <MATOp_test_superpage+0x9b>
        dprintf("Superpage test failed: wrong order. Expected %d, got %d\n",
  105db5:	83 ec 04             	sub    $0x4,%esp
        return 1;
  105db8:	bd 01 00 00 00       	mov    $0x1,%ebp
        dprintf("Superpage test failed: wrong order. Expected %d, got %d\n",
  105dbd:	50                   	push   %eax
  105dbe:	8d 83 8c bf ff ff    	lea    -0x4074(%ebx),%eax
  105dc4:	6a 0a                	push   $0xa
  105dc6:	50                   	push   %eax
  105dc7:	e8 a0 cf ff ff       	call   102d6c <dprintf>
        return 1;
  105dcc:	83 c4 10             	add    $0x10,%esp
        }
    }

    dprintf("Superpage test passed.\n");
    return 0;
}
  105dcf:	83 c4 0c             	add    $0xc,%esp
  105dd2:	89 e8                	mov    %ebp,%eax
  105dd4:	5b                   	pop    %ebx
  105dd5:	5e                   	pop    %esi
  105dd6:	5f                   	pop    %edi
  105dd7:	5d                   	pop    %ebp
  105dd8:	c3                   	ret
  105dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    for (unsigned int i = 0; i < pages; i++) {
  105de0:	83 c6 01             	add    $0x1,%esi
  105de3:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  105de9:	74 79                	je     105e64 <MATOp_test_superpage+0x114>
        if (at_is_allocated(pindex + i) != 1) {
  105deb:	83 ec 0c             	sub    $0xc,%esp
  105dee:	8d 04 37             	lea    (%edi,%esi,1),%eax
  105df1:	50                   	push   %eax
  105df2:	e8 99 ee ff ff       	call   104c90 <at_is_allocated>
  105df7:	83 c4 10             	add    $0x10,%esp
  105dfa:	83 f8 01             	cmp    $0x1,%eax
  105dfd:	74 e1                	je     105de0 <MATOp_test_superpage+0x90>
            dprintf("Superpage test failed: page %u not allocated.\n", i);
  105dff:	83 ec 08             	sub    $0x8,%esp
  105e02:	8d 83 c8 bf ff ff    	lea    -0x4038(%ebx),%eax
  105e08:	56                   	push   %esi
  105e09:	50                   	push   %eax
  105e0a:	e8 5d cf ff ff       	call   102d6c <dprintf>
            return 1;
  105e0f:	83 c4 10             	add    $0x10,%esp
        return 1;
  105e12:	bd 01 00 00 00       	mov    $0x1,%ebp
  105e17:	eb b6                	jmp    105dcf <MATOp_test_superpage+0x7f>
  105e19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Superpage allocation failed.\n");
  105e20:	83 ec 0c             	sub    $0xc,%esp
  105e23:	8d 83 62 b9 ff ff    	lea    -0x469e(%ebx),%eax
  105e29:	50                   	push   %eax
  105e2a:	e8 3d cf ff ff       	call   102d6c <dprintf>
        return 1;
  105e2f:	83 c4 10             	add    $0x10,%esp
  105e32:	eb de                	jmp    105e12 <MATOp_test_superpage+0xc2>
  105e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Superpage test failed: invalid range.\n");
  105e38:	83 ec 0c             	sub    $0xc,%esp
  105e3b:	8d 83 34 bf ff ff    	lea    -0x40cc(%ebx),%eax
  105e41:	50                   	push   %eax
  105e42:	e8 25 cf ff ff       	call   102d6c <dprintf>
        return 1;
  105e47:	83 c4 10             	add    $0x10,%esp
  105e4a:	eb c6                	jmp    105e12 <MATOp_test_superpage+0xc2>
  105e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Superpage test failed: not properly aligned.\n");
  105e50:	83 ec 0c             	sub    $0xc,%esp
  105e53:	8d 83 5c bf ff ff    	lea    -0x40a4(%ebx),%eax
  105e59:	50                   	push   %eax
  105e5a:	e8 0d cf ff ff       	call   102d6c <dprintf>
        return 1;
  105e5f:	83 c4 10             	add    $0x10,%esp
  105e62:	eb ae                	jmp    105e12 <MATOp_test_superpage+0xc2>
    pfree_superpage(pindex);
  105e64:	83 ec 0c             	sub    $0xc,%esp
    for (unsigned int i = 0; i < pages; i++) {
  105e67:	31 f6                	xor    %esi,%esi
    pfree_superpage(pindex);
  105e69:	57                   	push   %edi
  105e6a:	e8 e1 fc ff ff       	call   105b50 <pfree_superpage>
  105e6f:	83 c4 10             	add    $0x10,%esp
  105e72:	eb 0f                	jmp    105e83 <MATOp_test_superpage+0x133>
  105e74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for (unsigned int i = 0; i < pages; i++) {
  105e78:	83 c6 01             	add    $0x1,%esi
  105e7b:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  105e81:	74 2b                	je     105eae <MATOp_test_superpage+0x15e>
        if (at_is_allocated(pindex + i) != 0) {
  105e83:	83 ec 0c             	sub    $0xc,%esp
  105e86:	8d 04 37             	lea    (%edi,%esi,1),%eax
  105e89:	50                   	push   %eax
  105e8a:	e8 01 ee ff ff       	call   104c90 <at_is_allocated>
  105e8f:	83 c4 10             	add    $0x10,%esp
  105e92:	85 c0                	test   %eax,%eax
  105e94:	74 e2                	je     105e78 <MATOp_test_superpage+0x128>
            dprintf("Superpage test failed: page %u not freed.\n", i);
  105e96:	83 ec 08             	sub    $0x8,%esp
  105e99:	8d 83 f8 bf ff ff    	lea    -0x4008(%ebx),%eax
  105e9f:	56                   	push   %esi
  105ea0:	50                   	push   %eax
  105ea1:	e8 c6 ce ff ff       	call   102d6c <dprintf>
            return 1;
  105ea6:	83 c4 10             	add    $0x10,%esp
  105ea9:	e9 64 ff ff ff       	jmp    105e12 <MATOp_test_superpage+0xc2>
    dprintf("Superpage test passed.\n");
  105eae:	83 ec 0c             	sub    $0xc,%esp
  105eb1:	8d 83 80 b9 ff ff    	lea    -0x4680(%ebx),%eax
  105eb7:	50                   	push   %eax
  105eb8:	e8 af ce ff ff       	call   102d6c <dprintf>
    return 0;
  105ebd:	83 c4 10             	add    $0x10,%esp
  105ec0:	e9 0a ff ff ff       	jmp    105dcf <MATOp_test_superpage+0x7f>
  105ec5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105ecc:	00 
  105ecd:	8d 76 00             	lea    0x0(%esi),%esi

00105ed0 <test_MATOp>:
{
  105ed0:	53                   	push   %ebx
  105ed1:	83 ec 08             	sub    $0x8,%esp
    return MATOp_test1() 
  105ed4:	e8 c7 fc ff ff       	call   105ba0 <MATOp_test1>
  105ed9:	89 c3                	mov    %eax,%ebx
         + MATOp_test_own()
  105edb:	e8 c0 fd ff ff       	call   105ca0 <MATOp_test_own>
  105ee0:	01 c3                	add    %eax,%ebx
         + MATOp_test_superpage();
  105ee2:	e8 69 fe ff ff       	call   105d50 <MATOp_test_superpage>
}
  105ee7:	83 c4 08             	add    $0x8,%esp
         + MATOp_test_superpage();
  105eea:	01 d8                	add    %ebx,%eax
}
  105eec:	5b                   	pop    %ebx
  105eed:	c3                   	ret
  105eee:	66 90                	xchg   %ax,%ax

00105ef0 <container_init>:
};

static struct SContainer CONTAINER[NUM_IDS];

void container_init(unsigned int mbi_addr)
{
  105ef0:	55                   	push   %ebp
  105ef1:	57                   	push   %edi
  105ef2:	56                   	push   %esi
  105ef3:	53                   	push   %ebx
  105ef4:	e8 c7 a4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105ef9:	81 c3 fb 70 00 00    	add    $0x70fb,%ebx
  105eff:	83 ec 0c             	sub    $0xc,%esp
    (void)mbi_addr; // not needed if pmem_init is done elsewhere

    unsigned int real_quota = 0;
    unsigned int nps = get_nps();
  105f02:	e8 e9 ec ff ff       	call   104bf0 <get_nps>
    unsigned int i;

    // Count free normal RAM pages
    for (i = 0; i < nps; i++) {
  105f07:	85 c0                	test   %eax,%eax
  105f09:	0f 84 c0 00 00 00    	je     105fcf <container_init+0xdf>
  105f0f:	89 c6                	mov    %eax,%esi
  105f11:	31 ed                	xor    %ebp,%ebp
    unsigned int real_quota = 0;
  105f13:	31 ff                	xor    %edi,%edi
  105f15:	eb 10                	jmp    105f27 <container_init+0x37>
  105f17:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105f1e:	00 
  105f1f:	90                   	nop
    for (i = 0; i < nps; i++) {
  105f20:	83 c5 01             	add    $0x1,%ebp
  105f23:	39 ee                	cmp    %ebp,%esi
  105f25:	74 29                	je     105f50 <container_init+0x60>
        if (at_is_norm(i) && !at_is_allocated(i)) {
  105f27:	83 ec 0c             	sub    $0xc,%esp
  105f2a:	55                   	push   %ebp
  105f2b:	e8 00 ed ff ff       	call   104c30 <at_is_norm>
  105f30:	83 c4 10             	add    $0x10,%esp
  105f33:	85 c0                	test   %eax,%eax
  105f35:	74 e9                	je     105f20 <container_init+0x30>
  105f37:	83 ec 0c             	sub    $0xc,%esp
  105f3a:	55                   	push   %ebp
  105f3b:	e8 50 ed ff ff       	call   104c90 <at_is_allocated>
  105f40:	83 c4 10             	add    $0x10,%esp
            real_quota++;
  105f43:	83 f8 01             	cmp    $0x1,%eax
  105f46:	83 d7 00             	adc    $0x0,%edi
    for (i = 0; i < nps; i++) {
  105f49:	83 c5 01             	add    $0x1,%ebp
  105f4c:	39 ee                	cmp    %ebp,%esi
  105f4e:	75 d7                	jne    105f27 <container_init+0x37>
        }
    }

    for (i = 0; i < NUM_IDS; i++) {
  105f50:	8d 83 8c cc 44 01    	lea    0x144cc8c(%ebx),%eax
  105f56:	8d 90 00 50 00 00    	lea    0x5000(%eax),%edx
  105f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        CONTAINER[i].quota = 0;
  105f60:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (i = 0; i < NUM_IDS; i++) {
  105f66:	83 c0 14             	add    $0x14,%eax
        CONTAINER[i].usage = 0;
  105f69:	c7 40 f0 00 00 00 00 	movl   $0x0,-0x10(%eax)
        CONTAINER[i].parent = 0;
  105f70:	c7 40 f4 00 00 00 00 	movl   $0x0,-0xc(%eax)
        CONTAINER[i].nchildren = 0;
  105f77:	c7 40 f8 00 00 00 00 	movl   $0x0,-0x8(%eax)
        CONTAINER[i].used = 0;
  105f7e:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
    for (i = 0; i < NUM_IDS; i++) {
  105f85:	39 d0                	cmp    %edx,%eax
  105f87:	75 d7                	jne    105f60 <container_init+0x70>
    CONTAINER[0].usage = 0;
    CONTAINER[0].parent = 0;
    CONTAINER[0].nchildren = 0;
    CONTAINER[0].used = 1;

    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  105f89:	83 ec 08             	sub    $0x8,%esp
  105f8c:	8d 83 24 c0 ff ff    	lea    -0x3fdc(%ebx),%eax
    CONTAINER[0].quota = (int)real_quota;
  105f92:	89 bb 8c cc 44 01    	mov    %edi,0x144cc8c(%ebx)
    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  105f98:	57                   	push   %edi
  105f99:	50                   	push   %eax
    CONTAINER[0].usage = 0;
  105f9a:	c7 83 90 cc 44 01 00 	movl   $0x0,0x144cc90(%ebx)
  105fa1:	00 00 00 
    CONTAINER[0].parent = 0;
  105fa4:	c7 83 94 cc 44 01 00 	movl   $0x0,0x144cc94(%ebx)
  105fab:	00 00 00 
    CONTAINER[0].nchildren = 0;
  105fae:	c7 83 98 cc 44 01 00 	movl   $0x0,0x144cc98(%ebx)
  105fb5:	00 00 00 
    CONTAINER[0].used = 1;
  105fb8:	c7 83 9c cc 44 01 01 	movl   $0x1,0x144cc9c(%ebx)
  105fbf:	00 00 00 
    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  105fc2:	e8 a5 cd ff ff       	call   102d6c <dprintf>
}
  105fc7:	83 c4 1c             	add    $0x1c,%esp
  105fca:	5b                   	pop    %ebx
  105fcb:	5e                   	pop    %esi
  105fcc:	5f                   	pop    %edi
  105fcd:	5d                   	pop    %ebp
  105fce:	c3                   	ret
    for (i = 0; i < nps; i++) {
  105fcf:	31 ff                	xor    %edi,%edi
  105fd1:	e9 7a ff ff ff       	jmp    105f50 <container_init+0x60>
  105fd6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105fdd:	00 
  105fde:	66 90                	xchg   %ax,%ax

00105fe0 <container_get_parent>:

unsigned int container_get_parent(unsigned int id) { return CONTAINER[id].parent; }
  105fe0:	e8 d7 a3 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105fe5:	81 c2 0f 70 00 00    	add    $0x700f,%edx
  105feb:	8b 44 24 04          	mov    0x4(%esp),%eax
  105fef:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105ff2:	8b 84 82 94 cc 44 01 	mov    0x144cc94(%edx,%eax,4),%eax
  105ff9:	c3                   	ret
  105ffa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106000 <container_get_nchildren>:
unsigned int container_get_nchildren(unsigned int id) { return CONTAINER[id].nchildren; }
  106000:	e8 b7 a3 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106005:	81 c2 ef 6f 00 00    	add    $0x6fef,%edx
  10600b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10600f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  106012:	8b 84 82 98 cc 44 01 	mov    0x144cc98(%edx,%eax,4),%eax
  106019:	c3                   	ret
  10601a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106020 <container_get_quota>:
unsigned int container_get_quota(unsigned int id) { return CONTAINER[id].quota; }
  106020:	e8 97 a3 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106025:	81 c2 cf 6f 00 00    	add    $0x6fcf,%edx
  10602b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10602f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  106032:	8b 84 82 8c cc 44 01 	mov    0x144cc8c(%edx,%eax,4),%eax
  106039:	c3                   	ret
  10603a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106040 <container_get_usage>:
unsigned int container_get_usage(unsigned int id) { return CONTAINER[id].usage; }
  106040:	e8 77 a3 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106045:	81 c2 af 6f 00 00    	add    $0x6faf,%edx
  10604b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10604f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  106052:	8b 84 82 90 cc 44 01 	mov    0x144cc90(%edx,%eax,4),%eax
  106059:	c3                   	ret
  10605a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106060 <container_can_consume>:

unsigned int container_can_consume(unsigned int id, unsigned int n)
{
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  106060:	e8 d8 ed ff ff       	call   104e3d <__x86.get_pc_thunk.cx>
  106065:	81 c1 8f 6f 00 00    	add    $0x6f8f,%ecx
{
  10606b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  10606f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  106072:	c1 e0 02             	shl    $0x2,%eax
  106075:	8b 94 01 90 cc 44 01 	mov    0x144cc90(%ecx,%eax,1),%edx
  10607c:	03 54 24 08          	add    0x8(%esp),%edx
  106080:	3b 94 01 8c cc 44 01 	cmp    0x144cc8c(%ecx,%eax,1),%edx
  106087:	0f 9e c0             	setle  %al
  10608a:	0f b6 c0             	movzbl %al,%eax
    return 0;
}
  10608d:	c3                   	ret
  10608e:	66 90                	xchg   %ax,%ax

00106090 <container_split>:

unsigned int container_split(unsigned int id, unsigned int quota)
{
  106090:	57                   	push   %edi
  106091:	56                   	push   %esi
  106092:	53                   	push   %ebx
  106093:	8b 44 24 10          	mov    0x10(%esp),%eax
  106097:	e8 24 a3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10609c:	81 c3 58 6f 00 00    	add    $0x6f58,%ebx
  1060a2:	8b 74 24 14          	mov    0x14(%esp),%esi
    unsigned int nc = CONTAINER[id].nchildren;
  1060a6:	8d 14 80             	lea    (%eax,%eax,4),%edx
  1060a9:	8d 94 93 8c cc 44 01 	lea    0x144cc8c(%ebx,%edx,4),%edx
  1060b0:	8b 7a 0c             	mov    0xc(%edx),%edi
    unsigned int child = id * MAX_CHILDREN + 1 + nc;

    CONTAINER[id].usage += (int)quota;
  1060b3:	01 72 04             	add    %esi,0x4(%edx)
    unsigned int child = id * MAX_CHILDREN + 1 + nc;
  1060b6:	8d 4c c7 01          	lea    0x1(%edi,%eax,8),%ecx
    CONTAINER[id].nchildren++;
  1060ba:	83 c7 01             	add    $0x1,%edi
  1060bd:	89 7a 0c             	mov    %edi,0xc(%edx)

    CONTAINER[child].quota = (int)quota;
  1060c0:	8d 14 89             	lea    (%ecx,%ecx,4),%edx
  1060c3:	c1 e2 02             	shl    $0x2,%edx
  1060c6:	8d bc 13 8c cc 44 01 	lea    0x144cc8c(%ebx,%edx,1),%edi
    CONTAINER[child].usage = 0;
    CONTAINER[child].parent = (int)id;
  1060cd:	89 47 08             	mov    %eax,0x8(%edi)
    CONTAINER[child].nchildren = 0;
    CONTAINER[child].used = 1;

    return child;
}
  1060d0:	89 c8                	mov    %ecx,%eax
    CONTAINER[child].quota = (int)quota;
  1060d2:	89 37                	mov    %esi,(%edi)
    CONTAINER[child].usage = 0;
  1060d4:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
    CONTAINER[child].nchildren = 0;
  1060db:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
    CONTAINER[child].used = 1;
  1060e2:	c7 47 10 01 00 00 00 	movl   $0x1,0x10(%edi)
}
  1060e9:	5b                   	pop    %ebx
  1060ea:	5e                   	pop    %esi
  1060eb:	5f                   	pop    %edi
  1060ec:	c3                   	ret
  1060ed:	8d 76 00             	lea    0x0(%esi),%esi

001060f0 <container_alloc>:

unsigned int container_alloc(unsigned int id)
{
  1060f0:	56                   	push   %esi
  1060f1:	53                   	push   %ebx
  1060f2:	e8 c9 a2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1060f7:	81 c3 fd 6e 00 00    	add    $0x6efd,%ebx
  1060fd:	83 ec 04             	sub    $0x4,%esp
  106100:	8b 44 24 10          	mov    0x10(%esp),%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  106104:	8d 14 80             	lea    (%eax,%eax,4),%edx
        if (pindex != 0) {
            CONTAINER[id].usage++;
            return pindex;
        }
    }
    return 0;
  106107:	31 c0                	xor    %eax,%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  106109:	c1 e2 02             	shl    $0x2,%edx
  10610c:	8d b4 13 8c cc 44 01 	lea    0x144cc8c(%ebx,%edx,1),%esi
  106113:	8b 8c 13 8c cc 44 01 	mov    0x144cc8c(%ebx,%edx,1),%ecx
  10611a:	39 4e 04             	cmp    %ecx,0x4(%esi)
  10611d:	7c 09                	jl     106128 <container_alloc+0x38>
}
  10611f:	83 c4 04             	add    $0x4,%esp
  106122:	5b                   	pop    %ebx
  106123:	5e                   	pop    %esi
  106124:	c3                   	ret
  106125:	8d 76 00             	lea    0x0(%esi),%esi
        unsigned int pindex = palloc();
  106128:	e8 53 f8 ff ff       	call   105980 <palloc>
        if (pindex != 0) {
  10612d:	85 c0                	test   %eax,%eax
  10612f:	74 ee                	je     10611f <container_alloc+0x2f>
            CONTAINER[id].usage++;
  106131:	83 46 04 01          	addl   $0x1,0x4(%esi)
}
  106135:	83 c4 04             	add    $0x4,%esp
  106138:	5b                   	pop    %ebx
  106139:	5e                   	pop    %esi
  10613a:	c3                   	ret
  10613b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106140 <container_free>:

void container_free(unsigned int id, unsigned int page_index)
{
  106140:	56                   	push   %esi
  106141:	53                   	push   %ebx
  106142:	e8 79 a2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106147:	81 c3 ad 6e 00 00    	add    $0x6ead,%ebx
  10614d:	83 ec 10             	sub    $0x10,%esp
  106150:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    pfree(page_index);
  106154:	ff 74 24 20          	push   0x20(%esp)
  106158:	e8 83 f9 ff ff       	call   105ae0 <pfree>
    if (CONTAINER[id].usage > 0) {
  10615d:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  106160:	83 c4 10             	add    $0x10,%esp
  106163:	8d 94 83 8c cc 44 01 	lea    0x144cc8c(%ebx,%eax,4),%edx
  10616a:	8b 42 04             	mov    0x4(%edx),%eax
  10616d:	85 c0                	test   %eax,%eax
  10616f:	7e 06                	jle    106177 <container_free+0x37>
        CONTAINER[id].usage--;
  106171:	83 e8 01             	sub    $0x1,%eax
  106174:	89 42 04             	mov    %eax,0x4(%edx)
    }
}
  106177:	83 c4 04             	add    $0x4,%esp
  10617a:	5b                   	pop    %ebx
  10617b:	5e                   	pop    %esi
  10617c:	c3                   	ret
  10617d:	66 90                	xchg   %ax,%ax
  10617f:	90                   	nop

00106180 <MContainer_test1>:
#include <lib/debug.h>
#include "export.h"

int MContainer_test1()
{
  106180:	53                   	push   %ebx
  106181:	e8 3a a2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106186:	81 c3 6e 6e 00 00    	add    $0x6e6e,%ebx
  10618c:	83 ec 14             	sub    $0x14,%esp
    if (container_get_quota(0) <= 10000) {
  10618f:	6a 00                	push   $0x0
  106191:	e8 8a fe ff ff       	call   106020 <container_get_quota>
  106196:	83 c4 10             	add    $0x10,%esp
  106199:	3d 10 27 00 00       	cmp    $0x2710,%eax
  10619e:	0f 86 7c 00 00 00    	jbe    106220 <MContainer_test1+0xa0>
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
        return 1;
    }
    if (container_can_consume(0, 10000) != 1) {
  1061a4:	83 ec 08             	sub    $0x8,%esp
  1061a7:	68 10 27 00 00       	push   $0x2710
  1061ac:	6a 00                	push   $0x0
  1061ae:	e8 ad fe ff ff       	call   106060 <container_can_consume>
  1061b3:	83 c4 10             	add    $0x10,%esp
  1061b6:	83 f8 01             	cmp    $0x1,%eax
  1061b9:	75 35                	jne    1061f0 <MContainer_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
        return 1;
    }
    if (container_can_consume(0, 10000000) != 0) {
  1061bb:	83 ec 08             	sub    $0x8,%esp
  1061be:	68 80 96 98 00       	push   $0x989680
  1061c3:	6a 00                	push   $0x0
  1061c5:	e8 96 fe ff ff       	call   106060 <container_can_consume>
  1061ca:	83 c4 10             	add    $0x10,%esp
  1061cd:	85 c0                	test   %eax,%eax
  1061cf:	75 6f                	jne    106240 <MContainer_test1+0xc0>
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
        return 1;
    }
    dprintf("test 1 passed.\n");
  1061d1:	83 ec 0c             	sub    $0xc,%esp
  1061d4:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  1061da:	50                   	push   %eax
  1061db:	e8 8c cb ff ff       	call   102d6c <dprintf>
    return 0;
  1061e0:	83 c4 10             	add    $0x10,%esp
  1061e3:	31 c0                	xor    %eax,%eax
}
  1061e5:	83 c4 08             	add    $0x8,%esp
  1061e8:	5b                   	pop    %ebx
  1061e9:	c3                   	ret
  1061ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
  1061f0:	83 ec 08             	sub    $0x8,%esp
  1061f3:	68 10 27 00 00       	push   $0x2710
  1061f8:	6a 00                	push   $0x0
  1061fa:	e8 61 fe ff ff       	call   106060 <container_can_consume>
  1061ff:	5a                   	pop    %edx
  106200:	59                   	pop    %ecx
  106201:	50                   	push   %eax
  106202:	8d 83 f4 b8 ff ff    	lea    -0x470c(%ebx),%eax
  106208:	50                   	push   %eax
  106209:	e8 5e cb ff ff       	call   102d6c <dprintf>
        return 1;
  10620e:	83 c4 10             	add    $0x10,%esp
}
  106211:	83 c4 08             	add    $0x8,%esp
        return 1;
  106214:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106219:	5b                   	pop    %ebx
  10621a:	c3                   	ret
  10621b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
  106220:	83 ec 0c             	sub    $0xc,%esp
  106223:	6a 00                	push   $0x0
  106225:	e8 f6 fd ff ff       	call   106020 <container_get_quota>
  10622a:	5a                   	pop    %edx
  10622b:	59                   	pop    %ecx
  10622c:	50                   	push   %eax
  10622d:	8d 83 48 c0 ff ff    	lea    -0x3fb8(%ebx),%eax
  106233:	50                   	push   %eax
  106234:	e8 33 cb ff ff       	call   102d6c <dprintf>
        return 1;
  106239:	83 c4 10             	add    $0x10,%esp
  10623c:	eb d3                	jmp    106211 <MContainer_test1+0x91>
  10623e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
  106240:	83 ec 08             	sub    $0x8,%esp
  106243:	68 80 96 98 00       	push   $0x989680
  106248:	6a 00                	push   $0x0
  10624a:	e8 11 fe ff ff       	call   106060 <container_can_consume>
  10624f:	5a                   	pop    %edx
  106250:	59                   	pop    %ecx
  106251:	50                   	push   %eax
  106252:	8d 83 98 b9 ff ff    	lea    -0x4668(%ebx),%eax
  106258:	50                   	push   %eax
  106259:	e8 0e cb ff ff       	call   102d6c <dprintf>
        return 1;
  10625e:	83 c4 10             	add    $0x10,%esp
  106261:	eb ae                	jmp    106211 <MContainer_test1+0x91>
  106263:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10626a:	00 
  10626b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106270 <MContainer_test2>:

int MContainer_test2()
{
  106270:	55                   	push   %ebp
  106271:	57                   	push   %edi
  106272:	56                   	push   %esi
  106273:	53                   	push   %ebx
  106274:	e8 47 a1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106279:	81 c3 7b 6d 00 00    	add    $0x6d7b,%ebx
  10627f:	83 ec 38             	sub    $0x38,%esp
    unsigned int old_usage = container_get_usage(0);
  106282:	6a 00                	push   $0x0
  106284:	e8 b7 fd ff ff       	call   106040 <container_get_usage>
    unsigned int old_nchildren = container_get_nchildren(0);
  106289:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    unsigned int old_usage = container_get_usage(0);
  106290:	89 c5                	mov    %eax,%ebp
    unsigned int old_nchildren = container_get_nchildren(0);
  106292:	e8 69 fd ff ff       	call   106000 <container_get_nchildren>
  106297:	89 c7                	mov    %eax,%edi
    unsigned int chid = container_split(0, 100);
  106299:	58                   	pop    %eax
  10629a:	5a                   	pop    %edx
  10629b:	6a 64                	push   $0x64
  10629d:	6a 00                	push   $0x0
  10629f:	e8 ec fd ff ff       	call   106090 <container_split>
    if (container_get_quota(chid) != 100
  1062a4:	89 04 24             	mov    %eax,(%esp)
    unsigned int chid = container_split(0, 100);
  1062a7:	89 c6                	mov    %eax,%esi
    if (container_get_quota(chid) != 100
  1062a9:	e8 72 fd ff ff       	call   106020 <container_get_quota>
  1062ae:	83 c4 10             	add    $0x10,%esp
  1062b1:	83 f8 64             	cmp    $0x64,%eax
  1062b4:	0f 84 8e 00 00 00    	je     106348 <MContainer_test2+0xd8>
        || container_get_parent(chid) != 0
        || container_get_usage(chid) != 0
        || container_get_nchildren(chid) != 0
        || container_get_usage(0) != old_usage + 100
  1062ba:	8d 45 64             	lea    0x64(%ebp),%eax
  1062bd:	89 44 24 10          	mov    %eax,0x10(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  1062c1:	8d 47 01             	lea    0x1(%edi),%eax
  1062c4:	89 44 24 0c          	mov    %eax,0xc(%esp)
        dprintf("test 2.1 failed:\n"
  1062c8:	83 ec 0c             	sub    $0xc,%esp
  1062cb:	6a 00                	push   $0x0
  1062cd:	e8 2e fd ff ff       	call   106000 <container_get_nchildren>
  1062d2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1062d9:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  1062dd:	e8 5e fd ff ff       	call   106040 <container_get_usage>
  1062e2:	89 34 24             	mov    %esi,(%esp)
  1062e5:	89 44 24 28          	mov    %eax,0x28(%esp)
  1062e9:	e8 12 fd ff ff       	call   106000 <container_get_nchildren>
  1062ee:	89 34 24             	mov    %esi,(%esp)
  1062f1:	89 44 24 24          	mov    %eax,0x24(%esp)
  1062f5:	e8 46 fd ff ff       	call   106040 <container_get_usage>
  1062fa:	89 34 24             	mov    %esi,(%esp)
  1062fd:	89 c5                	mov    %eax,%ebp
  1062ff:	e8 dc fc ff ff       	call   105fe0 <container_get_parent>
  106304:	89 34 24             	mov    %esi,(%esp)
  106307:	89 c7                	mov    %eax,%edi
  106309:	e8 12 fd ff ff       	call   106020 <container_get_quota>
  10630e:	5e                   	pop    %esi
  10630f:	ff 74 24 18          	push   0x18(%esp)
  106313:	8b 54 24 2c          	mov    0x2c(%esp),%edx
  106317:	52                   	push   %edx
  106318:	ff 74 24 24          	push   0x24(%esp)
  10631c:	8b 4c 24 30          	mov    0x30(%esp),%ecx
  106320:	51                   	push   %ecx
  106321:	ff 74 24 30          	push   0x30(%esp)
  106325:	55                   	push   %ebp
  106326:	57                   	push   %edi
  106327:	50                   	push   %eax
  106328:	8d 83 68 c0 ff ff    	lea    -0x3f98(%ebx),%eax
  10632e:	50                   	push   %eax
  10632f:	e8 38 ca ff ff       	call   102d6c <dprintf>
                container_get_parent(chid),
                container_get_usage(chid),
                container_get_nchildren(chid),
                container_get_usage(0), old_usage + 100,
                container_get_nchildren(0), old_nchildren + 1);
        return 1;
  106334:	83 c4 30             	add    $0x30,%esp
  106337:	b8 01 00 00 00       	mov    $0x1,%eax
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  10633c:	83 c4 2c             	add    $0x2c,%esp
  10633f:	5b                   	pop    %ebx
  106340:	5e                   	pop    %esi
  106341:	5f                   	pop    %edi
  106342:	5d                   	pop    %ebp
  106343:	c3                   	ret
  106344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        || container_get_parent(chid) != 0
  106348:	83 ec 0c             	sub    $0xc,%esp
        || container_get_usage(0) != old_usage + 100
  10634b:	83 c5 64             	add    $0x64,%ebp
        || container_get_parent(chid) != 0
  10634e:	56                   	push   %esi
  10634f:	e8 8c fc ff ff       	call   105fe0 <container_get_parent>
        || container_get_nchildren(0) != old_nchildren + 1) {
  106354:	8d 57 01             	lea    0x1(%edi),%edx
        || container_get_usage(0) != old_usage + 100
  106357:	89 6c 24 20          	mov    %ebp,0x20(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  10635b:	89 54 24 1c          	mov    %edx,0x1c(%esp)
        || container_get_parent(chid) != 0
  10635f:	83 c4 10             	add    $0x10,%esp
  106362:	85 c0                	test   %eax,%eax
  106364:	0f 85 5e ff ff ff    	jne    1062c8 <MContainer_test2+0x58>
        || container_get_usage(chid) != 0
  10636a:	83 ec 0c             	sub    $0xc,%esp
  10636d:	56                   	push   %esi
  10636e:	e8 cd fc ff ff       	call   106040 <container_get_usage>
  106373:	83 c4 10             	add    $0x10,%esp
  106376:	85 c0                	test   %eax,%eax
  106378:	0f 85 4a ff ff ff    	jne    1062c8 <MContainer_test2+0x58>
        || container_get_nchildren(chid) != 0
  10637e:	83 ec 0c             	sub    $0xc,%esp
  106381:	56                   	push   %esi
  106382:	e8 79 fc ff ff       	call   106000 <container_get_nchildren>
  106387:	83 c4 10             	add    $0x10,%esp
  10638a:	85 c0                	test   %eax,%eax
  10638c:	0f 85 36 ff ff ff    	jne    1062c8 <MContainer_test2+0x58>
        || container_get_usage(0) != old_usage + 100
  106392:	83 ec 0c             	sub    $0xc,%esp
  106395:	6a 00                	push   $0x0
  106397:	e8 a4 fc ff ff       	call   106040 <container_get_usage>
  10639c:	83 c4 10             	add    $0x10,%esp
  10639f:	39 e8                	cmp    %ebp,%eax
  1063a1:	0f 85 21 ff ff ff    	jne    1062c8 <MContainer_test2+0x58>
        || container_get_nchildren(0) != old_nchildren + 1) {
  1063a7:	83 ec 0c             	sub    $0xc,%esp
  1063aa:	6a 00                	push   $0x0
  1063ac:	e8 4f fc ff ff       	call   106000 <container_get_nchildren>
  1063b1:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  1063b5:	83 c4 10             	add    $0x10,%esp
  1063b8:	39 c8                	cmp    %ecx,%eax
  1063ba:	0f 85 08 ff ff ff    	jne    1062c8 <MContainer_test2+0x58>
    container_alloc(chid);
  1063c0:	83 ec 0c             	sub    $0xc,%esp
  1063c3:	56                   	push   %esi
  1063c4:	e8 27 fd ff ff       	call   1060f0 <container_alloc>
    if (container_get_usage(chid) != 1) {
  1063c9:	89 34 24             	mov    %esi,(%esp)
  1063cc:	e8 6f fc ff ff       	call   106040 <container_get_usage>
  1063d1:	83 c4 10             	add    $0x10,%esp
  1063d4:	83 f8 01             	cmp    $0x1,%eax
  1063d7:	74 20                	je     1063f9 <MContainer_test2+0x189>
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
  1063d9:	83 ec 0c             	sub    $0xc,%esp
  1063dc:	56                   	push   %esi
  1063dd:	e8 5e fc ff ff       	call   106040 <container_get_usage>
  1063e2:	5a                   	pop    %edx
  1063e3:	59                   	pop    %ecx
  1063e4:	50                   	push   %eax
  1063e5:	8d 83 b4 b9 ff ff    	lea    -0x464c(%ebx),%eax
  1063eb:	50                   	push   %eax
  1063ec:	e8 7b c9 ff ff       	call   102d6c <dprintf>
        return 1;
  1063f1:	83 c4 10             	add    $0x10,%esp
  1063f4:	e9 3e ff ff ff       	jmp    106337 <MContainer_test2+0xc7>
    dprintf("test 2 passed.\n");
  1063f9:	83 ec 0c             	sub    $0xc,%esp
  1063fc:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  106402:	50                   	push   %eax
  106403:	e8 64 c9 ff ff       	call   102d6c <dprintf>
    return 0;
  106408:	83 c4 10             	add    $0x10,%esp
  10640b:	31 c0                	xor    %eax,%eax
  10640d:	e9 2a ff ff ff       	jmp    10633c <MContainer_test2+0xcc>
  106412:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106419:	00 
  10641a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106420 <MContainer_test_own>:
int MContainer_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106420:	31 c0                	xor    %eax,%eax
  106422:	c3                   	ret
  106423:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10642a:	00 
  10642b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106430 <test_MContainer>:

int test_MContainer()
{
  106430:	53                   	push   %ebx
  106431:	83 ec 08             	sub    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  106434:	e8 47 fd ff ff       	call   106180 <MContainer_test1>
  106439:	89 c3                	mov    %eax,%ebx
  10643b:	e8 30 fe ff ff       	call   106270 <MContainer_test2>
}
  106440:	83 c4 08             	add    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  106443:	01 d8                	add    %ebx,%eax
}
  106445:	5b                   	pop    %ebx
  106446:	c3                   	ret
  106447:	66 90                	xchg   %ax,%ax
  106449:	66 90                	xchg   %ax,%ax
  10644b:	66 90                	xchg   %ax,%ax
  10644d:	66 90                	xchg   %ax,%ax
  10644f:	90                   	nop

00106450 <set_pdir_base>:
unsigned int IDPTbl[1024][1024] gcc_aligned(PAGESIZE);


// sets the CR3 register with the start address of the page structure for process # [index]
void set_pdir_base(unsigned int index)
{
  106450:	53                   	push   %ebx
  106451:	e8 6a 9f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106456:	81 c3 9e 6b 00 00    	add    $0x6b9e,%ebx
  10645c:	83 ec 14             	sub    $0x14,%esp
    // TODO
    set_cr3(PDirPool[index]);
  10645f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106463:	c1 e0 0c             	shl    $0xc,%eax
  106466:	8d 84 03 0c 20 85 01 	lea    0x185200c(%ebx,%eax,1),%eax
  10646d:	50                   	push   %eax
  10646e:	e8 37 ad ff ff       	call   1011aa <set_cr3>
}
  106473:	83 c4 18             	add    $0x18,%esp
  106476:	5b                   	pop    %ebx
  106477:	c3                   	ret
  106478:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10647f:	00 

00106480 <get_pdir_entry>:
// this can be used to test whether the page directory entry is mapped
unsigned int get_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    // TODO??? return pagetable base address of entire 
    // TODO TODO TODO
    return (unsigned int)PDirPool[proc_index][pde_index];
  106480:	e8 37 9f ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106485:	81 c2 6f 6b 00 00    	add    $0x6b6f,%edx
  10648b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10648f:	c1 e0 0a             	shl    $0xa,%eax
  106492:	03 44 24 08          	add    0x8(%esp),%eax
  106496:	8b 84 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%eax
}   
  10649d:	c3                   	ret
  10649e:	66 90                	xchg   %ax,%ax

001064a0 <set_pdir_entry>:
void set_pdir_entry(unsigned int proc_index, unsigned int pde_index, unsigned int page_index)
{
    // TODO
    // bit 31-12 is the base address of page table
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
    PDirPool[proc_index][pde_index] = (char *)value;
  1064a0:	e8 98 e9 ff ff       	call   104e3d <__x86.get_pc_thunk.cx>
  1064a5:	81 c1 4f 6b 00 00    	add    $0x6b4f,%ecx
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  1064ab:	8b 54 24 0c          	mov    0xc(%esp),%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  1064af:	8b 44 24 04          	mov    0x4(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  1064b3:	c1 e2 0c             	shl    $0xc,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  1064b6:	c1 e0 0a             	shl    $0xa,%eax
  1064b9:	03 44 24 08          	add    0x8(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  1064bd:	83 ca 07             	or     $0x7,%edx
  1064c0:	89 94 81 0c 20 85 01 	mov    %edx,0x185200c(%ecx,%eax,4)
    
}   
  1064c7:	c3                   	ret
  1064c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1064cf:	00 

001064d0 <set_pdir_entry_identity>:
void set_pdir_entry_identity(unsigned int proc_index, unsigned int pde_index)
{   
    // TODO
    // the address of IDPTbl[pde_index] is aligned to 4096
    // so the low 12bits are all 0
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  1064d0:	e8 68 e9 ff ff       	call   104e3d <__x86.get_pc_thunk.cx>
  1064d5:	81 c1 1f 6b 00 00    	add    $0x6b1f,%ecx
{   
  1064db:	53                   	push   %ebx
  1064dc:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  1064e0:	89 d8                	mov    %ebx,%eax
  1064e2:	c1 e0 0c             	shl    $0xc,%eax
  1064e5:	8d 94 01 0c 20 45 01 	lea    0x145200c(%ecx,%eax,1),%edx
    value |= PT_PERM_PTU;
    PDirPool[proc_index][pde_index] = (char *)value;
  1064ec:	8b 44 24 08          	mov    0x8(%esp),%eax
    value |= PT_PERM_PTU;
  1064f0:	83 ca 07             	or     $0x7,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  1064f3:	c1 e0 0a             	shl    $0xa,%eax
  1064f6:	01 d8                	add    %ebx,%eax
}   
  1064f8:	5b                   	pop    %ebx
    value |= PT_PERM_PTU;
  1064f9:	89 94 81 0c 20 85 01 	mov    %edx,0x185200c(%ecx,%eax,4)
}   
  106500:	c3                   	ret
  106501:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106508:	00 
  106509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106510 <rmv_pdir_entry>:
// removes specified page directory entry (set the page directory entry to 0).
// don't forget to cast the value to (char *).
void rmv_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    // TODO
    PDirPool[proc_index][pde_index] = (char *)0x00000000;
  106510:	e8 a7 9e ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106515:	81 c2 df 6a 00 00    	add    $0x6adf,%edx
  10651b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10651f:	c1 e0 0a             	shl    $0xa,%eax
  106522:	03 44 24 08          	add    0x8(%esp),%eax
  106526:	c7 84 82 0c 20 85 01 	movl   $0x0,0x185200c(%edx,%eax,4)
  10652d:	00 00 00 00 
}   
  106531:	c3                   	ret
  106532:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106539:	00 
  10653a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106540 <get_ptbl_entry>:
// returns the specified page table entry.
// do not forget that the permission info is also stored in the page directory entries.
unsigned int get_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{   // PdirPool[proc_index][pde_index] stores the bass address of a page table
    // pte_index * 4 means each page table entry is 4 byte.
    unsigned int pte_addr = (unsigned int )PDirPool[proc_index][pde_index];
  106540:	e8 77 9e ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106545:	81 c2 af 6a 00 00    	add    $0x6aaf,%edx
  10654b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10654f:	c1 e0 0a             	shl    $0xa,%eax
  106552:	03 44 24 08          	add    0x8(%esp),%eax
  106556:	8b 84 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000; //remove perm bits
    pte_addr += pte_index << 2;//
    return *(unsigned int *)pte_addr; 
  10655d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000; //remove perm bits
  106561:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    return *(unsigned int *)pte_addr; 
  106566:	8b 04 90             	mov    (%eax,%edx,4),%eax
}
  106569:	c3                   	ret
  10656a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106570 <set_ptbl_entry>:
void set_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index, unsigned int page_index, unsigned int perm)
{   
    // TODO
    // each page table entry is 4 byte, char * is also 4 byte
    unsigned int* pte;
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  106570:	e8 47 9e ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106575:	81 c2 7f 6a 00 00    	add    $0x6a7f,%edx
  10657b:	8b 44 24 04          	mov    0x4(%esp),%eax
    pte_addr += pte_index << 2;

    pte = (unsigned int *)pte_addr;
    *pte &= 0x00000000;
    *pte = page_index << 12;
    *pte |= (perm & 0x00000fff);
  10657f:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  106583:	c1 e0 0a             	shl    $0xa,%eax
  106586:	03 44 24 08          	add    0x8(%esp),%eax
    *pte |= (perm & 0x00000fff);
  10658a:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  106590:	8b 94 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%edx
    *pte = page_index << 12;
  106597:	8b 44 24 10          	mov    0x10(%esp),%eax
  10659b:	c1 e0 0c             	shl    $0xc,%eax
    pte_addr &= 0xfffff000;//rmove perm bits
  10659e:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
    *pte |= (perm & 0x00000fff);
  1065a4:	09 c8                	or     %ecx,%eax
  1065a6:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  1065aa:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
}   
  1065ad:	c3                   	ret
  1065ae:	66 90                	xchg   %ax,%ax

001065b0 <set_ptbl_entry_identity>:
// you should also set the given permission
void set_ptbl_entry_identity(unsigned int pde_index, unsigned int pte_index, unsigned int perm)
{
    // TODO
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
    IDPTbl[pde_index][pte_index] |= perm;
  1065b0:	e8 88 e8 ff ff       	call   104e3d <__x86.get_pc_thunk.cx>
  1065b5:	81 c1 3f 6a 00 00    	add    $0x6a3f,%ecx
  1065bb:	8b 44 24 04          	mov    0x4(%esp),%eax
  1065bf:	c1 e0 0a             	shl    $0xa,%eax
  1065c2:	03 44 24 08          	add    0x8(%esp),%eax
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
  1065c6:	89 c2                	mov    %eax,%edx
  1065c8:	c1 e2 0c             	shl    $0xc,%edx
    IDPTbl[pde_index][pte_index] |= perm;
  1065cb:	0b 54 24 0c          	or     0xc(%esp),%edx
  1065cf:	89 94 81 0c 20 45 01 	mov    %edx,0x145200c(%ecx,%eax,4)
}
  1065d6:	c3                   	ret
  1065d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1065de:	00 
  1065df:	90                   	nop

001065e0 <rmv_ptbl_entry>:
// sets the specified page table entry to 0
void rmv_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{
    // TODO   
    unsigned int * pte;
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  1065e0:	e8 d7 9d ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  1065e5:	81 c2 0f 6a 00 00    	add    $0x6a0f,%edx
  1065eb:	8b 44 24 04          	mov    0x4(%esp),%eax
  1065ef:	c1 e0 0a             	shl    $0xa,%eax
  1065f2:	03 44 24 08          	add    0x8(%esp),%eax
  1065f6:	8b 84 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000;//remove perm bits
    pte_addr += pte_index << 2;
    pte = (unsigned int *)pte_addr;
    *pte &= 0x00000000;
  1065fd:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000;//remove perm bits
  106601:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    *pte &= 0x00000000;
  106606:	c7 04 90 00 00 00 00 	movl   $0x0,(%eax,%edx,4)
  10660d:	c3                   	ret
  10660e:	66 90                	xchg   %ax,%ax

00106610 <MPTIntro_test1>:

extern char *PDirPool[NUM_IDS][1024];
extern unsigned int IDPTbl[1024][1024];

int MPTIntro_test1()
{
  106610:	56                   	push   %esi
  106611:	53                   	push   %ebx
  106612:	e8 a9 9d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106617:	81 c3 dd 69 00 00    	add    $0x69dd,%ebx
  10661d:	83 ec 10             	sub    $0x10,%esp
    set_pdir_base(0);
  106620:	6a 00                	push   $0x0
  106622:	e8 29 fe ff ff       	call   106450 <set_pdir_base>
    if ((unsigned int) PDirPool[0] != rcr3()) {
  106627:	e8 8a d3 ff ff       	call   1039b6 <rcr3>
  10662c:	c7 c6 00 f0 95 01    	mov    $0x195f000,%esi
  106632:	83 c4 10             	add    $0x10,%esp
  106635:	39 f0                	cmp    %esi,%eax
  106637:	74 27                	je     106660 <MPTIntro_test1+0x50>
        dprintf("test 1.1 failed: (%d != %d)\n",
  106639:	e8 78 d3 ff ff       	call   1039b6 <rcr3>
  10663e:	83 ec 04             	sub    $0x4,%esp
  106641:	50                   	push   %eax
  106642:	8d 83 d0 b9 ff ff    	lea    -0x4630(%ebx),%eax
  106648:	56                   	push   %esi
  106649:	50                   	push   %eax
  10664a:	e8 1d c7 ff ff       	call   102d6c <dprintf>
                (unsigned int) PDirPool[0], rcr3());
        return 1;
  10664f:	83 c4 10             	add    $0x10,%esp
  106652:	b8 01 00 00 00       	mov    $0x1,%eax
                get_pdir_entry(1, 1), get_pdir_entry(1, 2));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  106657:	83 c4 04             	add    $0x4,%esp
  10665a:	5b                   	pop    %ebx
  10665b:	5e                   	pop    %esi
  10665c:	c3                   	ret
  10665d:	8d 76 00             	lea    0x0(%esi),%esi
    set_pdir_entry_identity(1, 1);
  106660:	83 ec 08             	sub    $0x8,%esp
  106663:	6a 01                	push   $0x1
  106665:	6a 01                	push   $0x1
  106667:	e8 64 fe ff ff       	call   1064d0 <set_pdir_entry_identity>
    set_pdir_entry(1, 2, 100);
  10666c:	83 c4 0c             	add    $0xc,%esp
  10666f:	6a 64                	push   $0x64
  106671:	6a 02                	push   $0x2
  106673:	6a 01                	push   $0x1
  106675:	e8 26 fe ff ff       	call   1064a0 <set_pdir_entry>
    if (get_pdir_entry(1, 1) != (unsigned int) IDPTbl[1] + 7) {
  10667a:	58                   	pop    %eax
  10667b:	5a                   	pop    %edx
  10667c:	6a 01                	push   $0x1
  10667e:	6a 01                	push   $0x1
  106680:	e8 fb fd ff ff       	call   106480 <get_pdir_entry>
  106685:	c7 c6 00 f0 55 01    	mov    $0x155f000,%esi
  10668b:	83 c4 10             	add    $0x10,%esp
  10668e:	81 c6 07 10 00 00    	add    $0x1007,%esi
  106694:	39 c6                	cmp    %eax,%esi
  106696:	74 28                	je     1066c0 <MPTIntro_test1+0xb0>
        dprintf("test 1.2 failed: (%d != %d)\n",
  106698:	83 ec 08             	sub    $0x8,%esp
  10669b:	6a 01                	push   $0x1
  10669d:	6a 01                	push   $0x1
  10669f:	e8 dc fd ff ff       	call   106480 <get_pdir_entry>
  1066a4:	83 c4 0c             	add    $0xc,%esp
  1066a7:	56                   	push   %esi
  1066a8:	50                   	push   %eax
  1066a9:	8d 83 ed b9 ff ff    	lea    -0x4613(%ebx),%eax
  1066af:	50                   	push   %eax
  1066b0:	e8 b7 c6 ff ff       	call   102d6c <dprintf>
        return 1;
  1066b5:	83 c4 10             	add    $0x10,%esp
  1066b8:	eb 98                	jmp    106652 <MPTIntro_test1+0x42>
  1066ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (get_pdir_entry(1, 2) != 409607) {
  1066c0:	83 ec 08             	sub    $0x8,%esp
  1066c3:	6a 02                	push   $0x2
  1066c5:	6a 01                	push   $0x1
  1066c7:	e8 b4 fd ff ff       	call   106480 <get_pdir_entry>
  1066cc:	83 c4 10             	add    $0x10,%esp
  1066cf:	3d 07 40 06 00       	cmp    $0x64007,%eax
  1066d4:	75 72                	jne    106748 <MPTIntro_test1+0x138>
    rmv_pdir_entry(1, 1);
  1066d6:	83 ec 08             	sub    $0x8,%esp
  1066d9:	6a 01                	push   $0x1
  1066db:	6a 01                	push   $0x1
  1066dd:	e8 2e fe ff ff       	call   106510 <rmv_pdir_entry>
    rmv_pdir_entry(1, 2);
  1066e2:	59                   	pop    %ecx
  1066e3:	5e                   	pop    %esi
  1066e4:	6a 02                	push   $0x2
  1066e6:	6a 01                	push   $0x1
  1066e8:	e8 23 fe ff ff       	call   106510 <rmv_pdir_entry>
    if (get_pdir_entry(1, 1) != 0 || get_pdir_entry(1, 2) != 0) {
  1066ed:	58                   	pop    %eax
  1066ee:	5a                   	pop    %edx
  1066ef:	6a 01                	push   $0x1
  1066f1:	6a 01                	push   $0x1
  1066f3:	e8 88 fd ff ff       	call   106480 <get_pdir_entry>
  1066f8:	83 c4 10             	add    $0x10,%esp
  1066fb:	85 c0                	test   %eax,%eax
  1066fd:	75 13                	jne    106712 <MPTIntro_test1+0x102>
  1066ff:	83 ec 08             	sub    $0x8,%esp
  106702:	6a 02                	push   $0x2
  106704:	6a 01                	push   $0x1
  106706:	e8 75 fd ff ff       	call   106480 <get_pdir_entry>
  10670b:	83 c4 10             	add    $0x10,%esp
  10670e:	85 c0                	test   %eax,%eax
  106710:	74 5e                	je     106770 <MPTIntro_test1+0x160>
        dprintf("test 1.4 failed: (%d != 0 || %d != 0)\n",
  106712:	83 ec 08             	sub    $0x8,%esp
  106715:	6a 02                	push   $0x2
  106717:	6a 01                	push   $0x1
  106719:	e8 62 fd ff ff       	call   106480 <get_pdir_entry>
  10671e:	89 c6                	mov    %eax,%esi
  106720:	58                   	pop    %eax
  106721:	5a                   	pop    %edx
  106722:	6a 01                	push   $0x1
  106724:	6a 01                	push   $0x1
  106726:	e8 55 fd ff ff       	call   106480 <get_pdir_entry>
  10672b:	83 c4 0c             	add    $0xc,%esp
  10672e:	56                   	push   %esi
  10672f:	50                   	push   %eax
  106730:	8d 83 e4 c0 ff ff    	lea    -0x3f1c(%ebx),%eax
  106736:	50                   	push   %eax
  106737:	e8 30 c6 ff ff       	call   102d6c <dprintf>
        return 1;
  10673c:	83 c4 10             	add    $0x10,%esp
  10673f:	e9 0e ff ff ff       	jmp    106652 <MPTIntro_test1+0x42>
  106744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d != 409607)\n", get_pdir_entry(1, 2));
  106748:	83 ec 08             	sub    $0x8,%esp
  10674b:	6a 02                	push   $0x2
  10674d:	6a 01                	push   $0x1
  10674f:	e8 2c fd ff ff       	call   106480 <get_pdir_entry>
  106754:	59                   	pop    %ecx
  106755:	5e                   	pop    %esi
  106756:	50                   	push   %eax
  106757:	8d 83 c0 c0 ff ff    	lea    -0x3f40(%ebx),%eax
  10675d:	50                   	push   %eax
  10675e:	e8 09 c6 ff ff       	call   102d6c <dprintf>
        return 1;
  106763:	83 c4 10             	add    $0x10,%esp
  106766:	e9 e7 fe ff ff       	jmp    106652 <MPTIntro_test1+0x42>
  10676b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    dprintf("test 1 passed.\n");
  106770:	83 ec 0c             	sub    $0xc,%esp
  106773:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  106779:	50                   	push   %eax
  10677a:	e8 ed c5 ff ff       	call   102d6c <dprintf>
    return 0;
  10677f:	83 c4 10             	add    $0x10,%esp
  106782:	31 c0                	xor    %eax,%eax
  106784:	e9 ce fe ff ff       	jmp    106657 <MPTIntro_test1+0x47>
  106789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106790 <MPTIntro_test2>:

int MPTIntro_test2()
{
  106790:	53                   	push   %ebx
  106791:	e8 2a 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106796:	81 c3 5e 68 00 00    	add    $0x685e,%ebx
  10679c:	83 ec 0c             	sub    $0xc,%esp
    set_pdir_entry(1, 1, 10000);
  10679f:	68 10 27 00 00       	push   $0x2710
  1067a4:	6a 01                	push   $0x1
  1067a6:	6a 01                	push   $0x1
  1067a8:	e8 f3 fc ff ff       	call   1064a0 <set_pdir_entry>
    set_ptbl_entry(1, 1, 1, 10000, 259);
  1067ad:	c7 04 24 03 01 00 00 	movl   $0x103,(%esp)
  1067b4:	68 10 27 00 00       	push   $0x2710
  1067b9:	6a 01                	push   $0x1
  1067bb:	6a 01                	push   $0x1
  1067bd:	6a 01                	push   $0x1
  1067bf:	e8 ac fd ff ff       	call   106570 <set_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 40960259) {
  1067c4:	83 c4 1c             	add    $0x1c,%esp
  1067c7:	6a 01                	push   $0x1
  1067c9:	6a 01                	push   $0x1
  1067cb:	6a 01                	push   $0x1
  1067cd:	e8 6e fd ff ff       	call   106540 <get_ptbl_entry>
  1067d2:	83 c4 10             	add    $0x10,%esp
  1067d5:	3d 03 01 71 02       	cmp    $0x2710103,%eax
  1067da:	74 34                	je     106810 <MPTIntro_test2+0x80>
        dprintf("test 2.1 failed: (%d != 40960259)\n", get_ptbl_entry(1, 1, 1));
  1067dc:	83 ec 04             	sub    $0x4,%esp
  1067df:	6a 01                	push   $0x1
  1067e1:	6a 01                	push   $0x1
  1067e3:	6a 01                	push   $0x1
  1067e5:	e8 56 fd ff ff       	call   106540 <get_ptbl_entry>
  1067ea:	5a                   	pop    %edx
  1067eb:	59                   	pop    %ecx
  1067ec:	50                   	push   %eax
  1067ed:	8d 83 0c c1 ff ff    	lea    -0x3ef4(%ebx),%eax
  1067f3:	50                   	push   %eax
  1067f4:	e8 73 c5 ff ff       	call   102d6c <dprintf>
        return 1;
  1067f9:	83 c4 10             	add    $0x10,%esp
        return 1;
    }
    rmv_pdir_entry(1, 1);
    dprintf("test 2 passed.\n");
    return 0;
}
  1067fc:	83 c4 08             	add    $0x8,%esp
        return 1;
  1067ff:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106804:	5b                   	pop    %ebx
  106805:	c3                   	ret
  106806:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10680d:	00 
  10680e:	66 90                	xchg   %ax,%ax
    rmv_ptbl_entry(1, 1, 1);
  106810:	83 ec 04             	sub    $0x4,%esp
  106813:	6a 01                	push   $0x1
  106815:	6a 01                	push   $0x1
  106817:	6a 01                	push   $0x1
  106819:	e8 c2 fd ff ff       	call   1065e0 <rmv_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 0) {
  10681e:	83 c4 0c             	add    $0xc,%esp
  106821:	6a 01                	push   $0x1
  106823:	6a 01                	push   $0x1
  106825:	6a 01                	push   $0x1
  106827:	e8 14 fd ff ff       	call   106540 <get_ptbl_entry>
  10682c:	83 c4 10             	add    $0x10,%esp
  10682f:	85 c0                	test   %eax,%eax
  106831:	75 2d                	jne    106860 <MPTIntro_test2+0xd0>
    rmv_pdir_entry(1, 1);
  106833:	83 ec 08             	sub    $0x8,%esp
  106836:	6a 01                	push   $0x1
  106838:	6a 01                	push   $0x1
  10683a:	e8 d1 fc ff ff       	call   106510 <rmv_pdir_entry>
    dprintf("test 2 passed.\n");
  10683f:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  106845:	89 04 24             	mov    %eax,(%esp)
  106848:	e8 1f c5 ff ff       	call   102d6c <dprintf>
    return 0;
  10684d:	83 c4 10             	add    $0x10,%esp
  106850:	31 c0                	xor    %eax,%eax
}
  106852:	83 c4 08             	add    $0x8,%esp
  106855:	5b                   	pop    %ebx
  106856:	c3                   	ret
  106857:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10685e:	00 
  10685f:	90                   	nop
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry(1, 1, 1));
  106860:	83 ec 04             	sub    $0x4,%esp
  106863:	6a 01                	push   $0x1
  106865:	6a 01                	push   $0x1
  106867:	6a 01                	push   $0x1
  106869:	e8 d2 fc ff ff       	call   106540 <get_ptbl_entry>
  10686e:	5a                   	pop    %edx
  10686f:	59                   	pop    %ecx
  106870:	50                   	push   %eax
  106871:	8d 83 0a ba ff ff    	lea    -0x45f6(%ebx),%eax
  106877:	50                   	push   %eax
  106878:	e8 ef c4 ff ff       	call   102d6c <dprintf>
        return 1;
  10687d:	83 c4 10             	add    $0x10,%esp
  106880:	e9 77 ff ff ff       	jmp    1067fc <MPTIntro_test2+0x6c>
  106885:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10688c:	00 
  10688d:	8d 76 00             	lea    0x0(%esi),%esi

00106890 <MPTIntro_test_own>:
int MPTIntro_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106890:	31 c0                	xor    %eax,%eax
  106892:	c3                   	ret
  106893:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10689a:	00 
  10689b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001068a0 <test_MPTIntro>:

int test_MPTIntro()
{
  1068a0:	53                   	push   %ebx
  1068a1:	83 ec 08             	sub    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  1068a4:	e8 67 fd ff ff       	call   106610 <MPTIntro_test1>
  1068a9:	89 c3                	mov    %eax,%ebx
  1068ab:	e8 e0 fe ff ff       	call   106790 <MPTIntro_test2>
}
  1068b0:	83 c4 08             	add    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  1068b3:	01 d8                	add    %ebx,%eax
}
  1068b5:	5b                   	pop    %ebx
  1068b6:	c3                   	ret
  1068b7:	66 90                	xchg   %ax,%ax
  1068b9:	66 90                	xchg   %ax,%ax
  1068bb:	66 90                	xchg   %ax,%ax
  1068bd:	66 90                	xchg   %ax,%ax
  1068bf:	90                   	nop

001068c0 <get_ptbl_entry_by_va>:
 * Returns the page table entry corresponding to the virtual address,
 * according to the page structure of process # [proc_index].
 * Returns 0 if the mapping does not exist.
 */
unsigned int get_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  1068c0:	55                   	push   %ebp
  1068c1:	57                   	push   %edi
  1068c2:	56                   	push   %esi
  1068c3:	53                   	push   %ebx
  1068c4:	e8 f7 9a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1068c9:	81 c3 2b 67 00 00    	add    $0x672b,%ebx
  1068cf:	83 ec 14             	sub    $0x14,%esp
  1068d2:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  1068d6:	8b 7c 24 28          	mov    0x28(%esp),%edi
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  1068da:	89 f5                	mov    %esi,%ebp
  1068dc:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;

    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  1068df:	55                   	push   %ebp
  1068e0:	57                   	push   %edi
  1068e1:	e8 9a fb ff ff       	call   106480 <get_pdir_entry>
    // check the present bit of page directory entry
    if ((pde & PTE_P) == 0) {
  1068e6:	83 c4 10             	add    $0x10,%esp
  1068e9:	a8 01                	test   $0x1,%al
  1068eb:	75 13                	jne    106900 <get_ptbl_entry_by_va+0x40>
    //check the present bit of page table entry
    if ((pte & PTE_P) == 0) {
        return 0;
    }
    return pte;
}         
  1068ed:	83 c4 0c             	add    $0xc,%esp
        return 0;
  1068f0:	31 c0                	xor    %eax,%eax
}         
  1068f2:	5b                   	pop    %ebx
  1068f3:	5e                   	pop    %esi
  1068f4:	5f                   	pop    %edi
  1068f5:	5d                   	pop    %ebp
  1068f6:	c3                   	ret
  1068f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1068fe:	00 
  1068ff:	90                   	nop
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106900:	c1 ee 0c             	shr    $0xc,%esi
    unsigned int pte = get_ptbl_entry(proc_index, pde_index, pte_index);
  106903:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106906:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    unsigned int pte = get_ptbl_entry(proc_index, pde_index, pte_index);
  10690c:	56                   	push   %esi
  10690d:	55                   	push   %ebp
  10690e:	57                   	push   %edi
  10690f:	e8 2c fc ff ff       	call   106540 <get_ptbl_entry>
    if ((pte & PTE_P) == 0) {
  106914:	83 c4 10             	add    $0x10,%esp
  106917:	a8 01                	test   $0x1,%al
  106919:	74 d2                	je     1068ed <get_ptbl_entry_by_va+0x2d>
}         
  10691b:	83 c4 0c             	add    $0xc,%esp
  10691e:	5b                   	pop    %ebx
  10691f:	5e                   	pop    %esi
  106920:	5f                   	pop    %edi
  106921:	5d                   	pop    %ebp
  106922:	c3                   	ret
  106923:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10692a:	00 
  10692b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106930 <get_pdir_entry_by_va>:

// returns the page directory entry corresponding to the given virtual address
unsigned int get_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106930:	53                   	push   %ebx
  106931:	e8 8a 9a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106936:	81 c3 be 66 00 00    	add    $0x66be,%ebx
  10693c:	83 ec 10             	sub    $0x10,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10693f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106943:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  106946:	50                   	push   %eax
  106947:	ff 74 24 1c          	push   0x1c(%esp)
  10694b:	e8 30 fb ff ff       	call   106480 <get_pdir_entry>
    return pde;
}
  106950:	83 c4 18             	add    $0x18,%esp
  106953:	5b                   	pop    %ebx
  106954:	c3                   	ret
  106955:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10695c:	00 
  10695d:	8d 76 00             	lea    0x0(%esi),%esi

00106960 <rmv_ptbl_entry_by_va>:

// removes the page table entry for the given virtual address
void rmv_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106960:	55                   	push   %ebp
  106961:	57                   	push   %edi
  106962:	56                   	push   %esi
  106963:	53                   	push   %ebx
  106964:	e8 57 9a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106969:	81 c3 8b 66 00 00    	add    $0x668b,%ebx
  10696f:	83 ec 14             	sub    $0x14,%esp
  106972:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  106976:	8b 7c 24 28          	mov    0x28(%esp),%edi
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10697a:	89 f5                	mov    %esi,%ebp
  10697c:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;

    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  10697f:	55                   	push   %ebp
  106980:	57                   	push   %edi
  106981:	e8 fa fa ff ff       	call   106480 <get_pdir_entry>
    // check the present bit of page directory entry
    if ((pde & PTE_P) == 0) {
  106986:	83 c4 10             	add    $0x10,%esp
  106989:	a8 01                	test   $0x1,%al
  10698b:	74 17                	je     1069a4 <rmv_ptbl_entry_by_va+0x44>
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  10698d:	c1 ee 0c             	shr    $0xc,%esi
    // the page directory entry is not valid for address translation
        return;
    }
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  106990:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106993:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  106999:	56                   	push   %esi
  10699a:	55                   	push   %ebp
  10699b:	57                   	push   %edi
  10699c:	e8 3f fc ff ff       	call   1065e0 <rmv_ptbl_entry>
  1069a1:	83 c4 10             	add    $0x10,%esp
}
  1069a4:	83 c4 0c             	add    $0xc,%esp
  1069a7:	5b                   	pop    %ebx
  1069a8:	5e                   	pop    %esi
  1069a9:	5f                   	pop    %edi
  1069aa:	5d                   	pop    %ebp
  1069ab:	c3                   	ret
  1069ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001069b0 <rmv_pdir_entry_by_va>:

// removes the page directory entry for the given virtual address
void rmv_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  1069b0:	53                   	push   %ebx
  1069b1:	e8 0a 9a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1069b6:	81 c3 3e 66 00 00    	add    $0x663e,%ebx
  1069bc:	83 ec 10             	sub    $0x10,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  1069bf:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1069c3:	c1 e8 16             	shr    $0x16,%eax
    rmv_pdir_entry(proc_index, pde_index);
  1069c6:	50                   	push   %eax
  1069c7:	ff 74 24 1c          	push   0x1c(%esp)
  1069cb:	e8 40 fb ff ff       	call   106510 <rmv_pdir_entry>
}
  1069d0:	83 c4 18             	add    $0x18,%esp
  1069d3:	5b                   	pop    %ebx
  1069d4:	c3                   	ret
  1069d5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1069dc:	00 
  1069dd:	8d 76 00             	lea    0x0(%esi),%esi

001069e0 <set_ptbl_entry_by_va>:

// maps the virtual address [vaddr] to the physical page # [page_index] with permission [perm]
// you do not need to worry about the page directory entry. just map the page table entry.
void set_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index, unsigned int perm)
{
  1069e0:	53                   	push   %ebx
  1069e1:	e8 da 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1069e6:	81 c3 0e 66 00 00    	add    $0x660e,%ebx
  1069ec:	83 ec 14             	sub    $0x14,%esp
  1069ef:	8b 44 24 20          	mov    0x20(%esp),%eax
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  1069f3:	ff 74 24 28          	push   0x28(%esp)
  1069f7:	ff 74 24 28          	push   0x28(%esp)
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  1069fb:	89 c2                	mov    %eax,%edx
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  1069fd:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106a00:	c1 ea 0c             	shr    $0xc,%edx
  106a03:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  106a09:	52                   	push   %edx
  106a0a:	50                   	push   %eax
  106a0b:	ff 74 24 2c          	push   0x2c(%esp)
  106a0f:	e8 5c fb ff ff       	call   106570 <set_ptbl_entry>
}
  106a14:	83 c4 28             	add    $0x28,%esp
  106a17:	5b                   	pop    %ebx
  106a18:	c3                   	ret
  106a19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106a20 <set_pdir_entry_by_va>:

// registers the mapping from [vaddr] to physical page # [page_index] in the page directory
void set_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index)
{
  106a20:	53                   	push   %ebx
  106a21:	e8 9a 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106a26:	81 c3 ce 65 00 00    	add    $0x65ce,%ebx
  106a2c:	83 ec 0c             	sub    $0xc,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    set_pdir_entry(proc_index, pde_index, page_index);
  106a2f:	ff 74 24 1c          	push   0x1c(%esp)
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  106a33:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106a37:	c1 e8 16             	shr    $0x16,%eax
    set_pdir_entry(proc_index, pde_index, page_index);
  106a3a:	50                   	push   %eax
  106a3b:	ff 74 24 1c          	push   0x1c(%esp)
  106a3f:	e8 5c fa ff ff       	call   1064a0 <set_pdir_entry>
}   
  106a44:	83 c4 18             	add    $0x18,%esp
  106a47:	5b                   	pop    %ebx
  106a48:	c3                   	ret
  106a49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106a50 <idptbl_init>:

// initializes the identity page table
// the permission for the kernel memory should be PTE_P, PTE_W, and PTE_G,
// while the permission for the rest should be PTE_P and PTE_W.
void idptbl_init(unsigned int mbi_adr)
{
  106a50:	56                   	push   %esi
    //
    container_init(mbi_adr);

    // TODO
    unsigned int addr;
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106a51:	31 f6                	xor    %esi,%esi
{
  106a53:	53                   	push   %ebx
  106a54:	e8 67 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106a59:	81 c3 9b 65 00 00    	add    $0x659b,%ebx
  106a5f:	83 ec 10             	sub    $0x10,%esp
    container_init(mbi_adr);
  106a62:	ff 74 24 1c          	push   0x1c(%esp)
  106a66:	e8 85 f4 ff ff       	call   105ef0 <container_init>
  106a6b:	83 c4 10             	add    $0x10,%esp
  106a6e:	66 90                	xchg   %ax,%ax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106a70:	89 f0                	mov    %esi,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  106a72:	89 f2                	mov    %esi,%edx
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  106a74:	8d 8e 00 00 00 c0    	lea    -0x40000000(%esi),%ecx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106a7a:	c1 e8 0c             	shr    $0xc,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  106a7d:	c1 ea 16             	shr    $0x16,%edx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106a80:	25 ff 03 00 00       	and    $0x3ff,%eax
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  106a85:	81 f9 ff ff ff af    	cmp    $0xafffffff,%ecx
  106a8b:	76 26                	jbe    106ab3 <idptbl_init+0x63>
            //kernel pages
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  106a8d:	83 ec 04             	sub    $0x4,%esp
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106a90:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  106a96:	68 03 01 00 00       	push   $0x103
  106a9b:	50                   	push   %eax
  106a9c:	52                   	push   %edx
  106a9d:	e8 0e fb ff ff       	call   1065b0 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106aa2:	83 c4 10             	add    $0x10,%esp
  106aa5:	81 fe 00 f0 ff ff    	cmp    $0xfffff000,%esi
  106aab:	75 c3                	jne    106a70 <idptbl_init+0x20>
        }else {
            //not kernel pages
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
        }
    }
  106aad:	83 c4 04             	add    $0x4,%esp
  106ab0:	5b                   	pop    %ebx
  106ab1:	5e                   	pop    %esi
  106ab2:	c3                   	ret
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  106ab3:	51                   	push   %ecx
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106ab4:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  106aba:	6a 03                	push   $0x3
  106abc:	50                   	push   %eax
  106abd:	52                   	push   %edx
  106abe:	e8 ed fa ff ff       	call   1065b0 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106ac3:	83 c4 10             	add    $0x10,%esp
  106ac6:	eb a8                	jmp    106a70 <idptbl_init+0x20>
  106ac8:	66 90                	xchg   %ax,%ax
  106aca:	66 90                	xchg   %ax,%ax
  106acc:	66 90                	xchg   %ax,%ax
  106ace:	66 90                	xchg   %ax,%ax

00106ad0 <MPTOp_test1>:
#include <lib/debug.h>
#include "export.h"

int MPTOp_test1()
{
  106ad0:	53                   	push   %ebx
  106ad1:	e8 ea 98 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106ad6:	81 c3 1e 65 00 00    	add    $0x651e,%ebx
  106adc:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  106adf:	68 00 00 00 4b       	push   $0x4b000000
  106ae4:	6a 0a                	push   $0xa
  106ae6:	e8 d5 fd ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106aeb:	83 c4 10             	add    $0x10,%esp
  106aee:	85 c0                	test   %eax,%eax
  106af0:	0f 85 0a 01 00 00    	jne    106c00 <MPTOp_test1+0x130>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  106af6:	83 ec 08             	sub    $0x8,%esp
  106af9:	68 00 00 00 4b       	push   $0x4b000000
  106afe:	6a 0a                	push   $0xa
  106b00:	e8 2b fe ff ff       	call   106930 <get_pdir_entry_by_va>
  106b05:	83 c4 10             	add    $0x10,%esp
  106b08:	85 c0                	test   %eax,%eax
  106b0a:	0f 85 c0 00 00 00    	jne    106bd0 <MPTOp_test1+0x100>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    set_pdir_entry_by_va(10, vaddr, 100);
  106b10:	83 ec 04             	sub    $0x4,%esp
  106b13:	6a 64                	push   $0x64
  106b15:	68 00 00 00 4b       	push   $0x4b000000
  106b1a:	6a 0a                	push   $0xa
  106b1c:	e8 ff fe ff ff       	call   106a20 <set_pdir_entry_by_va>
    set_ptbl_entry_by_va(10, vaddr, 100, 259);
  106b21:	68 03 01 00 00       	push   $0x103
  106b26:	6a 64                	push   $0x64
  106b28:	68 00 00 00 4b       	push   $0x4b000000
  106b2d:	6a 0a                	push   $0xa
  106b2f:	e8 ac fe ff ff       	call   1069e0 <set_ptbl_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) == 0) {
  106b34:	83 c4 18             	add    $0x18,%esp
  106b37:	68 00 00 00 4b       	push   $0x4b000000
  106b3c:	6a 0a                	push   $0xa
  106b3e:	e8 7d fd ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106b43:	83 c4 10             	add    $0x10,%esp
  106b46:	85 c0                	test   %eax,%eax
  106b48:	0f 84 02 01 00 00    	je     106c50 <MPTOp_test1+0x180>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) == 0) {
  106b4e:	83 ec 08             	sub    $0x8,%esp
  106b51:	68 00 00 00 4b       	push   $0x4b000000
  106b56:	6a 0a                	push   $0xa
  106b58:	e8 d3 fd ff ff       	call   106930 <get_pdir_entry_by_va>
  106b5d:	83 c4 10             	add    $0x10,%esp
  106b60:	85 c0                	test   %eax,%eax
  106b62:	0f 84 c0 00 00 00    	je     106c28 <MPTOp_test1+0x158>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    rmv_ptbl_entry_by_va(10, vaddr);
  106b68:	83 ec 08             	sub    $0x8,%esp
  106b6b:	68 00 00 00 4b       	push   $0x4b000000
  106b70:	6a 0a                	push   $0xa
  106b72:	e8 e9 fd ff ff       	call   106960 <rmv_ptbl_entry_by_va>
    rmv_pdir_entry_by_va(10, vaddr);
  106b77:	58                   	pop    %eax
  106b78:	5a                   	pop    %edx
  106b79:	68 00 00 00 4b       	push   $0x4b000000
  106b7e:	6a 0a                	push   $0xa
  106b80:	e8 2b fe ff ff       	call   1069b0 <rmv_pdir_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  106b85:	59                   	pop    %ecx
  106b86:	58                   	pop    %eax
  106b87:	68 00 00 00 4b       	push   $0x4b000000
  106b8c:	6a 0a                	push   $0xa
  106b8e:	e8 2d fd ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106b93:	83 c4 10             	add    $0x10,%esp
  106b96:	85 c0                	test   %eax,%eax
  106b98:	0f 85 e2 00 00 00    	jne    106c80 <MPTOp_test1+0x1b0>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  106b9e:	83 ec 08             	sub    $0x8,%esp
  106ba1:	68 00 00 00 4b       	push   $0x4b000000
  106ba6:	6a 0a                	push   $0xa
  106ba8:	e8 83 fd ff ff       	call   106930 <get_pdir_entry_by_va>
  106bad:	83 c4 10             	add    $0x10,%esp
  106bb0:	85 c0                	test   %eax,%eax
  106bb2:	0f 85 f8 00 00 00    	jne    106cb0 <MPTOp_test1+0x1e0>
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  106bb8:	83 ec 0c             	sub    $0xc,%esp
  106bbb:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  106bc1:	50                   	push   %eax
  106bc2:	e8 a5 c1 ff ff       	call   102d6c <dprintf>
    return 0;
  106bc7:	83 c4 10             	add    $0x10,%esp
  106bca:	31 c0                	xor    %eax,%eax
  106bcc:	eb 28                	jmp    106bf6 <MPTOp_test1+0x126>
  106bce:	66 90                	xchg   %ax,%ax
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  106bd0:	83 ec 08             	sub    $0x8,%esp
  106bd3:	68 00 00 00 4b       	push   $0x4b000000
  106bd8:	6a 0a                	push   $0xa
  106bda:	e8 51 fd ff ff       	call   106930 <get_pdir_entry_by_va>
  106bdf:	5a                   	pop    %edx
  106be0:	59                   	pop    %ecx
  106be1:	50                   	push   %eax
  106be2:	8d 83 42 ba ff ff    	lea    -0x45be(%ebx),%eax
  106be8:	50                   	push   %eax
  106be9:	e8 7e c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106bee:	83 c4 10             	add    $0x10,%esp
        return 1;
  106bf1:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106bf6:	83 c4 08             	add    $0x8,%esp
  106bf9:	5b                   	pop    %ebx
  106bfa:	c3                   	ret
  106bfb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106c00:	83 ec 08             	sub    $0x8,%esp
  106c03:	68 00 00 00 4b       	push   $0x4b000000
  106c08:	6a 0a                	push   $0xa
  106c0a:	e8 b1 fc ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106c0f:	5a                   	pop    %edx
  106c10:	59                   	pop    %ecx
  106c11:	50                   	push   %eax
  106c12:	8d 83 26 ba ff ff    	lea    -0x45da(%ebx),%eax
  106c18:	50                   	push   %eax
  106c19:	e8 4e c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106c1e:	83 c4 10             	add    $0x10,%esp
  106c21:	eb ce                	jmp    106bf1 <MPTOp_test1+0x121>
  106c23:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
  106c28:	83 ec 08             	sub    $0x8,%esp
  106c2b:	68 00 00 00 4b       	push   $0x4b000000
  106c30:	6a 0a                	push   $0xa
  106c32:	e8 f9 fc ff ff       	call   106930 <get_pdir_entry_by_va>
  106c37:	5a                   	pop    %edx
  106c38:	59                   	pop    %ecx
  106c39:	50                   	push   %eax
  106c3a:	8d 83 7a ba ff ff    	lea    -0x4586(%ebx),%eax
  106c40:	50                   	push   %eax
  106c41:	e8 26 c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106c46:	83 c4 10             	add    $0x10,%esp
  106c49:	eb a6                	jmp    106bf1 <MPTOp_test1+0x121>
  106c4b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106c50:	83 ec 08             	sub    $0x8,%esp
  106c53:	68 00 00 00 4b       	push   $0x4b000000
  106c58:	6a 0a                	push   $0xa
  106c5a:	e8 61 fc ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106c5f:	5a                   	pop    %edx
  106c60:	59                   	pop    %ecx
  106c61:	50                   	push   %eax
  106c62:	8d 83 5e ba ff ff    	lea    -0x45a2(%ebx),%eax
  106c68:	50                   	push   %eax
  106c69:	e8 fe c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106c6e:	83 c4 10             	add    $0x10,%esp
  106c71:	e9 7b ff ff ff       	jmp    106bf1 <MPTOp_test1+0x121>
  106c76:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106c7d:	00 
  106c7e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106c80:	83 ec 08             	sub    $0x8,%esp
  106c83:	68 00 00 00 4b       	push   $0x4b000000
  106c88:	6a 0a                	push   $0xa
  106c8a:	e8 31 fc ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106c8f:	5a                   	pop    %edx
  106c90:	59                   	pop    %ecx
  106c91:	50                   	push   %eax
  106c92:	8d 83 96 ba ff ff    	lea    -0x456a(%ebx),%eax
  106c98:	50                   	push   %eax
  106c99:	e8 ce c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106c9e:	83 c4 10             	add    $0x10,%esp
  106ca1:	e9 4b ff ff ff       	jmp    106bf1 <MPTOp_test1+0x121>
  106ca6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106cad:	00 
  106cae:	66 90                	xchg   %ax,%ax
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  106cb0:	83 ec 08             	sub    $0x8,%esp
  106cb3:	68 00 00 00 4b       	push   $0x4b000000
  106cb8:	6a 0a                	push   $0xa
  106cba:	e8 71 fc ff ff       	call   106930 <get_pdir_entry_by_va>
  106cbf:	5a                   	pop    %edx
  106cc0:	59                   	pop    %ecx
  106cc1:	50                   	push   %eax
  106cc2:	8d 83 b2 ba ff ff    	lea    -0x454e(%ebx),%eax
  106cc8:	50                   	push   %eax
  106cc9:	e8 9e c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106cce:	83 c4 10             	add    $0x10,%esp
  106cd1:	e9 1b ff ff ff       	jmp    106bf1 <MPTOp_test1+0x121>
  106cd6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106cdd:	00 
  106cde:	66 90                	xchg   %ax,%ax

00106ce0 <MPTOp_test_own>:
int MPTOp_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106ce0:	31 c0                	xor    %eax,%eax
  106ce2:	c3                   	ret
  106ce3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106cea:	00 
  106ceb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106cf0 <test_MPTOp>:

int test_MPTOp()
{
    return MPTOp_test1() + MPTOp_test_own();
  106cf0:	e9 db fd ff ff       	jmp    106ad0 <MPTOp_test1>
  106cf5:	66 90                	xchg   %ax,%ax
  106cf7:	66 90                	xchg   %ax,%ax
  106cf9:	66 90                	xchg   %ax,%ax
  106cfb:	66 90                	xchg   %ax,%ax
  106cfd:	66 90                	xchg   %ax,%ax
  106cff:	90                   	nop

00106d00 <pdir_init>:
 * For each process from id 0 to NUM_IDS -1,
 * set the page directory entries sothat the kernel portion of the map as identity map,
 * and the rest of page directories are unmmaped.
 */
void pdir_init(unsigned int mbi_adr)
{
  106d00:	57                   	push   %edi
    int i, j;
    
    idptbl_init(mbi_adr);

    //set other processes
    for(i = 0; i < NUM_IDS; i++){
  106d01:	31 ff                	xor    %edi,%edi
{
  106d03:	56                   	push   %esi
  106d04:	53                   	push   %ebx
  106d05:	e8 b6 96 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106d0a:	81 c3 ea 62 00 00    	add    $0x62ea,%ebx
    idptbl_init(mbi_adr);
  106d10:	83 ec 0c             	sub    $0xc,%esp
  106d13:	ff 74 24 1c          	push   0x1c(%esp)
  106d17:	e8 34 fd ff ff       	call   106a50 <idptbl_init>
  106d1c:	83 c4 10             	add    $0x10,%esp
  106d1f:	90                   	nop
      //kernel address, set to identity
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106d20:	31 f6                	xor    %esi,%esi
  106d22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        set_pdir_entry_identity(i, j);
  106d28:	83 ec 08             	sub    $0x8,%esp
  106d2b:	56                   	push   %esi
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106d2c:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  106d2f:	57                   	push   %edi
  106d30:	e8 9b f7 ff ff       	call   1064d0 <set_pdir_entry_identity>
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106d35:	83 c4 10             	add    $0x10,%esp
  106d38:	81 fe 00 01 00 00    	cmp    $0x100,%esi
  106d3e:	75 e8                	jne    106d28 <pdir_init+0x28>
      }
      //normal address, set to unmap
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
        rmv_pdir_entry(i, j);
  106d40:	83 ec 08             	sub    $0x8,%esp
  106d43:	56                   	push   %esi
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  106d44:	83 c6 01             	add    $0x1,%esi
        rmv_pdir_entry(i, j);
  106d47:	57                   	push   %edi
  106d48:	e8 c3 f7 ff ff       	call   106510 <rmv_pdir_entry>
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  106d4d:	83 c4 10             	add    $0x10,%esp
  106d50:	81 fe c0 03 00 00    	cmp    $0x3c0,%esi
  106d56:	75 e8                	jne    106d40 <pdir_init+0x40>
  106d58:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d5f:	00 
      }
      //kernel address, set to identity
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
        set_pdir_entry_identity(i, j);
  106d60:	83 ec 08             	sub    $0x8,%esp
  106d63:	56                   	push   %esi
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  106d64:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  106d67:	57                   	push   %edi
  106d68:	e8 63 f7 ff ff       	call   1064d0 <set_pdir_entry_identity>
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  106d6d:	83 c4 10             	add    $0x10,%esp
  106d70:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  106d76:	75 e8                	jne    106d60 <pdir_init+0x60>
    for(i = 0; i < NUM_IDS; i++){
  106d78:	83 c7 01             	add    $0x1,%edi
  106d7b:	83 ff 40             	cmp    $0x40,%edi
  106d7e:	75 a0                	jne    106d20 <pdir_init+0x20>
      }
    }
    
}
  106d80:	5b                   	pop    %ebx
  106d81:	5e                   	pop    %esi
  106d82:	5f                   	pop    %edi
  106d83:	c3                   	ret
  106d84:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d8b:	00 
  106d8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106d90 <alloc_ptbl>:
 * and clears (set to 0) the whole page table entries for this newly mapped page table.
 * It returns the page index of the newly allocated physical page.
 * In the case when there's no physical page available, it returns 0.
 */
unsigned int alloc_ptbl(unsigned int proc_index, unsigned int vadr)
{
  106d90:	57                   	push   %edi
  106d91:	56                   	push   %esi
  106d92:	53                   	push   %ebx
  106d93:	8b 7c 24 10          	mov    0x10(%esp),%edi
  106d97:	e8 24 96 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106d9c:	81 c3 58 62 00 00    	add    $0x6258,%ebx
  // TODO
  unsigned int addr;
  unsigned int page_index;
  page_index = container_alloc(proc_index);
  106da2:	83 ec 0c             	sub    $0xc,%esp
  106da5:	57                   	push   %edi
  106da6:	e8 45 f3 ff ff       	call   1060f0 <container_alloc>
  if(page_index == 0) return 0;//no physical page vailable
  106dab:	83 c4 10             	add    $0x10,%esp
  page_index = container_alloc(proc_index);
  106dae:	89 c6                	mov    %eax,%esi
  if(page_index == 0) return 0;//no physical page vailable
  106db0:	85 c0                	test   %eax,%eax
  106db2:	75 0c                	jne    106dc0 <alloc_ptbl+0x30>
  // addr increases 4 per step, since entry is 4 bytes
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
    *(unsigned int *)addr &= 0x00000000; 
  }
  return page_index;
}
  106db4:	89 f0                	mov    %esi,%eax
  106db6:	5b                   	pop    %ebx
  106db7:	5e                   	pop    %esi
  106db8:	5f                   	pop    %edi
  106db9:	c3                   	ret
  106dba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  set_pdir_entry_by_va(proc_index, vadr, page_index);
  106dc0:	83 ec 04             	sub    $0x4,%esp
  106dc3:	50                   	push   %eax
  106dc4:	ff 74 24 1c          	push   0x1c(%esp)
  106dc8:	57                   	push   %edi
  106dc9:	e8 52 fc ff ff       	call   106a20 <set_pdir_entry_by_va>
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106dce:	89 f0                	mov    %esi,%eax
  106dd0:	8d 56 01             	lea    0x1(%esi),%edx
  106dd3:	83 c4 10             	add    $0x10,%esp
  106dd6:	c1 e0 0c             	shl    $0xc,%eax
  106dd9:	c1 e2 0c             	shl    $0xc,%edx
  106ddc:	39 d0                	cmp    %edx,%eax
  106dde:	73 d4                	jae    106db4 <alloc_ptbl+0x24>
    *(unsigned int *)addr &= 0x00000000; 
  106de0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106de6:	83 c0 04             	add    $0x4,%eax
  106de9:	39 d0                	cmp    %edx,%eax
  106deb:	73 c7                	jae    106db4 <alloc_ptbl+0x24>
  106ded:	b9 01 00 00 00       	mov    $0x1,%ecx
  106df2:	85 c9                	test   %ecx,%ecx
  106df4:	74 12                	je     106e08 <alloc_ptbl+0x78>
    *(unsigned int *)addr &= 0x00000000; 
  106df6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106dfc:	83 c0 04             	add    $0x4,%eax
  106dff:	39 d0                	cmp    %edx,%eax
  106e01:	73 b1                	jae    106db4 <alloc_ptbl+0x24>
  106e03:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    *(unsigned int *)addr &= 0x00000000; 
  106e08:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106e0e:	83 c0 08             	add    $0x8,%eax
    *(unsigned int *)addr &= 0x00000000; 
  106e11:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106e18:	39 d0                	cmp    %edx,%eax
  106e1a:	72 ec                	jb     106e08 <alloc_ptbl+0x78>
  106e1c:	eb 96                	jmp    106db4 <alloc_ptbl+0x24>
  106e1e:	66 90                	xchg   %ax,%ax

00106e20 <free_ptbl>:

// Reverse operation of alloc_ptbl.
// Removes corresponding page directory entry,
// and frees the page for the page table entries (with container_free).
void free_ptbl(unsigned int proc_index, unsigned int vadr)
{
  106e20:	55                   	push   %ebp
  106e21:	57                   	push   %edi
  106e22:	56                   	push   %esi
  106e23:	53                   	push   %ebx
  106e24:	e8 97 95 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106e29:	81 c3 cb 61 00 00    	add    $0x61cb,%ebx
  106e2f:	83 ec 14             	sub    $0x14,%esp
  106e32:	8b 7c 24 28          	mov    0x28(%esp),%edi
  106e36:	8b 6c 24 2c          	mov    0x2c(%esp),%ebp
  // TODO
  unsigned int pdir_entry;
  unsigned int page_index;
  pdir_entry = get_pdir_entry_by_va(proc_index, vadr);
  106e3a:	55                   	push   %ebp
  106e3b:	57                   	push   %edi
  106e3c:	e8 ef fa ff ff       	call   106930 <get_pdir_entry_by_va>
  106e41:	89 c6                	mov    %eax,%esi
  page_index = pdir_entry >> 12;
  // remove page directory entry
  rmv_pdir_entry_by_va(proc_index, vadr);
  106e43:	58                   	pop    %eax
  106e44:	5a                   	pop    %edx
  106e45:	55                   	push   %ebp
  106e46:	57                   	push   %edi
  page_index = pdir_entry >> 12;
  106e47:	c1 ee 0c             	shr    $0xc,%esi
  rmv_pdir_entry_by_va(proc_index, vadr);
  106e4a:	e8 61 fb ff ff       	call   1069b0 <rmv_pdir_entry_by_va>

  //free the page for the page table entities
  container_free(proc_index, page_index);
  106e4f:	59                   	pop    %ecx
  106e50:	5d                   	pop    %ebp
  106e51:	56                   	push   %esi
  106e52:	57                   	push   %edi
  106e53:	e8 e8 f2 ff ff       	call   106140 <container_free>
  106e58:	83 c4 1c             	add    $0x1c,%esp
  106e5b:	5b                   	pop    %ebx
  106e5c:	5e                   	pop    %esi
  106e5d:	5f                   	pop    %edi
  106e5e:	5d                   	pop    %ebp
  106e5f:	c3                   	ret

00106e60 <MPTComm_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTComm_test1()
{
  106e60:	55                   	push   %ebp
  106e61:	57                   	push   %edi
  106e62:	bf 03 01 00 00       	mov    $0x103,%edi
  106e67:	56                   	push   %esi
    unsigned int i;
    for (i = 0; i < 1024; i++) {
  106e68:	31 f6                	xor    %esi,%esi
{
  106e6a:	53                   	push   %ebx
  106e6b:	e8 50 95 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106e70:	81 c3 84 61 00 00    	add    $0x6184,%ebx
  106e76:	83 ec 0c             	sub    $0xc,%esp
  106e79:	eb 0e                	jmp    106e89 <MPTComm_test1+0x29>
  106e7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    for (i = 0; i < 1024; i++) {
  106e80:	83 c6 01             	add    $0x1,%esi
  106e83:	81 c7 00 00 40 00    	add    $0x400000,%edi
        if (i < 256 || i >= 960) {
  106e89:	8d 86 00 ff ff ff    	lea    -0x100(%esi),%eax
  106e8f:	3d bf 02 00 00       	cmp    $0x2bf,%eax
  106e94:	76 ea                	jbe    106e80 <MPTComm_test1+0x20>
            if (get_ptbl_entry_by_va(10, i * 4096 * 1024) !=
  106e96:	89 f5                	mov    %esi,%ebp
  106e98:	52                   	push   %edx
  106e99:	c1 e5 16             	shl    $0x16,%ebp
  106e9c:	52                   	push   %edx
  106e9d:	55                   	push   %ebp
  106e9e:	6a 0a                	push   $0xa
  106ea0:	e8 1b fa ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106ea5:	83 c4 10             	add    $0x10,%esp
  106ea8:	39 f8                	cmp    %edi,%eax
  106eaa:	75 2d                	jne    106ed9 <MPTComm_test1+0x79>
    for (i = 0; i < 1024; i++) {
  106eac:	83 c6 01             	add    $0x1,%esi
  106eaf:	81 c7 00 00 40 00    	add    $0x400000,%edi
  106eb5:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  106ebb:	75 cc                	jne    106e89 <MPTComm_test1+0x29>
                        i * 4096 * 1024 + 259);
                return 1;
            }
        }
    }
    dprintf("test 1 passed.\n");
  106ebd:	83 ec 0c             	sub    $0xc,%esp
  106ec0:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  106ec6:	50                   	push   %eax
  106ec7:	e8 a0 be ff ff       	call   102d6c <dprintf>
    return 0;
  106ecc:	83 c4 10             	add    $0x10,%esp
  106ecf:	31 c0                	xor    %eax,%eax
}
  106ed1:	83 c4 0c             	add    $0xc,%esp
  106ed4:	5b                   	pop    %ebx
  106ed5:	5e                   	pop    %esi
  106ed6:	5f                   	pop    %edi
  106ed7:	5d                   	pop    %ebp
  106ed8:	c3                   	ret
                dprintf("test 1.1 failed (i = %d): (%d != %d)\n",
  106ed9:	50                   	push   %eax
  106eda:	50                   	push   %eax
  106edb:	55                   	push   %ebp
  106edc:	6a 0a                	push   $0xa
  106ede:	e8 dd f9 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106ee3:	57                   	push   %edi
  106ee4:	50                   	push   %eax
  106ee5:	8d 83 80 bb ff ff    	lea    -0x4480(%ebx),%eax
  106eeb:	56                   	push   %esi
  106eec:	50                   	push   %eax
  106eed:	e8 7a be ff ff       	call   102d6c <dprintf>
                return 1;
  106ef2:	83 c4 20             	add    $0x20,%esp
  106ef5:	b8 01 00 00 00       	mov    $0x1,%eax
  106efa:	eb d5                	jmp    106ed1 <MPTComm_test1+0x71>
  106efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106f00 <MPTComm_test2>:

int MPTComm_test2()
{
  106f00:	53                   	push   %ebx
  106f01:	e8 ba 94 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106f06:	81 c3 ee 60 00 00    	add    $0x60ee,%ebx
  106f0c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 300 * 4096 * 1024;
    container_split(0, 100);
  106f0f:	6a 64                	push   $0x64
  106f11:	6a 00                	push   $0x0
  106f13:	e8 78 f1 ff ff       	call   106090 <container_split>
    alloc_ptbl(1, vaddr);
  106f18:	59                   	pop    %ecx
  106f19:	58                   	pop    %eax
  106f1a:	68 00 00 00 4b       	push   $0x4b000000
  106f1f:	6a 01                	push   $0x1
  106f21:	e8 6a fe ff ff       	call   106d90 <alloc_ptbl>
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  106f26:	58                   	pop    %eax
  106f27:	5a                   	pop    %edx
  106f28:	68 00 00 00 4b       	push   $0x4b000000
  106f2d:	6a 01                	push   $0x1
  106f2f:	e8 fc f9 ff ff       	call   106930 <get_pdir_entry_by_va>
  106f34:	83 c4 10             	add    $0x10,%esp
  106f37:	85 c0                	test   %eax,%eax
  106f39:	0f 84 89 00 00 00    	je     106fc8 <MPTComm_test2+0xc8>
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  106f3f:	83 ec 08             	sub    $0x8,%esp
  106f42:	68 00 00 00 4b       	push   $0x4b000000
  106f47:	6a 01                	push   $0x1
  106f49:	e8 72 f9 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106f4e:	83 c4 10             	add    $0x10,%esp
  106f51:	85 c0                	test   %eax,%eax
  106f53:	75 43                	jne    106f98 <MPTComm_test2+0x98>
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    free_ptbl(1, vaddr);
  106f55:	83 ec 08             	sub    $0x8,%esp
  106f58:	68 00 00 00 4b       	push   $0x4b000000
  106f5d:	6a 01                	push   $0x1
  106f5f:	e8 bc fe ff ff       	call   106e20 <free_ptbl>
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  106f64:	58                   	pop    %eax
  106f65:	5a                   	pop    %edx
  106f66:	68 00 00 00 4b       	push   $0x4b000000
  106f6b:	6a 01                	push   $0x1
  106f6d:	e8 be f9 ff ff       	call   106930 <get_pdir_entry_by_va>
  106f72:	83 c4 10             	add    $0x10,%esp
  106f75:	85 c0                	test   %eax,%eax
  106f77:	75 77                	jne    106ff0 <MPTComm_test2+0xf0>
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 2 passed.\n");
  106f79:	83 ec 0c             	sub    $0xc,%esp
  106f7c:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  106f82:	50                   	push   %eax
  106f83:	e8 e4 bd ff ff       	call   102d6c <dprintf>
    return 0;
  106f88:	83 c4 10             	add    $0x10,%esp
  106f8b:	31 c0                	xor    %eax,%eax
}
  106f8d:	83 c4 08             	add    $0x8,%esp
  106f90:	5b                   	pop    %ebx
  106f91:	c3                   	ret
  106f92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106f98:	83 ec 08             	sub    $0x8,%esp
  106f9b:	68 00 00 00 4b       	push   $0x4b000000
  106fa0:	6a 01                	push   $0x1
  106fa2:	e8 19 f9 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  106fa7:	59                   	pop    %ecx
  106fa8:	5a                   	pop    %edx
  106fa9:	50                   	push   %eax
  106faa:	8d 83 0a ba ff ff    	lea    -0x45f6(%ebx),%eax
  106fb0:	50                   	push   %eax
  106fb1:	e8 b6 bd ff ff       	call   102d6c <dprintf>
        return 1;
  106fb6:	83 c4 10             	add    $0x10,%esp
}
  106fb9:	83 c4 08             	add    $0x8,%esp
        return 1;
  106fbc:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106fc1:	5b                   	pop    %ebx
  106fc2:	c3                   	ret
  106fc3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  106fc8:	83 ec 08             	sub    $0x8,%esp
  106fcb:	68 00 00 00 4b       	push   $0x4b000000
  106fd0:	6a 01                	push   $0x1
  106fd2:	e8 59 f9 ff ff       	call   106930 <get_pdir_entry_by_va>
  106fd7:	59                   	pop    %ecx
  106fd8:	5a                   	pop    %edx
  106fd9:	50                   	push   %eax
  106fda:	8d 83 ce ba ff ff    	lea    -0x4532(%ebx),%eax
  106fe0:	50                   	push   %eax
  106fe1:	e8 86 bd ff ff       	call   102d6c <dprintf>
        return 1;
  106fe6:	83 c4 10             	add    $0x10,%esp
  106fe9:	eb ce                	jmp    106fb9 <MPTComm_test2+0xb9>
  106feb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  106ff0:	83 ec 08             	sub    $0x8,%esp
  106ff3:	68 00 00 00 4b       	push   $0x4b000000
  106ff8:	6a 01                	push   $0x1
  106ffa:	e8 31 f9 ff ff       	call   106930 <get_pdir_entry_by_va>
  106fff:	5a                   	pop    %edx
  107000:	59                   	pop    %ecx
  107001:	50                   	push   %eax
  107002:	8d 83 ea ba ff ff    	lea    -0x4516(%ebx),%eax
  107008:	50                   	push   %eax
  107009:	e8 5e bd ff ff       	call   102d6c <dprintf>
        return 1;
  10700e:	83 c4 10             	add    $0x10,%esp
  107011:	eb a6                	jmp    106fb9 <MPTComm_test2+0xb9>
  107013:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10701a:	00 
  10701b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107020 <MPTComm_test_own>:
int MPTComm_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  107020:	31 c0                	xor    %eax,%eax
  107022:	c3                   	ret
  107023:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10702a:	00 
  10702b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107030 <test_MPTComm>:

int test_MPTComm()
{
  107030:	53                   	push   %ebx
  107031:	83 ec 08             	sub    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  107034:	e8 27 fe ff ff       	call   106e60 <MPTComm_test1>
  107039:	89 c3                	mov    %eax,%ebx
  10703b:	e8 c0 fe ff ff       	call   106f00 <MPTComm_test2>
}
  107040:	83 c4 08             	add    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  107043:	01 d8                	add    %ebx,%eax
}
  107045:	5b                   	pop    %ebx
  107046:	c3                   	ret
  107047:	66 90                	xchg   %ax,%ax
  107049:	66 90                	xchg   %ax,%ax
  10704b:	66 90                	xchg   %ax,%ax
  10704d:	66 90                	xchg   %ax,%ax
  10704f:	90                   	nop

00107050 <pdir_init_kern>:
/**
 * Sets the entire page map for process 0 as identity map.
 * Note that part of the task is already completed by pdir_init.
 */
void pdir_init_kern(unsigned int mbi_adr)
{
  107050:	56                   	push   %esi
    // TODO: define your local variables here.

    pdir_init(mbi_adr);
    
    //TODO
    unsigned int pde_index = 0;
  107051:	31 f6                	xor    %esi,%esi
{
  107053:	53                   	push   %ebx
  107054:	e8 67 93 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107059:	81 c3 9b 5f 00 00    	add    $0x5f9b,%ebx
  10705f:	83 ec 10             	sub    $0x10,%esp
    pdir_init(mbi_adr);
  107062:	ff 74 24 1c          	push   0x1c(%esp)
  107066:	e8 95 fc ff ff       	call   106d00 <pdir_init>
  10706b:	83 c4 10             	add    $0x10,%esp
  10706e:	66 90                	xchg   %ax,%ax
    for (; pde_index < 1024; pde_index++) {
        set_pdir_entry_identity(0, pde_index);
  107070:	83 ec 08             	sub    $0x8,%esp
  107073:	56                   	push   %esi
    for (; pde_index < 1024; pde_index++) {
  107074:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(0, pde_index);
  107077:	6a 00                	push   $0x0
  107079:	e8 52 f4 ff ff       	call   1064d0 <set_pdir_entry_identity>
    for (; pde_index < 1024; pde_index++) {
  10707e:	83 c4 10             	add    $0x10,%esp
  107081:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  107087:	75 e7                	jne    107070 <pdir_init_kern+0x20>
    }
}
  107089:	83 c4 04             	add    $0x4,%esp
  10708c:	5b                   	pop    %ebx
  10708d:	5e                   	pop    %esi
  10708e:	c3                   	ret
  10708f:	90                   	nop

00107090 <map_page>:
 * In the case of error, it returns the constant MagicNumber defined in lib/x86.h,
 * otherwise, it returns the physical page index registered in the page directory,
 * e.g., the return value of get_pdir_entry_by_va or alloc_ptbl.
 */
unsigned int map_page(unsigned int proc_index, unsigned int vadr, unsigned int page_index, unsigned int perm)
{   
  107090:	57                   	push   %edi
  107091:	56                   	push   %esi
  107092:	53                   	push   %ebx
  107093:	8b 74 24 10          	mov    0x10(%esp),%esi
  107097:	e8 24 93 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10709c:	81 c3 58 5f 00 00    	add    $0x5f58,%ebx
  1070a2:	8b 7c 24 14          	mov    0x14(%esp),%edi
  // TODO
  unsigned int pde = get_pdir_entry_by_va(proc_index, vadr);
  1070a6:	83 ec 08             	sub    $0x8,%esp
  1070a9:	57                   	push   %edi
  1070aa:	56                   	push   %esi
  1070ab:	e8 80 f8 ff ff       	call   106930 <get_pdir_entry_by_va>
  unsigned int ptbl;
  if ((pde & PTE_P) == 0) {
  1070b0:	83 c4 10             	add    $0x10,%esp
  1070b3:	a8 01                	test   $0x1,%al
  1070b5:	75 11                	jne    1070c8 <map_page+0x38>
    ptbl = alloc_ptbl(proc_index, vadr);
  1070b7:	83 ec 08             	sub    $0x8,%esp
  1070ba:	57                   	push   %edi
  1070bb:	56                   	push   %esi
  1070bc:	e8 cf fc ff ff       	call   106d90 <alloc_ptbl>
    if (ptbl == 0) {
  1070c1:	83 c4 10             	add    $0x10,%esp
  1070c4:	85 c0                	test   %eax,%eax
  1070c6:	74 28                	je     1070f0 <map_page+0x60>
      //no physical page available
      return MagicNumber;
    }
  }
  set_ptbl_entry_by_va(proc_index, vadr, page_index, perm);
  1070c8:	ff 74 24 1c          	push   0x1c(%esp)
  1070cc:	ff 74 24 1c          	push   0x1c(%esp)
  1070d0:	57                   	push   %edi
  1070d1:	56                   	push   %esi
  1070d2:	e8 09 f9 ff ff       	call   1069e0 <set_ptbl_entry_by_va>
  pde = get_pdir_entry_by_va(proc_index, vadr);
  1070d7:	58                   	pop    %eax
  1070d8:	5a                   	pop    %edx
  1070d9:	57                   	push   %edi
  1070da:	56                   	push   %esi
  1070db:	e8 50 f8 ff ff       	call   106930 <get_pdir_entry_by_va>
  return pde >> 12;
  1070e0:	83 c4 10             	add    $0x10,%esp
}
  1070e3:	5b                   	pop    %ebx
  return pde >> 12;
  1070e4:	c1 e8 0c             	shr    $0xc,%eax
}
  1070e7:	5e                   	pop    %esi
  1070e8:	5f                   	pop    %edi
  1070e9:	c3                   	ret
  1070ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1070f0:	5b                   	pop    %ebx
      return MagicNumber;
  1070f1:	b8 01 00 10 00       	mov    $0x100001,%eax
}
  1070f6:	5e                   	pop    %esi
  1070f7:	5f                   	pop    %edi
  1070f8:	c3                   	ret
  1070f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00107100 <unmap_page>:
 * Nothing should be done if the mapping no longer exists.
 * You do not need to unmap the page table from the page directory.
 * It should return the corresponding page table entry.
 */
unsigned int unmap_page(unsigned int proc_index, unsigned int vadr)
{
  107100:	57                   	push   %edi
  107101:	56                   	push   %esi
  107102:	53                   	push   %ebx
  107103:	8b 74 24 10          	mov    0x10(%esp),%esi
  107107:	e8 b4 92 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10710c:	81 c3 e8 5e 00 00    	add    $0x5ee8,%ebx
  107112:	8b 7c 24 14          	mov    0x14(%esp),%edi
  // TODO
  unsigned int pte = get_ptbl_entry_by_va(proc_index, vadr);
  107116:	83 ec 08             	sub    $0x8,%esp
  107119:	57                   	push   %edi
  10711a:	56                   	push   %esi
  10711b:	e8 a0 f7 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  if ((pte & PTE_P) == 0) {
  107120:	83 c4 10             	add    $0x10,%esp
  107123:	a8 01                	test   $0x1,%al
  107125:	74 16                	je     10713d <unmap_page+0x3d>
    return pte;
  }
  rmv_ptbl_entry_by_va(proc_index, vadr);
  107127:	83 ec 08             	sub    $0x8,%esp
  10712a:	57                   	push   %edi
  10712b:	56                   	push   %esi
  10712c:	e8 2f f8 ff ff       	call   106960 <rmv_ptbl_entry_by_va>
  pte = get_ptbl_entry_by_va(proc_index, vadr);
  107131:	58                   	pop    %eax
  107132:	5a                   	pop    %edx
  107133:	57                   	push   %edi
  107134:	56                   	push   %esi
  107135:	e8 86 f7 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  return pte;
  10713a:	83 c4 10             	add    $0x10,%esp
  10713d:	5b                   	pop    %ebx
  10713e:	5e                   	pop    %esi
  10713f:	5f                   	pop    %edi
  107140:	c3                   	ret
  107141:	66 90                	xchg   %ax,%ax
  107143:	66 90                	xchg   %ax,%ax
  107145:	66 90                	xchg   %ax,%ax
  107147:	66 90                	xchg   %ax,%ax
  107149:	66 90                	xchg   %ax,%ax
  10714b:	66 90                	xchg   %ax,%ax
  10714d:	66 90                	xchg   %ax,%ax
  10714f:	90                   	nop

00107150 <MPTKern_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTKern_test1()
{
  107150:	53                   	push   %ebx
  107151:	e8 6a 92 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107156:	81 c3 9e 5e 00 00    	add    $0x5e9e,%ebx
  10715c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    container_split(0, 100);
  10715f:	6a 64                	push   $0x64
  107161:	6a 00                	push   $0x0
  107163:	e8 28 ef ff ff       	call   106090 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  107168:	58                   	pop    %eax
  107169:	5a                   	pop    %edx
  10716a:	68 00 00 00 4b       	push   $0x4b000000
  10716f:	6a 01                	push   $0x1
  107171:	e8 4a f7 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  107176:	83 c4 10             	add    $0x10,%esp
  107179:	85 c0                	test   %eax,%eax
  10717b:	0f 85 cf 00 00 00    	jne    107250 <MPTKern_test1+0x100>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  107181:	83 ec 08             	sub    $0x8,%esp
  107184:	68 00 00 00 4b       	push   $0x4b000000
  107189:	6a 01                	push   $0x1
  10718b:	e8 a0 f7 ff ff       	call   106930 <get_pdir_entry_by_va>
  107190:	83 c4 10             	add    $0x10,%esp
  107193:	85 c0                	test   %eax,%eax
  107195:	0f 85 85 00 00 00    	jne    107220 <MPTKern_test1+0xd0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    map_page(1, vaddr, 100, 7);
  10719b:	6a 07                	push   $0x7
  10719d:	6a 64                	push   $0x64
  10719f:	68 00 00 00 4b       	push   $0x4b000000
  1071a4:	6a 01                	push   $0x1
  1071a6:	e8 e5 fe ff ff       	call   107090 <map_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  1071ab:	59                   	pop    %ecx
  1071ac:	58                   	pop    %eax
  1071ad:	68 00 00 00 4b       	push   $0x4b000000
  1071b2:	6a 01                	push   $0x1
  1071b4:	e8 07 f7 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  1071b9:	83 c4 10             	add    $0x10,%esp
  1071bc:	85 c0                	test   %eax,%eax
  1071be:	0f 84 dc 00 00 00    	je     1072a0 <MPTKern_test1+0x150>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  1071c4:	83 ec 08             	sub    $0x8,%esp
  1071c7:	68 00 00 00 4b       	push   $0x4b000000
  1071cc:	6a 01                	push   $0x1
  1071ce:	e8 5d f7 ff ff       	call   106930 <get_pdir_entry_by_va>
  1071d3:	83 c4 10             	add    $0x10,%esp
  1071d6:	85 c0                	test   %eax,%eax
  1071d8:	0f 84 9a 00 00 00    	je     107278 <MPTKern_test1+0x128>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    unmap_page(1, vaddr);
  1071de:	83 ec 08             	sub    $0x8,%esp
  1071e1:	68 00 00 00 4b       	push   $0x4b000000
  1071e6:	6a 01                	push   $0x1
  1071e8:	e8 13 ff ff ff       	call   107100 <unmap_page>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  1071ed:	58                   	pop    %eax
  1071ee:	5a                   	pop    %edx
  1071ef:	68 00 00 00 4b       	push   $0x4b000000
  1071f4:	6a 01                	push   $0x1
  1071f6:	e8 c5 f6 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  1071fb:	83 c4 10             	add    $0x10,%esp
  1071fe:	85 c0                	test   %eax,%eax
  107200:	0f 85 ca 00 00 00    	jne    1072d0 <MPTKern_test1+0x180>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  107206:	83 ec 0c             	sub    $0xc,%esp
  107209:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  10720f:	50                   	push   %eax
  107210:	e8 57 bb ff ff       	call   102d6c <dprintf>
    return 0;
  107215:	83 c4 10             	add    $0x10,%esp
  107218:	31 c0                	xor    %eax,%eax
}
  10721a:	83 c4 08             	add    $0x8,%esp
  10721d:	5b                   	pop    %ebx
  10721e:	c3                   	ret
  10721f:	90                   	nop
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  107220:	83 ec 08             	sub    $0x8,%esp
  107223:	68 00 00 00 4b       	push   $0x4b000000
  107228:	6a 01                	push   $0x1
  10722a:	e8 01 f7 ff ff       	call   106930 <get_pdir_entry_by_va>
  10722f:	5a                   	pop    %edx
  107230:	59                   	pop    %ecx
  107231:	50                   	push   %eax
  107232:	8d 83 42 ba ff ff    	lea    -0x45be(%ebx),%eax
  107238:	50                   	push   %eax
  107239:	e8 2e bb ff ff       	call   102d6c <dprintf>
        return 1;
  10723e:	83 c4 10             	add    $0x10,%esp
}
  107241:	83 c4 08             	add    $0x8,%esp
        return 1;
  107244:	b8 01 00 00 00       	mov    $0x1,%eax
}
  107249:	5b                   	pop    %ebx
  10724a:	c3                   	ret
  10724b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  107250:	83 ec 08             	sub    $0x8,%esp
  107253:	68 00 00 00 4b       	push   $0x4b000000
  107258:	6a 01                	push   $0x1
  10725a:	e8 61 f6 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  10725f:	5a                   	pop    %edx
  107260:	59                   	pop    %ecx
  107261:	50                   	push   %eax
  107262:	8d 83 26 ba ff ff    	lea    -0x45da(%ebx),%eax
  107268:	50                   	push   %eax
  107269:	e8 fe ba ff ff       	call   102d6c <dprintf>
        return 1;
  10726e:	83 c4 10             	add    $0x10,%esp
  107271:	eb ce                	jmp    107241 <MPTKern_test1+0xf1>
  107273:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  107278:	83 ec 08             	sub    $0x8,%esp
  10727b:	68 00 00 00 4b       	push   $0x4b000000
  107280:	6a 01                	push   $0x1
  107282:	e8 a9 f6 ff ff       	call   106930 <get_pdir_entry_by_va>
  107287:	59                   	pop    %ecx
  107288:	5a                   	pop    %edx
  107289:	50                   	push   %eax
  10728a:	8d 83 7a ba ff ff    	lea    -0x4586(%ebx),%eax
  107290:	50                   	push   %eax
  107291:	e8 d6 ba ff ff       	call   102d6c <dprintf>
        return 1;
  107296:	83 c4 10             	add    $0x10,%esp
  107299:	eb a6                	jmp    107241 <MPTKern_test1+0xf1>
  10729b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  1072a0:	83 ec 08             	sub    $0x8,%esp
  1072a3:	68 00 00 00 4b       	push   $0x4b000000
  1072a8:	6a 01                	push   $0x1
  1072aa:	e8 11 f6 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  1072af:	59                   	pop    %ecx
  1072b0:	5a                   	pop    %edx
  1072b1:	50                   	push   %eax
  1072b2:	8d 83 5e ba ff ff    	lea    -0x45a2(%ebx),%eax
  1072b8:	50                   	push   %eax
  1072b9:	e8 ae ba ff ff       	call   102d6c <dprintf>
        return 1;
  1072be:	83 c4 10             	add    $0x10,%esp
  1072c1:	e9 7b ff ff ff       	jmp    107241 <MPTKern_test1+0xf1>
  1072c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1072cd:	00 
  1072ce:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  1072d0:	83 ec 08             	sub    $0x8,%esp
  1072d3:	68 00 00 00 4b       	push   $0x4b000000
  1072d8:	6a 01                	push   $0x1
  1072da:	e8 e1 f5 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  1072df:	5a                   	pop    %edx
  1072e0:	59                   	pop    %ecx
  1072e1:	50                   	push   %eax
  1072e2:	8d 83 96 ba ff ff    	lea    -0x456a(%ebx),%eax
  1072e8:	50                   	push   %eax
  1072e9:	e8 7e ba ff ff       	call   102d6c <dprintf>
        return 1;
  1072ee:	83 c4 10             	add    $0x10,%esp
  1072f1:	e9 4b ff ff ff       	jmp    107241 <MPTKern_test1+0xf1>
  1072f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1072fd:	00 
  1072fe:	66 90                	xchg   %ax,%ax

00107300 <MPTKern_test2>:

int MPTKern_test2()
{
  107300:	57                   	push   %edi
  107301:	56                   	push   %esi
  107302:	be 03 00 00 40       	mov    $0x40000003,%esi
  107307:	53                   	push   %ebx
  107308:	e8 b3 90 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10730d:	81 c3 e7 5c 00 00    	add    $0x5ce7,%ebx
  107313:	eb 11                	jmp    107326 <MPTKern_test2+0x26>
  107315:	8d 76 00             	lea    0x0(%esi),%esi
    unsigned int i;
    for (i = 256; i < 960; i++) {
  107318:	81 c6 00 00 40 00    	add    $0x400000,%esi
  10731e:	81 fe 03 00 00 f0    	cmp    $0xf0000003,%esi
  107324:	74 3d                	je     107363 <MPTKern_test2+0x63>
        if (get_ptbl_entry_by_va(0, i * 4096 * 1024L) !=
  107326:	83 ec 08             	sub    $0x8,%esp
  107329:	8d 7e fd             	lea    -0x3(%esi),%edi
  10732c:	57                   	push   %edi
  10732d:	6a 00                	push   $0x0
  10732f:	e8 8c f5 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  107334:	83 c4 10             	add    $0x10,%esp
  107337:	39 f0                	cmp    %esi,%eax
  107339:	74 dd                	je     107318 <MPTKern_test2+0x18>
            i * 4096 * 1024L + 3) {
            dprintf("test 2.1 failed (i = %d): (%d != %d)\n",
  10733b:	83 ec 08             	sub    $0x8,%esp
  10733e:	57                   	push   %edi
  10733f:	6a 00                	push   $0x0
  107341:	e8 7a f5 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  107346:	83 c4 0c             	add    $0xc,%esp
  107349:	56                   	push   %esi
  10734a:	50                   	push   %eax
  10734b:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
  107351:	50                   	push   %eax
  107352:	e8 15 ba ff ff       	call   102d6c <dprintf>
                    get_ptbl_entry_by_va(0, i * 4096 * 1024L),
                    i * 4096 * 1024L + 3);
            return 1;
  107357:	83 c4 10             	add    $0x10,%esp
  10735a:	b8 01 00 00 00       	mov    $0x1,%eax
        }
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  10735f:	5b                   	pop    %ebx
  107360:	5e                   	pop    %esi
  107361:	5f                   	pop    %edi
  107362:	c3                   	ret
    dprintf("test 2 passed.\n");
  107363:	83 ec 0c             	sub    $0xc,%esp
  107366:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  10736c:	50                   	push   %eax
  10736d:	e8 fa b9 ff ff       	call   102d6c <dprintf>
    return 0;
  107372:	83 c4 10             	add    $0x10,%esp
  107375:	31 c0                	xor    %eax,%eax
}
  107377:	5b                   	pop    %ebx
  107378:	5e                   	pop    %esi
  107379:	5f                   	pop    %edi
  10737a:	c3                   	ret
  10737b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107380 <MPTKern_test_own>:
int MPTKern_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  107380:	31 c0                	xor    %eax,%eax
  107382:	c3                   	ret
  107383:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10738a:	00 
  10738b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107390 <test_MPTKern>:

int test_MPTKern()
{
  107390:	53                   	push   %ebx
  107391:	83 ec 08             	sub    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  107394:	e8 b7 fd ff ff       	call   107150 <MPTKern_test1>
  107399:	89 c3                	mov    %eax,%ebx
  10739b:	e8 60 ff ff ff       	call   107300 <MPTKern_test2>
}
  1073a0:	83 c4 08             	add    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  1073a3:	01 d8                	add    %ebx,%eax
}
  1073a5:	5b                   	pop    %ebx
  1073a6:	c3                   	ret
  1073a7:	66 90                	xchg   %ax,%ax
  1073a9:	66 90                	xchg   %ax,%ax
  1073ab:	66 90                	xchg   %ax,%ax
  1073ad:	66 90                	xchg   %ax,%ax
  1073af:	90                   	nop

001073b0 <paging_init>:
/**
 * Initializes the page structures, moves to the kernel page structure (0),
 * and turns on the paging.
 */
void paging_init(unsigned int mbi_addr)
{
  1073b0:	53                   	push   %ebx
  1073b1:	e8 0a 90 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1073b6:	81 c3 3e 5c 00 00    	add    $0x5c3e,%ebx
  1073bc:	83 ec 14             	sub    $0x14,%esp
    pdir_init_kern(mbi_addr);
  1073bf:	ff 74 24 1c          	push   0x1c(%esp)
  1073c3:	e8 88 fc ff ff       	call   107050 <pdir_init_kern>
    set_pdir_base(0);
  1073c8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1073cf:	e8 7c f0 ff ff       	call   106450 <set_pdir_base>
    enable_paging();
  1073d4:	e8 f9 9d ff ff       	call   1011d2 <enable_paging>
}
  1073d9:	83 c4 18             	add    $0x18,%esp
  1073dc:	5b                   	pop    %ebx
  1073dd:	c3                   	ret
  1073de:	66 90                	xchg   %ax,%ax

001073e0 <alloc_page>:
 * It should return the physical page index registered in the page directory, i.e., the
 * return value from map_page.
 * In the case of error, it should return the MagicNumber.
 */
unsigned int alloc_page (unsigned int proc_index, unsigned int vaddr, unsigned int perm)
{
  1073e0:	56                   	push   %esi
  1073e1:	53                   	push   %ebx
  1073e2:	e8 d9 8f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1073e7:	81 c3 0d 5c 00 00    	add    $0x5c0d,%ebx
  1073ed:	83 ec 10             	sub    $0x10,%esp
  1073f0:	8b 74 24 1c          	mov    0x1c(%esp),%esi
	// TODO
	unsigned int page_index;
	unsigned int ptbl;
        page_index = container_alloc(proc_index);
  1073f4:	56                   	push   %esi
  1073f5:	e8 f6 ec ff ff       	call   1060f0 <container_alloc>
	if(page_index == 0) return MagicNumber;
  1073fa:	83 c4 10             	add    $0x10,%esp
  1073fd:	ba 01 00 10 00       	mov    $0x100001,%edx
  107402:	85 c0                	test   %eax,%eax
  107404:	74 14                	je     10741a <alloc_page+0x3a>
        ptbl = map_page(proc_index, vaddr, page_index, perm);
  107406:	ff 74 24 18          	push   0x18(%esp)
  10740a:	50                   	push   %eax
  10740b:	ff 74 24 1c          	push   0x1c(%esp)
  10740f:	56                   	push   %esi
  107410:	e8 7b fc ff ff       	call   107090 <map_page>
        return ptbl;
  107415:	83 c4 10             	add    $0x10,%esp
        ptbl = map_page(proc_index, vaddr, page_index, perm);
  107418:	89 c2                	mov    %eax,%edx
}
  10741a:	83 c4 04             	add    $0x4,%esp
  10741d:	89 d0                	mov    %edx,%eax
  10741f:	5b                   	pop    %ebx
  107420:	5e                   	pop    %esi
  107421:	c3                   	ret
  107422:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107429:	00 
  10742a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00107430 <alloc_mem_quota>:

/**
 * Designate some memory quota for the next child process.
 */
unsigned int alloc_mem_quota (unsigned int id, unsigned int quota)
{
  107430:	53                   	push   %ebx
  107431:	e8 8a 8f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107436:	81 c3 be 5b 00 00    	add    $0x5bbe,%ebx
  10743c:	83 ec 10             	sub    $0x10,%esp
	unsigned int child;
	child = container_split (id, quota);
  10743f:	ff 74 24 1c          	push   0x1c(%esp)
  107443:	ff 74 24 1c          	push   0x1c(%esp)
  107447:	e8 44 ec ff ff       	call   106090 <container_split>
	return child;
}
  10744c:	83 c4 18             	add    $0x18,%esp
  10744f:	5b                   	pop    %ebx
  107450:	c3                   	ret
  107451:	66 90                	xchg   %ax,%ax
  107453:	66 90                	xchg   %ax,%ax
  107455:	66 90                	xchg   %ax,%ax
  107457:	66 90                	xchg   %ax,%ax
  107459:	66 90                	xchg   %ax,%ax
  10745b:	66 90                	xchg   %ax,%ax
  10745d:	66 90                	xchg   %ax,%ax
  10745f:	90                   	nop

00107460 <MPTNew_test1>:
#include <vmm/MPTOp/export.h>
#include <vmm/MPTNew/export.h>
#include "export.h"

int MPTNew_test1()
{
  107460:	53                   	push   %ebx
  107461:	e8 5a 8f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107466:	81 c3 8e 5b 00 00    	add    $0x5b8e,%ebx
  10746c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 400;
    container_split(0, 100);
  10746f:	6a 64                	push   $0x64
  107471:	6a 00                	push   $0x0
  107473:	e8 18 ec ff ff       	call   106090 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  107478:	59                   	pop    %ecx
  107479:	58                   	pop    %eax
  10747a:	68 00 00 00 64       	push   $0x64000000
  10747f:	6a 01                	push   $0x1
  107481:	e8 3a f4 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  107486:	83 c4 10             	add    $0x10,%esp
  107489:	85 c0                	test   %eax,%eax
  10748b:	0f 85 9f 00 00 00    	jne    107530 <MPTNew_test1+0xd0>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  107491:	83 ec 08             	sub    $0x8,%esp
  107494:	68 00 00 00 64       	push   $0x64000000
  107499:	6a 01                	push   $0x1
  10749b:	e8 90 f4 ff ff       	call   106930 <get_pdir_entry_by_va>
  1074a0:	83 c4 10             	add    $0x10,%esp
  1074a3:	85 c0                	test   %eax,%eax
  1074a5:	75 59                	jne    107500 <MPTNew_test1+0xa0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    alloc_page(1, vaddr, 7);
  1074a7:	83 ec 04             	sub    $0x4,%esp
  1074aa:	6a 07                	push   $0x7
  1074ac:	68 00 00 00 64       	push   $0x64000000
  1074b1:	6a 01                	push   $0x1
  1074b3:	e8 28 ff ff ff       	call   1073e0 <alloc_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  1074b8:	58                   	pop    %eax
  1074b9:	5a                   	pop    %edx
  1074ba:	68 00 00 00 64       	push   $0x64000000
  1074bf:	6a 01                	push   $0x1
  1074c1:	e8 fa f3 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  1074c6:	83 c4 10             	add    $0x10,%esp
  1074c9:	85 c0                	test   %eax,%eax
  1074cb:	0f 84 af 00 00 00    	je     107580 <MPTNew_test1+0x120>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  1074d1:	83 ec 08             	sub    $0x8,%esp
  1074d4:	68 00 00 00 64       	push   $0x64000000
  1074d9:	6a 01                	push   $0x1
  1074db:	e8 50 f4 ff ff       	call   106930 <get_pdir_entry_by_va>
  1074e0:	83 c4 10             	add    $0x10,%esp
  1074e3:	85 c0                	test   %eax,%eax
  1074e5:	74 71                	je     107558 <MPTNew_test1+0xf8>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  1074e7:	83 ec 0c             	sub    $0xc,%esp
  1074ea:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  1074f0:	50                   	push   %eax
  1074f1:	e8 76 b8 ff ff       	call   102d6c <dprintf>
    return 0;
  1074f6:	83 c4 10             	add    $0x10,%esp
  1074f9:	31 c0                	xor    %eax,%eax
}
  1074fb:	83 c4 08             	add    $0x8,%esp
  1074fe:	5b                   	pop    %ebx
  1074ff:	c3                   	ret
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  107500:	83 ec 08             	sub    $0x8,%esp
  107503:	68 00 00 00 64       	push   $0x64000000
  107508:	6a 01                	push   $0x1
  10750a:	e8 21 f4 ff ff       	call   106930 <get_pdir_entry_by_va>
  10750f:	59                   	pop    %ecx
  107510:	5a                   	pop    %edx
  107511:	50                   	push   %eax
  107512:	8d 83 42 ba ff ff    	lea    -0x45be(%ebx),%eax
  107518:	50                   	push   %eax
  107519:	e8 4e b8 ff ff       	call   102d6c <dprintf>
        return 1;
  10751e:	83 c4 10             	add    $0x10,%esp
}
  107521:	83 c4 08             	add    $0x8,%esp
        return 1;
  107524:	b8 01 00 00 00       	mov    $0x1,%eax
}
  107529:	5b                   	pop    %ebx
  10752a:	c3                   	ret
  10752b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  107530:	83 ec 08             	sub    $0x8,%esp
  107533:	68 00 00 00 64       	push   $0x64000000
  107538:	6a 01                	push   $0x1
  10753a:	e8 81 f3 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  10753f:	59                   	pop    %ecx
  107540:	5a                   	pop    %edx
  107541:	50                   	push   %eax
  107542:	8d 83 26 ba ff ff    	lea    -0x45da(%ebx),%eax
  107548:	50                   	push   %eax
  107549:	e8 1e b8 ff ff       	call   102d6c <dprintf>
        return 1;
  10754e:	83 c4 10             	add    $0x10,%esp
  107551:	eb ce                	jmp    107521 <MPTNew_test1+0xc1>
  107553:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  107558:	83 ec 08             	sub    $0x8,%esp
  10755b:	68 00 00 00 64       	push   $0x64000000
  107560:	6a 01                	push   $0x1
  107562:	e8 c9 f3 ff ff       	call   106930 <get_pdir_entry_by_va>
  107567:	5a                   	pop    %edx
  107568:	59                   	pop    %ecx
  107569:	50                   	push   %eax
  10756a:	8d 83 7a ba ff ff    	lea    -0x4586(%ebx),%eax
  107570:	50                   	push   %eax
  107571:	e8 f6 b7 ff ff       	call   102d6c <dprintf>
        return 1;
  107576:	83 c4 10             	add    $0x10,%esp
  107579:	eb a6                	jmp    107521 <MPTNew_test1+0xc1>
  10757b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  107580:	83 ec 08             	sub    $0x8,%esp
  107583:	68 00 00 00 64       	push   $0x64000000
  107588:	6a 01                	push   $0x1
  10758a:	e8 31 f3 ff ff       	call   1068c0 <get_ptbl_entry_by_va>
  10758f:	5a                   	pop    %edx
  107590:	59                   	pop    %ecx
  107591:	50                   	push   %eax
  107592:	8d 83 5e ba ff ff    	lea    -0x45a2(%ebx),%eax
  107598:	50                   	push   %eax
  107599:	e8 ce b7 ff ff       	call   102d6c <dprintf>
        return 1;
  10759e:	83 c4 10             	add    $0x10,%esp
  1075a1:	e9 7b ff ff ff       	jmp    107521 <MPTNew_test1+0xc1>
  1075a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1075ad:	00 
  1075ae:	66 90                	xchg   %ax,%ax

001075b0 <MPTNew_test_own>:
int MPTNew_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1075b0:	31 c0                	xor    %eax,%eax
  1075b2:	c3                   	ret
  1075b3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1075ba:	00 
  1075bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001075c0 <test_MPTNew>:

int test_MPTNew()
{
    return MPTNew_test1() + MPTNew_test_own();
  1075c0:	e9 9b fe ff ff       	jmp    107460 <MPTNew_test1>
  1075c5:	66 90                	xchg   %ax,%ax
  1075c7:	66 90                	xchg   %ax,%ax
  1075c9:	66 90                	xchg   %ax,%ax
  1075cb:	66 90                	xchg   %ax,%ax
  1075cd:	66 90                	xchg   %ax,%ax
  1075cf:	90                   	nop

001075d0 <__udivdi3>:
  1075d0:	f3 0f 1e fb          	endbr32
  1075d4:	55                   	push   %ebp
  1075d5:	89 e5                	mov    %esp,%ebp
  1075d7:	57                   	push   %edi
  1075d8:	56                   	push   %esi
  1075d9:	53                   	push   %ebx
  1075da:	83 ec 1c             	sub    $0x1c,%esp
  1075dd:	8b 7d 08             	mov    0x8(%ebp),%edi
  1075e0:	8b 45 14             	mov    0x14(%ebp),%eax
  1075e3:	8b 75 0c             	mov    0xc(%ebp),%esi
  1075e6:	8b 5d 10             	mov    0x10(%ebp),%ebx
  1075e9:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  1075ec:	85 c0                	test   %eax,%eax
  1075ee:	75 20                	jne    107610 <__udivdi3+0x40>
  1075f0:	39 de                	cmp    %ebx,%esi
  1075f2:	73 54                	jae    107648 <__udivdi3+0x78>
  1075f4:	89 f8                	mov    %edi,%eax
  1075f6:	31 ff                	xor    %edi,%edi
  1075f8:	89 f2                	mov    %esi,%edx
  1075fa:	f7 f3                	div    %ebx
  1075fc:	89 fa                	mov    %edi,%edx
  1075fe:	83 c4 1c             	add    $0x1c,%esp
  107601:	5b                   	pop    %ebx
  107602:	5e                   	pop    %esi
  107603:	5f                   	pop    %edi
  107604:	5d                   	pop    %ebp
  107605:	c3                   	ret
  107606:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10760d:	00 
  10760e:	66 90                	xchg   %ax,%ax
  107610:	39 c6                	cmp    %eax,%esi
  107612:	73 14                	jae    107628 <__udivdi3+0x58>
  107614:	31 ff                	xor    %edi,%edi
  107616:	31 c0                	xor    %eax,%eax
  107618:	89 fa                	mov    %edi,%edx
  10761a:	83 c4 1c             	add    $0x1c,%esp
  10761d:	5b                   	pop    %ebx
  10761e:	5e                   	pop    %esi
  10761f:	5f                   	pop    %edi
  107620:	5d                   	pop    %ebp
  107621:	c3                   	ret
  107622:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107628:	0f bd f8             	bsr    %eax,%edi
  10762b:	83 f7 1f             	xor    $0x1f,%edi
  10762e:	75 48                	jne    107678 <__udivdi3+0xa8>
  107630:	39 f0                	cmp    %esi,%eax
  107632:	72 07                	jb     10763b <__udivdi3+0x6b>
  107634:	31 c0                	xor    %eax,%eax
  107636:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  107639:	72 dd                	jb     107618 <__udivdi3+0x48>
  10763b:	b8 01 00 00 00       	mov    $0x1,%eax
  107640:	eb d6                	jmp    107618 <__udivdi3+0x48>
  107642:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107648:	89 d9                	mov    %ebx,%ecx
  10764a:	85 db                	test   %ebx,%ebx
  10764c:	75 0b                	jne    107659 <__udivdi3+0x89>
  10764e:	b8 01 00 00 00       	mov    $0x1,%eax
  107653:	31 d2                	xor    %edx,%edx
  107655:	f7 f3                	div    %ebx
  107657:	89 c1                	mov    %eax,%ecx
  107659:	31 d2                	xor    %edx,%edx
  10765b:	89 f0                	mov    %esi,%eax
  10765d:	f7 f1                	div    %ecx
  10765f:	89 c6                	mov    %eax,%esi
  107661:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107664:	89 f7                	mov    %esi,%edi
  107666:	f7 f1                	div    %ecx
  107668:	89 fa                	mov    %edi,%edx
  10766a:	83 c4 1c             	add    $0x1c,%esp
  10766d:	5b                   	pop    %ebx
  10766e:	5e                   	pop    %esi
  10766f:	5f                   	pop    %edi
  107670:	5d                   	pop    %ebp
  107671:	c3                   	ret
  107672:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107678:	89 f9                	mov    %edi,%ecx
  10767a:	ba 20 00 00 00       	mov    $0x20,%edx
  10767f:	29 fa                	sub    %edi,%edx
  107681:	d3 e0                	shl    %cl,%eax
  107683:	89 45 e0             	mov    %eax,-0x20(%ebp)
  107686:	89 d1                	mov    %edx,%ecx
  107688:	89 d8                	mov    %ebx,%eax
  10768a:	d3 e8                	shr    %cl,%eax
  10768c:	89 c1                	mov    %eax,%ecx
  10768e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107691:	09 c1                	or     %eax,%ecx
  107693:	89 f0                	mov    %esi,%eax
  107695:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  107698:	89 f9                	mov    %edi,%ecx
  10769a:	d3 e3                	shl    %cl,%ebx
  10769c:	89 d1                	mov    %edx,%ecx
  10769e:	d3 e8                	shr    %cl,%eax
  1076a0:	89 5d dc             	mov    %ebx,-0x24(%ebp)
  1076a3:	89 f9                	mov    %edi,%ecx
  1076a5:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  1076a8:	d3 e6                	shl    %cl,%esi
  1076aa:	89 d1                	mov    %edx,%ecx
  1076ac:	d3 eb                	shr    %cl,%ebx
  1076ae:	09 f3                	or     %esi,%ebx
  1076b0:	89 c6                	mov    %eax,%esi
  1076b2:	89 f2                	mov    %esi,%edx
  1076b4:	89 d8                	mov    %ebx,%eax
  1076b6:	f7 75 e0             	divl   -0x20(%ebp)
  1076b9:	89 d6                	mov    %edx,%esi
  1076bb:	89 c3                	mov    %eax,%ebx
  1076bd:	f7 65 dc             	mull   -0x24(%ebp)
  1076c0:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1076c3:	39 d6                	cmp    %edx,%esi
  1076c5:	72 21                	jb     1076e8 <__udivdi3+0x118>
  1076c7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1076ca:	89 f9                	mov    %edi,%ecx
  1076cc:	d3 e2                	shl    %cl,%edx
  1076ce:	39 c2                	cmp    %eax,%edx
  1076d0:	73 07                	jae    1076d9 <__udivdi3+0x109>
  1076d2:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1076d5:	39 d6                	cmp    %edx,%esi
  1076d7:	74 0f                	je     1076e8 <__udivdi3+0x118>
  1076d9:	89 d8                	mov    %ebx,%eax
  1076db:	31 ff                	xor    %edi,%edi
  1076dd:	e9 36 ff ff ff       	jmp    107618 <__udivdi3+0x48>
  1076e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1076e8:	8d 43 ff             	lea    -0x1(%ebx),%eax
  1076eb:	31 ff                	xor    %edi,%edi
  1076ed:	e9 26 ff ff ff       	jmp    107618 <__udivdi3+0x48>
  1076f2:	66 90                	xchg   %ax,%ax
  1076f4:	66 90                	xchg   %ax,%ax
  1076f6:	66 90                	xchg   %ax,%ax
  1076f8:	66 90                	xchg   %ax,%ax
  1076fa:	66 90                	xchg   %ax,%ax
  1076fc:	66 90                	xchg   %ax,%ax
  1076fe:	66 90                	xchg   %ax,%ax

00107700 <__umoddi3>:
  107700:	f3 0f 1e fb          	endbr32
  107704:	55                   	push   %ebp
  107705:	89 e5                	mov    %esp,%ebp
  107707:	57                   	push   %edi
  107708:	56                   	push   %esi
  107709:	53                   	push   %ebx
  10770a:	83 ec 2c             	sub    $0x2c,%esp
  10770d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  107710:	8b 45 14             	mov    0x14(%ebp),%eax
  107713:	8b 75 08             	mov    0x8(%ebp),%esi
  107716:	8b 7d 10             	mov    0x10(%ebp),%edi
  107719:	89 da                	mov    %ebx,%edx
  10771b:	85 c0                	test   %eax,%eax
  10771d:	75 19                	jne    107738 <__umoddi3+0x38>
  10771f:	39 fb                	cmp    %edi,%ebx
  107721:	73 5d                	jae    107780 <__umoddi3+0x80>
  107723:	89 f0                	mov    %esi,%eax
  107725:	f7 f7                	div    %edi
  107727:	89 d0                	mov    %edx,%eax
  107729:	31 d2                	xor    %edx,%edx
  10772b:	83 c4 2c             	add    $0x2c,%esp
  10772e:	5b                   	pop    %ebx
  10772f:	5e                   	pop    %esi
  107730:	5f                   	pop    %edi
  107731:	5d                   	pop    %ebp
  107732:	c3                   	ret
  107733:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  107738:	89 75 e0             	mov    %esi,-0x20(%ebp)
  10773b:	39 c3                	cmp    %eax,%ebx
  10773d:	73 11                	jae    107750 <__umoddi3+0x50>
  10773f:	89 f0                	mov    %esi,%eax
  107741:	83 c4 2c             	add    $0x2c,%esp
  107744:	5b                   	pop    %ebx
  107745:	5e                   	pop    %esi
  107746:	5f                   	pop    %edi
  107747:	5d                   	pop    %ebp
  107748:	c3                   	ret
  107749:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  107750:	0f bd c8             	bsr    %eax,%ecx
  107753:	83 f1 1f             	xor    $0x1f,%ecx
  107756:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  107759:	75 45                	jne    1077a0 <__umoddi3+0xa0>
  10775b:	39 d8                	cmp    %ebx,%eax
  10775d:	0f 82 d5 00 00 00    	jb     107838 <__umoddi3+0x138>
  107763:	39 fe                	cmp    %edi,%esi
  107765:	0f 83 cd 00 00 00    	jae    107838 <__umoddi3+0x138>
  10776b:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10776e:	83 c4 2c             	add    $0x2c,%esp
  107771:	5b                   	pop    %ebx
  107772:	5e                   	pop    %esi
  107773:	5f                   	pop    %edi
  107774:	5d                   	pop    %ebp
  107775:	c3                   	ret
  107776:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10777d:	00 
  10777e:	66 90                	xchg   %ax,%ax
  107780:	89 f9                	mov    %edi,%ecx
  107782:	85 ff                	test   %edi,%edi
  107784:	75 0b                	jne    107791 <__umoddi3+0x91>
  107786:	b8 01 00 00 00       	mov    $0x1,%eax
  10778b:	31 d2                	xor    %edx,%edx
  10778d:	f7 f7                	div    %edi
  10778f:	89 c1                	mov    %eax,%ecx
  107791:	89 d8                	mov    %ebx,%eax
  107793:	31 d2                	xor    %edx,%edx
  107795:	f7 f1                	div    %ecx
  107797:	89 f0                	mov    %esi,%eax
  107799:	f7 f1                	div    %ecx
  10779b:	eb 8a                	jmp    107727 <__umoddi3+0x27>
  10779d:	8d 76 00             	lea    0x0(%esi),%esi
  1077a0:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1077a3:	ba 20 00 00 00       	mov    $0x20,%edx
  1077a8:	29 ca                	sub    %ecx,%edx
  1077aa:	d3 e0                	shl    %cl,%eax
  1077ac:	89 45 dc             	mov    %eax,-0x24(%ebp)
  1077af:	89 d1                	mov    %edx,%ecx
  1077b1:	89 f8                	mov    %edi,%eax
  1077b3:	d3 e8                	shr    %cl,%eax
  1077b5:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1077b8:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  1077bc:	89 c2                	mov    %eax,%edx
  1077be:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1077c1:	d3 e7                	shl    %cl,%edi
  1077c3:	09 c2                	or     %eax,%edx
  1077c5:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1077c8:	89 7d d8             	mov    %edi,-0x28(%ebp)
  1077cb:	89 f7                	mov    %esi,%edi
  1077cd:	89 55 dc             	mov    %edx,-0x24(%ebp)
  1077d0:	89 da                	mov    %ebx,%edx
  1077d2:	89 c1                	mov    %eax,%ecx
  1077d4:	d3 ea                	shr    %cl,%edx
  1077d6:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  1077da:	d3 e3                	shl    %cl,%ebx
  1077dc:	89 c1                	mov    %eax,%ecx
  1077de:	d3 ef                	shr    %cl,%edi
  1077e0:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  1077e4:	89 f8                	mov    %edi,%eax
  1077e6:	d3 e6                	shl    %cl,%esi
  1077e8:	09 d8                	or     %ebx,%eax
  1077ea:	f7 75 dc             	divl   -0x24(%ebp)
  1077ed:	89 d3                	mov    %edx,%ebx
  1077ef:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  1077f2:	89 f7                	mov    %esi,%edi
  1077f4:	f7 65 d8             	mull   -0x28(%ebp)
  1077f7:	89 c6                	mov    %eax,%esi
  1077f9:	89 d1                	mov    %edx,%ecx
  1077fb:	39 d3                	cmp    %edx,%ebx
  1077fd:	72 06                	jb     107805 <__umoddi3+0x105>
  1077ff:	75 0e                	jne    10780f <__umoddi3+0x10f>
  107801:	39 c7                	cmp    %eax,%edi
  107803:	73 0a                	jae    10780f <__umoddi3+0x10f>
  107805:	2b 45 d8             	sub    -0x28(%ebp),%eax
  107808:	1b 55 dc             	sbb    -0x24(%ebp),%edx
  10780b:	89 d1                	mov    %edx,%ecx
  10780d:	89 c6                	mov    %eax,%esi
  10780f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  107812:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  107815:	29 f0                	sub    %esi,%eax
  107817:	19 cb                	sbb    %ecx,%ebx
  107819:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  10781d:	89 da                	mov    %ebx,%edx
  10781f:	d3 e2                	shl    %cl,%edx
  107821:	89 f9                	mov    %edi,%ecx
  107823:	d3 e8                	shr    %cl,%eax
  107825:	d3 eb                	shr    %cl,%ebx
  107827:	09 d0                	or     %edx,%eax
  107829:	89 da                	mov    %ebx,%edx
  10782b:	83 c4 2c             	add    $0x2c,%esp
  10782e:	5b                   	pop    %ebx
  10782f:	5e                   	pop    %esi
  107830:	5f                   	pop    %edi
  107831:	5d                   	pop    %ebp
  107832:	c3                   	ret
  107833:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  107838:	89 da                	mov    %ebx,%edx
  10783a:	29 fe                	sub    %edi,%esi
  10783c:	19 c2                	sbb    %eax,%edx
  10783e:	89 75 e0             	mov    %esi,-0x20(%ebp)
  107841:	e9 25 ff ff ff       	jmp    10776b <__umoddi3+0x6b>
