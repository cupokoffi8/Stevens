
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:032default:default2
00:00:062default:default2
1339.2732default:default2
573.9532default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Alex/Desktop/theTTT/theTTT.srcs/utils_1/imports/synth_1/TicTacToe_shell.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2h
TC:/Users/Alex/Desktop/theTTT/theTTT.srcs/utils_1/imports/synth_1/TicTacToe_shell.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
}
Command: %s
53*	vivadotcl2L
8synth_design -top TicTacToe_shell -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
53082default:defaultZ8-7075h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:08 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2#
TicTacToe_shell2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
412default:default8@Z8-638h px� 
h
%s
*synth2P
<	Parameter CLOCK_DIVIDER_RATIO bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
system_clock_generator2default:default2n
ZC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/system_clock_generator.vhd2default:default2
232default:default2
clocking2default:default2*
system_clock_generator2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
1322default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2*
system_clock_generator2default:default2p
ZC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/system_clock_generator.vhd2default:default2
342default:default8@Z8-638h px� 
h
%s
*synth2P
<	Parameter CLOCK_DIVIDER_RATIO bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
system_clock_buffer2default:default2
BUFG2default:default2p
ZC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/system_clock_generator.vhd2default:default2
732default:default8@Z8-113h px� 
h
%s
*synth2P
<	Parameter DDR_CLK_EDGE bound to: SAME_EDGE - type: string 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter SRTYPE bound to: SYNC - type: string 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2)
clock_forwarding_ODDR2default:default2
ODDR2default:default2p
ZC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/system_clock_generator.vhd2default:default2
822default:default8@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2*
system_clock_generator2default:default2
02default:default2
12default:default2p
ZC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/system_clock_generator.vhd2default:default2
342default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
button_interface2default:default2j
VC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/input_conditioning.vhd2default:default2
232default:default2"
drop_monopulse2default:default2$
button_interface2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
1412default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
button_interface2default:default2l
VC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/input_conditioning.vhd2default:default2
332default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
button_interface2default:default2
02default:default2
12default:default2l
VC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/input_conditioning.vhd2default:default2
332default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
button_interface2default:default2j
VC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/input_conditioning.vhd2default:default2
232default:default2 
up_monopulse2default:default2$
button_interface2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
1482default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
button_interface2default:default2j
VC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/input_conditioning.vhd2default:default2
232default:default2"
down_monopulse2default:default2$
button_interface2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
1552default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
button_interface2default:default2j
VC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/input_conditioning.vhd2default:default2
232default:default2"
left_monopulse2default:default2$
button_interface2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
1622default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
button_interface2default:default2j
VC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/input_conditioning.vhd2default:default2
232default:default2#
right_monopulse2default:default2$
button_interface2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
1692default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

game_logic2default:default2b
NC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/game_logic.vhd2default:default2
222default:default2&
game_logic_control2default:default2

game_logic2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
1762default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

game_logic2default:default2d
NC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/game_logic.vhd2default:default2
462default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

game_logic2default:default2
02default:default2
12default:default2d
NC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/game_logic.vhd2default:default2
462default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

VGA_driver2default:default2b
NC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/VGA_driver.vhd2default:default2
232default:default2
vga_control2default:default2

VGA_driver2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
1932default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

VGA_driver2default:default2d
NC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/VGA_driver.vhd2default:default2
352default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

