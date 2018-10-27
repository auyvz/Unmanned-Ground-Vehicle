# Unmanned-Ground-Vehicle


## ABSTRACT

In this undertaking, we will outline and execute independent mechanical tank utilizes an Arduino to control engine and distinguish targets. The configuration will include correspondence between a focal Arduino microcontroller and an order station. It will likewise include programming in the Arduino programming software. The Arduino will consider Xbee correspondence between the order station and the robot. This robot should likewise be fit for self-rulingly taking after a predefined article for a time of time, while maintaining a strategic distance from impacts with the item and different obstructions. The essential capacity for this gadget is for military utilization, yet could likewise be showcased and used in the private area.

The variety in level and vertical hub of followed article produce control signal which is send to the controller remotely. The caught pictures of the item are handled utilizing programming MATLAB. Contingent upon the adjustment in position of item, fitting summons are given to the robot to track moving ball. This undertaking is in planned to outline and build up a versatile robot which can track a moving ball. Here, we utilize the camera to catch picture of the ball and these casings are handled to track the ball. The components of the ball, for example, the shading, shape, size can be checked for following the ball. In our task we utilize the shading data of the ball to track the article. Better execution of the robot can be gotten if various elements are checked. The movement of the robot is controlled by a microcontroller in light of the control signs got specifically.

The thought of a self-ruling mechanical tank will convey enormous points of interest to fighters and to regular folks in assigned battle areas. These vehicles have profited the military with the capacity to send these robots in front of companies to inspect territory they speak the truth to enter. The innovation modified into these vehicles then permits the trooper to spot foes that may be holding up to snare the detachment. This alone can help recovery lives. The Venture go for upgrading open wellbeing, empowering experimental examination, securing the earth.


## FIGURE LIST

* Figure1: The Operating Principle Diagram of the tank			
* Figure2: The Diagram of Working of IP Camera	
* Figure3: Front view of T'Rex Tank Chassis
* Figure4: Side view of T'Rex Tank Chassis
* Figure5: XBee 1mW Wire Antenna - Series 1 (802.15.4)	
* Figure6: Arduino Uno
* Figure7: D-Link DCS-5010L Wireless Pan & Tilt Day/Night Network Camera
* Figure8: VNH5019 Dual High Power Motor Driver Shield 		
* Figure9: Ports of VNH5019 Dual High Power Motor Driver Shield
* Figure10: Flowchart
* Figure11: Image Processing Output
 
 
 
## LIST OF ABBREVIATIONS
* FTDI: Future Technology Devices International
* IEEE: The Institute of Electrical and Electronics Engineers
* USB: Universal Serial Bus

 
## TABLE OF CONTENTS

### 1. INTRODUCTION	
* Objective
* Background	

### 2 DESIGN APPROACH AND DETAILS
* Design Approach	
* Tank
* Xbee	
* Arduino Uno	
* IP Camera
* Pololu Dual VNH5019 Motor Driver Shield for Arduino	

### 3 SYSTEM DESIGN	
* Appearance/Maneuverability	15
* Control	
* Tracking/Communication	
* Building a Body	


 
### 1.	INTRODUCTION

The tank demonstrates target obtaining, after, and focusing on abilities. These capacities show the basic advances behind the use of self-sufficiently controlled vehicles to tanks. The tank utilizes a blend of Xbee, Arduino, and Ipcamera to self-governingly track and at target. The Ipcamera utilizes a shading following project running, which the tank uses to track a moving focus from side to side. Prior to a full scale model is constructed, it is helpful to assemble a little scale model to demonstrate the innovation's ability. It is difficult to secure a genuine military tank to test the limit of the arduino, xbee, and the camera running the shading after venture, in achieving full independence. In building a little scale form of a potential model, these advancements can be shown to connect together effectively with the installed framework, and in addition give exact and powerful self-sufficient following. In effectively fabricating this little scale robot, the military would be persuaded into building a full scale model for a target tank. 
	
#### 1.1.	 Objective
The object of the project is to distinguish and track a moving objects and people. The following of the article is taking into image proccesing of camera vision instead of working on sensors. Self-sufficient tanks would be essentially advertised towards the military and national barrier. The idea of UGV bring useful advantages to soldiers and civilians in designated war zones. Self-sufficient UGVs can detect, track and strike targets by themselves. These vehicles have profited the military with the capacity to send these robots in front of units to look at territory they speak the truth to enter. The innovation modified into these vehicles then permits the warrior to spot adversaries that may be holding up to trap the unit. This alone can help recovery lives.The Project aim at enhancing public safety, enabling scientific research, protecting the environment.

