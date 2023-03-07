module Debounce(
    
//***Step 1) Clock Automation
//***Add a Clock automation, it specifies the clock signal for the module. You can 
//***also specify the frequency of the clock as 50 MHz. 
//***https://tinyurl.com/af-clock
    /*[Clock 50 MHz]*/
    input clk,

//***Step 2) Reset Automation
//***Add a Reset automation, it specifies the reset signal for the module.
//***https://tinyurl.com/af-reset
    /*[Reset]*/
    input reset,

    input button,

    output debouncedButton
);

//_***Step 3) Rising Edge Automation
//_***We assume that the button is active high, and therefore, we need to 
//_***detect the rising edge of the button signal. 

//_***Add a RisingEdge automation, you don't need to specify the source signal,
//_***it will be inferred from the attched signal, risingButton, since it begins
//_***with the word "rising".
//_***https://tinyurl.com/af-risingedge

wire risingButton;

reg [10:0] debounceCounter;

//The following line is given to you. We want the debounced signal to be high
//anytime that the button signal is high, or the debounceCounter has not returned
//to 0. 
assign debouncedButton = button || debounceCounter > 0;

endmodule