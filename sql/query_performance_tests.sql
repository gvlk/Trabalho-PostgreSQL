-- Consulta 1: Seleciona salários da tabela FUNCIONARIO com condições múltiplas
SELECT Salario FROM FUNCIONARIO WHERE Salario > 200 AND Salario < 500;

-- Consulta 2: Seleciona Projlocal da tabela PROJETO com condições múltiplas em Projlocal
SELECT Projlocal FROM PROJETO WHERE Projlocal > 100 AND Projlocal < 150;

-- Consulta 3: Seleciona Projlocal e Cpf da tabela PROJETO e FUNCIONARIO com condições em Projlocal e Cpf
SELECT Projlocal, Cpf FROM PROJETO P, FUNCIONARIO F WHERE P.Dnum = F.Dnr AND Projlocal = 1 AND Cpf > 5000;

-- Consulta 4: Seleciona Cpf da tabela FUNCIONARIO com condições múltiplas em Cpf
SELECT Cpf FROM FUNCIONARIO WHERE Cpf > 8000 AND Cpf < 9000;

-- Consulta 5: Seleciona Cpf e Projlocal da tabela FUNCIONARIO e PROJETO com condições em Cpf e Projlocal
SELECT Cpf, Projlocal FROM FUNCIONARIO F, PROJETO P WHERE F.Dnr = P.Dnum AND Cpf = 6000 AND Projlocal > 50;

-- Consulta 6: Seleciona Projlocal e Cpf da tabela PROJETO e FUNCIONARIO com condições em Cpf e Projlocal
SELECT Projlocal, Cpf FROM PROJETO P, FUNCIONARIO F WHERE P.Dnum = F.Dnr AND Projlocal < 10 AND Cpf < 3000;

-- Consulta 7: Seleciona Salario da tabela FUNCIONARIO com condições múltiplas em Salario
SELECT Salario FROM FUNCIONARIO WHERE Salario > 100 AND Salario < 200;

-- Consulta 8: Seleciona Salario e Cpf da tabela FUNCIONARIO e PROJETO com condições em Salario e Cpf
SELECT Salario, Cpf FROM FUNCIONARIO F, PROJETO P WHERE F.Dnr = P.Dnum AND Salario = 500 AND Cpf > 7000;

-- Consulta 9: Seleciona Cpf e Salario da tabela FUNCIONARIO com condições em Cpf e Salario
SELECT Cpf, Salario FROM FUNCIONARIO WHERE Cpf = 4000 AND Salario > 30;

-- Consulta 10: Seleciona Salario e Cpf da tabela FUNCIONARIO e PROJETO com condições em Salario e Cpf
SELECT Salario, Cpf FROM FUNCIONARIO F, PROJETO P WHERE F.Dnr = P.Dnum AND Salario < 60 AND Cpf < 2000;
