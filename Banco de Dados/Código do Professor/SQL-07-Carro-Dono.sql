/*
29/03/2022 - BD Exercicio 06 - Modelagem Logica + FK + Command Line

. Fazer a modelagem lógica no MySQL Workbench de um sistema para cadastrar carros e seus donos.
- Cada carro pertence somente a um dono.
- Cada dono pode ter mais de um carro.
-- Inserir dados nas tabelas, de forma que exista algum dono com mais de um carro cadastrado.

- Sobre cada dono, o sistema guarda um identificador que identifica de forma única cada
dono. Esse identificador começa a partir de 1 e é incrementado de forma automática pelo
sistema. Além do identificador, o sistema guarda o nome, a data de nascimento e o salário
do dono.

- Sobre cada carro, o sistema guarda um identificador que é inicializado com 101 e carro de forma única. 
Além do identificador, o sistema guarda o modelo (por exemplo: Uno),
a marca (por exemplo: Fiat), a placa (por exemplo: ABC 1234) e o ano de fabricação.
*/


-- Create Database
create database carro;
-- Query OK, 1 row affected (0.13 sec)
-- Use Database
use carro;
-- Database changed


-- Tabela Dono
create table dono (
iddono int primary key auto_increment,
nome varchar(45),
datanascimento date,
salario decimal(10,2));
-- Query OK, 0 rows affected (0.38 sec)

-- Create table Carro
create table carro (
idcarro int primary key auto_increment,
modelo varchar(40),
marca varchar (40),
placa char(8),
ano int,
fkdono int ,
foreign key (fkdono) references dono (iddono)
	)auto_increment=101;
-- Query OK, 0 rows affected (0.38 sec)

-- insert dono
insert into dono (nome, datanascimento, salario) values
('Rafael Rodrigues','1983-01-24',5000),
('Izabel','1944-11-22',1200),
('Thomas','1972-08-12',2200),
('Lucas','1979-02-22',4200);

-- Query OK, 4 rows affected (0.10 sec)
-- Records: 4  Duplicates: 0  Warnings: 0

-- insert Carro
insert into carro (modelo, marca, placa, ano, fkdono) values
('I30','Hyundai','EZZ-8588',2012,1),
('Fusca','VW','BKH-9527',1988,2),
('Kombi','VW','HKK-9527',1988,1),
('Variant','VW','NBB-2122',1978,3),
('Golf','VW','XAP-9876',2016,4);

-- Query OK, 5 rows affected (0.14 sec)
-- Records: 5  Duplicates: 0  Warnings: 0

-- Exibir os dados dos donos ordenados pela data de nascimento.
select * from dono order by datanascimento;
/*
+--------+------------------+----------------+---------+
| iddono | nome             | datanascimento | salario |
+--------+------------------+----------------+---------+
|      2 | Izabel           | 1944-11-22     | 1200.00 |
|      3 | Thomas           | 1972-08-12     | 2200.00 |
|      4 | Lucas            | 1979-02-22     | 4200.00 |
|      1 | Rafael Rodrigues | 1983-01-24     | 5000.00 |
+--------+------------------+----------------+---------+
*/

-- Exibir os dados dos carros ordenados pelo ano de fabricação, em ordem decrescente.
select * from carro order by ano desc;
/*
+---------+---------+---------+----------+------+--------+
| idcarro | modelo  | marca   | placa    | ano  | fkdono |
+---------+---------+---------+----------+------+--------+
|     105 | Golf    | VW      | XAP-9876 | 2016 |      4 |
|     101 | I30     | Hyundai | EZZ-8588 | 2012 |      1 |
|     102 | Fusca   | VW      | BKH-9527 | 1988 |      2 |
|     103 | Kombi   | VW      | HKK-9527 | 1988 |      1 |
|     104 | Variant | VW      | NBB-2122 | 1978 |      3 |
+---------+---------+---------+----------+------+--------+*/

