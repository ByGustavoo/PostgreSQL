-- Seleciona todos os nomes distintos dos funcionários e ordena os resultados em ordem crescente pelo nome

SELECT DISTINCT nome 
FROM funcionarios 
ORDER BY nome;


-- Seleciona os nomes e sobrenomes dos funcionários e conta o número de ocorrências de cada combinação de nome e sobrenome (SELECT & COUNT), agrupa 
-- os resultados pelo nome e sobrenome do funcionário (GROUP BY) e ordena os resultados em ordem crescente pelo nome do funcionário (ORDER BY)

SELECT 
nome, sobrenome, 	
COUNT(*) 
FROM funcionarios 
GROUP BY nome, sobrenome 
ORDER BY nome;


-- Para filtrar usando funções de agrupamento usaremos o (HAVING) após o (GROUP BY), que é um comando de filtro assim como o (WHERE). A diferença da 
-- filtragem com (HAVING) é a possibilidade de utilizar as funções de agrupamento (COUNT, SUM, MIN, MAX, AVG), enquanto o (WHERE) filtra a partir dos campos.


-- Seleciona os nomes dos cursos que não têm nenhum aluno matriculado
-- Utiliza LEFT JOIN para combinar as tabelas 'curso' e 'aluno_curso' com base no curso_id
-- Utiliza LEFT JOIN para combinar as tabelas 'aluno' e 'aluno_curso' com base no aluno_id
-- Agrupa os resultados pelo nome do curso
-- Filtra apenas os cursos que não têm nenhum aluno matriculado

SELECT curso_aluno 
FROM curso 
LEFT JOIN aluno_curso ON aluno.curso_id = curso.id 
LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id 
GROUP BY curso_aluno 
HAVING COUNT(aluno.id) = 0;
