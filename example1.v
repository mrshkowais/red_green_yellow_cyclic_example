// Code your design here
module rgy_cyclic(input clk,
                  input areset,
           output reg LEDR , LEDG , LEDY
          );
  parameter r = 2'b00 , g = 2'b01 , y = 2'b10 ;
  reg [1:0] state , nextstate ;
  // state transition logic 
  always @(*) begin
    case(state)
      r : nextstate = g ;
      g : nextstate = y ;
      y : nextstate = r ;
      default : nextstate = r ;
    endcase
  end
  // sequential logic 
  always @(posedge clk , posedge areset)
    begin
      if(areset)
        state <= r ;
      else
      state <= nextstate ;
    end
  // output logic
  always @(*) begin
   LEDR = (state==r);
   LEDG = (state==g);
   LEDY = (state==y);
  end
  
endmodule