-- Exibir os dados dos carros cuja placa termine com um determinado dígito numérico.
select * from carro where placa like '%8';
/*
+---------+--------+---------+----------+------+--------+
| idcarro | modelo | marca   | placa    | ano  | fkdono |
+---------+--------+---------+----------+------+--------+
|     101 | I30    | Hyundai | EZZ-8588 | 2012 |      1 |
+---------+--------+---------+----------+------+--------+
*/
-- Exibir os carros que são de uma determinada marca.
select * from carro where marca = 'VW';
/*
+---------+---------+-------+----------+------+--------+
| idcarro | modelo  | marca | placa    | ano  | fkdono |
+---------+---------+-------+----------+------+--------+
|     102 | Fusca   | VW    | BKH-9527 | 1988 |      2 |
|     103 | Kombi   | VW    | HKK-9527 | 1988 |      1 |
|     104 | Variant | VW    | NBB-2122 | 1978 |      3 |
|     105 | Golf    | VW    | XAP-9876 | 2016 |      4 |
+---------+---------+-------+----------+------+--------+
*/
-- Exibir a descrição da tabela carro.
desc carro;
/*
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| idcarro | int         | NO   | PRI | NULL    | auto_increment |
| modelo  | varchar(40) | YES  |     | NULL    |                |
| marca   | varchar(40) | YES  |     | NULL    |                |
| placa   | char(8)     | YES  |     | NULL    |                |
| ano     | int         | YES  |     | NULL    |                |
| fkdono  | int         | YES  | MUL | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
*/

-- Aumentar a coluna modelo da tabela carro.
alter table carro modify column modelo varchar(100);
-- Query OK, 5 rows affected (1.05 sec)
-- Records: 5  Duplicates: 0  Warnings: 0

-- Alterar o salário de algum dono. Exibir novamente a tabela de dono.
update dono set salario = 2000 where iddono = 4;
-- Query OK, 1 row affected (0.07 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0


-- Exibir os dados dos carros e dos seus respectivos donos.
-- com virgula e where
select 
	dono.nome,
    dono.datanascimento,
    dono.salario,
    carro.modelo,
    carro.marca,
    carro.placa,
    carro.ano
		from dono, carro where dono.iddono = carro.fkdono;
/*
+------------------+----------------+---------+---------+---------+----------+------+
| nome             | datanascimento | salario | modelo  | marca   | placa    | ano  |
+------------------+----------------+---------+---------+---------+----------+------+
| Rafael Rodrigues | 1983-01-24     | 5000.00 | I30     | Hyundai | EZZ-8588 | 2012 |
| Rafael Rodrigues | 1983-01-24     | 5000.00 | Kombi   | VW      | HKK-9527 | 1988 |
| Izabel           | 1944-11-22     | 1200.00 | Fusca   | VW      | BKH-9527 | 1988 |
| Thomas           | 1972-08-12     | 2200.00 | Variant | VW      | NBB-2122 | 1978 |
| Lucas            | 1979-02-22     | 2000.00 | Golf    | VW      | XAP-9876 | 2016 |
+------------------+----------------+---------+---------+---------+----------+------+*/
-- com join
select 
	dono.nome,
    dono.datanascimento,
    dono.salario,
    carro.modelo,
    carro.marca,
    carro.placa,
    carro.ano
		from dono 
			join carro
				on dono.iddono = carro.fkdono;

-- Exibir os dados dos carros e dos seus respectivos donos, mas somente de um determinado dono (informando o nome do dono).
select 
	dono.nome,
    dono.datanascimento,
    dono.salario,
    carro.modelo,
    carro.marca,
    carro.placacarro,
    carro.anofabricacao
		from dono 
			join carro
				on dono.iddono = carro.fkdono
			where dono.nome = 'Rafael Rodrigues';
            
-- Exibir os dados dos carros e dos seus respectivos donos, mas somente de uma determinada marca de carro.]
select 
	dono.nome,
    dono.datanascimento,
    dono.salario,
    carro.modelo,
    carro.marca,
    carro.placacarro,
    carro.anofabricacao
		from dono 
			join carro
				on dono.iddono = carro.fkdono
			where carro.marca = 'Hyundai';

-- Exibir os dados dos carros e dos seus respectivos dono, mas somente dos carros cuja placa comece uma determinada letra.
select 
	dono.nome,
    dono.datanascimento,
    dono.salario,
    carro.modelo,
    carro.marca,
    carro.placacarro,
    carro.anofabricacao
		from dono 
			join carro
				on dono.iddono = carro.fkdono
			where carro.placacarro like 'E%';

-- Excluir as tabelas.
drop table dono;
drop table carro;
drop database carro;
