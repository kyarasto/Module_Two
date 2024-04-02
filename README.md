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


![wired button and joystick](https://github.com/kyarasto/Module_Two/blob/main/wiredButtonJoy.heic)

#### Adding the battery to LoveBot

1) To add the battery to LoveBot we first set it up. To prepare the battery, it needs to be soldered to wires. To prepare the connector that will attach the battery and LoveBot, strip both red and black wires and wrap them around the crimp pin connector. **Once it is crimped which secures the physical connection, add a bit of solder to secure the electrical connection.** Image 1 shows how the battery and connecter should look at this point.
   
2) The next step is important to ensure the black and red wires don't touch. On the connector, cut some heat shrink and place it on the part where we attached the crimp pin connector. Use a heat gun to shrink it onto the wires. Make sure to leave enough space to plug it into the battery. Image 2 shows the process of using the heat gun.


![Putting together the battery](https://github.com/kyarasto/Module_One/assets/113846467/0bd08c16-438b-43a2-860e-6cfc3a0007a0)

3) Now, we are ready to connect the battery to the ESP32! Plug the small plastic piece on the other side of the connector, into the ESP32 as shown in image 3.
   
4) Now plug the two wires on the end of the connector into the battery and the final product is shown in image 4. 
   
![Attaching the battery and the lovebot](https://github.com/kyarasto/Module_One/assets/113846467/13965eb3-8d40-46e8-b09c-eeba46516707)

#### Creating the envelope and Installation

**The AI files of the envelope created by Eris Gao can be found and downloaded in this repo's files**
1) Once you have the envelope printed and folded, go crazy! Decorate it however and with whatever you want :) Then place the LoveBot into the envelope with the screen facing outside the cutout and tape it closed (as seen in image 1).

2) Then you will need string, a popsicle stick and something to poke a hole into the envelope wherever you choose. wrap the string around the popsicle stick and tie it. Then string the thread through the hole in the envelope and tie it. This should all look like image 1. 

3) Now you can do the installation and use the popsicle to hang your LoveBot (as shown in image 2).


![Creating the envelope and installation](https://github.com/kyarasto/Module_One/assets/113846467/06b2abbd-d2aa-448b-b57e-6c61314ae900)

#### Video and Blog

The [video](https://youtube.com/shorts/1NgUFZmwixI?feature=share) shows the full installation and this [blog](https://kyarasto.github.io/ModuleOneBlog/) tells you more about my artistic vision!

Thank you for the support of Mark Santolucito and Eris Gao in creating an amazing installation!



