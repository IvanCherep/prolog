DOMAINS
	person = symbol

PREDICATES 
	man(person) 
	woman(person)
	married(person, person) 
	parent(person, person) 
	mother(person, person)	
	father(person, person) 
	daughter(person, person) 
	son(person, person) 
	sister(person, person) 
	brother(person, person) 
/*	
	grandmother(person, person) 
	grandfather(person, person) 
	grandparent(person, person) 
	granddaughter(person, person) 
	grandson(person, person) 
	aunt(person, person)
	uncle(person, person) 
	niece(person, person) 
	nephew(person, person) 
	svekrov(person, person)
	svyokr(person, person)
	tesha(person, person) 
	test(person, person) 
	svatya(person, person) 
	svat(person, person) 
	svoyachenica(person, person) 
	shurin(person, person) 
	zolovka(person, person) 
	dever(person, person) 
	snoha(person, person) 
	zyat(person, person) 
*/
CLAUSES
	man(X) :- X = viktor; X = petere; X = philip;
	X = guillermo; X = donald; X = vladimir;
	X = markus; X = edward; X = alexey; X = pavel.
	
	woman(Y) :- Y = amelija; Y = catherine; Y = elizabeth;
	Y = melania; Y = emma; Y = angela; Y = irene;
	Y = greta; Y = susanna; Y = ksenia.
	
	married(W, H) :-
	W = amelija, H = viktor;
	W = catherine, H = petere;
	W = elizabeth, H = philip;
	W = melania, H = donald;
	W = angela, H = vladimir.
	
	parent(P, C) :-
	P = amelija, C = guillermo;
	P = amelija, C = melania;
	P = viktor, C = guillermo;
	P = viktor, C = melania;
	P = catherine, C = donald;
	P = catherine, C =  emma;
	P = catherine, C = vladimir;
	P = petere, C = donald;
	P = petere, C = emma;
	P = petere, C = vladimir;
	P = elizabeth, C = angela;
	P = elizabeth, C = irene;
	P = elizabeth, C = markus;
	P = philip, C = angela;
	P = philip, C = irene;
	P = philip, C = markus;
	P = melania, C = edward;
	P = melania, C = greta;
	P = donald, C = edward;
	P = donald, C = greta;
	P = emma, C = susanna;
	P = angela, C = alexey;
	P = angela, C = ksenia;
	P = angela, C = pavel;
	P = vladimir, C = alexey;
	P = vladimir, C = ksenia;
	P = vladimir, C = pavel.
	
	mother(M, C) :- woman(M), parent(M, C).
	father(F, C) :- man(F), parent(F, C).
	daughter(D, P) :- woman(D), parent(P, D).
	son(S, P) :- man(S), parent(P, S).
	sister(S, X) :- woman(S), parent(P, S), parent(P, X).
	brother(B, X) :- man(B), parent(P, B), parent(P, X).
	grandmother(GM, GC) :- mother(GM, P), parent(P, GC).
	grandfather(GF, GC) :-	
		
	
/*
	grandfather(GF,GS) :- parent(P,GS),parent(GF,P).
	grandparent(GP,G) :- grandmother(GP,G);grandfather(GP,G).
	granddaughter(GD,GP) :- grandparent(GP,GD),woman(GD).
	grandson(GS,GP) :- grandparent(GP,GS),man(GS).
	aunt(AU,X) :- parent(P,X),sister(AU,P); married(AU,UN),brother(UN,P),parent(P,X).
	uncle(UNCLE,X) :- brother(UNCLE,P),parent(P,X);married(AUNT,UNCLE),sister(AUNT,P),parent(P,X).
	niece(N,X) :- woman(N), aunt(X, N); woman(N), uncle(X, N).
	nephew(N,X) :- man(N), aunt(X, N); man(N), uncle(X, N). 
 	svekrov(S,X) :- woman(X),married(X,H),mother(S,H).
	svyokr(S,X) :- woman(X),married(X,H),father(S,H).
	tesha(T,X) :- man(X),married(W,X),mother(T,W).
	test(T,X) :- man(X),married(W,X),father(T,W).
	svatya(S, P) :- mother(S,W),married(W,H),parent(P,H);mother(S,H),married(W,H),parent(P,W).
	svat(S,P) :- father(S,W),married(W,H),parent(P,H);father(S,H),married(W,H),parent(P,W).
	svoyachenica(S, X) :- married(W,X),sister(S,W).
	shurin(S, X) :- married(W,X),brother(S,W).
	zolovka(Z,X) :- married(X,H),sister(Z,H).
	dever(D,X) :- married(X,H),brother(D,H).
	snoha(S,P) :- svekrov(P,S);svyokr(P,S).
	zyat(Z,X) :- tesha(X,Z);svoyachenica(X,Z);married(X,H),sister(ZL,H),married(ZL,Z);niece(N,X),married(N,Z).
*/