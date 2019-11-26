make[1]: Entering directory '/home/maymomo/project/6.828'
+ cc kern/init.c
+ cc kern/trap.c
+ ld obj/kern/kernel
+ mk obj/kern/kernel.img
make[1]: Leaving directory '/home/maymomo/project/6.828'
qemu-system-i386 -nographic -drive file=obj/kern/kernel.img,index=0,media=disk,format=raw -serial mon:stdio -gdb tcp::26000 -D qemu.log -smp 1 
6828 decimal is 15254 octal!
entering test_backtrace 5
entering test_backtrace 4
entering test_backtrace 3
entering test_backtrace 2
entering test_backtrace 1
entering test_backtrace 0
ebp f0120f18 eip f010006a args 00000000 00000000 00000000 00000000 f0103a51
 kern/init.c:28: test_backtrace+42
ebp f0120f38 eip f010008f args 00000000 00000001 f0120f78 00000000 f0103a51
 kern/init.c:26: test_backtrace+79
ebp f0120f58 eip f010008f args 00000001 00000002 f0120f98 00000000 f0103a51
 kern/init.c:26: test_backtrace+79
ebp f0120f78 eip f010008f args 00000002 00000003 f0120fb8 00000000 f0103a51
 kern/init.c:26: test_backtrace+79
ebp f0120f98 eip f010008f args 00000003 00000004 f0120fb8 00000000 00000200
 kern/init.c:26: test_backtrace+79
ebp f0120fb8 eip f010008f args 00000004 00000005 f0120fe8 f0100727 00000000
 kern/init.c:26: test_backtrace+79
ebp f0120fd8 eip f010011a args 00000005 00001aac f0120ff8 f01000fc 00000000
 kern/init.c:43: i386_init+42
ebp f0120ff8 eip f010003e args 00122021 00000000 00000000 00000000 00000000
 kern/entry.S:84: <unknown>+0
leaving test_backtrace 0
leaving test_backtrace 1
leaving test_backtrace 2
leaving test_backtrace 3
leaving test_backtrace 4
leaving test_backtrace 5
Physical memory: 131072K available, base = 640K, extended = 130432K
check_page_free_list() succeeded!
check_page_alloc() succeeded!
check_page() succeeded!
check_kern_pgdir() succeeded!
check_page_free_list() succeeded!
check_page_installed_pgdir() succeeded!
SMP: CPU 0 found 1 CPU(s)
enabled interrupts: 1 2
sizeof: 34
[00000000] new env 00001000
runable: 0xf02ba000
Incoming TRAP frame at 0xefffffbc
Incoming TRAP frame at 0xefffffbc
Incoming TRAP frame at 0xefffffbc
Incoming TRAP frame at 0xefffffbc
[00001000] user fault va 00400000 ip 00800522
TRAP frame at 0xf02ba000 from CPU 0
  edi  0x00000000
  esi  0x00000000
  ebp  0xeebfdfd0
  oesp 0xefffffdc
  ebx  0x00000000
  edx  0x00001000
  ecx  0x00801372
  eax  0x008003e4
  es   0x----0023
  ds   0x----0023
  trap 0x0000000e Page Fault
  cr2  0x00400000
  err  0x00000006 [user, write, not-present]
  eip  0x00800522
  cs   0x----001b
  flag 0x000008d7
  esp  0xeebfdfb8
  ss   0x----0023
Incoming TRAP frame at 0xefffffbc
       before   during  
Incoming TRAP frame at 0xefffffbc
edi    00000000 00000000 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
esi    00000000 00000000 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
ebp    eebfdfd0 eebfdfd0 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
ebx    00000000 00000000 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
edx    00001000 00001000 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
ecx    00801372 00801372 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
eax    008003e4 008003e4 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
eip    00800522 00800522 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
eflags 000008d7 000008d7 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
esp    eebfdfb8 eebfdfb8 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
Registers in UTrapframe Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
Incoming TRAP frame at 0xefffffbc
       before   after   
Incoming TRAP frame at 0xefffffbc
edi    00000000 00000000 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
esi    00000000 00000000 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
ebp    eebfdfd0 eebfdfd0 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
ebx    00000000 00000000 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
edx    00001000 00001000 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
ecx    00801372 00801372 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
eax    008003e4 008003e4 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
eip    00800522 00800522 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
eflags 000008d7 000008d7 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
esp    eebfdfb8 eebfdfb8 Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
Registers after page-fault Incoming TRAP frame at 0xefffffbc
OK
Incoming TRAP frame at 0xefffffbc
[00001000] exiting gracefully
[00001000] free env 00001000
No runnable environments in the system!
Welcome to the JOS kernel monitor!
Type 'help' for a list of commands.
K> QEMU: Terminated
