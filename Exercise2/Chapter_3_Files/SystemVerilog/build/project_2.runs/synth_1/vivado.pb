
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/student/Desktop/CSEE4280/CH3/SystemVerilog/build/project_2.srcs/utils_1/imports/synth_1/leading_ones.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2p
n/home/student/Desktop/CSEE4280/CH3/SystemVerilog/build/project_2.srcs/utils_1/imports/synth_1/leading_ones.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
e
Command: %s
53*	vivadotcl24
2synth_design -top project_2 -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
7Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
32372Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1871.645 ; gain = 427.832 ; free physical = 1035 ; free virtual = 5287
h px� 
�
synthesizing module '%s'%s4497*oasys2
	project_22
 2E
A/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/project_2.sv2
88@Z8-6157h px� 
T
%s
*synth2<
:	Parameter SELECTOR bound to: UNIQUE_CASE - type: string 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
leading_ones2
 2H
D/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/leading_ones.sv2
88@Z8-6157h px� 
T
%s
*synth2<
:	Parameter SELECTOR bound to: UNIQUE_CASE - type: string 
h p
x
� 
H
%s
*synth20
.	Parameter BITS bound to: 16 - type: integer 
h p
x
� 
�
Gfound qualifier unique on case statement: implementing as parallel_case294*oasys2H
D/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/leading_ones.sv2
238@Z8-294h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
leading_ones2
 2
02
12H
D/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/leading_ones.sv2
88@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
add_sub2
 2C
?/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/add_sub.sv2
88@Z8-6157h px� 
L
%s
*synth24
2	Parameter SELECTOR bound to: ADD - type: string 
h p
x
� 
H
%s
*synth20
.	Parameter BITS bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
add_sub2
 2
02
12C
?/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/add_sub.sv2
88@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
add_sub__parameterized02
 2C
?/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/add_sub.sv2
88@Z8-6157h px� 
L
%s
*synth24
2	Parameter SELECTOR bound to: SUB - type: string 
h p
x
� 
H
%s
*synth20
.	Parameter BITS bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
add_sub__parameterized02
 2
02
12C
?/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/add_sub.sv2
88@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

num_ones2
 2D
@/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/num_ones.sv2
88@Z8-6157h px� 
H
%s
*synth20
.	Parameter BITS bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

num_ones2
 2
02
12D
@/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/num_ones.sv2
88@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mult2
 2@
</home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/mult.sv2
88@Z8-6157h px� 
H
%s
*synth20
.	Parameter BITS bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mult2
 2
02
12@
</home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/mult.sv2
88@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2E
A/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/project_2.sv2
408@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	project_22
 2
02
12E
A/home/student/Desktop/CSEE4280/CH3/SystemVerilog/hdl/project_2.sv2
88@Z8-6155h px� 
V
%Unused top level parameter/generic %s3301*oasys2
UNIQUE_CASEZ8-3301h px� 
T
%Unused top level parameter/generic %s3301*oasys2
	TEST_CASEZ8-3301h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1944.613 ; gain = 500.801 ; free physical = 943 ; free virtual = 5196
h px� 
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1959.457 ; gain = 515.645 ; free physical = 941 ; free virtual = 5195
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
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1959.457 ; gain = 515.645 ; free physical = 941 ; free virtual = 5195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1959.4572
0.0002
9412
5195Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2C
?/home/student/Desktop/CSEE4280/CH3/xdc/Nexys-A7-100T-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2C
?/home/student/Desktop/CSEE4280/CH3/xdc/Nexys-A7-100T-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2A
?/home/student/Desktop/CSEE4280/CH3/xdc/Nexys-A7-100T-Master.xdc2
.Xil/project_2_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2068.2072
0.0002
9312
5184Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2

00:00:002

00:00:002

2068.2072
0.0002
9312
5184Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 2068.207 ; gain = 624.395 ; free physical = 929 ; free virtual = 5183
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
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 2076.211 ; gain = 632.398 ; free physical = 929 ; free virtual = 5183
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
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 2076.211 ; gain = 632.398 ; free physical = 929 ; free virtual = 5183
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
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 2076.211 ; gain = 632.398 ; free physical = 928 ; free virtual = 5182
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
,	   2 Input    9 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    9 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	  16 Input    5 Bit       Adders := 1     
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
,	  17 Input    5 Bit        Muxes := 1     
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2076.211 ; gain = 632.398 ; free physical = 898 ; free virtual = 5156
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
@
%s
*synth2(
&Start Applying XDC Timing Constraints
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2136.211 ; gain = 692.398 ; free physical = 818 ; free virtual = 5077
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
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2136.211 ; gain = 692.398 ; free physical = 818 ; free virtual = 5076
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
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2148.227 ; gain = 704.414 ; free physical = 807 ; free virtual = 5066
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
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:36 ; elapsed = 00:00:36 . Memory (MB): peak = 2308.039 ; gain = 864.227 ; free physical = 668 ; free virtual = 4927
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:36 ; elapsed = 00:00:36 . Memory (MB): peak = 2308.039 ; gain = 864.227 ; free physical = 668 ; free virtual = 4927
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:36 ; elapsed = 00:00:36 . Memory (MB): peak = 2308.039 ; gain = 864.227 ; free physical = 668 ; free virtual = 4927
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:36 ; elapsed = 00:00:36 . Memory (MB): peak = 2308.039 ; gain = 864.227 ; free physical = 668 ; free virtual = 4927
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:36 ; elapsed = 00:00:36 . Memory (MB): peak = 2308.039 ; gain = 864.227 ; free physical = 668 ; free virtual = 4927
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:36 ; elapsed = 00:00:36 . Memory (MB): peak = 2308.039 ; gain = 864.227 ; free physical = 668 ; free virtual = 4926
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
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |CARRY4 |    18|
h px� 
2
%s*synth2
|2     |LUT1   |     2|
h px� 
2
%s*synth2
|3     |LUT2   |    44|
h px� 
2
%s*synth2
|4     |LUT3   |    24|
h px� 
2
%s*synth2
|5     |LUT4   |    29|
h px� 
2
%s*synth2
|6     |LUT5   |    21|
h px� 
2
%s*synth2
|7     |LUT6   |    46|
h px� 
2
%s*synth2
|8     |IBUF   |    21|
h px� 
2
%s*synth2
|9     |OBUF   |    16|
h px� 
2
%s*synth2
+------+-------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:36 ; elapsed = 00:00:36 . Memory (MB): peak = 2308.039 ; gain = 864.227 ; free physical = 668 ; free virtual = 4926
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 2308.039 ; gain = 755.477 ; free physical = 667 ; free virtual = 4925
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:36 ; elapsed = 00:00:36 . Memory (MB): peak = 2308.047 ; gain = 864.227 ; free physical = 667 ; free virtual = 4925
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012

00:00:002

2308.0472
0.0002
8392
5098Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
18Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2332.0512
0.0002
8392
5098Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

7564ce66Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352
32
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:442

00:00:432

2332.0512	
965.7702
8392
5098Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1615.932; main = 1531.766; forked = 275.302Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2=
;(MB): overall = 3067.484; main = 2332.055; forked = 917.254Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2356.0622
0.0002
8392
5098Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2]
[/home/student/Desktop/CSEE4280/CH3/SystemVerilog/build/project_2.runs/synth_1/project_2.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2]
[report_utilization -file project_2_utilization_synth.rpt -pb project_2_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Jan 23 13:25:42 2025Z17-206h px� 


End Record