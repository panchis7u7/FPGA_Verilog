module Servo_Controller (

	input clk,
	input wire[7:0] adc,
	output motor
	
);

reg[6:0] counter = 0;
always@(posedge clk)
begin
	if(counter < 100)
		counter <= counter + 1;
	else counter <= 0;
end

assign motor = (counter < 20) ? 1:0;
endmodule