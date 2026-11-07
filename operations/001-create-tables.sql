-- liquibase formatted sql

-- changeset seu-nome:1
CREATE TABLE cliente (
    id INTEGER,
    nome VARCHAR(60),
    email VARCHAR(80)
);

-- changeset pepe:2
CREATE TABLE pedido (
    numero INTEGER,
    data_pedido DATE,
    status_pedido VARCHAR(40),
    id_cliente INTEGER
);

CREATE TABLE entrega (
    id INTEGER,
    data_envio DATE,
    cod_rastreamento INTEGER,
    status_entrega VARCHAR(40),
    n_pedido INTEGER
);