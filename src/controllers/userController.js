import bcrypt from "bcrypt";
import User from "../../models/User.js";

export const cadastrarUsuario = async (req, res) => {
  try {
    const { nome, email, senha } = req.body;

    const usuarioExistente = await User.findOne({ where: { email } });
    if (usuarioExistente) return res.status(400).json({ erro: "E-mail já cadastrado" });

    const senhaCriptografada = await bcrypt.hash(senha, 10);

    const novoUsuario = await User.create({
      nome,
      email,
      senha: senhaCriptografada,
    });

    res.status(201).json({ mensagem: "Usuário cadastrado com sucesso!", usuario: novoUsuario });
  } catch (erro) {
    res.status(500).json({ erro: erro.message });
  }
};
