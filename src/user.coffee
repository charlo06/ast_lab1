module.exports =
  save: (user, password, callback) ->
    if callback == null
      new Error('missing parameters')
    else
      console.log 'function save called with user : ' + user
      callback()
    return
  get: (id, callback) ->
    if callback == null
      new Error('missing parameters')
    else
      console.log 'getting user with id : ' + id
      callback()
    return
