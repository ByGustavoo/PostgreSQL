-- Criando a tabela 'aluno'.

create table aluno (
    id serial,                	-- Serial, tem auto incremento automático.
    nome varchar(255),        	-- Varchar, usamos quando temos um tamanho já predeterminado.
    cpf char(11),             	-- Char, usamos quando sabemos exatamento o tamanho que iremos utilizar.
    observacao text,          	-- Text, usamos quando não sabemos o tamanho do texto.
    idade int,                	-- Int, número inteiro.
    dinheiro numeric(10,2),   	-- Numeric, conseguimos definir quantas casas decimais queremos, '12345678,90'
    altura real,              	-- Real, quando precisamos usar casas decimais de até 6 dígitos com precisão.
    ativo boolean,           	-- Boolean, verdadeiro ou falso.
    data_nascimento date,     	-- Date, estabelece a data, sempre nessa ordem: 'YYYY-MM-DD' ou seja, '2005-05-19'.
    hora_aula time,           	-- Time, estabelece a hora, sempre nessa ordem: 'HH24:MI:SS', ou seja, '17:19:00'.
    matricula_data timestamp  	-- Timestamp, representa data e hora, '2005-05-19 17:19:00'.
);


-- Inserindo dados na tabela 'aluno'.

-- Passamos o nome da tabela, 'aluno', e os campos que queremos preencher.

insert into aluno(nome,
    cpf,
    observacao,
    idade,
    dinheiro,
    altura,
    ativo,
    data_nascimento,
    hora_aula,
    matricula_data
)

-- Passamos os valores dos campos, já com os valores preenchidos na ordem correta.
	
    values('Guru', 
    '99999999999',
    'Guru do Himalaia é fera',
    18,
    1000.00,
    1.78,
    true,
    '2005-05-19',
    '17:19:05',
    '2023-05-27 22:30:00' 
);


-- Consultando os dados da tabela 'aluno'.

-- Usamos o (*), quando queremos trazer todas as informações da tabela 'aluno'.

select * from aluno 

	
-- Para atualizar um dado, passamos o nome da tabela 'aluno', o campo que será atualizado, utilizando o 'set', o campo 'dinheiro', o valor '1000.90' 
-- e estabelecemos qual dado será atualizado por meio do 'where' e do 'id'.

update aluno set dinheiro = 1000.90 where id = 1
	
	
-- Para deletar um dado, passamos o nome da tabela 'aluno', e estabelecemos qual dado será deletado por meio do 'where' e do 'id', 
-- nesse caso irá deletar todas as informações do aluno de id = 1.

delete from aluno where id = 1


-- Ao invés de retornar todos os campos utilizando o (*), podemos passar o nome das colunas que queremos retornar no select, 
-- passando o nome de cada uma delas.
	
select nome, cpf, data_nascimento from aluno;
