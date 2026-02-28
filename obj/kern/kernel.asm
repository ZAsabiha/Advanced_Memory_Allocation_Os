
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
  10278e:	e8 b9 21 00 00       	call   10494c <trap>
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
  102de6:	e8 75 4a 00 00       	call   107860 <__udivdi3>
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
  102e39:	e8 52 4b 00 00       	call   107990 <__umoddi3>
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
  103c06:	c7 c0 d0 4a 10 00    	mov    $0x104ad0,%eax
  103c0c:	50                   	push   %eax
  103c0d:	8d 83 6e b3 ff ff    	lea    -0x4c92(%ebx),%eax
  103c13:	50                   	push   %eax
  103c14:	e8 53 f1 ff ff       	call   102d6c <dprintf>
  103c19:	83 c4 10             	add    $0x10,%esp
  103c1c:	83 ec 08             	sub    $0x8,%esp
  103c1f:	c7 c0 d6 7a 10 00    	mov    $0x107ad6,%eax
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
  103c6f:	c7 c0 d0 4a 10 00    	mov    $0x104ad0,%eax
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
  103d2a:	e8 11 22 00 00       	call   105f40 <container_get_quota>
  103d2f:	83 c4 10             	add    $0x10,%esp
  103d32:	83 ec 08             	sub    $0x8,%esp
  103d35:	50                   	push   %eax
  103d36:	6a 00                	push   $0x0
  103d38:	e8 83 39 00 00       	call   1076c0 <alloc_mem_quota>
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
  103d7a:	e8 c1 26 00 00       	call   106440 <set_pdir_base>
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
  10400b:	e8 30 29 00 00       	call   106940 <get_ptbl_entry_by_va>
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
  10402b:	e8 40 36 00 00       	call   107670 <alloc_page>
  104030:	83 c4 10             	add    $0x10,%esp
  104033:	83 ec 08             	sub    $0x8,%esp
  104036:	ff 75 0c             	push   0xc(%ebp)
  104039:	ff 75 08             	push   0x8(%ebp)
  10403c:	e8 ff 28 00 00       	call   106940 <get_ptbl_entry_by_va>
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
  10411b:	e8 20 28 00 00       	call   106940 <get_ptbl_entry_by_va>
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
  10413b:	e8 30 35 00 00       	call   107670 <alloc_page>
  104140:	83 c4 10             	add    $0x10,%esp
  104143:	83 ec 08             	sub    $0x8,%esp
  104146:	ff 75 10             	push   0x10(%ebp)
  104149:	ff 75 0c             	push   0xc(%ebp)
  10414c:	e8 ef 27 00 00       	call   106940 <get_ptbl_entry_by_va>
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
  1041f6:	e8 45 27 00 00       	call   106940 <get_ptbl_entry_by_va>
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
  104216:	e8 55 34 00 00       	call   107670 <alloc_page>
  10421b:	83 c4 10             	add    $0x10,%esp
  10421e:	83 ec 08             	sub    $0x8,%esp
  104221:	ff 75 0c             	push   0xc(%ebp)
  104224:	ff 75 08             	push   0x8(%ebp)
  104227:	e8 14 27 00 00       	call   106940 <get_ptbl_entry_by_va>
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
  10447a:	e8 f1 31 00 00       	call   107670 <alloc_page>
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
  1045e2:	6a 15                	push   $0x15
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
  104620:	8d 83 dc b5 ff ff    	lea    -0x4a24(%ebx),%eax
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
  104640:	8d 83 f3 b5 ff ff    	lea    -0x4a0d(%ebx),%eax
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
  104660:	8d 83 0a b6 ff ff    	lea    -0x49f6(%ebx),%eax
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
  104680:	8d 83 21 b6 ff ff    	lea    -0x49df(%ebx),%eax
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
  1046a0:	8d 83 38 b6 ff ff    	lea    -0x49c8(%ebx),%eax
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
  1046c0:	8d 83 4f b6 ff ff    	lea    -0x49b1(%ebx),%eax
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
  1046e0:	8d 83 66 b6 ff ff    	lea    -0x499a(%ebx),%eax
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
  104704:	8d 83 7d b6 ff ff    	lea    -0x4983(%ebx),%eax
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
  104728:	8d 83 94 b6 ff ff    	lea    -0x496c(%ebx),%eax
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
  104748:	8d 83 ab b6 ff ff    	lea    -0x4955(%ebx),%eax
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
  104768:	8d 83 c1 b6 ff ff    	lea    -0x493f(%ebx),%eax
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
  104788:	8d 83 d8 b6 ff ff    	lea    -0x4928(%ebx),%eax
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
  1047ac:	8d 83 ef b6 ff ff    	lea    -0x4911(%ebx),%eax
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
  1047cc:	8d 83 06 b7 ff ff    	lea    -0x48fa(%ebx),%eax
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
  1047ec:	8d 83 0a b6 ff ff    	lea    -0x49f6(%ebx),%eax
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
  104810:	8d 83 1c b7 ff ff    	lea    -0x48e4(%ebx),%eax
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
  104863:	8d 83 34 b7 ff ff    	lea    -0x48cc(%ebx),%eax
  104869:	50                   	push   %eax
  10486a:	e8 fd e4 ff ff       	call   102d6c <dprintf>
  10486f:	83 c4 20             	add    $0x20,%esp
  104872:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104875:	83 e0 01             	and    $0x1,%eax
  104878:	85 c0                	test   %eax,%eax
  10487a:	74 23                	je     10489f <pgflt_handler+0x78>
  10487c:	83 ec 0c             	sub    $0xc,%esp
  10487f:	ff 75 f4             	push   -0xc(%ebp)
  104882:	ff 75 f0             	push   -0x10(%ebp)
  104885:	8d 83 74 b7 ff ff    	lea    -0x488c(%ebx),%eax
  10488b:	50                   	push   %eax
  10488c:	6a 3b                	push   $0x3b
  10488e:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  104894:	50                   	push   %eax
  104895:	e8 ba e2 ff ff       	call   102b54 <debug_panic>
  10489a:	83 c4 20             	add    $0x20,%esp
  10489d:	eb 7d                	jmp    10491c <pgflt_handler+0xf5>
  10489f:	81 7d f0 ff ff ff 3f 	cmpl   $0x3fffffff,-0x10(%ebp)
  1048a6:	76 4a                	jbe    1048f2 <pgflt_handler+0xcb>
  1048a8:	81 7d f0 ff ff 3f 40 	cmpl   $0x403fffff,-0x10(%ebp)
  1048af:	77 41                	ja     1048f2 <pgflt_handler+0xcb>
  1048b1:	83 ec 08             	sub    $0x8,%esp
  1048b4:	ff 75 f0             	push   -0x10(%ebp)
  1048b7:	8d 83 bc b7 ff ff    	lea    -0x4844(%ebx),%eax
  1048bd:	50                   	push   %eax
  1048be:	e8 a9 e4 ff ff       	call   102d6c <dprintf>
  1048c3:	83 c4 10             	add    $0x10,%esp
  1048c6:	83 ec 08             	sub    $0x8,%esp
  1048c9:	68 00 10 00 00       	push   $0x1000
  1048ce:	ff 75 f0             	push   -0x10(%ebp)
  1048d1:	e8 2f ef ff ff       	call   103805 <rounddown>
  1048d6:	83 c4 10             	add    $0x10,%esp
  1048d9:	c7 c2 2c 9c 15 00    	mov    $0x159c2c,%edx
  1048df:	8b 12                	mov    (%edx),%edx
  1048e1:	83 ec 04             	sub    $0x4,%esp
  1048e4:	6a 07                	push   $0x7
  1048e6:	50                   	push   %eax
  1048e7:	52                   	push   %edx
  1048e8:	e8 83 2d 00 00       	call   107670 <alloc_page>
  1048ed:	83 c4 10             	add    $0x10,%esp
  1048f0:	eb 2a                	jmp    10491c <pgflt_handler+0xf5>
  1048f2:	83 ec 08             	sub    $0x8,%esp
  1048f5:	68 00 10 00 00       	push   $0x1000
  1048fa:	ff 75 f0             	push   -0x10(%ebp)
  1048fd:	e8 03 ef ff ff       	call   103805 <rounddown>
  104902:	83 c4 10             	add    $0x10,%esp
  104905:	c7 c2 2c 9c 15 00    	mov    $0x159c2c,%edx
  10490b:	8b 12                	mov    (%edx),%edx
  10490d:	83 ec 04             	sub    $0x4,%esp
  104910:	6a 07                	push   $0x7
  104912:	50                   	push   %eax
  104913:	52                   	push   %edx
  104914:	e8 57 2d 00 00       	call   107670 <alloc_page>
  104919:	83 c4 10             	add    $0x10,%esp
  10491c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10491f:	c9                   	leave
  104920:	c3                   	ret

00104921 <checkpoint>:
  104921:	55                   	push   %ebp
  104922:	89 e5                	mov    %esp,%ebp
  104924:	53                   	push   %ebx
  104925:	83 ec 04             	sub    $0x4,%esp
  104928:	e8 8b ba ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10492d:	05 c7 86 00 00       	add    $0x86c7,%eax
  104932:	83 ec 0c             	sub    $0xc,%esp
  104935:	8d 90 e3 b7 ff ff    	lea    -0x481d(%eax),%edx
  10493b:	52                   	push   %edx
  10493c:	89 c3                	mov    %eax,%ebx
  10493e:	e8 25 e1 ff ff       	call   102a68 <debug_info>
  104943:	83 c4 10             	add    $0x10,%esp
  104946:	90                   	nop
  104947:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10494a:	c9                   	leave
  10494b:	c3                   	ret

0010494c <trap>:
  10494c:	55                   	push   %ebp
  10494d:	89 e5                	mov    %esp,%ebp
  10494f:	53                   	push   %ebx
  104950:	83 ec 04             	sub    $0x4,%esp
  104953:	e8 68 ba ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104958:	81 c3 9c 86 00 00    	add    $0x869c,%ebx
  10495e:	8b 45 08             	mov    0x8(%ebp),%eax
  104961:	8b 40 28             	mov    0x28(%eax),%eax
  104964:	83 f8 0e             	cmp    $0xe,%eax
  104967:	75 31                	jne    10499a <trap+0x4e>
  104969:	83 ec 0c             	sub    $0xc,%esp
  10496c:	6a 00                	push   $0x0
  10496e:	e8 cd 1a 00 00       	call   106440 <set_pdir_base>
  104973:	83 c4 10             	add    $0x10,%esp
  104976:	83 ec 0c             	sub    $0xc,%esp
  104979:	ff 75 08             	push   0x8(%ebp)
  10497c:	e8 a6 fe ff ff       	call   104827 <pgflt_handler>
  104981:	83 c4 10             	add    $0x10,%esp
  104984:	c7 c0 2c 9c 15 00    	mov    $0x159c2c,%eax
  10498a:	8b 00                	mov    (%eax),%eax
  10498c:	83 ec 0c             	sub    $0xc,%esp
  10498f:	50                   	push   %eax
  104990:	e8 ab 1a 00 00       	call   106440 <set_pdir_base>
  104995:	83 c4 10             	add    $0x10,%esp
  104998:	eb 48                	jmp    1049e2 <trap+0x96>
  10499a:	8b 45 08             	mov    0x8(%ebp),%eax
  10499d:	8b 40 28             	mov    0x28(%eax),%eax
  1049a0:	50                   	push   %eax
  1049a1:	8d 83 f8 b7 ff ff    	lea    -0x4808(%ebx),%eax
  1049a7:	50                   	push   %eax
  1049a8:	6a 6c                	push   $0x6c
  1049aa:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  1049b0:	50                   	push   %eax
  1049b1:	e8 e3 e0 ff ff       	call   102a99 <debug_normal>
  1049b6:	83 c4 10             	add    $0x10,%esp
  1049b9:	83 ec 0c             	sub    $0xc,%esp
  1049bc:	ff 75 08             	push   0x8(%ebp)
  1049bf:	e8 f2 fb ff ff       	call   1045b6 <trap_dump>
  1049c4:	83 c4 10             	add    $0x10,%esp
  1049c7:	83 ec 04             	sub    $0x4,%esp
  1049ca:	8d 83 0c b8 ff ff    	lea    -0x47f4(%ebx),%eax
  1049d0:	50                   	push   %eax
  1049d1:	6a 6e                	push   $0x6e
  1049d3:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  1049d9:	50                   	push   %eax
  1049da:	e8 75 e1 ff ff       	call   102b54 <debug_panic>
  1049df:	83 c4 10             	add    $0x10,%esp
  1049e2:	83 ec 0c             	sub    $0xc,%esp
  1049e5:	ff 75 08             	push   0x8(%ebp)
  1049e8:	e8 b3 dd ff ff       	call   1027a0 <trap_return>
  1049ed:	83 c4 10             	add    $0x10,%esp
  1049f0:	90                   	nop
  1049f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1049f4:	c9                   	leave
  1049f5:	c3                   	ret
  1049f6:	66 90                	xchg   %ax,%ax
  1049f8:	66 90                	xchg   %ax,%ax
  1049fa:	66 90                	xchg   %ax,%ax
  1049fc:	66 90                	xchg   %ax,%ax
  1049fe:	66 90                	xchg   %ax,%ax

00104a00 <kern_init>:

    monitor(NULL);
}

