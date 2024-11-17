INSERT INTO FORNECEDORES VALUES 
(1, 'General Motors', 'Av.Cariacica', 100, 'Zona oeste', 'Espirito Santo', 'ES', 'Brasil', '01010-001', '(27) 4002-1234', 'Vinicio Das Neves');
(2, 'Renault.', 'Rua dos Patos', 200, 'Distrito 12', 'Curitiba', 'PR', 'Brasil', '80230-002', '(41) 3333-4444', 'Abrantes');
(3, 'Fiat', 'Rua Carros', 1500, 'Zona Oeste', 'Belo Horizonte', 'MG', 'Brasil', '30310-012', '(31) 4003-5050', 'Fernando');
(4, 'Riot', 'Avenida Central', 333, 'Distrito leste', 'Rio de Janeiro', 'RJ', 'Brasil', '64000', '(21) 81 8888-1234', 'Capitão Nascimento');
(5, 'Coisa de Nerd.', 'Greenway Blvd', 20, 'Zone Sul', 'Toronto', 'Ontário', 'Canadá', 'M5V 1T4', '+1 416 555-7890', 'Nilce');

INSERT INTO FILIAIS VALUES
(1, 'McDonalds', 'Av. Jucelino', 300, 'Centro', 'São Paulo', 'SP', 'Brasil', '01020-003', 'Capacidade para 25.000 pallets');
(2, 'Nestle', 'Rod. America', 500, 'Zona Industrial', 'Curitiba', 'PR', 'Brasil', '81030-004', 'Capacidade para 20.000 pallets');
(3, 'Imperador', 'Vila Velha', 999, 'Zona Suldeste', 'Porto Alegre', 'RS', 'Brasil', '90230-000', 'Capacidade para 12.000 pallets');
(4, 'Toyota', 'Av. da Lua', 129, 'Zona Oeste', 'Amapa', 'RN', 'Brasil', '90230-000', 'Capacidade para 14.000 pallets');
(5, 'Gramado', 'Av. Das Neves', 909, 'Zona Leste', 'Gramado', 'RS', 'Brasil', '90230-000', 'Capacidade para 12.000 pallets');

INSERT INTO PRODUTOS VALUES 
(1, 'Chapa de Aço 10mm', 'Material para construção pesada', 'Espessura 10mm, resistência 500MPa', 1000.000, 150.00, 'kg', 500.000);
(2, 'Polímero ABS', 'Material para moldagem', 'Resistência a impactos, densidade 1.05g/cm³', 500.000, 25.00, 'kg', 100.000
(3, 'Alumínio Fundido', 'Material leve para fabricação', 'Densidade 2.7g/cm³, resistência 300MPa', 800.000, 50.00, 'kg', 100.000);
(4, 'Cabo Elétrico 10mm²', 'Condutor de energia para aplicações industriais', 'Cobre puro, isolação de PVC', 500.000, 10.00, 'metro', 50.000);
(5, 'Tinta Industrial Epóxi', 'Revestimento protetivo para equipamentos', 'Resistência química e térmica, volume 20L', 1.000, 400.00, 'balde', 100);


INSERT INTO PEDIDOS VALUES 
(1, '10-12-2024', '09:30:00', '2024-11-20', 'PENDENTE', 1); 
(2, '12-11-2024', '11:00:00', '2024-11-25', 'CONCLUÍDO', 2);
(3, '12-10-2024', '14:00:00', '2024-11-25', 'EM ESPERA', 3);
(4, '12-10-2024', '14:00:00', '2024-11-25', 'EM ESPERA', 4);
(5, '11-09-2024', '14:00:00', '2024-11-25', 'EM TRANSITO', 6);

INSERT INTO RECEBIMENTOS VALUES 
('12-10-2024', '14:00:00', 950.000, 'Sem danos, dentro das especificações',1);
('12-11-2024', '15:00:00', 350.000, 'Conforme especificações', 2);
('10-11-2024', '15:00:00', 750.000, 'Conforme especificações', 3);
('11-10-2024', '09:00:00', 500.000, 'Entrega parcial', 4);


INSERT INTO PEDIDOS_PRODUTOS VALUES
(1, 1, 950.000);
(1, 2, 50.000);
(3, 4, 840.000);
(3, 4, 400.000);
(3, 1, 200.000);

INSERT INTO FILIAIS_PRODUTOS VALUES
(1, 1, 820.000);
(1, 5, 300.000);
(4, 5, 430.000);
(5, 3, 100.000);
(2, 1, 150.000);

INSERT INTO FORNECEDORES_PRODUTOS VALUES 
(1, 1);
(4, 4);
(2, 2);
(3, 3);
(5, 5);


UPDATE FORNECEDORES SET FORNEC_CONTATO = 'Gabriel Barbosa', FORNEC_TELEFONE = '(11) 99999-1234' WHERE FORNEC_COD = 1;

UPDATE FILIAIS SET FILIAL_CAPACIDADE = 'Capacidade para 35.000 pallets' WHERE FILIAL_COD = 2;

UPDATE PRODUTOS SET PROD_PRECOUNIT = 180.00 WHERE PROD_COD = 1;

UPDATE PEDIDOS SET PED_STATUS = 'CONCLUÍDO' WHERE PED_CODIGO = 1;

UPDATE RECEBIMENTOS SET RECEB_QUANT_PROD = 950.000 WHERE RECEB_PEDIDOS = 1;


DELETE FROM FORNECEDORES WHERE FORNEC_COD = 2;

DELETE FROM FILIAIS WHERE FILIAL_COD = 2;

DELETE FROM PRODUTOS WHERE PROD_COD = 2;

DELETE FROM PEDIDOS WHERE PED_CODIGO = 2;

DELETE FROM PEDIDOS_PRODUTOS WHERE PDPR_PEDIDOS = 1 AND PDPR_PRODUTOS = 2;

DELETE FROM FORNECEDORES_PRODUTOS WHERE FRPR_FORNECEDOR = 2 AND FRPR_PRODUTOS = 2;
