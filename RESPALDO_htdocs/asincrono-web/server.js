const WebSocket = require("ws");

const wss = new WebSocket.Server({ port: 3000 });

wss.on("connection", (ws) => {
    console.log("Nuevo cliente conectado");

    ws.on("message", (message) => {
        console.log("Mensaje recibido:", message.toString());

        // reenviar a todos los clientes conectados
        wss.clients.forEach(client => {
            if (client.readyState === WebSocket.OPEN) {
                client.send(message.toString());
            }
        });
    });

    ws.on("close", () => {
        console.log("Cliente desconectado");
    });
});

console.log("Servidor WebSocket corriendo en ws://localhost:3000");
