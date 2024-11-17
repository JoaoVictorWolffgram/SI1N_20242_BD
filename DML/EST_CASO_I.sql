INSERT INTO FORNECEDORES VALUES 
(1, 'General Motors', 'Av.Cariacica', 100, 'Zona oeste', 'Espirito Santo', 'ES', 'Brasil', '01010-001', '(27) 4002-1234', 'Vinicio Das Neves');
INSERT INTO FORNECEDORES VALUES 
(2, 'Renault.', 'Rua dos Patos', 200, 'Distrito 12', 'Curitiba', 'PR', 'Brasil', '80230-002', '(41) 3333-4444', 'Abrantes');

INSERT INTO FILIAIS VALUES
(1, 'McDonalds', 'Av. Jucelino', 300, 'Centro', 'São Paulo', 'SP', 'Brasil', '01020-003', 'Capacidade para 25.000 pallets');
INSERT INTO FILIAIS VALUES
(2, 'Nestle', 'Rod. America', 500, 'Zona Industrial', 'Curitiba', 'PR', 'Brasil', '81030-004', 'Capacidade para 20.000 pallets');

INSERT INTO PRODUTOS VALUES 
(1, 'Chapa de Aço 10mm', 'Material para construção pesada', 'Espessura 10mm, resistência 500MPa', 1000.000, 150.00, 'kg', 500.000);
INSERT INTO PRODUTOS VALUES
(2, 'Polímero ABS', 'Material para moldagem', 'Resistência a impactos, densidade 1.05g/cm³', 500.000, 25.00, 'kg', 100.000);

INSERT INTO PEDIDOS VALUES 
(1, '10-12-2024', '09:30:00', '2024-11-20', 'PENDENTE', 1);
INSERT INTO PEDIDOS VALUES 
(2, '12-10-2024', '11:00:00', '2024-11-25', 'CONCLUÍDO', 2);

INSERT INTO RECEBIMENTOS VALUES 
('2024-11-20', '14:00:00', 950.000, 'Sem danos, dentro das especificações', 1);

INSERT INTO PEDIDOS_PRODUTOS VALUES
(1, 1, 900.000);
INSERT INTO PEDIDOS_PRODUTOS VALUES
(1, 2, 50.000);

INSERT INTO FILIAIS_PRODUTOS VALUES
(1, 1, 800.000);
INSERT INTO FILIAIS_PRODUTOS VALUES
(2, 2, 150.000);

INSERT INTO FORNECEDORES_PRODUTOS VALUES 
(1, 1);
INSERT INTO FORNECEDORES_PRODUTOS VALUES
(2, 2);