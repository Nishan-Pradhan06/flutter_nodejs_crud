const express = require("express")
const app = express()
app.use(express.json())
app.use(express.urlencoded({ extended: true }))

const personData = [];

// POST APT / CREATE
app.post("/api/add_person", (req, res) => {
    console.log("Result", req.body)
    const pdata = {
        "id": personData.length + 1,
        "pname": req.body.pname,
        "pphone": req.body.pphone,
        "pAge": req.body.pAge,
    }
    personData.push(pdata)
    console.log("Final Result", pdata)
    console.log(`Person added with id ${pdata.id}`)

    res.status(200).send(
        {
            "Status_code": 200,
            "Message": "Person Data is ADDED Sucessfully",
            "person": pdata
        }
    )
})


//GET API / READ
app.get("/api/get_person", (req, res) => {
    console.log("Result", req.body)
    if (personData.length > 0) {
        res.status(200).send({
            "status_code": 200,
            "person": personData,
        })
    } else {
        res.status(200).send({
            "status_code": 404,
            "person": [],
        })
    }
})


port = 3000
app.listen(port, () => {
    console.log(`Sucessfully connected to port ${port}`)
})