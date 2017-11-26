var should = require('should');
require('should-http');
var server = require('../lib/js/index.js');
var http = require('http');

describe('server response', function () {
  it('should return 200', function (done) {
    http.get('http://127.0.0.1:8888', function(res) {
      res.should.have.status(200);
      done();
    });
  });

  it('should return 404', function (done) {
    http.get('http://127.0.0.1:8888/missing-file.html', function(res) {
      res.should.have.status(404);
      done();
    });
  });
});
