#program step(t).
:- not 1 { in(Y,t):edge(X,Y) ; in(Y,t):edge(Y,X) } 1,
	 { in(Y,t-1):edge(X,Y) ; in(Y,t-1):edge(Y,X) } 0,
	 token_removed(X,t), t>0.
