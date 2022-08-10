create database exemplo_restricoes;
use exemplo_restricoes;
-- No SQL, existem 5 restrições ou constraints
-- 1- PRIMARY KEY 
-- 2- FOREIGN KEY
-- 3- NOT NULL - valor desse campo é obrigatório
-- 4- CHECK - usado para validar os valores inseridos nesse campo
-- 5- UNIQUE - valor desse campo não pode ser repetido 

create table Funcionario (
  idFuncionario int primary key auto_increment,
  nome varchar(45) not null,  -- obriga a inserir o nome do funcionário
  cpf char(14) unique,        -- não deixa inserir cpf repetido para funcionários diferentes
  sexo char(1) check (sexo = 'm' or sexo = 'f' or sexo = 'n'),  -- só aceita as letras m, f, n
    -- versões anteriores a MYSQL 8.0.16 devem usar enum nesse caso:
    -- sexo enum('m','f','n'),
  salario decimal(7,2) check (salario > 0),    -- só aceita salario maior do que zero
  avaliacao decimal(4,2) check (avaliacao >= 0 and avaliacao <= 10)  -- só aceita valor entre 0 e 10
);

-- Inserindo dados

-- Comando abaixo dá erro, pois está inserindo um valor errado para sexo: z
insert into Funcionario values (null, 'Ana Silva','123.456.789-01','z',2500,8); 

-- Comando abaixo dá erro, pois está inserindo um valor errado para salário: 0 (zero)
insert into Funcionario values (null, 'Ana Silva','123.456.789-01','f',0,8); 

-- Comando abaixo dá erro, pois está inserindo um valor errado para avaliacao: -5
insert into Funcionario values (null, 'Ana Silva','123.456.789-01','f',2500,-5); 

-- Comando abaixo funciona!
insert into Funcionario values (null, 'Ana Silva','123.456.789-01','f',2500,8); 

-- Exibe os dados da tabela Funcionario
select * from Funcionario;  

-- Comando abaixo dá erro, pois está inserindo outro funcionário com o mesmo cpf do 1o funcionário
insert into Funcionario values (null, 'José Teixeira','123.456.789-01','m',3000,7.5);
 
-- Comando abaixo funciona!
insert into Funcionario values (null, 'José Teixeira','987.654.321-97','m',3000,7.5); 

-- Tentativa de inserir os dados de um funcionário, mas informando apenas o cpf (o idFuncionario será inserido automaticamente)
-- Dá erro tb, pq definimos o nome como not null - é obrigatório informar o nome
insert into Funcionario (cpf) values ('111.222.333-44');  

-- Comando abaixo ok, mas não insere os dados de sexo, salário e avaliacao   
insert into Funcionario (nome,cpf) values ('Maria Sousa','111.222.333-44');  
  
  