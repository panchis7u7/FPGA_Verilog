module Clock_Divider(Clkin, Clkout);
input Clkin;
output Clkout;
reg[27:0] contador = 28'd0;
parameter DIVISOR = 28'd10000000;

always @(posedge Clkin)
begin
	contador <= contador + 28'd1;
	if(contador >= (DIVISOR-1))
		contador <= 28'd0;
end

assign Clkout = (contador<DIVISOR/2)?1'b0:1'b1;
endmodule
