PCMWiFi
=======

PCM WiFi PowerCost Monitor WiFi

The BlueLine Innovations PowerCost Monitor can send its signal to eather the wall mount display or to their PCM WiFi gateway module. That module can be programed to send it's data to one of their specified monitoring providers but they never seem to be able to provide great real time data or even show the temperature from the sensor.

The PCM WiFi as well as transmitting its data to the website also send out a UDP broadcast on port 30278 every ~30sec with the data it has received.

From Wireshark:  
dialpad-voice1	80.591970000	192.168.2.158	dialpad-voice1	255.255.255.255	UDP	151	Source port: dialpad-voice1  Destination port: 30278	30278

msgtype=PCMWiFi; DeviceID=001EC0004FE6; Inst=891; Reg=619544; Temp=18; BattLow=0; SQI=100; uTime=1385935955;

"msgtype" Identifies the PCMWiFi
"DeviceID" serial number of sensor
"Inst" is the Watt consumption
"Reg" is accumulated total?
"Temp" is the temperature at the meter in C
"BattLow" is 0=Normal, 1=Low Battery
"SQI" is the signal strength in %