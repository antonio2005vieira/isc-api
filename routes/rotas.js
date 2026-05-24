const express = require('express');
const router = express.Router();
const fs = require('fs');
const path = require('path');

const rotasPath = path.join(__dirname, '../database/rotas.json');

function carregarRotas() {
    const data = fs.readFileSync(rotasPath);
    return JSON.parse(data);
}

function salvarRotas(rotas) {
    fs.writeFileSync(rotasPath, JSON.stringify(rotas, null, 2));
}

// LISTAR ROTAS
router.get('/', (req, res) => {
    const rotas = carregarRotas();
    res.json(rotas);
});

// CRIAR ROTA
router.post('/', (req, res) => {

    const rotas = carregarRotas();

    const novaRota = {
        id: Date.now(),
        localidade: req.body.localidade,
        setor: req.body.setor,
        rota: req.body.rota,
        leiturista: req.body.leiturista,
        status: 'LIBERADO',
        quantidade_imoveis: req.body.quantidade_imoveis || 0,
        data_liberacao: new Date(),
        data_finalizacao: null
    };

    rotas.push(novaRota);

    salvarRotas(rotas);

    res.json({
        mensagem: 'Rota criada com sucesso',
        rota: novaRota
    });
});

// FINALIZAR ROTA
router.put('/:id/finalizar', (req, res) => {

    const rotas = carregarRotas();

    const rota = rotas.find(r => r.id == req.params.id);

    if (!rota) {
        return res.status(404).json({
            erro: 'Rota não encontrada'
        });
    }

    rota.status = 'FINALIZADO';
    rota.data_finalizacao = new Date();

    salvarRotas(rotas);

    res.json({
        mensagem: 'Rota finalizada'
    });
});

module.exports = router;
