DOMAINS
	content, container = symbol	
PREDICATES
	geo(content, container)
CLAUSES
	% Africa
	geo("Abuja", "Nigeria").
	geo("Niamey", "Niger").
	geo("Nigeria", "Africa").
	geo("Niger", "Africa").
	geo(X, "Africa") :- geo(X, "Nigeria").
	geo(X, "Africa") :- geo(X, "Niger").
	
	% Asia
	geo("Delhi", "India").
	geo("Kathmandu", "Nepal").
	geo("India", "Asia").
	geo("Nepal", "Asia").
	geo(X, "Asia") :- geo(X, "India").
	geo(X, "Asia") :- geo(X, "Nepal").
	
	%South America
	geo("Montevideo", "Uruguay").
	geo("Santiago", "Chile").
	geo("Uruguay", "South America").
	geo("Chile", "South America").
	geo(X, "South America") :- geo(X, "Uruguay").
	geo(X, "South America") :- geo(X, "Chile").
	geo("Valparaiso", "Chile").
	geo("Arica", "Chile").
	geo("Punta Arenas", "Chile").
	geo("Rancagua", "Chile").
/*

*/