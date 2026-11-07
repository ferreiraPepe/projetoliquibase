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

-- changeset pepe:3
CREATE TABLE contem (
    n_pedido INTEGER,
    id_produto INTEGER,
    quantidade INTEGER,
    preco_unit_aplicado DECIMAL(10,2)
)

-- changeset pepe:4
CREATE TABLE produto (
    id INTEGER,
    descricao VARCHAR(100),
    preco_atual DECIMAL(10,2)
);

CREATE TABLE fornece (
    id_produto INTEGER,
    id_fornecedor INTEGER,
    custo DECIMAL(10,2)
);

CREATE TABLE fornecedor (
    id INTEGER,
    razao_social VARCHAR(40),
    cnpj VARCHAR(14)
);

CREATE TABLE pagamento (
    id INTEGER,
    data_pagamento DATE,
    valor DECIMAL(10,2),
    forma_pagamento VARCHAR(30),
    numero_parcela INTEGER,
    n_pedido INTEGER
);

-- changeset pepe:5
CREATE TABLE IF NOT EXISTS pagamento (
    id INTEGER,
    data_pagamento DATE,
    valor DECIMAL(10,2),
    forma_pagamento VARCHAR(30),
    numero_parcela INTEGER,
     n_pedido INTEGER
);

