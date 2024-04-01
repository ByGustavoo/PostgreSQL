-- Criação da tabela 'funcionarios'.

CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,       -- Coluna de ID, que é um número de série único para cada funcionário
    matricula VARCHAR(10),       -- Coluna de matrícula, que é um código de identificação único para cada funcionário, com até 10 caracteres
    nome VARCHAR(255),           -- Coluna de nome, que armazena o nome do funcionário, com até 255 caracteres
    sobrenome VARCHAR(255)       -- Coluna de sobrenome, que armazena o sobrenome do funcionário, com até 255 caracteres
);


-- Inserção de registros na tabela "funcionarios"

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');    -- Insere um funcionário com matrícula 'M001', nome 'Diogo' e sobrenome 'Mascarenhas'
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');        -- Insere um funcionário com matrícula 'M002', nome 'Vinícius' e sobrenome 'Dias'
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');         -- Insere um funcionário com matrícula 'M003', nome 'Nico' e sobrenome 'Steppat'
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');         -- Insere um funcionário com matrícula 'M004', nome 'João' e sobrenome 'Roberto'
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');    -- Insere um funcionário com matrícula 'M005', nome 'Diogo' e sobrenome 'Mascarenhas'
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');      -- Insere um funcionário com matrícula 'M006', nome 'Alberto' e sobrenome 'Martins'


-- Seleciona todos os registros da tabela 'funcionarios' e os ordena em ordem crescente pelo nome do funcionário

SELECT * 
FROM funcionarios
ORDER BY nome;


-- Seleciona todos os registros da tabela 'funcionarios' e os ordena em ordem decrescente pelo nome do funcionário

SELECT * 
FROM funcionarios
ORDER BY nome desc;


-- Seleciona todos os registros da tabela 'funcionarios', ordena os resultados em ordem crescente pelo ID do funcionário (ORDER BY), limita o número 
-- de resultados retornados para 5 (LIMIT), e desloca o ponto de partida do resultado para o segundo registro, uma paginação, (OFFSET), fazendo 
-- que o primeiro registro não apareça na consulta.


SELECT * 
FROM funcionarios
ORDER BY id
LIMIT 5
OFFSET 1;
