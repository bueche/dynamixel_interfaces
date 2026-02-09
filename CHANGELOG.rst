^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package dynamixel_interfaces
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
2.0.0 (2024-02-08)
------------------
* **BREAKING**: Add telemetry fields to DynamixelState message
  
  - Added present_temperature (int16[])
  - Added present_input_voltage (int16[]) 
  - Added present_current (int16[])
  - Added present_load (int16[])
  
  Downstream packages must:
  1. Rebuild against new message definition
  2. Update code if parsing DynamixelState messages
  

1.0.1 (2025-03-11)
------------------
* Fixed the dependencies setting for the release version
* Contributors: Pyo

1.0.0 (2024-12-04)
------------------
* First release of dynamixel_interfaces package
* Contributors: Hye-Jong KIM, Sungho Woo
