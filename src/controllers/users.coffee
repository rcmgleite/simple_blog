##
# Controller for all /users requests
##
User     = require '../models/user'

class usersController
  # in coffee, @ = this. and static properties can be created using @[prop name]
  @get = (req, res)->
    res.json
      message: '/users'

  @post = (req, res)->
    _user          = new User()
    _user.name     = req.body.name
    _user.cpf      = req.body.cpf
    _user.username = req.body.username
    _user.password = req.body.password

    _user.save (err)->
      if err?
        res.json
          err: err
        return
      res.json
        message: 'User created successfully!'

module.exports = usersController
