// Import a module
var http = require('http')
var server = require('./src/app.js')

// Declare an http server
http.createServer(server.logic).listen(server.port,server.address)
