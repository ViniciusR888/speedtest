CREATE DATABASE planetaalien;
USE planetaalien;
SHOW TABLES;
SELECT * FROM usuario;
DESCRIBE usuario;
SELECT apelido,senha FROM usuario;
SELECT id,apelido FROM usuario;
/*DELETE FROM usuario;*/
DELETE FROM usuario WHERE id=2;
DELETE FROM usuario WHERE id>=4 and id<=6;
UPDATE usuario SET apelido = 'jao' WHERE id = 5;
SELECT * FROM bloom;

CREATE TABLE usuario(
	id int primary key auto_increment,
    nome varchar(70) null,
    apelido varchar(70) not null,
    email varchar(80) not null,
    senha nchar(8) not null
);

CREATE TABLE bloom(
	id int primary key auto_increment,
    nome varchar(50) null
);

INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("carlos","cleytin","gg1@gmail.com",323241);
INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("fabio","lampada","gg13232@gmail.com",3233241);
INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("vadim","aladin","g4343g1@gmail.com",3232241);
INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("joao","jao","gw434g1@gmail.com",3232421);
INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("lucas","lucas23","gwtrt434g1@gmail.com",3232421);
INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("oliver","oliver3232","gfffw434g1@gmail.com",3232421);
INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("giovanne","op88","ffgw434g1@gmail.com",3232421);
INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("mayson","rres","gssw434g1@gmail.com",3232421);
INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("heytor","vasp","gw4dd34g1@gmail.com",3232421);
INSERT INTO usuario(nome,apelido,email,senha)
	VALUES("luiz","lastday","gw43443g1@gmail.com",3232421);