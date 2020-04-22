write3(X,Y,Z):- write(X),write(" "),write(Y),write(" "),write(Z),write("\n").
prov(X,Y,P):- Z is P-X-Y, X<Y+Z, Y<X+Z, Z<X+Y.
%start(0):-!.
%start(X):- prov(X,2,1),write3(X,2,1),X1 is X-1, start(X1).
%start(X):- not(prov(X,2,1)),X1 is X-1,start(X1).

ind1():-read(P),X is P-1,one(X,P,0).
one(X,_,K):- X=0, write("Всего "),write(K),write(" треугольников."),!.
one(X,P,K):- Y is P-X,two(X,Y,P,K).
two(X,Y,P,K):- Y=0, X1 is X-1,one(X1,P,K).
two(X,Y,P,K):- prov(X,Y,P),Z1 is P-X-Y, write3(X,Y,Z1),Y1 is Y-1,K1 is K+1,two(X,Y1,P,K1).
two(X,Y,P,K):- Y1 is Y-1, two(X,Y1,P,K).
