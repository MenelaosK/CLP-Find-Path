:-lib(ic).
:-lib(ic_global).
:-lib(branch_and_bound).
:-lib(ic_edge_finder).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

geo(1,[10,11,9,8,5,4,9]).
geo(2,[9,12,8,6,10,14,8]).
geo(3,[10,8,7,8, 5,6,9]).
geo(4,[12,3,9,4,6,6,3]).

find_path(Path,Heights,Diffa):-
	findall(G,geo(G,_),Geos),
	
	length(Geos,N),
	length(Path,N),
	Path:: 1..7,
	
	
	
	constraint_Geos(Geos,Heights,Path),
	vresDif(Heights,Telos),
	vresDif2(Heights,Arxi),
	
	Diff#=(-1)*Arxi+Telos,
	bb_min(labeling(Path),Diff,bb_options{strategy:restart}),!,
	Diffa#=abs(Diff
	).

constraint_Geos([_],_,_).	
constraint_Geos([G|Geos],[H,H1|Heights],[P,P1|Path]):-
	geo(G,List),
	element(P,List,H),
	G1#=G+1,
	geo(G1,List1),
	P1#:: 1..7,
	P1#=<P+1,
	P1#>=P-1,	
	H1#<H,
	element(P1,List1,H1),
	constraint_Geos(Geos,[H1|Heights],[P1|Path]).


vresDif(List,T):-
	append(_,[T],List).
	
vresDif2(List,T):-
	append([T],_,List).