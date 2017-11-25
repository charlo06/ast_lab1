module.exports = {
  save: function (user,password, callback){
    if(callback==null){
      password(new Error('missing parameters'))
    }else{
      console.log("function save called with user : " + user);
      callback()
    }
  },
  get: function (id, callback){
    if(callback==null){
      id(new Error('missing parameters'))
    }else{
    console.log("getting user with id : " + id);
      callback()
    }
  }
}
