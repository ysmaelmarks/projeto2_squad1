DELIMITER $$
CREATE TRIGGER `log_status_evasao`
AFTER UPDATE ON `Turma_Estudante`
FOR EACH ROW
BEGIN
    IF OLD.status_evasao <> NEW.status_evasao THEN
        INSERT INTO `Log_Status_Evasao` (`estudante_matricula`, `data_modificacao`, `status_anterior`, `status_atual`)
        VALUES (NEW.estudante_matricula, NOW(), OLD.status_evasao, NEW.status_evasao);
    END IF;
END$$
DELIMITER ;
