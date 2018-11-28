INSERT INTO Espaco
	(idEspaco, Tipo, Tamanho, Quantidade)
	VALUES 
		(1, 'Jaula', 'G', 9),
        (2, 'Aquario', 'P', 20),
        (3, 'Jaula', 'M', 4);

INSERT INTO Animal
	(idAnimal, Nome, Especie, Genero, Espaco_idEspaco)
	VALUES 
		(1, 'Joao', 'Panthera leo', 'M', 1),
        (2, 'Oscar', 'Orcinus orca', 'M', 2),
        (3, 'Leonardo', 'Panthera pardus', 'M', 1),
        (4, 'Napoleão', 'Balaenoptera physalus', 'M', 2),
        (5, 'Paula', 'Equus asinus', 'F', 1),
        (6, 'Kika', 'Macropus rufus', 'F', 3),
        (7, 'Laila', 'Pan troglodytes', 'F', 1),
        (8, 'Maria', 'Loxodonta africana', 'F', 1),
        (9, 'Eddy', 'Ailuropoda melanoleuca', 'M',  2),
        (10, 'Lara', 'Carcharodon carcharias', 'F', 2),
        (11, 'Laila', 'Apis mellifera', 'F', 1);


INSERT INTO alimento
	(idAlimento, Nome, Stock)
	VALUES 
		(1, 'Frango', 40),
        (2, 'Peixinhos', 230),
		(3, 'Frutos', 589),
        (4, 'Bamboo', 270),
		(5, 'Atum', 1000),
        (6, 'Alface', 2548);
        
INSERT INTO endereco
	(idEndereco, Rua, Concelho, CodigoPostal, Distrito)
	VALUES
		(1, 'Rua Poço Lote Nº21', 'Braga', '4015-215', 'Braga'),
        (2, 'Rua Loreto 92 Nº9 5ºE', 'Chaves', '4834-268', 'Chaves'),
        (3, 'Rua Heróis Ultramar Nº 3', 'Guimarães', '3515-235', 'Braga'),
        (4, 'Rua José Eusébio Nº25', 'Benfica', '8715-215', 'Lisboa'),
        (5, 'Rua Caminho Cruz Nº80', 'Ermesinde', '4445-535', 'Porto'),
        (6, 'Rua Luís Sardoeira Nº18', 'Vila Meâ', '4715-215', 'Porto'),
        (7, 'Bairro da Quinta dos Congregados Nº8', 'Braga', '4756-123', 'Braga'),
        (8, 'Av. Robert Smith Nº13', 'Braga', '4710-249', 'Braga'),
        (9, 'Rua Doutor Paulo Quintela Nº32', 'Coimbra', '2341-743', 'Coimbra'),
		(10, 'Vila Franca da Beira Nº3', 'Viseu', '5016-123', 'Viseu');
		
INSERT INTO Funcionario
	(idfuncionario, Nome, Salario, Endereco_idEndereco, Contacto)
	VALUES 
		(1, 'André Marques', 250, 3, 912314112),
        (2, 'Mariana Fonte', 2000, 6, 965784357),
        (3, 'Vitor Barros', 9500, 1, 931241234),
		(4, 'Daniel Castro', 700, 4, 919421238),
        (5, 'Pedro Costa', 1200, 2, 912347910),
        (6, 'Inês Ferreira', 9500, 5, 932170124);
        
INSERT INTO fornecedor
	(idFornecedor, Designacao, Endereco_idEndereco, Contacto, Email)
	VALUES 
		(1, 'Pingo Doce', 7, 937864365, 'pingodoce@gmail.com'),
        (2, 'Continente', 8, 914279282, 'continente@gmail.com'),
        (3, 'Mercado Branco', 9, 913284970, 'mercadobranco@gmail.com'),
        (4, 'Feira Nova', 10, 918728011, 'feiranova@gmail.com');

INSERT INTO Refeicao
	(idRefeicao, Quantidade, Data, Funcionario_idFuncionario, Animal_idAnimal, Alimento_idAlimento)
	VALUES 
		(1, 10, '2018-11-24 22:36:12', 1, 5, 2),
        (2, 26, '2018-11-26 17:13:41', 3, 5, 2),
        (3, 6, '2018-11-25 14:26:27', 1, 1, 3),
        (4, 13, '2018-11-24 12:36:12', 6, 2, 6),
        (5, 6, '2018-11-24 15:36:12', 2, 11, 4),
        (6, 39, '2018-11-24 20:36:12', 4, 4, 1),
        (7, 15, '2018-11-24 23:36:12', 2, 3, 2),
        (8, 21, '2018-11-26 13:36:12', 1, 2, 3),
        (9, 15, '2018-11-28 18:36:12', 4, 5, 1),
        (10, 4, '2018-11-26 14:36:12', 2, 6, 2),
        (11, 27, '2018-11-24 19::12', 5, 9, 4),
        (12, 45, '2018-11-25 23:14:12', 6, 7, 5),
        (13, 13, '2018-11-24 12:30:12', 2, 10, 6),
        (14, 8, '2018-11-28 11:29:12', 3, 4, 5),
        (15, 14, '2018-11-24 19:17:12', 5, 8, 4);
        
INSERT INTO alimentodefornecedor
	(idAlimentoDeFornecedor, Fornecedor_idFornecedor, Alimento_idAlimento, Quantidade, Data, Valor)
	VALUES 
		(1, 1, 1, 100, '2018-11-21', 899.99),
        (2, 2, 6, 200, '2018-11-19', 1200.00),
        (3, 3, 3, 50, '2018-11-22', 100.00),
        (4, 4, 2, 80, '2018-11-21', 160.00),
        (5, 2, 4, 45, '2018-11-22', 80.00),
        (6, 3, 5, 15, '2018-11-23', 59.00),
        (7, 1, 3, 10, '2018-11-21', 20.00),
        (8, 4, 5, 30, '2018-11-24', 45.00),
        (9, 2, 6, 10, '2018-11-22', 15.00),
        (10, 3, 2, 5, '2018-11-19', 40.00),
        (11, 4, 5, 100, '2018-11-17', 80.00),
        (12, 2, 6, 110, '2018-11-21', 70.00),
        (13, 1, 1, 90, '2018-11-20', 60.00);

        
        