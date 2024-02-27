
create database db_sistema_bancario;

\c db_sistema_bancario

You are now connected to database "db_sistema_bancario" as user "postgres".
db_sistema_bancario=# create table c1(nome_c1 text, cidade_c1 text, endereco_c1 text);
CREATE TABLE
db_sistema_bancario=# create table c2(nome_c2 text, cidade_c2 text, endereco_c2 text);
CREATE TABLE
db_sistema_bancario=# create table c3(nome_c3 text, cidade_c3 text, endereco_c3 text);
CREATE TABLE
db_sistema_bancario=# create table c4(nome_c4 text, cidade_c4 text, endereco_c4 text);
CREATE TABLE
db_sistema_bancario=# create table c5(nome_c5 text, cidade_c5 text, endereco_c5 text);
CREATE TABLE
db_sistema_bancario=# \dt
        List of relations
 Schema | Name | Type  |  Owner
--------+------+-------+----------
 public | c1   | table | postgres
 public | c2   | table | postgres
 public | c3   | table | postgres
 public | c4   | table | postgres
 public | c5   | table | postgres
(5 rows)


db_sistema_bancario=# create table cliente(nome_cliente text, cidade_cliente text , endereco_cliente text);
CREATE TABLE
db_sistema_bancario=# create table conta(numero_conta text, nome_agencia text, saldo text);
CREATE TABLE
db_sistema_bancario=# create table emprestimo(numero_emprestimo text, nome_agencia text, valor text);
CREATE TABLE
db_sistema_bancario=# create table agencia(nome_agencia text, cidade_agencia text, depositos text);
CREATE TABLE
db_sistema_bancario=# \dt
           List of relations
 Schema |    Name    | Type  |  Owner
--------+------------+-------+----------
 public | agencia    | table | postgres
 public | c1         | table | postgres
 public | c2         | table | postgres
 public | c3         | table | postgres
 public | c4         | table | postgres
 public | c5         | table | postgres
 public | cliente    | table | postgres
 public | conta      | table | postgres
 public | emprestimo | table | postgres
(9 rows)

db_sistema_bancario=# drop table c1;
DROP TABLE
db_sistema_bancario=# drop table c2;
DROP TABLE
db_sistema_bancario=# drop table c3;
DROP TABLE
db_sistema_bancario=# drop table c4;
DROP TABLE
db_sistema_bancario=# drop table c5;
DROP TABLE
db_sistema_bancario=# \dt
           List of relations
 Schema |    Name    | Type  |  Owner
--------+------------+-------+----------
 public | agencia    | table | postgres
 public | cliente    | table | postgres
 public | conta      | table | postgres
 public | emprestimo | table | postgres
(4 rows)

db_sistema_bancario=# alter table cliente rename to tbl_cliente;
ALTER TABLE
db_sistema_bancario=# alter table conta rename to tbl_conta;
ALTER TABLE
db_sistema_bancario=# alter table emprestimo rename to tbl_emprestimo;
ALTER TABLE
db_sistema_bancario=# alter table agencia rename to tbl_agencia;
ALTER TABLE
db_sistema_bancario=# \dt
              List of relations
 Schema |      Name      | Type  |  Owner
--------+----------------+-------+----------
 public | tbl_agencia    | table | postgres
 public | tbl_cliente    | table | postgres
 public | tbl_conta      | table | postgres
 public | tbl_emprestimo | table | postgres
(4 rows)

db_sistema_bancario=# alter table tbl_cliente add column idade text;
ALTER TABLE
db_sistema_bancario=# alter table tbl_cliente add column cpf text;
ALTER TABLE
db_sistema_bancario=# \dt
             List of relations
 Schema |      Name      | Type  |  Owner
--------+----------------+-------+----------
 public | tbl_agencia    | table | postgres
 public | tbl_cliente    | table | postgres
 public | tbl_conta      | table | postgres
 public | tbl_emprestimo | table | postgres
(4 rows)

db_sistema_bancario=# create schema edlaine;
CREATE SCHEMA
db_sistema_bancario=# \dt


