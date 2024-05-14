CREATE TABLE `Modulo` (
  `codigo` int PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `carga_hor` int NOT NULL
);

CREATE TABLE `Curso` (
  `codigo` int PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `carga_hor` int NOT NULL
);

CREATE TABLE `Curso_Modulo` (
  `curso_codigo` int,
  `modulo_codigo` int,
  PRIMARY KEY (`curso_codigo`, `modulo_codigo`),
  FOREIGN KEY (`curso_codigo`) REFERENCES `Curso` (`codigo`),
  FOREIGN KEY (`modulo_codigo`) REFERENCES `Modulo` (`codigo`)
);

CREATE TABLE `Facilitador` (
  `matricula` int UNIQUE PRIMARY KEY NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(255),
  `email` varchar(255),
  `endereco` varchar(255),
  `data_nasc` DATE NOT NULL
);

CREATE TABLE `Turma` (
  `id` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `data_inicio` DATE NOT NULL,
  `data_termino` DATE NOT NULL,
  `facilitador_matricula` int NOT NULL,
  `curso_codigo` int NOT NULL,
  FOREIGN KEY (`facilitador_matricula`) REFERENCES `Facilitador` (`matricula`),
  FOREIGN KEY (`curso_codigo`) REFERENCES `Curso` (`codigo`)
);

CREATE TABLE `Estudante` (
  `matricula` int UNIQUE PRIMARY KEY NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(255),
  `email` varchar(255),
  `endereco` varchar(255),
  `data_nasc` DATE NOT NULL
);

CREATE TABLE `Turma_Estudante` (
  `turma_id` int NOT NULL,
  `estudante_matricula` int NOT NULL,
  `status_evasao` int NOT NULL,
  PRIMARY KEY (`turma_id`, `estudante_matricula`),
  FOREIGN KEY (`estudante_matricula`) REFERENCES `Estudante` (`matricula`),
  FOREIGN KEY (`turma_id`) REFERENCES `Turma` (`id`)
);
