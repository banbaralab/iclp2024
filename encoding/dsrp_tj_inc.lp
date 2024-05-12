#program base.
% スタート状態に関する制約
:- not in(X,0), start(X).

#program step(t).
% 支配集合問題に関する制約
K { in(X,t) : node(X) } K :- k(K).
dominated(X,t) :- in(X,t).
dominated(Y,t) :- in(X,t), edge(X,Y).
dominated(Y,t) :- in(X,t), edge(Y,X).
:- not dominated(X,t), node(X).

% 遷移制約
token_removed(X,t) :- in(X,t-1), not in(X,t), t > 0.
:- not 1 { token_removed(X,t) } 1, t > 0.

#program check(t).
% ゴール状態に関する制約
:- not in(X,t), goal(X), query(t).

#show in/2.
