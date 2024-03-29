select 'drop table '||table_name||' cascade constraints;' from user_tables;
drop table EVENTO cascade constraints;
drop table EMPRESA cascade constraints;
drop table PARTICIPA cascade constraints;
drop table ESTANDE cascade constraints;
drop table PROGRAMACAO cascade constraints;
drop table PRODUTO cascade constraints;
drop table POSSUI cascade constraints;
drop table VENDEDOR cascade constraints;
drop table EMPREGA cascade constraints;
drop table PESSOA cascade constraints;
drop table VENDA cascade constraints;
drop table PRODUTOVENDA cascade constraints;
drop table CONSOLE cascade constraints;
drop table JOGO cascade constraints;
drop table TESTA cascade constraints;
drop table TELEFONECLIENTE cascade constraints;
drop table TELEFENOVENDEDOR cascade constraints;
drop table PARTICIPAPROG cascade constraints;

CREATE TABLE EVENTO(
ANO INTEGER PRIMARY KEY ,
TITULO VARCHAR2(50) NOT NULL
);

/* stripar cnpj? tirar . e - do 66.991.613-0001-43 */

CREATE TABLE EMPRESA(
CNPJ VARCHAR2(20) PRIMARY KEY,
NOME VARCHAR2(50) NOT NULL,
SETOR VARCHAR2(50) NOT NULL
);

/* Tabela Participa
Nota de Feedback: deve necessariamente ser de 0 a 10, atendendo a metodologia de Net Promoter Score (NPS). 
Total Pago: não pode ser nulo, pois deve-se saber a todo momento quanto a empresa já pagou. Um valor nulo não faz sentido, 
portanto é sempre inicializado como 0 se outro valor nao for fornecido. 
*/
CREATE TABLE PARTICIPA(
EVENTO INTEGER NOT NULL,
EMPRESA VARCHAR2(20) NOT NULL,
TOTAL_PAGO NUMBER DEFAULT 0 NOT NULL,
NOTA_FEEDBACK INTEGER,
CONSTRAINT FK_EVENTO FOREIGN KEY (EVENTO) REFERENCES EVENTO(ANO)ON DELETE CASCADE,
CONSTRAINT FK_EMPRESA FOREIGN KEY (EMPRESA) REFERENCES EMPRESA(CNPJ)ON DELETE CASCADE,
CONSTRAINT PK_PARTICIPA PRIMARY KEY (EVENTO,EMPRESA),
CHECK (NOTA_FEEDBACK IS NULL OR (NOTA_FEEDBACK >= 0 AND NOTA_FEEDBACK <= 10))
);

CREATE TABLE ESTANDE(
TITULO VARCHAR2(50),
EVENTO INTEGER ,
TAMANHO INTEGER,
LOCALIZACAO VARCHAR2(50),
CONSTRAINT FK_ESTANDE_EVENTO FOREIGN KEY (EVENTO) REFERENCES EVENTO(ANO),
CONSTRAINT PK_EVENTO_ESTANDE PRIMARY KEY (EVENTO,TITULO)
);

/* Colocar check para HINICIO  < HFIM */
CREATE TABLE PROGRAMACAO(
HINICIO DATE,
NOME VARCHAR2(50),
TITULO VARCHAR2(50),
EVENTO INTEGER,
HFIM DATE,
DESCRICAO VARCHAR2(100),
CONSTRAINT FK_TITULO FOREIGN KEY (TITULO, EVENTO) REFERENCES ESTANDE(TITULO, EVENTO),
CONSTRAINT PK_PROGRAMACAO PRIMARY KEY (HINICIO,NOME)
);

CREATE TABLE PRODUTO(
CODIGO VARCHAR2(20) PRIMARY KEY,
NOME VARCHAR2(100) NOT NULL,
FABRICANTE VARCHAR2(20) NOT NULL, 
PRECO NUMBER NOT NULL,
LOTE NUMBER NOT NULL,
TIPO VARCHAR2(20) NOT NULL,
CHECK (UPPER(TIPO) IN ('JOGO', 'PRODUTO'))
);

CREATE TABLE POSSUI(
ESTANDE VARCHAR2(20),
ANO INTEGER,
PRODUTO VARCHAR2(20)NOT NULL,
QUANTIDADE NUMBER NOT NULL,
CONSTRAINT FK_POSSUI_ESTANDE FOREIGN KEY (ESTANDE, ANO) REFERENCES ESTANDE(TITULO, EVENTO),
CONSTRAINT FK_POSSUI_PRODUTO FOREIGN KEY (PRODUTO) REFERENCES PRODUTO(CODIGO),
CONSTRAINT PK_POSSUI PRIMARY KEY (ESTANDE, ANO, PRODUTO)
);


