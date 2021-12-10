% how prolog answers/satisfy your questions

% it answers in true or false
% the process is subpassing or subgoaling your questions 
% it checks all possibilities that can find your answer, break them into subgoals and goes at a level u can think as recursion . then it check whether the answer somewhere in my database is it a fact
% can i satisfy the head of the rule that matches the functor/text of my question.
% can i match the parameter of the questions to the rules and facts in the database

% it breaks down and makes a tree from the question, these are possibilities that this question can get the answer.
% these trees that build the possibilities of your question is called subgoals.


% friend example

friends(phil,robin).
friends(phil,pat).
friends(chris,robin).
friends(jo,chris).

%  see backtracking by typing trace. and then calling friends(phil,X).

% for friends(chris,X). it will show only robin so to show robin and jo both we need a rule 
% friends(F1,F2) :- friends(F2,F1).

invitations(phil).
invitations(pat).

% instead of this which can give error at some point
% friends(F1,F2) :- friends(F2,F1).
pals(X,Y) :- friends(X,Y).
pals(X,Y) :- friends(Y,X).



party(X) :- invitations(X).
party(X) :- pals(X,Y),invitations(Y).








