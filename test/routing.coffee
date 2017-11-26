should = require('should')
require 'should-http'
server = require('../src/coffee/index.coffee')
http = require('http')
describe 'server response', ->
  after ->
    server.close();
  it 'should return 200', (done) ->
    http.get 'http://127.0.0.1:8888', (res) ->
      res.should.have.status 200
      done()
      return
    return
  it 'should return 404', (done) ->
    http.get 'http://127.0.0.1:8888/missing-file.html', (res) ->
      res.should.have.status 404
      done()
      return
    return
  return
