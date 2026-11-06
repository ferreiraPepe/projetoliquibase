-- liquibase formatted sql

-- changeset seu-nome:1
CREATE TABLE cliente (
    id INTEGER,
    nome VARCHAR(60),
    email, VARCHAR(80)
);