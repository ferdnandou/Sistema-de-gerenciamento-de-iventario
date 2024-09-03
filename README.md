# Projeto 8: Sistema de Gerenciamento de Inventário

## Descrição
Desenvolva um sistema para gerenciar o inventário de produtos em um armazém. Este sistema deve permitir o registro e a manutenção de informações sobre produtos, categorias e fornecedores. O objetivo é criar um banco de dados que facilite a gestão de entradas e saídas de produtos, bem como a consulta e atualização dessas informações.

## Comandos Utilizados
- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT`
- `SELECT`
- `UPDATE`
- `DELETE`

## Passos

### 1. Criar o Banco de Dados
Crie um banco de dados chamado `InventarioArmazem`.

### 2. Criar as Tabelas
- **Tabela de Produtos:** Deve conter colunas para `ProdutoID`, `Nome`, `Descricao`, `Preco`, `QuantidadeEmEstoque`, e `CategoriaID`.
- **Tabela de Categorias:** Deve conter colunas para `CategoriaID` e `Nome`.
- **Tabela de Fornecedores:** Deve conter colunas para `FornecedorID`, `Nome`, `Contato`, e `Endereco`.

### 3. Inserir Dados
- Adicione pelo menos 5 produtos, 3 categorias e 3 fornecedores nas respectivas tabelas.
- Certifique-se de incluir valores variados para cada coluna.

### 4. Consultar Dados
- Liste todos os produtos disponíveis em estoque.
- Mostre todos os produtos que pertencem a uma categoria específica.
- Exiba informações sobre os fornecedores que fornecem produtos acima de um determinado preço.

### 5. Atualizar Dados
- Atualize o preço de um produto específico.
- Modifique a descrição de uma categoria existente.
- Altere o endereço de um fornecedor específico.

### 6. Deletar Dados
- Remova um produto do inventário.
- Exclua uma categoria, garantindo que os produtos associados sejam atualizados ou removidos conforme necessário.
- Apague um fornecedor, verificando se não há produtos ainda associados a ele.

## Explicações Adicionais
- **Chave Primária:** Cada tabela possui uma coluna definida como `PRIMARY KEY`, garantindo que cada registro seja único e identificável.
- **Chave Estrangeira:** A coluna `CategoriaID` na tabela Produtos refere-se à coluna `CategoriaID` na tabela Categorias, garantindo a integridade referencial entre as tabelas.
- **AUTO_INCREMENT:** O `AUTO_INCREMENT` é usado para criar identificadores únicos automaticamente para cada novo registro.
- **Tipos de Dados:**
  - `VARCHAR(n)`: Para armazenar strings de tamanho variável, com comprimento máximo definido por n.
  - `TEXT`: Para armazenar grandes blocos de texto.
  - `DECIMAL(p, s)`: Para armazenar números com precisão, onde p é o total de dígitos e s é o número de dígitos após o ponto decimal.
  - `INT`: Para armazenar números inteiros.
