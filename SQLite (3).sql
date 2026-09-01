--- 01-09-2026 07:59:57 SQLite
CREATE TABLE ALUNOS (
    id INTEGER PRIMARY KEY,
    nome TEXT
);

ALTER TABLE ALUNOS
ADD COLUMN email TEXT;

INSERT INTO ALUNOS (id, nome, email)
VALUES (10, 'Carlos Andrade', 'carlos@email.com');

SELECT * FROM ALUNOS;


--- 01-09-2026 08:01:01 SQLite
CREATE TABLE CATEGORIA (
    id INTEGER PRIMARY KEY,
    nome TEXT
);

CREATE TABLE PRODUTOS (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    preco REAL,
    estoque INTEGER,
    id_categoria INTEGER,
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id)
);

INSERT INTO CATEGORIA (id, nome)
VALUES (1, 'Ferramentas');

INSERT INTO PRODUTOS (id, nome, preco, estoque, id_categoria)
VALUES (1, 'Jogo de Chaves Soquete', 159.90, 20, 1);

SELECT * FROM CATEGORIA;
SELECT * FROM PRODUTOS;


