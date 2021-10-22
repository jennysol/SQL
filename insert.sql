USE formula1;

select * from volta;
INSERT INTO EQUIPE(sigla, nome, idPais) VALUES 
	('AF',  'Alfa Romeo',      1),
	('FR',  'Ferrari',         2),
	('AM',  'Aston Martin',    3),
	('HFT', 'Haas F1 Team',    4),
	('ML',  'McLaren',         5),
	('MC',  'Mercedes',        6),
	('RBR', 'Red Bull Racing', 7),
	('AP',  'Alpine',          8),
	('AT',  'Alpha Tauri',     9),
	('WL',  'Williams',       10);

INSERT INTO PILOTO(numero, nome, idPais, idEquipe) VALUES
    (1,  'Daniel Ricciardo', 1, 1),
	(2,  'Lando Norris',     2, 2),
	(3,  'Sebastian Vettel', 3, 3),
	(4,  'Nicholas Latifi',  4, 4),
	(5,  'Kimi Raikkonen',   5, 5),
	(6,  'Nikita Mazepin',   6, 6),
	(7,  'Pierre Gasly',     7, 7),
	(8,  'Sergio Perez',     8, 8),
	(9,  'Fernando Alonso',  9, 9),
	(10, 'Charles Leclerc', 10, 10);