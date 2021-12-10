% we want to see how many invitations occured in our db ; how many people have invitations 

friends(phil,robin).
friends(phil,pat).
friends(chris,robin).
friends(jo,chris).

invitations(phil).
invitations(pat).
invitations(eric).

pals(X,Y) :- friends(X,Y).
pals(X,Y) :- friends(Y,X).

party(X) :- invitations(X).
party(X) :- pals(X,Y),invitations(Y).

computer_talks(eric).
no_computer_talks(P) :- not(computer_talks(P)).
popular(P) :- party(P) ,!, no_computer_talks(P).

% what is the process of increment is to remove something from the db, update it and add it back 
% it is not a recursive process
increment :- retract(count(N)), N1 is N+1, asserta(count(N1)),!,fail.
% !,fail will stop backtracking, so we dont backtrack and satisfy all the posibilities of the rules

% setting the initial/accumalator count(0) and then calling count 
checkInvitations(N) :- assert(count(0)), countInvitations(N).

% will run for any person who has invitations and every time it finds something it increments 
countInvitations(N) :- invitations(_) , increment.
% just removes count from db
countInvitations(N) :- retract(count(N)).
