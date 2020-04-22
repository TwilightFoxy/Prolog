r_list(A,N):-r_list(A,N,0,[]).%Ввод списка
r_list(A,N,N,A):-!.
r_list(A,N,I,B):-I1 is I+1, read(X), append(B,[X],B1),r_list(A,N,I1,B1).
w_list([]):-!.%Вывод списка
w_list([H|T]):-write(H),nl,w_list(T).

sr([],S,K):- Z is S/K,write(Z),write(" - Среднее арифметическое"),!.
sr([H|T],S,K):- S1 is S+H, K1 is K+1, sr(T,S1,K1).


ind2:-read(N),r_list(A,N),w_list(A),sr(A,0,0).
