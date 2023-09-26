DOMAINS
	person = symbol

PREDICATES 
	man(person) 
	woman(person)
	married(person, person)
	parent(person, person) 
	wife(person, person)
	husband(person, person) 
	mother(person, person)	
	father(person, person) 
	daughter(person, person) 
	son(person, person) 
	sister(person, person) 
	brother(person, person) 	
	grandmother(person, person) 
	grandfather(person, person)  
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

	wife(W, H) :- married(W, H).
	husband(H, W) :- married(W, H).
	
	mother(M, C) :- woman(M), parent(M, C).
	father(F, C) :- man(F), parent(F, C).
	daughter(D, P) :- woman(D), parent(P, D).
	son(S, P) :- man(S), parent(P, S).
	sister(S, X) :- woman(S), parent(P, S), parent(P, X).
	brother(B, X) :- man(B), parent(P, B), parent(P, X).
	grandmother(GM, GC) :- mother(GM, P), parent(P, GC).
	grandfather(GF, GC) :- father(GF, P), parent(P, GC).
	granddaughter(GD, GP) :-
	woman(GD), grandmother(GP, GD);
	woman(GD), grandfather(GP, GD).

	grandson(GS, GP) :-
	man(GS), grandmother(GP, GS);
	man(GS), grandfather(GP, GS).

	aunt(AU, X) :-
	sister(AU, P), parent(P, X);
	wife(AU, UN), brother(UN, P), parent(P, X).	
	
	uncle(UN, X) :-
	brother(UN, P), parent(P, X);
	husband(UN, AU), sister(AU, P), parent(P, X).

	niece(N, X) :-
	daughter(N, S), sister(S, X);
	daughter(N, B), brother(B, X).	
	
	nephew(N, X) :-
	son(N, S), sister(S, X);
	son(N, B), brother(B, X).

	svekrov(S, X) :- mother(S, H), husband(H, X).
	svyokr(S, X) :- father(S, H), husband(H, X).
	tesha(T, X) :- mother(T, W), wife(W, X).
	test(T, X) :- father(T, W), wife(W, X).

	svatya(S, P) :- 
	mother(S, X), wife(W, X), parent(P, W);
	mother(S, X), husband(H, X), parent(P, H).

	svat(S, P) :-
	father(S, X), wife(W, X), parent(P, W);
	father(S, X), husband(H, X), parent(P, H). 

	svoyachenica(S, X) :- sister(S, W), wife(W, X).
	shurin(S, X) :- brother(S, W), wife(W, X).	
	zolovka(Z, X) :- sister(Z, H), husband(H, X).
	dever(D, X) :- brother(D, H), husband(H, X).

	snoha(S, P) :- wife(S, SON), son(SON, P).
	zyat(Z, X) :- 
	husband(Z, D), daughter(D, X);
	husband(Z, S), sister(S, X);
	husband(Z, ZOLOVKA), zolovka(ZOLOVKA, X);
	husband(Z, N), niece(N, X).