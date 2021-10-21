
create database formula1;
USE formula1;

CREATE TABLE PAIS(
    idPais INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    
    CONSTRAINT PAIS_PK PRIMARY KEY (idPais)
) AUTO_INCREMENT=1;

CREATE TABLE EQUIPE(
    idEquipe INT NOT NULL AUTO_INCREMENT,
    sigla VARCHAR(30) NOT NULL,
	nome VARCHAR(30) NOT NULL,
    
    idPais INTEGER,
    
    CONSTRAINT EQUIPE_PK PRIMARY KEY (idEquipe),
	CONSTRAINT fk_EquipePais FOREIGN KEY (idPais) REFERENCES PAIS (idPais)
) AUTO_INCREMENT=1;

CREATE TABLE PILOTO(
	idPiloto INT NOT NULL AUTO_INCREMENT,
	numero INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    
	idPais INTEGER,
    idEquipe INTEGER,
    
    CONSTRAINT PILOTO_PK PRIMARY KEY (idPiloto),
    CONSTRAINT fk_PilotoPais FOREIGN KEY (idPais) REFERENCES PAIS (idPais),
    CONSTRAINT fk_PilotoEquipe FOREIGN KEY (idEquipe) REFERENCES EQUIPE (idEquipe)
) AUTO_INCREMENT=1;

CREATE TABLE VOLTA(
	idVolta INT NOT NULL AUTO_INCREMENT,
    tempo TIME,
    
    idPiloto INTEGER,
    idEquipe INTEGER,
    
	CONSTRAINT VOLTA_PK PRIMARY KEY (idVolta),
    CONSTRAINT fk_VoltaPiloto FOREIGN KEY (idPiloto) REFERENCES PILOTO (idPiloto),
    CONSTRAINT fk_VoltaEquipe FOREIGN KEY (idEquipe) REFERENCES EQUIPE (idEquipe)
);

CREATE TABLE CORRIDA(
	idCorrida INT NOT NULL AUTO_INCREMENT,
    nome_gp varchar(20) not null,
    qtd_voltas integer,
    
    idEquipe INTEGER,
    idPais INTEGER,
    
    CONSTRAINT CORRIDA_PK PRIMARY KEY (idCorrida),
    CONSTRAINT fk_CorridaEquipe FOREIGN KEY (idEquipe) REFERENCES EQUIPE (idEquipe),
    CONSTRAINT fk_CorridaPais FOREIGN KEY (idPais) REFERENCES PAIS (idPais)
) AUTO_INCREMENT=1;

CREATE TABLE PARTICIPANTE(
	idParticipante INT NOT NULL AUTO_INCREMENT,
    posicao_largada  varchar(20),
    
    idEquipe INTEGER,
    idPiloto INTEGER,
    
    CONSTRAINT PARTICIPANTE_PK PRIMARY KEY (idParticipante),
    CONSTRAINT fk_ParticipanteEquipe FOREIGN KEY (idEquipe) REFERENCES EQUIPE (idEquipe),
    CONSTRAINT fk_ParticipantePiloto FOREIGN KEY (idPiloto) REFERENCES PILOTO (idPiloto)
) AUTO_INCREMENT=1;

CREATE TABLE RESULTADO(
	idResultado INT NOT NULL AUTO_INCREMENT,
    posicao_chegada varchar(20),
	tempo_corrido varchar(20),
	pontuacao integer,
    
    idEquipe INTEGER,
    idPiloto INTEGER,
	
    CONSTRAINT RESULTADO_PK PRIMARY KEY (idResultado),
    CONSTRAINT fk_ResultadoEquipe FOREIGN KEY (idEquipe) REFERENCES EQUIPE (idEquipe),
    CONSTRAINT fk_PilotoResultado  FOREIGN KEY (idPiloto) REFERENCES PILOTO (idPiloto)
) AUTO_INCREMENT=1;