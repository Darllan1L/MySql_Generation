/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.*/

CREATE DATABASE db_recursos_humanos;
USE db_recursos_humanos;

/*Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.*/

CREATE TABLE tb_funcionarios ( 
id_funcionarios BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
cpf BIGINT(12) NOT NULL,
cargo VARCHAR(20) NOT NULL,
salario DOUBLE(10,2) NOT NULL
);
/*Popule esta tabela com até 5 dados*/

INSERT INTO tb_funcionarios(nome, cpf, cargo, salario) VALUES
 ("Darllan", 47656911144, "Lider", 2500.00),
 ("Matheus", 47856745588, "Gerente", 7000.00),
 ("Jorzias", 48756988800, "Diretor", 10000.00),
 ("Gustavo", 58745638800, "Ajudante", 1500.00);
 
 /*Faça um select que retorne os funcionaries com o salário maior do que 2000.*/
 SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
 
 /*Faça um select que retorne os funcionaries com o salário menor do que 2000.*/
 SELECT * FROM tb_funcionarios WHERE salario < 2000.00;
 
 /*Ao término atualize um dado desta tabela através de uma query de atualização.*/
 UPDATE tb_funcionarios SET salario = 3000.00 WHERE id_funcionarios = 1;
 
 



