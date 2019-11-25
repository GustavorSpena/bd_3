INSERT INTO EVENTO (ANO, TITULO) VALUES (2019, 'Games XP 2k19');
INSERT INTO EVENTO (ANO, TITULO) VALUES (2018, 'Games XP 2018 the force awakens');
INSERT INTO EVENTO (ANO, TITULO) VALUES (2017, 'Games XP 2017');
INSERT INTO EVENTO (ANO, TITULO) VALUES (2016, 'Games XP 2016');
INSERT INTO EVENTO (ANO, TITULO) VALUES (2015, 'Games XP 2015');

INSERT INTO EMPRESA(CNPJ, NOME, SETOR) VALUES ('66991613000126', 'Nintendo', 'Jogos Eletrônicos');
INSERT INTO EMPRESA(CNPJ, NOME, SETOR) VALUES ('66991613000120', 'Redbull.', 'Alimentos');
INSERT INTO EMPRESA(CNPJ, NOME, SETOR) VALUES ('62399161300024', 'Sony.', 'Eletrônicos');

INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2019', '66991613000126', DEFAULT, NULL);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2019', '66991613000120', DEFAULT, NULL);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2019', '62399161300024', DEFAULT, NULL);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2018', '66991613000126', 80000, 9);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2018', '66991613000120', 60000, 8);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2018', '62399161300024', 50000, 4);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2017', '66991613000126', 80000, 7);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2017', '66991613000120', 50000, 8);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2017', '62399161300024', 30000, 9);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2016', '66991613000126', 50000, 8);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2016', '66991613000120', 10000, 7);
INSERT INTO PARTICIPA(EVENTO, EMPRESA, TOTAL_PAGO, NOTA_FEEDBACK) VALUES ('2016', '62399161300024', 5000, 7);

INSERT INTO ESTANDE(TITULO, EVENTO, TAMANHO, LOCALIZACAO) VALUES ('Nintendo Ultra', '2019', 70, 'SETOR A');
INSERT INTO ESTANDE(TITULO, EVENTO, TAMANHO, LOCALIZACAO) VALUES ('Redbull Xtreme', '2019', 120, 'SETOR A');
INSERT INTO ESTANDE(TITULO, EVENTO, TAMANHO, LOCALIZACAO) VALUES ('Sony Next Gen', '2019', 60, 'SETOR B');
INSERT INTO ESTANDE(TITULO, EVENTO, TAMANHO, LOCALIZACAO) VALUES ('Nintendo Ultra', '2018', 70, 'SETOR A');
INSERT INTO ESTANDE(TITULO, EVENTO, TAMANHO, LOCALIZACAO) VALUES ('Redbull Xtreme', '2018', 120, 'SETOR A');
INSERT INTO ESTANDE(TITULO, EVENTO, TAMANHO, LOCALIZACAO) VALUES ('Sony Zone', '2018', 60, 'SETOR B');
INSERT INTO ESTANDE(TITULO, EVENTO, TAMANHO, LOCALIZACAO) VALUES ('Nintendo Area', '2017', 70, 'SETOR A');
INSERT INTO ESTANDE(TITULO, EVENTO, TAMANHO, LOCALIZACAO) VALUES ('Redbull Xtreme', '2017', 120, 'SETOR A');
INSERT INTO ESTANDE(TITULO, EVENTO, TAMANHO, LOCALIZACAO) VALUES ('SoNy', '2017', 60, 'SETOR B');

INSERT INTO PROGRAMACAO(HINICIO, NOME, TITULO, EVENTO,HFIM,DESCRICAO) VALUES (TO_TIMESTAMP('13:00', 'HH24:MI'),' Super Mario' ,'Nintendo Ultra','2019', TO_TIMESTAMP('15:00', 'HH24:MI'), 'Apresentacao do novo jogo');
INSERT INTO PROGRAMACAO(HINICIO, NOME, TITULO, EVENTO,HFIM,DESCRICAO) VALUES (TO_TIMESTAMP('15:00', 'HH24:MI'),' Xports' ,'Redbull Xtreme', '2019',  TO_TIMESTAMP('16:00', 'HH24:MI'), 'Apresentacao de esportes eletronicos');
INSERT INTO PROGRAMACAO(HINICIO, NOME, TITULO, EVENTO,HFIM,DESCRICAO) VALUES (TO_TIMESTAMP('13:00', 'HH24:MI'), 'Playstation 5','Sony Next Gen','2019' , TO_TIMESTAMP('15:00', 'HH24:MI'), 'Apresentacao do novo console');
INSERT INTO PROGRAMACAO(HINICIO, NOME, TITULO, EVENTO,HFIM,DESCRICAO) VALUES (TO_TIMESTAMP('17:00', 'HH24:MI'), 'Metroid','Nintendo Area', '2017',TO_TIMESTAMP('18:00', 'HH24:MI'), 'Apresentacao do novo jogo');

