/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.*/

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

/*Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.*/

CREATE TABLE tb_classe( 
		id_classe BIGINT AUTO_INCREMENT PRIMARY KEY,
        funcoes VARCHAR(20) NOT NULL,	
        armamentos VARCHAR(20) NOT NULL
);
CREATE TABLE tb_personagens(
id_personagens BIGINT AUTO_INCREMENT PRIMARY KEY,
poder_ataque BIGINT(10) NOT NULL,
poder_defesa BIGINT(10) NOT NULL,
nome VARCHAR(20) NOT NULL,
fk_classe BIGINT,
FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);
INSERT INTO tb_classe(funcoes, armamentos) VALUES
("arqueiro", "arco"),
("cavaleiro", "espada"),
("mago", "varinha");
INSERT INTO tb_personagens(poder_ataque, poder_defesa, nome, fk_classe) VALUES
(3000, 2000, "blade", 1),
(2000,1000, "naruto", 3),
(4000, 3000, "davi", 2),
(3000,1000, "chaves",3);
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE 'c%';

SELECT * FROM tb_classe INNER JOIN tb_personagens ON tb_classe.id_classe = tb_personagens.fk_classe;

SELECT * FROM tb_classe INNER JOIN tb_personagens ON tb_classe.id_classe = tb_personagens.fk_classe
WHERE id_classe = 3;