set_property -dict { PACKAGE_PIN K1 IOSTANDARD LVCMOS33 } [get_ports { instruction[7] }]; #SW 15
set_property -dict { PACKAGE_PIN K2 IOSTANDARD LVCMOS33 } [get_ports { instruction[6] }]; #SW 14

set_property -dict { PACKAGE_PIN R2 IOSTANDARD LVCMOS33 } [get_ports { instruction[5] }]; #SW 5
set_property -dict { PACKAGE_PIN T1 IOSTANDARD LVCMOS33 } [get_ports { instruction[4] }]; #SW 4
set_property -dict { PACKAGE_PIN T2 IOSTANDARD LVCMOS33 } [get_ports { instruction[3] }]; #SW 3
set_property -dict { PACKAGE_PIN U1 IOSTANDARD LVCMOS33 } [get_ports { instruction[2] }]; #SW 2
set_property -dict { PACKAGE_PIN U2 IOSTANDARD LVCMOS33 } [get_ports { instruction[1] }]; #SW 1
set_property -dict { PACKAGE_PIN V2 IOSTANDARD LVCMOS33 } [get_ports { instruction[0] }]; #SW 0

set_property -dict { PACKAGE_PIN F2 IOSTANDARD LVCMOS33 } [get_ports { result[3] }]; #LED 3
set_property -dict { PACKAGE_PIN F1 IOSTANDARD LVCMOS33 } [get_ports { result[2] }]; #LED 2
set_property -dict { PACKAGE_PIN G2 IOSTANDARD LVCMOS33 } [get_ports { result[1] }]; #LED 1
set_property -dict { PACKAGE_PIN G1 IOSTANDARD LVCMOS33 } [get_ports { result[0] }]; #LED 0
