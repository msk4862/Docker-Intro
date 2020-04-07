// more-or-less the example code from the hapi-pino repo
const express = require("express");
const http = require('http')

const hostname = '0.0.0.0'
const port = process.env.PORT || 3000
const app = express()

app.use((req, res, next) => {
        res.statusCode=200
        res.setHeader('Content-Type', 'text/html')
        res.end(
            '<html><body>Hello there sunshine!!!</body></html>'
            )
    })

    //use default machine ip (http://192.168.99.100/) to access while using docker toolbox 
const server = http.createServer(app)
server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}`)
})