#### 1.2.	Background
The primary occasion of present day apply autonomy showed up in 1948 when George Devol and Joe Engleberger made a mechanical arm. The two later made the first mechanical technology organization in 1956. In 1979, the Stanford Truck robot effectively crossed a seat filled room with no human help. It did this by utilizing a camera to take pictures and after that sent them to a PC for investigation. The robot could go at a rate of around one meter each 15-20 minutes, and soon thereafter it would then take pictures and reassess the environment. It did this by using a locally available PC to make the essential figurings. This PC is equivalent to today's microcontrollers. The principal genuine rough independent vehicle was the Terregater, which was made in 1984 for the main roles of street mapping and mine investigation. This was the first example where an independent robot was made for a particular modern capacity.
The thought of an independent following robot is moderately new innovation. Robots have been around for quite a long time, yet having one that can basically think all alone has not been investigated until late improvements in microcontroller innovation. Late advancements in wireless advances have likewise took into account investigation into remote control and information exchange. Because of these components, enthusiasm for this field is starting to blast, particularly due to a late order put forward by the US military. Extra significance is being set on the space meanderers utilized by NASA. These new wanderers, particularly the ones right now on Mars, must have a self-ruling ability to help adjust to the landscape.
There are numerous plans today that all give comparable capacities. This robot will be not quite the same as most on the grounds that it consolidates a wide range of segments to make up the last plan. As indicated by the Stanford Truck robot, cameras have been utilized on robots for more than 40 years. Different gadgets, for example, the self-cleaning sweeper utilization range discoverers to recognize questions before it keeps running into them. This venture is special on the grounds that it joins constant feature following by means of wireless, information exchange with wireless.
 
 
### 2.	DESIGN APPROACH AND DETAILS
#### 2.1 Design Approach
The tank consists of four principle parts: the PC, the arduino,Xbee , the controller and the tank. The figure shows a diagram of the control flow.

![Figure 1](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%201.png)
*Figure 1*

![Figure 2](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%202.png)
*Figure 2*


#### 2.2.	Tank
The T'REX TANK is an all-metal tank undercarriage intended for off-road robot ventures. Every one of the six lower wheels have free suspension to help enhance footing and assimilate stun. High ground freedom permits the T'REX to handle unpleasant territory. The front and top spreads are held set up with spring gets mounted between the wheels. To discharge the title page, slide the front catch discharges on both sides towards theback. The title page ought to then lift up so it can be effectively opened. To discharge the top spread, slide the back catch discharges on both sides to the back. The top spread will then lift up somewhat so it can be effectively uprooted. To secure these spreads back, push down solidly until you hear the gets "click".


![Figure 3](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%203.png)
*Figure 3*
   
   
*	*Size: 355mm (L) × 265mm (W) × 130mm (H)*
*	*Ground clearance: 70mm*
*	*Weight: 3.7Kg (8 lbs)*


![Figure 4](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%204.png)
*Figure 4*


#### 2.3.	Xbee
The XBee and XBee-Pro RF Modules were designed to meet IEEE 802.15.4 standard s and backing the one of a kind needs of ease, low-control remote sensor systems. The modules oblige insignificant power and give solid conveyance of information between devices.The modules work inside of the ISM 2.4 GHz recurrence band and are pin-for-pin perfect with one another.
XBee modules are perfect for low-power, minimal effort applications. XBee-PRO modules are force enhanced adaptations of XBee modules for expanded reach applications. A piece of the XBee group of RF items, these modules are anything but difficult to-utilize, offer a typical foot shaped impression, and are completely interoperable with other XBee items using the same innovation. Module clients can substitute one XBee module for another with negligible improvement time and danger.

 
![Figure 5](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%205.png)
*Figure 5*


#### 2.4.	Arduino Uno
The Arduino Uno is a microcontroller board taking into account the ATmega328. It has 14 computerized data/yield pins (of which 6 can be utilized as PWM yields), 6 simple inputs, a 16 MHz gem oscillator, a USB association, a force jack, an ICSP header, and a reset catch. It contains everything expected to bolster the microcontroller; essentially interface it to a PC with a USB link or force it with an air conditioner to-DC connector or battery to begin. The Uno varies from every single going before board in that it doesn't utilize the FTDI USB-to-serial driver chip. Rather, it highlights the Atmega8U2 customized as a USB-to-serial converter.


 ![Figure 6](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%206.png)
*Figure 6*


#### 2.5.	IP Camera

The DCS-5010L gives the execution of an expert home or business reconnaissance arrangement at a small amount of the expense. Screen and secure what makes a difference most – anyplace, at whatever time – utilizing the free mydlink web entryway or mydlink Lite portable application on your iPhone, iPad or Android gadget. Ultra-smooth dish/tilt and zoom usefulness gives you a chance to screen with exactness and certainty from your cell phone. Why sit tight for an unreasonable expert to introduce your framework? With the DCS-5010L, establishment is quick, simple, and adaptable. The coordinated night vision and movement detecting innovation gives you significant serenity and all day and all night reconnaissa.

![Figure 7](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%207.png) 
*Figure 7*


#### 2.6.	Pololu Dual VNH5019 Motor Driver Shield for Arduino

