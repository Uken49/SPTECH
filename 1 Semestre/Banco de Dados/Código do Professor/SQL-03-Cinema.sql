create database cinema;
use cinema;
-- Criação da tabela Filme
create table Filme (
   idFilme int primary key,
   titulo varchar(40),
   genero varchar(30),
   diretor varchar(40)
);
-- Vamos inserir os dados de um filme, da forma como eu já tinha ensinado:
-- Desse jeito, devemos informar todos os dados, na mesma ordem do create table
insert into Filme values (1, 'Os incríveis', 'Animação', 'Brad Bird');

-- Exibição dos dados da tabela Filme
select * from Filme;

-- Outras formas de fazer inserção:
-- Entre o nome da tabela e a palavra values, informamos as colunas que terão
-- valores inseridos
insert into Filme (idFilme, titulo) values (2, 'Madagascar'),
										(3, 'Batman'),
                                        (4, 'Titanic');
-- Podemos inclusive inserir os valores em ordem diferente da que está no create table                                        
insert into Filme (titulo, idFilme) values ('Os incríveis 2', 5),
                                           ('Ratatouille', 6),
                                           ('Avatar', 7);
-- Atualizar os dados dos nulls
update Filme set diretor = 'James Cameron' where idFilme in (4, 7);
update Filme set genero = 'Animação', diretor = 'Brad Bird'
             where idFilme in (5, 6);
update Filme set genero = 'Animação', diretor = 'Tom McGrath'
             where idFilme = 2;
update Filme set genero = 'Ação', diretor = 'Matt Reevers'
			 where idFilme = 3;
update Filme set genero = 'Drama' where idFilme = 4;             
update Filme set genero = 'Fantasia' where idFilme = 7; 

-- Exibir os dados ordenados pelo titulo
select * from Filme order by titulo;
-- Exibir os dados ordenados pelo gênero
select * from Filme order by genero;            
-- Exibir os dados ordenados pelo gênero, e dentre os de mesmo gênero, ordenados pelo titulo
select * from Filme order by genero, titulo;            
-- Exibir os dados ordenados pelo gênero, e dentre os de mesmo gênero, ordenados pelo diretor
select * from Filme order by genero, diretor;
-- Exibir os dados ordenados pelo gênero, e dentre os de mesmo gênero, ordenados pelo diretor de forma descendente
select * from Filme order by genero, diretor desc;            
-- Exibir os dados ordenados pelo gênero de forma descendente,
-- e dentre os de mesmo gênero, ordenados pelo diretor de forma descendente
select * from Filme order by genero desc, diretor desc;            
-- Exibir os dados ordenados pelo gênero de forma descendente,
-- e dentre os de mesmo gênero, ordenados pelo diretor de forma ascendente
select * from Filme order by genero desc, diretor;

-- Vamos criar uma outra tabela, agora com auto_increment
create table Pessoa (
  idPessoa int primary key auto_increment,
  nome varchar(40),
  dtNascimento date,
  salario decimal(7,2) -- valor máximo desse campo = 99999.99
);  
-- Inserindo valores na tabela Pessoa
insert into Pessoa values (null, 'Maria Silva', '2000-05-03', 3000);
-- Exibindo os dados da tabela Pessoa
select * from Pessoa;
-- Inserindo dados de Pessoa, sem informar o null do idPessoa
insert into Pessoa (nome, dtNascimento, salario) values
        ('Jose Sousa', '1995-06-10', 10000),
        ('Mickey', '1960-10-03', 15000.50),
        ('Pateta', '1965-11-05', 12000.99);
-- Nesse ponto da aula, executamos o comando anterior 2 vezes
-- E esses registros ficaram duplicados (pois o idPessoa está sendo inserido de forma automática)        
-- Vamos excluir os registros idPessoa 5, 6, 7 (foram duplicados)
delete from Pessoa where idPessoa >= 5; 
-- Próximo idPessoa será 8 (pq o auto_increment já consumiu o 5, 6 e 7)
insert into Pessoa values (null, 'Minnie', '1966-07-11', 14000); 
-- No lugar do null, podemos informar um valor de idPessoa (nesse caso, ele usará esse valor,
-- se estiver sem usar)
insert into Pessoa values (5, 'Donald', '1964-08-04', 13000);
 
-- Informando qual o número do auto_increment
alter table Pessoa auto_increment = 12;
insert into Pessoa values (null, 'Pluto', '1950-10-07', 16000);
select * from Pessoa;

-- Criando uma nova tabela para definir o valor inicial do auto_increment
-- no próprio create table
create table Produto (
   idProduto int primary key auto_increment,
   nome varchar(40) not null,  -- not null faz com que o valor desse campo seja obrigatório
   preco decimal(4, 2)  -- valor máximo de preco = 99.99
) auto_increment = 1000;
-- Inserindo um produto
insert into Produto values (null, 'Caixa de Bis', 4.50);
-- Exibindo os dados da tabela Produto
select * from Produto;
-- Exibindo a estrutura da tabela
desc Produto;
-- Renomeando a coluna nome para nomeProduto
-- O comando abaixo só funciona em versõer do MySQL posteriores a 8.0
alter table Produto rename column nome to nomeProduto; 
-- Renomeando a tabela Produto para tbProduto
rename table Produto to tbProduto;
-- Exibindo os dados da tabela 
select * from tbProduto; 
-- Exibindo a estrutura da tabela
desc tbProduto;
-- Alterando o tamanho da coluna nomeProduto para 50 caracteres
alter table tbProduto modify nomeProduto varchar(50) not null; 
-- Exibindo novamente a estrutura da tabela
desc tbProduto;

-- Comando truncate: "limpa" os dados da tabela, sem excluir a tabela
truncate tbProduto; 

-- renomeando coluna em versões anteriores ao MySQL 8.0
-- esse comando funciona em qualquer versão do MySQL:
alter table tbProduto change nomeProduto nomeProd varchar(50) not null;    
  
  
  
  
  
  