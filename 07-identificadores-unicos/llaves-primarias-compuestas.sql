-- La combinacion de llaves es unica no los numeros, puede servir para un sistema de likes
CREATE TABLE usersDual (
	id1 int,
	id2 int,
	PRIMARY KEY (id1, id2)
);