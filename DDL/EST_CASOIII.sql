CREATE SCHEMA EC3_SI1N;

USE EC3SI1N;

#CRIAR TELEFONE E ENDEREÇO
#, POIS É MULTIVALORADO

CREATE TABLE IF NOT EXISTS CLIENTES(
COD_CLIENTE INT PRIMARY KEY,
CNPJ_CLIENTE INT NOT NULL,
RAZAO_SOCIAL_CLIENTE INT NOT NULL,
RAMO_ATIVIDADE VARCHAR(15) NOT NULL,
DATA_CADASTRAMENTO DATE NOT NULL,
PESSOA_CONTATO VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS EMPREGADOS(
EMPREGADO_MATRICULA INT PRIMARY KEY,
EMPREGADO_NOME VARCHAR(45) NOT NULL,
EMPREGADO_CARGO VARCHAR(15) NOT NULL,
EMPREGADO_SALARIO INT NOT NULL,
EMPREGADO_ADMISSÃO DATE NOT NULL,
EMPREGADO_QUALIFICACOES TEXT NOT NULL,
EMPREGADO_ENDEREÇO INT NOT NULL
);

CREATE TABLE IF NOT EXISTS EMPRESAS(
EMPRESAS_CNPJ INT PRIMARY KEY,
EMPRESAS_RAZAO_SOCIAL INT NOT NULL,
EMPRESAS_PESSOA_CONTATO VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS FORNECEDORES(
FORN_CNPJ INT PRIMARY KEY,
FORN_RAZAO_SOCIAL INT NOT NULL,
FORN_PESSOA_CONTATO VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS TIPO_DE_ENDERECO(
TIP_END_COD INT PRIMARY KEY,
TIP_END_NOME VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS ENDEREÇOS(
END_COD INT PRIMARY KEY,
END_NOME VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS ENCOMENDAS(
ENC_NUM INT PRIMARY KEY,
ENC_DATA_INCLUSÃO DATE NOT NULL,
ENC_VALOR_TOTAL INT NOT NULL,
ENC_VALOR_DESCONTO INT NOT NULL,
ENC_VALOR_LÍQUIDO INT NOT NULL,
ENC_ID_FORMA_PAGAMENTO INT NOT NULL,
ENC_QUANT_PARCELA INT NOT NULL
);



CREATE TABLE IF NOT EXISTS PRODUTOS(
PROD_COD INT PRIMARY KEY,
PROD_NOME VARCHAR(45) NOT NULL,
PROD_COR
PROD_DIM
PROD_PESO
PROD_PREÇO
PROD_TEMP_FABRICAÇÃO
PROD_DESENHO
HORAS_MÃO_OBRA
);

CREATE TABLE IF NOT EXISTS TIPOS_DE_COMPONENTE(

);

CREATE TABLE IF NOT EXISTS COMPONENTE(

);

CREATE TABLE IF NOT EXISTS MAQUINAS(

);

CREATE TABLE IF NOT EXISTS TELEFONES(

);

CREATE TABLE IF NOT EXISTS RE(Recursos Específicos)(

);

CREATE TABLE IF NOT EXISTS RM(Registro_de_Manutenção)(

);

CREATE TABLE IF NOT EXISTS RS (Registro de Suprimentos)(

);
