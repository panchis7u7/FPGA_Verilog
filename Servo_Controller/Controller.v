module Controller (clk, adc, motor);

input clk;
input [7:0] adc;
output wire motor;

reg[7:0] counter = 0;

always@(posedge clk)
begin
	if(counter < 255)
		counter <= counter + 1;
	else counter <= 0;
end

assign motor = (counter < adc) ? 1:0;
endmodule