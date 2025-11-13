CREATE TABLE onibus (
  id SERIAL PRIMARY KEY,
  placa VARCHAR(10) NOT NULL,
  linha VARCHAR(50),
  lotacao INT,
  latitude DECIMAL(10, 6),
  longitude DECIMAL(10, 6)
);

INSERT INTO onibus (placa, linha, lotacao, latitude, longitude)
VALUES 
('ABC1234', 'Centro - UFSC', 25, -27.5954, -48.5480),
('XYZ5678', 'Estreito - Terminal', 40, -27.6000, -48.5500);

CREATE TABLE usuarios (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  senha VARCHAR(255) NOT NULL, 
  data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuarios (nome, email, senha)
VALUES 
('Alice Silva', 'alice@email.com', 'hash_da_senha_alice'),
('Bruno Costa', 'bruno@email.com', 'hash_da_senha_bruno');

CREATE TABLE tickets_suporte (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  mensagem TEXT NOT NULL,
  status VARCHAR(50) DEFAULT 'Aberto',
  data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tickets_suporte (nome, email, mensagem)
VALUES 
('Carla Souza', 'carla@email.com', 'Meu aplicativo não está mostrando o mapa de rotas.'),
('Marcos Paiva', 'marcos@email.com', 'Esqueci minha senha e não consigo redefinir.');


CREATE TABLE rotas (
  id SERIAL PRIMARY KEY,
  nome_linha VARCHAR(100) NOT NULL,
  origem VARCHAR(255) NOT NULL,
  destino VARCHAR(255) NOT NULL
);

INSERT INTO rotas (nome_linha, origem, destino)
VALUES 
('Centro - UFSC', 'Terminal Central', 'Universidade Federal de SC'),
('Estreito - Terminal', 'Estreito', 'Terminal Central');