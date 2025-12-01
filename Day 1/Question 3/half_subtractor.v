module half_subtractor(input a,input b, output diff,borrow);
assign diff=a^b;
assign borrow=~a&b;
endmodule
