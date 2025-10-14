import express from "express";
import { listar, adicionar } from "../controllers/onibusController.js";

const router = express.Router();

router.get("/onibus", listar);
router.post("/onibus", adicionar);

export default router;
