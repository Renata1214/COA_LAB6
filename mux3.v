module mux3
#(parameter WIDTH = 32)
(flag, in1, in2, in3, out);

input wire [2:0] flag;
input wire [WIDTH-1:0] in1;
input wire [WIDTH-1:0] in2;
input wire [WIDTH-1:0] in3;

output wire [WIDTH-1:0] out;

assign out = (flag == 2'b00) ? in1 :
             (flag == 2'b01) ? in2 :
             in3;  // Default case if input_signal is not 00 or 01

endmodule
