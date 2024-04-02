-- Criação da tabela 'funcionarios'

CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,       -- Coluna de ID, que é um número de série único para cada funcionário
    matricula VARCHAR(10),       -- Coluna de matrícula, que é um código de identificação único para cada funcionário, com até 10 caracteres
    nome VARCHAR(255),           -- Coluna de nome, que armazena o primeiro nome do funcionário, com até 255 caracteres
    sobrenome VARCHAR(255)       -- Coluna de sobrenome, que armazena o sobrenome do funcionário, com até 255 caracteres
);


-- Inserção de registros na tabela 'funcionarios'

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');    -- Insere um funcionário 
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');        -- Insere um funcionário 
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');         -- Insere um funcionário 
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');         -- Insere um funcionário 
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');    -- Insere um funcionário 
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');      -- Insere um funcionário


-- COUNT    -  Retorna a quantidade de registros
-- SUM 	    -  Retorna a soma dos registros
-- MAX 	    -  Retorna o maior valor dos registros
-- MIN 	    -  Retorna o menor valor dos registros
-- AVG 	    -  Retorna a média dos registros


-- Retorna o número total de registros na tabela 'funcionarios', (COUNT), retorna a soma de todos os valores do ID da tabela 'funcionarios', (SUM), 
-- retorna o valor máximo do ID na tabela 'funcionarios', (MAX), retorna o valor mínimo do ID na tabela 'funcionarios', (MIN), retorna a média 
-- arredondada com duas casas decimais (ROUND), do ID na tabela 'funcionarios', dividindo o 'SUM' com o 'COUNT'.

SELECT COUNT(id) AS total_registros,
       SUM(id) AS soma_ids,
       MAX(id) AS max_id,
       MIN(id) AS min_id,
       ROUND(AVG(id), 2) AS media_id_arredondada
  FROM funcionarios;
