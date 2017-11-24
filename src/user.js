module.exports = {
  save: function (user, callback){
    console.log("function save called with user : " + user);
    callback()
  },
  get: function (id, callback){
    console.log("getting user with id : " + id);
    callback()
  }
}
