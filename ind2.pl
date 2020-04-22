r_list(A,N):-r_list(A,N,0,[]).%���� ������
r_list(A,N,N,A):-!.
r_list(A,N,I,B):-I1 is I+1, read(X), append(B,[X],B1),r_list(A,N,I1,B1).
w_list([]):-!.%����� ������
w_list([H|T]):-write(H),nl,w_list(T).

more([],_):-!.
more([H|T],M):-H>M, write(H),write(" "),more(T,M).
more([_|T],M):-more(T,M).


sr([],S,K,[H1|T1]):- Z is S/K,write(Z),write(" - ������� ��������������"),nl, more([H1|T1],Z),!.
sr([H|T],S,K,[H1|T1]):- S1 is S+H, K1 is K+1, sr(T,S1,K1,[H1|T1]).


ind2:-read(N),r_list(A,N),sr(A,0,0,A).
