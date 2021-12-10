% the rule has a head and a body
% head :- body

% betty is the mother of ann
mother(betty, ann).
mother(dalia, betty).

father(chris,ann).
father(eric, betty).


% u find the relation btwn the tuples this is a rule 
% and if u define it in db u can ask questions

% rule
parent(X,Y) :- mother(X,Y).
parent(X,Y) :- father(X,Y).
% do in terminal parent(X,ann).
