

Command: %s
53*	vivadotcl2c
asynth_design -top calculator_top -part xc7a100tcsg324-1 -global_retiming on -incremental_mode offZ4-113h px 
:
Starting synth_design
149*	vivadotclZ4-321h px 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px 
N
#Helper process launched with PID %s4824*oasys2
16992Z8-7075h px 

%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1105.316 ; gain = 466.875
h px 
Ä
synthesizing module '%s'%s4497*oasys2
calculator_top2
 2d
`C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/calculator_top.sv2
108@Z8-6157h px 
M
%s
*synth25
3	Parameter SM_TYPE bound to: MOORE - type: string 
h p
x
 
L
%s
*synth24
2	Parameter USE_PLL bound to: TRUE - type: string 
h p
x
 
ÿ
synthesizing module '%s'%s4497*oasys2	
sys_pll2
 2¦
¡C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/build/calculator.runs/synth_1/.Xil/Vivado-8220-LAPTOP-RH96MGM6/realtime/sys_pll_stub.v2
68@Z8-6157h px 

'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
sys_pll2
 2
02
12¦
¡C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/build/calculator.runs/synth_1/.Xil/Vivado-8220-LAPTOP-RH96MGM6/realtime/sys_pll_stub.v2
68@Z8-6155h px 
Ç
synthesizing module '%s'%s4497*oasys2
calculator_moore2
 2f
bC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/calculator_moore.sv2
88@Z8-6157h px 
H
%s
*synth20
.	Parameter BITS bound to: 32 - type: integer 
h p
x
 
»
synthesizing module '%s'%s4497*oasys2

divider_nr2
 2`
\C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/divider_nr.sv2
88@Z8-6157h px 
H
%s
*synth20
.	Parameter BITS bound to: 32 - type: integer 
h p
x
 
»
-case statement is not full and has no default155*oasys2`
\C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/divider_nr.sv2
488@Z8-155h px 
¿
synthesizing module '%s'%s4497*oasys2
leading_ones2
 2b
^C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH3/SystemVerilog/hdl/leading_ones.sv2
88@Z8-6157h px 
Q
%s
*synth29
7	Parameter SELECTOR bound to: DOWN_FOR - type: string 
h p
x
 
H
%s
*synth20
.	Parameter BITS bound to: 32 - type: integer 
h p
x
 
Ö
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
leading_ones2
 2
02
12b
^C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH3/SystemVerilog/hdl/leading_ones.sv2
88@Z8-6155h px 
Ò
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

divider_nr2
 2
02
12`
\C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/divider_nr.sv2
88@Z8-6155h px 

Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162	
divisor2
322

divider_nr2f
bC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/calculator_moore.sv2
528@Z8-689h px 
Á
-case statement is not full and has no default155*oasys2f
bC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/calculator_moore.sv2
558@Z8-155h px 
Þ
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
calculator_moore2
 2
02
12f
bC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/calculator_moore.sv2
88@Z8-6155h px 
Ò
synthesizing module '%s'%s4497*oasys2
seven_segment2
 2t
pC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH4/SystemVerilog/counting_buttons/hdl/seven_segment.sv2
98@Z8-6157h px 
O
%s
*synth27
5	Parameter NUM_SEGMENTS bound to: 8 - type: integer 
h p
x
 
K
%s
*synth23
1	Parameter CLK_PER bound to: 20 - type: integer 
h p
x
 
Î
synthesizing module '%s'%s4497*oasys2
cathode_top2
 2r
nC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH4/SystemVerilog/counting_buttons/hdl/cathode_top.sv2
88@Z8-6157h px 
å
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cathode_top2
 2
02
12r
nC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH4/SystemVerilog/counting_buttons/hdl/cathode_top.sv2
88@Z8-6155h px 
é
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
seven_segment2
 2
02
12t
pC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH4/SystemVerilog/counting_buttons/hdl/seven_segment.sv2
98@Z8-6155h px 
Û
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
calculator_top2
 2