This shield makes it simple to control two high-control DC engines with your Arduino or Arduino-good board. Its double vigorous VNH5019 engine drivers work from 5.5 to 24 V and can convey a ceaseless 12 A (30 A top) per engine, or a consistent 24 A (60 A crest) to a solitary engine associated with both channels. These awesome drivers additionally offer ebb and flow sense criticism and acknowledge ultrasonic PWM frequencies for calmer operation. The Arduino pin mappings can all be altered if the defaults are not advantageous, and the engine driver control lines are broken out along the left half of the shield for broadly useful utilization without an Arduino.
This engine driver shield and its relating Arduino library make it simple to control two bidirectional, high-power, brushed DC engines with an Arduino or Arduino clone. The board highlights a couple of vigorous VNH5019 engine drivers from ST, which work from 5.5 to 24 V and can convey a nonstop 12 A (30 A peak) per channel, and including draw up and security resistors and FETs for opposite battery insurance. It sends completely populated with its SMD parts, including the two VNH5019 ICs, as indicated in the photo to one side; stackable Arduino headers and terminal squares for interfacing engines and engine force are incorporated yet are not welded.
This adaptable engine driver is proposed for an extensive variety of clients, from novices who simply need a fitting and-play engine control answer for their Arduinos to specialists who need to straightforwardly interface with ST's awesome engine driver ICs. The Arduino pin mappings can all be redone if the defaults are not helpful, and the VNH5019 control lines are broken out along the left half of the board for broadly useful utilization without an Arduino. This adaptability, alongside an alternative to control the Arduino straightforwardly from the shield, separates this board from comparable contending engine shields.

 ![Figure 8](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%208.png)
*Figure 8*
 
![Figure 9](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%209.png)
*Figure 9*
 
 
 
### 3.	SYSTEM DESIGN
The tank which the item to be followed as a hued ball must be intended to work in an ordinary indoor environment, at room temperature. The robot can be physically guided to the objective range, in spite of the fact that it must be remotely controlled. Once the robot is inside of three feet of the objective, it must be equipped for having 360 degrees of turn to self-sufficiently discover the item utilizing a remote camera. This scope of movement obliges that the robot has a zero degree turn span. When the objective is gained, the robot must move to a most extreme separation of three feet from the article, and stay inside of that range for the term of the time.

#### 3.1.	Appearance/Maneuverability
Initial design ideas included using two palette, independent two motor, a tank design with treads.  The two palette design would allow for each side of wheels to run off of one motor thus requiring two motors total. It would also have capabilities of speed that the other options might not.  

#### 3.2.	Control
Concepts for controlling the robot include using a standard wireless joystick controller, a smart phone.  The team decided to use a joystick controller to provide the interface between the robot and user.  A smart phone app for control is also an attractive idea that would build on recent wireless technology.   We believes that a possible future solution would be to use smart phone technology for complete robot control. Wi-Fi is another option for wireless communication, as has a much further range, and is especially efficient when transferring video data.  

#### 3.3.	Tracking/Communication
For the camera which support video processing to make target tracking possible will found many open source libraries. There will many range sensors considered to determine distance from the tracked object and surroundings to avoid collision.  Some options included radar, sonar, and ultra-sonic range finders. Radar has several negative aspects associated with it, including delays and interference. The Doppler Effect would also require special considerations based on the speed and direction of our moving robot.  Ultra-sonic range finders give good accuracy and resolution, but require multiple on each side to be useful for object avoidance because of their small detection angle. 
Our solution was detecting object with using none of these components. We detect objects using colour of the object. What we offered is detecting green colour and tracking the object. 

![Figure 10](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%2010.png)
*Figure 10*

The RGB shading model relates nearly to the way we see shading with the r,g and b receptors in our retinas. RGB utilizes added substance shading blending and is the essential shading model utilized as a part of TV or whatever other medium that ventures shading with light.It is the fundamental shading model utilized as a part of PCs and for web illustrations, however it can't beused for print creation. Secondary colours of RGB are framed by blending two of the essential hues and barring the third shading. Red and green consolidate to make yellow, green and blue to make cyan, and blue and redform red. The mix of red, green, and blue in full force makes white.
 
 ![Figure 11](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%2011-1.png)
  ![Figure 11](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%2011-2.png)
  ![Figure 11](https://raw.githubusercontent.com/yavuzkaralu/Unmanned-Ground-Vehicle/master/Figures/Figure%2011-2.png)
*Figure 11*

#### 3.4.	Building a Body
In deciding the frame and look of the robot, some options included buying a premade vehicle, building one from the ground up, or doing a combination of both.  Buying a premade body seems like a cheaper option, but limits the size and design type.  Building one from the ground up would give more freedom in design, but appears to be more costly. Doing a combination of both would limit some design aspects, but still give some freedom in the overall style of the body.  Buying a frame with palettes and motors would ensure that parts run smoothly together, but would allow for custom design of the outer shell.
