CREATE DATABASE bardodba;/*cria banco de dados*/

USE bardodba;/*usar o banco de dados*/
/* speedtest_logico_03: */

CREATE TABLE Garcom (/*cria um tabela garcom*/
    id INT PRIMARY KEY auto_increment,/*auto incrementa os id's de maneira automatica*/
    nome VARCHAR(50)
);

INSERT INTO garcom(nome)VALUES('Celso');/*inserindo na tabela garçom*/
INSERT INTO garcom(nome)VALUES('Miqueias');
INSERT INTO garcom(nome)VALUES('Artur');

SELECT * FROM garcom;

CREATE TABLE Mesa (
    id INT PRIMARY KEY auto_increment,
    NumMesa NCHAR(2)
);

INSERT INTO Mesa(NumMesa)value('A1');
INSERT INTO Mesa(NumMesa)value('A2');
INSERT INTO Mesa(NumMesa)value('A3');
INSERT INTO Mesa(NumMesa)value('A4');
INSERT INTO Mesa(NumMesa)value('A5');
INSERT INTO Mesa(NumMesa)value('A6');
INSERT INTO Mesa(NumMesa)value('A7');
INSERT INTO Mesa(NumMesa)value('A8');
INSERT INTO Mesa(NumMesa)value('A9');

INSERT INTO Mesa(NumMesa)value('B1');
INSERT INTO Mesa(NumMesa)value('B2');
INSERT INTO Mesa(NumMesa)value('B3');
INSERT INTO Mesa(NumMesa)value('B4');
INSERT INTO Mesa(NumMesa)value('B5');
INSERT INTO Mesa(NumMesa)value('B6');
INSERT INTO Mesa(NumMesa)value('B7');
INSERT INTO Mesa(NumMesa)value('B8');
INSERT INTO Mesa(NumMesa)value('B9');

INSERT INTO Mesa(NumMesa)value('C1');
INSERT INTO Mesa(NumMesa)value('C2');
INSERT INTO Mesa(NumMesa)value('C3');
INSERT INTO Mesa(NumMesa)value('C4');
INSERT INTO Mesa(NumMesa)value('C5');
INSERT INTO Mesa(NumMesa)value('C6');
INSERT INTO Mesa(NumMesa)value('C7');
INSERT INTO Mesa(NumMesa)value('C8');
INSERT INTO Mesa(NumMesa)value('C9');

INSERT INTO Mesa(NumMesa)value('D1');
INSERT INTO Mesa(NumMesa)value('D2');
INSERT INTO Mesa(NumMesa)value('D3');
INSERT INTO Mesa(NumMesa)value('D4');
INSERT INTO Mesa(NumMesa)value('D5');
INSERT INTO Mesa(NumMesa)value('D6');
INSERT INTO Mesa(NumMesa)value('D7');
INSERT INTO Mesa(NumMesa)value('D8');
INSERT INTO Mesa(NumMesa)value('D9');

INSERT INTO Mesa(NumMesa)value('E1');
INSERT INTO Mesa(NumMesa)value('E2');
INSERT INTO Mesa(NumMesa)value('E3');
INSERT INTO Mesa(NumMesa)value('E4');
INSERT INTO Mesa(NumMesa)value('E5');
INSERT INTO Mesa(NumMesa)value('E6');
INSERT INTO Mesa(NumMesa)value('E7');
INSERT INTO Mesa(NumMesa)value('E8');
INSERT INTO Mesa(NumMesa)value('E9');

SELECT * FROM Mesa;
DELETE FROM mesa where id=;/*deleta item da tabela*/
DROP TABLE Mesa;/*apaga a tabela*/
DROP DATABASE bardodba;/*apaga o banco de dados*/ 
TRUNCATE TABLE mesa;/*apaga os itens de uma tabela sem apagar a tabela*/
SELECT nummesa FROM mesa;/*codigo para contar itens na tabela*/

CREATE TABLE Comanda (
    id INT PRIMARY KEY auto_increment,
    fechada TINYINT(1),
    estrelas INT,
    Valor DECIMAL(5,2),
    fk_Mesa_id INT,
    fk_Garcom_id INT
);
INSERT INTO comanda(fechada,estrelas,valor,fk_mesa_id,fk_garcom_id)
	VALUES(false,2,999.99,5,2);
INSERT INTO comanda(fechada,estrelas,valor,fk_mesa_id,fk_garcom_id)
	VALUES(true,1,95.99,6,1);
INSERT INTO comanda(fechada,estrelas,valor,fk_mesa_id,fk_garcom_id)
	VALUES(false,2,99.99,1,2);
INSERT INTO comanda(fechada,estrelas,valor,fk_mesa_id,fk_garcom_id)
	VALUES(false,5,78.99,7,1);
INSERT INTO comanda(fechada,estrelas,valor,fk_mesa_id,fk_garcom_id)
	VALUES(true,2,12.99,2,3);
INSERT INTO comanda(fechada,estrelas,valor,fk_mesa_id,fk_garcom_id)
	VALUES(true,4,93.99,5,2);
INSERT INTO comanda(fechada,estrelas,valor,fk_mesa_id,fk_garcom_id)
	VALUES(false,2,32.99,3,3);
INSERT INTO comanda(fechada,estrelas,valor,fk_mesa_id,fk_garcom_id)
	VALUES(false,1,9.99,4,2);


 SELECT * FROM comanda;
 SELECT * FROM garcom;
 SELECT * FROM mesa;
 
ALTER TABLE Comanda ADD CONSTRAINT FK_Comanda_2
    FOREIGN KEY (fk_Mesa_id)
    REFERENCES Mesa (id)
    ON DELETE CASCADE;
 
ALTER TABLE Comanda ADD CONSTRAINT FK_Comanda_3
    FOREIGN KEY (fk_Garcom_id)
    REFERENCES Garcom (id)
    ON DELETE CASCADE;