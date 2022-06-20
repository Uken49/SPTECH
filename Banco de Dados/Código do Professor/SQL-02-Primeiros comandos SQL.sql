-- Criação do banco de dados aluno
create database aluno;
-- Seleciona o banco de dados aluno
use aluno;
-- Cria a tabela Aluno
create table Aluno (
	ra int primary key,
    nome varchar(50),
    bairro varchar(40)
);
-- Consultar todos os dados da tabela Aluno
select * from Aluno;
-- Consultar apenas o ra da tabela Aluno
select ra from Aluno;
-- Consultando mais de uma coluna
select ra, nome from Aluno;
select nome, ra from Aluno;
-- Inserir os dados de um aluno
insert into Aluno values (03221027, 'Helder Maneiro', 'Bairro maneiro');
-- Inserindo mais de um dado
insert into Aluno values (03221028, 'Marcus Vinicius', 'Rudge Ramos'),
						 (03221057, 'Thais de França', 'Pq das Nações'),
						 (03221020, 'Michelly Mendes', 'Jd Santo Alberto'),
						 (03221029, 'Henrique Mederios', 'Jd do Estádio'),
						 (03221005, 'Lourenzo Mota', 'Jd Santo Antônio');
-- Quando o valor for INT, o zero a esquerda é retirado automaticamente
-- Com execesão de números inteiros (INT) e números reais (DECIMAL), todos os tipos de dados tem que colocar aspas simples ('')