module PWM(input clk,reset , input[7:0]duty,output PWM_out);
reg [7:0]counter_d,counter_q;
always@(posedge clk,posedge reset)
begin
  if(reset)
    counter_q <= 0;
  else
    counter_q <= counter_d;
end
always@(*)
begin
    counter_d = counter_q + 1;
end
assign PWM_out = (counter_q<duty);
endmodule