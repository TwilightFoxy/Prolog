max(X,Y,Z,X):-X>Y,X>Z,!.
max(_,Y,Z,Y):-Y>Z,!.
max(_,_,Z,Z).

fact(0,1).
fact(N,X):-N1 is N-1,fact(N1,X1),X is X1*N.

fact1(N,X):-fact2(0,1,N,X).
fact2(N,K,N,K):-!.
fact2(I,K,N,X):-I1 is I+1,K1 is K*I1,fact2(I1,K1,N,X).

fib(1,1):-!.
fib(2,1):-!.
fib(N,X):-N1 is N-1,fib(N1,X1),N2 is N-2,fib(N2,X2), X is X1+X2.


pr(X):-prost(2,X).
prost(X,X):-!.
prost(I,X):-Y is X mod I,not(Y=0),I1 is I+1,prost(I1,X).

sum_dig(N,N) :- N>=0, N<10.
sum_dig(N,K) :- N>=10,V is N div 10, P is N mod 10, sum_dig(V,U), K is P+U.

nod(0, B, B).
nod(A, 0, A).

nod(A, B, X) :-  A >= B, M is A mod B, nod(M, B, X).
nod(A, B, X) :-  A < B, M is B mod A, nod(A, M, X).

eiler(A,X):- eiler(A,X,0).
eiler(A,_,A):- !.
eiler(A,X,I):- pr(I), X1 is X+1, I1 is I+1, eiler(A,X1,I1).
eiler(A,X,I):- I2 is I+1, eiler(A,X,I2).

