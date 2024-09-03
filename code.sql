-- 1. Criar o Banco de Dados
CREATE DATABASE InventarioArmazem;

-- 2. Criar as Tabelas
CREATE TABLE Categorias (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255)
);

CREATE TABLE Fornecedores (
    FornecedorID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Contato VARCHAR(255),
    Endereco TEXT
);

CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Descricao TEXT,
    Preco DECIMAL(10, 2),
    QuantidadeEmEstoque INT,
    CategoriaID INT,
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

-- 3. Inserir Dados
INSERT INTO Categorias (Nome) VALUES ('Eletrônicos'), ('Alimentos'), ('Ferramentas');

INSERT INTO Fornecedores (Nome, Contato, Endereco) VALUES
    ('Fornecedor A', 'contatoA@exemplo.com', 'Rua A, 123'),
    ('Fornecedor B', 'contatoB@exemplo.com', 'Rua B, 456'),
    ('Fornecedor C', 'contatoC@exemplo.com', 'Rua C, 789');

INSERT INTO Produtos (Nome, Descricao, Preco, QuantidadeEmEstoque, CategoriaID) VALUES
    ('Produto 1', 'Descricao do produto 1', 100.00, 50, 1),
    ('Produto 2', 'Descricao do produto 2', 200.00, 30, 1),
    ('Produto 3', 'Descricao do produto 3', 10.00, 100, 2),
    ('Produto 4', 'Descricao do produto 4', 25.00, 75, 3),
    ('Produto 5', 'Descricao do produto 5', 15.00, 20, 3);

-- 4. Consultar Dados
SELECT * FROM Produtos WHERE QuantidadeEmEstoque > 0;

SELECT * FROM Produtos WHERE CategoriaID = 1;

SELECT Fornecedores.Nome, Fornecedores.Contato
FROM Fornecedores
JOIN Produtos ON Produtos.FornecedorID = Fornecedores.FornecedorID
WHERE Produtos.Preco > 100;

-- 5. Atualizar Dados
UPDATE Produtos SET Preco = 120.00 WHERE ProdutoID = 1;

UPDATE Categorias SET Nome = 'Eletrônicos e Acessórios' WHERE CategoriaID = 1;

UPDATE Fornecedores SET Endereco = 'Rua Nova, 321' WHERE FornecedorID = 2;

-- 6. Deletar Dados
DELETE FROM Produtos WHERE ProdutoID = 5;

DELETE FROM Categorias WHERE CategoriaID = 2;

DELETE FROM Fornecedores WHERE FornecedorID = 3;
