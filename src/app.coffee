user = require('./user.js')
module.exports =
  logic: (req, res) ->
    console.log req.url
    if req.url == '/save'
      user.save 'charlelie', 'password', ->
        # Write a responsive header
        res.writeHead 201, 'Content-Type': 'text/plain'
        # Write a responsive content
        res.end 'user charlelie is saved'
        return
    else if req.url == '/get'
      user.get '2984E87RKS', ->
        res.writeHead 200, 'Content-Type': 'text/plain'
        res.end 'got the user charlelie'
        return
    else if req.url == '/'
      console.log 'index page'
      res.writeHead 200, 'Content-Type': 'text/plain'
      res.end 'Welcome here ! Non stop fun !'
    else
      res.writeHead 404, 'Content-Type': 'text/plain'
      res.end 'Route not found'
    return
  port: '8888'
  address: '127.0.0.1'
