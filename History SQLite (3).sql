--- 16-09-2026 08:10:53 SQLite
-- AUTORES
INSERT INTO autores (id_autor, nome, nacionalidade) VALUES
(1, 'Machado de Assis', 'Brasileira'),
(2, 'J.K. Rowling', 'Britânica'),
(3, 'George Orwell', 'Britânica');


-- LIVROS
INSERT INTO livros (id_livro, titulo, ano_publicacao, genero, quantidade, id_autor) VALUES
(1, 'Dom Casmurro', 1899, 'Romance', 3, 1),
(2, 'Memórias Póstumas de Brás Cubas', 1881, 'Romance', 2, 1),
(3, 'Harry Potter e a Pedra Filosofal', 1997, 'Fantasia', 4, 2),
(4, 'Harry Potter e a Câmara Secreta', 1998, 'Fantasia', 3, 2),
(5, '1984', 1949, 'Ficção', 2, 3);


-- LEITORES
INSERT INTO leitores (id_leitor, nome, email, telefone) VALUES
(1, 'Marina Oliveira', 'marina@email.com', '84999990001'),
(2, 'Ana Souza', 'ana@email.com', '84999990002'),
(3, 'João Silva', 'joao@email.com', '84999990003'),
(4, 'Lucas Santos', 'lucas@email.com', '84999990004'),
(5, 'Beatriz Lima', 'beatriz@email.com', '84999990005');


-- EMPRÉSTIMOS
INSERT INTO emprestimos (id_emprestimo, id_livro, id_leitor, data_emprestimo, data_devolucao) VALUES
(1, 1, 1, '2026-09-01', '2026-09-10'),
(2, 3, 2, '2026-09-02', '2026-09-12'),
(3, 5, 3, '2026-09-03', NULL),
(4, 2, 4, '2026-09-05', '2026-09-15'),
(5, 4, 5, '2026-09-06', NULL);

SELECT * FROM livros;



SELECT * FROM leitores;


SELECT leitores.nome, livros.titulo
FROM emprestimos
JOIN leitores ON emprestimos.id_leitor = leitores.id_leitor
JOIN livros ON emprestimos.id_livro = livros.id_livro;



SELECT * FROM livros
WHERE genero = 'Romance';



SELECT * FROM emprestimos
WHERE data_devolucao IS NULL;


