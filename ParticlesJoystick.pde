import processing.serial.*;

Serial myPort;  // Create object from Serial class
String val;      // Data received from the serial port

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
  //-------------
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

  // Writing to the depth buffer is disabled to avoid rendering
  // artifacts due to the fact that the particles are semi-transparent
  // but not z-sorted.
  hint(DISABLE_DEPTH_MASK);
} 

void draw () {
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
  }
  val = trim(val);
  System.out.println(val);
  
  background(208, 244, 222);
 
  //--------------
  //added joy code (move particles with joystick):
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
  //--------------
  
   /*
  //background(0);
  if (val != null && val.equals("0")) {              // If the serial value is 0,
    background(224, 255, 229);                   // set fill to black
  } 
  else {                       // If the serial value is not 0,
    background(255, 224, 239);                 // set fill to light gray
  }  */
  

  ps.update();
  ps.display();
  ps.setEmitter(receivedX, receivedY);
  
  //ps.setEmitter(mouseX,mouseY);
  
  fill(255);
  textSize(16);
  //text("Frame rate: " + int(frameRate), 10, 20);
  
}
