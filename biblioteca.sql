CREATE DATABASE IF NOT EXISTS Biblioteca;

USE Biblioteca;

DROP TABLE IF EXISTS Livros;
DROP TABLE IF EXISTS Autores;
DROP TABLE IF EXISTS Editoras;

CREATE TABLE Autores (
autor_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL
);

CREATE TABLE Editoras (
editora_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL
);

INSERT INTO Autores (nome) VALUES 
('John Green'),
('J.K. Rowling'),
('J.R.R. Tolkien'),
('J.D. Salinger'),
('George Orwell'),
('Rick Riordan'),
('João Guimarães Rosa'),
('Machado de Assis'),
('Graciliano Ramos'),
('Aluísio Azevedo'),
('Mário de Andrade');

INSERT INTO Editoras (nome) VALUES 
('Intrínseca'),
('Rocco'),
('Martins Fontes'),
('Little, Brown and Company'),
('Companhia Editora Nacional'),
('Nova Fronteira'),
('Companhia das Letras'),
('Martin Claret'),
('Penguin Companhia');

CREATE TABLE Livros (
livros_id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(255),
ano_publicacao INT,
isbn VARCHAR(30),
autor_id INT,
editora_id INT,
FOREIGN KEY (autor_id) REFERENCES Autores(autor_id),
FOREIGN KEY (editora_id) REFERENCES Editoras(editora_id)
);

INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES 
('A Culpa é das Estrelas', 2012, '9788580573466', 1, 1),
('Harry Potter e a Pedra Filosofal', 1997, '9788532511010', 2, 2),
('O Senhor dos Anéis: A Sociedade do Anel', 1954, '9788533603149', 3, 3),
('The Catcher in the Rye', 1951, '9780316769488', 4, 4),
('1984', 1949, '978-85-221-0616-9', 5, 5),
('Percy Jackson e o Ladrão de Raios', 2005, '9788598078355', 6, 1),
('Grande Sertão: Veredas', 1956, '9788520923251', 7, 6),
('Memórias Póstumas de Brás Cubas', 1881, '9788535910663', 8, 7),
('Vidas Secas', 1938, '9788572326972', 9, 5),
('O Alienista', 1882, '9788572327429', 8, 8),
('O Cortiço', 1890, '9788579027048', 10, 9),
('Dom Casmurro', 1899, '9788583862093', 8, 9),
('Macunaíma', 1928, '9788503012302', 11, 5);

SELECT * FROM Livros;