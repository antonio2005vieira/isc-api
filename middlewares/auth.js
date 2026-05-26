const jwt = require("jsonwebtoken");

const SECRET = "ISC_SECRET_KEY";

module.exports = function(req, res, next) {

  const authHeader = req.headers.authorization;

  if (!authHeader) {
    return res.status(401).json({
      erro: "Token não informado"
    });
  }

  const token = authHeader.split(" ")[1];

  try {

    const decoded = jwt.verify(token, SECRET);

    req.usuario = decoded;

    next();

  } catch (err) {

    return res.status(401).json({
      erro: "Token inválido"
    });

  }

};
