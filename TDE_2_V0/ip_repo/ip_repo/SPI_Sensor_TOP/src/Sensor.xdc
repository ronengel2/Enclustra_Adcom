#SPI X
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS18} [get_ports ADC_X_sdo]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS18} [get_ports ADC_X_cnv]
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS18} [get_ports ADC_X_sdi]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS18} [get_ports ADC_X_sck]
#SPI Y
set_property -dict {PACKAGE_PIN J2    IOSTANDARD LVCMOS18  } [get_ports {ADC_Y_cnv}]
set_property -dict {PACKAGE_PIN K2    IOSTANDARD LVCMOS18  } [get_ports {ADC_Y_sdo}]
set_property -dict {PACKAGE_PIN H1    IOSTANDARD LVCMOS18  } [get_ports {ADC_Y_sdi}]
set_property -dict {PACKAGE_PIN J1    IOSTANDARD LVCMOS18  } [get_ports {ADC_Y_sck}]

#SPI Z
set_property -dict {PACKAGE_PIN H3    IOSTANDARD LVCMOS18  } [get_ports {ADC_Z_cnv}]
set_property -dict {PACKAGE_PIN H4    IOSTANDARD LVCMOS18  } [get_ports {ADC_Z_sdo}]
set_property -dict {PACKAGE_PIN P6    IOSTANDARD LVCMOS18  } [get_ports {ADC_Z_sdi}]
set_property -dict {PACKAGE_PIN P7    IOSTANDARD LVCMOS18  } [get_ports {ADC_Z_sck}]
                                               
#SPI                                           
set_property -dict {PACKAGE_PIN H6    IOSTANDARD LVCMOS18  } [get_ports {ADC_W_cnv}]
set_property -dict {PACKAGE_PIN J6    IOSTANDARD LVCMOS18  } [get_ports {ADC_W_sdo}]
set_property -dict {PACKAGE_PIN J4    IOSTANDARD LVCMOS18  } [get_ports {ADC_W_sdi}]
set_property -dict {PACKAGE_PIN J5    IOSTANDARD LVCMOS18  } [get_ports {ADC_W_sck}]

#set_property -dict {PACKAGE_PIN Y12 IOSTANDARD LVCMOS18} [get_ports Valid]


set_property -dict {PACKAGE_PIN AD4 IOSTANDARD DIFF_SSTL12_DCI} [get_ports CLK100_PL_clk_n]
set_property -dict {PACKAGE_PIN AD5 IOSTANDARD DIFF_SSTL12_DCI} [get_ports CLK100_PL_clk_p]





set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
