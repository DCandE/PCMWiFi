import hypermedia.net.*;
PFont small, big;
int radius = 100;
int PORT_RX=30278;
String HOST_IP = "192.168.2.32";//IP Address of the PC in which this App is running
UDP udp;//Create UDP object for recieving
float b;

void setup(){
  size(360,200);
  smooth();
  small = createFont("sansSerif",10);
  big = createFont("sansSerif",30);
  fill(0);
  textAlign(CENTER,CENTER);
  udp= new UDP(this, PORT_RX, HOST_IP);
  udp.log(true);
  udp.listen(true);
  noLoop();
}

void draw(){
}//end of draw()

void receive(byte[] data, String HOST_IP, int PORT_RX){
  String value=new String(data);
  println(value);
  String[] power = splitTokens(value,"=;");
  background(255);
  translate(180,180);
  stroke(0);
  textFont(small);
  for(int i=90; i<271; i+=3){
    if (i % 30 == 0) {
      strokeWeight(2);
      float radi = radians(i);
      line(sin(radi)*radius,cos(radi)*radius,sin(radi)*radius*1.4,cos(radi)*radius*1.4);
      text(i-90,sin(radi)*radius*1.55,cos(radi)*radius*1.55);
    } else {
      strokeWeight(1);
      float radi = radians(i);
      line(sin(radi)*radius,cos(radi)*radius,sin(radi)*radius*1.2,cos(radi)*radius*1.2);
    }
  }
  float a = 1.8 ;
  float b = float(power[9]);
  float c = 32;
        b *= a;
        b += c;
  stroke(255,0,0);
  strokeWeight(3);
  float pointer = radians(map(b,0,180,90,270));
  line(sin(pointer)*radius*0.5,cos(pointer)*radius*0.5,sin(pointer)*radius,cos(pointer)*radius);
  textFont(big);
  textAlign(CENTER);
  text(map(b,0,180,90,270)-90,0,0);
  textAlign(RIGHT);
  text(power[5],-100,-150);
  textAlign(LEFT);
  text("W",-100,-150);
  redraw();
}
