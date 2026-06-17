module half_adder_tb;
reg A, B;
wire Sum;
wire Carry;

half_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, half_adder_tb);
    $display("A B | Sum Carry");
    A=0; B=0;
    #10;
    $display("%b %b | %b %b",A,B,Sum,Carry);
    A=0; B=1;
    #10;
    $display("%b %b | %b %b",A,B,Sum,Carry);
    A=1; B=0;
    #10;
    $display("%b %b | %b %b",A,B,Sum,Carry);
    A=1; B=1;
    #10;
    $display("%b %b | %b %b",A,B,Sum,Carry);
    $finish;
end
endmodule