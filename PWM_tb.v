module PWM_tb(input clk);
reg reset;
reg [7:0]duty;
wire PWM_out;

initial
begin
reset = 1 ; #40 ; reset = 0 ; #40;
duty = 8'b10000000 ;  
end

PWM PWM_uut(.clk(clk),.reset(reset),.duty(duty),.PWM_out(PWM_out));

endmodule