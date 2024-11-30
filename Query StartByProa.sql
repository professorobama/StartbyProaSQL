#Criação de um banco de Dados
create database startbyproa;

#Seleciona o Banco de Dados
use startbyproa;

#Exclui o banco de Dados
drop database startbyproa;

#Criação de uma tabela
create table aluno(
idAluno int not null primary key auto_increment,
nomeAluno varchar(255) not null,
cpfAluno char(11) not null unique,
dataNascimentoAluno date not null,
turmaAluno int not null
);

#Selecionar todos os campos ou linhas ou tuplas da tabela.
select * from aluno;

#Inserir dados em nossa tabela
insert into aluno(nomeAluno,
cpfAluno, dataNascimentoAluno,
turmaAluno)values("Júlia","92345678911",'1987-12-25',4),("Tamiris","21187954321",'2010-09-30',7);

#Limpar todos os dados contidos em uma tabela.
truncate table aluno;

#Alteração de dados de uma tabela
update aluno set nomeAluno = "Claudia" where idAluno =10;
update aluno set turmaAluno=3, cpfAluno="99999999999" where idAluno = 11;

#Exclusão de uma linha, registro ou tupla da tabela
delete from aluno where idAluno =9;

#Atualização de uma linha da tabela
update aluno set idAluno=3 where idAluno = 10;
update aluno set idAluno=4 where idAluno = 11;
update aluno set idAluno=5 where idAluno = 12;

#Seleçao de pessoas que nasceram depois do ano 2000
select nomeAluno from aluno where dataNascimentoAluno> "2000-01-01";

#Seleçao de pessoas que nasceram antes do ano 2000
select nomeAluno from aluno where dataNascimentoAluno < "2000-01-01";