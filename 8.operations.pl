% operand(66+77,C1,C2). will give C1 = 66 and C2 = 77
operand(X+Y, X, Y).
% sum(2,4,Z).
sum(X,Y,Z) :- Z is X+Y.

sumsq(X,Y,Z) :- Z is (X*X) + (Y*Y).




