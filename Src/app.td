import express from 'express';
import cors from 'cors';

const app = express();
app.use(cors());
app.use(express.json());

app.get('/', (req, res) => {
  res.json({ 
    mensaje: 'API Recepcionista funcionando', 
    ubicacion: 'Concepción, Bío Bío, Chile',
    temperatura: '9.1°C', 
    hora: new Date().toLocaleString('es-CL')
  });
});

app.get('/api/health', (req, res) => {
  res.json({ status: 'ok', visitas: 1 });
});

export default app;
