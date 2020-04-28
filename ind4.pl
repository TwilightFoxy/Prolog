<<<<<<< HEAD
man(sergei).
man(boris).
man(leonid).
man(grigoriy).
man(victor).
bikefrom(riga).
bikefrom(penza).
bikefrom(lvov).
bikefrom(harkov).
bikefrom(moskva).
manfrom(riga).
manfrom(penza).
manfrom(lvov).
manfrom(harkov).
manfrom(moskva).
rider(Name, Bike, From).

solve(Solve):-
    Solve = [rider(X,Xbike,Xfrom),rider(Y,Ybike,Yfrom),rider(Z,Zbike,Zfrom),rider(C,Cbike,Cfrom),rider(V,Vbike,Vfrom)],

    man(X),man(Y),man(Z),man(C),man(V),

    bikefrom(Xbike),bikefrom(Ybike),bikefrom(Zbike),bikefrom(Cbike),bikefrom(Vbike),
    unique([Xbike, Ybike, Zbike, Cbike, Vbike]),

    manfrom(Xfrom),manfrom(Yfrom),manfrom(Zfrom),manfrom(Cfrom),manfrom(Vfrom),
    unique([Xfrom, Yfrom, Zfrom, Cfrom, Vfrom]).
member(rider(_, piece, _, poetry), Solve),




check([]):-!.
check([rider(_, Xbike, Xfrom)|T]):-
  !, not(Xbike = Xfrom), check(T).
=======
pr7_7:- List[_,_,_,_],
	(
	(	(in_list(List,[_,fantic,white]);in_list(List,[_,fantic,grey]);
		in_list(List,[_,fantic,black])),
		(in_list(List,[_,murl,white]);in_list(List,[_,murl,grey]);
		in_list(List,[_,murl,red])),
		(in_list(List,[_,dru,black]);in_list(List,[_,dru,grey]);
		in_list(List,[_,dru,red])),
		(in_list(List,[_,elis,white]);in_list(List,[_,elis,black]);
		in_list(List,[_,elis,red])),
		in_list(List,[misha,_,black]),in_list(List,[maksim,murl,_]),
		in_list(List,[leo,elis,_]),in_list(List,[dima,_,white])
	);
	(	(in_list(List,[_,fantic,white]);in_list(List,[_,fantic,grey]);
		in_list(List,[_,fantic,black])),
		(in_list(List,[_,murl,white]);in_list(List,[_,murl,grey]);
		in_list(List,[_,murl,red])),
		(in_list(List,[_,dru,black]);in_list(List,[_,dru,grey]);
		in_list(List,[_,dru,red])),
		(in_list(List,[_,elis,white]);in_list(List,[_,elis,black]);
		in_list(List,[_,elis,red])),
		in_list(List,[misha,_,black]),in_list(List,[maksim,murl,_]),
		(in_list(List,[dima,murl,_]);in_list(List,[dima,dru,_]);
		in_list(List,[dima,elis,)]))
	);
	(
		(in_list(List,[_,fantic,white]);in_list(List,[_,fantic,grey]);
		in_list(List,[_,fantic,black])),
		(in_list(List,[_,murl,white]);in_list(List,[_,murl,grey]);
		in_list(List,[_,murl,red])),
		(in_list(List,[_,dru,black]);in_list(List,[_,dru,grey]);
		in_list(List,[_,dru,red])),
		(in_list(List,[_,elis,white]);in_list(List,[_,elis,black]);
		in_list(List,[_,elis,red])),
		in_list(List,[leo,elis,_]),in_list(List,[dima,_,white]),
		(in_list(List,[dima,murl,_]);in_list(List,[dima,dru,_]);
		in_list(List,[dima,elis,)]))

	);
	(
		(in_list(List,[_,fantic,white]);in_list(List,[_,fantic,grey]);
		in_list(List,[_,fantic,black])),
		(in_list(List,[_,murl,white]);in_list(List,[_,murl,grey]);
		in_list(List,[_,murl,red])),
		in_list(List,[misha,_,black]),in_list(List,[maksim,murl,_]),
		in_list(List,[leo,elis,_]),in_list(List,[dima,_,white]),
		(in_list(List,[dima,murl,_]);in_list(List,[dima,dru,_]);
		in_list(List,[dima,elis,)]))

	);
	(
		(in_list(List,[_,dru,black]);in_list(List,[_,dru,grey]);
		in_list(List,[_,dru,red])),
		(in_list(List,[_,elis,white]);in_list(List,[_,elis,black]);
		in_list(List,[_,elis,red])),
		in_list(List,[misha,_,black]),in_list(List,[maksim,murl,_]),
		in_list(List,[leo,elis,_]),in_list(List,[dima,_,white]),
		(in_list(List,[dima,murl,_]);in_list(List,[dima,dru,_]);
		in_list(List,[dima,elis,)]))
	)
	),
	write(List).
>>>>>>> master