02
12d
`C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/calculator_top.sv2
108@Z8-6155h px 

fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
g_MOORE.u_sm2d
`C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/calculator_top.sv2
1148@Z8-6071h px 

fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
div2f
bC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/calculator_moore.sv2
528@Z8-6071h px 

fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
u_seven_segment2d
`C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/hdl/calculator_top.sv2
738@Z8-6071h px 

%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:07 . Memory (MB): peak = 1235.988 ; gain = 597.547
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
 
%s*synth2
Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:07 . Memory (MB): peak = 1235.988 ; gain = 597.547
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:07 . Memory (MB): peak = 1235.988 ; gain = 597.547
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
º
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0282

1235.9882
0.000Z17-268h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
>

Processing XDC Constraints
244*projectZ1-262h px 
=
Initializing timing engine
348*projectZ1-569h px 
Ò
$Parsing XDC File [%s] for cell '%s'
848*designutils2j
fc:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/IP/sys_pll/sys_pll/sys_pll_in_context.xdc2
g_USE_PLL.u_sys_pll	8Z20-848h px 
Û
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2j
fc:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/IP/sys_pll/sys_pll/sys_pll_in_context.xdc2
g_USE_PLL.u_sys_pll	8Z20-847h px 

Parsing XDC File [%s]
179*designutils2Z
VC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/xdc/calculator_a7100t.xdc8Z20-179h px 
¤
Finished Parsing XDC File [%s]
178*designutils2Z
VC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/xdc/calculator_a7100t.xdc8Z20-178h px 
ú
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2X
VC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/xdc/calculator_a7100t.xdc2"
 .Xil/calculator_top_propImpl.xdcZ1-236h px 
¼
Parsing XDC File [%s]
179*designutils2{
wC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/build/calculator.runs/synth_1/dont_touch.xdc8Z20-179h px 
Å
Finished Parsing XDC File [%s]
178*designutils2{
wC:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/build/calculator.runs/synth_1/dont_touch.xdc8Z20-178h px 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px 
¶
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1315.0662
0.000Z17-268h px 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px 
À
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0412

1315.0662
0.000Z17-268h px 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:15 . Memory (MB): peak = 1315.066 ; gain = 676.625
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
©
%s*synth2
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:15 . Memory (MB): peak = 1315.066 ; gain = 676.625
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
­
%s*synth2
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:06 ; elapsed = 00:00:15 . Memory (MB): peak = 1315.066 ; gain = 676.625
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
n
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2

divider_nrZ8-802h px 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
 
y
%s
*synth2a
_                    IDLE |                             0000 |                             0000
h p
x
 
y
%s
*synth2a
_                    INIT |                             0001 |                             0001
h p
x
 
y
%s
*synth2a
_              LEFT_SHIFT |                             0010 |                             0010
h p
x
 
y
%s
*synth2a
_          ADJ_REMAINDER0 |                             0011 |                             0101
h p
x
 
y
%s
*synth2a
_          ADJ_REMAINDER1 |                             0100 |                             0110
h p
x
 
y
%s
*synth2a
_         UPDATE_QUOTIENT |                             0101 |                             1000
h p
x
 
y
%s
*synth2a
_                  TEST_N |                             0110 |                             1001
h p
x
 
y
%s
*synth2a
_         TEST_REMAINDER1 |                             0111 |                             0100
h p
x
 
y
%s
*synth2a
_          ADJ_REMAINDER2 |                             1000 |                             0111
h p
x
 
y
%s
*synth2a
_                DIV_DONE |                             1001 |                             1010
h p
x
 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
 

Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2

divider_nrZ8-3354h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1315.066 ; gain = 676.625
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
 
(
%s
*synth2
+---Adders : 
h p
x
 
F
%s
*synth2.
,	   2 Input   33 Bit       Adders := 1     
h p
x
 
F
%s
*synth2.
,	   3 Input   33 Bit       Adders := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 2     
h p
x
 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 162   
h p
x
 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
 
+
%s
*synth2
+---Registers : 
h p
x
 
H
%s
*synth20
.	               33 Bit    Registers := 1     
h p
x
 
H
%s
*synth20
.	               32 Bit    Registers := 2     
h p
x
 
H
%s
*synth20
.	               16 Bit    Registers := 1     
h p
x
 
H
%s
*synth20
.	                8 Bit    Registers := 12    
h p
x
 
H
%s
*synth20
.	                6 Bit    Registers := 1     
h p
x
 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
 
H
%s
*synth20
.	                4 Bit    Registers := 8     
h p
x
 
H
%s
*synth20
.	                3 Bit    Registers := 3     
h p
x
 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
 
H
%s
*synth20
.	                1 Bit    Registers := 3     
h p
x
 
-
%s
*synth2
+---Multipliers : 
h p
x
 
F
%s
*synth2.
,	              16x32  Multipliers := 1     
h p
x
 
'
%s
*synth2
+---Muxes : 
h p
x
 
F
%s
*synth2.
,	  10 Input   33 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	  10 Input   32 Bit        Muxes := 2     
h p
x
 
F
%s
*synth2.
,	  10 Input    6 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 2     
h p
x
 
F
%s
*synth2.
,	  10 Input    4 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 151   
h p
x
 
F
%s
*synth2.
,	   8 Input    3 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	   6 Input    3 Bit        Muxes := 1     
h p
x
 
F
%s
*synth2.
,	  10 Input    1 Bit        Muxes := 4     
h p
x
 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 8     
h p
x
 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 3     
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
6
%s
*synth2
Start Part Resource Summary
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px 
[
%s
*synth2C
ADSP Report: Generating DSP accumulator0, operation Mode is: A*B.
h p
x
 
_
%s
*synth2G
EDSP Report: operator accumulator0 is absorbed into DSP accumulator0.
h p
x
 
_
%s
*synth2G
EDSP Report: operator accumulator0 is absorbed into DSP accumulator0.
h p
x
 
f
%s
*synth2N
LDSP Report: Generating DSP accumulator0, operation Mode is: (PCIN>>17)+A*B.
h p
x
 
_
%s
*synth2G
EDSP Report: operator accumulator0 is absorbed into DSP accumulator0.
h p
x
 
_
%s
*synth2G
EDSP Report: operator accumulator0 is absorbed into DSP accumulator0.
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
ª
%s*synth2
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:01:35 . Memory (MB): peak = 1548.363 ; gain = 909.922
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
Z
%s
*synth2B
@ Sort Area is  accumulator0_0 : 0 0 : 3017 5738 : Used 1 time 0
h p
x
 
Z
%s
*synth2B
@ Sort Area is  accumulator0_0 : 0 1 : 2721 5738 : Used 1 time 0
h p
x
 
©
%s*synth2
---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px 
 
%s*synth2
+-----------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px 
¡
%s*synth2
|Module Name      | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px 
 
%s*synth2
+-----------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px 
¡
%s*synth2
|calculator_moore | A*B            | 18     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px 
¡
%s*synth2
|calculator_moore | (PCIN>>17)+A*B | 17     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px 
¡
%s*synth2
+-----------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px 

%s*synth2þ
ûNote: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px 
¬
%s*synth2
---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
¥
%s*synth2
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:43 ; elapsed = 00:01:42 . Memory (MB): peak = 1548.363 ; gain = 909.922
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
4
%s
*synth2
Start Timing Optimization
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
~Finished Timing Optimization : Time (s): cpu = 00:01:19 ; elapsed = 00:02:57 . Memory (MB): peak = 1825.191 ; gain = 1186.750
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
3
%s
*synth2
Start Technology Mapping
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
éc
Retiming module %s4230*oasys2²c
¯c`divider_nr`
	Numbers of forward move = 0, and backward move = 58

	Retimed registers names:
		g_MOORE.u_sm/div/quotient_reg[0]_bret
		g_MOORE.u_sm/div/quotient_reg[0]_bret__0
		g_MOORE.u_sm/div/quotient_reg[0]_bret__1
		g_MOORE.u_sm/div/quotient_reg[0]_bret__2
		g_MOORE.u_sm/div/quotient_reg[0]_bret__3
		g_MOORE.u_sm/div/quotient_reg[0]_bret__4
		g_MOORE.u_sm/div/quotient_reg[10]_bret
		g_MOORE.u_sm/div/quotient_reg[10]_bret__0
		g_MOORE.u_sm/div/quotient_reg[10]_bret__2
		g_MOORE.u_sm/div/quotient_reg[10]_bret__3
		g_MOORE.u_sm/div/quotient_reg[10]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[10]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[10]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[11]_bret__0
		g_MOORE.u_sm/div/quotient_reg[11]_bret__1
		g_MOORE.u_sm/div/quotient_reg[11]_bret__2
		g_MOORE.u_sm/div/quotient_reg[11]_bret__3
		g_MOORE.u_sm/div/quotient_reg[11]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[11]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[11]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[12]_bret__0
		g_MOORE.u_sm/div/quotient_reg[12]_bret__1
		g_MOORE.u_sm/div/quotient_reg[12]_bret__2
		g_MOORE.u_sm/div/quotient_reg[12]_bret__3
		g_MOORE.u_sm/div/quotient_reg[12]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[12]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[12]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[13]_bret__0
		g_MOORE.u_sm/div/quotient_reg[13]_bret__1
		g_MOORE.u_sm/div/quotient_reg[13]_bret__2
		g_MOORE.u_sm/div/quotient_reg[13]_bret__3
		g_MOORE.u_sm/div/quotient_reg[13]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[13]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[13]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[13]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[13]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[14]_bret
		g_MOORE.u_sm/div/quotient_reg[14]_bret__0
		g_MOORE.u_sm/div/quotient_reg[14]_bret__2
		g_MOORE.u_sm/div/quotient_reg[14]_bret__3
		g_MOORE.u_sm/div/quotient_reg[14]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[14]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[14]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[14]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[14]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[15]_bret__0
		g_MOORE.u_sm/div/quotient_reg[15]_bret__1
		g_MOORE.u_sm/div/quotient_reg[15]_bret__2
		g_MOORE.u_sm/div/quotient_reg[15]_bret__3
		g_MOORE.u_sm/div/quotient_reg[15]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[15]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[15]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[15]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[15]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[15]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[16]_bret
		g_MOORE.u_sm/div/quotient_reg[16]_bret__0
		g_MOORE.u_sm/div/quotient_reg[16]_bret__2
		g_MOORE.u_sm/div/quotient_reg[16]_bret__3
		g_MOORE.u_sm/div/quotient_reg[16]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[16]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[16]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[16]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[16]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[16]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[17]_bret__0
		g_MOORE.u_sm/div/quotient_reg[17]_bret__1
		g_MOORE.u_sm/div/quotient_reg[17]_bret__2
		g_MOORE.u_sm/div/quotient_reg[17]_bret__3
		g_MOORE.u_sm/div/quotient_reg[17]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[17]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[17]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[17]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[17]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[17]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[18]_bret__0
		g_MOORE.u_sm/div/quotient_reg[18]_bret__1
		g_MOORE.u_sm/div/quotient_reg[18]_bret__2
		g_MOORE.u_sm/div/quotient_reg[18]_bret__3
		g_MOORE.u_sm/div/quotient_reg[18]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[18]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[18]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[18]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[18]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[18]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[19]_bret
		g_MOORE.u_sm/div/quotient_reg[19]_bret__0
		g_MOORE.u_sm/div/quotient_reg[19]_bret__2
		g_MOORE.u_sm/div/quotient_reg[19]_bret__3
		g_MOORE.u_sm/div/quotient_reg[19]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[19]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[19]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[19]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[19]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[19]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[1]_bret
		g_MOORE.u_sm/div/quotient_reg[1]_bret__0
		g_MOORE.u_sm/div/quotient_reg[1]_bret__1
		g_MOORE.u_sm/div/quotient_reg[1]_bret__2
		g_MOORE.u_sm/div/quotient_reg[1]_bret__3
		g_MOORE.u_sm/div/quotient_reg[1]_bret__4
		g_MOORE.u_sm/div/quotient_reg[20]_bret__0
		g_MOORE.u_sm/div/quotient_reg[20]_bret__1
		g_MOORE.u_sm/div/quotient_reg[20]_bret__2
		g_MOORE.u_sm/div/quotient_reg[20]_bret__3
		g_MOORE.u_sm/div/quotient_reg[20]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[20]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[20]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[20]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[20]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[20]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[21]_bret__0
		g_MOORE.u_sm/div/quotient_reg[21]_bret__1
		g_MOORE.u_sm/div/quotient_reg[21]_bret__2
		g_MOORE.u_sm/div/quotient_reg[21]_bret__3
		g_MOORE.u_sm/div/quotient_reg[21]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[21]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[21]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[21]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[21]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[21]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[22]_bret__0
		g_MOORE.u_sm/div/quotient_reg[22]_bret__1
		g_MOORE.u_sm/div/quotient_reg[22]_bret__2
		g_MOORE.u_sm/div/quotient_reg[22]_bret__3
		g_MOORE.u_sm/div/quotient_reg[22]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[22]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[22]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[22]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[22]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[22]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[23]_bret__0
		g_MOORE.u_sm/div/quotient_reg[23]_bret__1
		g_MOORE.u_sm/div/quotient_reg[23]_bret__2
		g_MOORE.u_sm/div/quotient_reg[23]_bret__3
		g_MOORE.u_sm/div/quotient_reg[23]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[23]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[23]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[23]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[23]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[23]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[24]_bret__0
		g_MOORE.u_sm/div/quotient_reg[24]_bret__1
		g_MOORE.u_sm/div/quotient_reg[24]_bret__2
		g_MOORE.u_sm/div/quotient_reg[24]_bret__3
		g_MOORE.u_sm/div/quotient_reg[24]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[24]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[24]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[24]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[24]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[24]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[25]_bret__0
		g_MOORE.u_sm/div/quotient_reg[25]_bret__1
		g_MOORE.u_sm/div/quotient_reg[25]_bret__2
		g_MOORE.u_sm/div/quotient_reg[25]_bret__3
		g_MOORE.u_sm/div/quotient_reg[25]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[25]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[25]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[25]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[25]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[25]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[26]_bret
		g_MOORE.u_sm/div/quotient_reg[26]_bret__0
		g_MOORE.u_sm/div/quotient_reg[26]_bret__2
		g_MOORE.u_sm/div/quotient_reg[26]_bret__3
		g_MOORE.u_sm/div/quotient_reg[26]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[26]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[26]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[26]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[26]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[26]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[27]_bret__0
		g_MOORE.u_sm/div/quotient_reg[27]_bret__1
		g_MOORE.u_sm/div/quotient_reg[27]_bret__2
		g_MOORE.u_sm/div/quotient_reg[27]_bret__3
		g_MOORE.u_sm/div/quotient_reg[27]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[27]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[27]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[27]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[27]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[27]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[28]_bret__0
		g_MOORE.u_sm/div/quotient_reg[28]_bret__1
		g_MOORE.u_sm/div/quotient_reg[28]_bret__2
		g_MOORE.u_sm/div/quotient_reg[28]_bret__3
		g_MOORE.u_sm/div/quotient_reg[28]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[28]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[28]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[28]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[28]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[28]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[29]_bret__0
		g_MOORE.u_sm/div/quotient_reg[29]_bret__1
		g_MOORE.u_sm/div/quotient_reg[29]_bret__2
		g_MOORE.u_sm/div/quotient_reg[29]_bret__3
		g_MOORE.u_sm/div/quotient_reg[29]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[29]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[29]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[29]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[29]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[29]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[2]_bret
		g_MOORE.u_sm/div/quotient_reg[2]_bret__0
		g_MOORE.u_sm/div/quotient_reg[2]_bret__1
		g_MOORE.u_sm/div/quotient_reg[2]_bret__2
		g_MOORE.u_sm/div/quotient_reg[2]_bret__3
		g_MOORE.u_sm/div/quotient_reg[2]_bret__4
		g_MOORE.u_sm/div/quotient_reg[30]_bret__0
		g_MOORE.u_sm/div/quotient_reg[30]_bret__1
		g_MOORE.u_sm/div/quotient_reg[30]_bret__2
		g_MOORE.u_sm/div/quotient_reg[30]_bret__3
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__10
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__5
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__6
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__7
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__8
		g_MOORE.u_sm/div/quotient_reg[30]_bret_bret__9
		g_MOORE.u_sm/div/quotient_reg[3]_bret
		g_MOORE.u_sm/div/quotient_reg[3]_bret__0
		g_MOORE.u_sm/div/quotient_reg[3]_bret__1
		g_MOORE.u_sm/div/quotient_reg[3]_bret__2
		g_MOORE.u_sm/div/quotient_reg[3]_bret__3
		g_MOORE.u_sm/div/quotient_reg[3]_bret__4
		g_MOORE.u_sm/div/quotient_reg[4]_bret
		g_MOORE.u_sm/div/quotient_reg[4]_bret__0
		g_MOORE.u_sm/div/quotient_reg[4]_bret__1
		g_MOORE.u_sm/div/quotient_reg[4]_bret__2
		g_MOORE.u_sm/div/quotient_reg[4]_bret__3
		g_MOORE.u_sm/div/quotient_reg[5]_bret
		g_MOORE.u_sm/div/quotient_reg[5]_bret__0
		g_MOORE.u_sm/div/quotient_reg[5]_bret__2
		g_MOORE.u_sm/div/quotient_reg[5]_bret__3
		g_MOORE.u_sm/div/quotient_reg[5]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[5]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[5]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[5]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[5]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[5]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[6]_bret
		g_MOORE.u_sm/div/quotient_reg[6]_bret__0
		g_MOORE.u_sm/div/quotient_reg[6]_bret__2
		g_MOORE.u_sm/div/quotient_reg[6]_bret__3
		g_MOORE.u_sm/div/quotient_reg[6]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[6]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[6]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[6]_bret_bret__2
		g_MOORE.u_sm/div/quotient_reg[6]_bret_bret__3
		g_MOORE.u_sm/div/quotient_reg[6]_bret_bret__4
		g_MOORE.u_sm/div/quotient_reg[7]_bret__0
		g_MOORE.u_sm/div/quotient_reg[7]_bret__1
		g_MOORE.u_sm/div/quotient_reg[7]_bret__2
		g_MOORE.u_sm/div/quotient_reg[7]_bret__3
		g_MOORE.u_sm/div/quotient_reg[7]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[7]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[7]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[8]_bret
		g_MOORE.u_sm/div/quotient_reg[8]_bret__0
		g_MOORE.u_sm/div/quotient_reg[8]_bret__2
		g_MOORE.u_sm/div/quotient_reg[8]_bret__3
		g_MOORE.u_sm/div/quotient_reg[8]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[8]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[8]_bret_bret__1
		g_MOORE.u_sm/div/quotient_reg[9]_bret__0
		g_MOORE.u_sm/div/quotient_reg[9]_bret__1
		g_MOORE.u_sm/div/quotient_reg[9]_bret__2
		g_MOORE.u_sm/div/quotient_reg[9]_bret__3
		g_MOORE.u_sm/div/quotient_reg[9]_bret_bret
		g_MOORE.u_sm/div/quotient_reg[9]_bret_bret__0
		g_MOORE.u_sm/div/quotient_reg[9]_bret_bret__1
 
Z8-5816h px 
K
Retiming module %s4230*oasys2
`divider_nr' done

