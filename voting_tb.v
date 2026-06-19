`timescale 1ns/1ps

module voting_tb;

reg voteA, voteB, reset;
wire [3:0] countA, countB;

voting_machine uut(
    .voteA(voteA),
    .voteB(voteB),
    .reset(reset),
    .countA(countA),
    .countB(countB)
);

initial begin
    $display("Starting Voting Machine Test");

    voteA=0; voteB=0; reset=1;
    #10 reset=0;

    #10 voteA=1;
    #10 voteA=0;

    #10 voteA=1;
    #10 voteA=0;

    #10 voteB=1;
    #10 voteB=0;

    #10;
    $display("Votes for A = %d", countA);
    $display("Votes for B = %d", countB);

    $finish;
end

endmodule
