-- Pesquisa personalizada

-- Quando queremos retornar um SELECT com os nomes dos campos personalizados, utilizamos um alias 'as', que consiste em passar o nome do campo que 
-- queremos no SELECT 'nome' e em seguinda passamos o nome que queremos que ele retorne de maneira personalizada como por exemplo, 'as nomeAluno'.

-- Lembrando que o 'as' é opcional, se passar com ou sem o 'as', o script retornará um SELECT personalizado do mesmo jeito, 
-- exemplo: 'SELECT nome AS nomeAluno' ou 'SELECT nome nomeAluno'.

-- Exemplo usando o 'as'.

select
	nome as nomeAluno,
	cpf,
	data_nascimento
from
	aluno;


-- Exemplo sem usar o 'as'.

select
	nome nomeAluno,
	cpf,
	data_nascimento
from
	aluno;


-- Também é possível passar o 'as' com espaços entre as palavras, para isso acontecer só precisamos passar o nome personalizado que queremos 
-- entre aspas duplas "Nome do Aluno". Outro ponto importante, é que entre aspas duplas, a caixa alta também funciona.

select
	nome "Nome do Aluno",
	cpf,
	data_nascimento
from
	aluno;