VGA_driver2default:default2
02default:default2
12default:default2d
NC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/VGA_driver.vhd2default:default2
352default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
pixel_generation2default:default2h
TC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/pixel_generation.vhd2default:default2
202default:default2-
pixel_generation_datapath2default:default2$
pixel_generation2default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
2022default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
pixel_generation2default:default2j
TC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/pixel_generation.vhd2default:default2
402default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
pixel_generation2default:default2
02default:default2
12default:default2j
TC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/pixel_generation.vhd2default:default2
402default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
TicTacToe_shell2default:default2
02default:default2
12default:default2i
SC:/Users/Alex/Desktop/theTTT/theTTT.srcs/sources_1/imports/VHDL/TicTacToe_shell.vhd2default:default2
412default:default8@Z8-256h px� 
�
%s*synth2�
wFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:12 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:12 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0192default:default2
1339.2732default:default2
0.0002default:defaultZ17-268h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
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
179*designutils2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2"
sw_ext_port[2]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
142default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
142default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2"
sw_ext_port[3]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
152default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
152default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2"
sw_ext_port[4]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
162default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
162default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2"
sw_ext_port[5]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
172default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
172default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2"
sw_ext_port[6]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
182default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
182default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2"
sw_ext_port[7]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
192default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
192default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2"
sw_ext_port[8]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
202default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
202default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2"
sw_ext_port[9]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
212default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
212default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
sw_ext_port[10]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
222default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
222default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
sw_ext_port[11]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
232default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
232default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
sw_ext_port[12]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
242default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
242default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
sw_ext_port[13]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
252default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
252default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
sw_ext_port[14]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
262default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
262default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
sw_ext_port[15]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
272default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
272default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[0]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
302default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
302default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[1]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
312default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
312default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[2]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
322default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
322default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[3]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
332default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
332default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[4]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
342default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
342default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[5]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
352default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
352default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[6]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
362default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
362default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[7]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
372default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
372default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[8]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
382default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
382default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2#
LED_ext_port[9]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
392default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
392default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2$
LED_ext_port[10]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
402default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
402default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2$
LED_ext_port[11]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
412default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
412default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2$
LED_ext_port[12]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
422default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
422default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2$
LED_ext_port[13]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
432default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
432default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2$
LED_ext_port[14]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
442default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
442default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2$
LED_ext_port[15]2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
452default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
452default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
PS2_CLK2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
1912default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
1912default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
PS2_DATA2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
1922default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default2
1922default:default8@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2z
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2x
dC:/Users/Alex/Desktop/theTTT/theTTT.srcs/constrs_1/imports/tic_tac_toe-main/Nexys-A7-100T-Master.xdc2default:default25
!.Xil/TicTacToe_shell_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1339.2732default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0642default:default2
1339.2732default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:23 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:23 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:23 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2$
button_interface2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2"
curr_state_reg2default:default2

game_logic2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_       button_output_low |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_  low_to_high_transition |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_      button_output_high |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_  high_to_low_transition |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2

sequential2default:default2$
button_interface2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  sstart |                           000000 |                           000000
2default:defaulth p
x
� 
�
%s
*synth2s
_                   spick |                           000001 |                           000001
2default:defaulth p
x
� 
�
%s
*synth2s
_                sctrmid1 |                           000010 |                           000110
2default:defaulth p
x
� 
�
%s
*synth2s
_              sctrright1 |                           000011 |                           000111
2default:defaulth p
x
� 
�
%s
*synth2s
_              sbtmright1 |                           000100 |                           001010
2default:defaulth p
x
� 
�
%s
*synth2s
_                sbtmmid1 |                           000101 |                           001001
2default:defaulth p
x
� 
�
%s
*synth2s
_               sbtmleft1 |                           000110 |                           001000
2default:defaulth p
x
� 
�
%s
*synth2s
_               sctrleft1 |                           000111 |                           000101
2default:defaulth p
x
� 
�
%s
*synth2s
_               stopleft1 |                           001000 |                           000010
2default:defaulth p
x
� 
�
%s
*synth2s
_                stopmid1 |                           001001 |                           000011
2default:defaulth p
x
� 
�
%s
*synth2s
_              stopright1 |                           001010 |                           000100
2default:defaulth p
x
� 
�
%s
*synth2s
_                  sdrop1 |                           001011 |                           010100
2default:defaulth p
x
� 
�
%s
*synth2s
_                sctrmid2 |                           001100 |                           001111
2default:defaulth p
x
� 
�
%s
*synth2s
_              sctrright2 |                           001101 |                           010000
2default:defaulth p
x
� 
�
%s
*synth2s
_              sbtmright2 |                           001110 |                           010011
2default:defaulth p
x
� 
�
%s
*synth2s
_                sbtmmid2 |                           001111 |                           010010
2default:defaulth p
x
� 
�
%s
*synth2s
_               sbtmleft2 |                           010000 |                           010001
2default:defaulth p
x
� 
�
%s
*synth2s
_               sctrleft2 |                           010001 |                           001110
2default:defaulth p
x
� 
�
%s
*synth2s
_               stopleft2 |                           010010 |                           001011
2default:defaulth p
x
� 
�
%s
*synth2s
_                stopmid2 |                           010011 |                           001100
2default:defaulth p
x
� 
�
%s
*synth2s
_              stopright2 |                           010100 |                           001101
2default:defaulth p
x
� 
�
%s
*synth2s
_                  sdrop2 |                           010101 |                           010101
2default:defaulth p
x
� 
�
%s
*synth2s
_                  scheck |                           010110 |                           010110
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE5 |                           010111 |                           011000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE4 |                           011000 |                           011001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                           011001 |                           011010
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                           011010 |                           011011
2default:defaulth p
x
� 
�
%s
*synth2s
_                iSTATE14 |                           011011 |                           011100
2default:defaulth p
x
� 
�
%s
*synth2s
_                iSTATE12 |                           011100 |                           011101
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE9 |                           011101 |                           011110
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE8 |                           011110 |                           011111
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE7 |                           011111 |                           100000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE6 |                           100000 |                           100001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE3 |                           100001 |                           100010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                           100010 |                           100011
2default:defaulth p
x
� 
�
%s
*synth2s
_                iSTATE15 |                           100011 |                           100100
2default:defaulth p
x
� 
�
%s
*synth2s
_                iSTATE13 |                           100100 |                           100101
2default:defaulth p
x
� 
�
%s
*synth2s
_                iSTATE11 |                           100101 |                           100110
2default:defaulth p
x
� 
�
%s
*synth2s
_                iSTATE10 |                           100110 |                           100111
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                           100111 |                           010111
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
curr_state_reg2default:default2

