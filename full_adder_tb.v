module full_adder_tb;
reg A, B, Cin;
wire Sum;
wire Cout;

full_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, full_adder_tb);
    $display("A B Cin | Sum Cout");

    A=0; B=0; Cin=0;
    #10;
    $display("%b %b %b | %b %b",A,B,Cin,Sum,Cout);

    A=0; B=0; Cin=1;
    #10;
    $display("%b %b %b | %b %b",A,B,Cin,Sum,Cout);
    
    A=0; B=1; Cin=0;
    #10;
    $display("%b %b %b | %b %b",A,B,Cin,Sum,Cout);
    
    A=0; B=1; Cin=1;
    #10;
    $display("%b %b %b | %b %b",A,B,Cin,Sum,Cout);

    A=1; B=0; Cin=0;
    #10;
    $display("%b %b %b | %b %b",A,B,Cin,Sum,Cout);
    
    A=1; B=0; Cin=1;
    #10;
    $display("%b %b %b | %b %b",A,B,Cin,Sum,Cout);

    A=1; B=1; Cin=0;
    #10;
    $display("%b %b %b | %b %b",A,B,Cin,Sum,Cout);

    A=1; B=1; Cin=1;
    #10;
    $display("%b %b %b | %b %b",A,B,Cin,Sum,Cout);

    $finish;
end
endmodule
    
    
    
    
