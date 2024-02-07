#program step(t).
token_added(X,t) :- not in(X,t-1), in(X,t), t > 0.
:- token_added(X,t-1), not in(X,t), t > 1.
