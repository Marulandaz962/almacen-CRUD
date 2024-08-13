import express from 'express'
import cors from 'cors'

import blogRoutes from './routes/routes.js'
import db from './database/db.js'

const app = express()

app.use(cors())
app.use(express.json())
app.use('/blogs', blogRoutes)

try {
    await db.authenticate()
    console.log('Conesion esitosa con db :)');
    
} catch (err) {
    console.log(`DB conntection error :c ${err}`);
    
}

// app.get('/', (req, res) => {
//     res.send('Holi')
// })

app.listen(8000, () => {
    console.log('Server runnign in http://localhost:8000');
})