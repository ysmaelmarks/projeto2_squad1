SELECT
    Curso.nome AS nome_curso,
    Turma.id AS turma_id,
    Turma.data_inicio,
    Turma.data_termino,
    COUNT(Turma_Estudante.estudante_matricula) AS total_estudantes,
    SUM(Turma_Estudante.status_evasao) AS total_evasoes,
    ROUND((SUM(Turma_Estudante.status_evasao) / COUNT(Turma_Estudante.estudante_matricula)) * 100, 2) AS taxa_evasao,
    GROUP_CONCAT(DISTINCT Facilitador.nome ORDER BY Facilitador.nome SEPARATOR ', ')
    AS facilitadores
FROM
    Curso
    JOIN Turma ON Curso.codigo = Turma.curso_codigo
    JOIN Turma_Estudante ON Turma.id = Turma_Estudante.turma_id
    JOIN Estudante ON Turma_Estudante.estudante_matricula = Estudante.matricula
    JOIN Turma_Facilitador ON Turma.id = Turma_Facilitador.turma_id
    JOIN Facilitador ON Turma_Facilitador.facilitador_matricula = Facilitador.matricula
GROUP BY
    Curso.nome, Turma.id, Turma.data_inicio, Turma.data_termino
ORDER BY
    taxa_evasao DESC, Curso.nome, Turma.id;