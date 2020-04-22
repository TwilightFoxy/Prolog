perebor(0):-!.
perebor(X):- write(X),X1 is X-1, perebor(X1).
write3(X,Y,Z):- write(X),write(" "),write(Y),write(" "),write(Z),write("\n").
prov(X,Y,P):- Z is P-X-Y, X<Y+Z, Y<X+Z, Z<X+Y.
%start(0):-!.
%start(X):- prov(X,2,1),write3(X,2,1),X1 is X-1, start(X1).
%start(X):- not(prov(X,2,1)),X1 is X-1,start(X1).

one(0,_):-!.
one(X,P):- Y is P-X,two(X,Y,P).
two(X,Y,P):- Y=0, X1 is X-1,one(X1,P).
two(X,Y,P):- prov(X,Y,P),Z1 is P-X-Y, write3(X,Y,Z1),Y1 is Y-1,two(X,Y1,P).
two(X,Y,P):- Y1 is Y-1, two(X,Y1,P).
