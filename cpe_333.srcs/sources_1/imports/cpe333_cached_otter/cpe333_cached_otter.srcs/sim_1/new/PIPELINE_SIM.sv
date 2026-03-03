`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
module PIPELINE_SIM(
     );
    
     logic CLK=0,BTNL,BTNC,PS2Clk,PS2Data,VGA_HS,VGA_VS,Tx;
     logic [15:0] SWITCHES,LEDS;
     logic [7:0] CATHODES,VGA_RGB;
     logic [3:0] ANODES;
   
    OTTER_Wrapper UUT (
        .CLK(CLK),
        .BTNC(BTNC),
        .SWITCHES(SWITCHES),
        .LEDS(LEDS),
        .CATHODES(CATHODES),
        .ANODES(ANODES)
        );

    initial forever  #10  CLK =  ! CLK; 
   
    
    initial begin
        BTNC=1;
        SWITCHES = 16'h0000;
        #100;
        BTNC=0;
        #200000000;
        $finish;
    end
    
    
       
  /*  initial begin
         if(ld_use_hazard)
            $display("%t -------> Stall ",$time);
        if(branch_taken)
            $display("%t -------> branch taken",$time); 
      end*/
endmodule
