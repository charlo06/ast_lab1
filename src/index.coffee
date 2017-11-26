# Import a module
http = require('http')
server = require('./app.js')
# Declare an http server
http.createServer(server.logic).listen server.port, server.address
