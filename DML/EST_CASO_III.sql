INSERT INTO CLIENTES (COD_CLIENTE, CNPJ, RAZAO_SOCIAL, RAMO_ATIVIDADE, DATA_CADASTRAMENTO_CLI, TELEFONE_CLI, CIDADE_CLI, ESTADO_CLI, PAIS_CLI, NUMRUA_CLI, BAIRRO_CLI, COMPLEMENTO)
VALUES 
(1, '12345678000195', 'Empresa A', 'Comércio', '2024-11-01', '1122334455', 'São Paulo', 'SP', 'Brasil', '100', 'Centro', 'Apt 101'),
(2, '98765432000155', 'Cliente Exemplo Ltda', 'Serviços', '2024-11-02', '11987654321', 'Rio de Janeiro', 'RJ', 'Brasil', '200', 'Copacabana', 'Loja 2'),
(3, '12398765400015', 'Exemplo Comercial', 'Importação', '2024-11-03', '11933334444', 'Belo Horizonte', 'MG', 'Brasil', '300', 'Centro', 'Galpão 10'),
(4, '45678912300099', 'Distribuidora XYZ', 'Distribuição', '2024-11-04', '1155443322', 'Curitiba', 'PR', 'Brasil', '400', 'Boa Vista', 'Sala 305');

INSERT INTO EMPREGADOS (MATRICULA_EMPREGADOS, NOME, TEL_EMPREGADOS, CARGO_EMPREGADOS, SALARIO_EMPREGADOS, DATA_ADMISSAO, QUALIFICACOES_EMPREGADOS, CIDADE_EMPREGADOS, ESTADO_EMPREGADOS, PAIS_EMPREGADOS, NUMRUA_EMPREGADOS, BAIRRO_EMPREGADOS, COMPLEMENTO)
VALUES 
(1001, 'Carlos Souza', '11988887777', 'Gerente de Vendas', 4500.00, '2024-10-01', 'MBA em Vendas', 'São Paulo', 'SP', 'Brasil', '500', 'Jardim Paulista', 'Apt 201'),
(1002, 'Maria Silva', '11977776666', 'Analista de TI', 3500.00, '2024-09-10', 'Engenharia da Computação', 'São Paulo', 'SP', 'Brasil', '600', 'Vila Progresso', 'Sala 202'),
(1003, 'Lucas Oliveira', '11966665555', 'Assistente Administrativo', 2500.00, '2024-08-15', 'Técnico em Administração', 'São Paulo', 'SP', 'Brasil', '700', 'Alto da Lapa', 'Apt 303'),
(1004, 'Fernanda Lima', '11955554444', 'Coordenadora de RH', 5000.00, '2024-07-01', 'Psicologia', 'São Paulo', 'SP', 'Brasil', '800', 'Vila Madalena', 'Sala 404');

INSERT INTO EMPRESAS (CNPJ, RAZAO_SOCIAL, RAMO_ATIVIDADE, TELEFONE_EMPR, PESSOA_CONTATO, CIDADE_EMPR, ESTADO_EMPR, PAIS_EMPR, NUMRUA_EMPR, BAIRRO_EMPR, COMPLEMENTO)
VALUES 
('12345678000195', 'Tech Solutions Ltda', 'Tecnologia', '1122334455', 'Carlos Pereira', 'São Paulo', 'SP', 'Brasil', '1010', 'Bela Vista', 'Sala 303'),
('98765432000155', 'Consultoria Global', 'Consultoria', '11987654321', 'Ana Costa', 'Rio de Janeiro', 'RJ', 'Brasil', '2020', 'Ipanema', 'Apt 10'),
('12398765400015', 'Comércio XYZ', 'Comércio', '11933334444', 'Roberto Almeida', 'Belo Horizonte', 'MG', 'Brasil', '3030', 'Funcionários', 'Loja 5'),
('45678912300099', 'Indústria Brasileira', 'Indústria', '1155443322', 'Fernanda Lima', 'Curitiba', 'PR', 'Brasil', '4040', 'Centro', 'Armazém 12');

INSERT INTO FORNECEDORES (CNPJ, RAZAO_SOCIAL, RAMO_ATIVIDADE, TELEFONE_FORN, PESSOA_CONTATO, CIDADE_FORN, ESTADO_FORN, PAIS_FORN, NUMRUA_FORN, BAIRRO_FORN, COMPLEMENTO)
VALUES 
('98765432000123', 'Fornecedora ABC', 'Suprimentos', '1133445566', 'Renato Oliveira', 'São Paulo', 'SP', 'Brasil', '110', 'Centro', 'Apt 201'),
('45678912300145', 'Fornex Indústria', 'Indústria', '11933334455', 'João Pereira', 'Campinas', 'SP', 'Brasil', '220', 'Vila Progresso', 'Sala 101'),
('12398765400078', 'Distribuidora LMN', 'Distribuição', '1122334455', 'Márcia Silva', 'Porto Alegre', 'RS', 'Brasil', '330', 'Cidade Baixa', 'Loja 4'),
('78965412300032', 'Gomex Comércio', 'Comércio', '11987654322', 'Paula Martins', 'Curitiba', 'PR', 'Brasil', '440', 'Alto da XV', 'Apt 504');

INSERT INTO TIPOS_ENDERECO (COD_END, NOME, CATEGORIA)
VALUES 
(1, 'Endereço Comercial', 'Comercial'),
(2, 'Endereço Residencial', 'Residencial'),
(3, 'Endereço de Entrega', 'Logístico'),
(4, 'Endereço de Fábrica', 'Industrial');

