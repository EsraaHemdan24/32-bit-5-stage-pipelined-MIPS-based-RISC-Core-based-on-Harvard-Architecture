module MUX_3x1 (
input [31:0] in1 , in2 , in3,
input [1:0] sel,
output reg [31:0] out
);

always @(*) begin
case (sel)
2'b00 : out = in1;
2'b01 : out = in2;
2'b10 : out = in3;
default : out = {(32){1'b0}};
endcase 
end

endmodule