void kern_init(uintptr_t mbi_addr)
{
  104a00:	57                   	push   %edi
  104a01:	56                   	push   %esi
  104a02:	53                   	push   %ebx
  104a03:	8b 74 24 10          	mov    0x10(%esp),%esi
  104a07:	e8 b4 b9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104a0c:	81 c3 e8 85 00 00    	add    $0x85e8,%ebx
    pmem_init((unsigned int)mbi_addr);
  104a12:	83 ec 0c             	sub    $0xc,%esp
  104a15:	56                   	push   %esi
  104a16:	e8 c5 08 00 00       	call   1052e0 <pmem_init>
    KERN_DEBUG("Kernel initialized.\n");
  104a1b:	8d bb 40 b8 ff ff    	lea    -0x47c0(%ebx),%edi
  104a21:	83 c4 0c             	add    $0xc,%esp
  104a24:	8d 83 2b b8 ff ff    	lea    -0x47d5(%ebx),%eax
  104a2a:	50                   	push   %eax
  104a2b:	6a 3c                	push   $0x3c
  104a2d:	57                   	push   %edi
  104a2e:	e8 66 e0 ff ff       	call   102a99 <debug_normal>
    KERN_DEBUG("In kernel main.\n\n");
  104a33:	83 c4 0c             	add    $0xc,%esp
  104a36:	8d 83 51 b8 ff ff    	lea    -0x47af(%ebx),%eax
  104a3c:	50                   	push   %eax
  104a3d:	6a 19                	push   $0x19
  104a3f:	57                   	push   %edi
  104a40:	e8 54 e0 ff ff       	call   102a99 <debug_normal>
    pmem_init((unsigned int)mbi_addr);
  104a45:	89 34 24             	mov    %esi,(%esp)
  104a48:	e8 93 08 00 00       	call   1052e0 <pmem_init>
    test_MATInit();
  104a4d:	e8 3e 0d 00 00       	call   105790 <test_MATInit>
    test_MATOp();
  104a52:	e8 99 13 00 00       	call   105df0 <test_MATOp>
    container_init((unsigned int)mbi_addr);
  104a57:	89 34 24             	mov    %esi,(%esp)
  104a5a:	e8 b1 13 00 00       	call   105e10 <container_init>
    test_MContainer();
  104a5f:	e8 bc 19 00 00       	call   106420 <test_MContainer>
    paging_init(mbi_addr); 
  104a64:	89 34 24             	mov    %esi,(%esp)
  104a67:	e8 d4 2b 00 00       	call   107640 <paging_init>
    dprintf("Testing the MPTComm layer (Superpage & Heap foundation)...\n");
  104a6c:	8d 83 f4 ba ff ff    	lea    -0x450c(%ebx),%eax
  104a72:	89 04 24             	mov    %eax,(%esp)
  104a75:	e8 f2 e2 ff ff       	call   102d6c <dprintf>
    if (test_MPTComm() == 0) {
  104a7a:	e8 41 28 00 00       	call   1072c0 <test_MPTComm>
  104a7f:	83 c4 10             	add    $0x10,%esp
  104a82:	85 c0                	test   %eax,%eax
  104a84:	74 2a                	je     104ab0 <kern_init+0xb0>
    dprintf("\nTest complete. Please Use Ctrl-a x to exit qemu.\n");
  104a86:	83 ec 0c             	sub    $0xc,%esp
  104a89:	8d 83 30 bb ff ff    	lea    -0x44d0(%ebx),%eax
  104a8f:	50                   	push   %eax
  104a90:	e8 d7 e2 ff ff       	call   102d6c <dprintf>
    monitor(NULL);
  104a95:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104a9c:	e8 75 f4 ff ff       	call   103f16 <monitor>
    kern_main(mbi_addr);
  104aa1:	83 c4 10             	add    $0x10,%esp
  104aa4:	5b                   	pop    %ebx
  104aa5:	5e                   	pop    %esi
  104aa6:	5f                   	pop    %edi
  104aa7:	c3                   	ret
  104aa8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104aaf:	00 
        dprintf("MPTComm tests passed!\n");
  104ab0:	83 ec 0c             	sub    $0xc,%esp
  104ab3:	8d 83 63 b8 ff ff    	lea    -0x479d(%ebx),%eax
  104ab9:	50                   	push   %eax
  104aba:	e8 ad e2 ff ff       	call   102d6c <dprintf>
  104abf:	83 c4 10             	add    $0x10,%esp
  104ac2:	eb c2                	jmp    104a86 <kern_init+0x86>
  104ac4:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  104aca:	00 00                	add    %al,(%eax)
  104acc:	fb                   	sti
  104acd:	4f                   	dec    %edi
  104ace:	52                   	push   %edx
  104acf:	e4                   	.byte 0xe4

00104ad0 <start>:
  104ad0:	fa                   	cli
  104ad1:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
  104ad6:	75 27                	jne    104aff <spin>
  104ad8:	89 1d 00 4b 10 00    	mov    %ebx,0x104b00
  104ade:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
  104ae5:	34 12 
  104ae7:	6a 02                	push   $0x2
  104ae9:	9d                   	popf
  104aea:	bd 00 00 00 00       	mov    $0x0,%ebp
  104aef:	bc 00 60 11 00       	mov    $0x116000,%esp
  104af4:	ff 35 00 4b 10 00    	push   0x104b00
  104afa:	e8 01 ff ff ff       	call   104a00 <kern_init>

00104aff <spin>:
  104aff:	f4                   	hlt

00104b00 <multiboot_ptr>:
  104b00:	00 00                	add    %al,(%eax)
  104b02:	00 00                	add    %al,(%eax)
  104b04:	66 90                	xchg   %ax,%ax
  104b06:	66 90                	xchg   %ax,%ax
  104b08:	66 90                	xchg   %ax,%ax
  104b0a:	66 90                	xchg   %ax,%ax
  104b0c:	66 90                	xchg   %ax,%ax
  104b0e:	66 90                	xchg   %ax,%ax

00104b10 <pmm_init_freelists>:
static int free_list[MAX_ORDER];


// Initialize the freelists to empty
void pmm_init_freelists(void) {
    for (int i = 0; i < MAX_ORDER; i++) {
  104b10:	e8 a3 b8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104b15:	05 df 84 00 00       	add    $0x84df,%eax
  104b1a:	8d 80 4c cc 44 01    	lea    0x144cc4c(%eax),%eax
        free_list[i] = -1;
  104b20:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  104b26:	8d 50 2c             	lea    0x2c(%eax),%edx
    for (int i = 0; i < MAX_ORDER; i++) {
  104b29:	83 c0 04             	add    $0x4,%eax
  104b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        free_list[i] = -1;
  104b30:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104b36:	83 c0 08             	add    $0x8,%eax
        free_list[i] = -1;
  104b39:	c7 40 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104b40:	39 d0                	cmp    %edx,%eax
  104b42:	75 ec                	jne    104b30 <pmm_init_freelists+0x20>
    }
}
  104b44:	c3                   	ret
  104b45:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104b4c:	00 
  104b4d:	8d 76 00             	lea    0x0(%esi),%esi

00104b50 <get_nps>:

// Getter function for NUM_PAGES.
unsigned int get_nps(void) {
    return NUM_PAGES;
  104b50:	e8 63 b8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104b55:	05 9f 84 00 00       	add    $0x849f,%eax
  104b5a:	8b 80 78 cc 44 01    	mov    0x144cc78(%eax),%eax
}
  104b60:	c3                   	ret
  104b61:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104b68:	00 
  104b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00104b70 <at_get_order>:

// Getter function for the buddy order of a page.
unsigned int at_get_order(unsigned int page_index) {
    if (page_index < NUM_PAGES) {
  104b70:	e8 58 02 00 00       	call   104dcd <__x86.get_pc_thunk.cx>
  104b75:	81 c1 7f 84 00 00    	add    $0x847f,%ecx
unsigned int at_get_order(unsigned int page_index) {
  104b7b:	8b 44 24 04          	mov    0x4(%esp),%eax
        return AT[page_index].order;
    }
    return 0; // Default to order 0 (4KB) if out of bounds
  104b7f:	31 d2                	xor    %edx,%edx
    if (page_index < NUM_PAGES) {
  104b81:	3b 81 78 cc 44 01    	cmp    0x144cc78(%ecx),%eax
  104b87:	73 0a                	jae    104b93 <at_get_order+0x23>
        return AT[page_index].order;
  104b89:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104b8c:	8b 94 81 54 cc 04 00 	mov    0x4cc54(%ecx,%eax,4),%edx
}
  104b93:	89 d0                	mov    %edx,%eax
  104b95:	c3                   	ret
  104b96:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104b9d:	00 
  104b9e:	66 90                	xchg   %ax,%ax

00104ba0 <set_nps>:
// Setter function for NUM_PAGES.
void set_nps(unsigned int nps) {
    NUM_PAGES = nps;
  104ba0:	e8 13 b8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104ba5:	05 4f 84 00 00       	add    $0x844f,%eax
  104baa:	8b 54 24 04          	mov    0x4(%esp),%edx
  104bae:	89 90 78 cc 44 01    	mov    %edx,0x144cc78(%eax)
}
  104bb4:	c3                   	ret
  104bb5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104bbc:	00 
  104bbd:	8d 76 00             	lea    0x0(%esi),%esi

00104bc0 <at_is_norm>:
    return NUM_PAGES;
  104bc0:	e8 08 02 00 00       	call   104dcd <__x86.get_pc_thunk.cx>
  104bc5:	81 c1 2f 84 00 00    	add    $0x842f,%ecx

// Getter function for page permission.
unsigned int at_is_norm(unsigned int page_index) {
  104bcb:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < get_nps() && AT[page_index].perm == 2) {
        return 1;
    }
    return 0;
  104bcf:	31 d2                	xor    %edx,%edx
    if (page_index < get_nps() && AT[page_index].perm == 2) {
  104bd1:	3b 81 78 cc 44 01    	cmp    0x144cc78(%ecx),%eax
  104bd7:	73 10                	jae    104be9 <at_is_norm+0x29>
  104bd9:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104bdc:	31 d2                	xor    %edx,%edx
  104bde:	83 bc 81 4c cc 04 00 	cmpl   $0x2,0x4cc4c(%ecx,%eax,4)
  104be5:	02 
  104be6:	0f 94 c2             	sete   %dl
}
  104be9:	89 d0                	mov    %edx,%eax
  104beb:	c3                   	ret
  104bec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104bf0 <at_set_perm>:

// Setter function for page permission.
void at_set_perm(unsigned int page_index, unsigned int perm) {
    if (page_index < NUM_PAGES) {
  104bf0:	e8 c7 b7 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104bf5:	81 c2 ff 83 00 00    	add    $0x83ff,%edx
void at_set_perm(unsigned int page_index, unsigned int perm) {
  104bfb:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < NUM_PAGES) {
  104bff:	3b 82 78 cc 44 01    	cmp    0x144cc78(%edx),%eax
  104c05:	73 0e                	jae    104c15 <at_set_perm+0x25>
        AT[page_index].perm = perm;
  104c07:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104c0b:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104c0e:	89 8c 82 4c cc 04 00 	mov    %ecx,0x4cc4c(%edx,%eax,4)
    }
}
  104c15:	c3                   	ret
  104c16:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c1d:	00 
  104c1e:	66 90                	xchg   %ax,%ax

00104c20 <at_is_allocated>:

// Getter function for page allocation status.
unsigned int at_is_allocated(unsigned int page_index) {
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
  104c20:	e8 a8 01 00 00       	call   104dcd <__x86.get_pc_thunk.cx>
  104c25:	81 c1 cf 83 00 00    	add    $0x83cf,%ecx
unsigned int at_is_allocated(unsigned int page_index) {
  104c2b:	8b 44 24 04          	mov    0x4(%esp),%eax
        return 1;
    }
    return 0;
  104c2f:	31 d2                	xor    %edx,%edx
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
  104c31:	3b 81 78 cc 44 01    	cmp    0x144cc78(%ecx),%eax
  104c37:	73 11                	jae    104c4a <at_is_allocated+0x2a>
  104c39:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104c3c:	31 d2                	xor    %edx,%edx
  104c3e:	8b 84 81 50 cc 04 00 	mov    0x4cc50(%ecx,%eax,4),%eax
  104c45:	85 c0                	test   %eax,%eax
  104c47:	0f 95 c2             	setne  %dl
}
  104c4a:	89 d0                	mov    %edx,%eax
  104c4c:	c3                   	ret
  104c4d:	8d 76 00             	lea    0x0(%esi),%esi

00104c50 <at_set_allocated>:

// Setter function for page allocation status.
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
    if (page_index < NUM_PAGES) {
  104c50:	e8 67 b7 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104c55:	81 c2 9f 83 00 00    	add    $0x839f,%edx
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
  104c5b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < NUM_PAGES) {
  104c5f:	3b 82 78 cc 44 01    	cmp    0x144cc78(%edx),%eax
  104c65:	73 0e                	jae    104c75 <at_set_allocated+0x25>
        AT[page_index].allocated = allocated;
  104c67:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104c6b:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104c6e:	89 8c 82 50 cc 04 00 	mov    %ecx,0x4cc50(%edx,%eax,4)
    }
}
  104c75:	c3                   	ret
  104c76:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c7d:	00 
  104c7e:	66 90                	xchg   %ax,%ax

00104c80 <get_free_list_head>:

int get_free_list_head(unsigned int order) {
    if (order >= MAX_ORDER) return -1;
  104c80:	e8 37 b7 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104c85:	81 c2 6f 83 00 00    	add    $0x836f,%edx
int get_free_list_head(unsigned int order) {
  104c8b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (order >= MAX_ORDER) return -1;
  104c8f:	83 f8 0a             	cmp    $0xa,%eax
  104c92:	77 0c                	ja     104ca0 <get_free_list_head+0x20>
    return free_list[order];
  104c94:	8b 84 82 4c cc 44 01 	mov    0x144cc4c(%edx,%eax,4),%eax
  104c9b:	c3                   	ret
  104c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if (order >= MAX_ORDER) return -1;
  104ca0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  104ca5:	c3                   	ret
  104ca6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104cad:	00 
  104cae:	66 90                	xchg   %ax,%ax

00104cb0 <at_list_add>:

// Add a page to the free list at the specified order.
void at_list_add(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104cb0:	e8 18 01 00 00       	call   104dcd <__x86.get_pc_thunk.cx>
  104cb5:	81 c1 3f 83 00 00    	add    $0x833f,%ecx
void at_list_add(unsigned int order, unsigned int page_index) {
  104cbb:	55                   	push   %ebp
  104cbc:	57                   	push   %edi
  104cbd:	56                   	push   %esi
  104cbe:	53                   	push   %ebx
  104cbf:	83 ec 08             	sub    $0x8,%esp
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104cc2:	83 7c 24 1c 0a       	cmpl   $0xa,0x1c(%esp)
void at_list_add(unsigned int order, unsigned int page_index) {
  104cc7:	8b 54 24 20          	mov    0x20(%esp),%edx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104ccb:	77 5f                	ja     104d2c <at_list_add+0x7c>
  104ccd:	3b 91 78 cc 44 01    	cmp    0x144cc78(%ecx),%edx
  104cd3:	73 57                	jae    104d2c <at_list_add+0x7c>

    // Gatekeeper: buddy freelists must contain ONLY normal RAM pages
    if (AT[page_index].perm != 2) return;
  104cd5:	8d 35 4c cc 04 00    	lea    0x4cc4c,%esi
  104cdb:	8d 04 92             	lea    (%edx,%edx,4),%eax
  104cde:	8d 1c 31             	lea    (%ecx,%esi,1),%ebx
  104ce1:	c1 e0 02             	shl    $0x2,%eax
  104ce4:	89 1c 24             	mov    %ebx,(%esp)
  104ce7:	01 c3                	add    %eax,%ebx
  104ce9:	83 3b 02             	cmpl   $0x2,(%ebx)
  104cec:	75 3e                	jne    104d2c <at_list_add+0x7c>

    int current_head = free_list[order];
  104cee:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  104cf2:	8d a9 4c cc 44 01    	lea    0x144cc4c(%ecx),%ebp

    AT[page_index].order = order;
  104cf8:	01 c8                	add    %ecx,%eax
    AT[page_index].next  = current_head;
    AT[page_index].prev  = -1;
  104cfa:	c7 43 10 ff ff ff ff 	movl   $0xffffffff,0x10(%ebx)
    int current_head = free_list[order];
  104d01:	89 6c 24 04          	mov    %ebp,0x4(%esp)
    AT[page_index].order = order;
  104d05:	01 f0                	add    %esi,%eax
    int current_head = free_list[order];
  104d07:	8b 6c bd 00          	mov    0x0(%ebp,%edi,4),%ebp
    AT[page_index].order = order;
  104d0b:	89 78 08             	mov    %edi,0x8(%eax)
    AT[page_index].next  = current_head;
  104d0e:	89 68 0c             	mov    %ebp,0xc(%eax)

    if (current_head != -1) {
  104d11:	83 fd ff             	cmp    $0xffffffff,%ebp
  104d14:	74 0b                	je     104d21 <at_list_add+0x71>
        AT[current_head].prev = (int)page_index;
  104d16:	8b 1c 24             	mov    (%esp),%ebx
  104d19:	8d 44 ad 00          	lea    0x0(%ebp,%ebp,4),%eax
  104d1d:	89 54 83 10          	mov    %edx,0x10(%ebx,%eax,4)
    }
    free_list[order] = (int)page_index;
  104d21:	8b 44 24 04          	mov    0x4(%esp),%eax
  104d25:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  104d29:	89 14 b8             	mov    %edx,(%eax,%edi,4)
}
  104d2c:	83 c4 08             	add    $0x8,%esp
  104d2f:	5b                   	pop    %ebx
  104d30:	5e                   	pop    %esi
  104d31:	5f                   	pop    %edi
  104d32:	5d                   	pop    %ebp
  104d33:	c3                   	ret
  104d34:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104d3b:	00 
  104d3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104d40 <at_list_remove>:


// Removes a page from the free list at the specified order.
void at_list_remove(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104d40:	e8 73 b6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104d45:	05 af 82 00 00       	add    $0x82af,%eax
void at_list_remove(unsigned int order, unsigned int page_index) {
  104d4a:	55                   	push   %ebp
  104d4b:	57                   	push   %edi
  104d4c:	56                   	push   %esi
  104d4d:	53                   	push   %ebx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104d4e:	83 7c 24 14 0a       	cmpl   $0xa,0x14(%esp)
  104d53:	77 66                	ja     104dbb <at_list_remove+0x7b>
  104d55:	8b b0 78 cc 44 01    	mov    0x144cc78(%eax),%esi
  104d5b:	39 74 24 18          	cmp    %esi,0x18(%esp)
  104d5f:	73 5a                	jae    104dbb <at_list_remove+0x7b>

    int n = AT[page_index].next;
  104d61:	8b 7c 24 18          	mov    0x18(%esp),%edi
  104d65:	8d 14 bd 00 00 00 00 	lea    0x0(,%edi,4),%edx
  104d6c:	89 d3                	mov    %edx,%ebx
  104d6e:	01 fb                	add    %edi,%ebx
  104d70:	8d 3d 4c cc 04 00    	lea    0x4cc4c,%edi
  104d76:	c1 e3 02             	shl    $0x2,%ebx
    int p = AT[page_index].prev;
  104d79:	8d 34 07             	lea    (%edi,%eax,1),%esi
    int n = AT[page_index].next;
  104d7c:	8b 8c 18 58 cc 04 00 	mov    0x4cc58(%eax,%ebx,1),%ecx
    int p = AT[page_index].prev;
  104d83:	8b 5c 33 10          	mov    0x10(%ebx,%esi,1),%ebx

    if (p != -1) {
  104d87:	83 fb ff             	cmp    $0xffffffff,%ebx
  104d8a:	74 34                	je     104dc0 <at_list_remove+0x80>
        AT[p].next = n;
  104d8c:	8d 2c 9b             	lea    (%ebx,%ebx,4),%ebp
  104d8f:	8d 2c a8             	lea    (%eax,%ebp,4),%ebp
  104d92:	89 4c 2f 0c          	mov    %ecx,0xc(%edi,%ebp,1)
    } else {
        free_list[order] = n;
    }

    if (n != -1) {
  104d96:	83 f9 ff             	cmp    $0xffffffff,%ecx
  104d99:	74 07                	je     104da2 <at_list_remove+0x62>
        AT[n].prev = p;
  104d9b:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
  104d9e:	89 5c 8e 10          	mov    %ebx,0x10(%esi,%ecx,4)
    }

    AT[page_index].next = -1;
  104da2:	03 54 24 18          	add    0x18(%esp),%edx
  104da6:	c1 e2 02             	shl    $0x2,%edx
  104da9:	01 d0                	add    %edx,%eax
    AT[page_index].prev = -1;
  104dab:	c7 44 32 10 ff ff ff 	movl   $0xffffffff,0x10(%edx,%esi,1)
  104db2:	ff 
    AT[page_index].next = -1;
  104db3:	c7 44 07 0c ff ff ff 	movl   $0xffffffff,0xc(%edi,%eax,1)
  104dba:	ff 
}
  104dbb:	5b                   	pop    %ebx
  104dbc:	5e                   	pop    %esi
  104dbd:	5f                   	pop    %edi
  104dbe:	5d                   	pop    %ebp
  104dbf:	c3                   	ret
        free_list[order] = n;
  104dc0:	8b 6c 24 14          	mov    0x14(%esp),%ebp
  104dc4:	89 8c a8 4c cc 44 01 	mov    %ecx,0x144cc4c(%eax,%ebp,4)
  104dcb:	eb c9                	jmp    104d96 <at_list_remove+0x56>

00104dcd <__x86.get_pc_thunk.cx>:
  104dcd:	8b 0c 24             	mov    (%esp),%ecx
  104dd0:	c3                   	ret
  104dd1:	66 90                	xchg   %ax,%ax
  104dd3:	66 90                	xchg   %ax,%ax
  104dd5:	66 90                	xchg   %ax,%ax
  104dd7:	66 90                	xchg   %ax,%ax
  104dd9:	66 90                	xchg   %ax,%ax
  104ddb:	66 90                	xchg   %ax,%ax
  104ddd:	66 90                	xchg   %ax,%ax
  104ddf:	90                   	nop

00104de0 <MATIntro_test1>:
#include "export.h"



// Test case 1: Test get_nps and set_nps functions.
int MATIntro_test1() {
  104de0:	55                   	push   %ebp
  104de1:	57                   	push   %edi
  104de2:	56                   	push   %esi
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
    int i;
    int nps = get_nps();
    for (i = 0; i < 10; i++) {
  104de3:	31 f6                	xor    %esi,%esi
int MATIntro_test1() {
  104de5:	53                   	push   %ebx
  104de6:	e8 d5 b5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104deb:	81 c3 09 82 00 00    	add    $0x8209,%ebx
  104df1:	83 ec 4c             	sub    $0x4c,%esp
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
  104df4:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
  104dfb:	00 
  104dfc:	8d 7c 24 18          	lea    0x18(%esp),%edi
  104e00:	c7 44 24 1c 03 00 00 	movl   $0x3,0x1c(%esp)
  104e07:	00 
  104e08:	c7 44 24 20 05 00 00 	movl   $0x5,0x20(%esp)
  104e0f:	00 
  104e10:	c7 44 24 24 06 00 00 	movl   $0x6,0x24(%esp)
  104e17:	00 
  104e18:	c7 44 24 28 4e 00 00 	movl   $0x4e,0x28(%esp)
  104e1f:	00 
  104e20:	c7 44 24 2c f8 0d 00 	movl   $0xdf8,0x2c(%esp)
  104e27:	00 
  104e28:	c7 44 24 30 20 00 00 	movl   $0x20,0x30(%esp)
  104e2f:	00 
  104e30:	c7 44 24 34 08 00 00 	movl   $0x8,0x34(%esp)
  104e37:	00 
  104e38:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
  104e3f:	00 
  104e40:	c7 44 24 3c 64 00 00 	movl   $0x64,0x3c(%esp)
  104e47:	00 
    int nps = get_nps();
  104e48:	e8 03 fd ff ff       	call   104b50 <get_nps>
  104e4d:	89 44 24 0c          	mov    %eax,0xc(%esp)
    for (i = 0; i < 10; i++) {
  104e51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        set_nps(rn10[i]);
  104e58:	8b 2c b7             	mov    (%edi,%esi,4),%ebp
  104e5b:	83 ec 0c             	sub    $0xc,%esp
  104e5e:	55                   	push   %ebp
  104e5f:	e8 3c fd ff ff       	call   104ba0 <set_nps>
        if (get_nps() != rn10[i]) {
  104e64:	e8 e7 fc ff ff       	call   104b50 <get_nps>
  104e69:	83 c4 10             	add    $0x10,%esp
  104e6c:	39 c5                	cmp    %eax,%ebp
  104e6e:	75 30                	jne    104ea0 <MATIntro_test1+0xc0>
    for (i = 0; i < 10; i++) {
  104e70:	83 c6 01             	add    $0x1,%esi
  104e73:	83 fe 0a             	cmp    $0xa,%esi
  104e76:	75 e0                	jne    104e58 <MATIntro_test1+0x78>
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
            set_nps(nps);
            return 1;
        }
    }
    set_nps(nps);
  104e78:	83 ec 0c             	sub    $0xc,%esp
  104e7b:	ff 74 24 18          	push   0x18(%esp)
  104e7f:	e8 1c fd ff ff       	call   104ba0 <set_nps>
    dprintf("test 1 passed.\n");
  104e84:	8d 83 7a b8 ff ff    	lea    -0x4786(%ebx),%eax
  104e8a:	89 04 24             	mov    %eax,(%esp)
  104e8d:	e8 da de ff ff       	call   102d6c <dprintf>
    return 0;
  104e92:	83 c4 10             	add    $0x10,%esp
  104e95:	31 c0                	xor    %eax,%eax
}
  104e97:	83 c4 4c             	add    $0x4c,%esp
  104e9a:	5b                   	pop    %ebx
  104e9b:	5e                   	pop    %esi
  104e9c:	5f                   	pop    %edi
  104e9d:	5d                   	pop    %ebp
  104e9e:	c3                   	ret
  104e9f:	90                   	nop
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
  104ea0:	e8 ab fc ff ff       	call   104b50 <get_nps>
  104ea5:	55                   	push   %ebp
  104ea6:	50                   	push   %eax
  104ea7:	8d 83 64 bb ff ff    	lea    -0x449c(%ebx),%eax
  104ead:	56                   	push   %esi
  104eae:	50                   	push   %eax
  104eaf:	e8 b8 de ff ff       	call   102d6c <dprintf>
            set_nps(nps);
  104eb4:	58                   	pop    %eax
  104eb5:	ff 74 24 18          	push   0x18(%esp)
  104eb9:	e8 e2 fc ff ff       	call   104ba0 <set_nps>
            return 1;
  104ebe:	83 c4 10             	add    $0x10,%esp
  104ec1:	b8 01 00 00 00       	mov    $0x1,%eax
}
  104ec6:	83 c4 4c             	add    $0x4c,%esp
  104ec9:	5b                   	pop    %ebx
  104eca:	5e                   	pop    %esi
  104ecb:	5f                   	pop    %edi
  104ecc:	5d                   	pop    %ebp
  104ecd:	c3                   	ret
  104ece:	66 90                	xchg   %ax,%ax

00104ed0 <MATIntro_test2>:

// Test case 2: Test permissions and allocation.
int MATIntro_test2() {
  104ed0:	56                   	push   %esi
  104ed1:	53                   	push   %ebx
  104ed2:	e8 e9 b4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104ed7:	81 c3 1d 81 00 00    	add    $0x811d,%ebx
  104edd:	83 ec 0c             	sub    $0xc,%esp
    at_set_perm(0, 2); // Set to normal
  104ee0:	6a 02                	push   $0x2
  104ee2:	6a 00                	push   $0x0
  104ee4:	e8 07 fd ff ff       	call   104bf0 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0) {
  104ee9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104ef0:	e8 cb fc ff ff       	call   104bc0 <at_is_norm>
  104ef5:	83 c4 10             	add    $0x10,%esp
  104ef8:	83 f8 01             	cmp    $0x1,%eax
  104efb:	75 11                	jne    104f0e <MATIntro_test2+0x3e>
  104efd:	83 ec 0c             	sub    $0xc,%esp
  104f00:	6a 00                	push   $0x0
  104f02:	e8 19 fd ff ff       	call   104c20 <at_is_allocated>
  104f07:	83 c4 10             	add    $0x10,%esp
  104f0a:	85 c0                	test   %eax,%eax
  104f0c:	74 3a                	je     104f48 <MATIntro_test2+0x78>
        dprintf("test 2.1 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  104f0e:	83 ec 0c             	sub    $0xc,%esp
  104f11:	6a 00                	push   $0x0
  104f13:	e8 08 fd ff ff       	call   104c20 <at_is_allocated>
  104f18:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104f1f:	89 c6                	mov    %eax,%esi
  104f21:	e8 9a fc ff ff       	call   104bc0 <at_is_norm>
  104f26:	83 c4 0c             	add    $0xc,%esp
  104f29:	56                   	push   %esi
  104f2a:	50                   	push   %eax
  104f2b:	8d 83 8c bb ff ff    	lea    -0x4474(%ebx),%eax
  104f31:	50                   	push   %eax
  104f32:	e8 35 de ff ff       	call   102d6c <dprintf>
        return 1;
  104f37:	83 c4 10             	add    $0x10,%esp
        dprintf("test 2.2 failed: permission not reset\n");
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  104f3a:	83 c4 04             	add    $0x4,%esp
        return 1;
  104f3d:	b8 01 00 00 00       	mov    $0x1,%eax
}
  104f42:	5b                   	pop    %ebx
  104f43:	5e                   	pop    %esi
  104f44:	c3                   	ret
  104f45:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_perm(0, 0); // Set to reserved
  104f48:	83 ec 08             	sub    $0x8,%esp
  104f4b:	6a 00                	push   $0x0
  104f4d:	6a 00                	push   $0x0
  104f4f:	e8 9c fc ff ff       	call   104bf0 <at_set_perm>
    if (at_is_norm(0) != 0) {
  104f54:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104f5b:	e8 60 fc ff ff       	call   104bc0 <at_is_norm>
  104f60:	83 c4 10             	add    $0x10,%esp
  104f63:	85 c0                	test   %eax,%eax
  104f65:	75 21                	jne    104f88 <MATIntro_test2+0xb8>
    dprintf("test 2 passed.\n");
  104f67:	83 ec 0c             	sub    $0xc,%esp
  104f6a:	8d 83 8a b8 ff ff    	lea    -0x4776(%ebx),%eax
  104f70:	50                   	push   %eax
  104f71:	e8 f6 dd ff ff       	call   102d6c <dprintf>
    return 0;
  104f76:	83 c4 10             	add    $0x10,%esp
  104f79:	31 c0                	xor    %eax,%eax
}
  104f7b:	83 c4 04             	add    $0x4,%esp
  104f7e:	5b                   	pop    %ebx
  104f7f:	5e                   	pop    %esi
  104f80:	c3                   	ret
  104f81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 2.2 failed: permission not reset\n");
  104f88:	83 ec 0c             	sub    $0xc,%esp
  104f8b:	8d 83 b4 bb ff ff    	lea    -0x444c(%ebx),%eax
  104f91:	50                   	push   %eax
  104f92:	e8 d5 dd ff ff       	call   102d6c <dprintf>
        return 1;
  104f97:	83 c4 10             	add    $0x10,%esp
  104f9a:	eb 9e                	jmp    104f3a <MATIntro_test2+0x6a>
  104f9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104fa0 <MATIntro_test3>:

// Test case 3: Test allocation status.
int MATIntro_test3() {
  104fa0:	53                   	push   %ebx
  104fa1:	e8 1a b4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104fa6:	81 c3 4e 80 00 00    	add    $0x804e,%ebx
  104fac:	83 ec 10             	sub    $0x10,%esp
    at_set_allocated(1, 0);
  104faf:	6a 00                	push   $0x0
  104fb1:	6a 01                	push   $0x1
  104fb3:	e8 98 fc ff ff       	call   104c50 <at_set_allocated>
    if (at_is_allocated(1) != 0) {
  104fb8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  104fbf:	e8 5c fc ff ff       	call   104c20 <at_is_allocated>
  104fc4:	83 c4 10             	add    $0x10,%esp
  104fc7:	85 c0                	test   %eax,%eax
  104fc9:	75 75                	jne    105040 <MATIntro_test3+0xa0>
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
        return 1;
    }
    at_set_allocated(1, 1);
  104fcb:	83 ec 08             	sub    $0x8,%esp
  104fce:	6a 01                	push   $0x1
  104fd0:	6a 01                	push   $0x1
  104fd2:	e8 79 fc ff ff       	call   104c50 <at_set_allocated>
    if (at_is_allocated(1) != 1) {
  104fd7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  104fde:	e8 3d fc ff ff       	call   104c20 <at_is_allocated>
  104fe3:	83 c4 10             	add    $0x10,%esp
  104fe6:	83 f8 01             	cmp    $0x1,%eax
  104fe9:	74 2d                	je     105018 <MATIntro_test3+0x78>
        dprintf("test 3.2 failed: (%d != 1)\n", at_is_allocated(1));
  104feb:	83 ec 0c             	sub    $0xc,%esp
  104fee:	6a 01                	push   $0x1
  104ff0:	e8 2b fc ff ff       	call   104c20 <at_is_allocated>
  104ff5:	5a                   	pop    %edx
  104ff6:	59                   	pop    %ecx
  104ff7:	50                   	push   %eax
  104ff8:	8d 83 b6 b8 ff ff    	lea    -0x474a(%ebx),%eax
  104ffe:	50                   	push   %eax
  104fff:	e8 68 dd ff ff       	call   102d6c <dprintf>
        return 1;
  105004:	83 c4 10             	add    $0x10,%esp
    }
    at_set_allocated(1, 0);
    dprintf("test 3 passed.\n");
    return 0;
}
  105007:	83 c4 08             	add    $0x8,%esp
        return 1;
  10500a:	b8 01 00 00 00       	mov    $0x1,%eax
}
  10500f:	5b                   	pop    %ebx
  105010:	c3                   	ret
  105011:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    at_set_allocated(1, 0);
  105018:	83 ec 08             	sub    $0x8,%esp
  10501b:	6a 00                	push   $0x0
  10501d:	6a 01                	push   $0x1
  10501f:	e8 2c fc ff ff       	call   104c50 <at_set_allocated>
    dprintf("test 3 passed.\n");
  105024:	8d 83 d2 b8 ff ff    	lea    -0x472e(%ebx),%eax
  10502a:	89 04 24             	mov    %eax,(%esp)
  10502d:	e8 3a dd ff ff       	call   102d6c <dprintf>
    return 0;
  105032:	83 c4 10             	add    $0x10,%esp
  105035:	31 c0                	xor    %eax,%eax
}
  105037:	83 c4 08             	add    $0x8,%esp
  10503a:	5b                   	pop    %ebx
  10503b:	c3                   	ret
  10503c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
  105040:	83 ec 0c             	sub    $0xc,%esp
  105043:	6a 01                	push   $0x1
  105045:	e8 d6 fb ff ff       	call   104c20 <at_is_allocated>
  10504a:	5a                   	pop    %edx
  10504b:	59                   	pop    %ecx
  10504c:	50                   	push   %eax
  10504d:	8d 83 9a b8 ff ff    	lea    -0x4766(%ebx),%eax
  105053:	50                   	push   %eax
  105054:	e8 13 dd ff ff       	call   102d6c <dprintf>
        return 1;
  105059:	83 c4 10             	add    $0x10,%esp
  10505c:	eb a9                	jmp    105007 <MATIntro_test3+0x67>
  10505e:	66 90                	xchg   %ax,%ax

00105060 <MATIntro_test_buddy>:

// Buddy allocator test case: Verifies the link-list pointers in AT.
int MATIntro_test_buddy() {
  105060:	57                   	push   %edi
  105061:	56                   	push   %esi
  105062:	53                   	push   %ebx
  105063:	e8 58 b3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105068:	81 c3 8c 7f 00 00    	add    $0x7f8c,%ebx
    // Save previous state so we don't contaminate later layers
    unsigned int old_nps = get_nps();
  10506e:	e8 dd fa ff ff       	call   104b50 <get_nps>

    set_nps(2048);
  105073:	83 ec 0c             	sub    $0xc,%esp
  105076:	68 00 08 00 00       	push   $0x800
    unsigned int old_nps = get_nps();
  10507b:	89 c6                	mov    %eax,%esi
    set_nps(2048);
  10507d:	e8 1e fb ff ff       	call   104ba0 <set_nps>
    pmm_init_freelists();
  105082:	e8 89 fa ff ff       	call   104b10 <pmm_init_freelists>

    // Make sure pages we add are Normal RAM (perm==2)
    at_set_allocated(10, 0);
  105087:	5f                   	pop    %edi
  105088:	58                   	pop    %eax
  105089:	6a 00                	push   $0x0
  10508b:	6a 0a                	push   $0xa
  10508d:	e8 be fb ff ff       	call   104c50 <at_set_allocated>
    at_set_allocated(20, 0);
  105092:	58                   	pop    %eax
  105093:	5a                   	pop    %edx
  105094:	6a 00                	push   $0x0
  105096:	6a 14                	push   $0x14
  105098:	e8 b3 fb ff ff       	call   104c50 <at_set_allocated>
    at_set_perm(10, 2);
  10509d:	59                   	pop    %ecx
  10509e:	5f                   	pop    %edi
  10509f:	6a 02                	push   $0x2
  1050a1:	6a 0a                	push   $0xa
  1050a3:	e8 48 fb ff ff       	call   104bf0 <at_set_perm>
    at_set_perm(20, 2);
  1050a8:	58                   	pop    %eax
  1050a9:	5a                   	pop    %edx
  1050aa:	6a 02                	push   $0x2
  1050ac:	6a 14                	push   $0x14
  1050ae:	e8 3d fb ff ff       	call   104bf0 <at_set_perm>

    at_set_allocated(512, 0);
  1050b3:	59                   	pop    %ecx
  1050b4:	5f                   	pop    %edi
  1050b5:	6a 00                	push   $0x0
  1050b7:	68 00 02 00 00       	push   $0x200
  1050bc:	e8 8f fb ff ff       	call   104c50 <at_set_allocated>
    at_set_perm(512, 2);
  1050c1:	58                   	pop    %eax
  1050c2:	5a                   	pop    %edx
  1050c3:	6a 02                	push   $0x2
  1050c5:	68 00 02 00 00       	push   $0x200
  1050ca:	e8 21 fb ff ff       	call   104bf0 <at_set_perm>

    // Test A: Add pages to Order 0 (4KB)
    at_list_add(0, 10);
  1050cf:	59                   	pop    %ecx
  1050d0:	5f                   	pop    %edi
  1050d1:	6a 0a                	push   $0xa
  1050d3:	6a 00                	push   $0x0
  1050d5:	e8 d6 fb ff ff       	call   104cb0 <at_list_add>
    at_list_add(0, 20);
  1050da:	58                   	pop    %eax
  1050db:	5a                   	pop    %edx
  1050dc:	6a 14                	push   $0x14
  1050de:	6a 00                	push   $0x0
  1050e0:	e8 cb fb ff ff       	call   104cb0 <at_list_add>

    if (get_free_list_head(0) != 20) {
  1050e5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1050ec:	e8 8f fb ff ff       	call   104c80 <get_free_list_head>
  1050f1:	83 c4 10             	add    $0x10,%esp
  1050f4:	83 f8 14             	cmp    $0x14,%eax
  1050f7:	74 57                	je     105150 <MATIntro_test_buddy+0xf0>
        dprintf("Buddy Test failed: Head of order 0 should be 20, got %d\n", get_free_list_head(0));
  1050f9:	83 ec 0c             	sub    $0xc,%esp
  1050fc:	6a 00                	push   $0x0
  1050fe:	e8 7d fb ff ff       	call   104c80 <get_free_list_head>
  105103:	5a                   	pop    %edx
  105104:	59                   	pop    %ecx
  105105:	50                   	push   %eax
  105106:	8d 83 dc bb ff ff    	lea    -0x4424(%ebx),%eax
        return 1;
    }

    int head = get_free_list_head(0);
    if (AT[head].next != 10) {
        dprintf("Buddy Test failed: AT[20].next should be 10, got %d\n", AT[head].next);
  10510c:	50                   	push   %eax
  10510d:	e8 5a dc ff ff       	call   102d6c <dprintf>
        at_set_perm(10, 0);
  105112:	59                   	pop    %ecx
  105113:	5f                   	pop    %edi
  105114:	6a 00                	push   $0x0
  105116:	6a 0a                	push   $0xa
  105118:	e8 d3 fa ff ff       	call   104bf0 <at_set_perm>
        at_set_perm(20, 0);
  10511d:	58                   	pop    %eax
  10511e:	5a                   	pop    %edx
  10511f:	6a 00                	push   $0x0
  105121:	6a 14                	push   $0x14
  105123:	e8 c8 fa ff ff       	call   104bf0 <at_set_perm>
        at_set_perm(512, 0);
  105128:	59                   	pop    %ecx
  105129:	5f                   	pop    %edi
  10512a:	6a 00                	push   $0x0
  10512c:	68 00 02 00 00       	push   $0x200
  105131:	e8 ba fa ff ff       	call   104bf0 <at_set_perm>
        pmm_init_freelists();
  105136:	e8 d5 f9 ff ff       	call   104b10 <pmm_init_freelists>
        set_nps(old_nps);
  10513b:	89 34 24             	mov    %esi,(%esp)
  10513e:	e8 5d fa ff ff       	call   104ba0 <set_nps>
        return 1;
  105143:	83 c4 10             	add    $0x10,%esp
        return 1;
  105146:	b8 01 00 00 00       	mov    $0x1,%eax
    at_set_perm(512, 0);
    pmm_init_freelists();
    set_nps(old_nps);

    return 0;
}
  10514b:	5b                   	pop    %ebx
  10514c:	5e                   	pop    %esi
  10514d:	5f                   	pop    %edi
  10514e:	c3                   	ret
  10514f:	90                   	nop
    int head = get_free_list_head(0);
  105150:	83 ec 0c             	sub    $0xc,%esp
  105153:	6a 00                	push   $0x0
  105155:	e8 26 fb ff ff       	call   104c80 <get_free_list_head>
    if (AT[head].next != 10) {
  10515a:	c7 c7 40 9c 15 00    	mov    $0x159c40,%edi
  105160:	83 c4 10             	add    $0x10,%esp
  105163:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105166:	8b 44 87 0c          	mov    0xc(%edi,%eax,4),%eax
  10516a:	83 f8 0a             	cmp    $0xa,%eax
  10516d:	75 61                	jne    1051d0 <MATIntro_test_buddy+0x170>
    if (AT[10].prev != 20) {
  10516f:	8b 87 d8 00 00 00    	mov    0xd8(%edi),%eax
  105175:	83 f8 14             	cmp    $0x14,%eax
  105178:	75 46                	jne    1051c0 <MATIntro_test_buddy+0x160>
    at_list_add(9, 512);
  10517a:	83 ec 08             	sub    $0x8,%esp
  10517d:	68 00 02 00 00       	push   $0x200
  105182:	6a 09                	push   $0x9
  105184:	e8 27 fb ff ff       	call   104cb0 <at_list_add>
    if (get_free_list_head(9) != 512 || AT[512].order != 9) {
  105189:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  105190:	e8 eb fa ff ff       	call   104c80 <get_free_list_head>
  105195:	83 c4 10             	add    $0x10,%esp
  105198:	3d 00 02 00 00       	cmp    $0x200,%eax
  10519d:	75 09                	jne    1051a8 <MATIntro_test_buddy+0x148>
  10519f:	83 bf 08 28 00 00 09 	cmpl   $0x9,0x2808(%edi)
  1051a6:	74 38                	je     1051e0 <MATIntro_test_buddy+0x180>
        dprintf("Buddy Test failed: Order 9 initialization failed\n");
  1051a8:	83 ec 0c             	sub    $0xc,%esp
  1051ab:	8d 83 88 bc ff ff    	lea    -0x4378(%ebx),%eax
  1051b1:	e9 56 ff ff ff       	jmp    10510c <MATIntro_test_buddy+0xac>
  1051b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1051bd:	00 
  1051be:	66 90                	xchg   %ax,%ax
        dprintf("Buddy Test failed: AT[10].prev should be 20, got %d\n", AT[10].prev);
  1051c0:	83 ec 08             	sub    $0x8,%esp
  1051c3:	50                   	push   %eax
  1051c4:	8d 83 50 bc ff ff    	lea    -0x43b0(%ebx),%eax
  1051ca:	e9 3d ff ff ff       	jmp    10510c <MATIntro_test_buddy+0xac>
  1051cf:	90                   	nop
        dprintf("Buddy Test failed: AT[20].next should be 10, got %d\n", AT[head].next);
  1051d0:	83 ec 08             	sub    $0x8,%esp
  1051d3:	50                   	push   %eax
  1051d4:	8d 83 18 bc ff ff    	lea    -0x43e8(%ebx),%eax
  1051da:	e9 2d ff ff ff       	jmp    10510c <MATIntro_test_buddy+0xac>
  1051df:	90                   	nop
    at_list_remove(0, 20);
  1051e0:	83 ec 08             	sub    $0x8,%esp
  1051e3:	6a 14                	push   $0x14
  1051e5:	6a 00                	push   $0x0
  1051e7:	e8 54 fb ff ff       	call   104d40 <at_list_remove>
    if (get_free_list_head(0) != 10 || AT[10].prev != -1) {
  1051ec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1051f3:	e8 88 fa ff ff       	call   104c80 <get_free_list_head>
  1051f8:	83 c4 10             	add    $0x10,%esp
  1051fb:	83 f8 0a             	cmp    $0xa,%eax
  1051fe:	75 09                	jne    105209 <MATIntro_test_buddy+0x1a9>
  105200:	83 bf d8 00 00 00 ff 	cmpl   $0xffffffff,0xd8(%edi)
  105207:	74 0e                	je     105217 <MATIntro_test_buddy+0x1b7>
        dprintf("Buddy Test failed: Removal logic failed to update head/prev\n");
  105209:	83 ec 0c             	sub    $0xc,%esp
  10520c:	8d 83 bc bc ff ff    	lea    -0x4344(%ebx),%eax
  105212:	e9 f5 fe ff ff       	jmp    10510c <MATIntro_test_buddy+0xac>
    dprintf("Buddy list logic tests passed.\n");
  105217:	83 ec 0c             	sub    $0xc,%esp
  10521a:	8d 83 fc bc ff ff    	lea    -0x4304(%ebx),%eax
  105220:	50                   	push   %eax
  105221:	e8 46 db ff ff       	call   102d6c <dprintf>
    at_set_perm(10, 0);
  105226:	58                   	pop    %eax
  105227:	5a                   	pop    %edx
  105228:	6a 00                	push   $0x0
  10522a:	6a 0a                	push   $0xa
  10522c:	e8 bf f9 ff ff       	call   104bf0 <at_set_perm>
    at_set_perm(20, 0);
  105231:	59                   	pop    %ecx
  105232:	5f                   	pop    %edi
  105233:	6a 00                	push   $0x0
  105235:	6a 14                	push   $0x14
  105237:	e8 b4 f9 ff ff       	call   104bf0 <at_set_perm>
    at_set_perm(512, 0);
  10523c:	58                   	pop    %eax
  10523d:	5a                   	pop    %edx
  10523e:	6a 00                	push   $0x0
  105240:	68 00 02 00 00       	push   $0x200
  105245:	e8 a6 f9 ff ff       	call   104bf0 <at_set_perm>
    pmm_init_freelists();
  10524a:	e8 c1 f8 ff ff       	call   104b10 <pmm_init_freelists>
    set_nps(old_nps);
  10524f:	89 34 24             	mov    %esi,(%esp)
  105252:	e8 49 f9 ff ff       	call   104ba0 <set_nps>
    return 0;
  105257:	83 c4 10             	add    $0x10,%esp
  10525a:	31 c0                	xor    %eax,%eax
  10525c:	e9 ea fe ff ff       	jmp    10514b <MATIntro_test_buddy+0xeb>
  105261:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105268:	00 
  105269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105270 <test_MATIntro>:



// The main entry point for the MATIntro layer test.
int test_MATIntro() {
  105270:	57                   	push   %edi
  105271:	e8 ea df ff ff       	call   103260 <__x86.get_pc_thunk.di>
  105276:	81 c7 7e 7d 00 00    	add    $0x7d7e,%edi
  10527c:	56                   	push   %esi
  10527d:	53                   	push   %ebx
    int error = 0;
    error += MATIntro_test1();
  10527e:	e8 5d fb ff ff       	call   104de0 <MATIntro_test1>
  105283:	89 c3                	mov    %eax,%ebx
    error += MATIntro_test2();
  105285:	e8 46 fc ff ff       	call   104ed0 <MATIntro_test2>
  10528a:	01 c3                	add    %eax,%ebx
    error += MATIntro_test3();
  10528c:	e8 0f fd ff ff       	call   104fa0 <MATIntro_test3>
  105291:	01 c3                	add    %eax,%ebx
    error += MATIntro_test_buddy();
  105293:	e8 c8 fd ff ff       	call   105060 <MATIntro_test_buddy>

    if (error == 0) {
  105298:	89 de                	mov    %ebx,%esi
  10529a:	01 c6                	add    %eax,%esi
  10529c:	75 22                	jne    1052c0 <test_MATIntro+0x50>
        dprintf("ALL MATIntro TESTS PASSED\n");
  10529e:	83 ec 0c             	sub    $0xc,%esp
  1052a1:	8d 87 e2 b8 ff ff    	lea    -0x471e(%edi),%eax
  1052a7:	89 fb                	mov    %edi,%ebx
  1052a9:	50                   	push   %eax
  1052aa:	e8 bd da ff ff       	call   102d6c <dprintf>
  1052af:	83 c4 10             	add    $0x10,%esp
    } else {
        dprintf("MATIntro TESTS FAILED WITH %d ERRORS\n", error);
    }
    return error;
  1052b2:	89 f0                	mov    %esi,%eax
  1052b4:	5b                   	pop    %ebx
  1052b5:	5e                   	pop    %esi
  1052b6:	5f                   	pop    %edi
  1052b7:	c3                   	ret
  1052b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1052bf:	00 
        dprintf("MATIntro TESTS FAILED WITH %d ERRORS\n", error);
  1052c0:	83 ec 08             	sub    $0x8,%esp
  1052c3:	8d 87 1c bd ff ff    	lea    -0x42e4(%edi),%eax
  1052c9:	89 fb                	mov    %edi,%ebx
  1052cb:	56                   	push   %esi
  1052cc:	50                   	push   %eax
  1052cd:	e8 9a da ff ff       	call   102d6c <dprintf>
  1052d2:	83 c4 10             	add    $0x10,%esp
  1052d5:	89 f0                	mov    %esi,%eax
  1052d7:	5b                   	pop    %ebx
  1052d8:	5e                   	pop    %esi
  1052d9:	5f                   	pop    %edi
  1052da:	c3                   	ret
  1052db:	66 90                	xchg   %ax,%ax
  1052dd:	66 90                	xchg   %ax,%ax
  1052df:	90                   	nop

001052e0 <pmem_init>:
    }
    return 1;
}

void pmem_init(unsigned int mbi_addr)
{
  1052e0:	55                   	push   %ebp
  1052e1:	57                   	push   %edi
  1052e2:	56                   	push   %esi
  1052e3:	53                   	push   %ebx
  1052e4:	e8 d7 b0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1052e9:	81 c3 0b 7d 00 00    	add    $0x7d0b,%ebx
  1052ef:	83 ec 38             	sub    $0x38,%esp
    unsigned int i, j;
    unsigned int highest_addr = 0;

    devinit(mbi_addr);
  1052f2:	ff 74 24 4c          	push   0x4c(%esp)
  1052f6:	e8 06 b8 ff ff       	call   100b01 <devinit>
    unsigned int n_entries = get_size();
  1052fb:	e8 4f bd ff ff       	call   10104f <get_size>

    // Find end of physical RAM
    for (i = 0; i < n_entries; i++) {
  105300:	83 c4 10             	add    $0x10,%esp
    unsigned int n_entries = get_size();
  105303:	89 c7                	mov    %eax,%edi
    for (i = 0; i < n_entries; i++) {
  105305:	85 c0                	test   %eax,%eax
  105307:	0f 84 e7 02 00 00    	je     1055f4 <pmem_init+0x314>
  10530d:	89 44 24 08          	mov    %eax,0x8(%esp)
    unsigned int highest_addr = 0;
  105311:	31 d2                	xor    %edx,%edx
    for (i = 0; i < n_entries; i++) {
  105313:	31 ed                	xor    %ebp,%ebp
  105315:	89 d7                	mov    %edx,%edi
  105317:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10531e:	00 
  10531f:	90                   	nop
        unsigned int end = get_mms(i) + get_mml(i);
  105320:	83 ec 0c             	sub    $0xc,%esp
  105323:	55                   	push   %ebp
  105324:	e8 3b bd ff ff       	call   101064 <get_mms>
  105329:	89 2c 24             	mov    %ebp,(%esp)
  10532c:	89 c6                	mov    %eax,%esi
  10532e:	e8 97 bd ff ff       	call   1010ca <get_mml>
  105333:	01 f0                	add    %esi,%eax
        if (end > highest_addr) highest_addr = end;
  105335:	39 c7                	cmp    %eax,%edi
  105337:	0f 42 f8             	cmovb  %eax,%edi
    for (i = 0; i < n_entries; i++) {
  10533a:	83 c4 10             	add    $0x10,%esp
  10533d:	83 c5 01             	add    $0x1,%ebp
  105340:	39 6c 24 08          	cmp    %ebp,0x8(%esp)
  105344:	75 da                	jne    105320 <pmem_init+0x40>
    }
    unsigned int phys_nps = highest_addr / PAGESIZE;
  105346:	89 fa                	mov    %edi,%edx
  105348:	8b 7c 24 08          	mov    0x8(%esp),%edi
  10534c:	c1 ea 0c             	shr    $0xc,%edx
  10534f:	89 54 24 14          	mov    %edx,0x14(%esp)

    // AT must cover the PI window used by tests
    set_nps(VM_USERHI_PI);
  105353:	83 ec 0c             	sub    $0xc,%esp

    pmm_init_freelists();

    // PHASE 1: reset whole AT
    for (i = 0; i < get_nps(); i++) {
  105356:	31 f6                	xor    %esi,%esi
    set_nps(VM_USERHI_PI);
  105358:	68 00 00 0f 00       	push   $0xf0000
  10535d:	e8 3e f8 ff ff       	call   104ba0 <set_nps>
    pmm_init_freelists();
  105362:	e8 a9 f7 ff ff       	call   104b10 <pmm_init_freelists>
    for (i = 0; i < get_nps(); i++) {
  105367:	c7 c0 40 9c 15 00    	mov    $0x159c40,%eax
  10536d:	89 44 24 28          	mov    %eax,0x28(%esp)
  105371:	8d 68 08             	lea    0x8(%eax),%ebp
  105374:	83 c4 10             	add    $0x10,%esp
  105377:	eb 3a                	jmp    1053b3 <pmem_init+0xd3>
  105379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        at_set_allocated(i, 0);
  105380:	83 ec 08             	sub    $0x8,%esp
  105383:	83 c5 14             	add    $0x14,%ebp
  105386:	6a 00                	push   $0x0
  105388:	56                   	push   %esi
  105389:	e8 c2 f8 ff ff       	call   104c50 <at_set_allocated>
        at_set_perm(i, 0);
  10538e:	58                   	pop    %eax
  10538f:	5a                   	pop    %edx
  105390:	6a 00                	push   $0x0
  105392:	56                   	push   %esi
    for (i = 0; i < get_nps(); i++) {
  105393:	83 c6 01             	add    $0x1,%esi
        at_set_perm(i, 0);
  105396:	e8 55 f8 ff ff       	call   104bf0 <at_set_perm>
        AT[i].next = -1;
  10539b:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
        AT[i].prev = -1;
  1053a2:	83 c4 10             	add    $0x10,%esp
  1053a5:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
        AT[i].order = 0;
  1053ac:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    for (i = 0; i < get_nps(); i++) {
  1053b3:	e8 98 f7 ff ff       	call   104b50 <get_nps>
  1053b8:	39 c6                	cmp    %eax,%esi
  1053ba:	72 c4                	jb     105380 <pmem_init+0xa0>
    }

    // Mark below-user window as kernel/reserved (not allocatable)
    for (i = 0; i < VM_USERLO_PI; i++) {
  1053bc:	31 ed                	xor    %ebp,%ebp
  1053be:	66 90                	xchg   %ax,%ax
        at_set_perm(i, 1);
  1053c0:	83 ec 08             	sub    $0x8,%esp
  1053c3:	6a 01                	push   $0x1
  1053c5:	55                   	push   %ebp
    for (i = 0; i < VM_USERLO_PI; i++) {
  1053c6:	83 c5 01             	add    $0x1,%ebp
        at_set_perm(i, 1);
  1053c9:	e8 22 f8 ff ff       	call   104bf0 <at_set_perm>
    for (i = 0; i < VM_USERLO_PI; i++) {
  1053ce:	83 c4 10             	add    $0x10,%esp
  1053d1:	81 fd 00 00 04 00    	cmp    $0x40000,%ebp
  1053d7:	75 e7                	jne    1053c0 <pmem_init+0xe0>
  1053d9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  1053e0:	00 
    }

    // PHASE 2a: mark user-window pages as Normal/Reserved via BIOS (shifted mapping)
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  1053e1:	b8 00 00 04 00       	mov    $0x40000,%eax
  1053e6:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
  1053ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        unsigned int phys_pi = i - VM_USERLO_PI;

        if (phys_pi >= phys_nps) {
  1053f0:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  1053f4:	8d 90 00 00 fc ff    	lea    -0x40000(%eax),%edx
  1053fa:	39 ca                	cmp    %ecx,%edx
  1053fc:	0f 83 3e 01 00 00    	jae    105540 <pmem_init+0x260>

        unsigned int paddr_start = phys_pi * PAGESIZE;
        unsigned int paddr_end   = paddr_start + PAGESIZE;

        int is_ram = 0;
        for (j = 0; j < n_entries; j++) {
  105402:	85 ff                	test   %edi,%edi
  105404:	0f 84 97 01 00 00    	je     1055a1 <pmem_init+0x2c1>
  10540a:	8b 54 24 0c          	mov    0xc(%esp),%edx
  10540e:	89 44 24 10          	mov    %eax,0x10(%esp)
  105412:	31 f6                	xor    %esi,%esi
  105414:	81 c2 00 10 00 00    	add    $0x1000,%edx
  10541a:	89 54 24 08          	mov    %edx,0x8(%esp)
  10541e:	66 90                	xchg   %ax,%ax
            if (!is_usable(j)) continue;
  105420:	83 ec 0c             	sub    $0xc,%esp
  105423:	56                   	push   %esi
  105424:	e8 11 bd ff ff       	call   10113a <is_usable>
  105429:	83 c4 10             	add    $0x10,%esp
  10542c:	85 c0                	test   %eax,%eax
  10542e:	74 2a                	je     10545a <pmem_init+0x17a>

            unsigned int start = get_mms(j);
  105430:	83 ec 0c             	sub    $0xc,%esp
  105433:	56                   	push   %esi
  105434:	e8 2b bc ff ff       	call   101064 <get_mms>
            unsigned int end   = start + get_mml(j);
  105439:	89 34 24             	mov    %esi,(%esp)
            unsigned int start = get_mms(j);
  10543c:	89 c5                	mov    %eax,%ebp
            unsigned int end   = start + get_mml(j);
  10543e:	e8 87 bc ff ff       	call   1010ca <get_mml>

            if (start <= paddr_start && paddr_end <= end) {
  105443:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  105447:	83 c4 10             	add    $0x10,%esp
            unsigned int end   = start + get_mml(j);
  10544a:	01 e8                	add    %ebp,%eax
            if (start <= paddr_start && paddr_end <= end) {
  10544c:	39 c8                	cmp    %ecx,%eax
  10544e:	72 0a                	jb     10545a <pmem_init+0x17a>
  105450:	39 6c 24 0c          	cmp    %ebp,0xc(%esp)
  105454:	0f 83 16 01 00 00    	jae    105570 <pmem_init+0x290>
        for (j = 0; j < n_entries; j++) {
  10545a:	83 c6 01             	add    $0x1,%esi
  10545d:	39 f7                	cmp    %esi,%edi
  10545f:	75 bf                	jne    105420 <pmem_init+0x140>
  105461:	8b 44 24 10          	mov    0x10(%esp),%eax

        if (is_ram) {
            at_set_perm(i, 2);   // Normal RAM
            at_set_allocated(i, 0);
        } else {
            at_set_perm(i, 0);   // Reserved hole
  105465:	83 ec 08             	sub    $0x8,%esp
  105468:	6a 00                	push   $0x0
  10546a:	50                   	push   %eax
  10546b:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  10546f:	e8 7c f7 ff ff       	call   104bf0 <at_set_perm>
  105474:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  105478:	83 c4 10             	add    $0x10,%esp
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  10547b:	8b 54 24 08          	mov    0x8(%esp),%edx
  10547f:	83 c0 01             	add    $0x1,%eax
  105482:	89 54 24 0c          	mov    %edx,0xc(%esp)
  105486:	3d 00 00 0f 00       	cmp    $0xf0000,%eax
  10548b:	0f 85 5f ff ff ff    	jne    1053f0 <pmem_init+0x110>
    unsigned int n = 1U << order;
  105491:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
  105495:	eb 18                	jmp    1054af <pmem_init+0x1cf>
  105497:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10549e:	00 
  10549f:	90                   	nop
            }
        }

        if (order < 0) {
            // should not happen, but safe fallback
            i++;
  1054a0:	83 c5 01             	add    $0x1,%ebp
    while (i < VM_USERHI_PI) {
  1054a3:	81 fd ff ff 0e 00    	cmp    $0xeffff,%ebp
  1054a9:	0f 87 3d 01 00 00    	ja     1055ec <pmem_init+0x30c>
        if (AT[i].perm != 2 || AT[i].allocated != 0) {
  1054af:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  1054b3:	8d 14 ad 00 00 00 00 	lea    0x0(,%ebp,4),%edx
  1054ba:	8d 04 2a             	lea    (%edx,%ebp,1),%eax
  1054bd:	8d 34 81             	lea    (%ecx,%eax,4),%esi
  1054c0:	83 3e 02             	cmpl   $0x2,(%esi)
  1054c3:	75 db                	jne    1054a0 <pmem_init+0x1c0>
  1054c5:	8b 46 04             	mov    0x4(%esi),%eax
  1054c8:	85 c0                	test   %eax,%eax
  1054ca:	75 d4                	jne    1054a0 <pmem_init+0x1c0>
            if ((i & (size - 1)) != 0) continue;
  1054cc:	89 54 24 08          	mov    %edx,0x8(%esp)
        for (order = MAX_ORDER - 1; order >= 0; order--) {
  1054d0:	b9 0a 00 00 00       	mov    $0xa,%ecx
            if ((i & (size - 1)) != 0) continue;
  1054d5:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  1054da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1054e0:	89 f8                	mov    %edi,%eax
  1054e2:	d3 e0                	shl    %cl,%eax
  1054e4:	f7 d0                	not    %eax
  1054e6:	85 e8                	test   %ebp,%eax
  1054e8:	75 46                	jne    105530 <pmem_init+0x250>
    if (base < VM_USERLO_PI) return 0;
  1054ea:	81 fd ff ff 03 00    	cmp    $0x3ffff,%ebp
  1054f0:	76 3e                	jbe    105530 <pmem_init+0x250>
    unsigned int n = 1U << order;
  1054f2:	b8 01 00 00 00       	mov    $0x1,%eax
  1054f7:	d3 e0                	shl    %cl,%eax
    if (base + n > VM_USERHI_PI) return 0;
  1054f9:	01 e8                	add    %ebp,%eax
  1054fb:	3d 00 00 0f 00       	cmp    $0xf0000,%eax
  105500:	77 2e                	ja     105530 <pmem_init+0x250>
  105502:	8b 54 24 18          	mov    0x18(%esp),%edx
  105506:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105509:	8d 14 82             	lea    (%edx,%eax,4),%edx
  10550c:	89 f0                	mov    %esi,%eax
  10550e:	eb 11                	jmp    105521 <pmem_init+0x241>
        if (AT[pi].allocated != 0) return 0;
  105510:	83 78 04 00          	cmpl   $0x0,0x4(%eax)
  105514:	75 1a                	jne    105530 <pmem_init+0x250>
    for (i = 0; i < n; i++) {
  105516:	83 c0 14             	add    $0x14,%eax
  105519:	39 d0                	cmp    %edx,%eax
  10551b:	0f 84 93 00 00 00    	je     1055b4 <pmem_init+0x2d4>
        if (AT[pi].perm != 2) return 0;
  105521:	83 38 02             	cmpl   $0x2,(%eax)
  105524:	74 ea                	je     105510 <pmem_init+0x230>
  105526:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10552d:	00 
  10552e:	66 90                	xchg   %ax,%ax
        for (order = MAX_ORDER - 1; order >= 0; order--) {
  105530:	83 e9 01             	sub    $0x1,%ecx
  105533:	73 ab                	jae    1054e0 <pmem_init+0x200>
  105535:	e9 66 ff ff ff       	jmp    1054a0 <pmem_init+0x1c0>
  10553a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            at_set_perm(i, 0);
  105540:	83 ec 08             	sub    $0x8,%esp
  105543:	6a 00                	push   $0x0
  105545:	50                   	push   %eax
  105546:	89 44 24 20          	mov    %eax,0x20(%esp)
  10554a:	e8 a1 f6 ff ff       	call   104bf0 <at_set_perm>
            continue;
  10554f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  105553:	83 c4 10             	add    $0x10,%esp
  105556:	05 00 10 00 00       	add    $0x1000,%eax
  10555b:	89 44 24 08          	mov    %eax,0x8(%esp)
  10555f:	8b 44 24 10          	mov    0x10(%esp),%eax
  105563:	e9 13 ff ff ff       	jmp    10547b <pmem_init+0x19b>
  105568:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10556f:	00 
  105570:	8b 44 24 10          	mov    0x10(%esp),%eax
            at_set_perm(i, 2);   // Normal RAM
  105574:	83 ec 08             	sub    $0x8,%esp
  105577:	6a 02                	push   $0x2
  105579:	50                   	push   %eax
  10557a:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  10557e:	e8 6d f6 ff ff       	call   104bf0 <at_set_perm>
            at_set_allocated(i, 0);
  105583:	5a                   	pop    %edx
  105584:	59                   	pop    %ecx
  105585:	6a 00                	push   $0x0
  105587:	8b 44 24 18          	mov    0x18(%esp),%eax
  10558b:	50                   	push   %eax
  10558c:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  105590:	e8 bb f6 ff ff       	call   104c50 <at_set_allocated>
  105595:	83 c4 10             	add    $0x10,%esp
  105598:	8b 44 24 0c          	mov    0xc(%esp),%eax
  10559c:	e9 da fe ff ff       	jmp    10547b <pmem_init+0x19b>
  1055a1:	8b 54 24 0c          	mov    0xc(%esp),%edx
  1055a5:	81 c2 00 10 00 00    	add    $0x1000,%edx
  1055ab:	89 54 24 08          	mov    %edx,0x8(%esp)
  1055af:	e9 b1 fe ff ff       	jmp    105465 <pmem_init+0x185>
  1055b4:	8b 54 24 08          	mov    0x8(%esp),%edx
            continue;
        }

        // add this block head to its order list
        AT[i].order = (unsigned int)order;
  1055b8:	8b 44 24 18          	mov    0x18(%esp),%eax
        at_list_add((unsigned int)order, i);
  1055bc:	83 ec 08             	sub    $0x8,%esp
        AT[i].order = (unsigned int)order;
  1055bf:	01 ea                	add    %ebp,%edx
  1055c1:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
        at_list_add((unsigned int)order, i);
  1055c5:	55                   	push   %ebp
  1055c6:	51                   	push   %ecx
  1055c7:	89 4c 24 18          	mov    %ecx,0x18(%esp)
  1055cb:	e8 e0 f6 ff ff       	call   104cb0 <at_list_add>

        // skip past the block
        i += (1U << order);
  1055d0:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  1055d4:	b8 01 00 00 00       	mov    $0x1,%eax
  1055d9:	83 c4 10             	add    $0x10,%esp
  1055dc:	d3 e0                	shl    %cl,%eax
  1055de:	01 c5                	add    %eax,%ebp
    while (i < VM_USERHI_PI) {
  1055e0:	81 fd ff ff 0e 00    	cmp    $0xeffff,%ebp
  1055e6:	0f 86 c3 fe ff ff    	jbe    1054af <pmem_init+0x1cf>
    }
}
  1055ec:	83 c4 2c             	add    $0x2c,%esp
  1055ef:	5b                   	pop    %ebx
  1055f0:	5e                   	pop    %esi
  1055f1:	5f                   	pop    %edi
  1055f2:	5d                   	pop    %ebp
  1055f3:	c3                   	ret
    for (i = 0; i < n_entries; i++) {
  1055f4:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
  1055fb:	00 
  1055fc:	e9 52 fd ff ff       	jmp    105353 <pmem_init+0x73>
  105601:	66 90                	xchg   %ax,%ax
  105603:	66 90                	xchg   %ax,%ax
  105605:	66 90                	xchg   %ax,%ax
  105607:	66 90                	xchg   %ax,%ax
  105609:	66 90                	xchg   %ax,%ax
  10560b:	66 90                	xchg   %ax,%ax
  10560d:	66 90                	xchg   %ax,%ax
  10560f:	90                   	nop

00105610 <MATInit_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATInit_test1()
{
  105610:	57                   	push   %edi
  105611:	56                   	push   %esi
  105612:	31 f6                	xor    %esi,%esi
  105614:	53                   	push   %ebx
  105615:	e8 a6 ad ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10561a:	81 c3 da 79 00 00    	add    $0x79da,%ebx
    int i;
    int nps = get_nps();
  105620:	e8 2b f5 ff ff       	call   104b50 <get_nps>
  105625:	89 c7                	mov    %eax,%edi
    if (nps <= 1000) {
  105627:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  10562c:	7f 11                	jg     10563f <MATInit_test1+0x2f>
  10562e:	e9 ad 00 00 00       	jmp    1056e0 <MATInit_test1+0xd0>
  105633:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
        return 1;
    }
    for (i = 0; i < nps; i++) {
  105638:	83 c6 01             	add    $0x1,%esi
  10563b:	39 f7                	cmp    %esi,%edi
  10563d:	74 51                	je     105690 <MATInit_test1+0x80>
        if (at_is_allocated(i) != 0) {
  10563f:	83 ec 0c             	sub    $0xc,%esp
  105642:	56                   	push   %esi
  105643:	e8 d8 f5 ff ff       	call   104c20 <at_is_allocated>
  105648:	83 c4 10             	add    $0x10,%esp
  10564b:	85 c0                	test   %eax,%eax
  10564d:	75 61                	jne    1056b0 <MATInit_test1+0xa0>
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
            return 1;
        }
        if ((i < VM_USERLO_PI || VM_USERHI_PI <= i) && at_is_norm(i) != 0) {
  10564f:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  105655:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  10565a:	76 dc                	jbe    105638 <MATInit_test1+0x28>
  10565c:	83 ec 0c             	sub    $0xc,%esp
  10565f:	56                   	push   %esi
  105660:	e8 5b f5 ff ff       	call   104bc0 <at_is_norm>
  105665:	83 c4 10             	add    $0x10,%esp
  105668:	85 c0                	test   %eax,%eax
  10566a:	74 cc                	je     105638 <MATInit_test1+0x28>
            dprintf("test 1.3 failed (i = %d): (%d != 0)\n", i, at_is_norm(i));
  10566c:	83 ec 0c             	sub    $0xc,%esp
  10566f:	56                   	push   %esi
  105670:	e8 4b f5 ff ff       	call   104bc0 <at_is_norm>
  105675:	83 c4 0c             	add    $0xc,%esp
  105678:	50                   	push   %eax
  105679:	8d 83 8c bd ff ff    	lea    -0x4274(%ebx),%eax
  10567f:	56                   	push   %esi
  105680:	50                   	push   %eax
  105681:	e8 e6 d6 ff ff       	call   102d6c <dprintf>
            return 1;
  105686:	83 c4 10             	add    $0x10,%esp
  105689:	eb 42                	jmp    1056cd <MATInit_test1+0xbd>
  10568b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        }
    }
    dprintf("test 1 passed.\n");
  105690:	83 ec 0c             	sub    $0xc,%esp
  105693:	8d 83 7a b8 ff ff    	lea    -0x4786(%ebx),%eax
  105699:	50                   	push   %eax
  10569a:	e8 cd d6 ff ff       	call   102d6c <dprintf>
    return 0;
  10569f:	83 c4 10             	add    $0x10,%esp
  1056a2:	31 c0                	xor    %eax,%eax
}
  1056a4:	5b                   	pop    %ebx
  1056a5:	5e                   	pop    %esi
  1056a6:	5f                   	pop    %edi
  1056a7:	c3                   	ret
  1056a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1056af:	00 
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
  1056b0:	83 ec 0c             	sub    $0xc,%esp
  1056b3:	56                   	push   %esi
  1056b4:	e8 67 f5 ff ff       	call   104c20 <at_is_allocated>
  1056b9:	83 c4 0c             	add    $0xc,%esp
  1056bc:	50                   	push   %eax
  1056bd:	8d 83 64 bd ff ff    	lea    -0x429c(%ebx),%eax
  1056c3:	56                   	push   %esi
  1056c4:	50                   	push   %eax
  1056c5:	e8 a2 d6 ff ff       	call   102d6c <dprintf>
            return 1;
  1056ca:	83 c4 10             	add    $0x10,%esp
}
  1056cd:	5b                   	pop    %ebx
        return 1;
  1056ce:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1056d3:	5e                   	pop    %esi
  1056d4:	5f                   	pop    %edi
  1056d5:	c3                   	ret
  1056d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1056dd:	00 
  1056de:	66 90                	xchg   %ax,%ax
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
  1056e0:	83 ec 08             	sub    $0x8,%esp
  1056e3:	50                   	push   %eax
  1056e4:	8d 83 44 bd ff ff    	lea    -0x42bc(%ebx),%eax
  1056ea:	50                   	push   %eax
  1056eb:	e8 7c d6 ff ff       	call   102d6c <dprintf>
        return 1;
  1056f0:	83 c4 10             	add    $0x10,%esp
  1056f3:	eb d8                	jmp    1056cd <MATInit_test1+0xbd>
  1056f5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1056fc:	00 
  1056fd:	8d 76 00             	lea    0x0(%esi),%esi

00105700 <MATInit_test_buddy>:

// Check if the Buddy System was populated during pmem_init
int MATInit_test_buddy()
{
  105700:	56                   	push   %esi
  105701:	53                   	push   %ebx
  105702:	e8 b9 ac ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105707:	81 c3 ed 78 00 00    	add    $0x78ed,%ebx
  10570d:	83 ec 10             	sub    $0x10,%esp
    int head = get_free_list_head(0);
  105710:	6a 00                	push   $0x0
  105712:	e8 69 f5 ff ff       	call   104c80 <get_free_list_head>
    if (head == -1) {
  105717:	83 c4 10             	add    $0x10,%esp
  10571a:	83 f8 ff             	cmp    $0xffffffff,%eax
  10571d:	74 51                	je     105770 <MATInit_test_buddy+0x70>
        dprintf("Buddy Init Test failed: Order 0 free list is empty!\n");
        return 1;
    }
    
    // Verify the head is actually a normal page
    if (at_is_norm(head) != 1) {
  10571f:	83 ec 0c             	sub    $0xc,%esp
  105722:	89 c6                	mov    %eax,%esi
  105724:	50                   	push   %eax
  105725:	e8 96 f4 ff ff       	call   104bc0 <at_is_norm>
  10572a:	83 c4 10             	add    $0x10,%esp
  10572d:	83 f8 01             	cmp    $0x1,%eax
  105730:	74 1e                	je     105750 <MATInit_test_buddy+0x50>
        dprintf("Buddy Init Test failed: Head page %d is not Normal RAM\n", head);
  105732:	83 ec 08             	sub    $0x8,%esp
  105735:	8d 83 ec bd ff ff    	lea    -0x4214(%ebx),%eax
  10573b:	56                   	push   %esi
  10573c:	50                   	push   %eax
  10573d:	e8 2a d6 ff ff       	call   102d6c <dprintf>
        return 1;
  105742:	83 c4 10             	add    $0x10,%esp
    }

    dprintf("Buddy Init test passed.\n");
    return 0;
}
  105745:	83 c4 04             	add    $0x4,%esp
        return 1;
  105748:	b8 01 00 00 00       	mov    $0x1,%eax
}
  10574d:	5b                   	pop    %ebx
  10574e:	5e                   	pop    %esi
  10574f:	c3                   	ret
    dprintf("Buddy Init test passed.\n");
  105750:	83 ec 0c             	sub    $0xc,%esp
  105753:	8d 83 fd b8 ff ff    	lea    -0x4703(%ebx),%eax
  105759:	50                   	push   %eax
  10575a:	e8 0d d6 ff ff       	call   102d6c <dprintf>
    return 0;
  10575f:	83 c4 10             	add    $0x10,%esp
  105762:	31 c0                	xor    %eax,%eax
}
  105764:	83 c4 04             	add    $0x4,%esp
  105767:	5b                   	pop    %ebx
  105768:	5e                   	pop    %esi
  105769:	c3                   	ret
  10576a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("Buddy Init Test failed: Order 0 free list is empty!\n");
  105770:	83 ec 0c             	sub    $0xc,%esp
  105773:	8d 83 b4 bd ff ff    	lea    -0x424c(%ebx),%eax
  105779:	50                   	push   %eax
  10577a:	e8 ed d5 ff ff       	call   102d6c <dprintf>
        return 1;
  10577f:	83 c4 10             	add    $0x10,%esp
  105782:	eb c1                	jmp    105745 <MATInit_test_buddy+0x45>
  105784:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10578b:	00 
  10578c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00105790 <test_MATInit>:

int test_MATInit()
{
  105790:	53                   	push   %ebx
  105791:	83 ec 08             	sub    $0x8,%esp
    return MATInit_test1() + MATInit_test_buddy();
  105794:	e8 77 fe ff ff       	call   105610 <MATInit_test1>
  105799:	89 c3                	mov    %eax,%ebx
  10579b:	e8 60 ff ff ff       	call   105700 <MATInit_test_buddy>
}
  1057a0:	83 c4 08             	add    $0x8,%esp
    return MATInit_test1() + MATInit_test_buddy();
  1057a3:	01 d8                	add    %ebx,%eax
}
  1057a5:	5b                   	pop    %ebx
  1057a6:	c3                   	ret
  1057a7:	66 90                	xchg   %ax,%ax
  1057a9:	66 90                	xchg   %ax,%ax
  1057ab:	66 90                	xchg   %ax,%ax
  1057ad:	66 90                	xchg   %ax,%ax
  1057af:	90                   	nop

001057b0 <palloc_order>:
/*
 * Standard buddy-style allocation:
 * - find smallest k >= order with non-empty free_list[k]
 * - pop block, split down to 'order'
 */
int palloc_order(unsigned int order) {
  1057b0:	55                   	push   %ebp
  1057b1:	57                   	push   %edi
  1057b2:	56                   	push   %esi
  1057b3:	53                   	push   %ebx
  1057b4:	e8 07 ac ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1057b9:	81 c3 3b 78 00 00    	add    $0x783b,%ebx
  1057bf:	83 ec 1c             	sub    $0x1c,%esp
    if (order >= MAX_ORDER) return -1;
  1057c2:	83 7c 24 30 0a       	cmpl   $0xa,0x30(%esp)
  1057c7:	0f 87 33 01 00 00    	ja     105900 <palloc_order+0x150>

    unsigned int k = order;
  1057cd:	8b 7c 24 30          	mov    0x30(%esp),%edi
  1057d1:	eb 11                	jmp    1057e4 <palloc_order+0x34>
  1057d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    while (k < MAX_ORDER && get_free_list_head(k) == -1) {
        k++;
  1057d8:	83 c7 01             	add    $0x1,%edi
    while (k < MAX_ORDER && get_free_list_head(k) == -1) {
  1057db:	83 ff 0b             	cmp    $0xb,%edi
  1057de:	0f 84 1c 01 00 00    	je     105900 <palloc_order+0x150>
  1057e4:	83 ec 0c             	sub    $0xc,%esp
  1057e7:	57                   	push   %edi
  1057e8:	e8 93 f4 ff ff       	call   104c80 <get_free_list_head>
  1057ed:	83 c4 10             	add    $0x10,%esp
  1057f0:	83 f8 ff             	cmp    $0xffffffff,%eax
  1057f3:	74 e3                	je     1057d8 <palloc_order+0x28>
    }
    if (k >= MAX_ORDER) return -1;

    int pindex = get_free_list_head(k);
  1057f5:	83 ec 0c             	sub    $0xc,%esp
  1057f8:	57                   	push   %edi
  1057f9:	e8 82 f4 ff ff       	call   104c80 <get_free_list_head>
  1057fe:	89 c6                	mov    %eax,%esi
    at_list_remove(k, pindex);
  105800:	58                   	pop    %eax
  105801:	5a                   	pop    %edx
  105802:	56                   	push   %esi
  105803:	57                   	push   %edi
  105804:	e8 37 f5 ff ff       	call   104d40 <at_list_remove>

    // Allocate the block head

    //New added

    unsigned int size = 1U << order;
  105809:	0f b6 4c 24 40       	movzbl 0x40(%esp),%ecx
  10580e:	b8 01 00 00 00       	mov    $0x1,%eax
  105813:	d3 e0                	shl    %cl,%eax
  105815:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  105819:	c7 c0 40 9c 15 00    	mov    $0x159c40,%eax
    while (k > order) {
  10581f:	83 c4 10             	add    $0x10,%esp
  105822:	89 44 24 08          	mov    %eax,0x8(%esp)
  105826:	39 7c 24 30          	cmp    %edi,0x30(%esp)
  10582a:	73 3b                	jae    105867 <palloc_order+0xb7>
  10582c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        k--;
  105830:	83 ef 01             	sub    $0x1,%edi
        int buddy = pindex + (1 << k);
  105833:	bd 01 00 00 00       	mov    $0x1,%ebp
        AT[buddy].order = k;
  105838:	8b 54 24 08          	mov    0x8(%esp),%edx
        at_set_allocated(buddy, 0);
  10583c:	83 ec 08             	sub    $0x8,%esp
        int buddy = pindex + (1 << k);
  10583f:	89 f9                	mov    %edi,%ecx
  105841:	d3 e5                	shl    %cl,%ebp
  105843:	01 f5                	add    %esi,%ebp
        AT[buddy].order = k;
  105845:	8d 44 ad 00          	lea    0x0(%ebp,%ebp,4),%eax
  105849:	89 7c 82 08          	mov    %edi,0x8(%edx,%eax,4)
        at_set_allocated(buddy, 0);
  10584d:	6a 00                	push   $0x0
  10584f:	55                   	push   %ebp
  105850:	e8 fb f3 ff ff       	call   104c50 <at_set_allocated>
        at_list_add(k, buddy);
  105855:	59                   	pop    %ecx
  105856:	58                   	pop    %eax
  105857:	55                   	push   %ebp
  105858:	57                   	push   %edi
  105859:	e8 52 f4 ff ff       	call   104cb0 <at_list_add>
    while (k > order) {
  10585e:	83 c4 10             	add    $0x10,%esp
  105861:	39 7c 24 30          	cmp    %edi,0x30(%esp)
  105865:	75 c9                	jne    105830 <palloc_order+0x80>
  105867:	8b 6c 24 0c          	mov    0xc(%esp),%ebp

    for (unsigned int i = 0; i < size; i++) {
  10586b:	31 ff                	xor    %edi,%edi
  10586d:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_allocated(pindex + i, 1);
  105870:	83 ec 08             	sub    $0x8,%esp
  105873:	8d 04 3e             	lea    (%esi,%edi,1),%eax
    for (unsigned int i = 0; i < size; i++) {
  105876:	83 c7 01             	add    $0x1,%edi
    at_set_allocated(pindex + i, 1);
  105879:	6a 01                	push   $0x1
  10587b:	50                   	push   %eax
  10587c:	e8 cf f3 ff ff       	call   104c50 <at_set_allocated>
    for (unsigned int i = 0; i < size; i++) {
  105881:	83 c4 10             	add    $0x10,%esp
  105884:	39 ef                	cmp    %ebp,%edi
  105886:	72 e8                	jb     105870 <palloc_order+0xc0>
    }

    AT[pindex].order = order;
  105888:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  10588c:	8b 54 24 30          	mov    0x30(%esp),%edx
  105890:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  105893:	c1 e0 02             	shl    $0x2,%eax
  105896:	89 54 01 08          	mov    %edx,0x8(%ecx,%eax,1)

    /* Clean internal metadata */
    for (unsigned int i = 1; i < size; i++) {
  10589a:	85 d2                	test   %edx,%edx
  10589c:	74 46                	je     1058e4 <palloc_order+0x134>
  10589e:	8b 54 24 0c          	mov    0xc(%esp),%edx
  1058a2:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  1058a6:	01 f2                	add    %esi,%edx
  1058a8:	8d 44 01 1c          	lea    0x1c(%ecx,%eax,1),%eax
  1058ac:	8d 14 92             	lea    (%edx,%edx,4),%edx
  1058af:	8d 54 91 08          	lea    0x8(%ecx,%edx,4),%edx
  1058b3:	89 d1                	mov    %edx,%ecx
  1058b5:	29 c1                	sub    %eax,%ecx
  1058b7:	83 e1 04             	and    $0x4,%ecx
  1058ba:	74 14                	je     1058d0 <palloc_order+0x120>
    AT[pindex + i].order = 0;
  1058bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (unsigned int i = 1; i < size; i++) {
  1058c2:	83 c0 14             	add    $0x14,%eax
  1058c5:	39 d0                	cmp    %edx,%eax
  1058c7:	74 1b                	je     1058e4 <palloc_order+0x134>
  1058c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    AT[pindex + i].order = 0;
  1058d0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (unsigned int i = 1; i < size; i++) {
  1058d6:	83 c0 28             	add    $0x28,%eax
    AT[pindex + i].order = 0;
  1058d9:	c7 40 ec 00 00 00 00 	movl   $0x0,-0x14(%eax)
    for (unsigned int i = 1; i < size; i++) {
  1058e0:	39 d0                	cmp    %edx,%eax
  1058e2:	75 ec                	jne    1058d0 <palloc_order+0x120>
    }


    at_set_allocated(pindex, 1);
  1058e4:	83 ec 08             	sub    $0x8,%esp
  1058e7:	6a 01                	push   $0x1
  1058e9:	56                   	push   %esi
  1058ea:	e8 61 f3 ff ff       	call   104c50 <at_set_allocated>

    return pindex;
  1058ef:	83 c4 10             	add    $0x10,%esp
}
  1058f2:	83 c4 1c             	add    $0x1c,%esp
  1058f5:	89 f0                	mov    %esi,%eax
  1058f7:	5b                   	pop    %ebx
  1058f8:	5e                   	pop    %esi
  1058f9:	5f                   	pop    %edi
  1058fa:	5d                   	pop    %ebp
  1058fb:	c3                   	ret
  1058fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if (order >= MAX_ORDER) return -1;
  105900:	be ff ff ff ff       	mov    $0xffffffff,%esi
  105905:	eb eb                	jmp    1058f2 <palloc_order+0x142>
  105907:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10590e:	00 
  10590f:	90                   	nop

00105910 <palloc>:

unsigned int palloc(void) {
  105910:	83 ec 18             	sub    $0x18,%esp
    int res = palloc_order(0);
  105913:	6a 00                	push   $0x0
  105915:	e8 96 fe ff ff       	call   1057b0 <palloc_order>
    if (res == -1) return 0;
  10591a:	31 d2                	xor    %edx,%edx
  10591c:	83 f8 ff             	cmp    $0xffffffff,%eax
  10591f:	0f 44 c2             	cmove  %edx,%eax
    return (unsigned int)res;
}
  105922:	83 c4 1c             	add    $0x1c,%esp
  105925:	c3                   	ret
  105926:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10592d:	00 
  10592e:	66 90                	xchg   %ax,%ax

00105930 <pfree_order>:

/*
 * Free + merge (buddy coalescing)
 * FIX: must clear allocated even when we merge, otherwise MATOp test 1.4 fails.
 */
void pfree_order(unsigned int pindex) { //changed
  105930:	55                   	push   %ebp
  105931:	57                   	push   %edi
  105932:	56                   	push   %esi
  105933:	53                   	push   %ebx
  105934:	e8 87 aa ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105939:	81 c3 bb 76 00 00    	add    $0x76bb,%ebx
  10593f:	83 ec 1c             	sub    $0x1c,%esp
  105942:	8b 54 24 30          	mov    0x30(%esp),%edx

    unsigned int order = AT[pindex].order;
  105946:	c7 c0 40 9c 15 00    	mov    $0x159c40,%eax
  10594c:	89 c1                	mov    %eax,%ecx
  10594e:	89 44 24 0c          	mov    %eax,0xc(%esp)
  105952:	8d 04 92             	lea    (%edx,%edx,4),%eax
  105955:	8b 6c 81 08          	mov    0x8(%ecx,%eax,4),%ebp

    while (order < MAX_ORDER - 1) {
  105959:	83 fd 09             	cmp    $0x9,%ebp
  10595c:	0f 87 f1 00 00 00    	ja     105a53 <pfree_order+0x123>
  105962:	89 e9                	mov    %ebp,%ecx
  105964:	89 d5                	mov    %edx,%ebp
  105966:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10596d:	00 
  10596e:	66 90                	xchg   %ax,%ax

        unsigned int size = 1U << order;
  105970:	b8 01 00 00 00       	mov    $0x1,%eax
  105975:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  105979:	89 ee                	mov    %ebp,%esi
  10597b:	d3 e0                	shl    %cl,%eax
  10597d:	89 44 24 04          	mov    %eax,0x4(%esp)
  105981:	8d 3c 28             	lea    (%eax,%ebp,1),%edi
  105984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

        // Clear allocation bits for this block
        for (unsigned int i = 0; i < size; i++) {
            at_set_allocated(pindex + i, 0);
  105988:	83 ec 08             	sub    $0x8,%esp
  10598b:	6a 00                	push   $0x0
  10598d:	56                   	push   %esi
        for (unsigned int i = 0; i < size; i++) {
  10598e:	83 c6 01             	add    $0x1,%esi
            at_set_allocated(pindex + i, 0);
  105991:	e8 ba f2 ff ff       	call   104c50 <at_set_allocated>
        for (unsigned int i = 0; i < size; i++) {
  105996:	83 c4 10             	add    $0x10,%esp
  105999:	39 fe                	cmp    %edi,%esi
  10599b:	75 eb                	jne    105988 <pfree_order+0x58>
        }

        unsigned int buddy_idx = pindex ^ size;
  10599d:	8b 44 24 04          	mov    0x4(%esp),%eax
  1059a1:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  1059a5:	31 e8                	xor    %ebp,%eax
  1059a7:	89 c6                	mov    %eax,%esi

        // Check if buddy can merge
        if (buddy_idx < VM_USERLO_PI ||
  1059a9:	8d 80 00 00 fc ff    	lea    -0x40000(%eax),%eax
  1059af:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  1059b4:	77 63                	ja     105a19 <pfree_order+0xe9>
            buddy_idx >= VM_USERHI_PI ||
  1059b6:	8b 54 24 0c          	mov    0xc(%esp),%edx
            AT[buddy_idx].order != order ||
  1059ba:	8d 04 b6             	lea    (%esi,%esi,4),%eax
            buddy_idx >= VM_USERHI_PI ||
  1059bd:	39 4c 82 08          	cmp    %ecx,0x8(%edx,%eax,4)
  1059c1:	75 56                	jne    105a19 <pfree_order+0xe9>
  1059c3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
            at_is_allocated(buddy_idx) != 0) {
  1059c7:	83 ec 0c             	sub    $0xc,%esp
  1059ca:	56                   	push   %esi
  1059cb:	e8 50 f2 ff ff       	call   104c20 <at_is_allocated>
            AT[buddy_idx].order != order ||
  1059d0:	83 c4 10             	add    $0x10,%esp
  1059d3:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  1059d7:	85 c0                	test   %eax,%eax
  1059d9:	75 3e                	jne    105a19 <pfree_order+0xe9>
            break;
        }

        // Remove buddy from freelist
        at_list_remove(order, buddy_idx);
  1059db:	83 ec 08             	sub    $0x8,%esp
  1059de:	56                   	push   %esi
  1059df:	51                   	push   %ecx
  1059e0:	89 4c 24 14          	mov    %ecx,0x14(%esp)
  1059e4:	e8 57 f3 ff ff       	call   104d40 <at_list_remove>

        // Choose lower address as new base
        if (buddy_idx < pindex) {
  1059e9:	39 f5                	cmp    %esi,%ebp
            pindex = buddy_idx;
        }

        order++;
  1059eb:	8b 4c 24 14          	mov    0x14(%esp),%ecx
        AT[pindex].order = order;
  1059ef:	8b 54 24 1c          	mov    0x1c(%esp),%edx
        if (buddy_idx < pindex) {
  1059f3:	0f 47 ee             	cmova  %esi,%ebp
    while (order < MAX_ORDER - 1) {
  1059f6:	83 c4 10             	add    $0x10,%esp
        order++;
  1059f9:	83 c1 01             	add    $0x1,%ecx
        AT[pindex].order = order;
  1059fc:	8d 44 ad 00          	lea    0x0(%ebp,%ebp,4),%eax
  105a00:	89 4c 82 08          	mov    %ecx,0x8(%edx,%eax,4)
    while (order < MAX_ORDER - 1) {
  105a04:	83 f9 0a             	cmp    $0xa,%ecx
  105a07:	0f 85 63 ff ff ff    	jne    105970 <pfree_order+0x40>
  105a0d:	89 ea                	mov    %ebp,%edx
  105a0f:	89 cd                	mov    %ecx,%ebp
  105a11:	8d ba 00 04 00 00    	lea    0x400(%edx),%edi
  105a17:	eb 04                	jmp    105a1d <pfree_order+0xed>
  105a19:	89 ea                	mov    %ebp,%edx
  105a1b:	89 cd                	mov    %ecx,%ebp
  105a1d:	89 54 24 30          	mov    %edx,0x30(%esp)
  105a21:	89 d6                	mov    %edx,%esi
  105a23:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    }

    // Finally clear allocation bits for final merged block
    unsigned int final_size = 1U << order;
    for (unsigned int i = 0; i < final_size; i++) {
        at_set_allocated(pindex + i, 0);
  105a28:	83 ec 08             	sub    $0x8,%esp
  105a2b:	6a 00                	push   $0x0
  105a2d:	56                   	push   %esi
    for (unsigned int i = 0; i < final_size; i++) {
  105a2e:	83 c6 01             	add    $0x1,%esi
        at_set_allocated(pindex + i, 0);
  105a31:	e8 1a f2 ff ff       	call   104c50 <at_set_allocated>
    for (unsigned int i = 0; i < final_size; i++) {
  105a36:	83 c4 10             	add    $0x10,%esp
  105a39:	39 fe                	cmp    %edi,%esi
  105a3b:	75 eb                	jne    105a28 <pfree_order+0xf8>
    }

    at_list_add(order, pindex);
  105a3d:	8b 54 24 30          	mov    0x30(%esp),%edx
  105a41:	83 ec 08             	sub    $0x8,%esp
  105a44:	52                   	push   %edx
  105a45:	55                   	push   %ebp
  105a46:	e8 65 f2 ff ff       	call   104cb0 <at_list_add>
}
  105a4b:	83 c4 2c             	add    $0x2c,%esp
  105a4e:	5b                   	pop    %ebx
  105a4f:	5e                   	pop    %esi
  105a50:	5f                   	pop    %edi
  105a51:	5d                   	pop    %ebp
  105a52:	c3                   	ret
    unsigned int final_size = 1U << order;
  105a53:	b8 01 00 00 00       	mov    $0x1,%eax
  105a58:	89 e9                	mov    %ebp,%ecx
  105a5a:	d3 e0                	shl    %cl,%eax
  105a5c:	8d 3c 10             	lea    (%eax,%edx,1),%edi
  105a5f:	eb bc                	jmp    105a1d <pfree_order+0xed>
  105a61:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105a68:	00 
  105a69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105a70 <pfree>:


void pfree(unsigned int pindex) {
  105a70:	56                   	push   %esi
  105a71:	53                   	push   %ebx
  105a72:	e8 49 a9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105a77:	81 c3 7d 75 00 00    	add    $0x757d,%ebx
  105a7d:	83 ec 04             	sub    $0x4,%esp
  105a80:	8b 74 24 10          	mov    0x10(%esp),%esi
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) return;
  105a84:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  105a8a:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105a8f:	76 0f                	jbe    105aa0 <pfree+0x30>
    if (at_is_allocated(pindex) == 0) return;

    pfree_order(pindex);
}
  105a91:	83 c4 04             	add    $0x4,%esp
  105a94:	5b                   	pop    %ebx
  105a95:	5e                   	pop    %esi
  105a96:	c3                   	ret
  105a97:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105a9e:	00 
  105a9f:	90                   	nop
    if (at_is_allocated(pindex) == 0) return;
  105aa0:	83 ec 0c             	sub    $0xc,%esp
  105aa3:	56                   	push   %esi
  105aa4:	e8 77 f1 ff ff       	call   104c20 <at_is_allocated>
  105aa9:	83 c4 10             	add    $0x10,%esp
  105aac:	85 c0                	test   %eax,%eax
  105aae:	74 e1                	je     105a91 <pfree+0x21>
    pfree_order(pindex);
  105ab0:	89 74 24 10          	mov    %esi,0x10(%esp)
}
  105ab4:	83 c4 04             	add    $0x4,%esp
  105ab7:	5b                   	pop    %ebx
  105ab8:	5e                   	pop    %esi
    pfree_order(pindex);
  105ab9:	e9 72 fe ff ff       	jmp    105930 <pfree_order>
  105abe:	66 90                	xchg   %ax,%ax

00105ac0 <palloc_superpage>:

//Superpage allocation

unsigned int palloc_superpage(void) {
  105ac0:	83 ec 18             	sub    $0x18,%esp
    int res = palloc_order(SUPERPAGE_ORDER);
  105ac3:	6a 0a                	push   $0xa
  105ac5:	e8 e6 fc ff ff       	call   1057b0 <palloc_order>
    if (res == -1) {
  105aca:	31 d2                	xor    %edx,%edx
  105acc:	83 f8 ff             	cmp    $0xffffffff,%eax
  105acf:	0f 44 c2             	cmove  %edx,%eax
        return 0;
    }
    return (unsigned int)res;
}
  105ad2:	83 c4 1c             	add    $0x1c,%esp
  105ad5:	c3                   	ret
  105ad6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105add:	00 
  105ade:	66 90                	xchg   %ax,%ax

00105ae0 <pfree_superpage>:

void pfree_superpage(unsigned int pindex) {

    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) {
  105ae0:	e8 e8 f2 ff ff       	call   104dcd <__x86.get_pc_thunk.cx>
  105ae5:	81 c1 0f 75 00 00    	add    $0x750f,%ecx
void pfree_superpage(unsigned int pindex) {
  105aeb:	8b 54 24 04          	mov    0x4(%esp),%edx
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) {
  105aef:	8d 82 00 00 fc ff    	lea    -0x40000(%edx),%eax
  105af5:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105afa:	77 12                	ja     105b0e <pfree_superpage+0x2e>
        return;
    }

    if (AT[pindex].order != SUPERPAGE_ORDER) {
  105afc:	8d 04 92             	lea    (%edx,%edx,4),%eax
  105aff:	c1 e0 02             	shl    $0x2,%eax
  105b02:	81 c0 40 9c 15 00    	add    $0x159c40,%eax
  105b08:	83 78 08 0a          	cmpl   $0xa,0x8(%eax)
  105b0c:	74 02                	je     105b10 <pfree_superpage+0x30>
        return;   // not a superpage head
    }

    pfree_order(pindex);
}
  105b0e:	c3                   	ret
  105b0f:	90                   	nop
    pfree_order(pindex);
  105b10:	89 54 24 04          	mov    %edx,0x4(%esp)
  105b14:	e9 17 fe ff ff       	jmp    105930 <pfree_order>
  105b19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105b20 <is_superpage_aligned>:


int is_superpage_aligned(unsigned int pindex) {
    unsigned int pages = 1U << SUPERPAGE_ORDER;
    return (pindex & (pages - 1)) == 0;
  105b20:	31 c0                	xor    %eax,%eax
  105b22:	66 f7 44 24 04 ff 03 	testw  $0x3ff,0x4(%esp)
  105b29:	0f 94 c0             	sete   %al
}
  105b2c:	c3                   	ret
  105b2d:	66 90                	xchg   %ax,%ax
  105b2f:	90                   	nop

00105b30 <MATOp_test1>:

/**
 * Standard allocation and free test for 4KB pages.
 */
int MATOp_test1()
{
  105b30:	56                   	push   %esi
  105b31:	53                   	push   %ebx
  105b32:	e8 89 a8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105b37:	81 c3 bd 74 00 00    	add    $0x74bd,%ebx
  105b3d:	83 ec 04             	sub    $0x4,%esp
    int page_index = palloc();
  105b40:	e8 cb fd ff ff       	call   105910 <palloc>
  105b45:	89 c6                	mov    %eax,%esi
    if (page_index < (int)VM_USERLO_PI || (int)VM_USERHI_PI <= page_index) {
  105b47:	2d 00 00 04 00       	sub    $0x40000,%eax
  105b4c:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105b51:	0f 87 91 00 00 00    	ja     105be8 <MATOp_test1+0xb8>
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
  105b57:	83 ec 0c             	sub    $0xc,%esp
  105b5a:	56                   	push   %esi
  105b5b:	e8 60 f0 ff ff       	call   104bc0 <at_is_norm>
  105b60:	83 c4 10             	add    $0x10,%esp
  105b63:	83 f8 01             	cmp    $0x1,%eax
  105b66:	74 38                	je     105ba0 <MATOp_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
  105b68:	83 ec 0c             	sub    $0xc,%esp
  105b6b:	56                   	push   %esi
  105b6c:	e8 4f f0 ff ff       	call   104bc0 <at_is_norm>
  105b71:	5a                   	pop    %edx
  105b72:	59                   	pop    %ecx
  105b73:	50                   	push   %eax
  105b74:	8d 83 16 b9 ff ff    	lea    -0x46ea(%ebx),%eax
  105b7a:	50                   	push   %eax
  105b7b:	e8 ec d1 ff ff       	call   102d6c <dprintf>
        pfree(page_index);
  105b80:	89 34 24             	mov    %esi,(%esp)
  105b83:	e8 e8 fe ff ff       	call   105a70 <pfree>
        return 1;
  105b88:	83 c4 10             	add    $0x10,%esp
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  105b8b:	83 c4 04             	add    $0x4,%esp
        return 1;
  105b8e:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105b93:	5b                   	pop    %ebx
  105b94:	5e                   	pop    %esi
  105b95:	c3                   	ret
  105b96:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105b9d:	00 
  105b9e:	66 90                	xchg   %ax,%ax
    if (at_is_allocated(page_index) != 1) {
  105ba0:	83 ec 0c             	sub    $0xc,%esp
  105ba3:	56                   	push   %esi
  105ba4:	e8 77 f0 ff ff       	call   104c20 <at_is_allocated>
  105ba9:	83 c4 10             	add    $0x10,%esp
  105bac:	83 f8 01             	cmp    $0x1,%eax
  105baf:	75 47                	jne    105bf8 <MATOp_test1+0xc8>
    pfree(page_index);
  105bb1:	83 ec 0c             	sub    $0xc,%esp
  105bb4:	56                   	push   %esi
  105bb5:	e8 b6 fe ff ff       	call   105a70 <pfree>
    if (at_is_allocated(page_index) != 0) {
  105bba:	89 34 24             	mov    %esi,(%esp)
  105bbd:	e8 5e f0 ff ff       	call   104c20 <at_is_allocated>
  105bc2:	83 c4 10             	add    $0x10,%esp
  105bc5:	85 c0                	test   %eax,%eax
  105bc7:	75 47                	jne    105c10 <MATOp_test1+0xe0>
    dprintf("test 1 passed.\n");
  105bc9:	83 ec 0c             	sub    $0xc,%esp
  105bcc:	8d 83 7a b8 ff ff    	lea    -0x4786(%ebx),%eax
  105bd2:	50                   	push   %eax
  105bd3:	e8 94 d1 ff ff       	call   102d6c <dprintf>
    return 0;
  105bd8:	83 c4 10             	add    $0x10,%esp
  105bdb:	31 c0                	xor    %eax,%eax
}
  105bdd:	83 c4 04             	add    $0x4,%esp
  105be0:	5b                   	pop    %ebx
  105be1:	5e                   	pop    %esi
  105be2:	c3                   	ret
  105be3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
  105be8:	83 ec 04             	sub    $0x4,%esp
  105beb:	8d 83 24 be ff ff    	lea    -0x41dc(%ebx),%eax
  105bf1:	56                   	push   %esi
  105bf2:	56                   	push   %esi
  105bf3:	eb 85                	jmp    105b7a <MATOp_test1+0x4a>
  105bf5:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
  105bf8:	83 ec 0c             	sub    $0xc,%esp
  105bfb:	56                   	push   %esi
  105bfc:	e8 1f f0 ff ff       	call   104c20 <at_is_allocated>
  105c01:	5a                   	pop    %edx
  105c02:	59                   	pop    %ecx
  105c03:	50                   	push   %eax
  105c04:	8d 83 32 b9 ff ff    	lea    -0x46ce(%ebx),%eax
  105c0a:	e9 6b ff ff ff       	jmp    105b7a <MATOp_test1+0x4a>
  105c0f:	90                   	nop
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
  105c10:	83 ec 0c             	sub    $0xc,%esp
  105c13:	56                   	push   %esi
  105c14:	e8 07 f0 ff ff       	call   104c20 <at_is_allocated>
  105c19:	5a                   	pop    %edx
  105c1a:	59                   	pop    %ecx
  105c1b:	50                   	push   %eax
  105c1c:	8d 83 4e b9 ff ff    	lea    -0x46b2(%ebx),%eax
  105c22:	50                   	push   %eax
  105c23:	e8 44 d1 ff ff       	call   102d6c <dprintf>
        return 1;
  105c28:	83 c4 10             	add    $0x10,%esp
  105c2b:	e9 5b ff ff ff       	jmp    105b8b <MATOp_test1+0x5b>

00105c30 <MATOp_test_own>:

/**
 * Ownership test to verify buddy system contiguous properties.
 */
int MATOp_test_own()
{
  105c30:	53                   	push   %ebx
  105c31:	e8 8a a7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105c36:	81 c3 be 73 00 00    	add    $0x73be,%ebx
  105c3c:	83 ec 14             	sub    $0x14,%esp
    dprintf("Testing buddy contiguous allocation (Order 2)...\n");
  105c3f:	8d 83 60 be ff ff    	lea    -0x41a0(%ebx),%eax
  105c45:	50                   	push   %eax
  105c46:	e8 21 d1 ff ff       	call   102d6c <dprintf>
    int order = 2;
    int pindex = palloc_order(order); 
  105c4b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  105c52:	e8 59 fb ff ff       	call   1057b0 <palloc_order>
    
    if (pindex <= 0) {
  105c57:	83 c4 10             	add    $0x10,%esp
  105c5a:	85 c0                	test   %eax,%eax
  105c5c:	7e 62                	jle    105cc0 <MATOp_test_own+0x90>
        dprintf("Buddy allocation failed.\n");
        return 1;
    }

    if ((int)AT[pindex].order != order) {
  105c5e:	c7 c1 40 9c 15 00    	mov    $0x159c40,%ecx
  105c64:	8d 14 80             	lea    (%eax,%eax,4),%edx
  105c67:	8d 14 91             	lea    (%ecx,%edx,4),%edx
  105c6a:	8b 52 08             	mov    0x8(%edx),%edx
  105c6d:	83 fa 02             	cmp    $0x2,%edx
  105c70:	74 26                	je     105c98 <MATOp_test_own+0x68>
        dprintf("test own failed: Order mismatch. Expected %d, got %d\n", order, AT[pindex].order);
  105c72:	83 ec 04             	sub    $0x4,%esp
  105c75:	8d 83 94 be ff ff    	lea    -0x416c(%ebx),%eax
  105c7b:	52                   	push   %edx
  105c7c:	6a 02                	push   $0x2
  105c7e:	50                   	push   %eax
  105c7f:	e8 e8 d0 ff ff       	call   102d6c <dprintf>
        return 1;
  105c84:	83 c4 10             	add    $0x10,%esp
    }

    pfree(pindex);
    dprintf("Buddy contiguous test passed.\n");
    return 0;
}
  105c87:	83 c4 08             	add    $0x8,%esp
        return 1;
  105c8a:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105c8f:	5b                   	pop    %ebx
  105c90:	c3                   	ret
  105c91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    pfree(pindex);
  105c98:	83 ec 0c             	sub    $0xc,%esp
  105c9b:	50                   	push   %eax
  105c9c:	e8 cf fd ff ff       	call   105a70 <pfree>
    dprintf("Buddy contiguous test passed.\n");
  105ca1:	8d 83 cc be ff ff    	lea    -0x4134(%ebx),%eax
  105ca7:	89 04 24             	mov    %eax,(%esp)
  105caa:	e8 bd d0 ff ff       	call   102d6c <dprintf>
    return 0;
  105caf:	83 c4 10             	add    $0x10,%esp
  105cb2:	31 c0                	xor    %eax,%eax
}
  105cb4:	83 c4 08             	add    $0x8,%esp
  105cb7:	5b                   	pop    %ebx
  105cb8:	c3                   	ret
  105cb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Buddy allocation failed.\n");
  105cc0:	83 ec 0c             	sub    $0xc,%esp
  105cc3:	8d 83 6a b9 ff ff    	lea    -0x4696(%ebx),%eax
  105cc9:	50                   	push   %eax
  105cca:	e8 9d d0 ff ff       	call   102d6c <dprintf>
        return 1;
  105ccf:	83 c4 10             	add    $0x10,%esp
  105cd2:	eb b3                	jmp    105c87 <MATOp_test_own+0x57>
  105cd4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105cdb:	00 
  105cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00105ce0 <MATOp_test_superpage_advanced>:

/**
 * Advanced superpage allocation test (Uniqueness & Non-overlap).
 */
int MATOp_test_superpage_advanced()
{
  105ce0:	57                   	push   %edi
  105ce1:	56                   	push   %esi
  105ce2:	53                   	push   %ebx
  105ce3:	e8 d8 a6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105ce8:	81 c3 0c 73 00 00    	add    $0x730c,%ebx
    dprintf("Testing advanced superpage allocation...\n");
  105cee:	83 ec 0c             	sub    $0xc,%esp
  105cf1:	8d 83 ec be ff ff    	lea    -0x4114(%ebx),%eax
  105cf7:	50                   	push   %eax
  105cf8:	e8 6f d0 ff ff       	call   102d6c <dprintf>

    unsigned int pages = 1U << SUPERPAGE_ORDER;

    // 1. First Allocation
    int pindex1 = palloc_superpage();
  105cfd:	e8 be fd ff ff       	call   105ac0 <palloc_superpage>
    if (pindex1 == 0) {
  105d02:	83 c4 10             	add    $0x10,%esp
  105d05:	85 c0                	test   %eax,%eax
  105d07:	74 57                	je     105d60 <MATOp_test_superpage_advanced+0x80>
  105d09:	89 c6                	mov    %eax,%esi
        dprintf("First superpage allocation failed.\n");
        return 1;
    }

    // 2. Second Allocation
    int pindex2 = palloc_superpage();
  105d0b:	e8 b0 fd ff ff       	call   105ac0 <palloc_superpage>
  105d10:	89 c7                	mov    %eax,%edi
    if (pindex2 == 0) {
  105d12:	85 c0                	test   %eax,%eax
  105d14:	0f 84 9e 00 00 00    	je     105db8 <MATOp_test_superpage_advanced+0xd8>
        pfree_superpage(pindex1);
        return 1;
    }

    // 3. Verification: Uniqueness
    if (pindex1 == pindex2) {
  105d1a:	39 c6                	cmp    %eax,%esi
  105d1c:	74 62                	je     105d80 <MATOp_test_superpage_advanced+0xa0>
        dprintf("Test failed: palloc_superpage returned the same index twice (%d).\n", pindex1);
        return 1;
    }

    // 4. Verification: No Overlap
    int diff = (pindex1 > pindex2) ? (pindex1 - pindex2) : (pindex2 - pindex1);
  105d1e:	89 f2                	mov    %esi,%edx
  105d20:	29 c2                	sub    %eax,%edx
  105d22:	29 f0                	sub    %esi,%eax
  105d24:	39 fe                	cmp    %edi,%esi
  105d26:	0f 4f c2             	cmovg  %edx,%eax
    if ((unsigned int)diff < pages) {
  105d29:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  105d2e:	7e 68                	jle    105d98 <MATOp_test_superpage_advanced+0xb8>
        dprintf("Test failed: Superpages overlap! Diff: %d, Required: %u\n", diff, pages);
        return 1;
    }

    // 5. Cleanup
    pfree_superpage(pindex1);
  105d30:	83 ec 0c             	sub    $0xc,%esp
  105d33:	56                   	push   %esi
  105d34:	e8 a7 fd ff ff       	call   105ae0 <pfree_superpage>
    pfree_superpage(pindex2);
  105d39:	89 3c 24             	mov    %edi,(%esp)
  105d3c:	e8 9f fd ff ff       	call   105ae0 <pfree_superpage>

    dprintf("Advanced superpage test passed.\n");
  105d41:	8d 83 e4 bf ff ff    	lea    -0x401c(%ebx),%eax
  105d47:	89 04 24             	mov    %eax,(%esp)
  105d4a:	e8 1d d0 ff ff       	call   102d6c <dprintf>
    return 0;
  105d4f:	83 c4 10             	add    $0x10,%esp
  105d52:	31 c0                	xor    %eax,%eax
}
  105d54:	5b                   	pop    %ebx
  105d55:	5e                   	pop    %esi
  105d56:	5f                   	pop    %edi
  105d57:	c3                   	ret
  105d58:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105d5f:	00 
        dprintf("First superpage allocation failed.\n");
  105d60:	83 ec 0c             	sub    $0xc,%esp
  105d63:	8d 83 18 bf ff ff    	lea    -0x40e8(%ebx),%eax
  105d69:	50                   	push   %eax
  105d6a:	e8 fd cf ff ff       	call   102d6c <dprintf>
        return 1;
  105d6f:	83 c4 10             	add    $0x10,%esp
}
  105d72:	5b                   	pop    %ebx
        return 1;
  105d73:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105d78:	5e                   	pop    %esi
  105d79:	5f                   	pop    %edi
  105d7a:	c3                   	ret
  105d7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("Test failed: palloc_superpage returned the same index twice (%d).\n", pindex1);
  105d80:	83 ec 08             	sub    $0x8,%esp
  105d83:	8d 83 64 bf ff ff    	lea    -0x409c(%ebx),%eax
  105d89:	56                   	push   %esi
  105d8a:	50                   	push   %eax
  105d8b:	e8 dc cf ff ff       	call   102d6c <dprintf>
        return 1;
  105d90:	83 c4 10             	add    $0x10,%esp
  105d93:	eb dd                	jmp    105d72 <MATOp_test_superpage_advanced+0x92>
  105d95:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("Test failed: Superpages overlap! Diff: %d, Required: %u\n", diff, pages);
  105d98:	83 ec 04             	sub    $0x4,%esp
  105d9b:	68 00 04 00 00       	push   $0x400
  105da0:	50                   	push   %eax
  105da1:	8d 83 a8 bf ff ff    	lea    -0x4058(%ebx),%eax
  105da7:	50                   	push   %eax
  105da8:	e8 bf cf ff ff       	call   102d6c <dprintf>
        return 1;
  105dad:	83 c4 10             	add    $0x10,%esp
  105db0:	eb c0                	jmp    105d72 <MATOp_test_superpage_advanced+0x92>
  105db2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("Second superpage allocation failed.\n");
  105db8:	83 ec 0c             	sub    $0xc,%esp
  105dbb:	8d 83 3c bf ff ff    	lea    -0x40c4(%ebx),%eax
  105dc1:	50                   	push   %eax
  105dc2:	e8 a5 cf ff ff       	call   102d6c <dprintf>
        pfree_superpage(pindex1);
  105dc7:	89 34 24             	mov    %esi,(%esp)
  105dca:	e8 11 fd ff ff       	call   105ae0 <pfree_superpage>
        return 1;
  105dcf:	83 c4 10             	add    $0x10,%esp
  105dd2:	eb 9e                	jmp    105d72 <MATOp_test_superpage_advanced+0x92>
  105dd4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105ddb:	00 
  105ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00105de0 <MATOp_test_superpage>:
 * FIX: Linker Wrapper
 * This satisfies the 'undefined reference to MATOp_test_superpage'
 */
int MATOp_test_superpage(void)
{
    return MATOp_test_superpage_advanced();
  105de0:	e9 fb fe ff ff       	jmp    105ce0 <MATOp_test_superpage_advanced>
  105de5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105dec:	00 
  105ded:	8d 76 00             	lea    0x0(%esi),%esi

00105df0 <test_MATOp>:

/**
 * Main test runner for MATOp.
 */
int test_MATOp()
{
  105df0:	53                   	push   %ebx
  105df1:	83 ec 08             	sub    $0x8,%esp
    return MATOp_test1() 
  105df4:	e8 37 fd ff ff       	call   105b30 <MATOp_test1>
  105df9:	89 c3                	mov    %eax,%ebx
         + MATOp_test_own()
  105dfb:	e8 30 fe ff ff       	call   105c30 <MATOp_test_own>
  105e00:	01 c3                	add    %eax,%ebx
    return MATOp_test_superpage_advanced();
  105e02:	e8 d9 fe ff ff       	call   105ce0 <MATOp_test_superpage_advanced>
         + MATOp_test_superpage();
  105e07:	83 c4 08             	add    $0x8,%esp
         + MATOp_test_superpage();
  105e0a:	01 d8                	add    %ebx,%eax
  105e0c:	5b                   	pop    %ebx
  105e0d:	c3                   	ret
  105e0e:	66 90                	xchg   %ax,%ax

00105e10 <container_init>:
};

static struct SContainer CONTAINER[NUM_IDS];

void container_init(unsigned int mbi_addr)
{
  105e10:	55                   	push   %ebp
  105e11:	57                   	push   %edi
  105e12:	56                   	push   %esi
  105e13:	53                   	push   %ebx
  105e14:	e8 a7 a5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105e19:	81 c3 db 71 00 00    	add    $0x71db,%ebx
  105e1f:	83 ec 0c             	sub    $0xc,%esp
    (void)mbi_addr; 

    unsigned int real_quota = 0;
    unsigned int nps = get_nps();
  105e22:	e8 29 ed ff ff       	call   104b50 <get_nps>
    unsigned int i;

    // Count free normal RAM pages
    for (i = 0; i < nps; i++) {
  105e27:	85 c0                	test   %eax,%eax
  105e29:	0f 84 c0 00 00 00    	je     105eef <container_init+0xdf>
  105e2f:	89 c6                	mov    %eax,%esi
  105e31:	31 ed                	xor    %ebp,%ebp
    unsigned int real_quota = 0;
  105e33:	31 ff                	xor    %edi,%edi
  105e35:	eb 10                	jmp    105e47 <container_init+0x37>
  105e37:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105e3e:	00 
  105e3f:	90                   	nop
    for (i = 0; i < nps; i++) {
  105e40:	83 c5 01             	add    $0x1,%ebp
  105e43:	39 ee                	cmp    %ebp,%esi
  105e45:	74 29                	je     105e70 <container_init+0x60>
        if (at_is_norm(i) && !at_is_allocated(i)) {
  105e47:	83 ec 0c             	sub    $0xc,%esp
  105e4a:	55                   	push   %ebp
  105e4b:	e8 70 ed ff ff       	call   104bc0 <at_is_norm>
  105e50:	83 c4 10             	add    $0x10,%esp
  105e53:	85 c0                	test   %eax,%eax
  105e55:	74 e9                	je     105e40 <container_init+0x30>
  105e57:	83 ec 0c             	sub    $0xc,%esp
  105e5a:	55                   	push   %ebp
  105e5b:	e8 c0 ed ff ff       	call   104c20 <at_is_allocated>
  105e60:	83 c4 10             	add    $0x10,%esp
            real_quota++;
  105e63:	83 f8 01             	cmp    $0x1,%eax
  105e66:	83 d7 00             	adc    $0x0,%edi
    for (i = 0; i < nps; i++) {
  105e69:	83 c5 01             	add    $0x1,%ebp
  105e6c:	39 ee                	cmp    %ebp,%esi
  105e6e:	75 d7                	jne    105e47 <container_init+0x37>
        }
    }

    for (i = 0; i < NUM_IDS; i++) {
  105e70:	8d 83 8c cc 44 01    	lea    0x144cc8c(%ebx),%eax
  105e76:	8d 90 00 50 00 00    	lea    0x5000(%eax),%edx
  105e7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        CONTAINER[i].quota = 0;
  105e80:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (i = 0; i < NUM_IDS; i++) {
  105e86:	83 c0 14             	add    $0x14,%eax
        CONTAINER[i].usage = 0;
  105e89:	c7 40 f0 00 00 00 00 	movl   $0x0,-0x10(%eax)
        CONTAINER[i].parent = 0;
  105e90:	c7 40 f4 00 00 00 00 	movl   $0x0,-0xc(%eax)
        CONTAINER[i].nchildren = 0;
  105e97:	c7 40 f8 00 00 00 00 	movl   $0x0,-0x8(%eax)
        CONTAINER[i].used = 0;
  105e9e:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
    for (i = 0; i < NUM_IDS; i++) {
  105ea5:	39 d0                	cmp    %edx,%eax
  105ea7:	75 d7                	jne    105e80 <container_init+0x70>
    CONTAINER[0].usage = 0;
    CONTAINER[0].parent = 0;
    CONTAINER[0].nchildren = 0;
    CONTAINER[0].used = 1;

    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  105ea9:	83 ec 08             	sub    $0x8,%esp
  105eac:	8d 83 08 c0 ff ff    	lea    -0x3ff8(%ebx),%eax
    CONTAINER[0].quota = (int)real_quota;
  105eb2:	89 bb 8c cc 44 01    	mov    %edi,0x144cc8c(%ebx)
    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  105eb8:	57                   	push   %edi
  105eb9:	50                   	push   %eax
    CONTAINER[0].usage = 0;
  105eba:	c7 83 90 cc 44 01 00 	movl   $0x0,0x144cc90(%ebx)
  105ec1:	00 00 00 
    CONTAINER[0].parent = 0;
  105ec4:	c7 83 94 cc 44 01 00 	movl   $0x0,0x144cc94(%ebx)
  105ecb:	00 00 00 
    CONTAINER[0].nchildren = 0;
  105ece:	c7 83 98 cc 44 01 00 	movl   $0x0,0x144cc98(%ebx)
  105ed5:	00 00 00 
    CONTAINER[0].used = 1;
  105ed8:	c7 83 9c cc 44 01 01 	movl   $0x1,0x144cc9c(%ebx)
  105edf:	00 00 00 
    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  105ee2:	e8 85 ce ff ff       	call   102d6c <dprintf>
}
  105ee7:	83 c4 1c             	add    $0x1c,%esp
  105eea:	5b                   	pop    %ebx
  105eeb:	5e                   	pop    %esi
  105eec:	5f                   	pop    %edi
  105eed:	5d                   	pop    %ebp
  105eee:	c3                   	ret
    for (i = 0; i < nps; i++) {
  105eef:	31 ff                	xor    %edi,%edi
  105ef1:	e9 7a ff ff ff       	jmp    105e70 <container_init+0x60>
  105ef6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105efd:	00 
  105efe:	66 90                	xchg   %ax,%ax

00105f00 <container_get_parent>:

unsigned int container_get_parent(unsigned int id) { return CONTAINER[id].parent; }
  105f00:	e8 b7 a4 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105f05:	81 c2 ef 70 00 00    	add    $0x70ef,%edx
  105f0b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105f0f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105f12:	8b 84 82 94 cc 44 01 	mov    0x144cc94(%edx,%eax,4),%eax
  105f19:	c3                   	ret
  105f1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105f20 <container_get_nchildren>:
unsigned int container_get_nchildren(unsigned int id) { return CONTAINER[id].nchildren; }
  105f20:	e8 97 a4 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105f25:	81 c2 cf 70 00 00    	add    $0x70cf,%edx
  105f2b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105f2f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105f32:	8b 84 82 98 cc 44 01 	mov    0x144cc98(%edx,%eax,4),%eax
  105f39:	c3                   	ret
  105f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105f40 <container_get_quota>:
unsigned int container_get_quota(unsigned int id) { return CONTAINER[id].quota; }
  105f40:	e8 77 a4 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105f45:	81 c2 af 70 00 00    	add    $0x70af,%edx
  105f4b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105f4f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105f52:	8b 84 82 8c cc 44 01 	mov    0x144cc8c(%edx,%eax,4),%eax
  105f59:	c3                   	ret
  105f5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105f60 <container_get_usage>:
unsigned int container_get_usage(unsigned int id) { return CONTAINER[id].usage; }
  105f60:	e8 57 a4 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105f65:	81 c2 8f 70 00 00    	add    $0x708f,%edx
  105f6b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105f6f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105f72:	8b 84 82 90 cc 44 01 	mov    0x144cc90(%edx,%eax,4),%eax
  105f79:	c3                   	ret
  105f7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105f80 <container_can_consume>:

unsigned int container_can_consume(unsigned int id, unsigned int n)
{
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  105f80:	e8 48 ee ff ff       	call   104dcd <__x86.get_pc_thunk.cx>
  105f85:	81 c1 6f 70 00 00    	add    $0x706f,%ecx
{
  105f8b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  105f8f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105f92:	c1 e0 02             	shl    $0x2,%eax
  105f95:	8b 94 01 90 cc 44 01 	mov    0x144cc90(%ecx,%eax,1),%edx
  105f9c:	03 54 24 08          	add    0x8(%esp),%edx
  105fa0:	3b 94 01 8c cc 44 01 	cmp    0x144cc8c(%ecx,%eax,1),%edx
  105fa7:	0f 9e c0             	setle  %al
  105faa:	0f b6 c0             	movzbl %al,%eax
    return 0;
}
  105fad:	c3                   	ret
  105fae:	66 90                	xchg   %ax,%ax

00105fb0 <container_split>:

unsigned int container_split(unsigned int id, unsigned int quota)
{
  105fb0:	57                   	push   %edi
  105fb1:	56                   	push   %esi
  105fb2:	53                   	push   %ebx
  105fb3:	8b 44 24 10          	mov    0x10(%esp),%eax
  105fb7:	e8 04 a4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105fbc:	81 c3 38 70 00 00    	add    $0x7038,%ebx
  105fc2:	8b 74 24 14          	mov    0x14(%esp),%esi
    unsigned int nc = CONTAINER[id].nchildren;
  105fc6:	8d 14 80             	lea    (%eax,%eax,4),%edx
  105fc9:	8d 94 93 8c cc 44 01 	lea    0x144cc8c(%ebx,%edx,4),%edx
  105fd0:	8b 7a 0c             	mov    0xc(%edx),%edi
    unsigned int child = id * MAX_CHILDREN + 1 + nc;

    CONTAINER[id].usage += (int)quota;
  105fd3:	01 72 04             	add    %esi,0x4(%edx)
    unsigned int child = id * MAX_CHILDREN + 1 + nc;
  105fd6:	8d 4c c7 01          	lea    0x1(%edi,%eax,8),%ecx
    CONTAINER[id].nchildren++;
  105fda:	83 c7 01             	add    $0x1,%edi
  105fdd:	89 7a 0c             	mov    %edi,0xc(%edx)

    CONTAINER[child].quota = (int)quota;
  105fe0:	8d 14 89             	lea    (%ecx,%ecx,4),%edx
  105fe3:	c1 e2 02             	shl    $0x2,%edx
  105fe6:	8d bc 13 8c cc 44 01 	lea    0x144cc8c(%ebx,%edx,1),%edi
    CONTAINER[child].usage = 0;
    CONTAINER[child].parent = (int)id;
  105fed:	89 47 08             	mov    %eax,0x8(%edi)
    CONTAINER[child].nchildren = 0;
    CONTAINER[child].used = 1;

    return child;
}
  105ff0:	89 c8                	mov    %ecx,%eax
    CONTAINER[child].quota = (int)quota;
  105ff2:	89 37                	mov    %esi,(%edi)
    CONTAINER[child].usage = 0;
  105ff4:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
    CONTAINER[child].nchildren = 0;
  105ffb:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
    CONTAINER[child].used = 1;
  106002:	c7 47 10 01 00 00 00 	movl   $0x1,0x10(%edi)
}
  106009:	5b                   	pop    %ebx
  10600a:	5e                   	pop    %esi
  10600b:	5f                   	pop    %edi
  10600c:	c3                   	ret
  10600d:	8d 76 00             	lea    0x0(%esi),%esi

00106010 <container_alloc>:

unsigned int container_alloc(unsigned int id)
{
  106010:	56                   	push   %esi
  106011:	53                   	push   %ebx
  106012:	e8 a9 a3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106017:	81 c3 dd 6f 00 00    	add    $0x6fdd,%ebx
  10601d:	83 ec 04             	sub    $0x4,%esp
  106020:	8b 44 24 10          	mov    0x10(%esp),%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  106024:	8d 14 80             	lea    (%eax,%eax,4),%edx
        if (pindex != 0) {
            CONTAINER[id].usage++;
            return pindex;
        }
    }
    return 0;
  106027:	31 c0                	xor    %eax,%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  106029:	c1 e2 02             	shl    $0x2,%edx
  10602c:	8d b4 13 8c cc 44 01 	lea    0x144cc8c(%ebx,%edx,1),%esi
  106033:	8b 8c 13 8c cc 44 01 	mov    0x144cc8c(%ebx,%edx,1),%ecx
  10603a:	39 4e 04             	cmp    %ecx,0x4(%esi)
  10603d:	7c 09                	jl     106048 <container_alloc+0x38>
}
  10603f:	83 c4 04             	add    $0x4,%esp
  106042:	5b                   	pop    %ebx
  106043:	5e                   	pop    %esi
  106044:	c3                   	ret
  106045:	8d 76 00             	lea    0x0(%esi),%esi
        unsigned int pindex = palloc();
  106048:	e8 c3 f8 ff ff       	call   105910 <palloc>
        if (pindex != 0) {
  10604d:	85 c0                	test   %eax,%eax
  10604f:	74 ee                	je     10603f <container_alloc+0x2f>
            CONTAINER[id].usage++;
  106051:	83 46 04 01          	addl   $0x1,0x4(%esi)
}
  106055:	83 c4 04             	add    $0x4,%esp
  106058:	5b                   	pop    %ebx
  106059:	5e                   	pop    %esi
  10605a:	c3                   	ret
  10605b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106060 <container_alloc_superpage>:
 * NEW: Container-aware Superpage Allocation
 * Checks if 1024 pages are available in the quota before 
 * calling the buddy allocator's superpage function.
 */
unsigned int container_alloc_superpage(unsigned int id)
{
  106060:	55                   	push   %ebp
  106061:	57                   	push   %edi
  106062:	56                   	push   %esi
  106063:	53                   	push   %ebx
  106064:	e8 57 a3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106069:	81 c3 8b 6f 00 00    	add    $0x6f8b,%ebx
  10606f:	83 ec 0c             	sub    $0xc,%esp
  106072:	8b 74 24 20          	mov    0x20(%esp),%esi
    // DEBUG: See what's happening
    dprintf("MContainer: ID %d usage=%d, quota=%d. Requesting 1024.\n", 
  106076:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  106079:	c1 e0 02             	shl    $0x2,%eax
  10607c:	8d bc 03 8c cc 44 01 	lea    0x144cc8c(%ebx,%eax,1),%edi
  106083:	8d 83 2c c0 ff ff    	lea    -0x3fd4(%ebx),%eax
  106089:	ff 37                	push   (%edi)
  10608b:	ff 77 04             	push   0x4(%edi)
  10608e:	56                   	push   %esi
  10608f:	50                   	push   %eax
  106090:	e8 d7 cc ff ff       	call   102d6c <dprintf>
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  106095:	8b 47 04             	mov    0x4(%edi),%eax
  106098:	83 c4 10             	add    $0x10,%esp
  10609b:	05 00 04 00 00       	add    $0x400,%eax
  1060a0:	3b 07                	cmp    (%edi),%eax
  1060a2:	7e 24                	jle    1060c8 <container_alloc_superpage+0x68>
        } else {
            // This means the Quota was fine, but the Buddy System failed!
            dprintf("MContainer Error: Buddy System (palloc_superpage) returned 0!\n");
        }
    } else {
        dprintf("MContainer Error: Quota exceeded for ID %d!\n", id);
  1060a4:	83 ec 08             	sub    $0x8,%esp
  1060a7:	8d 83 64 c0 ff ff    	lea    -0x3f9c(%ebx),%eax
  1060ad:	56                   	push   %esi
  1060ae:	50                   	push   %eax
  1060af:	e8 b8 cc ff ff       	call   102d6c <dprintf>
  1060b4:	83 c4 10             	add    $0x10,%esp
    }
    return 0;
}
  1060b7:	83 c4 0c             	add    $0xc,%esp
    return 0;
  1060ba:	31 c0                	xor    %eax,%eax
}
  1060bc:	5b                   	pop    %ebx
  1060bd:	5e                   	pop    %esi
  1060be:	5f                   	pop    %edi
  1060bf:	5d                   	pop    %ebp
  1060c0:	c3                   	ret
  1060c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        unsigned int pindex = palloc_superpage(); 
  1060c8:	e8 f3 f9 ff ff       	call   105ac0 <palloc_superpage>
        if (pindex != 0) {
  1060cd:	85 c0                	test   %eax,%eax
  1060cf:	74 0f                	je     1060e0 <container_alloc_superpage+0x80>
            CONTAINER[id].usage += PAGES_PER_SUPERPAGE;
  1060d1:	81 47 04 00 04 00 00 	addl   $0x400,0x4(%edi)
}
  1060d8:	83 c4 0c             	add    $0xc,%esp
  1060db:	5b                   	pop    %ebx
  1060dc:	5e                   	pop    %esi
  1060dd:	5f                   	pop    %edi
  1060de:	5d                   	pop    %ebp
  1060df:	c3                   	ret
            dprintf("MContainer Error: Buddy System (palloc_superpage) returned 0!\n");
  1060e0:	83 ec 0c             	sub    $0xc,%esp
  1060e3:	8d 83 94 c0 ff ff    	lea    -0x3f6c(%ebx),%eax
  1060e9:	50                   	push   %eax
  1060ea:	e8 7d cc ff ff       	call   102d6c <dprintf>
  1060ef:	83 c4 10             	add    $0x10,%esp
  1060f2:	eb c3                	jmp    1060b7 <container_alloc_superpage+0x57>
  1060f4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1060fb:	00 
  1060fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106100 <container_free>:
 * UPDATED: Container Free
 * Now checks the Allocation Table (AT) to see if the page being freed 
 * is a 4KB page or the start of a 4MB superpage to adjust usage correctly.
 */
void container_free(unsigned int id, unsigned int page_index)
{
  106100:	57                   	push   %edi
  106101:	56                   	push   %esi
  106102:	53                   	push   %ebx
  106103:	8b 7c 24 14          	mov    0x14(%esp),%edi
  106107:	e8 b4 a2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10610c:	81 c3 e8 6e 00 00    	add    $0x6ee8,%ebx
  106112:	8b 74 24 10          	mov    0x10(%esp),%esi
    // Check the order of the page in the Allocation Table metadata
    // This assumes your AT structure has an 'order' field from the buddy system
    unsigned int order = at_get_order(page_index);
  106116:	83 ec 0c             	sub    $0xc,%esp
  106119:	57                   	push   %edi
  10611a:	e8 51 ea ff ff       	call   104b70 <at_get_order>
    
    if (order == SUPERPAGE_ORDER) {
  10611f:	83 c4 10             	add    $0x10,%esp
  106122:	83 f8 0a             	cmp    $0xa,%eax
  106125:	74 29                	je     106150 <container_free+0x50>
        pfree_superpage(page_index);
        CONTAINER[id].usage -= PAGES_PER_SUPERPAGE;
    } else {
        pfree(page_index);
  106127:	83 ec 0c             	sub    $0xc,%esp
  10612a:	57                   	push   %edi
  10612b:	e8 40 f9 ff ff       	call   105a70 <pfree>
        if (CONTAINER[id].usage > 0) {
  106130:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  106133:	83 c4 10             	add    $0x10,%esp
  106136:	8d 94 83 8c cc 44 01 	lea    0x144cc8c(%ebx,%eax,4),%edx
  10613d:	8b 42 04             	mov    0x4(%edx),%eax
  106140:	85 c0                	test   %eax,%eax
  106142:	7e 06                	jle    10614a <container_free+0x4a>
            CONTAINER[id].usage--;
  106144:	83 e8 01             	sub    $0x1,%eax
  106147:	89 42 04             	mov    %eax,0x4(%edx)
        }
    }
  10614a:	5b                   	pop    %ebx
  10614b:	5e                   	pop    %esi
  10614c:	5f                   	pop    %edi
  10614d:	c3                   	ret
  10614e:	66 90                	xchg   %ax,%ax
        pfree_superpage(page_index);
  106150:	83 ec 0c             	sub    $0xc,%esp
  106153:	57                   	push   %edi
  106154:	e8 87 f9 ff ff       	call   105ae0 <pfree_superpage>
        CONTAINER[id].usage -= PAGES_PER_SUPERPAGE;
  106159:	83 c4 10             	add    $0x10,%esp
  10615c:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  10615f:	81 ac 83 90 cc 44 01 	subl   $0x400,0x144cc90(%ebx,%eax,4)
  106166:	00 04 00 00 
  10616a:	5b                   	pop    %ebx
  10616b:	5e                   	pop    %esi
  10616c:	5f                   	pop    %edi
  10616d:	c3                   	ret
  10616e:	66 90                	xchg   %ax,%ax

00106170 <MContainer_test1>:
#include <lib/debug.h>
#include "export.h"

int MContainer_test1()
{
  106170:	53                   	push   %ebx
  106171:	e8 4a a2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106176:	81 c3 7e 6e 00 00    	add    $0x6e7e,%ebx
  10617c:	83 ec 14             	sub    $0x14,%esp
    if (container_get_quota(0) <= 10000) {
  10617f:	6a 00                	push   $0x0
  106181:	e8 ba fd ff ff       	call   105f40 <container_get_quota>
  106186:	83 c4 10             	add    $0x10,%esp
  106189:	3d 10 27 00 00       	cmp    $0x2710,%eax
  10618e:	0f 86 7c 00 00 00    	jbe    106210 <MContainer_test1+0xa0>
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
        return 1;
    }
    if (container_can_consume(0, 10000) != 1) {
  106194:	83 ec 08             	sub    $0x8,%esp
  106197:	68 10 27 00 00       	push   $0x2710
  10619c:	6a 00                	push   $0x0
  10619e:	e8 dd fd ff ff       	call   105f80 <container_can_consume>
  1061a3:	83 c4 10             	add    $0x10,%esp
  1061a6:	83 f8 01             	cmp    $0x1,%eax
  1061a9:	75 35                	jne    1061e0 <MContainer_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
        return 1;
    }
    if (container_can_consume(0, 10000000) != 0) {
  1061ab:	83 ec 08             	sub    $0x8,%esp
  1061ae:	68 80 96 98 00       	push   $0x989680
  1061b3:	6a 00                	push   $0x0
  1061b5:	e8 c6 fd ff ff       	call   105f80 <container_can_consume>
  1061ba:	83 c4 10             	add    $0x10,%esp
  1061bd:	85 c0                	test   %eax,%eax
  1061bf:	75 6f                	jne    106230 <MContainer_test1+0xc0>
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
        return 1;
    }
    dprintf("test 1 passed.\n");
  1061c1:	83 ec 0c             	sub    $0xc,%esp
  1061c4:	8d 83 7a b8 ff ff    	lea    -0x4786(%ebx),%eax
  1061ca:	50                   	push   %eax
  1061cb:	e8 9c cb ff ff       	call   102d6c <dprintf>
    return 0;
  1061d0:	83 c4 10             	add    $0x10,%esp
  1061d3:	31 c0                	xor    %eax,%eax
}
  1061d5:	83 c4 08             	add    $0x8,%esp
  1061d8:	5b                   	pop    %ebx
  1061d9:	c3                   	ret
  1061da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
  1061e0:	83 ec 08             	sub    $0x8,%esp
  1061e3:	68 10 27 00 00       	push   $0x2710
  1061e8:	6a 00                	push   $0x0
  1061ea:	e8 91 fd ff ff       	call   105f80 <container_can_consume>
  1061ef:	5a                   	pop    %edx
  1061f0:	59                   	pop    %ecx
  1061f1:	50                   	push   %eax
  1061f2:	8d 83 16 b9 ff ff    	lea    -0x46ea(%ebx),%eax
  1061f8:	50                   	push   %eax
  1061f9:	e8 6e cb ff ff       	call   102d6c <dprintf>
        return 1;
  1061fe:	83 c4 10             	add    $0x10,%esp
}
  106201:	83 c4 08             	add    $0x8,%esp
        return 1;
  106204:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106209:	5b                   	pop    %ebx
  10620a:	c3                   	ret
  10620b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
  106210:	83 ec 0c             	sub    $0xc,%esp
  106213:	6a 00                	push   $0x0
  106215:	e8 26 fd ff ff       	call   105f40 <container_get_quota>
  10621a:	5a                   	pop    %edx
  10621b:	59                   	pop    %ecx
  10621c:	50                   	push   %eax
  10621d:	8d 83 d4 c0 ff ff    	lea    -0x3f2c(%ebx),%eax
  106223:	50                   	push   %eax
  106224:	e8 43 cb ff ff       	call   102d6c <dprintf>
        return 1;
  106229:	83 c4 10             	add    $0x10,%esp
  10622c:	eb d3                	jmp    106201 <MContainer_test1+0x91>
  10622e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
  106230:	83 ec 08             	sub    $0x8,%esp
  106233:	68 80 96 98 00       	push   $0x989680
  106238:	6a 00                	push   $0x0
  10623a:	e8 41 fd ff ff       	call   105f80 <container_can_consume>
  10623f:	5a                   	pop    %edx
  106240:	59                   	pop    %ecx
  106241:	50                   	push   %eax
  106242:	8d 83 84 b9 ff ff    	lea    -0x467c(%ebx),%eax
  106248:	50                   	push   %eax
  106249:	e8 1e cb ff ff       	call   102d6c <dprintf>
        return 1;
  10624e:	83 c4 10             	add    $0x10,%esp
  106251:	eb ae                	jmp    106201 <MContainer_test1+0x91>
  106253:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10625a:	00 
  10625b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106260 <MContainer_test2>:

int MContainer_test2()
{
  106260:	55                   	push   %ebp
  106261:	57                   	push   %edi
  106262:	56                   	push   %esi
  106263:	53                   	push   %ebx
  106264:	e8 57 a1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106269:	81 c3 8b 6d 00 00    	add    $0x6d8b,%ebx
  10626f:	83 ec 38             	sub    $0x38,%esp
    unsigned int old_usage = container_get_usage(0);
  106272:	6a 00                	push   $0x0
  106274:	e8 e7 fc ff ff       	call   105f60 <container_get_usage>
    unsigned int old_nchildren = container_get_nchildren(0);
  106279:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    unsigned int old_usage = container_get_usage(0);
  106280:	89 c5                	mov    %eax,%ebp
    unsigned int old_nchildren = container_get_nchildren(0);
  106282:	e8 99 fc ff ff       	call   105f20 <container_get_nchildren>
  106287:	89 c7                	mov    %eax,%edi
    unsigned int chid = container_split(0, 100);
  106289:	58                   	pop    %eax
  10628a:	5a                   	pop    %edx
  10628b:	6a 64                	push   $0x64
  10628d:	6a 00                	push   $0x0
  10628f:	e8 1c fd ff ff       	call   105fb0 <container_split>
    if (container_get_quota(chid) != 100
  106294:	89 04 24             	mov    %eax,(%esp)
    unsigned int chid = container_split(0, 100);
  106297:	89 c6                	mov    %eax,%esi
    if (container_get_quota(chid) != 100
  106299:	e8 a2 fc ff ff       	call   105f40 <container_get_quota>
  10629e:	83 c4 10             	add    $0x10,%esp
  1062a1:	83 f8 64             	cmp    $0x64,%eax
  1062a4:	0f 84 8e 00 00 00    	je     106338 <MContainer_test2+0xd8>
        || container_get_parent(chid) != 0
        || container_get_usage(chid) != 0
        || container_get_nchildren(chid) != 0
        || container_get_usage(0) != old_usage + 100
  1062aa:	8d 45 64             	lea    0x64(%ebp),%eax
  1062ad:	89 44 24 10          	mov    %eax,0x10(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  1062b1:	8d 47 01             	lea    0x1(%edi),%eax
  1062b4:	89 44 24 0c          	mov    %eax,0xc(%esp)
        dprintf("test 2.1 failed:\n"
  1062b8:	83 ec 0c             	sub    $0xc,%esp
  1062bb:	6a 00                	push   $0x0
  1062bd:	e8 5e fc ff ff       	call   105f20 <container_get_nchildren>
  1062c2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1062c9:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  1062cd:	e8 8e fc ff ff       	call   105f60 <container_get_usage>
  1062d2:	89 34 24             	mov    %esi,(%esp)
  1062d5:	89 44 24 28          	mov    %eax,0x28(%esp)
  1062d9:	e8 42 fc ff ff       	call   105f20 <container_get_nchildren>
  1062de:	89 34 24             	mov    %esi,(%esp)
  1062e1:	89 44 24 24          	mov    %eax,0x24(%esp)
  1062e5:	e8 76 fc ff ff       	call   105f60 <container_get_usage>
  1062ea:	89 34 24             	mov    %esi,(%esp)
  1062ed:	89 c5                	mov    %eax,%ebp
  1062ef:	e8 0c fc ff ff       	call   105f00 <container_get_parent>
  1062f4:	89 34 24             	mov    %esi,(%esp)
  1062f7:	89 c7                	mov    %eax,%edi
  1062f9:	e8 42 fc ff ff       	call   105f40 <container_get_quota>
  1062fe:	5e                   	pop    %esi
  1062ff:	ff 74 24 18          	push   0x18(%esp)
  106303:	8b 54 24 2c          	mov    0x2c(%esp),%edx
  106307:	52                   	push   %edx
  106308:	ff 74 24 24          	push   0x24(%esp)
  10630c:	8b 4c 24 30          	mov    0x30(%esp),%ecx
  106310:	51                   	push   %ecx
  106311:	ff 74 24 30          	push   0x30(%esp)
  106315:	55                   	push   %ebp
  106316:	57                   	push   %edi
  106317:	50                   	push   %eax
  106318:	8d 83 f4 c0 ff ff    	lea    -0x3f0c(%ebx),%eax
  10631e:	50                   	push   %eax
  10631f:	e8 48 ca ff ff       	call   102d6c <dprintf>
                container_get_parent(chid),
                container_get_usage(chid),
                container_get_nchildren(chid),
                container_get_usage(0), old_usage + 100,
                container_get_nchildren(0), old_nchildren + 1);
        return 1;
  106324:	83 c4 30             	add    $0x30,%esp
  106327:	b8 01 00 00 00       	mov    $0x1,%eax
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  10632c:	83 c4 2c             	add    $0x2c,%esp
  10632f:	5b                   	pop    %ebx
  106330:	5e                   	pop    %esi
  106331:	5f                   	pop    %edi
  106332:	5d                   	pop    %ebp
  106333:	c3                   	ret
  106334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        || container_get_parent(chid) != 0
  106338:	83 ec 0c             	sub    $0xc,%esp
        || container_get_usage(0) != old_usage + 100
  10633b:	83 c5 64             	add    $0x64,%ebp
        || container_get_parent(chid) != 0
  10633e:	56                   	push   %esi
  10633f:	e8 bc fb ff ff       	call   105f00 <container_get_parent>
        || container_get_nchildren(0) != old_nchildren + 1) {
  106344:	8d 57 01             	lea    0x1(%edi),%edx
        || container_get_usage(0) != old_usage + 100
  106347:	89 6c 24 20          	mov    %ebp,0x20(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  10634b:	89 54 24 1c          	mov    %edx,0x1c(%esp)
        || container_get_parent(chid) != 0
  10634f:	83 c4 10             	add    $0x10,%esp
  106352:	85 c0                	test   %eax,%eax
  106354:	0f 85 5e ff ff ff    	jne    1062b8 <MContainer_test2+0x58>
        || container_get_usage(chid) != 0
  10635a:	83 ec 0c             	sub    $0xc,%esp
  10635d:	56                   	push   %esi
  10635e:	e8 fd fb ff ff       	call   105f60 <container_get_usage>
  106363:	83 c4 10             	add    $0x10,%esp
  106366:	85 c0                	test   %eax,%eax
  106368:	0f 85 4a ff ff ff    	jne    1062b8 <MContainer_test2+0x58>
        || container_get_nchildren(chid) != 0
  10636e:	83 ec 0c             	sub    $0xc,%esp
  106371:	56                   	push   %esi
  106372:	e8 a9 fb ff ff       	call   105f20 <container_get_nchildren>
  106377:	83 c4 10             	add    $0x10,%esp
  10637a:	85 c0                	test   %eax,%eax
  10637c:	0f 85 36 ff ff ff    	jne    1062b8 <MContainer_test2+0x58>
        || container_get_usage(0) != old_usage + 100
  106382:	83 ec 0c             	sub    $0xc,%esp
  106385:	6a 00                	push   $0x0
  106387:	e8 d4 fb ff ff       	call   105f60 <container_get_usage>
  10638c:	83 c4 10             	add    $0x10,%esp
  10638f:	39 e8                	cmp    %ebp,%eax
  106391:	0f 85 21 ff ff ff    	jne    1062b8 <MContainer_test2+0x58>
        || container_get_nchildren(0) != old_nchildren + 1) {
  106397:	83 ec 0c             	sub    $0xc,%esp
  10639a:	6a 00                	push   $0x0
  10639c:	e8 7f fb ff ff       	call   105f20 <container_get_nchildren>
  1063a1:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  1063a5:	83 c4 10             	add    $0x10,%esp
  1063a8:	39 c8                	cmp    %ecx,%eax
  1063aa:	0f 85 08 ff ff ff    	jne    1062b8 <MContainer_test2+0x58>
    container_alloc(chid);
  1063b0:	83 ec 0c             	sub    $0xc,%esp
  1063b3:	56                   	push   %esi
  1063b4:	e8 57 fc ff ff       	call   106010 <container_alloc>
    if (container_get_usage(chid) != 1) {
  1063b9:	89 34 24             	mov    %esi,(%esp)
  1063bc:	e8 9f fb ff ff       	call   105f60 <container_get_usage>
  1063c1:	83 c4 10             	add    $0x10,%esp
  1063c4:	83 f8 01             	cmp    $0x1,%eax
  1063c7:	74 20                	je     1063e9 <MContainer_test2+0x189>
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
  1063c9:	83 ec 0c             	sub    $0xc,%esp
  1063cc:	56                   	push   %esi
  1063cd:	e8 8e fb ff ff       	call   105f60 <container_get_usage>
  1063d2:	5a                   	pop    %edx
  1063d3:	59                   	pop    %ecx
  1063d4:	50                   	push   %eax
  1063d5:	8d 83 a0 b9 ff ff    	lea    -0x4660(%ebx),%eax
  1063db:	50                   	push   %eax
  1063dc:	e8 8b c9 ff ff       	call   102d6c <dprintf>
        return 1;
  1063e1:	83 c4 10             	add    $0x10,%esp
  1063e4:	e9 3e ff ff ff       	jmp    106327 <MContainer_test2+0xc7>
    dprintf("test 2 passed.\n");
  1063e9:	83 ec 0c             	sub    $0xc,%esp
  1063ec:	8d 83 8a b8 ff ff    	lea    -0x4776(%ebx),%eax
  1063f2:	50                   	push   %eax
  1063f3:	e8 74 c9 ff ff       	call   102d6c <dprintf>
    return 0;
  1063f8:	83 c4 10             	add    $0x10,%esp
  1063fb:	31 c0                	xor    %eax,%eax
  1063fd:	e9 2a ff ff ff       	jmp    10632c <MContainer_test2+0xcc>
  106402:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106409:	00 
  10640a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106410 <MContainer_test_own>:
int MContainer_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106410:	31 c0                	xor    %eax,%eax
  106412:	c3                   	ret
  106413:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10641a:	00 
  10641b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106420 <test_MContainer>:

int test_MContainer()
{
  106420:	53                   	push   %ebx
  106421:	83 ec 08             	sub    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  106424:	e8 47 fd ff ff       	call   106170 <MContainer_test1>
  106429:	89 c3                	mov    %eax,%ebx
  10642b:	e8 30 fe ff ff       	call   106260 <MContainer_test2>
}
  106430:	83 c4 08             	add    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  106433:	01 d8                	add    %ebx,%eax
}
  106435:	5b                   	pop    %ebx
  106436:	c3                   	ret
  106437:	66 90                	xchg   %ax,%ax
  106439:	66 90                	xchg   %ax,%ax
  10643b:	66 90                	xchg   %ax,%ax
  10643d:	66 90                	xchg   %ax,%ax
  10643f:	90                   	nop

00106440 <set_pdir_base>:

char * PDirPool[NUM_IDS][1024] gcc_aligned(PAGESIZE);
unsigned int IDPTbl[1024][1024] gcc_aligned(PAGESIZE);

void set_pdir_base(unsigned int index)
{
  106440:	53                   	push   %ebx
  106441:	e8 7a 9f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106446:	81 c3 ae 6b 00 00    	add    $0x6bae,%ebx
  10644c:	83 ec 14             	sub    $0x14,%esp
    set_cr3(PDirPool[index]);
  10644f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106453:	c1 e0 0c             	shl    $0xc,%eax
  106456:	8d 84 03 0c 20 85 01 	lea    0x185200c(%ebx,%eax,1),%eax
  10645d:	50                   	push   %eax
  10645e:	e8 47 ad ff ff       	call   1011aa <set_cr3>
}
  106463:	83 c4 18             	add    $0x18,%esp
  106466:	5b                   	pop    %ebx
  106467:	c3                   	ret
  106468:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10646f:	00 

00106470 <get_pdir_entry>:

unsigned int get_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    return (unsigned int)PDirPool[proc_index][pde_index];
  106470:	e8 47 9f ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106475:	81 c2 7f 6b 00 00    	add    $0x6b7f,%edx
  10647b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10647f:	c1 e0 0a             	shl    $0xa,%eax
  106482:	03 44 24 08          	add    0x8(%esp),%eax
  106486:	8b 84 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%eax
}   
  10648d:	c3                   	ret
  10648e:	66 90                	xchg   %ax,%ax

00106490 <set_pdir_entry>:

void set_pdir_entry(unsigned int proc_index, unsigned int pde_index, unsigned int page_index)
{
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
    PDirPool[proc_index][pde_index] = (char *)value;
  106490:	e8 38 e9 ff ff       	call   104dcd <__x86.get_pc_thunk.cx>
  106495:	81 c1 5f 6b 00 00    	add    $0x6b5f,%ecx
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  10649b:	8b 54 24 0c          	mov    0xc(%esp),%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  10649f:	8b 44 24 04          	mov    0x4(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  1064a3:	c1 e2 0c             	shl    $0xc,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  1064a6:	c1 e0 0a             	shl    $0xa,%eax
  1064a9:	03 44 24 08          	add    0x8(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  1064ad:	83 ca 07             	or     $0x7,%edx
  1064b0:	89 94 81 0c 20 85 01 	mov    %edx,0x185200c(%ecx,%eax,4)
}
  1064b7:	c3                   	ret
  1064b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1064bf:	00 

001064c0 <set_pdir_entry_super>:
// NEW: Maps a 4MB physical frame directly into the Page Directory
void set_pdir_entry_super(unsigned int proc_index, unsigned int pde_index, unsigned int page_index)
{
    // Sets Bit 7 (PTE_PS) to indicate this PDE points to a 4MB page
    unsigned int value = (page_index << 12) | PT_PERM_PTU | PTE_PS; 
    PDirPool[proc_index][pde_index] = (char *)value;
  1064c0:	e8 08 e9 ff ff       	call   104dcd <__x86.get_pc_thunk.cx>
  1064c5:	81 c1 2f 6b 00 00    	add    $0x6b2f,%ecx
    unsigned int value = (page_index << 12) | PT_PERM_PTU | PTE_PS; 
  1064cb:	8b 54 24 0c          	mov    0xc(%esp),%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  1064cf:	8b 44 24 04          	mov    0x4(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU | PTE_PS; 
  1064d3:	c1 e2 0c             	shl    $0xc,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  1064d6:	c1 e0 0a             	shl    $0xa,%eax
  1064d9:	03 44 24 08          	add    0x8(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU | PTE_PS; 
  1064dd:	80 ca 87             	or     $0x87,%dl
  1064e0:	89 94 81 0c 20 85 01 	mov    %edx,0x185200c(%ecx,%eax,4)
}
  1064e7:	c3                   	ret
  1064e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1064ef:	00 

001064f0 <set_pdir_entry_identity>:

void set_pdir_entry_identity(unsigned int proc_index, unsigned int pde_index)
{   
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  1064f0:	e8 d8 e8 ff ff       	call   104dcd <__x86.get_pc_thunk.cx>
  1064f5:	81 c1 ff 6a 00 00    	add    $0x6aff,%ecx
{   
  1064fb:	53                   	push   %ebx
  1064fc:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  106500:	89 d8                	mov    %ebx,%eax
  106502:	c1 e0 0c             	shl    $0xc,%eax
  106505:	8d 94 01 0c 20 45 01 	lea    0x145200c(%ecx,%eax,1),%edx
    value |= PT_PERM_PTU;
    PDirPool[proc_index][pde_index] = (char *)value;
  10650c:	8b 44 24 08          	mov    0x8(%esp),%eax
    value |= PT_PERM_PTU;
  106510:	83 ca 07             	or     $0x7,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  106513:	c1 e0 0a             	shl    $0xa,%eax
  106516:	01 d8                	add    %ebx,%eax
}   
  106518:	5b                   	pop    %ebx
    value |= PT_PERM_PTU;
  106519:	89 94 81 0c 20 85 01 	mov    %edx,0x185200c(%ecx,%eax,4)
}   
  106520:	c3                   	ret
  106521:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106528:	00 
  106529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106530 <rmv_pdir_entry>:

void rmv_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    PDirPool[proc_index][pde_index] = (char *)0x00000000;
  106530:	e8 87 9e ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106535:	81 c2 bf 6a 00 00    	add    $0x6abf,%edx
  10653b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10653f:	c1 e0 0a             	shl    $0xa,%eax
  106542:	03 44 24 08          	add    0x8(%esp),%eax
  106546:	c7 84 82 0c 20 85 01 	movl   $0x0,0x185200c(%edx,%eax,4)
  10654d:	00 00 00 00 
}   
  106551:	c3                   	ret
  106552:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106559:	00 
  10655a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106560 <get_ptbl_entry>:

unsigned int get_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{   
    unsigned int pte_addr = (unsigned int )PDirPool[proc_index][pde_index];
  106560:	e8 57 9e ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106565:	81 c2 8f 6a 00 00    	add    $0x6a8f,%edx
  10656b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10656f:	c1 e0 0a             	shl    $0xa,%eax
  106572:	03 44 24 08          	add    0x8(%esp),%eax
  106576:	8b 84 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000;
    pte_addr += pte_index << 2;
    return *(unsigned int *)pte_addr;
  10657d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000;
  106581:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    return *(unsigned int *)pte_addr;
  106586:	8b 04 90             	mov    (%eax,%edx,4),%eax
}
  106589:	c3                   	ret
  10658a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106590 <set_ptbl_entry>:

void set_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index, unsigned int page_index, unsigned int perm)
{   
    unsigned int* pte;
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  106590:	e8 27 9e ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106595:	81 c2 5f 6a 00 00    	add    $0x6a5f,%edx
  10659b:	8b 44 24 04          	mov    0x4(%esp),%eax
    pte_addr &= 0xfffff000;
    pte_addr += pte_index << 2;

    pte = (unsigned int *)pte_addr;
    *pte = (page_index << 12) | (perm & 0x00000fff);
  10659f:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  1065a3:	c1 e0 0a             	shl    $0xa,%eax
  1065a6:	03 44 24 08          	add    0x8(%esp),%eax
    *pte = (page_index << 12) | (perm & 0x00000fff);
  1065aa:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  1065b0:	8b 94 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%edx
    *pte = (page_index << 12) | (perm & 0x00000fff);
  1065b7:	8b 44 24 10          	mov    0x10(%esp),%eax
  1065bb:	c1 e0 0c             	shl    $0xc,%eax
    pte_addr &= 0xfffff000;
  1065be:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
    *pte = (page_index << 12) | (perm & 0x00000fff);
  1065c4:	09 c8                	or     %ecx,%eax
  1065c6:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  1065ca:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
}   
  1065cd:	c3                   	ret
  1065ce:	66 90                	xchg   %ax,%ax

001065d0 <set_ptbl_entry_identity>:

void set_ptbl_entry_identity(unsigned int pde_index, unsigned int pte_index, unsigned int perm)
{
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
    IDPTbl[pde_index][pte_index] |= perm;
  1065d0:	e8 f8 e7 ff ff       	call   104dcd <__x86.get_pc_thunk.cx>
  1065d5:	81 c1 1f 6a 00 00    	add    $0x6a1f,%ecx
  1065db:	8b 44 24 04          	mov    0x4(%esp),%eax
  1065df:	c1 e0 0a             	shl    $0xa,%eax
  1065e2:	03 44 24 08          	add    0x8(%esp),%eax
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
  1065e6:	89 c2                	mov    %eax,%edx
  1065e8:	c1 e2 0c             	shl    $0xc,%edx
    IDPTbl[pde_index][pte_index] |= perm;
  1065eb:	0b 54 24 0c          	or     0xc(%esp),%edx
  1065ef:	89 94 81 0c 20 45 01 	mov    %edx,0x145200c(%ecx,%eax,4)
}
  1065f6:	c3                   	ret
  1065f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1065fe:	00 
  1065ff:	90                   	nop

00106600 <rmv_ptbl_entry>:

void rmv_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{
    unsigned int * pte;
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  106600:	e8 b7 9d ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106605:	81 c2 ef 69 00 00    	add    $0x69ef,%edx
  10660b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10660f:	c1 e0 0a             	shl    $0xa,%eax
  106612:	03 44 24 08          	add    0x8(%esp),%eax
  106616:	8b 84 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000;
    pte_addr += pte_index << 2;
    pte = (unsigned int *)pte_addr;
    *pte = 0;
  10661d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000;
  106621:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    *pte = 0;
  106626:	c7 04 90 00 00 00 00 	movl   $0x0,(%eax,%edx,4)
  10662d:	c3                   	ret
  10662e:	66 90                	xchg   %ax,%ax

00106630 <MPTIntro_test1>:

extern char *PDirPool[NUM_IDS][1024];
extern unsigned int IDPTbl[1024][1024];

int MPTIntro_test1()
{
  106630:	56                   	push   %esi
  106631:	53                   	push   %ebx
  106632:	e8 89 9d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106637:	81 c3 bd 69 00 00    	add    $0x69bd,%ebx
  10663d:	83 ec 10             	sub    $0x10,%esp
    set_pdir_base(0);
  106640:	6a 00                	push   $0x0
  106642:	e8 f9 fd ff ff       	call   106440 <set_pdir_base>
    if ((unsigned int) PDirPool[0] != rcr3()) {
  106647:	e8 6a d3 ff ff       	call   1039b6 <rcr3>
  10664c:	c7 c6 00 f0 95 01    	mov    $0x195f000,%esi
  106652:	83 c4 10             	add    $0x10,%esp
  106655:	39 f0                	cmp    %esi,%eax
  106657:	74 27                	je     106680 <MPTIntro_test1+0x50>
        dprintf("test 1.1 failed: (%d != %d)\n",
  106659:	e8 58 d3 ff ff       	call   1039b6 <rcr3>
  10665e:	83 ec 04             	sub    $0x4,%esp
  106661:	50                   	push   %eax
  106662:	8d 83 bc b9 ff ff    	lea    -0x4644(%ebx),%eax
  106668:	56                   	push   %esi
  106669:	50                   	push   %eax
  10666a:	e8 fd c6 ff ff       	call   102d6c <dprintf>
                (unsigned int) PDirPool[0], rcr3());
        return 1;
  10666f:	83 c4 10             	add    $0x10,%esp
  106672:	b8 01 00 00 00       	mov    $0x1,%eax
                get_pdir_entry(1, 1), get_pdir_entry(1, 2));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  106677:	83 c4 04             	add    $0x4,%esp
  10667a:	5b                   	pop    %ebx
  10667b:	5e                   	pop    %esi
  10667c:	c3                   	ret
  10667d:	8d 76 00             	lea    0x0(%esi),%esi
    set_pdir_entry_identity(1, 1);
  106680:	83 ec 08             	sub    $0x8,%esp
  106683:	6a 01                	push   $0x1
  106685:	6a 01                	push   $0x1
  106687:	e8 64 fe ff ff       	call   1064f0 <set_pdir_entry_identity>
    set_pdir_entry(1, 2, 100);
  10668c:	83 c4 0c             	add    $0xc,%esp
  10668f:	6a 64                	push   $0x64
  106691:	6a 02                	push   $0x2
  106693:	6a 01                	push   $0x1
  106695:	e8 f6 fd ff ff       	call   106490 <set_pdir_entry>
    if (get_pdir_entry(1, 1) != (unsigned int) IDPTbl[1] + 7) {
  10669a:	58                   	pop    %eax
  10669b:	5a                   	pop    %edx
  10669c:	6a 01                	push   $0x1
  10669e:	6a 01                	push   $0x1
  1066a0:	e8 cb fd ff ff       	call   106470 <get_pdir_entry>
  1066a5:	c7 c6 00 f0 55 01    	mov    $0x155f000,%esi
  1066ab:	83 c4 10             	add    $0x10,%esp
  1066ae:	81 c6 07 10 00 00    	add    $0x1007,%esi
  1066b4:	39 c6                	cmp    %eax,%esi
  1066b6:	74 28                	je     1066e0 <MPTIntro_test1+0xb0>
        dprintf("test 1.2 failed: (%d != %d)\n",
  1066b8:	83 ec 08             	sub    $0x8,%esp
  1066bb:	6a 01                	push   $0x1
  1066bd:	6a 01                	push   $0x1
  1066bf:	e8 ac fd ff ff       	call   106470 <get_pdir_entry>
  1066c4:	83 c4 0c             	add    $0xc,%esp
  1066c7:	56                   	push   %esi
  1066c8:	50                   	push   %eax
  1066c9:	8d 83 d9 b9 ff ff    	lea    -0x4627(%ebx),%eax
  1066cf:	50                   	push   %eax
  1066d0:	e8 97 c6 ff ff       	call   102d6c <dprintf>
        return 1;
  1066d5:	83 c4 10             	add    $0x10,%esp
  1066d8:	eb 98                	jmp    106672 <MPTIntro_test1+0x42>
  1066da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (get_pdir_entry(1, 2) != 409607) {
  1066e0:	83 ec 08             	sub    $0x8,%esp
  1066e3:	6a 02                	push   $0x2
  1066e5:	6a 01                	push   $0x1
  1066e7:	e8 84 fd ff ff       	call   106470 <get_pdir_entry>
  1066ec:	83 c4 10             	add    $0x10,%esp
  1066ef:	3d 07 40 06 00       	cmp    $0x64007,%eax
  1066f4:	75 72                	jne    106768 <MPTIntro_test1+0x138>
    rmv_pdir_entry(1, 1);
  1066f6:	83 ec 08             	sub    $0x8,%esp
  1066f9:	6a 01                	push   $0x1
  1066fb:	6a 01                	push   $0x1
  1066fd:	e8 2e fe ff ff       	call   106530 <rmv_pdir_entry>
    rmv_pdir_entry(1, 2);
  106702:	59                   	pop    %ecx
  106703:	5e                   	pop    %esi
  106704:	6a 02                	push   $0x2
  106706:	6a 01                	push   $0x1
  106708:	e8 23 fe ff ff       	call   106530 <rmv_pdir_entry>
    if (get_pdir_entry(1, 1) != 0 || get_pdir_entry(1, 2) != 0) {
  10670d:	58                   	pop    %eax
  10670e:	5a                   	pop    %edx
  10670f:	6a 01                	push   $0x1
  106711:	6a 01                	push   $0x1
  106713:	e8 58 fd ff ff       	call   106470 <get_pdir_entry>
  106718:	83 c4 10             	add    $0x10,%esp
  10671b:	85 c0                	test   %eax,%eax
  10671d:	75 13                	jne    106732 <MPTIntro_test1+0x102>
  10671f:	83 ec 08             	sub    $0x8,%esp
  106722:	6a 02                	push   $0x2
  106724:	6a 01                	push   $0x1
  106726:	e8 45 fd ff ff       	call   106470 <get_pdir_entry>
  10672b:	83 c4 10             	add    $0x10,%esp
  10672e:	85 c0                	test   %eax,%eax
  106730:	74 5e                	je     106790 <MPTIntro_test1+0x160>
        dprintf("test 1.4 failed: (%d != 0 || %d != 0)\n",
  106732:	83 ec 08             	sub    $0x8,%esp
  106735:	6a 02                	push   $0x2
  106737:	6a 01                	push   $0x1
  106739:	e8 32 fd ff ff       	call   106470 <get_pdir_entry>
  10673e:	89 c6                	mov    %eax,%esi
  106740:	58                   	pop    %eax
  106741:	5a                   	pop    %edx
  106742:	6a 01                	push   $0x1
  106744:	6a 01                	push   $0x1
  106746:	e8 25 fd ff ff       	call   106470 <get_pdir_entry>
  10674b:	83 c4 0c             	add    $0xc,%esp
  10674e:	56                   	push   %esi
  10674f:	50                   	push   %eax
  106750:	8d 83 70 c1 ff ff    	lea    -0x3e90(%ebx),%eax
  106756:	50                   	push   %eax
  106757:	e8 10 c6 ff ff       	call   102d6c <dprintf>
        return 1;
  10675c:	83 c4 10             	add    $0x10,%esp
  10675f:	e9 0e ff ff ff       	jmp    106672 <MPTIntro_test1+0x42>
  106764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d != 409607)\n", get_pdir_entry(1, 2));
  106768:	83 ec 08             	sub    $0x8,%esp
  10676b:	6a 02                	push   $0x2
  10676d:	6a 01                	push   $0x1
  10676f:	e8 fc fc ff ff       	call   106470 <get_pdir_entry>
  106774:	59                   	pop    %ecx
  106775:	5e                   	pop    %esi
  106776:	50                   	push   %eax
  106777:	8d 83 4c c1 ff ff    	lea    -0x3eb4(%ebx),%eax
  10677d:	50                   	push   %eax
  10677e:	e8 e9 c5 ff ff       	call   102d6c <dprintf>
        return 1;
  106783:	83 c4 10             	add    $0x10,%esp
  106786:	e9 e7 fe ff ff       	jmp    106672 <MPTIntro_test1+0x42>
  10678b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    dprintf("test 1 passed.\n");
  106790:	83 ec 0c             	sub    $0xc,%esp
  106793:	8d 83 7a b8 ff ff    	lea    -0x4786(%ebx),%eax
  106799:	50                   	push   %eax
  10679a:	e8 cd c5 ff ff       	call   102d6c <dprintf>
    return 0;
  10679f:	83 c4 10             	add    $0x10,%esp
  1067a2:	31 c0                	xor    %eax,%eax
  1067a4:	e9 ce fe ff ff       	jmp    106677 <MPTIntro_test1+0x47>
  1067a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

001067b0 <MPTIntro_test2>:

int MPTIntro_test2()
{
  1067b0:	53                   	push   %ebx
  1067b1:	e8 0a 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1067b6:	81 c3 3e 68 00 00    	add    $0x683e,%ebx
  1067bc:	83 ec 0c             	sub    $0xc,%esp
    set_pdir_entry(1, 1, 10000);
  1067bf:	68 10 27 00 00       	push   $0x2710
  1067c4:	6a 01                	push   $0x1
  1067c6:	6a 01                	push   $0x1
  1067c8:	e8 c3 fc ff ff       	call   106490 <set_pdir_entry>
    set_ptbl_entry(1, 1, 1, 10000, 259);
  1067cd:	c7 04 24 03 01 00 00 	movl   $0x103,(%esp)
  1067d4:	68 10 27 00 00       	push   $0x2710
  1067d9:	6a 01                	push   $0x1
  1067db:	6a 01                	push   $0x1
  1067dd:	6a 01                	push   $0x1
  1067df:	e8 ac fd ff ff       	call   106590 <set_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 40960259) {
  1067e4:	83 c4 1c             	add    $0x1c,%esp
  1067e7:	6a 01                	push   $0x1
  1067e9:	6a 01                	push   $0x1
  1067eb:	6a 01                	push   $0x1
  1067ed:	e8 6e fd ff ff       	call   106560 <get_ptbl_entry>
  1067f2:	83 c4 10             	add    $0x10,%esp
  1067f5:	3d 03 01 71 02       	cmp    $0x2710103,%eax
  1067fa:	74 34                	je     106830 <MPTIntro_test2+0x80>
        dprintf("test 2.1 failed: (%d != 40960259)\n", get_ptbl_entry(1, 1, 1));
  1067fc:	83 ec 04             	sub    $0x4,%esp
  1067ff:	6a 01                	push   $0x1
  106801:	6a 01                	push   $0x1
  106803:	6a 01                	push   $0x1
  106805:	e8 56 fd ff ff       	call   106560 <get_ptbl_entry>
  10680a:	5a                   	pop    %edx
  10680b:	59                   	pop    %ecx
  10680c:	50                   	push   %eax
  10680d:	8d 83 98 c1 ff ff    	lea    -0x3e68(%ebx),%eax
  106813:	50                   	push   %eax
  106814:	e8 53 c5 ff ff       	call   102d6c <dprintf>
        return 1;
  106819:	83 c4 10             	add    $0x10,%esp
        return 1;
    }
    rmv_pdir_entry(1, 1);
    dprintf("test 2 passed.\n");
    return 0;
}
  10681c:	83 c4 08             	add    $0x8,%esp
        return 1;
  10681f:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106824:	5b                   	pop    %ebx
  106825:	c3                   	ret
  106826:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10682d:	00 
  10682e:	66 90                	xchg   %ax,%ax
    rmv_ptbl_entry(1, 1, 1);
  106830:	83 ec 04             	sub    $0x4,%esp
  106833:	6a 01                	push   $0x1
  106835:	6a 01                	push   $0x1
  106837:	6a 01                	push   $0x1
  106839:	e8 c2 fd ff ff       	call   106600 <rmv_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 0) {
  10683e:	83 c4 0c             	add    $0xc,%esp
  106841:	6a 01                	push   $0x1
  106843:	6a 01                	push   $0x1
  106845:	6a 01                	push   $0x1
  106847:	e8 14 fd ff ff       	call   106560 <get_ptbl_entry>
  10684c:	83 c4 10             	add    $0x10,%esp
  10684f:	85 c0                	test   %eax,%eax
  106851:	75 2d                	jne    106880 <MPTIntro_test2+0xd0>
    rmv_pdir_entry(1, 1);
  106853:	83 ec 08             	sub    $0x8,%esp
  106856:	6a 01                	push   $0x1
  106858:	6a 01                	push   $0x1
  10685a:	e8 d1 fc ff ff       	call   106530 <rmv_pdir_entry>
    dprintf("test 2 passed.\n");
  10685f:	8d 83 8a b8 ff ff    	lea    -0x4776(%ebx),%eax
  106865:	89 04 24             	mov    %eax,(%esp)
  106868:	e8 ff c4 ff ff       	call   102d6c <dprintf>
    return 0;
  10686d:	83 c4 10             	add    $0x10,%esp
  106870:	31 c0                	xor    %eax,%eax
}
  106872:	83 c4 08             	add    $0x8,%esp
  106875:	5b                   	pop    %ebx
  106876:	c3                   	ret
  106877:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10687e:	00 
  10687f:	90                   	nop
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry(1, 1, 1));
  106880:	83 ec 04             	sub    $0x4,%esp
  106883:	6a 01                	push   $0x1
  106885:	6a 01                	push   $0x1
  106887:	6a 01                	push   $0x1
  106889:	e8 d2 fc ff ff       	call   106560 <get_ptbl_entry>
  10688e:	5a                   	pop    %edx
  10688f:	59                   	pop    %ecx
  106890:	50                   	push   %eax
  106891:	8d 83 f6 b9 ff ff    	lea    -0x460a(%ebx),%eax
  106897:	50                   	push   %eax
  106898:	e8 cf c4 ff ff       	call   102d6c <dprintf>
        return 1;
  10689d:	83 c4 10             	add    $0x10,%esp
  1068a0:	e9 77 ff ff ff       	jmp    10681c <MPTIntro_test2+0x6c>
  1068a5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1068ac:	00 
  1068ad:	8d 76 00             	lea    0x0(%esi),%esi

001068b0 <MPTIntro_test_own>:
int MPTIntro_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1068b0:	31 c0                	xor    %eax,%eax
  1068b2:	c3                   	ret
  1068b3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1068ba:	00 
  1068bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001068c0 <test_MPTIntro>:

int test_MPTIntro()
{
  1068c0:	53                   	push   %ebx
  1068c1:	83 ec 08             	sub    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  1068c4:	e8 67 fd ff ff       	call   106630 <MPTIntro_test1>
  1068c9:	89 c3                	mov    %eax,%ebx
  1068cb:	e8 e0 fe ff ff       	call   1067b0 <MPTIntro_test2>
  1068d0:	83 c4 08             	add    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  1068d3:	01 d8                	add    %ebx,%eax
  1068d5:	5b                   	pop    %ebx
  1068d6:	c3                   	ret
  1068d7:	66 90                	xchg   %ax,%ax
  1068d9:	66 90                	xchg   %ax,%ax
  1068db:	66 90                	xchg   %ax,%ax
  1068dd:	66 90                	xchg   %ax,%ax
  1068df:	90                   	nop

001068e0 <set_pde>:
 */
void set_pde(unsigned int proc_index, unsigned int pde_index, unsigned int entry)
{
    // Access the global Page Directory Pool
    // In most CertiKOS labs, this is PDirPool[proc_index][pde_index]
    PDirPool[proc_index][pde_index] = entry;
  1068e0:	e8 d3 9a ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1068e5:	05 0f 67 00 00       	add    $0x670f,%eax
  1068ea:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  1068ee:	c7 c2 00 f0 95 01    	mov    $0x195f000,%edx
  1068f4:	8b 44 24 04          	mov    0x4(%esp),%eax
  1068f8:	c1 e0 0a             	shl    $0xa,%eax
  1068fb:	03 44 24 08          	add    0x8(%esp),%eax
  1068ff:	89 0c 82             	mov    %ecx,(%edx,%eax,4)
}
  106902:	c3                   	ret
  106903:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10690a:	00 
  10690b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106910 <set_pde_full_by_va>:
    PDirPool[proc_index][pde_index] = entry;
  106910:	e8 a3 9a ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  106915:	05 df 66 00 00       	add    $0x66df,%eax
// Add this to kern/vmm/MPTOp/MPTOp.c
void set_pde_full_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int entry)
{
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10691a:	8b 54 24 08          	mov    0x8(%esp),%edx
  10691e:	c1 ea 16             	shr    $0x16,%edx
    PDirPool[proc_index][pde_index] = entry;
  106921:	c7 c1 00 f0 95 01    	mov    $0x195f000,%ecx
  106927:	8b 44 24 04          	mov    0x4(%esp),%eax
  10692b:	c1 e0 0a             	shl    $0xa,%eax
  10692e:	01 d0                	add    %edx,%eax
  106930:	8b 54 24 0c          	mov    0xc(%esp),%edx
  106934:	89 14 81             	mov    %edx,(%ecx,%eax,4)
    // Call the lower level set_pde or set_pdir_entry 
    // but ensure it passes the WHOLE entry
    set_pde(proc_index, pde_index, entry); 
}
  106937:	c3                   	ret
  106938:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10693f:	00 

00106940 <get_ptbl_entry_by_va>:
unsigned int get_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106940:	55                   	push   %ebp
  106941:	57                   	push   %edi
  106942:	56                   	push   %esi
  106943:	53                   	push   %ebx
  106944:	e8 77 9a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106949:	81 c3 ab 66 00 00    	add    $0x66ab,%ebx
  10694f:	83 ec 14             	sub    $0x14,%esp
  106952:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  106956:	8b 7c 24 28          	mov    0x28(%esp),%edi
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10695a:	89 f5                	mov    %esi,%ebp
  10695c:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  10695f:	55                   	push   %ebp
  106960:	57                   	push   %edi
  106961:	e8 0a fb ff ff       	call   106470 <get_pdir_entry>

    if ((pde & PTE_P) == 0) {
  106966:	83 c4 10             	add    $0x10,%esp
  106969:	89 c2                	mov    %eax,%edx
  10696b:	83 e2 01             	and    $0x1,%edx
  10696e:	74 06                	je     106976 <get_ptbl_entry_by_va+0x36>
        return 0;
    }

    // NEW: If PS bit is set, the PDE is the translation for the whole 4MB region
    if (pde & PTE_PS) {
        return pde;
  106970:	89 c2                	mov    %eax,%edx
    if (pde & PTE_PS) {
  106972:	a8 80                	test   $0x80,%al
  106974:	74 0a                	je     106980 <get_ptbl_entry_by_va+0x40>
    }

    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    return get_ptbl_entry(proc_index, pde_index, pte_index);
}         
  106976:	83 c4 0c             	add    $0xc,%esp
  106979:	89 d0                	mov    %edx,%eax
  10697b:	5b                   	pop    %ebx
  10697c:	5e                   	pop    %esi
  10697d:	5f                   	pop    %edi
  10697e:	5d                   	pop    %ebp
  10697f:	c3                   	ret
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106980:	c1 ee 0c             	shr    $0xc,%esi
    return get_ptbl_entry(proc_index, pde_index, pte_index);
  106983:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106986:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    return get_ptbl_entry(proc_index, pde_index, pte_index);
  10698c:	56                   	push   %esi
  10698d:	55                   	push   %ebp
  10698e:	57                   	push   %edi
  10698f:	e8 cc fb ff ff       	call   106560 <get_ptbl_entry>
  106994:	83 c4 10             	add    $0x10,%esp
}         
  106997:	83 c4 0c             	add    $0xc,%esp
    return get_ptbl_entry(proc_index, pde_index, pte_index);
  10699a:	89 c2                	mov    %eax,%edx
}         
  10699c:	5b                   	pop    %ebx
  10699d:	89 d0                	mov    %edx,%eax
  10699f:	5e                   	pop    %esi
  1069a0:	5f                   	pop    %edi
  1069a1:	5d                   	pop    %ebp
  1069a2:	c3                   	ret
  1069a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1069aa:	00 
  1069ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001069b0 <get_pdir_entry_by_va>:

unsigned int get_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  1069b0:	53                   	push   %ebx
  1069b1:	e8 0a 9a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1069b6:	81 c3 3e 66 00 00    	add    $0x663e,%ebx
  1069bc:	83 ec 10             	sub    $0x10,%esp
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  1069bf:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1069c3:	c1 e8 16             	shr    $0x16,%eax
    return get_pdir_entry(proc_index, pde_index);
  1069c6:	50                   	push   %eax
  1069c7:	ff 74 24 1c          	push   0x1c(%esp)
  1069cb:	e8 a0 fa ff ff       	call   106470 <get_pdir_entry>
}
  1069d0:	83 c4 18             	add    $0x18,%esp
  1069d3:	5b                   	pop    %ebx
  1069d4:	c3                   	ret
  1069d5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1069dc:	00 
  1069dd:	8d 76 00             	lea    0x0(%esi),%esi

001069e0 <rmv_ptbl_entry_by_va>:

void rmv_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  1069e0:	55                   	push   %ebp
  1069e1:	57                   	push   %edi
  1069e2:	56                   	push   %esi
  1069e3:	53                   	push   %ebx
  1069e4:	e8 d7 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1069e9:	81 c3 0b 66 00 00    	add    $0x660b,%ebx
  1069ef:	83 ec 14             	sub    $0x14,%esp
  1069f2:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  1069f6:	8b 7c 24 28          	mov    0x28(%esp),%edi
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  1069fa:	89 f5                	mov    %esi,%ebp
  1069fc:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  1069ff:	55                   	push   %ebp
  106a00:	57                   	push   %edi
  106a01:	e8 6a fa ff ff       	call   106470 <get_pdir_entry>

    // If entry is missing or is a Superpage PDE, we don't remove a PTE
    if ((pde & PTE_P) == 0 || (pde & PTE_PS)) {
  106a06:	83 c4 10             	add    $0x10,%esp
  106a09:	25 81 00 00 00       	and    $0x81,%eax
  106a0e:	83 f8 01             	cmp    $0x1,%eax
  106a11:	74 0d                	je     106a20 <rmv_ptbl_entry_by_va+0x40>
        return;
    }

    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
}
  106a13:	83 c4 0c             	add    $0xc,%esp
  106a16:	5b                   	pop    %ebx
  106a17:	5e                   	pop    %esi
  106a18:	5f                   	pop    %edi
  106a19:	5d                   	pop    %ebp
  106a1a:	c3                   	ret
  106a1b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106a20:	c1 ee 0c             	shr    $0xc,%esi
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  106a23:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106a26:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  106a2c:	56                   	push   %esi
  106a2d:	55                   	push   %ebp
  106a2e:	57                   	push   %edi
  106a2f:	e8 cc fb ff ff       	call   106600 <rmv_ptbl_entry>
  106a34:	83 c4 10             	add    $0x10,%esp
}
  106a37:	83 c4 0c             	add    $0xc,%esp
  106a3a:	5b                   	pop    %ebx
  106a3b:	5e                   	pop    %esi
  106a3c:	5f                   	pop    %edi
  106a3d:	5d                   	pop    %ebp
  106a3e:	c3                   	ret
  106a3f:	90                   	nop

00106a40 <rmv_pdir_entry_by_va>:

void rmv_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106a40:	53                   	push   %ebx
  106a41:	e8 7a 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106a46:	81 c3 ae 65 00 00    	add    $0x65ae,%ebx
  106a4c:	83 ec 10             	sub    $0x10,%esp
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  106a4f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106a53:	c1 e8 16             	shr    $0x16,%eax
    rmv_pdir_entry(proc_index, pde_index);
  106a56:	50                   	push   %eax
  106a57:	ff 74 24 1c          	push   0x1c(%esp)
  106a5b:	e8 d0 fa ff ff       	call   106530 <rmv_pdir_entry>
}
  106a60:	83 c4 18             	add    $0x18,%esp
  106a63:	5b                   	pop    %ebx
  106a64:	c3                   	ret
  106a65:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106a6c:	00 
  106a6d:	8d 76 00             	lea    0x0(%esi),%esi

00106a70 <set_ptbl_entry_by_va>:

void set_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index, unsigned int perm)
{
  106a70:	53                   	push   %ebx
  106a71:	e8 4a 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106a76:	81 c3 7e 65 00 00    	add    $0x657e,%ebx
  106a7c:	83 ec 14             	sub    $0x14,%esp
  106a7f:	8b 44 24 20          	mov    0x20(%esp),%eax
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  106a83:	ff 74 24 28          	push   0x28(%esp)
  106a87:	ff 74 24 28          	push   0x28(%esp)
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106a8b:	89 c2                	mov    %eax,%edx
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  106a8d:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106a90:	c1 ea 0c             	shr    $0xc,%edx
  106a93:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  106a99:	52                   	push   %edx
  106a9a:	50                   	push   %eax
  106a9b:	ff 74 24 2c          	push   0x2c(%esp)
  106a9f:	e8 ec fa ff ff       	call   106590 <set_ptbl_entry>
}
  106aa4:	83 c4 28             	add    $0x28,%esp
  106aa7:	5b                   	pop    %ebx
  106aa8:	c3                   	ret
  106aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106ab0 <set_pdir_entry_by_va>:

void set_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index)
{
  106ab0:	53                   	push   %ebx
  106ab1:	e8 0a 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106ab6:	81 c3 3e 65 00 00    	add    $0x653e,%ebx
  106abc:	83 ec 0c             	sub    $0xc,%esp
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    set_pdir_entry(proc_index, pde_index, page_index);
  106abf:	ff 74 24 1c          	push   0x1c(%esp)
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  106ac3:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106ac7:	c1 e8 16             	shr    $0x16,%eax
    set_pdir_entry(proc_index, pde_index, page_index);
  106aca:	50                   	push   %eax
  106acb:	ff 74 24 1c          	push   0x1c(%esp)
  106acf:	e8 bc f9 ff ff       	call   106490 <set_pdir_entry>
}   
  106ad4:	83 c4 18             	add    $0x18,%esp
  106ad7:	5b                   	pop    %ebx
  106ad8:	c3                   	ret
  106ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106ae0 <idptbl_init>:

void idptbl_init(unsigned int mbi_adr)
{
  106ae0:	56                   	push   %esi
    container_init(mbi_adr);
    unsigned int addr;
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106ae1:	31 f6                	xor    %esi,%esi
{
  106ae3:	53                   	push   %ebx
  106ae4:	e8 d7 98 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106ae9:	81 c3 0b 65 00 00    	add    $0x650b,%ebx
  106aef:	83 ec 10             	sub    $0x10,%esp
    container_init(mbi_adr);
  106af2:	ff 74 24 1c          	push   0x1c(%esp)
  106af6:	e8 15 f3 ff ff       	call   105e10 <container_init>
  106afb:	83 c4 10             	add    $0x10,%esp
  106afe:	66 90                	xchg   %ax,%ax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106b00:	89 f0                	mov    %esi,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  106b02:	89 f2                	mov    %esi,%edx
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  106b04:	8d 8e 00 00 00 c0    	lea    -0x40000000(%esi),%ecx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106b0a:	c1 e8 0c             	shr    $0xc,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  106b0d:	c1 ea 16             	shr    $0x16,%edx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106b10:	25 ff 03 00 00       	and    $0x3ff,%eax
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  106b15:	81 f9 ff ff ff af    	cmp    $0xafffffff,%ecx
  106b1b:	76 26                	jbe    106b43 <idptbl_init+0x63>
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  106b1d:	83 ec 04             	sub    $0x4,%esp
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106b20:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  106b26:	68 03 01 00 00       	push   $0x103
  106b2b:	50                   	push   %eax
  106b2c:	52                   	push   %edx
  106b2d:	e8 9e fa ff ff       	call   1065d0 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106b32:	83 c4 10             	add    $0x10,%esp
  106b35:	81 fe 00 f0 ff ff    	cmp    $0xfffff000,%esi
  106b3b:	75 c3                	jne    106b00 <idptbl_init+0x20>
        } else {
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
        }
    }
}
  106b3d:	83 c4 04             	add    $0x4,%esp
  106b40:	5b                   	pop    %ebx
  106b41:	5e                   	pop    %esi
  106b42:	c3                   	ret
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  106b43:	51                   	push   %ecx
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106b44:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  106b4a:	6a 03                	push   $0x3
  106b4c:	50                   	push   %eax
  106b4d:	52                   	push   %edx
  106b4e:	e8 7d fa ff ff       	call   1065d0 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106b53:	83 c4 10             	add    $0x10,%esp
  106b56:	eb a8                	jmp    106b00 <idptbl_init+0x20>
  106b58:	66 90                	xchg   %ax,%ax
  106b5a:	66 90                	xchg   %ax,%ax
  106b5c:	66 90                	xchg   %ax,%ax
  106b5e:	66 90                	xchg   %ax,%ax

00106b60 <MPTOp_test1>:
#include <lib/debug.h>
#include "export.h"

int MPTOp_test1()
{
  106b60:	53                   	push   %ebx
  106b61:	e8 5a 98 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106b66:	81 c3 8e 64 00 00    	add    $0x648e,%ebx
  106b6c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  106b6f:	68 00 00 00 4b       	push   $0x4b000000
  106b74:	6a 0a                	push   $0xa
  106b76:	e8 c5 fd ff ff       	call   106940 <get_ptbl_entry_by_va>
  106b7b:	83 c4 10             	add    $0x10,%esp
  106b7e:	85 c0                	test   %eax,%eax
  106b80:	0f 85 0a 01 00 00    	jne    106c90 <MPTOp_test1+0x130>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  106b86:	83 ec 08             	sub    $0x8,%esp
  106b89:	68 00 00 00 4b       	push   $0x4b000000
  106b8e:	6a 0a                	push   $0xa
  106b90:	e8 1b fe ff ff       	call   1069b0 <get_pdir_entry_by_va>
  106b95:	83 c4 10             	add    $0x10,%esp
  106b98:	85 c0                	test   %eax,%eax
  106b9a:	0f 85 c0 00 00 00    	jne    106c60 <MPTOp_test1+0x100>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    set_pdir_entry_by_va(10, vaddr, 100);
  106ba0:	83 ec 04             	sub    $0x4,%esp
  106ba3:	6a 64                	push   $0x64
  106ba5:	68 00 00 00 4b       	push   $0x4b000000
  106baa:	6a 0a                	push   $0xa
  106bac:	e8 ff fe ff ff       	call   106ab0 <set_pdir_entry_by_va>
    set_ptbl_entry_by_va(10, vaddr, 100, 259);
  106bb1:	68 03 01 00 00       	push   $0x103
  106bb6:	6a 64                	push   $0x64
  106bb8:	68 00 00 00 4b       	push   $0x4b000000
  106bbd:	6a 0a                	push   $0xa
  106bbf:	e8 ac fe ff ff       	call   106a70 <set_ptbl_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) == 0) {
  106bc4:	83 c4 18             	add    $0x18,%esp
  106bc7:	68 00 00 00 4b       	push   $0x4b000000
  106bcc:	6a 0a                	push   $0xa
  106bce:	e8 6d fd ff ff       	call   106940 <get_ptbl_entry_by_va>
  106bd3:	83 c4 10             	add    $0x10,%esp
  106bd6:	85 c0                	test   %eax,%eax
  106bd8:	0f 84 02 01 00 00    	je     106ce0 <MPTOp_test1+0x180>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) == 0) {
  106bde:	83 ec 08             	sub    $0x8,%esp
  106be1:	68 00 00 00 4b       	push   $0x4b000000
  106be6:	6a 0a                	push   $0xa
  106be8:	e8 c3 fd ff ff       	call   1069b0 <get_pdir_entry_by_va>
  106bed:	83 c4 10             	add    $0x10,%esp
  106bf0:	85 c0                	test   %eax,%eax
  106bf2:	0f 84 c0 00 00 00    	je     106cb8 <MPTOp_test1+0x158>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    rmv_ptbl_entry_by_va(10, vaddr);
  106bf8:	83 ec 08             	sub    $0x8,%esp
  106bfb:	68 00 00 00 4b       	push   $0x4b000000
  106c00:	6a 0a                	push   $0xa
  106c02:	e8 d9 fd ff ff       	call   1069e0 <rmv_ptbl_entry_by_va>
    rmv_pdir_entry_by_va(10, vaddr);
  106c07:	58                   	pop    %eax
  106c08:	5a                   	pop    %edx
  106c09:	68 00 00 00 4b       	push   $0x4b000000
  106c0e:	6a 0a                	push   $0xa
  106c10:	e8 2b fe ff ff       	call   106a40 <rmv_pdir_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  106c15:	59                   	pop    %ecx
  106c16:	58                   	pop    %eax
  106c17:	68 00 00 00 4b       	push   $0x4b000000
  106c1c:	6a 0a                	push   $0xa
  106c1e:	e8 1d fd ff ff       	call   106940 <get_ptbl_entry_by_va>
  106c23:	83 c4 10             	add    $0x10,%esp
  106c26:	85 c0                	test   %eax,%eax
  106c28:	0f 85 e2 00 00 00    	jne    106d10 <MPTOp_test1+0x1b0>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  106c2e:	83 ec 08             	sub    $0x8,%esp
  106c31:	68 00 00 00 4b       	push   $0x4b000000
  106c36:	6a 0a                	push   $0xa
  106c38:	e8 73 fd ff ff       	call   1069b0 <get_pdir_entry_by_va>
  106c3d:	83 c4 10             	add    $0x10,%esp
  106c40:	85 c0                	test   %eax,%eax
  106c42:	0f 85 f8 00 00 00    	jne    106d40 <MPTOp_test1+0x1e0>
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  106c48:	83 ec 0c             	sub    $0xc,%esp
  106c4b:	8d 83 7a b8 ff ff    	lea    -0x4786(%ebx),%eax
  106c51:	50                   	push   %eax
  106c52:	e8 15 c1 ff ff       	call   102d6c <dprintf>
    return 0;
  106c57:	83 c4 10             	add    $0x10,%esp
  106c5a:	31 c0                	xor    %eax,%eax
  106c5c:	eb 28                	jmp    106c86 <MPTOp_test1+0x126>
  106c5e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  106c60:	83 ec 08             	sub    $0x8,%esp
  106c63:	68 00 00 00 4b       	push   $0x4b000000
  106c68:	6a 0a                	push   $0xa
  106c6a:	e8 41 fd ff ff       	call   1069b0 <get_pdir_entry_by_va>
  106c6f:	5a                   	pop    %edx
  106c70:	59                   	pop    %ecx
  106c71:	50                   	push   %eax
  106c72:	8d 83 2e ba ff ff    	lea    -0x45d2(%ebx),%eax
  106c78:	50                   	push   %eax
  106c79:	e8 ee c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106c7e:	83 c4 10             	add    $0x10,%esp
        return 1;
  106c81:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106c86:	83 c4 08             	add    $0x8,%esp
  106c89:	5b                   	pop    %ebx
  106c8a:	c3                   	ret
  106c8b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106c90:	83 ec 08             	sub    $0x8,%esp
  106c93:	68 00 00 00 4b       	push   $0x4b000000
  106c98:	6a 0a                	push   $0xa
  106c9a:	e8 a1 fc ff ff       	call   106940 <get_ptbl_entry_by_va>
  106c9f:	5a                   	pop    %edx
  106ca0:	59                   	pop    %ecx
  106ca1:	50                   	push   %eax
  106ca2:	8d 83 12 ba ff ff    	lea    -0x45ee(%ebx),%eax
  106ca8:	50                   	push   %eax
  106ca9:	e8 be c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106cae:	83 c4 10             	add    $0x10,%esp
  106cb1:	eb ce                	jmp    106c81 <MPTOp_test1+0x121>
  106cb3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
  106cb8:	83 ec 08             	sub    $0x8,%esp
  106cbb:	68 00 00 00 4b       	push   $0x4b000000
  106cc0:	6a 0a                	push   $0xa
  106cc2:	e8 e9 fc ff ff       	call   1069b0 <get_pdir_entry_by_va>
  106cc7:	5a                   	pop    %edx
  106cc8:	59                   	pop    %ecx
  106cc9:	50                   	push   %eax
  106cca:	8d 83 66 ba ff ff    	lea    -0x459a(%ebx),%eax
  106cd0:	50                   	push   %eax
  106cd1:	e8 96 c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106cd6:	83 c4 10             	add    $0x10,%esp
  106cd9:	eb a6                	jmp    106c81 <MPTOp_test1+0x121>
  106cdb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106ce0:	83 ec 08             	sub    $0x8,%esp
  106ce3:	68 00 00 00 4b       	push   $0x4b000000
  106ce8:	6a 0a                	push   $0xa
  106cea:	e8 51 fc ff ff       	call   106940 <get_ptbl_entry_by_va>
  106cef:	5a                   	pop    %edx
  106cf0:	59                   	pop    %ecx
  106cf1:	50                   	push   %eax
  106cf2:	8d 83 4a ba ff ff    	lea    -0x45b6(%ebx),%eax
  106cf8:	50                   	push   %eax
  106cf9:	e8 6e c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106cfe:	83 c4 10             	add    $0x10,%esp
  106d01:	e9 7b ff ff ff       	jmp    106c81 <MPTOp_test1+0x121>
  106d06:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d0d:	00 
  106d0e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106d10:	83 ec 08             	sub    $0x8,%esp
  106d13:	68 00 00 00 4b       	push   $0x4b000000
  106d18:	6a 0a                	push   $0xa
  106d1a:	e8 21 fc ff ff       	call   106940 <get_ptbl_entry_by_va>
  106d1f:	5a                   	pop    %edx
  106d20:	59                   	pop    %ecx
  106d21:	50                   	push   %eax
  106d22:	8d 83 82 ba ff ff    	lea    -0x457e(%ebx),%eax
  106d28:	50                   	push   %eax
  106d29:	e8 3e c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106d2e:	83 c4 10             	add    $0x10,%esp
  106d31:	e9 4b ff ff ff       	jmp    106c81 <MPTOp_test1+0x121>
  106d36:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d3d:	00 
  106d3e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  106d40:	83 ec 08             	sub    $0x8,%esp
  106d43:	68 00 00 00 4b       	push   $0x4b000000
  106d48:	6a 0a                	push   $0xa
  106d4a:	e8 61 fc ff ff       	call   1069b0 <get_pdir_entry_by_va>
  106d4f:	5a                   	pop    %edx
  106d50:	59                   	pop    %ecx
  106d51:	50                   	push   %eax
  106d52:	8d 83 9e ba ff ff    	lea    -0x4562(%ebx),%eax
  106d58:	50                   	push   %eax
  106d59:	e8 0e c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106d5e:	83 c4 10             	add    $0x10,%esp
  106d61:	e9 1b ff ff ff       	jmp    106c81 <MPTOp_test1+0x121>
  106d66:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d6d:	00 
  106d6e:	66 90                	xchg   %ax,%ax

00106d70 <MPTOp_test_own>:
int MPTOp_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106d70:	31 c0                	xor    %eax,%eax
  106d72:	c3                   	ret
  106d73:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d7a:	00 
  106d7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106d80 <test_MPTOp>:

int test_MPTOp()
{
    return MPTOp_test1() + MPTOp_test_own();
  106d80:	e9 db fd ff ff       	jmp    106b60 <MPTOp_test1>
  106d85:	66 90                	xchg   %ax,%ax
  106d87:	66 90                	xchg   %ax,%ax
  106d89:	66 90                	xchg   %ax,%ax
  106d8b:	66 90                	xchg   %ax,%ax
  106d8d:	66 90                	xchg   %ax,%ax
  106d8f:	90                   	nop

00106d90 <pdir_init>:
#define PTE_W    0x002   // Writeable
#define PTE_U    0x004   // User access
#define PTE_PS   0x080   // Page Size bit (Bit 7) - Crucial for 4MB pages

void pdir_init(unsigned int mbi_adr)
{
  106d90:	57                   	push   %edi
    int i, j;
    idptbl_init(mbi_adr);

    for(i = 0; i < NUM_IDS; i++){
  106d91:	31 ff                	xor    %edi,%edi
{
  106d93:	56                   	push   %esi
  106d94:	53                   	push   %ebx
  106d95:	e8 26 96 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106d9a:	81 c3 5a 62 00 00    	add    $0x625a,%ebx
    idptbl_init(mbi_adr);
  106da0:	83 ec 0c             	sub    $0xc,%esp
  106da3:	ff 74 24 1c          	push   0x1c(%esp)
  106da7:	e8 34 fd ff ff       	call   106ae0 <idptbl_init>
  106dac:	83 c4 10             	add    $0x10,%esp
  106daf:	90                   	nop
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106db0:	31 f6                	xor    %esi,%esi
  106db2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        set_pdir_entry_identity(i, j);
  106db8:	83 ec 08             	sub    $0x8,%esp
  106dbb:	56                   	push   %esi
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106dbc:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  106dbf:	57                   	push   %edi
  106dc0:	e8 2b f7 ff ff       	call   1064f0 <set_pdir_entry_identity>
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106dc5:	83 c4 10             	add    $0x10,%esp
  106dc8:	81 fe 00 01 00 00    	cmp    $0x100,%esi
  106dce:	75 e8                	jne    106db8 <pdir_init+0x28>
      }
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
        rmv_pdir_entry(i, j);
  106dd0:	83 ec 08             	sub    $0x8,%esp
  106dd3:	56                   	push   %esi
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  106dd4:	83 c6 01             	add    $0x1,%esi
        rmv_pdir_entry(i, j);
  106dd7:	57                   	push   %edi
  106dd8:	e8 53 f7 ff ff       	call   106530 <rmv_pdir_entry>
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  106ddd:	83 c4 10             	add    $0x10,%esp
  106de0:	81 fe c0 03 00 00    	cmp    $0x3c0,%esi
  106de6:	75 e8                	jne    106dd0 <pdir_init+0x40>
  106de8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106def:	00 
      }
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
        set_pdir_entry_identity(i, j);
  106df0:	83 ec 08             	sub    $0x8,%esp
  106df3:	56                   	push   %esi
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  106df4:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  106df7:	57                   	push   %edi
  106df8:	e8 f3 f6 ff ff       	call   1064f0 <set_pdir_entry_identity>
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  106dfd:	83 c4 10             	add    $0x10,%esp
  106e00:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  106e06:	75 e8                	jne    106df0 <pdir_init+0x60>
    for(i = 0; i < NUM_IDS; i++){
  106e08:	83 c7 01             	add    $0x1,%edi
  106e0b:	83 ff 40             	cmp    $0x40,%edi
  106e0e:	75 a0                	jne    106db0 <pdir_init+0x20>
      }
    }
}
  106e10:	5b                   	pop    %ebx
  106e11:	5e                   	pop    %esi
  106e12:	5f                   	pop    %edi
  106e13:	c3                   	ret
  106e14:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106e1b:	00 
  106e1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106e20 <alloc_ptbl>:

/**
 * Standard 4KB Page Table Allocation
 */
unsigned int alloc_ptbl(unsigned int proc_index, unsigned int vadr)
{
  106e20:	57                   	push   %edi
  106e21:	56                   	push   %esi
  106e22:	53                   	push   %ebx
  106e23:	8b 7c 24 10          	mov    0x10(%esp),%edi
  106e27:	e8 94 95 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106e2c:	81 c3 c8 61 00 00    	add    $0x61c8,%ebx
  unsigned int addr;
  unsigned int page_index;
  page_index = container_alloc(proc_index);
  106e32:	83 ec 0c             	sub    $0xc,%esp
  106e35:	57                   	push   %edi
  106e36:	e8 d5 f1 ff ff       	call   106010 <container_alloc>
  if(page_index == 0) return 0;
  106e3b:	83 c4 10             	add    $0x10,%esp
  page_index = container_alloc(proc_index);
  106e3e:	89 c6                	mov    %eax,%esi
  if(page_index == 0) return 0;
  106e40:	85 c0                	test   %eax,%eax
  106e42:	75 0c                	jne    106e50 <alloc_ptbl+0x30>
  
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
    *(unsigned int *)addr = 0;
  }
  return page_index;
}
  106e44:	89 f0                	mov    %esi,%eax
  106e46:	5b                   	pop    %ebx
  106e47:	5e                   	pop    %esi
  106e48:	5f                   	pop    %edi
  106e49:	c3                   	ret
  106e4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  set_pdir_entry_by_va(proc_index, vadr, page_index);
  106e50:	83 ec 04             	sub    $0x4,%esp
  106e53:	50                   	push   %eax
  106e54:	ff 74 24 1c          	push   0x1c(%esp)
  106e58:	57                   	push   %edi
  106e59:	e8 52 fc ff ff       	call   106ab0 <set_pdir_entry_by_va>
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106e5e:	89 f0                	mov    %esi,%eax
  106e60:	8d 56 01             	lea    0x1(%esi),%edx
  106e63:	83 c4 10             	add    $0x10,%esp
  106e66:	c1 e0 0c             	shl    $0xc,%eax
  106e69:	c1 e2 0c             	shl    $0xc,%edx
  106e6c:	39 d0                	cmp    %edx,%eax
  106e6e:	73 d4                	jae    106e44 <alloc_ptbl+0x24>
    *(unsigned int *)addr = 0;
  106e70:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106e76:	83 c0 04             	add    $0x4,%eax
  106e79:	39 d0                	cmp    %edx,%eax
  106e7b:	73 c7                	jae    106e44 <alloc_ptbl+0x24>
  106e7d:	b9 01 00 00 00       	mov    $0x1,%ecx
  106e82:	85 c9                	test   %ecx,%ecx
  106e84:	74 12                	je     106e98 <alloc_ptbl+0x78>
    *(unsigned int *)addr = 0;
  106e86:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106e8c:	83 c0 04             	add    $0x4,%eax
  106e8f:	39 d0                	cmp    %edx,%eax
  106e91:	73 b1                	jae    106e44 <alloc_ptbl+0x24>
  106e93:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    *(unsigned int *)addr = 0;
  106e98:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106e9e:	83 c0 08             	add    $0x8,%eax
    *(unsigned int *)addr = 0;
  106ea1:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106ea8:	39 d0                	cmp    %edx,%eax
  106eaa:	72 ec                	jb     106e98 <alloc_ptbl+0x78>
  106eac:	eb 96                	jmp    106e44 <alloc_ptbl+0x24>
  106eae:	66 90                	xchg   %ax,%ax

00106eb0 <alloc_superpage>:
/**
 * NEW: Superpage (4MB) Allocation
 * This is what your MPTComm_test_own is looking for!
 */
unsigned int alloc_superpage(unsigned int proc_index, unsigned int vadr)
{
  106eb0:	55                   	push   %ebp
  106eb1:	57                   	push   %edi
  106eb2:	56                   	push   %esi
  106eb3:	53                   	push   %ebx
  106eb4:	e8 07 95 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106eb9:	81 c3 3b 61 00 00    	add    $0x613b,%ebx
  106ebf:	83 ec 28             	sub    $0x28,%esp
  106ec2:	8b 7c 24 3c          	mov    0x3c(%esp),%edi
    unsigned int pindex = container_alloc_superpage(proc_index);
  106ec6:	57                   	push   %edi
  106ec7:	e8 94 f1 ff ff       	call   106060 <container_alloc_superpage>
    if (pindex == 0) return 0;
  106ecc:	83 c4 10             	add    $0x10,%esp
    unsigned int pindex = container_alloc_superpage(proc_index);
  106ecf:	89 c6                	mov    %eax,%esi
    if (pindex == 0) return 0;
  106ed1:	85 c0                	test   %eax,%eax
  106ed3:	74 34                	je     106f09 <alloc_superpage+0x59>
    unsigned int pde_index = vadr >> 22;

    // Construct the FULL 32-bit entry
    // (pindex << 12) provides the base address
    // 0x87 provides Present (1), Write (2), User (4), and Page Size (128)
    unsigned int pde_entry = (pindex << 12) | 0x87; 
  106ed5:	89 c2                	mov    %eax,%edx
    unsigned int pde_index = vadr >> 22;
  106ed7:	8b 6c 24 34          	mov    0x34(%esp),%ebp

    // Use our new raw setter
    set_pde(proc_index, pde_index, pde_entry);
  106edb:	83 ec 04             	sub    $0x4,%esp
    unsigned int pde_entry = (pindex << 12) | 0x87; 
  106ede:	c1 e2 0c             	shl    $0xc,%edx
  106ee1:	80 ca 87             	or     $0x87,%dl
    unsigned int pde_index = vadr >> 22;
  106ee4:	c1 ed 16             	shr    $0x16,%ebp
    set_pde(proc_index, pde_index, pde_entry);
  106ee7:	52                   	push   %edx
  106ee8:	89 54 24 14          	mov    %edx,0x14(%esp)
  106eec:	55                   	push   %ebp
  106eed:	57                   	push   %edi
  106eee:	e8 ed f9 ff ff       	call   1068e0 <set_pde>

    dprintf("VMM: Superpage allocated for proc %u at PDE %u (Value: 0x%08x)\n", 
  106ef3:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  106ef7:	8d 83 bc c1 ff ff    	lea    -0x3e44(%ebx),%eax
  106efd:	52                   	push   %edx
  106efe:	55                   	push   %ebp
  106eff:	57                   	push   %edi
  106f00:	50                   	push   %eax
  106f01:	e8 66 be ff ff       	call   102d6c <dprintf>
            proc_index, pde_index, pde_entry);

    return pindex;
  106f06:	83 c4 20             	add    $0x20,%esp
}
  106f09:	83 c4 1c             	add    $0x1c,%esp
  106f0c:	89 f0                	mov    %esi,%eax
  106f0e:	5b                   	pop    %ebx
  106f0f:	5e                   	pop    %esi
  106f10:	5f                   	pop    %edi
  106f11:	5d                   	pop    %ebp
  106f12:	c3                   	ret
  106f13:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106f1a:	00 
  106f1b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106f20 <free_ptbl>:

/**
 * Updated free_ptbl: Handles both 4KB Page Tables and 4MB Superpages.
 */
void free_ptbl(unsigned int proc_index, unsigned int vadr)
{
  106f20:	55                   	push   %ebp
  106f21:	57                   	push   %edi
  106f22:	56                   	push   %esi
  106f23:	53                   	push   %ebx
  106f24:	e8 97 94 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106f29:	81 c3 cb 60 00 00    	add    $0x60cb,%ebx
  106f2f:	83 ec 14             	sub    $0x14,%esp
  106f32:	8b 74 24 28          	mov    0x28(%esp),%esi
  106f36:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
  unsigned int pdir_entry = get_pdir_entry_by_va(proc_index, vadr);
  106f3a:	57                   	push   %edi
  106f3b:	56                   	push   %esi
  106f3c:	e8 6f fa ff ff       	call   1069b0 <get_pdir_entry_by_va>
  
  if (!(pdir_entry & PTE_P)) {
  106f41:	83 c4 10             	add    $0x10,%esp
  106f44:	a8 01                	test   $0x1,%al
  106f46:	74 1f                	je     106f67 <free_ptbl+0x47>
      return;
  }

  // Check the PS bit (Bit 7) to see if this is a 4MB superpage
  if (pdir_entry & PTE_PS) {
      unsigned int page_index = pdir_entry >> 12;
  106f48:	89 c5                	mov    %eax,%ebp
  106f4a:	c1 ed 0c             	shr    $0xc,%ebp
  if (pdir_entry & PTE_PS) {
  106f4d:	a8 80                	test   $0x80,%al
  106f4f:	75 1f                	jne    106f70 <free_ptbl+0x50>
      return;
  }

  // Default: Standard Page Table (4KB)
  unsigned int page_index = pdir_entry >> 12;
  rmv_pdir_entry_by_va(proc_index, vadr);
  106f51:	83 ec 08             	sub    $0x8,%esp
  106f54:	57                   	push   %edi
  106f55:	56                   	push   %esi
  106f56:	e8 e5 fa ff ff       	call   106a40 <rmv_pdir_entry_by_va>
  container_free(proc_index, page_index);
  106f5b:	58                   	pop    %eax
  106f5c:	5a                   	pop    %edx
  106f5d:	55                   	push   %ebp
  106f5e:	56                   	push   %esi
  106f5f:	e8 9c f1 ff ff       	call   106100 <container_free>
  106f64:	83 c4 10             	add    $0x10,%esp
  106f67:	83 c4 0c             	add    $0xc,%esp
  106f6a:	5b                   	pop    %ebx
  106f6b:	5e                   	pop    %esi
  106f6c:	5f                   	pop    %edi
  106f6d:	5d                   	pop    %ebp
  106f6e:	c3                   	ret
  106f6f:	90                   	nop
      rmv_pdir_entry_by_va(proc_index, vadr);
  106f70:	83 ec 08             	sub    $0x8,%esp
  106f73:	57                   	push   %edi
  106f74:	56                   	push   %esi
  106f75:	e8 c6 fa ff ff       	call   106a40 <rmv_pdir_entry_by_va>
      container_free(proc_index, page_index);
  106f7a:	59                   	pop    %ecx
  106f7b:	58                   	pop    %eax
  106f7c:	55                   	push   %ebp
  106f7d:	56                   	push   %esi
  106f7e:	e8 7d f1 ff ff       	call   106100 <container_free>
      dprintf("VMM: Superpage at VA 0x%08x (PI %u) freed.\n", vadr, page_index);
  106f83:	83 c4 0c             	add    $0xc,%esp
  106f86:	8d 83 fc c1 ff ff    	lea    -0x3e04(%ebx),%eax
  106f8c:	55                   	push   %ebp
  106f8d:	57                   	push   %edi
  106f8e:	50                   	push   %eax
  106f8f:	e8 d8 bd ff ff       	call   102d6c <dprintf>
      return;
  106f94:	83 c4 10             	add    $0x10,%esp
  106f97:	83 c4 0c             	add    $0xc,%esp
  106f9a:	5b                   	pop    %ebx
  106f9b:	5e                   	pop    %esi
  106f9c:	5f                   	pop    %edi
  106f9d:	5d                   	pop    %ebp
  106f9e:	c3                   	ret
  106f9f:	90                   	nop

00106fa0 <MPTComm_test1>:
#include "export.h"
#include <lib/x86.h>
#include <vmm/MPTNew/export.h> 
#include <pmm/MContainer/export.h>
int MPTComm_test1()
{
  106fa0:	55                   	push   %ebp
  106fa1:	57                   	push   %edi
  106fa2:	bf 03 01 00 00       	mov    $0x103,%edi
  106fa7:	56                   	push   %esi
    unsigned int i;
    for (i = 0; i < 1024; i++) {
  106fa8:	31 f6                	xor    %esi,%esi
{
  106faa:	53                   	push   %ebx
  106fab:	e8 10 94 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106fb0:	81 c3 44 60 00 00    	add    $0x6044,%ebx
  106fb6:	83 ec 0c             	sub    $0xc,%esp
  106fb9:	eb 0e                	jmp    106fc9 <MPTComm_test1+0x29>
  106fbb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    for (i = 0; i < 1024; i++) {
  106fc0:	83 c6 01             	add    $0x1,%esi
  106fc3:	81 c7 00 00 40 00    	add    $0x400000,%edi
        if (i < 256 || i >= 960) {
  106fc9:	8d 86 00 ff ff ff    	lea    -0x100(%esi),%eax
  106fcf:	3d bf 02 00 00       	cmp    $0x2bf,%eax
  106fd4:	76 ea                	jbe    106fc0 <MPTComm_test1+0x20>
            if (get_ptbl_entry_by_va(10, i * 4096 * 1024) !=
  106fd6:	89 f5                	mov    %esi,%ebp
  106fd8:	52                   	push   %edx
  106fd9:	c1 e5 16             	shl    $0x16,%ebp
  106fdc:	52                   	push   %edx
  106fdd:	55                   	push   %ebp
  106fde:	6a 0a                	push   $0xa
  106fe0:	e8 5b f9 ff ff       	call   106940 <get_ptbl_entry_by_va>
  106fe5:	83 c4 10             	add    $0x10,%esp
  106fe8:	39 f8                	cmp    %edi,%eax
  106fea:	75 2d                	jne    107019 <MPTComm_test1+0x79>
    for (i = 0; i < 1024; i++) {
  106fec:	83 c6 01             	add    $0x1,%esi
  106fef:	81 c7 00 00 40 00    	add    $0x400000,%edi
  106ff5:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  106ffb:	75 cc                	jne    106fc9 <MPTComm_test1+0x29>
                        i * 4096 * 1024 + 259);
                return 1;
            }
        }
    }
    dprintf("test 1 passed.\n");
  106ffd:	83 ec 0c             	sub    $0xc,%esp
  107000:	8d 83 7a b8 ff ff    	lea    -0x4786(%ebx),%eax
  107006:	50                   	push   %eax
  107007:	e8 60 bd ff ff       	call   102d6c <dprintf>
    return 0;
  10700c:	83 c4 10             	add    $0x10,%esp
  10700f:	31 c0                	xor    %eax,%eax
}
  107011:	83 c4 0c             	add    $0xc,%esp
  107014:	5b                   	pop    %ebx
  107015:	5e                   	pop    %esi
  107016:	5f                   	pop    %edi
  107017:	5d                   	pop    %ebp
  107018:	c3                   	ret
                dprintf("test 1.1 failed (i = %d): (%d != %d)\n",
  107019:	50                   	push   %eax
  10701a:	50                   	push   %eax
  10701b:	55                   	push   %ebp
  10701c:	6a 0a                	push   $0xa
  10701e:	e8 1d f9 ff ff       	call   106940 <get_ptbl_entry_by_va>
  107023:	57                   	push   %edi
  107024:	50                   	push   %eax
  107025:	8d 83 64 bb ff ff    	lea    -0x449c(%ebx),%eax
  10702b:	56                   	push   %esi
  10702c:	50                   	push   %eax
  10702d:	e8 3a bd ff ff       	call   102d6c <dprintf>
                return 1;
  107032:	83 c4 20             	add    $0x20,%esp
  107035:	b8 01 00 00 00       	mov    $0x1,%eax
  10703a:	eb d5                	jmp    107011 <MPTComm_test1+0x71>
  10703c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00107040 <MPTComm_test2>:

int MPTComm_test2()
{
  107040:	56                   	push   %esi
  107041:	53                   	push   %ebx
  107042:	e8 79 93 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107047:	81 c3 ad 5f 00 00    	add    $0x5fad,%ebx
  10704d:	83 ec 0c             	sub    $0xc,%esp
    unsigned int vaddr = 300 * 4096 * 1024;
    // We split container 0, which creates ID 1 with a small quota
    unsigned int chid = container_split(0, 100); 
  107050:	6a 64                	push   $0x64
  107052:	6a 00                	push   $0x0
  107054:	e8 57 ef ff ff       	call   105fb0 <container_split>
    
    alloc_ptbl(chid, vaddr);
  107059:	5a                   	pop    %edx
  10705a:	59                   	pop    %ecx
  10705b:	68 00 00 00 4b       	push   $0x4b000000
  107060:	50                   	push   %eax
    unsigned int chid = container_split(0, 100); 
  107061:	89 c6                	mov    %eax,%esi
    alloc_ptbl(chid, vaddr);
  107063:	e8 b8 fd ff ff       	call   106e20 <alloc_ptbl>
    if (get_pdir_entry_by_va(chid, vaddr) == 0) {
  107068:	58                   	pop    %eax
  107069:	5a                   	pop    %edx
  10706a:	68 00 00 00 4b       	push   $0x4b000000
  10706f:	56                   	push   %esi
  107070:	e8 3b f9 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  107075:	83 c4 10             	add    $0x10,%esp
  107078:	85 c0                	test   %eax,%eax
  10707a:	0f 84 88 00 00 00    	je     107108 <MPTComm_test2+0xc8>
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(chid, vaddr));
        return 1;
    }
    if (get_ptbl_entry_by_va(chid, vaddr) != 0) {
  107080:	83 ec 08             	sub    $0x8,%esp
  107083:	68 00 00 00 4b       	push   $0x4b000000
  107088:	56                   	push   %esi
  107089:	e8 b2 f8 ff ff       	call   106940 <get_ptbl_entry_by_va>
  10708e:	83 c4 10             	add    $0x10,%esp
  107091:	85 c0                	test   %eax,%eax
  107093:	75 43                	jne    1070d8 <MPTComm_test2+0x98>
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(chid, vaddr));
        return 1;
    }
    free_ptbl(chid, vaddr);
  107095:	83 ec 08             	sub    $0x8,%esp
  107098:	68 00 00 00 4b       	push   $0x4b000000
  10709d:	56                   	push   %esi
  10709e:	e8 7d fe ff ff       	call   106f20 <free_ptbl>
    if (get_pdir_entry_by_va(chid, vaddr) != 0) {
  1070a3:	58                   	pop    %eax
  1070a4:	5a                   	pop    %edx
  1070a5:	68 00 00 00 4b       	push   $0x4b000000
  1070aa:	56                   	push   %esi
  1070ab:	e8 00 f9 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  1070b0:	83 c4 10             	add    $0x10,%esp
  1070b3:	85 c0                	test   %eax,%eax
  1070b5:	75 79                	jne    107130 <MPTComm_test2+0xf0>
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(chid, vaddr));
        return 1;
    }
    dprintf("test 2 passed.\n");
  1070b7:	83 ec 0c             	sub    $0xc,%esp
  1070ba:	8d 83 8a b8 ff ff    	lea    -0x4776(%ebx),%eax
  1070c0:	50                   	push   %eax
  1070c1:	e8 a6 bc ff ff       	call   102d6c <dprintf>
    return 0;
  1070c6:	83 c4 10             	add    $0x10,%esp
  1070c9:	31 c0                	xor    %eax,%eax
}
  1070cb:	83 c4 04             	add    $0x4,%esp
  1070ce:	5b                   	pop    %ebx
  1070cf:	5e                   	pop    %esi
  1070d0:	c3                   	ret
  1070d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(chid, vaddr));
  1070d8:	83 ec 08             	sub    $0x8,%esp
  1070db:	68 00 00 00 4b       	push   $0x4b000000
  1070e0:	56                   	push   %esi
  1070e1:	e8 5a f8 ff ff       	call   106940 <get_ptbl_entry_by_va>
  1070e6:	59                   	pop    %ecx
  1070e7:	5e                   	pop    %esi
  1070e8:	50                   	push   %eax
  1070e9:	8d 83 f6 b9 ff ff    	lea    -0x460a(%ebx),%eax
  1070ef:	50                   	push   %eax
  1070f0:	e8 77 bc ff ff       	call   102d6c <dprintf>
        return 1;
  1070f5:	83 c4 10             	add    $0x10,%esp
}
  1070f8:	83 c4 04             	add    $0x4,%esp
        return 1;
  1070fb:	b8 01 00 00 00       	mov    $0x1,%eax
}
  107100:	5b                   	pop    %ebx
  107101:	5e                   	pop    %esi
  107102:	c3                   	ret
  107103:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(chid, vaddr));
  107108:	83 ec 08             	sub    $0x8,%esp
  10710b:	68 00 00 00 4b       	push   $0x4b000000
  107110:	56                   	push   %esi
  107111:	e8 9a f8 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  107116:	5a                   	pop    %edx
  107117:	59                   	pop    %ecx
  107118:	50                   	push   %eax
  107119:	8d 83 ba ba ff ff    	lea    -0x4546(%ebx),%eax
  10711f:	50                   	push   %eax
  107120:	e8 47 bc ff ff       	call   102d6c <dprintf>
        return 1;
  107125:	83 c4 10             	add    $0x10,%esp
  107128:	eb ce                	jmp    1070f8 <MPTComm_test2+0xb8>
  10712a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(chid, vaddr));
  107130:	83 ec 08             	sub    $0x8,%esp
  107133:	68 00 00 00 4b       	push   $0x4b000000
  107138:	56                   	push   %esi
  107139:	e8 72 f8 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  10713e:	5a                   	pop    %edx
  10713f:	59                   	pop    %ecx
  107140:	50                   	push   %eax
  107141:	8d 83 d6 ba ff ff    	lea    -0x452a(%ebx),%eax
  107147:	50                   	push   %eax
  107148:	e8 1f bc ff ff       	call   102d6c <dprintf>
        return 1;
  10714d:	83 c4 10             	add    $0x10,%esp
  107150:	eb a6                	jmp    1070f8 <MPTComm_test2+0xb8>
  107152:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107159:	00 
  10715a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00107160 <MPTComm_test_own>:
/**
 * Superpage & Quota Integration Test
 * Corrected to use the dynamic ID from container_split.
 */
int MPTComm_test_own()
{
  107160:	56                   	push   %esi
  107161:	53                   	push   %ebx
  107162:	e8 59 92 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107167:	81 c3 8d 5e 00 00    	add    $0x5e8d,%ebx
  10716d:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 0x40000000; 
    unsigned int quota = 2048;       // Enough for superpages
    
    dprintf("Starting Superpage & Quota Integration Test...\n");
  107170:	8d 83 28 c2 ff ff    	lea    -0x3dd8(%ebx),%eax
  107176:	50                   	push   %eax
  107177:	e8 f0 bb ff ff       	call   102d6c <dprintf>

    // FIX: Instead of hardcoding proc_id = 1, we use the ID returned here.
    // If test2 already ran, this will likely be ID 2.
    unsigned int proc_id = container_split(0, quota);
  10717c:	59                   	pop    %ecx
  10717d:	5e                   	pop    %esi
  10717e:	68 00 08 00 00       	push   $0x800
  107183:	6a 00                	push   $0x0
  107185:	e8 26 ee ff ff       	call   105fb0 <container_split>
    
    if (proc_id == 0 || proc_id >= NUM_IDS) {
  10718a:	83 c4 10             	add    $0x10,%esp
    unsigned int proc_id = container_split(0, quota);
  10718d:	89 c6                	mov    %eax,%esi
    if (proc_id == 0 || proc_id >= NUM_IDS) {
  10718f:	83 e8 01             	sub    $0x1,%eax
  107192:	83 f8 3e             	cmp    $0x3e,%eax
  107195:	0f 87 b5 00 00 00    	ja     107250 <MPTComm_test_own+0xf0>
        dprintf("Superpage Test Failed: Invalid proc_id returned from split.\n");
        return 1;
    }

    // 2. Test Superpage Allocation
    unsigned int pindex = alloc_superpage(proc_id, vaddr);
  10719b:	83 ec 08             	sub    $0x8,%esp
  10719e:	68 00 00 00 40       	push   $0x40000000
  1071a3:	56                   	push   %esi
  1071a4:	e8 07 fd ff ff       	call   106eb0 <alloc_superpage>
    if (pindex == 0) {
  1071a9:	83 c4 10             	add    $0x10,%esp
  1071ac:	85 c0                	test   %eax,%eax
  1071ae:	0f 84 7c 00 00 00    	je     107230 <MPTComm_test_own+0xd0>
        dprintf("Superpage Test Failed: Could not allocate 4MB block for ID %u.\n", proc_id);
        return 1;
    }

    // 3. Verify Hardware Bit (PS) in the Page Directory
    unsigned int pde = get_pdir_entry_by_va(proc_id, vaddr);
  1071b4:	83 ec 08             	sub    $0x8,%esp
  1071b7:	68 00 00 00 40       	push   $0x40000000
  1071bc:	56                   	push   %esi
  1071bd:	e8 ee f7 ff ff       	call   1069b0 <get_pdir_entry_by_va>
    if (!(pde & 0x80)) { 
  1071c2:	83 c4 10             	add    $0x10,%esp
  1071c5:	a8 80                	test   $0x80,%al
  1071c7:	0f 84 bb 00 00 00    	je     107288 <MPTComm_test_own+0x128>
        dprintf("Superpage Test Failed: PS bit not set in PDE (0x%x).\n", pde);
        return 1;
    }
    dprintf("Verified: PDE for ID %u at 0x%08x has PS bit set.\n", proc_id, vaddr);
  1071cd:	83 ec 04             	sub    $0x4,%esp
  1071d0:	8d 83 10 c3 ff ff    	lea    -0x3cf0(%ebx),%eax
  1071d6:	68 00 00 00 40       	push   $0x40000000
  1071db:	56                   	push   %esi
  1071dc:	50                   	push   %eax
  1071dd:	e8 8a bb ff ff       	call   102d6c <dprintf>

    // 4. Verify Quota Usage (1 Superpage = 1024 pages)
    if (container_get_usage(proc_id) != 1024) {
  1071e2:	89 34 24             	mov    %esi,(%esp)
  1071e5:	e8 76 ed ff ff       	call   105f60 <container_get_usage>
  1071ea:	83 c4 10             	add    $0x10,%esp
  1071ed:	3d 00 04 00 00       	cmp    $0x400,%eax
  1071f2:	75 74                	jne    107268 <MPTComm_test_own+0x108>
        dprintf("Superpage Test Failed: Usage (%d) != 1024.\n", container_get_usage(proc_id));
        return 1;
    }

    // 5. Test Superpage Freeing
    free_ptbl(proc_id, vaddr);
  1071f4:	83 ec 08             	sub    $0x8,%esp
  1071f7:	68 00 00 00 40       	push   $0x40000000
  1071fc:	56                   	push   %esi
  1071fd:	e8 1e fd ff ff       	call   106f20 <free_ptbl>
    
    // 6. Verify Quota Recovery
    if (container_get_usage(proc_id) != 0) {
  107202:	89 34 24             	mov    %esi,(%esp)
  107205:	e8 56 ed ff ff       	call   105f60 <container_get_usage>
  10720a:	83 c4 10             	add    $0x10,%esp
  10720d:	85 c0                	test   %eax,%eax
  10720f:	0f 85 8b 00 00 00    	jne    1072a0 <MPTComm_test_own+0x140>
        dprintf("Superpage Test Failed: Usage after free (%d) != 0.\n", container_get_usage(proc_id));
        return 1;
    }

    dprintf("Superpage & Quota Integration Test passed!\n");
  107215:	83 ec 0c             	sub    $0xc,%esp
  107218:	8d 83 a4 c3 ff ff    	lea    -0x3c5c(%ebx),%eax
  10721e:	50                   	push   %eax
  10721f:	e8 48 bb ff ff       	call   102d6c <dprintf>
    return 0;
  107224:	83 c4 10             	add    $0x10,%esp
  107227:	31 c0                	xor    %eax,%eax
  107229:	eb 1d                	jmp    107248 <MPTComm_test_own+0xe8>
  10722b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("Superpage Test Failed: Could not allocate 4MB block for ID %u.\n", proc_id);
  107230:	83 ec 08             	sub    $0x8,%esp
  107233:	8d 83 98 c2 ff ff    	lea    -0x3d68(%ebx),%eax
  107239:	56                   	push   %esi
  10723a:	50                   	push   %eax
  10723b:	e8 2c bb ff ff       	call   102d6c <dprintf>
        return 1;
  107240:	83 c4 10             	add    $0x10,%esp
        return 1;
  107243:	b8 01 00 00 00       	mov    $0x1,%eax
}
  107248:	83 c4 04             	add    $0x4,%esp
  10724b:	5b                   	pop    %ebx
  10724c:	5e                   	pop    %esi
  10724d:	c3                   	ret
  10724e:	66 90                	xchg   %ax,%ax
        dprintf("Superpage Test Failed: Invalid proc_id returned from split.\n");
  107250:	83 ec 0c             	sub    $0xc,%esp
  107253:	8d 83 58 c2 ff ff    	lea    -0x3da8(%ebx),%eax
  107259:	50                   	push   %eax
  10725a:	e8 0d bb ff ff       	call   102d6c <dprintf>
        return 1;
  10725f:	83 c4 10             	add    $0x10,%esp
  107262:	eb df                	jmp    107243 <MPTComm_test_own+0xe3>
  107264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Superpage Test Failed: Usage (%d) != 1024.\n", container_get_usage(proc_id));
  107268:	83 ec 0c             	sub    $0xc,%esp
  10726b:	56                   	push   %esi
  10726c:	e8 ef ec ff ff       	call   105f60 <container_get_usage>
  107271:	5e                   	pop    %esi
  107272:	5a                   	pop    %edx
  107273:	50                   	push   %eax
  107274:	8d 83 44 c3 ff ff    	lea    -0x3cbc(%ebx),%eax
  10727a:	50                   	push   %eax
  10727b:	e8 ec ba ff ff       	call   102d6c <dprintf>
        return 1;
  107280:	83 c4 10             	add    $0x10,%esp
  107283:	eb be                	jmp    107243 <MPTComm_test_own+0xe3>
  107285:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("Superpage Test Failed: PS bit not set in PDE (0x%x).\n", pde);
  107288:	83 ec 08             	sub    $0x8,%esp
  10728b:	50                   	push   %eax
  10728c:	8d 83 d8 c2 ff ff    	lea    -0x3d28(%ebx),%eax
  107292:	50                   	push   %eax
  107293:	e8 d4 ba ff ff       	call   102d6c <dprintf>
        return 1;
  107298:	83 c4 10             	add    $0x10,%esp
  10729b:	eb a6                	jmp    107243 <MPTComm_test_own+0xe3>
  10729d:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("Superpage Test Failed: Usage after free (%d) != 0.\n", container_get_usage(proc_id));
  1072a0:	83 ec 0c             	sub    $0xc,%esp
  1072a3:	56                   	push   %esi
  1072a4:	e8 b7 ec ff ff       	call   105f60 <container_get_usage>
  1072a9:	5a                   	pop    %edx
  1072aa:	59                   	pop    %ecx
  1072ab:	50                   	push   %eax
  1072ac:	8d 83 70 c3 ff ff    	lea    -0x3c90(%ebx),%eax
  1072b2:	50                   	push   %eax
  1072b3:	e8 b4 ba ff ff       	call   102d6c <dprintf>
        return 1;
  1072b8:	83 c4 10             	add    $0x10,%esp
  1072bb:	e9 83 ff ff ff       	jmp    107243 <MPTComm_test_own+0xe3>

001072c0 <test_MPTComm>:

int test_MPTComm()
{
  1072c0:	53                   	push   %ebx
  1072c1:	83 ec 08             	sub    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  1072c4:	e8 d7 fc ff ff       	call   106fa0 <MPTComm_test1>
  1072c9:	89 c3                	mov    %eax,%ebx
  1072cb:	e8 70 fd ff ff       	call   107040 <MPTComm_test2>
  1072d0:	01 c3                	add    %eax,%ebx
  1072d2:	e8 89 fe ff ff       	call   107160 <MPTComm_test_own>
  1072d7:	83 c4 08             	add    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  1072da:	01 d8                	add    %ebx,%eax
  1072dc:	5b                   	pop    %ebx
  1072dd:	c3                   	ret
  1072de:	66 90                	xchg   %ax,%ax

001072e0 <pdir_init_kern>:
/**
 * Sets the entire page map for process 0 as identity map.
 * Note that part of the task is already completed by pdir_init.
 */
void pdir_init_kern(unsigned int mbi_adr)
{
  1072e0:	56                   	push   %esi
    // TODO: define your local variables here.

    pdir_init(mbi_adr);
    
    //TODO
    unsigned int pde_index = 0;
  1072e1:	31 f6                	xor    %esi,%esi
{
  1072e3:	53                   	push   %ebx
  1072e4:	e8 d7 90 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1072e9:	81 c3 0b 5d 00 00    	add    $0x5d0b,%ebx
  1072ef:	83 ec 10             	sub    $0x10,%esp
    pdir_init(mbi_adr);
  1072f2:	ff 74 24 1c          	push   0x1c(%esp)
  1072f6:	e8 95 fa ff ff       	call   106d90 <pdir_init>
  1072fb:	83 c4 10             	add    $0x10,%esp
  1072fe:	66 90                	xchg   %ax,%ax
    for (; pde_index < 1024; pde_index++) {
        set_pdir_entry_identity(0, pde_index);
  107300:	83 ec 08             	sub    $0x8,%esp
  107303:	56                   	push   %esi
    for (; pde_index < 1024; pde_index++) {
  107304:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(0, pde_index);
  107307:	6a 00                	push   $0x0
  107309:	e8 e2 f1 ff ff       	call   1064f0 <set_pdir_entry_identity>
    for (; pde_index < 1024; pde_index++) {
  10730e:	83 c4 10             	add    $0x10,%esp
  107311:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  107317:	75 e7                	jne    107300 <pdir_init_kern+0x20>
    }
}
  107319:	83 c4 04             	add    $0x4,%esp
  10731c:	5b                   	pop    %ebx
  10731d:	5e                   	pop    %esi
  10731e:	c3                   	ret
  10731f:	90                   	nop

00107320 <map_page>:
 * In the case of error, it returns the constant MagicNumber defined in lib/x86.h,
 * otherwise, it returns the physical page index registered in the page directory,
 * e.g., the return value of get_pdir_entry_by_va or alloc_ptbl.
 */
unsigned int map_page(unsigned int proc_index, unsigned int vadr, unsigned int page_index, unsigned int perm)
{   
  107320:	57                   	push   %edi
  107321:	56                   	push   %esi
  107322:	53                   	push   %ebx
  107323:	8b 74 24 10          	mov    0x10(%esp),%esi
  107327:	e8 94 90 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10732c:	81 c3 c8 5c 00 00    	add    $0x5cc8,%ebx
  107332:	8b 7c 24 14          	mov    0x14(%esp),%edi
  // TODO
  unsigned int pde = get_pdir_entry_by_va(proc_index, vadr);
  107336:	83 ec 08             	sub    $0x8,%esp
  107339:	57                   	push   %edi
  10733a:	56                   	push   %esi
  10733b:	e8 70 f6 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  unsigned int ptbl;
  if ((pde & PTE_P) == 0) {
  107340:	83 c4 10             	add    $0x10,%esp
  107343:	a8 01                	test   $0x1,%al
  107345:	75 11                	jne    107358 <map_page+0x38>
    ptbl = alloc_ptbl(proc_index, vadr);
  107347:	83 ec 08             	sub    $0x8,%esp
  10734a:	57                   	push   %edi
  10734b:	56                   	push   %esi
  10734c:	e8 cf fa ff ff       	call   106e20 <alloc_ptbl>
    if (ptbl == 0) {
  107351:	83 c4 10             	add    $0x10,%esp
  107354:	85 c0                	test   %eax,%eax
  107356:	74 28                	je     107380 <map_page+0x60>
      //no physical page available
      return MagicNumber;
    }
  }
  set_ptbl_entry_by_va(proc_index, vadr, page_index, perm);
  107358:	ff 74 24 1c          	push   0x1c(%esp)
  10735c:	ff 74 24 1c          	push   0x1c(%esp)
  107360:	57                   	push   %edi
  107361:	56                   	push   %esi
  107362:	e8 09 f7 ff ff       	call   106a70 <set_ptbl_entry_by_va>
  pde = get_pdir_entry_by_va(proc_index, vadr);
  107367:	58                   	pop    %eax
  107368:	5a                   	pop    %edx
  107369:	57                   	push   %edi
  10736a:	56                   	push   %esi
  10736b:	e8 40 f6 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  return pde >> 12;
  107370:	83 c4 10             	add    $0x10,%esp
}
  107373:	5b                   	pop    %ebx
  return pde >> 12;
  107374:	c1 e8 0c             	shr    $0xc,%eax
}
  107377:	5e                   	pop    %esi
  107378:	5f                   	pop    %edi
  107379:	c3                   	ret
  10737a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107380:	5b                   	pop    %ebx
      return MagicNumber;
  107381:	b8 01 00 10 00       	mov    $0x100001,%eax
}
  107386:	5e                   	pop    %esi
  107387:	5f                   	pop    %edi
  107388:	c3                   	ret
  107389:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00107390 <unmap_page>:
 * Nothing should be done if the mapping no longer exists.
 * You do not need to unmap the page table from the page directory.
 * It should return the corresponding page table entry.
 */
unsigned int unmap_page(unsigned int proc_index, unsigned int vadr)
{
  107390:	57                   	push   %edi
  107391:	56                   	push   %esi
  107392:	53                   	push   %ebx
  107393:	8b 74 24 10          	mov    0x10(%esp),%esi
  107397:	e8 24 90 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10739c:	81 c3 58 5c 00 00    	add    $0x5c58,%ebx
  1073a2:	8b 7c 24 14          	mov    0x14(%esp),%edi
  // TODO
  unsigned int pte = get_ptbl_entry_by_va(proc_index, vadr);
  1073a6:	83 ec 08             	sub    $0x8,%esp
  1073a9:	57                   	push   %edi
  1073aa:	56                   	push   %esi
  1073ab:	e8 90 f5 ff ff       	call   106940 <get_ptbl_entry_by_va>
  if ((pte & PTE_P) == 0) {
  1073b0:	83 c4 10             	add    $0x10,%esp
  1073b3:	a8 01                	test   $0x1,%al
  1073b5:	74 16                	je     1073cd <unmap_page+0x3d>
    return pte;
  }
  rmv_ptbl_entry_by_va(proc_index, vadr);
  1073b7:	83 ec 08             	sub    $0x8,%esp
  1073ba:	57                   	push   %edi
  1073bb:	56                   	push   %esi
  1073bc:	e8 1f f6 ff ff       	call   1069e0 <rmv_ptbl_entry_by_va>
  pte = get_ptbl_entry_by_va(proc_index, vadr);
  1073c1:	58                   	pop    %eax
  1073c2:	5a                   	pop    %edx
  1073c3:	57                   	push   %edi
  1073c4:	56                   	push   %esi
  1073c5:	e8 76 f5 ff ff       	call   106940 <get_ptbl_entry_by_va>
  return pte;
  1073ca:	83 c4 10             	add    $0x10,%esp
  1073cd:	5b                   	pop    %ebx
  1073ce:	5e                   	pop    %esi
  1073cf:	5f                   	pop    %edi
  1073d0:	c3                   	ret
  1073d1:	66 90                	xchg   %ax,%ax
  1073d3:	66 90                	xchg   %ax,%ax
  1073d5:	66 90                	xchg   %ax,%ax
  1073d7:	66 90                	xchg   %ax,%ax
  1073d9:	66 90                	xchg   %ax,%ax
  1073db:	66 90                	xchg   %ax,%ax
  1073dd:	66 90                	xchg   %ax,%ax
  1073df:	90                   	nop

001073e0 <MPTKern_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTKern_test1()
{
  1073e0:	53                   	push   %ebx
  1073e1:	e8 da 8f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1073e6:	81 c3 0e 5c 00 00    	add    $0x5c0e,%ebx
  1073ec:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    container_split(0, 100);
  1073ef:	6a 64                	push   $0x64
  1073f1:	6a 00                	push   $0x0
  1073f3:	e8 b8 eb ff ff       	call   105fb0 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  1073f8:	58                   	pop    %eax
  1073f9:	5a                   	pop    %edx
  1073fa:	68 00 00 00 4b       	push   $0x4b000000
  1073ff:	6a 01                	push   $0x1
  107401:	e8 3a f5 ff ff       	call   106940 <get_ptbl_entry_by_va>
  107406:	83 c4 10             	add    $0x10,%esp
  107409:	85 c0                	test   %eax,%eax
  10740b:	0f 85 cf 00 00 00    	jne    1074e0 <MPTKern_test1+0x100>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  107411:	83 ec 08             	sub    $0x8,%esp
  107414:	68 00 00 00 4b       	push   $0x4b000000
  107419:	6a 01                	push   $0x1
  10741b:	e8 90 f5 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  107420:	83 c4 10             	add    $0x10,%esp
  107423:	85 c0                	test   %eax,%eax
  107425:	0f 85 85 00 00 00    	jne    1074b0 <MPTKern_test1+0xd0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    map_page(1, vaddr, 100, 7);
  10742b:	6a 07                	push   $0x7
  10742d:	6a 64                	push   $0x64
  10742f:	68 00 00 00 4b       	push   $0x4b000000
  107434:	6a 01                	push   $0x1
  107436:	e8 e5 fe ff ff       	call   107320 <map_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  10743b:	59                   	pop    %ecx
  10743c:	58                   	pop    %eax
  10743d:	68 00 00 00 4b       	push   $0x4b000000
  107442:	6a 01                	push   $0x1
  107444:	e8 f7 f4 ff ff       	call   106940 <get_ptbl_entry_by_va>
  107449:	83 c4 10             	add    $0x10,%esp
  10744c:	85 c0                	test   %eax,%eax
  10744e:	0f 84 dc 00 00 00    	je     107530 <MPTKern_test1+0x150>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  107454:	83 ec 08             	sub    $0x8,%esp
  107457:	68 00 00 00 4b       	push   $0x4b000000
  10745c:	6a 01                	push   $0x1
  10745e:	e8 4d f5 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  107463:	83 c4 10             	add    $0x10,%esp
  107466:	85 c0                	test   %eax,%eax
  107468:	0f 84 9a 00 00 00    	je     107508 <MPTKern_test1+0x128>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    unmap_page(1, vaddr);
  10746e:	83 ec 08             	sub    $0x8,%esp
  107471:	68 00 00 00 4b       	push   $0x4b000000
  107476:	6a 01                	push   $0x1
  107478:	e8 13 ff ff ff       	call   107390 <unmap_page>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  10747d:	58                   	pop    %eax
  10747e:	5a                   	pop    %edx
  10747f:	68 00 00 00 4b       	push   $0x4b000000
  107484:	6a 01                	push   $0x1
  107486:	e8 b5 f4 ff ff       	call   106940 <get_ptbl_entry_by_va>
  10748b:	83 c4 10             	add    $0x10,%esp
  10748e:	85 c0                	test   %eax,%eax
  107490:	0f 85 ca 00 00 00    	jne    107560 <MPTKern_test1+0x180>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  107496:	83 ec 0c             	sub    $0xc,%esp
  107499:	8d 83 7a b8 ff ff    	lea    -0x4786(%ebx),%eax
  10749f:	50                   	push   %eax
  1074a0:	e8 c7 b8 ff ff       	call   102d6c <dprintf>
    return 0;
  1074a5:	83 c4 10             	add    $0x10,%esp
  1074a8:	31 c0                	xor    %eax,%eax
}
  1074aa:	83 c4 08             	add    $0x8,%esp
  1074ad:	5b                   	pop    %ebx
  1074ae:	c3                   	ret
  1074af:	90                   	nop
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  1074b0:	83 ec 08             	sub    $0x8,%esp
  1074b3:	68 00 00 00 4b       	push   $0x4b000000
  1074b8:	6a 01                	push   $0x1
  1074ba:	e8 f1 f4 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  1074bf:	5a                   	pop    %edx
  1074c0:	59                   	pop    %ecx
  1074c1:	50                   	push   %eax
  1074c2:	8d 83 2e ba ff ff    	lea    -0x45d2(%ebx),%eax
  1074c8:	50                   	push   %eax
  1074c9:	e8 9e b8 ff ff       	call   102d6c <dprintf>
        return 1;
  1074ce:	83 c4 10             	add    $0x10,%esp
}
  1074d1:	83 c4 08             	add    $0x8,%esp
        return 1;
  1074d4:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1074d9:	5b                   	pop    %ebx
  1074da:	c3                   	ret
  1074db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  1074e0:	83 ec 08             	sub    $0x8,%esp
  1074e3:	68 00 00 00 4b       	push   $0x4b000000
  1074e8:	6a 01                	push   $0x1
  1074ea:	e8 51 f4 ff ff       	call   106940 <get_ptbl_entry_by_va>
  1074ef:	5a                   	pop    %edx
  1074f0:	59                   	pop    %ecx
  1074f1:	50                   	push   %eax
  1074f2:	8d 83 12 ba ff ff    	lea    -0x45ee(%ebx),%eax
  1074f8:	50                   	push   %eax
  1074f9:	e8 6e b8 ff ff       	call   102d6c <dprintf>
        return 1;
  1074fe:	83 c4 10             	add    $0x10,%esp
  107501:	eb ce                	jmp    1074d1 <MPTKern_test1+0xf1>
  107503:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  107508:	83 ec 08             	sub    $0x8,%esp
  10750b:	68 00 00 00 4b       	push   $0x4b000000
  107510:	6a 01                	push   $0x1
  107512:	e8 99 f4 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  107517:	59                   	pop    %ecx
  107518:	5a                   	pop    %edx
  107519:	50                   	push   %eax
  10751a:	8d 83 66 ba ff ff    	lea    -0x459a(%ebx),%eax
  107520:	50                   	push   %eax
  107521:	e8 46 b8 ff ff       	call   102d6c <dprintf>
        return 1;
  107526:	83 c4 10             	add    $0x10,%esp
  107529:	eb a6                	jmp    1074d1 <MPTKern_test1+0xf1>
  10752b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  107530:	83 ec 08             	sub    $0x8,%esp
  107533:	68 00 00 00 4b       	push   $0x4b000000
  107538:	6a 01                	push   $0x1
  10753a:	e8 01 f4 ff ff       	call   106940 <get_ptbl_entry_by_va>
  10753f:	59                   	pop    %ecx
  107540:	5a                   	pop    %edx
  107541:	50                   	push   %eax
  107542:	8d 83 4a ba ff ff    	lea    -0x45b6(%ebx),%eax
  107548:	50                   	push   %eax
  107549:	e8 1e b8 ff ff       	call   102d6c <dprintf>
        return 1;
  10754e:	83 c4 10             	add    $0x10,%esp
  107551:	e9 7b ff ff ff       	jmp    1074d1 <MPTKern_test1+0xf1>
  107556:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10755d:	00 
  10755e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  107560:	83 ec 08             	sub    $0x8,%esp
  107563:	68 00 00 00 4b       	push   $0x4b000000
  107568:	6a 01                	push   $0x1
  10756a:	e8 d1 f3 ff ff       	call   106940 <get_ptbl_entry_by_va>
  10756f:	5a                   	pop    %edx
  107570:	59                   	pop    %ecx
  107571:	50                   	push   %eax
  107572:	8d 83 82 ba ff ff    	lea    -0x457e(%ebx),%eax
  107578:	50                   	push   %eax
  107579:	e8 ee b7 ff ff       	call   102d6c <dprintf>
        return 1;
  10757e:	83 c4 10             	add    $0x10,%esp
  107581:	e9 4b ff ff ff       	jmp    1074d1 <MPTKern_test1+0xf1>
  107586:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10758d:	00 
  10758e:	66 90                	xchg   %ax,%ax

00107590 <MPTKern_test2>:

int MPTKern_test2()
{
  107590:	57                   	push   %edi
  107591:	56                   	push   %esi
  107592:	be 03 00 00 40       	mov    $0x40000003,%esi
  107597:	53                   	push   %ebx
  107598:	e8 23 8e ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10759d:	81 c3 57 5a 00 00    	add    $0x5a57,%ebx
  1075a3:	eb 11                	jmp    1075b6 <MPTKern_test2+0x26>
  1075a5:	8d 76 00             	lea    0x0(%esi),%esi
    unsigned int i;
    for (i = 256; i < 960; i++) {
  1075a8:	81 c6 00 00 40 00    	add    $0x400000,%esi
  1075ae:	81 fe 03 00 00 f0    	cmp    $0xf0000003,%esi
  1075b4:	74 3d                	je     1075f3 <MPTKern_test2+0x63>
        if (get_ptbl_entry_by_va(0, i * 4096 * 1024L) !=
  1075b6:	83 ec 08             	sub    $0x8,%esp
  1075b9:	8d 7e fd             	lea    -0x3(%esi),%edi
  1075bc:	57                   	push   %edi
  1075bd:	6a 00                	push   $0x0
  1075bf:	e8 7c f3 ff ff       	call   106940 <get_ptbl_entry_by_va>
  1075c4:	83 c4 10             	add    $0x10,%esp
  1075c7:	39 f0                	cmp    %esi,%eax
  1075c9:	74 dd                	je     1075a8 <MPTKern_test2+0x18>
            i * 4096 * 1024L + 3) {
            dprintf("test 2.1 failed (i = %d): (%d != %d)\n",
  1075cb:	83 ec 08             	sub    $0x8,%esp
  1075ce:	57                   	push   %edi
  1075cf:	6a 00                	push   $0x0
  1075d1:	e8 6a f3 ff ff       	call   106940 <get_ptbl_entry_by_va>
  1075d6:	83 c4 0c             	add    $0xc,%esp
  1075d9:	56                   	push   %esi
  1075da:	50                   	push   %eax
  1075db:	8d 83 d0 c3 ff ff    	lea    -0x3c30(%ebx),%eax
  1075e1:	50                   	push   %eax
  1075e2:	e8 85 b7 ff ff       	call   102d6c <dprintf>
                    get_ptbl_entry_by_va(0, i * 4096 * 1024L),
                    i * 4096 * 1024L + 3);
            return 1;
  1075e7:	83 c4 10             	add    $0x10,%esp
  1075ea:	b8 01 00 00 00       	mov    $0x1,%eax
        }
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  1075ef:	5b                   	pop    %ebx
  1075f0:	5e                   	pop    %esi
  1075f1:	5f                   	pop    %edi
  1075f2:	c3                   	ret
    dprintf("test 2 passed.\n");
  1075f3:	83 ec 0c             	sub    $0xc,%esp
  1075f6:	8d 83 8a b8 ff ff    	lea    -0x4776(%ebx),%eax
  1075fc:	50                   	push   %eax
  1075fd:	e8 6a b7 ff ff       	call   102d6c <dprintf>
    return 0;
  107602:	83 c4 10             	add    $0x10,%esp
  107605:	31 c0                	xor    %eax,%eax
}
  107607:	5b                   	pop    %ebx
  107608:	5e                   	pop    %esi
  107609:	5f                   	pop    %edi
  10760a:	c3                   	ret
  10760b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107610 <MPTKern_test_own>:
int MPTKern_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  107610:	31 c0                	xor    %eax,%eax
  107612:	c3                   	ret
  107613:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10761a:	00 
  10761b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107620 <test_MPTKern>:

int test_MPTKern()
{
  107620:	53                   	push   %ebx
  107621:	83 ec 08             	sub    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  107624:	e8 b7 fd ff ff       	call   1073e0 <MPTKern_test1>
  107629:	89 c3                	mov    %eax,%ebx
  10762b:	e8 60 ff ff ff       	call   107590 <MPTKern_test2>
}
  107630:	83 c4 08             	add    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  107633:	01 d8                	add    %ebx,%eax
}
  107635:	5b                   	pop    %ebx
  107636:	c3                   	ret
  107637:	66 90                	xchg   %ax,%ax
  107639:	66 90                	xchg   %ax,%ax
  10763b:	66 90                	xchg   %ax,%ax
  10763d:	66 90                	xchg   %ax,%ax
  10763f:	90                   	nop

00107640 <paging_init>:
/**
 * Initializes the page structures, moves to the kernel page structure (0),
 * and turns on the paging.
 */
void paging_init(unsigned int mbi_addr)
{
  107640:	53                   	push   %ebx
  107641:	e8 7a 8d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107646:	81 c3 ae 59 00 00    	add    $0x59ae,%ebx
  10764c:	83 ec 14             	sub    $0x14,%esp
    pdir_init_kern(mbi_addr);
  10764f:	ff 74 24 1c          	push   0x1c(%esp)
  107653:	e8 88 fc ff ff       	call   1072e0 <pdir_init_kern>
    set_pdir_base(0);
  107658:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10765f:	e8 dc ed ff ff       	call   106440 <set_pdir_base>
    enable_paging();
  107664:	e8 69 9b ff ff       	call   1011d2 <enable_paging>
}
  107669:	83 c4 18             	add    $0x18,%esp
  10766c:	5b                   	pop    %ebx
  10766d:	c3                   	ret
  10766e:	66 90                	xchg   %ax,%ax

00107670 <alloc_page>:
#include <lib/x86.h>
#include "import.h"

unsigned int alloc_page (unsigned int proc_index, unsigned int vaddr, unsigned int perm)
{
  107670:	56                   	push   %esi
  107671:	53                   	push   %ebx
  107672:	e8 49 8d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107677:	81 c3 7d 59 00 00    	add    $0x597d,%ebx
  10767d:	83 ec 10             	sub    $0x10,%esp
  107680:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    unsigned int page_index;
    unsigned int ptbl;
    page_index = container_alloc(proc_index);
  107684:	56                   	push   %esi
  107685:	e8 86 e9 ff ff       	call   106010 <container_alloc>
    if(page_index == 0) return MagicNumber;
  10768a:	83 c4 10             	add    $0x10,%esp
  10768d:	ba 01 00 10 00       	mov    $0x100001,%edx
  107692:	85 c0                	test   %eax,%eax
  107694:	74 14                	je     1076aa <alloc_page+0x3a>
    ptbl = map_page(proc_index, vaddr, page_index, perm);
  107696:	ff 74 24 18          	push   0x18(%esp)
  10769a:	50                   	push   %eax
  10769b:	ff 74 24 1c          	push   0x1c(%esp)
  10769f:	56                   	push   %esi
  1076a0:	e8 7b fc ff ff       	call   107320 <map_page>
    return ptbl;
  1076a5:	83 c4 10             	add    $0x10,%esp
    ptbl = map_page(proc_index, vaddr, page_index, perm);
  1076a8:	89 c2                	mov    %eax,%edx
}
  1076aa:	83 c4 04             	add    $0x4,%esp
  1076ad:	89 d0                	mov    %edx,%eax
  1076af:	5b                   	pop    %ebx
  1076b0:	5e                   	pop    %esi
  1076b1:	c3                   	ret
  1076b2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1076b9:	00 
  1076ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

001076c0 <alloc_mem_quota>:



unsigned int alloc_mem_quota (unsigned int id, unsigned int quota)
{
  1076c0:	53                   	push   %ebx
  1076c1:	e8 fa 8c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1076c6:	81 c3 2e 59 00 00    	add    $0x592e,%ebx
  1076cc:	83 ec 10             	sub    $0x10,%esp
    unsigned int child;
    child = container_split (id, quota);
  1076cf:	ff 74 24 1c          	push   0x1c(%esp)
  1076d3:	ff 74 24 1c          	push   0x1c(%esp)
  1076d7:	e8 d4 e8 ff ff       	call   105fb0 <container_split>
    return child;
}
  1076dc:	83 c4 18             	add    $0x18,%esp
  1076df:	5b                   	pop    %ebx
  1076e0:	c3                   	ret
  1076e1:	66 90                	xchg   %ax,%ax
  1076e3:	66 90                	xchg   %ax,%ax
  1076e5:	66 90                	xchg   %ax,%ax
  1076e7:	66 90                	xchg   %ax,%ax
  1076e9:	66 90                	xchg   %ax,%ax
  1076eb:	66 90                	xchg   %ax,%ax
  1076ed:	66 90                	xchg   %ax,%ax
  1076ef:	90                   	nop

001076f0 <MPTNew_test1>:
#include <vmm/MPTOp/export.h>
#include <vmm/MPTNew/export.h>
#include "export.h"

int MPTNew_test1()
{
  1076f0:	53                   	push   %ebx
  1076f1:	e8 ca 8c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1076f6:	81 c3 fe 58 00 00    	add    $0x58fe,%ebx
  1076fc:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 400;
    container_split(0, 100);
  1076ff:	6a 64                	push   $0x64
  107701:	6a 00                	push   $0x0
  107703:	e8 a8 e8 ff ff       	call   105fb0 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  107708:	59                   	pop    %ecx
  107709:	58                   	pop    %eax
  10770a:	68 00 00 00 64       	push   $0x64000000
  10770f:	6a 01                	push   $0x1
  107711:	e8 2a f2 ff ff       	call   106940 <get_ptbl_entry_by_va>
  107716:	83 c4 10             	add    $0x10,%esp
  107719:	85 c0                	test   %eax,%eax
  10771b:	0f 85 9f 00 00 00    	jne    1077c0 <MPTNew_test1+0xd0>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  107721:	83 ec 08             	sub    $0x8,%esp
  107724:	68 00 00 00 64       	push   $0x64000000
  107729:	6a 01                	push   $0x1
  10772b:	e8 80 f2 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  107730:	83 c4 10             	add    $0x10,%esp
  107733:	85 c0                	test   %eax,%eax
  107735:	75 59                	jne    107790 <MPTNew_test1+0xa0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    alloc_page(1, vaddr, 7);
  107737:	83 ec 04             	sub    $0x4,%esp
  10773a:	6a 07                	push   $0x7
  10773c:	68 00 00 00 64       	push   $0x64000000
  107741:	6a 01                	push   $0x1
  107743:	e8 28 ff ff ff       	call   107670 <alloc_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  107748:	58                   	pop    %eax
  107749:	5a                   	pop    %edx
  10774a:	68 00 00 00 64       	push   $0x64000000
  10774f:	6a 01                	push   $0x1
  107751:	e8 ea f1 ff ff       	call   106940 <get_ptbl_entry_by_va>
  107756:	83 c4 10             	add    $0x10,%esp
  107759:	85 c0                	test   %eax,%eax
  10775b:	0f 84 af 00 00 00    	je     107810 <MPTNew_test1+0x120>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  107761:	83 ec 08             	sub    $0x8,%esp
  107764:	68 00 00 00 64       	push   $0x64000000
  107769:	6a 01                	push   $0x1
  10776b:	e8 40 f2 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  107770:	83 c4 10             	add    $0x10,%esp
  107773:	85 c0                	test   %eax,%eax
  107775:	74 71                	je     1077e8 <MPTNew_test1+0xf8>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  107777:	83 ec 0c             	sub    $0xc,%esp
  10777a:	8d 83 7a b8 ff ff    	lea    -0x4786(%ebx),%eax
  107780:	50                   	push   %eax
  107781:	e8 e6 b5 ff ff       	call   102d6c <dprintf>
    return 0;
  107786:	83 c4 10             	add    $0x10,%esp
  107789:	31 c0                	xor    %eax,%eax
}
  10778b:	83 c4 08             	add    $0x8,%esp
  10778e:	5b                   	pop    %ebx
  10778f:	c3                   	ret
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  107790:	83 ec 08             	sub    $0x8,%esp
  107793:	68 00 00 00 64       	push   $0x64000000
  107798:	6a 01                	push   $0x1
  10779a:	e8 11 f2 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  10779f:	59                   	pop    %ecx
  1077a0:	5a                   	pop    %edx
  1077a1:	50                   	push   %eax
  1077a2:	8d 83 2e ba ff ff    	lea    -0x45d2(%ebx),%eax
  1077a8:	50                   	push   %eax
  1077a9:	e8 be b5 ff ff       	call   102d6c <dprintf>
        return 1;
  1077ae:	83 c4 10             	add    $0x10,%esp
}
  1077b1:	83 c4 08             	add    $0x8,%esp
        return 1;
  1077b4:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1077b9:	5b                   	pop    %ebx
  1077ba:	c3                   	ret
  1077bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  1077c0:	83 ec 08             	sub    $0x8,%esp
  1077c3:	68 00 00 00 64       	push   $0x64000000
  1077c8:	6a 01                	push   $0x1
  1077ca:	e8 71 f1 ff ff       	call   106940 <get_ptbl_entry_by_va>
  1077cf:	59                   	pop    %ecx
  1077d0:	5a                   	pop    %edx
  1077d1:	50                   	push   %eax
  1077d2:	8d 83 12 ba ff ff    	lea    -0x45ee(%ebx),%eax
  1077d8:	50                   	push   %eax
  1077d9:	e8 8e b5 ff ff       	call   102d6c <dprintf>
        return 1;
  1077de:	83 c4 10             	add    $0x10,%esp
  1077e1:	eb ce                	jmp    1077b1 <MPTNew_test1+0xc1>
  1077e3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  1077e8:	83 ec 08             	sub    $0x8,%esp
  1077eb:	68 00 00 00 64       	push   $0x64000000
  1077f0:	6a 01                	push   $0x1
  1077f2:	e8 b9 f1 ff ff       	call   1069b0 <get_pdir_entry_by_va>
  1077f7:	5a                   	pop    %edx
  1077f8:	59                   	pop    %ecx
  1077f9:	50                   	push   %eax
  1077fa:	8d 83 66 ba ff ff    	lea    -0x459a(%ebx),%eax
  107800:	50                   	push   %eax
  107801:	e8 66 b5 ff ff       	call   102d6c <dprintf>
        return 1;
  107806:	83 c4 10             	add    $0x10,%esp
  107809:	eb a6                	jmp    1077b1 <MPTNew_test1+0xc1>
  10780b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  107810:	83 ec 08             	sub    $0x8,%esp
  107813:	68 00 00 00 64       	push   $0x64000000
  107818:	6a 01                	push   $0x1
  10781a:	e8 21 f1 ff ff       	call   106940 <get_ptbl_entry_by_va>
  10781f:	5a                   	pop    %edx
  107820:	59                   	pop    %ecx
  107821:	50                   	push   %eax
  107822:	8d 83 4a ba ff ff    	lea    -0x45b6(%ebx),%eax
  107828:	50                   	push   %eax
  107829:	e8 3e b5 ff ff       	call   102d6c <dprintf>
        return 1;
  10782e:	83 c4 10             	add    $0x10,%esp
  107831:	e9 7b ff ff ff       	jmp    1077b1 <MPTNew_test1+0xc1>
  107836:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10783d:	00 
  10783e:	66 90                	xchg   %ax,%ax

00107840 <MPTNew_test_own>:
int MPTNew_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  107840:	31 c0                	xor    %eax,%eax
  107842:	c3                   	ret
  107843:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10784a:	00 
  10784b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107850 <test_MPTNew>:

int test_MPTNew()
{
    return MPTNew_test1() + MPTNew_test_own();
  107850:	e9 9b fe ff ff       	jmp    1076f0 <MPTNew_test1>
  107855:	66 90                	xchg   %ax,%ax
  107857:	66 90                	xchg   %ax,%ax
  107859:	66 90                	xchg   %ax,%ax
  10785b:	66 90                	xchg   %ax,%ax
  10785d:	66 90                	xchg   %ax,%ax
  10785f:	90                   	nop

00107860 <__udivdi3>:
  107860:	f3 0f 1e fb          	endbr32
  107864:	55                   	push   %ebp
  107865:	89 e5                	mov    %esp,%ebp
  107867:	57                   	push   %edi
  107868:	56                   	push   %esi
  107869:	53                   	push   %ebx
  10786a:	83 ec 1c             	sub    $0x1c,%esp
  10786d:	8b 7d 08             	mov    0x8(%ebp),%edi
  107870:	8b 45 14             	mov    0x14(%ebp),%eax
  107873:	8b 75 0c             	mov    0xc(%ebp),%esi
  107876:	8b 5d 10             	mov    0x10(%ebp),%ebx
  107879:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  10787c:	85 c0                	test   %eax,%eax
  10787e:	75 20                	jne    1078a0 <__udivdi3+0x40>
  107880:	39 de                	cmp    %ebx,%esi
  107882:	73 54                	jae    1078d8 <__udivdi3+0x78>
  107884:	89 f8                	mov    %edi,%eax
  107886:	31 ff                	xor    %edi,%edi
  107888:	89 f2                	mov    %esi,%edx
  10788a:	f7 f3                	div    %ebx
  10788c:	89 fa                	mov    %edi,%edx
  10788e:	83 c4 1c             	add    $0x1c,%esp
  107891:	5b                   	pop    %ebx
  107892:	5e                   	pop    %esi
  107893:	5f                   	pop    %edi
  107894:	5d                   	pop    %ebp
  107895:	c3                   	ret
  107896:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10789d:	00 
  10789e:	66 90                	xchg   %ax,%ax
  1078a0:	39 c6                	cmp    %eax,%esi
  1078a2:	73 14                	jae    1078b8 <__udivdi3+0x58>
  1078a4:	31 ff                	xor    %edi,%edi
  1078a6:	31 c0                	xor    %eax,%eax
  1078a8:	89 fa                	mov    %edi,%edx
  1078aa:	83 c4 1c             	add    $0x1c,%esp
  1078ad:	5b                   	pop    %ebx
  1078ae:	5e                   	pop    %esi
  1078af:	5f                   	pop    %edi
  1078b0:	5d                   	pop    %ebp
  1078b1:	c3                   	ret
  1078b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1078b8:	0f bd f8             	bsr    %eax,%edi
  1078bb:	83 f7 1f             	xor    $0x1f,%edi
  1078be:	75 48                	jne    107908 <__udivdi3+0xa8>
  1078c0:	39 f0                	cmp    %esi,%eax
  1078c2:	72 07                	jb     1078cb <__udivdi3+0x6b>
  1078c4:	31 c0                	xor    %eax,%eax
  1078c6:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  1078c9:	72 dd                	jb     1078a8 <__udivdi3+0x48>
  1078cb:	b8 01 00 00 00       	mov    $0x1,%eax
  1078d0:	eb d6                	jmp    1078a8 <__udivdi3+0x48>
  1078d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1078d8:	89 d9                	mov    %ebx,%ecx
  1078da:	85 db                	test   %ebx,%ebx
  1078dc:	75 0b                	jne    1078e9 <__udivdi3+0x89>
  1078de:	b8 01 00 00 00       	mov    $0x1,%eax
  1078e3:	31 d2                	xor    %edx,%edx
  1078e5:	f7 f3                	div    %ebx
  1078e7:	89 c1                	mov    %eax,%ecx
  1078e9:	31 d2                	xor    %edx,%edx
  1078eb:	89 f0                	mov    %esi,%eax
  1078ed:	f7 f1                	div    %ecx
  1078ef:	89 c6                	mov    %eax,%esi
  1078f1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1078f4:	89 f7                	mov    %esi,%edi
  1078f6:	f7 f1                	div    %ecx
  1078f8:	89 fa                	mov    %edi,%edx
  1078fa:	83 c4 1c             	add    $0x1c,%esp
  1078fd:	5b                   	pop    %ebx
  1078fe:	5e                   	pop    %esi
  1078ff:	5f                   	pop    %edi
  107900:	5d                   	pop    %ebp
  107901:	c3                   	ret
  107902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107908:	89 f9                	mov    %edi,%ecx
  10790a:	ba 20 00 00 00       	mov    $0x20,%edx
  10790f:	29 fa                	sub    %edi,%edx
  107911:	d3 e0                	shl    %cl,%eax
  107913:	89 45 e0             	mov    %eax,-0x20(%ebp)
  107916:	89 d1                	mov    %edx,%ecx
  107918:	89 d8                	mov    %ebx,%eax
  10791a:	d3 e8                	shr    %cl,%eax
  10791c:	89 c1                	mov    %eax,%ecx
  10791e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107921:	09 c1                	or     %eax,%ecx
  107923:	89 f0                	mov    %esi,%eax
  107925:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  107928:	89 f9                	mov    %edi,%ecx
  10792a:	d3 e3                	shl    %cl,%ebx
  10792c:	89 d1                	mov    %edx,%ecx
  10792e:	d3 e8                	shr    %cl,%eax
  107930:	89 5d dc             	mov    %ebx,-0x24(%ebp)
  107933:	89 f9                	mov    %edi,%ecx
  107935:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  107938:	d3 e6                	shl    %cl,%esi
  10793a:	89 d1                	mov    %edx,%ecx
  10793c:	d3 eb                	shr    %cl,%ebx
  10793e:	09 f3                	or     %esi,%ebx
  107940:	89 c6                	mov    %eax,%esi
  107942:	89 f2                	mov    %esi,%edx
  107944:	89 d8                	mov    %ebx,%eax
  107946:	f7 75 e0             	divl   -0x20(%ebp)
  107949:	89 d6                	mov    %edx,%esi
  10794b:	89 c3                	mov    %eax,%ebx
  10794d:	f7 65 dc             	mull   -0x24(%ebp)
  107950:	89 55 e0             	mov    %edx,-0x20(%ebp)
  107953:	39 d6                	cmp    %edx,%esi
  107955:	72 21                	jb     107978 <__udivdi3+0x118>
  107957:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10795a:	89 f9                	mov    %edi,%ecx
  10795c:	d3 e2                	shl    %cl,%edx
  10795e:	39 c2                	cmp    %eax,%edx
  107960:	73 07                	jae    107969 <__udivdi3+0x109>
  107962:	8b 55 e0             	mov    -0x20(%ebp),%edx
  107965:	39 d6                	cmp    %edx,%esi
  107967:	74 0f                	je     107978 <__udivdi3+0x118>
  107969:	89 d8                	mov    %ebx,%eax
  10796b:	31 ff                	xor    %edi,%edi
  10796d:	e9 36 ff ff ff       	jmp    1078a8 <__udivdi3+0x48>
  107972:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107978:	8d 43 ff             	lea    -0x1(%ebx),%eax
  10797b:	31 ff                	xor    %edi,%edi
  10797d:	e9 26 ff ff ff       	jmp    1078a8 <__udivdi3+0x48>
  107982:	66 90                	xchg   %ax,%ax
  107984:	66 90                	xchg   %ax,%ax
  107986:	66 90                	xchg   %ax,%ax
  107988:	66 90                	xchg   %ax,%ax
  10798a:	66 90                	xchg   %ax,%ax
  10798c:	66 90                	xchg   %ax,%ax
  10798e:	66 90                	xchg   %ax,%ax

00107990 <__umoddi3>:
  107990:	f3 0f 1e fb          	endbr32
  107994:	55                   	push   %ebp
  107995:	89 e5                	mov    %esp,%ebp
  107997:	57                   	push   %edi
  107998:	56                   	push   %esi
  107999:	53                   	push   %ebx
  10799a:	83 ec 2c             	sub    $0x2c,%esp
  10799d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  1079a0:	8b 45 14             	mov    0x14(%ebp),%eax
  1079a3:	8b 75 08             	mov    0x8(%ebp),%esi
  1079a6:	8b 7d 10             	mov    0x10(%ebp),%edi
  1079a9:	89 da                	mov    %ebx,%edx
  1079ab:	85 c0                	test   %eax,%eax
  1079ad:	75 19                	jne    1079c8 <__umoddi3+0x38>
  1079af:	39 fb                	cmp    %edi,%ebx
  1079b1:	73 5d                	jae    107a10 <__umoddi3+0x80>
  1079b3:	89 f0                	mov    %esi,%eax
  1079b5:	f7 f7                	div    %edi
  1079b7:	89 d0                	mov    %edx,%eax
  1079b9:	31 d2                	xor    %edx,%edx
  1079bb:	83 c4 2c             	add    $0x2c,%esp
  1079be:	5b                   	pop    %ebx
  1079bf:	5e                   	pop    %esi
  1079c0:	5f                   	pop    %edi
  1079c1:	5d                   	pop    %ebp
  1079c2:	c3                   	ret
  1079c3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  1079c8:	89 75 e0             	mov    %esi,-0x20(%ebp)
  1079cb:	39 c3                	cmp    %eax,%ebx
  1079cd:	73 11                	jae    1079e0 <__umoddi3+0x50>
  1079cf:	89 f0                	mov    %esi,%eax
  1079d1:	83 c4 2c             	add    $0x2c,%esp
  1079d4:	5b                   	pop    %ebx
  1079d5:	5e                   	pop    %esi
  1079d6:	5f                   	pop    %edi
  1079d7:	5d                   	pop    %ebp
  1079d8:	c3                   	ret
  1079d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1079e0:	0f bd c8             	bsr    %eax,%ecx
  1079e3:	83 f1 1f             	xor    $0x1f,%ecx
  1079e6:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  1079e9:	75 45                	jne    107a30 <__umoddi3+0xa0>
  1079eb:	39 d8                	cmp    %ebx,%eax
  1079ed:	0f 82 d5 00 00 00    	jb     107ac8 <__umoddi3+0x138>
  1079f3:	39 fe                	cmp    %edi,%esi
  1079f5:	0f 83 cd 00 00 00    	jae    107ac8 <__umoddi3+0x138>
  1079fb:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1079fe:	83 c4 2c             	add    $0x2c,%esp
  107a01:	5b                   	pop    %ebx
  107a02:	5e                   	pop    %esi
  107a03:	5f                   	pop    %edi
  107a04:	5d                   	pop    %ebp
  107a05:	c3                   	ret
  107a06:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107a0d:	00 
  107a0e:	66 90                	xchg   %ax,%ax
  107a10:	89 f9                	mov    %edi,%ecx
  107a12:	85 ff                	test   %edi,%edi
  107a14:	75 0b                	jne    107a21 <__umoddi3+0x91>
  107a16:	b8 01 00 00 00       	mov    $0x1,%eax
  107a1b:	31 d2                	xor    %edx,%edx
  107a1d:	f7 f7                	div    %edi
  107a1f:	89 c1                	mov    %eax,%ecx
  107a21:	89 d8                	mov    %ebx,%eax
  107a23:	31 d2                	xor    %edx,%edx
  107a25:	f7 f1                	div    %ecx
  107a27:	89 f0                	mov    %esi,%eax
  107a29:	f7 f1                	div    %ecx
  107a2b:	eb 8a                	jmp    1079b7 <__umoddi3+0x27>
  107a2d:	8d 76 00             	lea    0x0(%esi),%esi
  107a30:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  107a33:	ba 20 00 00 00       	mov    $0x20,%edx
  107a38:	29 ca                	sub    %ecx,%edx
  107a3a:	d3 e0                	shl    %cl,%eax
  107a3c:	89 45 dc             	mov    %eax,-0x24(%ebp)
  107a3f:	89 d1                	mov    %edx,%ecx
  107a41:	89 f8                	mov    %edi,%eax
  107a43:	d3 e8                	shr    %cl,%eax
  107a45:	89 55 e0             	mov    %edx,-0x20(%ebp)
  107a48:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  107a4c:	89 c2                	mov    %eax,%edx
  107a4e:	8b 45 dc             	mov    -0x24(%ebp),%eax
  107a51:	d3 e7                	shl    %cl,%edi
  107a53:	09 c2                	or     %eax,%edx
  107a55:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107a58:	89 7d d8             	mov    %edi,-0x28(%ebp)
  107a5b:	89 f7                	mov    %esi,%edi
  107a5d:	89 55 dc             	mov    %edx,-0x24(%ebp)
  107a60:	89 da                	mov    %ebx,%edx
  107a62:	89 c1                	mov    %eax,%ecx
  107a64:	d3 ea                	shr    %cl,%edx
  107a66:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  107a6a:	d3 e3                	shl    %cl,%ebx
  107a6c:	89 c1                	mov    %eax,%ecx
  107a6e:	d3 ef                	shr    %cl,%edi
  107a70:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  107a74:	89 f8                	mov    %edi,%eax
  107a76:	d3 e6                	shl    %cl,%esi
  107a78:	09 d8                	or     %ebx,%eax
  107a7a:	f7 75 dc             	divl   -0x24(%ebp)
  107a7d:	89 d3                	mov    %edx,%ebx
  107a7f:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  107a82:	89 f7                	mov    %esi,%edi
  107a84:	f7 65 d8             	mull   -0x28(%ebp)
  107a87:	89 c6                	mov    %eax,%esi
  107a89:	89 d1                	mov    %edx,%ecx
  107a8b:	39 d3                	cmp    %edx,%ebx
  107a8d:	72 06                	jb     107a95 <__umoddi3+0x105>
  107a8f:	75 0e                	jne    107a9f <__umoddi3+0x10f>
  107a91:	39 c7                	cmp    %eax,%edi
  107a93:	73 0a                	jae    107a9f <__umoddi3+0x10f>
  107a95:	2b 45 d8             	sub    -0x28(%ebp),%eax
  107a98:	1b 55 dc             	sbb    -0x24(%ebp),%edx
  107a9b:	89 d1                	mov    %edx,%ecx
  107a9d:	89 c6                	mov    %eax,%esi
  107a9f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  107aa2:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  107aa5:	29 f0                	sub    %esi,%eax
  107aa7:	19 cb                	sbb    %ecx,%ebx
  107aa9:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  107aad:	89 da                	mov    %ebx,%edx
  107aaf:	d3 e2                	shl    %cl,%edx
  107ab1:	89 f9                	mov    %edi,%ecx
  107ab3:	d3 e8                	shr    %cl,%eax
  107ab5:	d3 eb                	shr    %cl,%ebx
  107ab7:	09 d0                	or     %edx,%eax
  107ab9:	89 da                	mov    %ebx,%edx
  107abb:	83 c4 2c             	add    $0x2c,%esp
  107abe:	5b                   	pop    %ebx
  107abf:	5e                   	pop    %esi
  107ac0:	5f                   	pop    %edi
  107ac1:	5d                   	pop    %ebp
  107ac2:	c3                   	ret
  107ac3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  107ac8:	89 da                	mov    %ebx,%edx
  107aca:	29 fe                	sub    %edi,%esi
  107acc:	19 c2                	sbb    %eax,%edx
  107ace:	89 75 e0             	mov    %esi,-0x20(%ebp)
  107ad1:	e9 25 ff ff ff       	jmp    1079fb <__umoddi3+0x6b>
