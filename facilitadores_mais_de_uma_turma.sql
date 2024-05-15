SELECT
f.matricula,
f.nome,
COUNT(tf.turma_id) AS total_turmas
FROM
Facilitador f
INNER JOIN
Turma_Facilitador tf ON f.matricula = tf.facilitador_matricula
GROUP BY
f.matricula, f.nome
HAVING
COUNT(tf.turma_id) > 1;
