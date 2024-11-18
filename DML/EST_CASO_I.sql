DELETE FROM FORNECEDORES WHERE FORNEC_COD = 5;
DELETE FROM FILIAIS WHERE FILIAL_COD = 4;
DELETE FROM PRODUTOS WHERE PROD_COD = 3;
DELETE FROM PEDIDOS WHERE PED_CODIGO = 2;
DELETE FROM RECEBIMENTOS WHERE RECEB_PEDIDOS = 1;
DELETE FROM PEDIDOS_PRODUTOS WHERE PDPR_PEDIDOS = 5 AND PDPR_PRODUTOS = 5;
DELETE FROM FILIAIS_PRODUTOS WHERE FLPR_FILIAL = 3 AND FLPR_PRODUTOS = 3;
DELETE FROM FORNECEDORES_PRODUTOS WHERE FRPR_FORNECEDOR = 2 AND FRPR_PRODUTOS = 2;


UPDATE FORNECEDORES SET FORNEC_NOME = 'Fornecedor A Atualizado', FORNEC_CIDADE = 'São Bernardo do Campo'WHERE FORNEC_COD = 1;
UPDATE FILIAIS SET FILIAL_NOME = 'Filial A Atualizada', FILIAL_CIDADE = 'São Caetano do Sul'WHERE FILIAL_COD = 2;
UPDATE PRODUTOS SET PROD_PRECOUNIT = 22.50, PROD_ESTOQ_MIN = 120.000 WHERE PROD_COD = 4;
UPDATE PEDIDOS SET PED_STATUS = 'PENDENTE', PED_PREVISAO = '2024-11-25' WHERE PED_CODIGO = 3;
UPDATE RECEBIMENTOS SET RECEB_CONDICAO = 'Em excelentes condições', RECEB_QUANT_PROD = 100.000 WHERE RECEB_PEDIDOS = 4;
UPDATE PEDIDOS_PRODUTOS SET PDPR_QUANT = 300.000 WHERE PDPR_PEDIDOS = 1 AND PDPR_PRODUTOS = 1;
UPDATE FILIAIS_PRODUTOS SET FLPR_QUANT = 500.000 WHERE FLPR_FILIAL = 1 AND FLPR_PRODUTOS = 2;
UPDATE FORNECEDORES_PRODUTOS SET FRPR_PRODUTOS = 5 WHERE FRPR_FORNECEDOR = 1 AND FRPR_PRODUTOS = 1;


INSERT INTO FORNECEDORES (FORNEC_COD, FORNEC_NOME, FORNEC_RUA, FORNEC_NUMRUA, FORNEC_BAIRRO, FORNEC_CIDADE, FORNEC_ESTADO, FORNEC_PAIS, FORNEC_CODPOSTAL, FORNEC_TELEFONE, FORNEC_CONTATO)
VALUES
(1, 'Fornecedor A', 'Rua das Flores', 123, 'Centro', 'São Paulo', 'SP', 'Brasil', '01010-010', '1132345678', 'Contato A'),
(2, 'Fornecedor B', 'Avenida Brasil', 456, 'Jardim Paulista', 'Rio de Janeiro', 'RJ', 'Brasil', '20030-030', '2138765432', 'Contato B'),
(3, 'Fornecedor C', 'Rua do Comércio', 789, 'Bela Vista', 'Belo Horizonte', 'MG', 'Brasil', '30120-040', '3134567890', 'Contato C'),
(4, 'Fornecedor D', 'Praça da Sé', 101, 'Sé', 'São Paulo', 'SP', 'Brasil', '01001-001', '1135678901', 'Contato D'),
(5, 'Fornecedor E', 'Rua das Palmeiras', 202, 'Liberdade', 'Curitiba', 'PR', 'Brasil', '80010-050', '4198765432', 'Contato E');

