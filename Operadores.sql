--> Para retornar um dado específico, utilizamos o 'where' com o campo que queremos pesquisar 'nome', o 
--> operador ( = ), que pesquisa exatamente como o dado está cadastrado no banco, por exemplo 
--> (where nome = 'Giovanna'), se tentar pesquisar um dado que não está cadastrado, ou de algum modo diferente 
--> de como está cadastrado no banco, não irá retornar nada.


select nome from aluno where nome = 'Giovanna'


--> Para retornar um dado que seja diferente do digitado, utilizaremos o operador ( <> ou != ), que significa 
--> diferente, ou seja, se eu quiser pesquisar um dado, onde o nome do aluno, 
--> seja diferente de Giovanna, eu utilizo o operador ( <> ou != ).

--> Lembrando que o operador ( = ), você precisa digitar da mesma maneira que está cadastrada no banco, 
--> o operador ( <> ou != ), é a mesca coisa, tem que digitar do mesmo jeito que está cadastrado no banco.


select nome from aluno where nome <> 'Giovanna'


--> Outra maneira de pesquisar um dado específico, é utilizar o 'LIKE', usando o caractere ( _ ). Se eu quiser 
--> pesquisar um nome onde eu não sei a primeira letra do nome, eu coloco o caractere ( _ ) e o resto do nome, 
--> por exemplo, quero retornar um nome que o final seja 'iovanna', eu utilizo o caractere (' _iovanna '), 
--> dessa maneira irá retornar o nome 'Giovanna'. Do mesmo jeito que é possível fazer isso no meio do nome, 
--> por exemplo, ('Gio_anna'). Lembrando que esse caractere substitui somente uma única letra.


--> No começo do nome
select nome from aluno a where nome like '_iovanna'

--> No meio do nome
select nome from aluno a where nome like 'Gio_anna'


--> Eu também posso negar essa pesquisa, falando para trazer todos os dados que sejam diferentes dos digitados 
--> utilizando o 'NOT LIKE', assim irá me retornar todos os dados que são diferentes dos digitados.

--> No começo do nome
select nome from aluno a where nome not like '_iovanna'

--> No meio do nome
select nome from aluno a where nome not like 'Gio_anna'


--> Mais uma maneira de pesquisar de formas personalizadas é utilizando o caractere ( % ), que ao contrário do 
--> ( _ ), esse caractere  já substitui tudo que for necessãrio, por exemplo, se eu quiser pesquisar todos os 
--> nomes que começam com a letra 'G', eu utilizo o 'G%', assim irá me retornar todos no nomes que 
--> começam com a letra 'G', do mesmo jeito que eu posso pesquisar os nomes que terminam com a letra '%a'.

--> Com espaços entre os nomes, ('% %'), exemplo, o nome 'Guru do Himalaia', que possui espaços.
--> Sem espaços entre os nomes, ('%%'), irá retornar todos os nomes cadastrados.
--> Combinando dados, começa com 'G' e termina com 'o', ('G%%o').
--> Com alguma letra no meio, como o 'u', ('%u%').

--> Novamente, esses operadores são case sensitive, ou seja, letra maiúscula ou minúscula interferem na busca.

--> No começo do nome
select nome from aluno a where nome like 'G%';

--> No final do nome
select nome from aluno a where nome like '%a';


--> Se precisar pesquisar os campos onde os dados são 'NULL', ou seja, onde os dados dos campos não foram 
--> preenchidos, use o 'IS NULL', ou seja, 'é nulo', ou se quiser retornar os campos que estão 
--> preenchidos, use o 'IS NOT NULL', ou seja, 'não é nulo'.

--> Pesquisando onde o campo 'cpf' é 'NULL'
select * from aluno where cpf is null

--> Pesquisando onde o campo 'cpf' não é 'NULL'
select * from aluno where cpf is not null


--> Para pesquisar valores numéricos, por exemplo, quais alunos tem a idade igual a 18 anos.
select * from aluno where idade = 18


--> Para pesquisar valores numéricos, por exemplo, quais alunos tem a idade diferente de 18 anos, (<> ou !=).
select * from aluno where idade <> 18


--> Para pesquisar valores numéricos, por exemplo, quais alunos tem a idade maior ou menor de 18 anos.

--> Maior ( > )
select * from aluno where idade > 18

--> Menor ( < )
select * from aluno where idade < 18


--> Para pesquisar valores numéricos, por exemplo, quais alunos tem a idade maior ou igual de 18 anos.

--> Maior ou igual ( >= )
select * from aluno where idade >= 18

--> Para pesquisar valores numéricos, por exemplo, quais alunos tem a idade menor ou igual de 18 anos.

--> Menor ou igual ( <= )
select * from aluno where idade <= 18


--> Para pesquisar valores numéricos, por exemplo, quais alunos tem a idade entre dois valores.

--> Between, ou seja, entre 10 e 20
select * from aluno where idade between 10 and 20


--> Para tipos booleanos, ou seja, verdadeiro ou falso, utilizamos o operador ( = ), com o valor true ou false.
select * from aluno where ativo = true; --> Ativo é verdadeiro
select * from aluno where ativo = false; --> Ativo é falso

--> Para saber onde o 'ativo' não está cadastrado
select * from aluno where ativo is null


--> Também temos os operadores lógicos 'AND' e 'OR', utilizamos o 'AND' quando queremos que todas as condições 
--> sejam verdadeiras, por exemplo, onde o nome começa com a letra 'G' e o campo 'cpf' esteja cadastrado.

select * from aluno where nome like 'G%' and cpf is not null

--> E o operador lógicos 'OR', usamos quando queremos que uma das condições sejam verdadeiras, por exemplo, 
--> onde o nome começa com a letra 'G%' ou que o cpf esteja cadastrado.

select * from aluno where nome like 'G%' or cpf is not null