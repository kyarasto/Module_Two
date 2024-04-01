// Wiring / Arduino Code
// Slightly modified from the freenove joystick example
//  Filename    : Joystick
//  Description : Read data from joystick.
//  Auther      : www.freenove.com
//  Modification: 2020/07/11
int xyzPins[] = {33, 32, 39};   //x,y,z pins
void setup() {
  Serial.begin(9600);
  pinMode(xyzPins[2], INPUT_PULLUP);  //z axis is a button.
  pinMode(37, INPUT_PULLDOWN);  //button.

}
void loop() {
  int xVal = analogRead(xyzPins[0]);
  int yVal = analogRead(xyzPins[1]);
  int zVal = digitalRead(xyzPins[2]);
  int buttonVal = digitalRead(37);
  Serial.printf("%d,%d,%d\n", xVal, yVal, buttonVal);
  Serial.print('\n');
  delay(100);
}