CREATE TABLE VENDEDOR(
CPF VARCHAR2(20) PRIMARY KEY,
NOME VARCHAR2(50)
);

/* Checar cpf valido? */
CREATE TABLE EMPREGA(
ESTANDE VARCHAR2(20),
ANO INTEGER,
CPF VARCHAR2(20),
CONSTRAINT FK_EMPREGA_ESTANDE FOREIGN KEY (ESTANDE, ANO) REFERENCES ESTANDE(TITULO, EVENTO),
CONSTRAINT FK_EMPREGA_VENDEDOR FOREIGN KEY (CPF) REFERENCES VENDEDOR(CPF),
CONSTRAINT PK_EMREGA PRIMARY KEY (ESTANDE, ANO,CPF)
);

/* Checar cpf valido? */
CREATE TABLE PESSOA(
CPF VARCHAR2(20) PRIMARY KEY,
NOME VARCHAR2(50)
);

CREATE TABLE VENDA(
NF VARCHAR2(20) PRIMARY KEY,
DATA DATE NOT NULL,
CLIENTE VARCHAR2(20),
VENDEDOR VARCHAR2(20),
CONSTRAINT FK_CLIENTE FOREIGN KEY (CLIENTE) REFERENCES PESSOA(CPF),
CONSTRAINT FK_VENDEDOR FOREIGN KEY (VENDEDOR) REFERENCES VENDEDOR(CPF)
);

CREATE TABLE PRODUTOVENDA(
PRODUTO VARCHAR2(20),
NF VARCHAR2(20),
QUANTIDADE NUMBER NOT NULL,
CONSTRAINT FK_PRODUTO FOREIGN KEY (PRODUTO) REFERENCES PRODUTO(CODIGO),
CONSTRAINT FK_NF FOREIGN KEY (NF) REFERENCES VENDA(NF),
CONSTRAINT PK_PROTUTOVENDA PRIMARY KEY (PRODUTO,NF),
CHECK (QUANTIDADE > 0)
);

CREATE TABLE CONSOLE(
CODIGO VARCHAR2(20),
HARDESPC VARCHAR2(200),
CONSTRAINT FK_CODIGO FOREIGN KEY (CODIGO) REFERENCES PRODUTO(CODIGO),
CONSTRAINT PK_CODIGO PRIMARY KEY (CODIGO) 
);

CREATE TABLE JOGO(
CODIGO VARCHAR2(20),
PLATAFORMA VARCHAR2(20),
CONSTRAINT FK_JOGO_CODIGO FOREIGN KEY (CODIGO) REFERENCES PRODUTO(CODIGO),
CONSTRAINT PK_JOGO_CODIGO PRIMARY KEY (CODIGO) 
);

CREATE TABLE TESTA(
CPFCLIENTE VARCHAR2(20),
CODPROD VARCHAR2(20),
NOTA NUMBER,
COMENTARIO VARCHAR(200),
CONSTRAINT FK_CPFCLIENTE FOREIGN KEY (CPFCLIENTE) REFERENCES PESSOA(CPF),
CONSTRAINT FK_CODPROD FOREIGN KEY (CODPROD) REFERENCES PRODUTO(CODIGO),
CONSTRAINT PK_TESTA PRIMARY KEY (CPFCLIENTE,CODPROD), 
CHECK (NOTA >= 0 AND NOTA <= 10)
);

CREATE TABLE TELEFONECLIENTE(
CLIENTE VARCHAR2(20),
TELEFONE VARCHAR2(12),
CONSTRAINT PK_TELEFONECLIENTE PRIMARY KEY (CLIENTE,TELEFONE) 
);

CREATE TABLE TELEFENOVENDEDOR(
VENDEDOR VARCHAR2(20),
TELEFONE VARCHAR2(12),
CONSTRAINT PK_TELEFENOVENDEDOR PRIMARY KEY (VENDEDOR,TELEFONE) 
);

CREATE TABLE PARTICIPAPROG(
CPFCLIENTE VARCHAR2(20),
PROGRAMACAO VARCHAR2(20),
HINICIO DATE,
CONSTRAINT FK_PARTICIPAPROG_CPFCLIENTE FOREIGN KEY (CPFCLIENTE) REFERENCES PESSOA(CPF),
CONSTRAINT FK_PARTICIPAPROG_PROGRAMACAO FOREIGN KEY (PROGRAMACAO, HINICIO) REFERENCES PROGRAMACAO(NOME, HINICIO),
CONSTRAINT PK_PARTICIPAPROG PRIMARY KEY (CPFCLIENTE,PROGRAMACAO,HINICIO) 
);