# recepcionista-clima---db
mi primera app full - stack : python + PostgreSQL + api clima. hecha en 45 min el 23/06/2026 temperatura 
import express from 'express'
import cors from 'cors'

const app = express()
app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
  res.json({ 
    mensaje: 'API Recepcionista funcionando',
    ubicacion: 'Concepción, Bío Bío, Chile',
    temperatura: '9.1°C',
    hora: new Date().toLocaleString('es-CL')
  })
})

app.get('/api/visit', (req, res) => {
  res.json({ status: 'ok', visitas: 1 })
})
{
  "name": "recepcionista-api",
  "version": "1.0.0",
  "main": "src/index.ts",
  "scripts": {
    "dev": "tsx watch src/index.ts",
    "build": "tsc",
    "start": "node dist/index.js"
  },
  "dependencies": {
    "express": "^4.18.2",
    "cors": "^2.8.5",
    "dotenv": "^16.3.1",
    "pg": "^8.11.3",
    "drizzle-orm": "^0.29.0"
  },
  "devDependencies": {
    "@types/express": "^4.17.21",
    "@types/cors": "^2.8.17",
    "tsx": "^4.7.0",
    "typescript": "^5.3"
  }
}
app.get('/api/water', (req, res) => {
  res.json({ status: 'ok', agua: 'disponible' })
})

export default app
import app from './app'

const PORT = process.env.PORT || 3000

app.listen(PORT, () => {
  console.log(`Servidor corriendo en puerto ${PORT} - Concepción, Bío Bío`)
})