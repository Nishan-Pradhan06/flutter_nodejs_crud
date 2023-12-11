const express = require("express")
const app = express()
app.use(express.json())
app.use(express.urlencoded({ extended: true }))


port = 3000
app.listen(port, () => {
    console.log(`Sucessfully connected to port ${port}`)
})