CREATE SCHEMA EC4_SI1N;

USE EC4_SI1N;

ALTER TABLE CLIENTES 
ADD EMAIL VARCHAR(50);

ALTER TABLE CLIENTES 
DROP COLUMN NOME;

ALTER TABLE CLIENTES 
MODIFY CPF VARCHAR(16);

ALTER TABLE CLIENTES 
CHANGE CPF CPF_CLIENTE VARCHAR(16);

DROP SCHEMA IF EXISTS EC2_SI1N;

CREATE TABLE IF NOT EXISTS CLIENTES(
ID_CLIENTE INT PRIMARY KEY,
NOME VARCHAR(100) NOT NULL,
CPF VARCHAR(11) NOT NULL,
DATA_NASCIMENTO DATE NOT NULL,
ENDERECO VARCHAR(200) NOT NULL,
STATUS_FIDELIDADE BOOLEAN NOT NULL,
CONSTRAINT UNIQUE_CPF UNIQUE (CPF)
);

CREATE TABLE IF NOT EXISTS FORNECEDORES(
ID_FORNECEDOR INT PRIMARY KEY,
NOME VARCHAR(100) NOT NULL,
CONTATO VARCHAR(50) NOT NULL,
TELEFONE VARCHAR(15) NOT NULL,
CONSTRAINT UNIQUE_TELEFONE UNIQUE (TELEFONE)
);

CREATE TABLE IF NOT EXISTS PRODUTOS(
ID_PRODUTO INT PRIMARY KEY,
NOME VARCHAR(100) NOT NULL,
CATEGORIA VARCHAR(50) NOT NULL,
PRECO DECIMAL(10, 2) NOT NULL,
ESTOQUE INT NOT NULL,
ID_FORNECEDOR INT,
CONSTRAINT FK_FORNECEDOR FOREIGN KEY (ID_FORNECEDOR) REFERENCES FORNECEDORES(ID_FORNECEDOR)
);

CREATE TABLE IF NOT EXISTS VENDAS(
ID_VENDA INT PRIMARY KEY,
ID_CLIENTE INT,
DATA_VENDA DATE NOT NULL,
VALOR_TOTAL DECIMAL(10, 2) NOT NULL,
CONSTRAINT FK_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE)
);

CREATE TABLE IF NOT EXISTS PAGAMENTOS(
ID_PAGAMENTO INT PRIMARY KEY,
ID_VENDA INT,
DATA_PAGAMENTO DATE NOT NULL,
VALOR DECIMAL(10, 2) NOT NULL,
STATUS BOOLEAN NOT NULL,
CONSTRAINT FK_VENDA FOREIGN KEY (ID_VENDA) REFERENCES VENDAS(ID_VENDA)
);

#FASE 6: CRIANDO AS TABELAS ASSOCIATIVAS (ENTIDADES RELACIONAMENTO)

CREATE TABLE IF NOT EXISTS VENDAS_PRODUTOS(
VP_VENDA INT,
VP_PRODUTO INT,
PRIMARY KEY(VP_VENDA, VP_PRODUTO),
VP_QUANTIDADE INT NOT NULL,
CONSTRAINT FK_VENDA_PRODUTO FOREIGN KEY(VP_VENDA) REFERENCES VENDAS(ID_VENDA),
CONSTRAINT FK_PRODUTO_VENDA FOREIGN KEY(VP_PRODUTO) REFERENCES PRODUTOS(ID_PRODUTO)
);

CREATE TABLE IF NOT EXISTS CLIENTES_FORNECEDORES(
CF_CLIENTE INT,
CF_FORNECEDOR INT,
PRIMARY KEY(CF_CLIENTE, CF_FORNECEDOR),
CONSTRAINT FK_CLIENTE_FORNECEDOR FOREIGN KEY(CF_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE),
CONSTRAINT FK_FORNECEDOR_CLIENTE FOREIGN KEY(CF_FORNECEDOR) REFERENCES FORNECEDORES(ID_FORNECEDOR)
);
