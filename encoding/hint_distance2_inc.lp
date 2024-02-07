#program step(t).
:- not { not in(X,T): goal(X) } t-T, T = 0..t, query(t).
