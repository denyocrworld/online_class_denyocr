"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const http_1 = __importDefault(require("http"));
const ws_1 = __importDefault(require("ws"));
const app = (0, express_1.default)();
const server = http_1.default.createServer(app);
const wss = new ws_1.default.Server({ server });
// Middleware ExpressJS
app.use(express_1.default.static('public'));
// Handle koneksi WebSocket
wss.on('connection', (ws) => {
    console.log('Koneksi WebSocket terhubung');
    // Menghandle pesan yang diterima dari klien
    ws.on('message', (message) => {
        console.log(`Pesan diterima: ${message}`);
        // Mengirim pesan balasan ke klien
        ws.send(`Pesan yang Anda kirim: ${message}`);
    });
    // Menghandle ketika koneksi terputus
    ws.on('close', () => {
        console.log('Koneksi WebSocket terputus');
    });
});
// Server ExpressJS
const PORT = process.env.PORT || "3000";
server.listen(PORT, () => {
    console.log(`Server berjalan di port ${PORT}`);
});
