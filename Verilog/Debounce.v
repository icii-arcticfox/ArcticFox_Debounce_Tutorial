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

//***Step 3) Rising Edge Automation
//***We assume that the button is active high, and therefore, we need to 
//***detect the rising edge of the button signal. 

//***Add a RisingEdge automation, you don't need to specify the source signal,
//***it will be inferred from the attched signal, risingButton, since it begins
//***with the word "rising".
//***https://tinyurl.com/af-risingedge
/*[RisingEdge]*/
wire risingButton;

//***4) We need to use a counter to prevent the button from bouncing. We will use
//***the counter such that normally it is 0, but once a rising edge of button
//***is seen, the counter will start counting. While the counter is not 0, we will
//***set the debounced signal to high. 

//***Add a Counter automation to debugCounter. You will need to specify the count
//***and start items. You should set count to the max of the counter, once it is 
//***reached, the counter will be set back to 0. You want to set start to be the 
//***name of the signal that will trigger the counter once the signal is high. 
//***https://tinyurl.com/af-counter
/*[Counter --count 128 --start risingButton]*/ 
reg [10:0] debounceCounter;

//The following line is given to you. We want the debounced signal to be high
//anytime that the button signal is high, or the debounceCounter has not returned
//to 0. 
assign debouncedButton = button || debounceCounter > 0;

endmodule