sequential2default:default2

game_logic2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:24 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 48    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input   12 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  40 Input    9 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	 112 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  40 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 10    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 43    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  10 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  40 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  24 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
@DSP Report: Generating DSP color_port4, operation Mode is: A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port4.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: Generating DSP color_port3, operation Mode is: C+(D+(A:0x3ffffe70))*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port5 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
}
%s
*synth2e
QDSP Report: Generating DSP color_port4, operation Mode is: (D+(A:0x3ffffec1))*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port4.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port5 is absorbed into DSP color_port4.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: Generating DSP color_port3, operation Mode is: C+A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
l
%s
*synth2T
@DSP Report: Generating DSP color_port4, operation Mode is: A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port4.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP color_port3, operation Mode is: PCIN+A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
l
%s
*synth2T
@DSP Report: Generating DSP color_port4, operation Mode is: A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port4.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP color_port3, operation Mode is: PCIN+A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: Generating DSP color_port3, operation Mode is: C+(D+(A:0x3fffff10))*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port5 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP color_port3, operation Mode is: PCIN+A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: Generating DSP color_port3, operation Mode is: C+A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: Generating DSP color_port3, operation Mode is: PCIN+(D+(A:0x3fffffb0))*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port5 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: Generating DSP color_port3, operation Mode is: C+A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: Generating DSP color_port3, operation Mode is: C+A*B.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port3 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator color_port4 is absorbed into DSP color_port3.
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:31 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px� 
�
%s*synth2�
�+-----------------+---------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name      | DSP Mapping               | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
�+-----------------+---------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | A*B                       | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | C+(D+(A:0x3ffffe70))*B    | 10     | 11     | 21     | 10     | 21     | 0    | 0    | 0    | 0    | 0     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | (D+(A:0x3ffffec1))*B      | 10     | 11     | -      | 10     | 22     | 0    | 0    | -    | 0    | 0     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | C+A*B                     | 11     | 11     | 21     | -      | 21     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | A*B                       | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | PCIN+A*B                  | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | A*B                       | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | PCIN+A*B                  | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | C+(D+(A:0x3fffff10))*B    | 9      | 11     | 21     | 10     | 21     | 0    | 0    | 0    | 0    | 0     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | PCIN+A*B                  | 11     | 11     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | C+A*B                     | 11     | 11     | 22     | -      | 22     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | PCIN+(D+(A:0x3fffffb0))*B | 8      | 11     | -      | 10     | 22     | 0    | 0    | -    | 0    | 0     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | C+A*B                     | 11     | 11     | 22     | -      | 22     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|pixel_generation | C+A*B                     | 11     | 11     | 22     | -      | 22     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�+-----------------+---------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:42 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:42 . Memory (MB): peak = 1339.273 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:17 ; elapsed = 00:00:43 . Memory (MB): peak = 1351.305 ; gain = 12.031
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:48 . Memory (MB): peak = 1368.516 ; gain = 29.242
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:48 . Memory (MB): peak = 1368.516 ; gain = 29.242
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:19 ; elapsed = 00:00:49 . Memory (MB): peak = 1368.516 ; gain = 29.242
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:19 ; elapsed = 00:00:49 . Memory (MB): peak = 1368.516 ; gain = 29.242
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:49 . Memory (MB): peak = 1368.516 ; gain = 29.242
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:19 ; elapsed = 00:00:49 . Memory (MB): peak = 1368.516 ; gain = 29.242
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
i
%s
*synth2Q
=
DSP Final Report (the ' indicates corresponding REG is set)
2default:defaulth p
x
� 
�
%s
*synth2�
�+-----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name      | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+-----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | A*B         | 30     | 18     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | C+D+A*B     | 30     | 18     | 48     | 10     | 21     | 0    | 0    | 0    | 0    | 0     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | D+A*B       | 30     | 18     | -      | 10     | 22     | 0    | 0    | -    | 0    | 0     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | C+A*B       | 30     | 18     | 48     | -      | 21     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | A*B         | 30     | 18     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | PCIN+A*B    | 30     | 18     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | A*B'        | 30     | 10     | -      | -      | 22     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | PCIN+A*B    | 30     | 18     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | C+D+A*B     | 30     | 18     | 48     | 10     | 21     | 0    | 0    | 0    | 0    | 0     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | PCIN+A*B    | 30     | 18     | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | C+A*B       | 30     | 18     | 48     | -      | 22     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | PCIN+D+A*B  | 30     | 18     | -      | 10     | 22     | 0    | 0    | -    | 0    | 0     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | C+A*B       | 30     | 18     | 48     | -      | 22     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|pixel_generation | C+A*B       | 30     | 18     | 48     | -      | 22     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+-----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|1     |BUFG    |     2|
2default:defaulth px� 
E
%s*synth2-
|2     |CARRY4  |    75|
2default:defaulth px� 
E
%s*synth2-
|3     |DSP48E1 |    14|
2default:defaulth px� 
E
%s*synth2-
|8     |LUT1    |    31|
2default:defaulth px� 
E
%s*synth2-
|9     |LUT2    |   389|
2default:defaulth px� 
E
%s*synth2-
|10    |LUT3    |    55|
2default:defaulth px� 
E
%s*synth2-
|11    |LUT4    |    74|
2default:defaulth px� 
E
%s*synth2-
|12    |LUT5    |    80|
2default:defaulth px� 
E
%s*synth2-
|13    |LUT6    |   278|
2default:defaulth px� 
E
%s*synth2-
|14    |MUXF7   |     2|
2default:defaulth px� 
E
%s*synth2-
|15    |ODDR    |     1|
2default:defaulth px� 
E
%s*synth2-
|16    |FDRE    |   130|
2default:defaulth px� 
E
%s*synth2-
|17    |IBUF    |     8|
2default:defaulth px� 
E
%s*synth2-
|18    |OBUF    |    14|
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:19 ; elapsed = 00:00:49 . Memory (MB): peak = 1368.516 ; gain = 29.242
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:45 . Memory (MB): peak = 1368.516 ; gain = 29.242
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:49 . Memory (MB): peak = 1368.516 ; gain = 29.242
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0222default:default2
1368.5162default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
922default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1384.2302default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
409816502default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
502default:default2
332default:default2
322default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:202default:default2
00:00:572default:default2
1384.2302default:default2
44.9572default:defaultZ17-268h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2X
DC:/Users/Alex/Desktop/theTTT/theTTT.runs/synth_1/TicTacToe_shell.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
tExecuting : report_utilization -file TicTacToe_shell_utilization_synth.rpt -pb TicTacToe_shell_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Dec 22 18:25:32 20222default:defaultZ17-206h px� 


End Record