INSERT INTO PRODUTO(CODIGO,NOME,FABRICANTE,PRECO,LOTE, TIPO) VALUES ('a2f3v5', 'MARIO', 'Nintendo', 99.99, 123, 'JOGO')
INSERT INTO PRODUTO(CODIGO,NOME,FABRICANTE,PRECO,LOTE, TIPO) VALUES ('v4h5d8', 'Xbox', 'Microsoft', 3000.00, 321, 'CONSOLE')
INSERT INTO PRODUTO(CODIGO,NOME,FABRICANTE,PRECO,LOTE, TIPO) VALUES ('a7v3d5', 'Metroid', 'Nintendo', 99.99, 456, 'JOGO')
INSERT INTO PRODUTO(CODIGO,NOME,FABRICANTE,PRECO,LOTE, TIPO) VALUES ('e5r5t6', 'Playstation 5', 'Sony', 1999.99, 654, 'CONSOLE')
INSERT INTO PRODUTO(CODIGO,NOME,FABRICANTE,PRECO,LOTE, TIPO) VALUES ('g4y6t4', 'Dota2', 'Steam', 99.99, 123, 'JOGO')
INSERT INTO PRODUTO(CODIGO,NOME,FABRICANTE,PRECO,LOTE, TIPO) VALUES ('v2D4Z2', 'Nintendo Wii', 'Microsoft', 1099.99, 321, 'CONSOLE')
INSERT INTO PRODUTO(CODIGO,NOME,FABRICANTE,PRECO,LOTE, TIPO) VALUES ('A4v2G7', 'God of War', 'Nintendo', 99.99, 456, 'JOGO')
INSERT INTO PRODUTO(CODIGO,NOME,FABRICANTE,PRECO,LOTE, TIPO) VALUES ('t6Y4c3', 'Nintendo 3DS', 'Sony', 999.99, 654, 'CONSOLE')

INSERT INTO POSSUI(ESTANDE,ANO,PRODUTO,QUANTIDADE) VALUES ('Nintendo Ultra', 2019, 'a2f3v5', 20)
INSERT INTO POSSUI(ESTANDE,ANO,PRODUTO,QUANTIDADE) VALUES ('Redbull Xtreme', 2019, 'Fx3E4v', 20)
INSERT INTO POSSUI(ESTANDE,ANO,PRODUTO,QUANTIDADE) VALUES ('Sony Zone', 2019, 'f2G5H6', 20)
INSERT INTO POSSUI(ESTANDE,ANO,PRODUTO,QUANTIDADE) VALUES ('SoNy', 2019, 'H23v5g', 20)

INSERT INTO EMPREGA(ESTANDE,ANO,CPF) VALUES ('Nintendo Ultra',2019,'111.222.333.444-5');
INSERT INTO EMPREGA(ESTANDE,ANO,CPF) VALUES ('Redbull Xtreme',2019,'222.333.444.555-x');
INSERT INTO EMPREGA(ESTANDE,ANO,CPF) VALUES ('Nintendo Area',2019,'333.444.555.666-7');
INSERT INTO EMPREGA(ESTANDE,ANO,CPF) VALUES ('SoNy',2019,'444.555.666.777-x');

INSERT INTO VENDEDOR(CPF,NOME) VALUES ('111.222.333.444-57','Marcos');
INSERT INTO VENDEDOR(CPF,NOME) VALUES ('222.333.444.555-68','Jorge');
INSERT INTO VENDEDOR(CPF,NOME) VALUES ('333.444.555.666-66','Marcia');
INSERT INTO VENDEDOR(CPF,NOME) VALUES ('444.555.666.777-55','Carlos');

INSERT INTO PESSOA(CPF,NOME) VALUES ('555.666.777.888-95','Marcos');
INSERT INTO PESSOA(CPF,NOME) VALUES ('123.234.345.456-14','Jorge');
INSERT INTO PESSOA(CPF,NOME) VALUES ('321.654.978.234-13','Marcia');
INSERT INTO PESSOA(CPF,NOME) VALUES ('123.345.234.678-23','Carlos');
INSERT INTO PESSOA(CPF,NOME) VALUES ('666.111.333.218-56','Jose');
INSERT INTO PESSOA(CPF,NOME) VALUES ('123.234.345.456-34','Joao');
INSERT INTO PESSOA(CPF,NOME) VALUES ('321.654.978.234-45','Simone');
INSERT INTO PESSOA(CPF,NOME) VALUES ('123.345.234.678-67','Elaine');

INSERT INTO VENDA(NF,DATA,CLIENTE,VENDEDOR) VALUES ('22222',TO_TIMESTAMP('2019-06-13 12:15:31', 'YYYY-MM-DD HH24:MI:SS'),'555.666.777.888-95','111.222.333.444-57');
INSERT INTO VENDA(NF,DATA,CLIENTE,VENDEDOR) VALUES ('33333',TO_TIMESTAMP('2018-06-03 14:39:31', 'YYYY-MM-DD HH24:MI:SS'),'321.654.978.234-13','222.333.444.555-68');
INSERT INTO VENDA(NF,DATA,CLIENTE,VENDEDOR) VALUES ('44444',TO_TIMESTAMP('2019-06-14 16:23:31', 'YYYY-MM-DD HH24:MI:SS'),'123.234.345.456-14','333.444.555.666-66');
INSERT INTO VENDA(NF,DATA,CLIENTE,VENDEDOR) VALUES ('55555',TO_TIMESTAMP('2019-06-12 14:45:31', 'YYYY-MM-DD HH24:MI:SS'),'321.654.978.234-13','444.555.666.777-55');

