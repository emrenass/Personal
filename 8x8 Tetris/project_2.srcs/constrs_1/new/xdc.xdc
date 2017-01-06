# Clock signal
set_property PACKAGE_PIN W5 [get_ports clock]							
	set_property IOSTANDARD LVCMOS33 [get_ports clock]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clock]
#Pmod Header JC
#Sch name = JC1
set_property PACKAGE_PIN K17 [get_ports DS]                    
    set_property IOSTANDARD LVCMOS33 [get_ports DS]
#Sch name = JC2
set_property PACKAGE_PIN M18 [get_ports oe]                    
    set_property IOSTANDARD LVCMOS33 [get_ports oe]
#Sch name = JC3
set_property PACKAGE_PIN N17 [get_ports ST_CP]                    
    set_property IOSTANDARD LVCMOS33 [get_ports ST_CP]
#Sch name = JC4
set_property PACKAGE_PIN P18 [get_ports SH_CP]                    
    set_property IOSTANDARD LVCMOS33 [get_ports SH_CP]
#Sch name = JC7
set_property PACKAGE_PIN L17 [get_ports MR]                    
    set_property IOSTANDARD LVCMOS33 [get_ports MR]

set_property PACKAGE_PIN U17 [get_ports {toLeftButton}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {toLeftButton}]

set_property PACKAGE_PIN T18 [get_ports toRightButton]						
	set_property IOSTANDARD LVCMOS33 [get_ports toRightButton]
set_property PACKAGE_PIN U18 [get_ports reset]						
	set_property IOSTANDARD LVCMOS33 [get_ports reset]
#Pmod Header JB
#Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {cathode[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[0]}]
#Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {cathode[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[1]}]
#Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {cathode[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[2]}]
#Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {cathode[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[3]}]
#Sch name = JB7
set_property PACKAGE_PIN A15 [get_ports {cathode[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[4]}]
#Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports {cathode[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[5]}]
#Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {cathode[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[6]}]
#Sch name = JB10 
set_property PACKAGE_PIN C16 [get_ports {cathode[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {cathode[7]}]
	
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

set_property PACKAGE_PIN V7 [get_ports dp]                            
    set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {an[0]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]

