import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import onibusRoutes from "./src/routes/onibusRoutes.js";

dotenv.config();
const app = express();

app.use(cors());
app.use(express.json());
app.use(onibusRoutes);

app.listen(process.env.PORT, () => {
  console.log("Servidor rodando na porta", process.env.PORT);
});
