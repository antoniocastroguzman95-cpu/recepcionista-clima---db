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

app.get('/api/water', (req, res) => {
  res.json({ status: 'ok', agua: 'disponible' })
})

export default app