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
