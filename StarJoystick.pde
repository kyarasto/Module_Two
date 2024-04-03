import processing.serial.*;

Serial myPort;  
String val;      

ParticleSystem ps;
PImage sprite;  

int receivedX; 
int receivedY;
int newColor;
void setup() {
  size(1024, 768, P2D);
  orientation(LANDSCAPE);
  sprite = loadImage("sprite.png");
  ps = new ParticleSystem(10000);
  
  // Print out the list of available serial ports
  println("Available serial ports:");
  String[] ports = Serial.list();
  for (int i = 0; i < ports.length; i++) {
    println(i + ": " + ports[i]);
  }
  //------------------
  String portName = Serial.list()[1];
  System.out.println(portName);
  myPort = new Serial(this, portName, 9600);

 
  hint(DISABLE_DEPTH_MASK);
} 

void draw () {
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
  }
  val = trim(val);
  System.out.println(val);
  
  background(208, 244, 222);

  if (val != null) {
    String[] coordinates = val.split(",");
    if (coordinates.length >= 3) {
      receivedX = int(map(float(coordinates[0]), 0, 4095, 0, width));
      receivedY = int(map(float(coordinates[1]), 0, 4095, 0, height));
      newColor = int(coordinates[2]);
    }
    if(newColor == 0){
      background(208, 244, 222);
    }
    if(newColor == 1){
      background(169, 222, 249);
    }
    
  }

  ps.update();
  ps.display();
  ps.setEmitter(receivedX, receivedY);
  
  
  fill(255);
  textSize(16);
  
}
//modified from processing Particles demo by Daniel Shiffman
