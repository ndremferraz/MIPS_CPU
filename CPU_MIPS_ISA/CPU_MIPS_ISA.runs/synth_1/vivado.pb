
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/utils_1/imports/synth_1/CPU_core.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/utils_1/imports/synth_1/CPU_core.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
c
Command: %s
53*	vivadotcl22
0synth_design -top CPU_core -part xc7k70tfbv676-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7k70tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7k70tZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
14384Z8-7075h px� 
�
%s*synth2u
sStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 850.594 ; gain = 473.277
h px� 
�
synthesizing module '%s'%s4497*oasys2

CPU_core2
 2~
zC:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/CPU_core.v2
48@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
control_unit2
 2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
238@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
378@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
control_unit2
 2
02
12�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

ALUControl2
 2�
|C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/ALUControl.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
funcCodeDecoder2
 2�
�C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/funcCodeDecoder.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
funcCodeDecoder2
 2
02
12�
�C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/funcCodeDecoder.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ALUControl2
 2
02
12�
|C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/ALUControl.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
selector32bit2
 2�
C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/selector32bit.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
selector32bit2
 2
02
12�
C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/selector32bit.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
selector5bit2
 2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/selector5bit.v2
218@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
selector5bit2
 2
02
12�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/selector5bit.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
register32x32bit2
 2�
�C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/register32x32bit.v2
48@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
register32x32bit2
 2
02
12�
�C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/register32x32bit.v2
48@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

ALU32bit2
 2~
zC:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/ALU32bit.v2
58@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ALU32bit2
 2
02
12~
zC:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/ALU32bit.v2
58@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
extend_shift2
 2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/extend_shift.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
extend_shift2
 2
02
12�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/extend_shift.v2
238@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
zero2

ALU32bit2
	pc_plus_42~
zC:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/CPU_core.v2
938@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	pc_plus_42

ALU32bit2
52
42~
zC:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/CPU_core.v2
938@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
zero2

ALU32bit2
branch_calculator2~
zC:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/CPU_core.v2
958@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
branch_calculator2

ALU32bit2
52
42~
zC:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/CPU_core.v2
958@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

CPU_core2
 2
02
12~
zC:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/CPU_core.v2
48@Z8-6155h px� 
�
%s*synth2u
sFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 955.098 ; gain = 577.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 955.098 ; gain = 577.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7k70tfbv676-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 955.098 ; gain = 577.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
Loading part %s157*device2
xc7k70tfbv676-1Z21-403h px� 
�
!inferring latch for variable '%s'327*oasys2
destination_register_reg2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
418@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

branch_reg2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
428@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
memory_read_reg2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
438@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
memory_write_reg2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
448@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
ALU_source_reg2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
408@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
register_write_reg2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
468@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	ALUOp_reg2�
~C:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.srcs/sources_1/new/control_unit.v2
478@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 955.098 ; gain = 577.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 3     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 4     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 1163.680 ; gain = 786.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
w
%s*synth2_
]+------------+---------------------------+-----------+----------------------+--------------+
h px� 
x
%s*synth2`
^|Module Name | RTL Object                | Inference | Size (Depth x Width) | Primitives   | 
h px� 
w
%s*synth2_
]+------------+---------------------------+-----------+----------------------+--------------+
h px� 
x
%s*synth2`
^|CPU_core    | registerFile/register_reg | Implied   | 32 x 32              | RAM32M x 12  | 
h px� 
x
%s*synth2`
^+------------+---------------------------+-----------+----------------------+--------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 1163.680 ; gain = 786.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
w
%s
*synth2_
]+------------+---------------------------+-----------+----------------------+--------------+
h p
x
� 
x
%s
*synth2`
^|Module Name | RTL Object                | Inference | Size (Depth x Width) | Primitives   | 
h p
x
� 
w
%s
*synth2_
]+------------+---------------------------+-----------+----------------------+--------------+
h p
x
� 
x
%s
*synth2`
^|CPU_core    | registerFile/register_reg | Implied   | 32 x 32              | RAM32M x 12  | 
h p
x
� 
x
%s
*synth2`
^+------------+---------------------------+-----------+----------------------+--------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 1163.680 ; gain = 786.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1333.582 ; gain = 956.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1333.582 ; gain = 956.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1333.582 ; gain = 956.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1333.582 ; gain = 956.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1333.582 ; gain = 956.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1333.582 ; gain = 956.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     1|
h px� 
4
%s*synth2
|2     |CARRY4   |    36|
h px� 
4
%s*synth2
|3     |LUT1     |     1|
h px� 
4
%s*synth2
|4     |LUT2     |    47|
h px� 
4
%s*synth2
|5     |LUT3     |    63|
h px� 
4
%s*synth2
|6     |LUT4     |    70|
h px� 
4
%s*synth2
|7     |LUT5     |    38|
h px� 
4
%s*synth2
|8     |LUT6     |   196|
h px� 
4
%s*synth2
|9     |RAM32M   |    10|
h px� 
4
%s*synth2
|10    |RAM32X1D |     4|
h px� 
4
%s*synth2
|11    |FDRE     |    31|
h px� 
4
%s*synth2
|12    |LD       |     6|
h px� 
4
%s*synth2
|13    |IBUF     |    65|
h px� 
4
%s*synth2
|14    |OBUF     |    98|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
3
%s
*synth2

Report Instance Areas: 
h p
x
� 
Q
%s
*synth29
7+------+--------------------+-----------------+------+
h p
x
� 
Q
%s
*synth29
7|      |Instance            |Module           |Cells |
h p
x
� 
Q
%s
*synth29
7+------+--------------------+-----------------+------+
h p
x
� 
Q
%s
*synth29
7|1     |top                 |                 |   666|
h p
x
� 
Q
%s
*synth29
7|2     |  branch_calculator |ALU32bit         |    16|
h p
x
� 
Q
%s
*synth29
7|3     |  main_ALU          |ALU32bit_0       |    28|
h p
x
� 
Q
%s
*synth29
7|4     |  main_control      |control_unit     |   256|
h p
x
� 
Q
%s
*synth29
7|5     |  pc_plus_4         |ALU32bit_1       |    48|
h p
x
� 
Q
%s
*synth29
7|6     |  registerFile      |register32x32bit |   123|
h p
x
� 
Q
%s
*synth29
7+------+--------------------+-----------------+------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1333.582 ; gain = 956.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 12 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1333.582 ; gain = 956.266
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1333.582 ; gain = 956.266
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0182

1348.6332
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
56Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
1Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1458.3322
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 20 instances were transformed.
  LD => LDCE: 6 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

1d69d31aZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352
122
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:192

00:00:232

1458.3322

1088.387Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0032

1458.3322
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2x
vC:/Users/ferra/RUNNINGFILES/Verilog/Verilog-2025/MIPS-CPU/MIPS_CPU/CPU_MIPS_ISA/CPU_MIPS_ISA.runs/synth_1/CPU_core.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2[
Yreport_utilization -file CPU_core_utilization_synth.rpt -pb CPU_core_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Mar 11 00:13:02 2025Z17-206h px� 


End Record