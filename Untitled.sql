CREATE TABLE `diretores` (
  `id_diretor` integer PRIMARY KEY,
  `nome` text
);

CREATE TABLE `generos` (
  `id_genero` integer PRIMARY KEY,
  `nome` text
);

CREATE TABLE `filmes` (
  `id_filme` integer PRIMARY KEY,
  `titulo` text,
  `id_diretor` integer,
  `id_genero` integer
);

CREATE TABLE `espectadores` (
  `id_espectador` integer PRIMARY KEY,
  `nome` text,
  `email` text,
  `senha` text
);

CREATE TABLE `ingressos` (
  `id_ingresso` integer PRIMARY KEY,
  `id_filme` integer,
  `id_espectador` integer,
  `status` text
);

ALTER TABLE `filmes` ADD FOREIGN KEY (`id_diretor`) REFERENCES `diretores` (`id_diretor`);

ALTER TABLE `filmes` ADD FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`);

ALTER TABLE `ingressos` ADD FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id_filme`);

ALTER TABLE `ingressos` ADD FOREIGN KEY (`id_espectador`) REFERENCES `espectadores` (`id_espectador`);
