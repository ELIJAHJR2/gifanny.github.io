SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE ano_de_escolaridad (
  id_ano_de_escolaridad int(1) NOT NULL,
  ano_de_escolaridad varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE dependencia (
  id_dependencia int(1) NOT NULL,
  dependencia text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE direccion (
  id_direccion int(4) NOT NULL,
  pais text NOT NULL,
  ciudad varchar(30) NOT NULL,
  avenida varchar(20) NOT NULL,
  calle varchar(20) NOT NULL,
  numero_de_casa int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE direccion_del_estudiante (
  id_direccion_del_estudiante int(3) NOT NULL,
  departamento varchar(10) NOT NULL,
  provincia varchar(20) NOT NULL,
  urbanizacion varchar(10) NOT NULL,
  calle varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE estudiantes (
  id_estudiante int(4) NOT NULL,
  nombre varchar(20) NOT NULL,
  apellido_paterno varchar(20) NOT NULL,
  apellido_materno varchar(20) NOT NULL,
  fecha_de_nacimiento date NOT NULL,
  celular int(8) NOT NULL,
  correo_electronico varchar(60) NOT NULL,
  ci int(10) NOT NULL,
  rude varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE genero (
  id_genero int(1) NOT NULL,
  genero text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE motivo_de_uso (
  id_motivo_de_uso int(4) NOT NULL,
  motivo text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE paralelo (
  id_paralelo int(1) NOT NULL,
  parapelo text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE turno (
  id_turno int(1) NOT NULL,
  turno text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE tutor_legal (
  id_tutor_legal int(8) NOT NULL,
  nombre varchar(20) NOT NULL,
  apellido_paterno varchar(20) NOT NULL,
  apellido_materno varchar(20) NOT NULL,
  fecha_de_nacimiento date NOT NULL,
  celular int(8) NOT NULL,
  parentesco varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE unidad_educativa (
  id_unidad_educativa int(4) NOT NULL,
  nombre varchar(20) NOT NULL,
  ubicacion varchar(60) NOT NULL,
  telefono int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE uso_del_celular (
  id_uso_del_celular int(4) NOT NULL,
  tiempo varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


ALTER TABLE ano_de_escolaridad
  ADD PRIMARY KEY (id_ano_de_escolaridad);

ALTER TABLE dependencia
  ADD PRIMARY KEY (id_dependencia);

ALTER TABLE direccion
  ADD PRIMARY KEY (id_direccion);

ALTER TABLE direccion_del_estudiante
  ADD PRIMARY KEY (id_direccion_del_estudiante);

ALTER TABLE estudiantes
  ADD PRIMARY KEY (id_estudiante);

ALTER TABLE genero
  ADD PRIMARY KEY (id_genero);

ALTER TABLE motivo_de_uso
  ADD PRIMARY KEY (id_motivo_de_uso);

ALTER TABLE paralelo
  ADD PRIMARY KEY (id_paralelo);

ALTER TABLE turno
  ADD PRIMARY KEY (id_turno);

ALTER TABLE tutor_legal
  ADD PRIMARY KEY (id_tutor_legal);

ALTER TABLE unidad_educativa
  ADD PRIMARY KEY (id_unidad_educativa);

ALTER TABLE uso_del_celular
  ADD PRIMARY KEY (id_uso_del_celular);


ALTER TABLE ano_de_escolaridad
  MODIFY id_ano_de_escolaridad int(1) NOT NULL AUTO_INCREMENT;

ALTER TABLE dependencia
  MODIFY id_dependencia int(1) NOT NULL AUTO_INCREMENT;

ALTER TABLE direccion
  MODIFY id_direccion int(4) NOT NULL AUTO_INCREMENT;

ALTER TABLE direccion_del_estudiante
  MODIFY id_direccion_del_estudiante int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE estudiantes
  MODIFY id_estudiante int(4) NOT NULL AUTO_INCREMENT;

ALTER TABLE genero
  MODIFY id_genero int(1) NOT NULL AUTO_INCREMENT;

ALTER TABLE motivo_de_uso
  MODIFY id_motivo_de_uso int(4) NOT NULL AUTO_INCREMENT;

ALTER TABLE turno
  MODIFY id_turno int(1) NOT NULL AUTO_INCREMENT;

ALTER TABLE tutor_legal
  MODIFY id_tutor_legal int(8) NOT NULL AUTO_INCREMENT;

ALTER TABLE unidad_educativa
  MODIFY id_unidad_educativa int(4) NOT NULL AUTO_INCREMENT;

ALTER TABLE uso_del_celular
  MODIFY id_uso_del_celular int(4) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;