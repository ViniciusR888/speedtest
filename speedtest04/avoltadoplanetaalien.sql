CREATE DATABASE avoltadoplanetaalien;
USE avoltadoplanetaalien;
SHOW TABLES;


SELECT bloom.id, bloom.nome, verbo.id, verbo.nomeverbo /*colunas que seram mostradas*/
FROM bloom	/*de onde vem*/
INNER JOIN verbo ON bloom.id = verbo.fk_bloom_id;/*para onde vai*/ /*<tabela>*/


SELECT * FROM verbo;
CREATE TABLE verbo (
    id INT PRIMARY KEY auto_increment,
    nomeverbo VARCHAR(40),
    fk_bloom_id INT
);
INSERT INTO verbo (nomeverbo,fk_bloom_id)VALUES
("Listar",1),("Relembrar",1),("Reconhecer",1),("Identificar",1),("Localizar",1),
("Descrever",1),("Citar",1),("Esquematizar",2),("Relacionar",2),("Explicar",2),
("Demonstrar",2),("Parafrasear",2),("Associar",2),("Converter",2),("Utilizar",3),
("Implementar",3),("Modificar",3),("Experimentar",3),("Calcular",3),("Demonstrar",3),
("Classificar",3),("Resolver",4),("Categorizar",4),("Diferenciar",4),("Comparar",4),
("Explicar",4),("Integrar",4),("Investigar",4),("Defender",5),("Delimitar",5),
("Estimar",5),("Selecionar",5),("Justificar",5),("Comparar",5),("Explicar",5),
("Elaborar",6),("Desenhar",6),("Produzir",6),("Prototipar",6),("Traçar",6),
("Idear",6),("Inventar",6);
DELETE FROM verbo WHERE id>=43;



SELECT * FROM bloom;
CREATE TABLE bloom (
    id INT PRIMARY KEY auto_increment,
    nOmeS VARCHAR(40)
);

ALTER TABLE bloom DROP COLUMN nOmeS;
ALTER TABLE bloom ADD nome VARCHAR(40);

INSERT INTO bloom (nome) VALUES
("Memorizar"),("Compreender"),("Aplicar"),
("Analisar"),("Avaliar"),("Criar");

DELETE FROM bloom WHERE id>=7;



