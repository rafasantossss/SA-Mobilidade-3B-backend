import { getOnibus, addOnibus } from "../models/onibusModel.js";

export async function listar(req, res) {
  const dados = await getOnibus();
  res.json(dados);
}

export async function adicionar(req, res) {
  const { placa, linha, lotacao, latitude, longitude } = req.body;
  const novo = await addOnibus(placa, linha, lotacao, latitude, longitude);
  res.json(novo);
}
