{ in(X) : node(X) }.

:- not 1 { in(Y):edge(X,Y) ; in(Y):edge(Y,X) }, not in(X), node(X).

#minimize { 1,X: in(X) }.

#show in/1.