INSERT INTO PRODUTOVENDA (PRODUTO,NF, QUANTIDADE) VALUES ('a2f3v5','22222',3); 
INSERT INTO PRODUTOVENDA (PRODUTO,NF, QUANTIDADE) VALUES ('a7v3d5','44444',2);
INSERT INTO PRODUTOVENDA (PRODUTO,NF, QUANTIDADE) VALUES ('v4h5d8','33333',1);
INSERT INTO PRODUTOVENDA (PRODUTO,NF, QUANTIDADE) VALUES ('a7v3d5','55555',1);


INSERT INTO CONSOLE (CODIGO,HARDESPC) VALUES ('v4h5d8','8gb');
INSERT INTO CONSOLE (CODIGO,HARDESPC) VALUES ('v2D4Z2','6gb');
INSERT INTO CONSOLE (CODIGO,HARDESPC) VALUES ('t6Y4c3','8gb');
INSERT INTO CONSOLE (CODIGO,HARDESPC) VALUES ('e5r5t6','16gb');

INSERT INTO JOGO (CODIGO,PLATAFORMA) VALUES ('a2f3v5', 'MARIO');
INSERT INTO JOGO (CODIGO,PLATAFORMA) VALUES ('a7v3d5', 'Metroid');
INSERT INTO JOGO (CODIGO,PLATAFORMA) VALUES ('g4y6t4', 'Dota2');
INSERT INTO JOGO (CODIGO,PLATAFORMA) VALUES ('A4v2G7', 'God of War');

INSERT INTO TESTA (CPFCLIENTE ,CODPROD, NOTA , COMENTARIO) VALUES ('555.666.777.888-9','a2f3v5',6,'regular');
INSERT INTO TESTA (CPFCLIENTE ,CODPROD, NOTA , COMENTARIO) VALUES ('321.654.978.234-1','t6Y4c3',9,'muito bom');
INSERT INTO TESTA (CPFCLIENTE ,CODPROD, NOTA , COMENTARIO) VALUES ('123.234.345.456-1','e5r5t6',8,'gostei muito');
INSERT INTO TESTA (CPFCLIENTE ,CODPROD, NOTA , COMENTARIO) VALUES ('321.654.978.234-1','a7v3d5',0,' péssimo');

INSERT INTO TELEFONECLIENTE (CLIENTE ,TELEFONE ) VALUES ('555.666.777.888-9','(11)92222-4444');
INSERT INTO TELEFONECLIENTE (CLIENTE ,TELEFONE ) VALUES ('123.234.345.456-1','(13)3333-5555');
INSERT INTO TELEFONECLIENTE (CLIENTE ,TELEFONE ) VALUES ('321.654.978.234-1','(21)6666-8888');
INSERT INTO TELEFONECLIENTE (CLIENTE ,TELEFONE ) VALUES ('321.654.978.234-1','(16)9999-0000');

INSERT INTO TELEFENOVENDEDOR (VENDEDOR,TELEFONE)  VALUES ('111.222.333.444-5','(11)91234-5678');
INSERT INTO TELEFENOVENDEDOR (VENDEDOR,TELEFONE)  VALUES ('444.555.666.777-x','(20)4321-8765');
INSERT INTO TELEFENOVENDEDOR (VENDEDOR,TELEFONE)  VALUES ('333.444.555.666-7','(16)1133-2244');
INSERT INTO TELEFENOVENDEDOR (VENDEDOR,TELEFONE)  VALUES ('222.333.444.555-x','(14)5566-7788');

INSERT INTO PARTICIPAPROG (CPFCLIENTE,HINICIO,PROGRAMACAO) VALUES ('666.111.333.218-56',TO_TIMESTAMP('13:00', 'HH24:MI'),' Super Mario');
INSERT INTO PARTICIPAPROG (CPFCLIENTE,HINICIO,PROGRAMACAO) VALUES ('123.234.345.456-34',TO_TIMESTAMP('15:00', 'HH24:MI'),' Xports');
INSERT INTO PARTICIPAPROG (CPFCLIENTE,HINICIO,PROGRAMACAO) VALUES ('321.654.978.234-45',TO_TIMESTAMP('13:00', 'HH24:MI'), 'Playstation 5');
INSERT INTO PARTICIPAPROG (CPFCLIENTE,HINICIO,PROGRAMACAO) VALUES ('123.345.234.678-67',TO_TIMESTAMP('17:00', 'HH24:MI'), 'Metroid');

