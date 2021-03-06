module HEX_display(
digit0,
digit1,
digit2,
digit3,
data
);

input [15:0]data;

output [6:0]digit0;
output [6:0]digit1;
output [6:0]digit2;
output [6:0]digit3;

reg [6:0] bits0;
reg [6:0] bits1;
reg [6:0] bits2;
reg [6:0] bits3;

 // divide by n*2 is the same as shift n steps right

always @ (data)
begin 
		case(data[3:0])
			4'b0000: bits0 [6:0] = 7'b011_1111;
			4'b0001: bits0 [6:0] = 7'b000_0110;
			4'b0010: bits0 [6:0] = 7'b101_1011;
			4'b0011: bits0 [6:0] = 7'b100_1111;
			4'b0100: bits0 [6:0] = 7'b110_0110;
			4'b0101: bits0 [6:0] = 7'b110_1101;
			4'b0110: bits0 [6:0] = 7'b111_1101;
			4'b0111: bits0 [6:0] = 7'b000_0111;
			4'b1000: bits0 [6:0] = 7'b111_1111;
			4'b1001: bits0 [6:0] = 7'b110_1111;
			4'b1010: bits0 [6:0] = 7'b111_0111;
			4'b1011: bits0 [6:0] = 7'b111_1100;
			4'b1100: bits0 [6:0] = 7'b011_1001;
			4'b1101: bits0 [6:0] = 7'b101_1110;
			4'b1110: bits0 [6:0] = 7'b111_1001;
			4'b1111: bits0 [6:0] = 7'b111_0001;
		endcase
end

always @ (data)
begin 	
		case(data[7:4])
			4'b0000: bits1 [6:0] = 7'b011_1111;
			4'b0001: bits1 [6:0] = 7'b000_0110;
			4'b0010: bits1 [6:0] = 7'b101_1011;
			4'b0011: bits1 [6:0] = 7'b100_1111;
			4'b0100: bits1 [6:0] = 7'b110_0110;
			4'b0101: bits1 [6:0] = 7'b110_1101;
			4'b0110: bits1 [6:0] = 7'b111_1101;
			4'b0111: bits1 [6:0] = 7'b000_0111;
			4'b1000: bits1 [6:0] = 7'b111_1111;
			4'b1001: bits1 [6:0] = 7'b110_1111;
			4'b1010: bits1 [6:0] = 7'b111_0111;
			4'b1011: bits1 [6:0] = 7'b111_1100;
			4'b1100: bits1 [6:0] = 7'b011_1001;
			4'b1101: bits1 [6:0] = 7'b101_1110;
			4'b1110: bits1 [6:0] = 7'b111_1001;
			4'b1111: bits1 [6:0] = 7'b111_0001;
		endcase
end

always @ (data)
begin 
	case(data[11:8])
			4'b0000: bits2 [6:0] = 7'b011_1111;
			4'b0001: bits2 [6:0] = 7'b000_0110;
			4'b0010: bits2 [6:0] = 7'b101_1011;
			4'b0011: bits2 [6:0] = 7'b100_1111;
			4'b0100: bits2 [6:0] = 7'b110_0110;
			4'b0101: bits2 [6:0] = 7'b110_1101;
			4'b0110: bits2 [6:0] = 7'b111_1101;
			4'b0111: bits2 [6:0] = 7'b000_0111;
			4'b1000: bits2 [6:0] = 7'b111_1111;
			4'b1001: bits2 [6:0] = 7'b110_1111;
			4'b1010: bits2 [6:0] = 7'b111_0111;
			4'b1011: bits2 [6:0] = 7'b111_1100;
			4'b1100: bits2 [6:0] = 7'b011_1001;
			4'b1101: bits2 [6:0] = 7'b101_1110;
			4'b1110: bits2 [6:0] = 7'b111_1001;
			4'b1111: bits2 [6:0] = 7'b111_0001;
		endcase
end

always @ (data)
begin 
	case(data[15:12])
			4'b0000: bits3 [6:0] = 7'b011_1111;
			4'b0001: bits3 [6:0] = 7'b000_0110;
			4'b0010: bits3 [6:0] = 7'b101_1011;
			4'b0011: bits3 [6:0] = 7'b100_1111;
			4'b0100: bits3 [6:0] = 7'b110_0110;
			4'b0101: bits3 [6:0] = 7'b110_1101;
			4'b0110: bits3 [6:0] = 7'b111_1101;
			4'b0111: bits3 [6:0] = 7'b000_0111;
			4'b1000: bits3 [6:0] = 7'b111_1111;
			4'b1001: bits3 [6:0] = 7'b110_1111;
			4'b1010: bits3 [6:0] = 7'b111_0111;
			4'b1011: bits3 [6:0] = 7'b111_1100;
			4'b1100: bits3 [6:0] = 7'b011_1001;
			4'b1101: bits3 [6:0] = 7'b101_1110;
			4'b1110: bits3 [6:0] = 7'b111_1001;
			4'b1111: bits3 [6:0] = 7'b111_0001;
		endcase
end


assign digit0 [6:0] = ~bits0 [6:0];
assign digit1 [6:0] = ~bits1 [6:0];
assign digit2 [6:0] = ~bits2 [6:0];
assign digit3 [6:0] = ~bits3 [6:0];


endmodule