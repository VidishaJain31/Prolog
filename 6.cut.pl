% the concept of cut is when prolog is building subgoals for u and when the subgoals are pointless to resolve as u already failed your goal
% when u put a cut in a rule it means that from this part on if anything fails dont resolve it stop backtracking forever and give everything till now


friend(phil,robin).
friend(phil,pat).
friend(chris,robin).
friend(jo,chris).

invit(phil).
invit(pat).

invit(eric).

computer_talks(eric).

no_computer_talks(P) :- not(computer_talks(P)).
pal(X,Y) :- friend(X,Y).
pal(X,Y) :- friend(Y,X).
prty(P) :- invit(P).
prty(X) :- pal(X,Y),invit(Y).
popular(P) :- prty(P) ,!, no_computer_talks(P).











