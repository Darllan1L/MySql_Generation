CREATE DATABASE db_blog_pessoal;
USE db_blog_pessoal;

CREATE TABLE tb_temas(
id_temas BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(150) NOT NULL
);

CREATE TABLE tb_postagens(
id_postagens BIGINT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(30) NOT NULL,
texto VARCHAR(150) NOT NULL,
data_postagem DATE NOT NULL,
fk_temas BIGINT,
fk_dados BIGINT,
FOREIGN KEY (fk_temas) REFERENCES tb_temas(id_temas),
FOREIGN KEY (fk_dados) REFERENCES tb_dados(id_dados)
);


CREATE TABLE tb_dados(
id_dados BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
cpf BIGINT(15) NOT NULL,
email VARCHAR(30) NOT NULL
);
