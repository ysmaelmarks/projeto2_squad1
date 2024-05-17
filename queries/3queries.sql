SELECT
    c.nome AS nome_curso,
    t.data_inicio AS data_inicio_turma,
    f.nome AS nome_facilitador
FROM
    Turma AS t
INNER JOIN
    Curso AS c ON t.curso_codigo = c.codigo
INNER JOIN
    Turma_Facilitador AS tf ON t.id = tf.turma_id
INNER JOIN
    Facilitador AS f ON tf.facilitador_matricula = f.matricula;