CREATE TABLE bordas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

CREATE TABLE massas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	tipo VARCHAR(100)
);

CREATE TABLE sabores(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);

CREATE TABLE pizzas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    massa_id INT NOT NULL,
    borda_id INT NOT NULL,
    FOREIGN KEY (massa_id) REFERENCES massas(id),
    FOREIGN KEY (borda_id) REFERENCES bordas(id)
);

CREATE TABLE pizza_sabor(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pizza_id INT NOT NULL,
    sabor_id INT NOT NULL,
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id),
    FOREIGN KEY (sabor_id) REFERENCES sabores(id)
);

CREATE TABLE status(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pizza_id INT NOT NULL,
    status_id INT NOT NULL,
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id),
    FOREIGN KEY (status_id) REFERENCES status(id)
);


SELECT * FROM massas;
INSERT INTO massas(tipo) VALUES ("Massa Comum");
INSERT INTO massas(tipo) VALUES ("Massa Integral");
INSERT INTO massas(tipo) VALUES ("Massa Temperada");

SELECT * FROM bordas;
INSERT INTO bordas(tipo) VALUES ("Cheddar");
INSERT INTO bordas(tipo) VALUES ("Catupiry");

SELECT * FROM sabores;
INSERT INTO sabores(nome) VALUES ("4 Queijos");
INSERT INTO sabores(nome) VALUES ("Frango com Catupiry");
INSERT INTO sabores(nome) VALUES ("Calabresa");
INSERT INTO sabores(nome) VALUES ("Lombinho");
INSERT INTO sabores(nome) VALUES ("Filé com Cheddar");
INSERT INTO sabores(nome) VALUES ("Portuguesa");
INSERT INTO sabores(nome) VALUES ("Margherita");

SELECT * FROM status;
INSERT INTO status(tipo) VALUES ("Em produção");
INSERT INTO status(tipo) VALUES ("Em Entrega");
INSERT INTO status(tipo) VALUES ("Concluído");
