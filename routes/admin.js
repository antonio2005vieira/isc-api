const express = require("express");
const fs = require("fs");
const path = require("path");

const router = express.Router();

const USERS_FILE = path.join(__dirname, "../database/usuarios.json");
const DEVICES_FILE = path.join(__dirname, "../database/devices.json");

// ================= HELPERS =================
const read = (file) => JSON.parse(fs.readFileSync(file));
const write = (file, data) =>
  fs.writeFileSync(file, JSON.stringify(data, null, 2));

// ================= USERS =================
router.get("/users", (req, res) => {
  res.json(read(USERS_FILE));
});

router.post("/users", (req, res) => {
  const users = read(USERS_FILE);
  users.push(req.body);
  write(USERS_FILE, users);

  res.json({ success: true });
});

// ================= DEVICES (IMEI) =================
router.get("/devices", (req, res) => {
  res.json(read(DEVICES_FILE));
});

router.post("/devices", (req, res) => {
  const devices = read(DEVICES_FILE);
  devices.push(req.body);
  write(DEVICES_FILE, devices);

  res.json({ success: true });
});

// ================= BLOCK DEVICE =================
router.post("/devices/block", (req, res) => {
  const { deviceId } = req.body;

  const devices = read(DEVICES_FILE);

  const updated = devices.map(d => {
    if (d.deviceId === deviceId) {
      d.active = false;
    }
    return d;
  });

  write(DEVICES_FILE, updated);

  res.json({ success: true });
});

module.exports = router;
