module Top (clk, adc, motor);

input clk;
input [7:0] adc;
output motor;
wire out_clk;

Clock_Divider c1(clk, out_clk);
Controller sc(out_clk, adc, motor);

endmodule