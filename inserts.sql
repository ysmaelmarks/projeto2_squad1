INSERT INTO `Modulo` (`codigo`, `nome`, `carga_hor`)
VALUES
(1, 'Introdução à Programação', 40),
(2, 'Banco de Dados', 30),
(3, 'Desenvolvimento Web', 50),
(4, 'Machine Learning', 60),
(5, 'Redes de Computadores', 45);

INSERT INTO `Curso` (`codigo`, `nome`, `carga_hor`)
VALUES
(1, 'Ciência da Computação', 240),
(2, 'Engenharia de Software', 220),
(3, 'Sistemas de Informação', 200),
(4, 'Inteligência Artificial', 180),
(5, 'Segurança da Informação', 210);

INSERT INTO `Facilitador` (`matricula`, `nome`, `telefone`, `email`, `endereco`, `data_nasc`)
VALUES
(1001, 'João Silva', '123-456-789', 'joao.silva@example.com', 'Rua A, 123', '1980-05-15'),
(1002, 'Maria Santos', '987-654-321', 'maria.santos@example.com', 'Rua B, 456', '1975-10-20'),
(1003, 'Carlos Oliveira', '111-222-333', 'carlos.oliveira@example.com', 'Rua C, 789', '1990-03-25');

INSERT INTO `Turma` (`data_inicio`, `data_termino`, `facilitador_matricula`, `curso_codigo`)
VALUES
('2024-06-01', '2024-08-30', 1001, 1),
('2024-07-15', '2024-09-20', 1002, 2),
('2024-08-10', '2024-10-25', 1003, 3);

INSERT INTO `Turma_Facilitador` (`turma_id`, `facilitador_matricula`)
VALUES
(1, 1001),
(1, 1002),
(1, 1003),
(2, 1002),
(2, 1003);

