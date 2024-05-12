#program base.
:- not in(X,0), start(X).
:- in(X,0), not start(X).

#program step(t).
{ in(X,t) : node(X) } K+th :- k(K).
dominated(X,t) :- in(X,t).
dominated(Y,t) :- in(X,t), edge(X,Y).
dominated(Y,t) :- in(X,t), edge(Y,X).
:- not dominated(X,t), node(X).

token_removed(X,t) :- in(X,t-1), not in(X,t), t > 0.
token_added(X,t) :- not in(X,t-1), in(X,t), t > 0.
:- not 1 { token_removed(X,t) ; token_added(X,t) } 1, t > 0.

#program check(t).
:- not in(X,t), goal(X), query(t).
:- in(X,t), not goal(X), query(t).

#show in/2.
