
Y
Command: %s
53*	vivadotcl2(
&opt_design -directive ExploreWithRemapZ4-113h px� 
[
$Directive used for opt_design is: %s67*	vivadotcl2
ExploreWithRemapZ4-136h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7a100tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7a100tZ17-349h px� 
\
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_designZ4-22h px� 
@

Starting %s Task
103*constraints2
DRCZ18-103h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
C
DRC finished with %s
272*project2

0 ErrorsZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 1307.996 ; gain = 18.090h px� 
O

Starting %s Task
103*constraints2
Logic OptimizationZ18-103h px� 
K

Phase %s%s
101*constraints2
1 2
InitializationZ18-101h px� 
_

Phase %s%s
101*constraints2
1.1 2"
 Core Generation And Design SetupZ18-101h px� 
\
%s*common2C
APhase 1.1 Core Generation And Design Setup | Checksum: 26755ae3b
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.003 . Memory (MB): peak = 1684.617 ; gain = 0.000h px� 
a

Phase %s%s
101*constraints2
1.2 2$
"Setup Constraints And Sort NetlistZ18-101h px� 
^
%s*common2E
CPhase 1.2 Setup Constraints And Sort Netlist | Checksum: 26755ae3b
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.005 . Memory (MB): peak = 1684.617 ; gain = 0.000h px� 
H
%s*common2/
-Phase 1 Initialization | Checksum: 26755ae3b
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.005 . Memory (MB): peak = 1684.617 ; gain = 0.000h px� 
d

Phase %s%s
101*constraints2
2 2)
'Timer Update And Timing Data CollectionZ18-101h px� 
K

Phase %s%s
101*constraints2
2.1 2
Timer UpdateZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
H
%s*common2/
-Phase 2.1 Timer Update | Checksum: 26755ae3b
h px� 
�

%s
*constraints2b
`Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.129 . Memory (MB): peak = 1708.883 ; gain = 24.266h px� 
U

Phase %s%s
101*constraints2
2.2 2
Timing Data CollectionZ18-101h px� 
R
%s*common29
7Phase 2.2 Timing Data Collection | Checksum: 26755ae3b
h px� 
�

%s
*constraints2b
`Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.143 . Memory (MB): peak = 1708.883 ; gain = 24.266h px� 
a
%s*common2H
FPhase 2 Timer Update And Timing Data Collection | Checksum: 26755ae3b
h px� 
�

%s
*constraints2b
`Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.143 . Memory (MB): peak = 1708.883 ; gain = 24.266h px� 
E

Phase %s%s
101*constraints2
3 2

RetargetZ18-101h px� 
V
1Number of loadless carry chains removed were: %s
839*opt2
0Z31-1851h px� 
�
XTotal Chains To Be Transformed Were: %s AND Number of Transformed insts Created are: %s
832*opt2
02
0Z31-1834h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
9
Retargeted %s cell(s).
49*opt2
0Z31-49h px� 
B
%s*common2)
'Phase 3 Retarget | Checksum: 26755ae3b
h px� 
�

%s
*constraints2b
`Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.164 . Memory (MB): peak = 1708.883 ; gain = 24.266h px� 
4
Retarget | Checksum: 26755ae3b
*commonh px� 
c
.Phase %s created %s cells and removed %s cells267*opt2

Retarget2
02
0Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2

Retarget2
39Z31-1021h px� 
Q

Phase %s%s
101*constraints2
4 2
Constant propagationZ18-101h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
N
%s*common25
3Phase 4 Constant propagation | Checksum: 26755ae3b
h px� 
�

%s
*constraints2b
`Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.172 . Memory (MB): peak = 1708.883 ; gain = 24.266h px� 
@
+Constant propagation | Checksum: 26755ae3b
*commonh px� 
o
.Phase %s created %s cells and removed %s cells267*opt2
Constant propagation2
02
0Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Constant propagation2
38Z31-1021h px� 
B

Phase %s%s
101*constraints2
5 2
SweepZ18-101h px� 
b
2Building netlist checker database with flags, 0x%s23991*constraints2
8Z18-11670h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2*
(Done building netlist checker database: 2

00:00:002

00:00:002

1708.8832
0.000Z17-268h px� 
b
2Building netlist checker database with flags, 0x%s23991*constraints2
8Z18-11670h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2*
(Done building netlist checker database: 2

00:00:002

00:00:002

1708.8832
0.000Z17-268h px� 
?
%s*common2&
$Phase 5 Sweep | Checksum: 19b96bbf2
h px� 
�

%s
*constraints2b
`Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.190 . Memory (MB): peak = 1708.883 ; gain = 24.266h px� 
1
Sweep | Checksum: 19b96bbf2
*commonh px� 
`
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2
02
0Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2
77Z31-1021h px� 
N

Phase %s%s
101*constraints2
6 2
BUFG optimizationZ18-101h px� 
K
%s*common22
0Phase 6 BUFG optimization | Checksum: 19b96bbf2
h px� 
�

%s
*constraints2b
`Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.219 . Memory (MB): peak = 1708.883 ; gain = 24.266h px� 
=
(BUFG optimization | Checksum: 19b96bbf2
*commonh px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2
BUFG optimization2
02
02
0Z31-662h px� 
X

Phase %s%s
101*constraints2
7 2
Shift Register OptimizationZ18-101h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02
02
02
0Z31-1064h px� 
U
%s*common2<
:Phase 7 Shift Register Optimization | Checksum: 19b96bbf2
h px� 
�

%s
*constraints2b
`Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.222 . Memory (MB): peak = 1708.883 ; gain = 24.266h px� 
G
2Shift Register Optimization | Checksum: 19b96bbf2
*commonh px� 
v
.Phase %s created %s cells and removed %s cells267*opt2
Shift Register Optimization2
02
0Z31-389h px� 
t
Jcontrol_set_opt supports Versal devices only, and device %s is unsupported769*opt2
7a100tZ31-1555h px� 
B

Phase %s%s
101*constraints2
8 2
RemapZ18-101h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[28]g_MOORE.u_sm/accumulator[28]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[27]g_MOORE.u_sm/accumulator[27]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[15]g_MOORE.u_sm/accumulator[15]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[16]g_MOORE.u_sm/accumulator[16]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[17]g_MOORE.u_sm/accumulator[17]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[14]g_MOORE.u_sm/accumulator[14]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[13]g_MOORE.u_sm/accumulator[13]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[10]g_MOORE.u_sm/accumulator[10]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2<
g_MOORE.u_sm/accumulator[9]g_MOORE.u_sm/accumulator[9]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[11]g_MOORE.u_sm/accumulator[11]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[12]g_MOORE.u_sm/accumulator[12]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[24]g_MOORE.u_sm/accumulator[24]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[23]g_MOORE.u_sm/accumulator[23]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[25]g_MOORE.u_sm/accumulator[25]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2>
g_MOORE.u_sm/accumulator[26]g_MOORE.u_sm/accumulator[26]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2<
g_MOORE.u_sm/accumulator[4]g_MOORE.u_sm/accumulator[4]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2<
g_MOORE.u_sm/accumulator[2]g_MOORE.u_sm/accumulator[2]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2<
g_MOORE.u_sm/accumulator[3]g_MOORE.u_sm/accumulator[3]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2<
g_MOORE.u_sm/accumulator[0]g_MOORE.u_sm/accumulator[0]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2<
g_MOORE.u_sm/accumulator[1]g_MOORE.u_sm/accumulator[1]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2<
g_MOORE.u_sm/accumulator[8]g_MOORE.u_sm/accumulator[8]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2<
g_MOORE.u_sm/accumulator[6]g_MOORE.u_sm/accumulator[6]8Z31-233h px� 
�
3Net with MARK_DEBUG TRUE property was optimized: %s169*opt2<
g_MOORE.u_sm/accumulator[7]g_MOORE.u_sm/accumulator[7]8Z31-233h px� 
?
%s*common2&
$Phase 8 Remap | Checksum: 19a55b136
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 2143.340 ; gain = 458.723h px� 
1
Remap | Checksum: 19a55b136
*commonh px� 
`
.Phase %s created %s cells and removed %s cells267*opt2
Remap2
92
9Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Remap2
3Z31-1021h px� 
T

Phase %s%s
101*constraints2
9 2
Post Processing NetlistZ18-101h px� 
Q
%s*common28
6Phase 9 Post Processing Netlist | Checksum: 1f962456b
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 2143.340 ; gain = 458.723h px� 
C
.Post Processing Netlist | Checksum: 1f962456b
*commonh px� 
r
.Phase %s created %s cells and removed %s cells267*opt2
Post Processing Netlist2
02
0Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Post Processing Netlist2
5Z31-1021h px� 
J

Phase %s%s
101*constraints2
10 2
FinalizationZ18-101h px� 
k

Phase %s%s
101*constraints2
10.1 2-
+Finalizing Design Cores and Updating ShapesZ18-101h px� 
h
%s*common2O
MPhase 10.1 Finalizing Design Cores and Updating Shapes | Checksum: 2978ea31f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 2143.340 ; gain = 458.723h px� 
^

Phase %s%s
101*constraints2
10.2 2 
Verifying Netlist ConnectivityZ18-101h px� 
O

Starting %s Task
103*constraints2
Connectivity CheckZ18-103h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.009 . Memory (MB): peak = 2143.387 ; gain = 0.047h px� 
[
%s*common2B
@Phase 10.2 Verifying Netlist Connectivity | Checksum: 2978ea31f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 2143.387 ; gain = 458.770h px� 
G
%s*common2.
,Phase 10 Finalization | Checksum: 2978ea31f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 2143.387 ; gain = 458.770h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |               0  |               0  |                                             39  |
|  Constant propagation         |               0  |               0  |                                             38  |
|  Sweep                        |               0  |               0  |                                             77  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Remap                        |               9  |               9  |                                              3  |
|  Post Processing Netlist      |               0  |               0  |                                              5  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
P
%s*common27
5Ending Logic Optimization Task | Checksum: 2978ea31f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 2143.387 ; gain = 458.770h px� 
P

Starting %s Task
103*constraints2
Netlist ObfuscationZ18-103h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2143.3872
0.000Z17-268h px� 
Q
%s*common28
6Ending Netlist Obfuscation Task | Checksum: 2978ea31f
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.002 . Memory (MB): peak = 2143.387 ; gain = 0.000h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
392
232
02
0Z4-41h px� 
J
%s completed successfully
29*	vivadotcl2

opt_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
opt_design: 2

00:00:042

00:00:082

2143.3872	
853.480Z17-268h px� 
�
Executing command : %s
56330*	planAhead2q
oreport_drc -file calculator_top_drc_opted.rpt -pb calculator_top_drc_opted.pb -rpx calculator_top_drc_opted.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2q
oreport_drc -file calculator_top_drc_opted.rpt -pb calculator_top_drc_opted.pb -rpx calculator_top_drc_opted.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
�C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/build/calculator.runs/impl_1/calculator_top_drc_opted.rpt�C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/build/calculator.runs/impl_1/calculator_top_drc_opted.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0082

2157.7272
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:002
00:00:00.0152

2157.7272
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002
00:00:00.0062

2157.7272
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:002
00:00:00.0242

2157.7272
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002

00:00:002

2157.7272
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0042

2157.7272
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:002
00:00:00.0632

2157.7272
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
~C:/CSEE4280/The-FPGA-Programming-Handbook-Second-Edition/CH5/SystemVerilog/build/calculator.runs/impl_1/calculator_top_opt.dcpZ17-1381h px� 


End Record