Z8-5816h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[30]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[30]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[29]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[29]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[28]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[28]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[27]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[27]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[26]_bret__12

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[26]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[25]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[25]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[24]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[24]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[23]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[23]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[22]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[22]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[21]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[21]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[20]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[20]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[19]_bret__12

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[19]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[18]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[18]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[17]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[17]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[16]_bret__12

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[16]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[15]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[15]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[14]_bret__12

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[14]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[13]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[13]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[12]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[12]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[11]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[11]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[10]_bret__12

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[10]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[9]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[9]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[8]_bret__12

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[8]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[7]_bret2

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[7]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[6]_bret__12

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[6]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[5]_bret__12

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[5]_bret__42

divider_nrZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
quotient_reg[4]_bret__42

divider_nrZ8-3332h px 

Retiming module %s4230*oasys2J
H`calculator_moore`
	Numbers of forward move = 0, and backward move = 0

Z8-5816h px 
Q
Retiming module %s4230*oasys2
`calculator_moore' done

Z8-5816h px 
}
Retiming module %s4230*oasys2G
E`seven_segment`
	Numbers of forward move = 0, and backward move = 0

Z8-5816h px 
N
Retiming module %s4230*oasys2
`seven_segment' done

Z8-5816h px 
~
Retiming module %s4230*oasys2H
F`calculator_top`
	Numbers of forward move = 0, and backward move = 0

