% q : if the input is 3 then the answer is the sum of 1+2+3
% this is the base case
sum(0,0).
% N1 IS N-1 is the countdown (which goes from 3 to 2 to 1 to 0 meets the base case and stops and sum becomes true)
sum(N,S) :- N1 is N-1, sum(N1,S1),S is S1+N .



fac(1,1).
fac(N,S) :- N2 is N-1, fac(N2,S2), S is S2*N .