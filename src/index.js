import express from 'express';
import cors from 'cors'

const PORT = process.env.PORT || 3000
const app = express()
app.use(cors())
app.get('/test', (req,res) => {
    res.send('Docker API is pretty cool...')
})

app.listen(PORT, () => {
    console.log(`Listening on http://localhost:${PORT}...`)
})