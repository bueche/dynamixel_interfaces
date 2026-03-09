std_msgs/Header header

# all arrays in tandem, elements at ith position correspond to servo noted in id[]
# see corresponding servo manuals for return values and ranges

int32 comm_state
int32[] id
bool[] torque_state
int32[] dxl_hw_state
int16[] present_temperature # Unit: Celsius, scaled by 1
int16[] present_input_voltage # Unit: mV, scaled by 10 (123 means 12.3V)
int16[] present_current # Unit: mA, scaled by 1 and +/- indicates rotation direction
int16[] present_load # Unit: 0.1% (209 means 20.9%) and +/- indicates rotation direction

int32 COMM_STATE_OK = 0
int32 COMM_STATE_CANNOT_FIND_CONTROL_ITEM = -1
int32 COMM_STATE_OPEN_PORT_FAIL = -2
int32 COMM_STATE_INDIRECT_ADDR_FAIL = -3
int32 COMM_STATE_ITEM_WRITE_FAIL = -4
int32 COMM_STATE_ITEM_READ_FAIL = -5
int32 COMM_STATE_SYNC_WRITE_FAIL = -6
int32 COMM_STATE_SYNC_READ_FAIL = -7
int32 COMM_STATE_SET_SYNC_WRITE_FAIL = -8
int32 COMM_STATE_SET_SYNC_READ_FAIL = -9
int32 COMM_STATE_BULK_WRITE_FAIL = -10
int32 COMM_STATE_BULK_READ_FAIL = -11
int32 COMM_STATE_SET_BULK_WRITE_FAIL = -12
int32 COMM_STATE_SET_BULK_READ_FAIL = -13
int32 COMM_STATE_SET_READ_ITEM_FAIL = -14
int32 COMM_STATE_SET_WRITE_ITEM_FAIL = -15
int32 COMM_STATE_DXL_HARDWARE_ERROR = -16
int32 COMM_STATE_DXL_REBOOT_FAIL = -17

# dxl_hw_state = 0: no error
# dxl_hw_state = 1: input voltage error
# dxl_hw_state = 4: overheating
# dxl_hw_state = 8: motor encoder
# dxl_hw_state = 16: electrical shork
# dxl_hw_state = 32: Overload
#
# Additional notes on temperature, input_voltage, current, etc:
# 1. To enable the reporting of these add the corresponding GPIO state_interface 
#    elements in the URDF file. For example:
#
#      <!-- Motor 3: XL330-M288 (elbow_flex) -->
#        <gpio name="dxl3">
#           <param name="type">dxl</param>
#           <param name="ID">3</param>
#           <command_interface name="Goal Position"/>
#           <state_interface name="Present Position"/>
#           <state_interface name="Present Velocity"/>
#           <state_interface name="Present Current"/>
#           <state_interface name="Present Temperature"/>
#           <state_interface name="Present Input Voltage"/>
#        </gpio>
#