Z8-5816h px 
O
Retiming module %s4230*oasys2
`calculator_top' done

Z8-5816h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
}Finished Technology Mapping : Time (s): cpu = 00:01:20 ; elapsed = 00:02:58 . Memory (MB): peak = 1825.875 ; gain = 1187.434
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
-
%s
*synth2
Start IO Insertion
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
h
'tying undriven pin %s:%s to constant 0
3295*oasys2
op_store_inferred2
in0[4]Z8-3295h px 
h
'tying undriven pin %s:%s to constant 0
3295*oasys2
op_store_inferred2
in0[3]Z8-3295h px 
h
'tying undriven pin %s:%s to constant 0
3295*oasys2
op_store_inferred2
in0[2]Z8-3295h px 
h
'tying undriven pin %s:%s to constant 0
3295*oasys2
op_store_inferred2
in0[1]Z8-3295h px 
h
'tying undriven pin %s:%s to constant 0
3295*oasys2
op_store_inferred2
in0[0]Z8-3295h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2y
wFinished IO Insertion : Time (s): cpu = 00:01:22 ; elapsed = 00:03:01 . Memory (MB): peak = 1825.875 ; gain = 1187.434
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
£
%s*synth2
Finished Renaming Generated Instances : Time (s): cpu = 00:01:22 ; elapsed = 00:03:01 . Memory (MB): peak = 1825.875 ; gain = 1187.434
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
 
%s*synth2
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:22 ; elapsed = 00:03:01 . Memory (MB): peak = 1825.875 ; gain = 1187.434
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished Renaming Generated Ports : Time (s): cpu = 00:01:22 ; elapsed = 00:03:01 . Memory (MB): peak = 1825.875 ; gain = 1187.434
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
¡
%s*synth2
Finished Handling Custom Attributes : Time (s): cpu = 00:01:22 ; elapsed = 00:03:02 . Memory (MB): peak = 1825.875 ; gain = 1187.434
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished Renaming Generated Nets : Time (s): cpu = 00:01:22 ; elapsed = 00:03:02 . Memory (MB): peak = 1825.875 ; gain = 1187.434
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
©
%s
*synth2
---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
,
%s
*synth2

Retiming Report:
h p
x
 
7
%s
*synth2
+--------------------+-----+
h p
x
 
8
%s
*synth2 
|Retiming summary:   |     | 
h p
x
 
7
%s
*synth2
+--------------------+-----+
h p
x
 
8
%s
*synth2 
|Forward Retiming    | -1  | 
h p
x
 
8
%s
*synth2 
|Backward Retiming   | 57  | 
h p
x
 
8
%s
*synth2 
|New registers added | 274 | 
h p
x
 
8
%s
*synth2 
|Registers deleted   | 30  | 
h p
x
 
8
%s
*synth2 
+--------------------+-----+

h p
x
 
¬
%s
*synth2
---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
 

%s
*synth2
+-----------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
 

%s
*synth2
|Module Name      | DSP Mapping  | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
 

%s
*synth2
+-----------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
 

%s
*synth2
|calculator_moore | A*B          | 17     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
 

%s
*synth2
|calculator_moore | PCIN>>17+A*B | 16     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
 

%s
*synth2
+-----------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h p
x
 
/
%s
*synth2

Report BlackBoxes: 
h p
x
 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
 
=
%s
*synth2%
#|1     |sys_pll       |         1|
h p
x
 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
 
/
%s*synth2

Report Cell Usage: 
h px 
3
%s*synth2
+------+--------+------+
h px 
3
%s*synth2
|      |Cell    |Count |
h px 
3
%s*synth2
+------+--------+------+
h px 
3
%s*synth2
|1     |sys_pll |     1|
h px 
3
%s*synth2
|2     |CARRY4  |    38|
h px 
3
%s*synth2
|3     |DSP48E1 |     2|
h px 
3
%s*synth2
|4     |LUT1    |    26|
h px 
3
%s*synth2
|5     |LUT2    |   113|
h px 
3
%s*synth2
|6     |LUT3    |    34|
h px 
3
%s*synth2
|7     |LUT4    |   115|
h px 
3
%s*synth2
|8     |LUT5    |   203|
h px 
3
%s*synth2
|9     |LUT6    |   358|
h px 
3
%s*synth2
|10    |MUXF7   |    39|
h px 
3
%s*synth2
|11    |FDRE    |   321|
h px 
3
%s*synth2
|12    |IBUF    |    22|
h px 
3
%s*synth2
|13    |OBUF    |    16|
h px 
3
%s*synth2
+------+--------+------+
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 

%s*synth2
Finished Writing Synthesis Report : Time (s): cpu = 00:01:22 ; elapsed = 00:03:02 . Memory (MB): peak = 1825.875 ; gain = 1187.434
h px 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 59 warnings.
h p
x
 

%s
*synth2
Synthesis Optimization Runtime : Time (s): cpu = 00:01:18 ; elapsed = 00:02:59 . Memory (MB): peak = 1825.875 ; gain = 1108.355
h p
x
 

%s
*synth2
Synthesis Optimization Complete : Time (s): cpu = 00:01:22 ; elapsed = 00:03:02 . Memory (MB): peak = 1825.875 ; gain = 1187.434
h p
x
 
B
 Translating synthesized netlist
350*projectZ1-571h px 
º
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0152

1825.8752
0.000Z17-268h px 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
79Z29-17h px 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px 
¶
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1825.8752
0.000Z17-268h px 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

b72d95a2Z4-1430h px 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452
602
02
0Z4-41h px 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px 
­
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:242

00:03:082

1825.8752

1390.199Z17-268h px 
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0072

1825.8752
0.000Z17-268h px 
Ð
 The %s '%s' has been generated.
621*common2

checkpoint2}
{C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/build/calculator.runs/synth_1/calculator_top.dcpZ17-1381h px 
©
Executing command : %s
56330*	planAhead2g
ereport_utilization -file calculator_top_utilization_synth.rpt -pb calculator_top_utilization_synth.pbZ12-24828h px 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Feb  5 22:10:26 2025Z17-206h px 


End Record