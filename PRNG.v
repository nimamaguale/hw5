module PRNG(clk,set);
input clk;
input set;
output [3:1] Q;
reg [3:1] Q;
initial
begin
    Q[3:1]=3'b001;
end
always@(posedge clk)
begin
    if(set)
        Q[3:1]= 3'b110;
    else
    begin
        Q[3] <= Q[2];
        Q[2] <= Q[1];
        Q[1] <= Q[3]^Q[1];
    end
end
endmodule
