module DebounceTest;

//***Step 5) Instantiate Module To Test
//***We need to instantiate the module to test and the signals associated
//***with it. Arctic Fox makes it simple with the TestModule automation. 
//***Add in a TestModule automation and set the module item to the name
//***of the module you want to test. 
//***https://tinyurl.com/af-testmodule
/*[TestModule --module Debounce]*/


initial begin

    #5000;

//_***Step 6) Add Custom Automation Press Button
//_***We need to "press the button". Arctic fox makes it easy to add
//_***software logic to creating test benches. Take a look at the 
//_***PressButton automation in the Automations folder. Add a few of
//_***the PressButton automations to the test bench. You will see that
//_***the automation generates a random amount of bouncing that is 
//_***determined in the automation's software processing. 

    #50000;
    $finish;
    
end
endmodule