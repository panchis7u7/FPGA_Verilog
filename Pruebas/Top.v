module Top (
	input x1,
	input x2,
	input x3,
	output wire z1
);

nand inst1(net1, x1, x2, x3);
nand inst2(net2, x1, x2, x3);
and inst3(z1, net1, net2);
endmodule