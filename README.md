## StarMachine ✨
StarMachine is an interactive art piece that allows the user to change the position of stars using a joystick and change the background color with a button. It was built using an ESP32 TTGO T-display, a joystick, and a button. Below you can find all of the information to reproduce LoveBot.

#### Hardware Supplies

| ESP32 TTGO T-display  | Button | Joystick    
| :---  | :---  | :---  | 
| **Breadboard**               | **Wires**           | **USB-C Cable** | 


## Reproducing StarMachine

#### Connecting the Joystick and Button

To connect the joystick and button to the ESP32, we need a breadboard, male to male wires and male to female wires. 

Connect the joystick headers to the female to male wires and place the button into the breadboard. Connect to the ESP32 using this pinout:

| Joystick | ESP32 | & | Button | ESP32 |
| --- | --- | --- | --- | --- |
| **GND** | **GND** || **pin** | **3v** |
| **5V** | **5V** || **pin** | **37** |
| **VRX** | **pin 33** |
| **VRY** | **pin 32** |
| **SW** | **pin 39** |

It should look like this after:

<img src="https://github.com/kyarasto/Module_Two/assets/113846467/785a200d-86cb-4137-bbe2-37f06ce87cf8" width="400" height="450">


#### Creating the enclosure

Supplies: 
| Cardboard  | Cardboard Cutter | Paper    
| :---  | :---  | :---  | 
| **String**               | **Paint brush**           | **Hot glue gun** | 


**Here are the steps to create the enclosure**
1) Cut 4 rectangles of cardboard of equal size.
2) Hot glue them together to create a box with 2 sides open.
3) Cut a square and hot glue it to the open side of the box.
4) You should now have a box with one square side open.
5) Next to fit the wires coming up from the breadboard, cut a small rectangle at the top of the box and build walls and a roof around it.
6) To fit the joystick and the button cut openings for them as shown in the image below.  
7) Next paint the box however you want! Be creative!
8) The last step is to use a string and paper to create a curtain for the open side of the box.
9) Attach the curtain as shown in the image and your enclosure is complete!

<img src="https://github.com/kyarasto/Module_Two/assets/113846467/913200d5-c76a-4443-a93e-3d71e2c20bd8" width="400" height="500">


#### Combining device and enclosure.
Now that the ESP32 is connected to the joystick and button, plug it into the computer and upload the ardunio code "module2Joystick.ino". Once the arduino code is loaded onto the ESP32, make sure 3 numbers are showing up in the serial monitor. There should be an X and Y coordinate and a 0 or 1 (1 when you press the button, 0 when it is not pressed). Now close the serial monitor and open processing. Run StarJoystick.pde with Star.pde and StarSystem.pde. Now move the curtain and place the device inside, pushing the button and joystick through their openings and the wires on the breadboard through their opening. This should look like this:

<img src="https://github.com/kyarasto/Module_Two/assets/113846467/e143c406-7aeb-4dad-a8e1-5d640a97fe29" width="310" height="500">
<img src="https://github.com/kyarasto/Module_Two/assets/113846467/630e392b-cd1d-4233-b965-b171b1a7f91f" width="400" height="500">

Once the device is in the enclosure, make sure the usbc cable is connnected to the laptop and coming out through the curtain. You can now use the device!

## Using StarMachine

StarMachine uses the joystick to change the position of the stars on the screen and the button to change the color of the screen. Below is a video tutorial of how to use StarMachine and a blog where you can learn about the art.

#### Video and Blog

The [video](https://youtube.com/shorts/6nX9B5nqd1I) shows a demo and this [blog](https://kyarasto.github.io/ModuleTwoBlog/) tells you more about my artistic vision!

Thank you for the support of Mark Santolucito in creating this project!



