var should = require('should')
var user = require('../src/user.js')

describe('user', function() {

it('saves properly', function(done) {
  // ....
  user.save("user","password", function(err) {
    should.not.exist(err)
    done()
  })
})

it('doesn\'t save because missing parameter', function(done) {
  // ....
  user.save("user", function(err) {
    should.exist(err)
    done()
  })
})

it('gets properly', function(done) {
  // ....
  user.get("id099880", function(err) {
    should.not.exist(err)
    done()
  })
})

it('doesn\'t get because missing parameter', function(done) {
  //
  user.get(function(err) {
    should.exist(err)
    done()
 })
})
})
