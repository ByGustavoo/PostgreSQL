Primary Key, não pode ser nula e tem que ser única.


create table curso (
    id serial primary key,
    curso varchar(255) not null
);



insert into curso(curso) values ('Java');
insert into curso(curso) values ('Angular');

select * from curso


create table aluno(
    id serial primary key,
    nome varchar(255)
);

insert into aluno(nome) values ('Gustavo');
insert into aluno(nome) values ('Giovanna');

select * from aluno a