-- liquibase formatted sql

-- changeset pepe:1
ALTER TABLE cliente
ADD CONSTRAINT pk_cliente
PRIMARY KEY (id);