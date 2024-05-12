#program base.
:- not in(X,0), start(X).

#program step(t).
K { in(X,t) : node(X) } K :- k(K).
dominated(X,t) :- in(X,t).
dominated(Y,t) :- in(X,t), edge(X,Y).
dominated(Y,t) :- in(X,t), edge(Y,X).
:- not dominated(X,t), node(X).

token_removed(X,t) :- in(X,t-1), not in(X,t), t > 0.
:- not 1 { token_removed(X,t) } 1, t > 0.

#program check(t).
:- not in(X,t), goal(X), query(t).

#show in/2.
