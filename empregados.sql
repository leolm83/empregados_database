create table empregados (
id_empregado INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(120) NOT NULL,
idade integer(3) NOT NULL,
cargo VARCHAR(120) NOT NULL,
salario DECIMAL(10,2) NOT NULL,
admissao date NOT NULL,
PRIMARY KEY(id_empregado)
);
drop table empregados;


INSERT INTO empregados(nome,idade,cargo,salario,admissao)
VALUES ("Leonardo",22,"Estagiario",1200.00,'2021-09-13');

INSERT INTO empregados(nome,idade,cargo,salario,admissao)
VALUES ("Clara",48,"Gerente de TI",32000.00,'2008-03-13');


select * from empregados;


UPDATE empregados
SET    salario = CASE
         WHEN salario < 5000 THEN salario+salario*0.1
         ELSE salario-salario*0.05
       END
WHERE  salario IS NOT NULL;


delete from empregados where idade>=35;


SELECT *
FROM empregados
ORDER BY admissao ASC;