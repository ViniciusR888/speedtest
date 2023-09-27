/*Um cliente necessita de um software para armazenar nome de pessoas.alter*/
/*DDL-Definicao de dados*/

CREATE DATABASE speedtest01;/*criando banco de dados*/
USE speedtest01;/*usando o banco de dados*/

CREATE TABLE pessoa /*criando uma tabela pessoa*//*DDL*/
(
	id int primary key auto_increment,/*auto_increment:id unico por item*/
    nome varchar(80)
);
/*DML*//*para inserir*/
INSERT INTO pessoa(nome)values('Tatiene');/*inserindo dados*/
INSERT INTO pessoa(nome)values('vinicius');
INSERT INTO pessoa(nome)values('fernando');
DROP pessoa(nome)values('vinicius');

/*DQL*//*para ver*/
SELECT * FROM pessoa;
