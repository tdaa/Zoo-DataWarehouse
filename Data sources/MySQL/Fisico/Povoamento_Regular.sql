Use zoodb;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM refeicao;
DELETE FROM alimentodefornecedor;
DELETE FROM alimento;
DELETE FROM animal;
DELETE FROM espaco;
DELETE FROM fornecedor;
DELETE FROM funcionario;
DELETE FROM endereco;

SELECT * FROM refeicao;
SELECT * FROM alimentodefornecedor;
SELECT * FROM alimento;
SELECT * FROM animal;
SELECT * FROM espaco;
SELECT * FROM fornecedor;
SELECT * FROM funcionario;
SELECT * FROM endereco;


-- Inserção de novos atributos na tabela alimento
Use zoodb;
INSERT INTO alimento
	(idAlimento, Nome, Stock)
	VALUES 
		(10,'Marisco',33),
        (11,'Panados',34);
        
-- Update de novos atributos na tabela alimento
UPDATE alimento SET Nome = 'CarneXPTO' where idAlimento = 9;
UPDATE alimento SET Stock = 777 where idAlimento = 1;

-- Inserção de novos atributos na tabela fornecedor
INSERT INTO fornecedor
	(idFornecedor, Designacao, Endereco_idEndereco, Contacto, Email)
	VALUES 
        (5, 'Mini Preço', 10, 918728011, 'minizinho@gmail.com');

-- Update de novos atributos na tabela fornecedor
UPDATE fornecedor SET Designacao = 'Mercado Preto', Email = 'mercadopreto@gmail.com'
				  where idFornecedor = 3;

-- Inserção de novos atributos na tabela Refeição
INSERT INTO Refeicao
	(idRefeicao, Quantidade, Data, Funcionario_idFuncionario, Animal_idAnimal, Alimento_idAlimento)
	VALUES 
        (17, 99, '2018-11-30 19:17:12', 5, 8, 9);
        
-- Update de novos atributos na tabela Refeição
UPDATE refeicao SET Quantidade = 2222 where idRefeicao = 1;
       
-- Inserção de novos atributos na tabela AlimentoDeFornecedor
INSERT INTO alimentodefornecedor
	(idAlimentoDeFornecedor, Fornecedor_idFornecedor, Alimento_idAlimento, Quantidade, Data, Valor)
	VALUES 
        (14, 1, 1, 9000, '2018-12-10', 12000.00);
        
-- Update de novos atributos na tabela AlimentoDeFornecedor
-- UPDATE alimentodefornecedor SET Quantidade = 111 , Valor = 999.99 
-- 							where idAlimentoDeFornecedor = 4;