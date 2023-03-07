module DebounceTest;

//_***Step 5) Instantiate Module To Test
//_***We need to instantiate the module to test and the signals associated
//_***with it. Arctic Fox makes it simple with the TestModule automation. 
//_***Add in a TestModule automation and set the module item to the name
//_***of the module you want to test. 
//_***https://tinyurl.com/af-testmodule



initial begin

    #5000;

    #50000;
    $finish;
    
end
endmodule