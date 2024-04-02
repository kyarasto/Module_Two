## StarMachine 💘
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
2) Hot glue them together to create a 

4) Then you will need string, a popsicle stick and something to poke a hole into the envelope wherever you choose. wrap the string around the popsicle stick and tie it. Then string the thread through the hole in the envelope and tie it. This should all look like image 1. 

5) Now you can do the installation and use the popsicle to hang your LoveBot (as shown in image 2).


![Creating the envelope and installation](https://github.com/kyarasto/Module_One/assets/113846467/06b2abbd-d2aa-448b-b57e-6c61314ae900)

#### Video and Blog

The [video](https://youtube.com/shorts/1NgUFZmwixI?feature=share) shows the full installation and this [blog](https://kyarasto.github.io/ModuleOneBlog/) tells you more about my artistic vision!

Thank you for the support of Mark Santolucito and Eris Gao in creating an amazing installation!



