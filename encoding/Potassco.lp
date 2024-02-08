% cardinality constraints
{ in(X) : node(X) }.

% domination constraints
edge(X,Y) :- edge(Y,X).
dominated(X) :- in(X).
dominated(Y) :- in(X), edge(X,Y).
:- not dominated(X), node(X).

% objective statement
#minimize { 1,X: in(X) }.

#show in/1.