SELECT * FROM historia;
CREATE TABLE historia (
    id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(150),
    descricao LONGTEXT,
    final VARCHAR(370)
);
INSERT INTO historia (titulo,descricao,final) VALUES
("Planeta Alien - A revolta do Furão","No ano de 3250 a terra foi destruída por alienígenas do Planeta Alien. Esses extraterrestes
eram desenvolvedores de tecnologia avançada em seu planeta, mas aprenderam com os
humanos a linguagem de marcação HTML, a linguagem de estilização CSS e a linguagem de
programação Java Script.Antes de destruir a terra por inteiro, escolheu um casal de cada Mamífero e fez uma mutação
genética com a tecnologia do planeta Alien e as tecnologias aprendidas no planeta Terra:
HTML, CSS e Java Script.Todos os Mamíferos mutantes, aceitaram tranquilamente a mutação genética, mas um e
apenas um, chamado de Furão Mutante Guerreiro, não aceitou. Ele foi levado para o Planeta
Alien, mas a sua memória ainda continuou na terra. Um dia essas memórias se misturaram
com sua mutação genética e ele se revoltou contra os aliens.
A revolta fez nascer missões. E cada missão ganha um nível de força que o torna mais poderoso
aumentando a possibilidade de destruir mais aliens e assim salvar também os seus amigos
terrestres","todos os “Aliens” foram destruídos e o Furão irá resgatar seus
amigos e construir um novo planeta com justiça e paz.");
DELETE FROM historia WHERE id=2;



SELECT * FROM competencia;
CREATE TABLE competencia (
    id INT PRIMARY KEY auto_increment,
    descricao LONGTEXT,
    fk_verbo_id INT
);
INSERT INTO competencia (descricao) VALUES
();



SELECT * FROM etapa;
CREATE TABLE etapa (
    id INT PRIMARY KEY auto_increment,
    instrucao LONGTEXT,
    ponto INT,
    tipo NCHAR(1),
    fk_verbo_id INT
);
INSERT INTO etapa (instrucao,ponto,tipo) VALUES
("Explorar Ambiente",10,"C"),("Matar Mobs",15,"A"),("Resolver Puzzle",20,"H"),
("Pegar Itens e Proteger Estatua",20,"H"),("Sabotar Masmorra",20,"H"),
("Explorar Acampamento Inimigo",10,"C"),("Batalhar Com Boss",15,"A"),
("Identificar Detalhes Na Ruina Do Boss",10,"C"),("Criar Upgrade Na Arma",15,"A"),
("Destruir Boss Final",20,"H");

DELETE FROM etapa WHERE id>= 11;

UPDATE etapa SET fk_verbo_id = 3 WHERE id = 1;
UPDATE etapa SET fk_verbo_id = 16 WHERE id = 2;
UPDATE etapa SET fk_verbo_id = 13 WHERE id = 3;
UPDATE etapa SET fk_verbo_id = 29 WHERE id = 4;
UPDATE etapa SET fk_verbo_id = 8 WHERE id = 5;
UPDATE etapa SET fk_verbo_id = 4 WHERE id = 6;
UPDATE etapa SET fk_verbo_id = 41 WHERE id = 7;
UPDATE etapa SET fk_verbo_id = 4 WHERE id = 8;
UPDATE etapa SET fk_verbo_id = 36 WHERE id = 9;
UPDATE etapa SET fk_verbo_id = 41 WHERE id = 10;



SELECT * FROM Missao;
CREATE TABLE Missao (
    id INT PRIMARY KEY auto_increment,
    hash nchar(22),
    titulo VARCHAR(80),
    forca INT,
    fk_competencia_id INT,
    fk_etapa_id INT
);
INSERT INTO Missao (hash,titulo,forca) VALUES
("5125oiu36","Tags",1),("4642sda47","Selectores",2),("7524cvd36","Scrips",3),
("6985rtr58","Exceptions",4),("2154aad27","Conditions",5),("2745yjh47","Loops",6),
("8745jtj12","Arrays",7),("8485bcb36","Functions",8),("9564awe58","Objects",9),
("1255dda47","DataBases",10);

UPDATE Missao SET fk_etapa_id = 1 WHERE id = 1;
UPDATE Missao SET fk_etapa_id = 1 WHERE id = 2;
UPDATE Missao SET fk_etapa_id = 1 WHERE id = 3;
UPDATE Missao SET fk_etapa_id = 1 WHERE id = 4;
UPDATE Missao SET fk_etapa_id = 1 WHERE id = 5;
UPDATE Missao SET fk_etapa_id = 1 WHERE id = 6;
UPDATE Missao SET fk_etapa_id = 1 WHERE id = 7;
UPDATE Missao SET fk_etapa_id = 1 WHERE id = 8;
UPDATE Missao SET fk_etapa_id = 1 WHERE id = 9;
UPDATE Missao SET fk_etapa_id = 1 WHERE id = 10;



SELECT * FROM MissaoHistoria;
CREATE TABLE MissaoHistoria (
    id INT PRIMARY KEY auto_increment,
    fk_Missao_id INT,
    fk_historia_id INT
);
INSERT INTO MissaoHistoria (fk_Missao_id,fk_historia_id) VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),
(6,1),(7,1),(8,1),(9,1),(10,1);



ALTER TABLE competencia ADD CONSTRAINT FK_competencia_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 
ALTER TABLE verbo ADD CONSTRAINT FK_verbo_2
    FOREIGN KEY (fk_bloom_id)
    REFERENCES bloom (id)
    ON DELETE CASCADE;
 
ALTER TABLE etapa ADD CONSTRAINT FK_etapa_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_2
    FOREIGN KEY (fk_competencia_id)
    REFERENCES competencia (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_3
    FOREIGN KEY (fk_etapa_id)
    REFERENCES etapa (id)
    ON DELETE CASCADE;
 
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_2
    FOREIGN KEY (fk_Missao_id)
    REFERENCES Missao (id)
    ON DELETE CASCADE;
 
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_3
    FOREIGN KEY (fk_historia_id)
    REFERENCES historia (id)
    ON DELETE CASCADE;