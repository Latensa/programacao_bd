 create database test;
 
 create table medicoes_experimento (
	repeticao INT,
    valor_medido DECIMAL(10,4)
);

insert into medicoes_experimento (repeticao, valor_medido) VALUES
	(1, 12.3454),
    (2, 12.2354),
    (3, 13.1354),
    (4, 12.1767),
    (5, 11.2827),
    (6, 12.3849);
    
		select * from medicoes_experimento;

	SELECT repeticao, round(valor_medido) FROM medicoes_experimento;
    
	SELECT AVG(valor_medido) FROM medicoes_experimento;
    
    SELECT sujeito, AVG(valor_medido) FROM medicoes_experimento GROUP BY sujeito;
    
drop table medicoes_experimento;

CREATE TABLE medicoes_experimento (
	repeticao INT,
    valor_medido DECIMAL(6,4),
    sujeito CHAR(1)
);

INSERT INTO medicoes_experimento (repeticao, valor_medido, sujeito) VALUES 
(1, 12.3454, 'A'),
(2, 12.2354, 'A'),
(3, 12.1354, 'A'),
(4, 12.1767, 'A'),
(5, 12.2827, 'A'),
(6, 12.3849, 'A'),
(1, 13.3454, 'B'),
(2, 12.2354, 'B'),
(3, 12.1454, 'B'),
(4, 12.1567, 'B'),
(5, 12.2627, 'B'),
(6, 12.5649, 'B');

select * from medicoes_experimento;

SELECT sujeito, AVG(valor_medido) FROM medicoes_experimento GROUP BY sujeito; 

CREATE TABLE clientes_experimentos (
 id INT PRIMARY KEY,
 nome_completo VARCHAR(255),
 email VARCHAR(255),
 telefone VARCHAR(20)
 );

INSERT INTO clientes_experimentos (id, nome_completo, email, telefone)
VALUES
	(1, 'Joao Pedro Silva', 'joao.pedro@gmail.com', '(11) 1234-5678'),
    (2, 'Maria Luiza Oliveira', 'maria.luiza@yahoo.com', '(11) 9876-5432'),
    (3, 'Carlos Eduardo Santos', 'carlos.eduardo@hotmail.com', '(11) 1111-2222'),
    (4, 'Ana Beatriz Costa', 'ana.beatriz@gmail.com', '(41) 3333-4444'),
    (5, 'Luís Felipe Pereira', 'luis.felipe@yahoo.com', '(51) 5555-6666'),
    (6, 'Rafaela Cristina Souza', 'rafaela.cristina@hotmail.com', '(61) 7777-8888'),
    (7, 'Pedro Henrique Almeida', 'pedro.herique@gmail.com', '(71) 9999-0000'),
    (8, 'Gabriela Oliveira Lima', 'gabriela.oliveira@yahoo.com', '(81) 1234-5678'),
    (9, 'Felipe Augusto Rocha', 'felipe.augusto@hotmail.com', '(91) 9876-5432'),
    (10, 'Isabela Cristina Ferreira', 'isabela.cristina@gmail.com', '(10) 1111-2222'),
    (11, 'Chico Buarque', 'chico.buarque@gmail.com', '(11) 1234-5678'),
    (12, 'Silva Buarque', 'silva.buarque@yahoo.com', '(21) 9876-5432'),
    (13, 'Eduardo Bueno', 'eduardo.bueno@hotmail.com', '(31) 1111-2222'),
    (14, 'Mestre Sprinter', 'mestre.sprinter@gmail.com', '(41) 3333-4444'),
    (15, 'Dr. cooper', 'dr.cooper@yahoo.com', '(51) 5555-6666');
    
    select * from clientes_experimentos;
    
-- Consultando registros usando filtro where e expressão like
SELECT * from clientes_experimentos where nome_completo LIKE 'Dr.%';
SELECT * from clientes_experimentos where nome_completo LIKE '%ana%';