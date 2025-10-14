import pool from "../db.js";

export async function getOnibus() {
  const result = await pool.query("SELECT * FROM onibus ORDER BY id");
  return result.rows;
}

export async function addOnibus(placa, linha, lotacao, latitude, longitude) {
  const result = await pool.query(
    "INSERT INTO onibus (placa, linha, lotacao, latitude, longitude) VALUES ($1, $2, $3, $4, $5) RETURNING *",
    [placa, linha, lotacao, latitude, longitude]
  );
  return result.rows[0];
}
