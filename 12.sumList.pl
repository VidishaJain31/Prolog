sum([],[],[]).
sum([H1|T1],[H2|T2],[H3|T3]) :- sum(T1,T2,T3) ,H3 is H1 + H2.