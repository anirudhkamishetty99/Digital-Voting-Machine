module voting_machine(
    input voteA,
    input voteB,
    input reset,
    output reg [3:0] countA,
    output reg [3:0] countB
);

always @(posedge voteA or posedge voteB or posedge reset)
begin
    if(reset)
    begin
        countA = 0;
        countB = 0;
    end
    else if(voteA)
        countA = countA + 1;
    else if(voteB)
        countB = countB + 1;
end

endmodule
