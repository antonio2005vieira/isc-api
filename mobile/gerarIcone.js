const fs = require("fs");
const { PNG } = require("pngjs");

const size = 1024;
const png = new PNG({ width: size, height: size });

for (let y = 0; y < size; y++) {
  for (let x = 0; x < size; x++) {
    const idx = (png.width * y + x) << 2;

    // Azul bonito
    png.data[idx] = 0;
    png.data[idx + 1] = 120;
    png.data[idx + 2] = 255;
    png.data[idx + 3] = 255;
  }
}

png.pack().pipe(fs.createWriteStream("assets/images/icon.png"));

console.log("Ícone criado 1024x1024");
