module Debounce(
    
//_***Step 1) Clock Automation
//_***Add a Clock automation, it specifies the clock signal for the module. You can 
//_***also specify the frequency of the clock as 50 MHz. 
//_***https://tinyurl.com/af-clock

    input clk,

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