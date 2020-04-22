perebor(0):-!.
perebor(X):- write(X),X1 is X-1, perebor(X1).
write3(X,Y,Z):- write(X), write(Y), write(Z).
prov(X,Y,Z):- X<Y+Z, Y<X+Z, Z<X+Y.
start(X):-prov(X,2,1),write3(X,2,1),X1 is X-1, start(X1).
start(X):- not(prov(X,2,1)),X1 is X-1,start(X1).
