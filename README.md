# Debounce - Arctic Fox Tutorial

<p align="center">
    <img src="https://icii.io/wp-content/uploads/2022/09/New-Arctic-Fox-Logo.Blue_.For-Animation.WithBehindForGaps-1.svg" alt="Arctic Fox Logo" style="width:300px;"/>
</p>

This repo is a tutorial that implements a button debouncer. The code uses Arctic Fox to easily detect the rising edge of the button and a counter to debounce the button. This example provides a short introduction to Arctic Fox. 

<br>

# Setup
Refer to <a href="https://github.com/icii-arcticfox/TutorialHome#how-to-use-tutorials/" target="_blank">Tutorial How To</a> to start the tutorial. 

# Description
Many signals from the wild are not clean and require some form of pre-processing. Debouncing is a basic form of preprocessing that is needed for many signal received from the physical world. In particular, when a button is pressed, altering an electrical connection, bouncing is likely to occur. Here’s a short video from Texas Instruments that illustrates the problem of bouncing. Click the image to view the YouTube video. 

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/e1-kc04jSE4/0.jpg)](https://www.youtube.com/watch?v=e1-kc04jSE4)

In the video, the narrator mainly takes a resistor-capacitor approach to debounce the circuit. However, digital logic is out interest. In this tutorial, we will instead use Arctic Fox to generate counters to debounce the signal. 

# Steps
The tutorial contains the following steps in the following files: 
- Verilog/HandwashSensor.v
  - Steps 1, 2, 3, 4
- Verilog/Test/HandwashSensorTest.v 
  - Step 5, 6


# Solution
As you proceed through the tutorial, the correct code for previous steps will be given. 