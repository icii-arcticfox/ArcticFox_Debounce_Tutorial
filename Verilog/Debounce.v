module Debounce(
    
//***Step 1) Clock Automation
//***Add a Clock automation, it specifies the clock signal for the module. You can 
//***also specify the frequency of the clock as 50 MHz. 
//***https://tinyurl.com/af-clock
    /*[Clock 50 MHz]*/
    input clk,

//_***Step 2) Reset Automation
//_***Add a Reset automation, it specifies the reset signal for the module.
//_***https://tinyurl.com/af-reset
    
    input reset,

    input button,

    output debouncedButton
);

wire risingButton;

reg [10:0] debounceCounter;

//The following line is given to you. We want the debounced signal to be high
//anytime that the button signal is high, or the debounceCounter has not returned
//to 0. 
assign debouncedButton = button || debounceCounter > 0;

endmodule