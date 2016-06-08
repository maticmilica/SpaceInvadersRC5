##############################################################################
## Filename:          C:\materija\RA77-2013\LPRS2_projekat-master\LPRS2_projekat-master/drivers/rc5controller_v1_00_a/data/rc5controller_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Thu May 19 11:21:26 2016 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "rc5controller" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
