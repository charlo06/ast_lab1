# Import a module
http = require('http')
server = require('./app.coffee')
# Declare an http server
module.exports = http.createServer(server.logic).listen server.port, server.address
