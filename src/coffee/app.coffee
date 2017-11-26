fs = require('fs')
module.exports =
  logic: (req, res) ->
    console.log req.url
    if req.url == '/'
      fs.readFile './lib/html/index.html', (err, data) ->
        res.writeHead 200, 'Content-Type': 'text/html'
        res.write data
        res.end()
        return
    else if req.url == '/about'
      fs.readFile './lib/html/about.html', (err, data) ->
        res.writeHead 200, 'Content-Type': 'text/html'
        res.write data
        res.end()
        return
    else if req.url == '/css/style.css'
      res.writeHead 200, 'Content-type': 'text/css'
      fileContents = fs.readFileSync('./lib/css/style.css', encoding: 'utf8')
      res.write fileContents
      res.end()
    else if req.url == '/img/top.jpg'
      img = fs.readFileSync('./img/top.jpg')
      res.writeHead 200, 'Content-Type': 'image/jpg'
      res.end img, 'binary'
    else if req.url == '/img/abed.jpg'
      img2 = fs.readFileSync('./img/abed.jpg')
      res.writeHead 200, 'Content-Type': 'image/jpg'
      res.end img2, 'binary'
    else if req.url == '/img/annie.jpg'
      img3 = fs.readFileSync('./img/annie.jpg')
      res.writeHead 200, 'Content-Type': 'image/jpg'
      res.end img3, 'binary'
    else if req.url == '/img/britta.jpg'
      img4 = fs.readFileSync('./img/britta.jpg')
      res.writeHead 200, 'Content-Type': 'image/jpg'
      res.end img4, 'binary'
    else if req.url == '/img/jeff.jpg'
      img5 = fs.readFileSync('./img/jeff.jpg')
      res.writeHead 200, 'Content-Type': 'image/jpg'
      res.end img5, 'binary'
    else if req.url == '/img/pierce.jpg'
      img6 = fs.readFileSync('./img/pierce.jpg')
      res.writeHead 200, 'Content-Type': 'image/jpg'
      res.end img6, 'binary'
    else if req.url == '/img/shirley.jpg'
      img7 = fs.readFileSync('./img/shirley.jpg')
      res.writeHead 200, 'Content-Type': 'image/jpg'
      res.end img7, 'binary'
    else if req.url == '/img/troy.jpg'
      img8 = fs.readFileSync('./img/troy.jpg')
      res.writeHead 200, 'Content-Type': 'image/jpg'
      res.end img8, 'binary'
    else
      res.writeHead 404, 'Content-Type': 'text/plain'
      res.end 'Route not found'
    return
  port: '8888'
  address: '127.0.0.1'
