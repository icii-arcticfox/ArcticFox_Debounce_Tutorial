//S***Conclusion
//***Congrats, you've finished the Arctic Fox Debounce tutorial! We've removed
//***the explainer text so you can see the conciseness of Arctic Fox. We hope you've
//***enjoyed Arctic Fox! Next, try the Temperature Anomaly tutorial or play around
//***in the Arctic Fox sandbox!

module Debounce(
    /*[Clock 50 MHz]*/
    input clk,

    /*[Reset]*/
    input reset,

    input button,

    output debouncedButton
);

/*[RisingEdge]*/
wire risingButton;

/*[Counter --count 128 --start risingButton]*/
reg [10:0] debounceCounter;

assign debouncedButton = button || debounceCounter > 0;

endmodule