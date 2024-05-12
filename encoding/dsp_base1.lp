{ in(X) : node(X) }.

dominated(X) :- in(X).
dominated(Y) :- in(X), edge(X,Y).
dominated(Y) :- in(X), edge(Y,X).
:- not dominated(X), node(X).

#minimize { 1,X: in(X) }.