INSERT INTO FILIAIS (FILIAL_COD, FILIAL_NOME, FILIAL_RUA, FILIAL_NUMRUA, FILIAL_BAIRRO, FILIAL_CIDADE, FILIAL_ESTADO, FILIAL_PAIS, FILIAL_CODPOSTAL, FILIAL_CAPACIDADE)
VALUES
(1, 'Filial A', 'Rua São João', 321, 'Centro', 'São Paulo', 'SP', 'Brasil', '01020-020', '1000 unidades'),
(2, 'Filial B', 'Avenida Atlântica', 654, 'Copacabana', 'Rio de Janeiro', 'RJ', 'Brasil', '22050-060', '500 unidades'),
(3, 'Filial C', 'Rua da Paz', 987, 'Centro', 'Belo Horizonte', 'MG', 'Brasil', '30100-050', '750 unidades'),
(4, 'Filial D', 'Avenida Paulista', 112, 'Bela Vista', 'São Paulo', 'SP', 'Brasil', '01310-040', '1200 unidades'),
(5, 'Filial E', 'Rua dos Três Rios', 123, 'Santa Felicidade', 'Curitiba', 'PR', 'Brasil', '80030-060', '600 unidades');

INSERT INTO PRODUTOS (PROD_COD, PROD_NOME, PROD_DESCRICAO, PROD_ESPECTEC, PROD_QUANT, PROD_PRECOUNIT, PROD_UNIDMEDIDA, PROD_ESTOQ_MIN)
VALUES
(1, 'Produto A', 'Produto de alta qualidade', 'Especificação A', 500.000, 25.50, 'kg', 100.000),
(2, 'Produto B', 'Produto intermediário', 'Especificação B', 250.000, 30.00, 'litro', 50.000),
(3, 'Produto C', 'Produto básico', 'Especificação C', 1000.000, 10.75, 'unidade', 200.000),
(4, 'Produto D', 'Produto premium', 'Especificação D', 300.000, 45.00, 'unidade', 75.000),
(5, 'Produto E', 'Produto popular', 'Especificação E', 1500.000, 8.99, 'kg', 150.000);

INSERT INTO PEDIDOS (PED_CODIGO, PED_DATA, PED_HORA, PED_PREVISAO, PED_STATUS, PED_FORNECEDOR)
VALUES
(1, '2024-11-01', '10:30:00', '2024-11-10', 'PENDENTE', 1),
(2, '2024-11-02', '11:00:00', '2024-11-12', 'CONCLUÍDO', 2),
(3, '2024-11-03', '14:30:00', '2024-11-15', 'EM ESPERA', 3),
(4, '2024-11-04', '16:00:00', '2024-11-18', 'PENDENTE', 4),
(5, '2024-11-05', '09:00:00', '2024-11-20', 'CONCLUÍDO', 5);

INSERT INTO RECEBIMENTOS (RECEB_DATA, RECEB_HORA, RECEB_QUANT_PROD, RECEB_CONDICAO, RECEB_PEDIDOS)
VALUES
('2024-11-06', '08:30:00', 100.000, 'Em boas condições', 1),
('2024-11-07', '09:15:00', 50.000, 'Em boas condições', 2),
('2024-11-08', '10:00:00', 150.000, 'Com defeito', 3),
('2024-11-09', '11:00:00', 200.000, 'Em boas condições', 4),
('2024-11-10', '12:00:00', 75.000, 'Em boas condições', 5);

INSERT INTO PEDIDOS_PRODUTOS (PDPR_PEDIDOS, PDPR_PRODUTOS, PDPR_QUANT)
VALUES
(1, 1, 100.000),
(2, 2, 150.000),
(3, 3, 200.000),
(4, 4, 250.000),
(5, 5, 300.000);

INSERT INTO FILIAIS_PRODUTOS (FLPR_FILIAL, FLPR_PRODUTOS, FLPR_QUANT)
VALUES
(1, 1, 50.000),
(2, 2, 70.000),
(3, 3, 30.000),
(4, 4, 120.000),
(5, 5, 80.000);

INSERT INTO FORNECEDORES_PRODUTOS (FRPR_FORNECEDOR, FRPR_PRODUTOS)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