INSERT INTO TIPOS_COMPONENTE (COD_COMPONENTE, NOME, DESCRICAO)
VALUES 
(1, 'Computador', 'Equipamento para escritório e operações de TI'),
(2, 'Impressora', 'Equipamento de impressão para escritório'),
(3, 'Monitor', 'Tela para computador de uso geral'),
(4, 'Teclado', 'Teclado de computador ergonômico');

INSERT INTO ENDERECO (ID, LOGRADOURO, CIDADE, ESTADO, PAIS, NUMERO, RUA, CEP, TIPOS_ENDERECO_CODIGO)
VALUES 
(1, 'Avenida Paulista', 'São Paulo', 'SP', 'Brasil', 1001, 'Avenida', '01310-000', 1),
(2, 'Rua Augusta', 'São Paulo', 'SP', 'Brasil', 2002, 'Rua', '01305-000', 2),
(3, 'Rua dos Três Irmãos', 'Rio de Janeiro', 'RJ', 'Brasil', 3003, 'Rua', '22222-000', 3),
(4, 'Avenida Brasil', 'Rio de Janeiro', 'RJ', 'Brasil', 4004, 'Avenida', '22000-000', 4);

INSERT INTO COMPONENTES (ID_COMPONENTES, NOME, QUANTIDADE_ESTOQUE, PRECO_UNITARIO, UNIDADE, TIPOS_COMPONENTES_CODIGO, CNPJ_FORNECEDOR)
VALUES 
(1, 'HD Externo', 100, 250.00, 'Unidade', 1, '98765432000123'),
(2, 'Cartucho de Impressora', 200, 50.00, 'Unidade', 2, '45678912300145'),
(3, 'Monitor LCD', 150, 800.00, 'Unidade', 3, '12398765400078'),
(4, 'Teclado Mecânico', 300, 150.00, 'Unidade', 4, '78965412300032');

INSERT INTO PRODUTOS (ID_PRODUTOS, NOME, COR, DIMENSOES, PESO, PRECO, TEMPO_FABRICACAO, DESENHO_PRODUTO, HORAS_MAO_OBRA)
VALUES 
(1, 'Notebook A1', 'Preto', '15,6"', 2.5, 2500.00, 20, 'Desenho A1', 5),
(2, 'Smartphone Z', 'Prata', '6"', 0.2, 1500.00, 10, 'Desenho Z', 2),
(3, 'Mesa Digitalizadora', 'Branca', '30x40 cm', 1.5, 500.00, 15, 'Desenho M1', 3),
(4, 'Impressora Laser', 'Preta', '30x40x25 cm', 5.0, 1200.00, 25, 'Desenho P1', 4);

INSERT INTO ENCOMENDAS (NUMERO, DATA_INCLUSAO, VALOR_TOTAL, VALOR_DESCONTO, VALOR_LIQUIDO, ID_FORMA_PAGAMENTO, QUANTIDADE_PARCELAS, ID_CLIENTES)
VALUES 
(1010, '2024-11-01', 1500.00, 100.00, 1400.00, 1, 3, 1),
(1011, '2024-11-02', 3000.00, 200.00, 2800.00, 2, 6, 2),
(1012, '2024-11-03', 2000.00, 150.00, 1850.00, 1, 2, 3),
(1013, '2024-11-04', 2500.00, 250.00, 2250.00, 2, 5, 4);

UPDATE VOOS SET PAIS_DESTINO = 'Espanha' WHERE VOO_CODIGO = 102;
UPDATE VOOS SET DATA_HORA_ORIGEM = '2024-12-10 15:00:00' WHERE VOO_CODIGO = 103;
UPDATE AEROPORTO SET AEROPORTO_LOCAL = 'Aeroporto Internacional de São Paulo' WHERE AEROPORTO_COD = 2;
UPDATE AEROPORTO SET AEROPORTO_PAIS = 'Brasil' WHERE AEROPORTO_COD = 3;
UPDATE AERONAVES SET AERONAVE_CAPACIDADE = 200 WHERE AERONAVE_PREFIXO = 2;
UPDATE AERONAVES SET AERONAVE_FABRICANTE = 'Airbus' WHERE AERONAVE_PREFIXO = 3;
UPDATE FUNCIONARIOS SET FUN_FUNCAO = 'Piloto' WHERE FUNC_ID = 2;
UPDATE FUNCIONARIOS SET FUNC_TELEFONE = '988888888' WHERE FUNC_ID = 3;
UPDATE RESERVA SET VOO_RESERVA_PASS = 102 WHERE RESERVA_PASS = 98765432100;
UPDATE RESERVA SET RESERVA_PASS = 11223344556 WHERE VOO_RESERVA_PASS = 104;
UPDATE EQUIPES SET FUNC_EQUIPE = 3 WHERE VOO_EQUIPE = 102;
UPDATE EQUIPES SET VOO_EQUIPE = 103 WHERE FUNC_EQUIPE = 4;

DELETE FROM TipoTelefone WHERE IdTelefone = 1;
DELETE FROM Telefones WHERE NumeroTelefone = 123456789;
DELETE FROM TipoEndereco WHERE IdTipo = 1;
DELETE FROM Endereco WHERE IdEndereco = 1;
DELETE FROM Fornecedores WHERE CnpjFornecedor = 12345678000199;
DELETE FROM TipoComponente WHERE IdComponente = 1;
