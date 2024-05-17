
CREATE VIEW Porcentagem_Evasao_Turma AS
SELECT
TE.turma_id,
COUNT(TE.estudante_matricula) AS total_estudantes,
SUM(CASE WHEN TE.status_evasao = 1 THEN 1 ELSE 0 END) AS evadidos,
CONCAT(FORMAT((SUM(CASE WHEN TE.status_evasao = 1 THEN 1 ELSE 0 END) / COUNT(TE.estudante_matricula)) * 100, 2), '%') AS percentual_evasao
FROM
Turma_Estudante TE
GROUP BY
TE.turma_id;

SELECT * FROM Porcentagem_Evasao_Turma;