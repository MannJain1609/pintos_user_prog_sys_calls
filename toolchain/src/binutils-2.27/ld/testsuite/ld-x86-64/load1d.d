#source: load1.s
#as: --x32
#ld: -shared -melf32_x86_64
#objdump: -dw
#notarget: x86_64-*-nacl*

.*: +file format .*

Disassembly of section .text:

0+[a-f0-9]+ <_start>:
[ 	]*[a-f0-9]+:	13 05 5a 01 20 00    	adc    0x20015a\(%rip\),%eax        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	03 1d 54 01 20 00    	add    0x200154\(%rip\),%ebx        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	23 0d 4e 01 20 00    	and    0x20014e\(%rip\),%ecx        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	3b 15 48 01 20 00    	cmp    0x200148\(%rip\),%edx        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	0b 35 42 01 20 00    	or     0x200142\(%rip\),%esi        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	1b 3d 3c 01 20 00    	sbb    0x20013c\(%rip\),%edi        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	2b 2d 36 01 20 00    	sub    0x200136\(%rip\),%ebp        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	44 33 05 2f 01 20 00 	xor    0x20012f\(%rip\),%r8d        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	44 85 3d 28 01 20 00 	test   %r15d,0x200128\(%rip\)        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	48 13 05 21 01 20 00 	adc    0x200121\(%rip\),%rax        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	48 03 1d 1a 01 20 00 	add    0x20011a\(%rip\),%rbx        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	48 23 0d 13 01 20 00 	and    0x200113\(%rip\),%rcx        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	48 3b 15 0c 01 20 00 	cmp    0x20010c\(%rip\),%rdx        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	48 0b 3d 05 01 20 00 	or     0x200105\(%rip\),%rdi        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	48 1b 35 fe 00 20 00 	sbb    0x2000fe\(%rip\),%rsi        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	48 2b 2d f7 00 20 00 	sub    0x2000f7\(%rip\),%rbp        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	4c 33 05 f0 00 20 00 	xor    0x2000f0\(%rip\),%r8        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	4c 85 3d e9 00 20 00 	test   %r15,0x2000e9\(%rip\)        # 2002b8 <_DYNAMIC\+0x70>
[ 	]*[a-f0-9]+:	13 05 eb 00 20 00    	adc    0x2000eb\(%rip\),%eax        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	03 1d e5 00 20 00    	add    0x2000e5\(%rip\),%ebx        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	23 0d df 00 20 00    	and    0x2000df\(%rip\),%ecx        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	3b 15 d9 00 20 00    	cmp    0x2000d9\(%rip\),%edx        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	0b 35 d3 00 20 00    	or     0x2000d3\(%rip\),%esi        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	1b 3d cd 00 20 00    	sbb    0x2000cd\(%rip\),%edi        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	2b 2d c7 00 20 00    	sub    0x2000c7\(%rip\),%ebp        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	44 33 05 c0 00 20 00 	xor    0x2000c0\(%rip\),%r8d        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	44 85 3d b9 00 20 00 	test   %r15d,0x2000b9\(%rip\)        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	48 13 05 b2 00 20 00 	adc    0x2000b2\(%rip\),%rax        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	48 03 1d ab 00 20 00 	add    0x2000ab\(%rip\),%rbx        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	48 23 0d a4 00 20 00 	and    0x2000a4\(%rip\),%rcx        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	48 3b 15 9d 00 20 00 	cmp    0x20009d\(%rip\),%rdx        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	48 0b 3d 96 00 20 00 	or     0x200096\(%rip\),%rdi        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	48 1b 35 8f 00 20 00 	sbb    0x20008f\(%rip\),%rsi        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	48 2b 2d 88 00 20 00 	sub    0x200088\(%rip\),%rbp        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	4c 33 05 81 00 20 00 	xor    0x200081\(%rip\),%r8        # 2002c0 <_DYNAMIC\+0x78>
[ 	]*[a-f0-9]+:	4c 85 3d 7a 00 20 00 	test   %r15,0x20007a\(%rip\)        # 2002c0 <_DYNAMIC\+0x78>
#pass
