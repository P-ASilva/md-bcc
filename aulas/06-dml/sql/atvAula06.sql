use vendinha;

INSERT INTO regiao VALUES ("N", "Norte");
delete from regiao where regiao = "N";
INSERT INTO regiao (nome, descricao)
VALUES  ("NE", "Nordeste"),
        ("SE", "Sudeste"),
        ("S", "Sul"),
        ("CO", "Centro-Oeste");
UPDATE uf
set uf = upper(uf)
where regiao = "SE";

INSERT INTO vendedor_vende_cidade (id_vendedor, id_cidade)
VALUES (103, 20),
        (103, 21),
        (102, 20),
        (102, 24),
        (102, 25),
        (106, 23);
        
CREATE TABLE vendedor_ativo_cidade (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_vendedor INT NOT NULL,
    ativo TINYINT NOT NULL,
    data_registro DATE NOT NULL,
    
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);