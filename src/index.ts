import express, { Express } from "express";

const port = process.env.PORT || 3000
const app = express()


app.listen(port, () => {
    console.log(`server is running through port : ${port}`)
})

app.use('/', (req, res) => {
    res.send('Hello Ghaida, I hope you are doing well, Wish you the best man!!, awesome work dude')
})