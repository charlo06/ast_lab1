# Import a module
http = require('http')
server = require('./app.coffee')
# Declare an http server
http.createServer(server.logic).listen server.port, server.address
