PCMWiFi
=======

PCM WiFi PowerCost Monitor WiFi

The BlueLine Innovations PowerCost Monitor can send its signal to eather the wall mount display or to their PCM WiFi gateway module. That module can be programed to send it's data to one of their specefied monitoring providers but they never seem to be able to provide great real time data or even show the temprature from the sensor.

The PCM WiFi as well as transmitting it's data to the web site also send out a UDP broadcast every ~30sec with the data it has recived.
F
rom Wireshark
dialpad-voice1	80.591970000	192.168.2.158	dialpad-voice1	255.255.255.255	UDP	151	Source port: dialpad-voice1  Destination port: 30278	30278

msgtype=PCMWiFi; DeviceID=001EC0004FE6; Inst=891; Reg=619544; Temp=18; BattLow=0; SQI=100; uTime=1385935955;

"Inst" is the Watt consumption "Temp" is the temprature at the meter in C

