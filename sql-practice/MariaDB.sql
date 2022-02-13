CREATE TABLE Apostadores(
	apostador_id serial PRIMARY KEY,
  	apostador_name VARCHAR(50) NOT NULL,
  	apostador_edad int,
  	ganadas INT
);
CREATE TABLE Ganador(
	ganador_id serial PRIMARY KEY,
  	apostador_id BIGINT(20) UNSIGNED,
  	FOREIGN KEY(apostador_id) REFERENCES Apostadores(apostador_id)
);
CREATE TABLE Equipos(
	equipo_id serial PRIMARY KEY,
  	nombre_equipo VARCHAR(50) NOT NULL
);
CREATE TABLE Marcador_Apostado(
	marcador_apostado_id serial PRIMARY KEY,
  	apostador_id BIGINT(20) UNSIGNED,
  	marcador_apostado_equipo1 INT,
  	marcador_apostado_equipo2 INT,
  	FOREIGN KEY(apostador_id) REFERENCES Apostadores(apostador_id)
);
CREATE TABLE Partidos(
	partido_id serial PRIMARY KEY,
  	equipo1_id BIGINT(20) UNSIGNED,
  	equipo2_id BIGINT(20) UNSIGNED,
  	FOREIGN KEY(equipo1_id) REFERENCES Equipos(equipo_id),
  	FOREIGN KEY(equipo2_id) REFERENCES Equipos(equipo_id)
);
CREATE TABLE Marcador_Definitivo(
	marcador_definitivo_id serial PRIMARY KEY,
  	marcador_definitivo_equipo1 INT,
  	marcador_definitivo_equipo2 INT
);
CREATE TABLE Apuestas(
	apuesta_id serial PRIMARY KEY,
  	apostador_id BIGINT(20) UNSIGNED,
  	partido_id BIGINT(20) UNSIGNED,
  	marcador_apostado_id BIGINT(20) UNSIGNED,
  	marcador_definitivo_id BIGINT(20) UNSIGNED,
  	fecha DATE,
  	monto_apostado DOUBLE,
  	resultado BOOLEAN,
  	FOREIGN KEY(apostador_id) REFERENCES Apostadores(apostador_id),
  	FOREIGN KEY(partido_id) REFERENCES Partidos(partido_id),
  	FOREIGN KEY(marcador_apostado_id) REFERENCES Marcador_Apostado(marcador_apostado_id),
  	FOREIGN KEY(marcador_definitivo_id) REFERENCES Marcador_Definitivo(marcador_definitivo_id)
);

SELECT * FROM Apostadores WHERE ganadas>10;
SELECT apuesta_id FROM Apuestas WHERE monto_apostado>1000;
SELECT 	equipo_id FROM Equipos WHERE nombre_equipo="FC BARCELONA"

// RETO
SELECT MAX(ganadas) FROM Apostadores;










