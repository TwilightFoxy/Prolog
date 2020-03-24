pr3_0:-read(N),write(N).
pr3_1:-read(N),r_list(A,N),w_list(A).
r_list(A,N):-r_list(A,N,0,[]).
r_list(A,N,N,A):-!.
r_list(A,N,I,B):-I1 is I+1, read(X), append(B,[X],B1),r_list(A,N,I1,B1).
w_list([]):-!.
w_list([H|T]):-write(H),nl,w_list(T).

sum_list:-read(N),r_list(A,N),sum_l(A,Z),write(Z).
sum_l(A,Z):-s_l(A, Z, 0).
s_l([], Z, Z):-!.
s_l([H|T], Z, S):-S1 is S+H, s_l(T, Z, S1).

zacep:-read(N), r_list(A,N),read(I), zc(A,I,Z), write(Z).
zc(A,I,Z):-zc(A, I, 1, Z).
zc([H|_], I, I, H):-!.
zc([_|T], I, K, Z):- K1 is K+1, zc(T, I, K1, Z).

min:-read(N), r_list(A,N), min(A,M), write(M).
min([H|T], M):-min(T, M, H).
min([], M, M):-!.
min([H|T], M, MI):-H < MI, !, min(T, M, H).
min([_|T], M, MI):-min(T,M, MI).
