% square the list
% base case/ exit case - fact 
squares(0,[]).
% [N1|T] HERE, N1 is the head while t is the tail
squares(N,[N1|T]) :- N1 is N*N ,N2 is N-1, squares(N2,T).


%length of the list 
len([],0).
len([_|T],L) :- len(T, L1), L is L1+1.


% check whether an element is a part of a list or not
contains(_,[]) :- fail.
contains(N,[N|_]).
contains(N,[_|T]) :- contains(N,T). 


% find from list in list
% eg find(3,[[1,one],[2,two],[3,three]], S). and ans is S = three
find(F,[[F,S]|_],S).
find(F,[_|T],S) :- find(F,T,S).


% check if the list is sorted
ordered([]).
ordered([_]).
ordered([X|[N|T]]) :- X<N, ordered([N|T]).

% inserting in the list
insert(X,[],[X]).
% insert x before the head of the list only if x is less then h
insert(X,[H|T],[X|[H|T]]) :- X<H.
insert(X,[H|T],[H|T1]) :- insert(X,T,T1).


% sort a list
sorting([],[]).
sorting([H|T],L) :- sorting(T,T1),insert(H,T1,L).




% CONTROL G GIVES U THE OPTION TO GO TO A PARTICULAR LINE AND PARTICULAR CHAR 
% eg :38:33 will take u to line 38 and char 33

