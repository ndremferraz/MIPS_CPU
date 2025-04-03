# MIPS_CPU V1

## For simplicty version 1 will be non-pipelined and it assumes a single block of memory 

### I started this project because I wanted to put to use some of the things that I learned from my computer organization class. I used the book "Computer Organization and Design - The Hardware/Software Interface, David Patterson and John Hennessy, Fifth Edition (MIPS edition)"

For some implementations I ended up copying some code from the book and I intend to claim no propriety over it. 

To keep the CPU simple, it will only be capable of executing the following instructions:
-  R-type: add, sub, and, or, stl
-  lw/sw
-  beq

The following C code was used to test the CPU:

char var1 = var2 + var 3;

var2 = var3 || var4;

if(var2 == var1) {}

Which translated to the following MIPS 2000 instructions:

lw $t1, 4($zero)

lw $t2, 8($zero)

lw $t2, 8($zero)

add $t0, $t1, $t2

or $t1, $t2, $t3

beq $t0, $t1, 3

sw $t0, 0($zero)

sw $t1, 4($zero) 

sw $t2, 8($zero)

sw $t3, 12($zero)


### Progress
- [X] Implement 32-bit Register File
- [X] Implement 32-bit ALU
- [X] Implement Memory
- [X] Implement ALU Control
- [X] Implement Main Control Unit 
- [X] Test 32-bit Register File
- [X] Test Memory 
- [X] Test 32-bit ALU
- [X] Test ALU Control 
- [X] Test Main Control Unit
- [X] Implement Data Paths
- [X] Test CPU core 
