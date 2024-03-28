select * from aluno a 

-- Inserindo dados na tabela 'aluno'

insert into aluno (nome) values ('Gustavo')
insert into aluno (nome) values ('Giovanna')
insert into aluno (nome) values ('Miguel')

select * from curso c 

-- Inserindo dados na tabela 'curso'

insert into curso (curso) values ('Java');
insert into curso (curso) values ('Angular');
insert into curso (curso) values ('Spring');

-- Criando a tabela 'aluno_curso' com chave estrangeira, ou seja, o campo 'id_aluno' está referenciando 
-- a tabela 'aluno' no campo 'id', e a outra chave estrangeira 'id_curso', está referenciando a 
-- tabela 'curso' no campo 'id'

create table aluno_curso(
	id_aluno int,
	id_curso int,
	primary key (id_aluno, id_curso),
	foreign key (id_aluno) references aluno (id),
	foreign key (id_curso) references curso (id)
);


-- Inserindo dados na tabela 'aluno_curso'

insert into aluno_curso (id_aluno, id_curso) values (1, 1);
insert into aluno_curso (id_aluno, id_curso) values (2, 1);
insert into aluno_curso (id_aluno, id_curso) values (1, 2);
insert into aluno_curso (id_aluno, id_curso) values (2, 2);

-- Fazendo uma consulta na tabela 'aluno_curso'

select * from aluno_curso

-- JOIN, ou seja, estou trazendo os registros que possuem 
-- valores correspondentes em ambas as tabelas

select *
from aluno a
join aluno_curso c on c.id_aluno = a.id
join curso c2 on c2.id = c.id_curso


-- LEFT JOIN, ou seja, está retornando todos os registros da tabela esquerda com os 
-- registros correspondentes da tabela direita

select a.nome "Nome do Aluno", c2.curso "Nome do Curso"
from
	aluno a
left join aluno_curso c on c.id_aluno = a.id
left join curso c2 on c2.id = c.id_curso

-- RIGHT JOIN, ou seja, está retornando todos os registros da tabela direita com os 
-- registros correspondentes da tabela esquerda

select a.nome "Nome do Aluno", c2.curso "Nome do Curso"
from
	aluno a
right join aluno_curso c on c.id_aluno = a.id
right join curso c2 on c2.id = c.id_curso


-- FULL JOIN, ou seja, está retornando todos os registros quando há uma correspondência 
-- na tabela da esquerda ou da direita

select a.nome "Nome do Aluno", c2.curso "Nome do Curso"
from
	aluno a
full join aluno_curso c on c.id_aluno = a.id
full join curso c2 on c2.id = c.id_curso

-- CROSS JOIN, ou seja, isso corresponde a todos os registros da tabela da esquerda com 
-- cada registro da tabela direita, isso significa que todos os registros da tabela direita serão 
-- retornados para cada registro da tabela esquerda.


select a.nome "Nome do Aluno", curso.curso "Nome do Curso"
from
	aluno a
cross join curso



-- Para deletar um dado que possui chave estrangeira, temos que excluir todos os campos de todas as tabelas 
-- que esse dado está vinculado, por exemplo, no caso aqui, a tabela 'aluno', está vinculado a 
-- tabela 'aluno_curso', ou seja, para excluir um dado da tabela 'aluno', temos que excluir primeiro os 
-- dados da tabela 'aluno_curso'.

-- Para poupar todo esse trabalho, podemos usar o CASCADE quando criamos a tabela, assim quando deletar 
-- um dado que está vinculado a outra tabela, esse dado será automaticamente deletado de todas as tabelas 
-- que esse dado está vinculado.

drop table aluno_curso;

delete from aluno_curso where id_aluno = 1;

select * from aluno_curso;

create table aluno_curso(
	id_aluno int,
	id_curso int,
	primary key (id_aluno, id_curso),
	foreign key (id_aluno) references aluno (id) on delete cascade,
	foreign key (id_curso) references curso (id)
);

-- Isso também se aplica quando queremos atualizar uma tabela que possui um dado que está vinculado a 
-- outras tabelas, ou seja, chave estrangeira, para resolver esse problema temos que fazer a mesma coisa 
-- que fizemos com o DELETE.

create table aluno_curso(
	id_aluno int,
	id_curso int,
	primary key (id_aluno, id_curso),
	foreign key (id_aluno) references aluno (id) on update cascade,
	foreign key (id_curso) references curso (id)
);