INSERT INTO `Estudante` (`matricula`, `nome`, `telefone`, `email`, `endereco`, `data_nasc`)
VALUES
(2001, 'Ana Souza', '999-888-777', 'ana.souza@example.com', 'Av. X, 567', '2000-01-10'),
(2002, 'Pedro Santos', '555-444-333', 'pedro.santos@example.com', 'Av. Y, 890', '1998-07-20'),
(2003, 'Mariana Lima', '222-333-444', 'mariana.lima@example.com', 'Av. Z, 123', '1999-11-05'),
(2004, 'Lucas Oliveira', '777-666-555', 'lucas.oliveira@example.com', 'Rua W, 789', '2001-03-15'),
(2005, 'Gabriela Silva', '333-222-111', 'gabriela.silva@example.com', 'Rua V, 456', '2002-08-25'),
(2006, 'Rafael Santos', '888-777-666', 'rafael.santos@example.com', 'Av. U, 234', '1997-05-30'),
(2007, 'Juliana Lima', '444-555-666', 'juliana.lima@example.com', 'Av. T, 789', '2000-12-10'),
(2008, 'Fernando Oliveira', '999-888-777', 'fernando.oliveira@example.com', 'Rua S, 123', '1999-02-20'),
(2009, 'Amanda Silva', '555-444-333', 'amanda.silva@example.com', 'Rua R, 456', '2001-06-05'),
(2010, 'Diego Santos', '222-333-444', 'diego.santos@example.com', 'Rua Q, 789', '1998-09-15'),
(2011, 'Carolina Lima', '777-666-555', 'carolina.lima@example.com', 'Av. P, 234', '2002-11-30'),
(2012, 'Rodrigo Oliveira', '333-222-111', 'rodrigo.oliveira@example.com', 'Av. O, 567', '1996-04-25'),
(2013, 'Isabela Silva', '888-777-666', 'isabela.silva@example.com', 'Rua N, 890', '2000-07-10'),
(2014, 'Bruno Santos', '444-555-666', 'bruno.santos@example.com', 'Av. M, 123', '1999-10-05'),
(2015, 'Camila Lima', '999-888-777', 'camila.lima@example.com', 'Rua L, 456', '2001-01-20'),
(2016, 'Thiago Oliveira', '555-444-333', 'thiago.oliveira@example.com', 'Av. K, 789', '1997-08-15'),
(2017, 'Vanessa Silva', '222-333-444', 'vanessa.silva@example.com', 'Av. J, 234', '2002-12-30'),
(2018, 'Eduardo Santos', '777-666-555', 'eduardo.santos@example.com', 'Rua I, 567', '2000-05-25'),
(2019, 'Alice Lima', '333-222-111', 'alice.lima@example.com', 'Rua H, 890', '1998-09-10'),
(2020, 'Vinicius Oliveira', '888-777-666', 'vinicius.oliveira@example.com', 'Av. G, 123', '2001-02-15'),
(2021, 'Natália Silva', '444-555-666', 'natalia.silva@example.com', 'Av. F, 456', '1997-07-20'),
(2022, 'Marcelo Santos', '999-888-777', 'marcelo.santos@example.com', 'Rua E, 789', '1999-11-05'),
(2023, 'Laura Lima', '555-444-333', 'laura.lima@example.com', 'Av. D, 123', '2002-04-30'),
(2024, 'Luiz Oliveira', '222-333-444', 'luiz.oliveira@example.com', 'Rua C, 456', '1998-10-15'),
(2025, 'Caroline Silva', '777-666-555', 'caroline.silva@example.com', 'Av. B, 789', '2001-01-20'),
(2026, 'Gustavo Santos', '333-222-111', 'gustavo.santos@example.com', 'Av. A, 234', '1997-06-10'),
(2027, 'Patrícia Lima', '888-777-666', 'patricia.lima@example.com', 'Rua XYZ, 890', '2000-03-25'),
(2028, 'Roberto Oliveira', '444-555-666', 'roberto.oliveira@example.com', 'Av. W, 123', '1999-08-10'),
(2029, 'Tatiane Silva', '999-888-777', 'tatiane.silva@example.com', 'Rua VV, 456', '2001-12-15'),
(2030, 'Leandro Santos', '555-444-333', 'leandro.santos@example.com', 'Av. UU, 789', '1997-05-20'),
(2031, 'Renata Lima', '222-333-444', 'renata.lima@example.com', 'Av. TT, 123', '2002-09-05'),
(2032, 'Ricardo Oliveira', '777-666-555', 'ricardo.oliveira@example.com', 'Rua SS, 456', '2000-02-10'),
(2033, 'Priscila Silva', '333-222-111', 'priscila.silva@example.com', 'Av. RR, 789', '1998-07-25'),
(2034, 'Matheus Santos', '888-777-666', 'matheus.santos@example.com', 'Rua QQ, 123', '2001-10-30'),
(2035, 'Fernanda Lima', '444-555-666', 'fernanda.lima@example.com', 'Av. PP, 456', '1999-05-15');

INSERT INTO `Turma_Estudante` (`turma_id`, `estudante_matricula`, `status_evasao`)
VALUES
(1, 2001, 0), (1, 2002, 1), (1, 2003, 0), (1, 2004, 0), (1, 2005, 1), 
(2, 2006, 0), (2, 2007, 1), (2, 2008, 0), (2, 2009, 0), (2, 2010, 1), 
(3, 2011, 0), (3, 2012, 1), (3, 2013, 0), (3, 2014, 0), (3, 2015, 1), 
(1, 2016, 0), (1, 2017, 1), (1, 2018, 0), (1, 2019, 0), (1, 2020, 1),
(2, 2021, 0), (2, 2022, 1), (2, 2023, 0), (2, 2024, 0), (2, 2025, 1),
(3, 2026, 0), (3, 2027, 1), (3, 2028, 0), (3, 2029, 0), (3, 2030, 1),
(1, 2031, 0), (1, 2032, 1), (1, 2033, 0), (1, 2034, 0), (1, 2035, 1);
