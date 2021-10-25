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

INSERT INTO VOLTA(tempo, idPiloto, idEquipe) VALUES 
	('0:23:02', 1, 1),
    ('0:24:02', 2, 2),
    ('0:25:02', 3, 3),
    ('0:26:02', 4, 4),
    ('0:27:02', 5, 5),
    ('0:28:02', 6, 6),
    ('0:29:02', 7, 7),
    ('0:30:02', 8, 8),
    ('0:31:02', 9, 9),
    ('0:32:02', 10, 10);

INSERT INTO CORRIDA(nome_gp, qtd_voltas, idEquipe, idPais) VALUES
	('Rua de Adelaide', 1, 1, 1),
    ('Ain-Diab', 2, 2, 2),
    ('Aintree', 3, 3, 3),
    ('Albert Park', 4, 4, 4),
    ('Algarve', 5, 5, 5),
    ('Américas', 6, 6, 6),
    ('AVUS', 7, 7, 7),
    ('Bahrein', 8, 8, 8),
    ('Urbano de Baku', 9, 9, 9),
    ('Catalunha', 10, 10, 10);

INSERT INTO PARTICIPANTE(posicao_largada, idEquipe, idPiloto) VALUES
	('01', 1, 1),
    ('02', 2, 2),
    ('03', 3, 3),
    ('04', 4, 4),
    ('05', 5, 5),
    ('06', 6, 6),
    ('07', 7, 7),
    ('08', 8, 8),
    ('09', 9, 9),
	('10', 10, 10);

INSERT RESULTADO(posicao_chegada, tempo_corrido, pontuacao, idEquipe, idPiloto) VALUES
	('01', '0:30:02', 10, 1, 1),
    ('02', '0:32:02', 9,  2, 2),
    ('03', '0:34:02', 8,  3, 3),
    ('04', '0:36:02', 7,  4, 4),
    ('05', '0:38:02', 6,  5, 5),
    ('06', '0:40:02', 5,  6, 6),
    ('07', '0:42:02', 6,  7, 7),
    ('09', '0:46:02', 5,  8, 8),
    ('10', '0:48:02', 4,  9, 9),
    ('10', '0:50:02', 3, 10, 10);