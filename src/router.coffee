##
#  File that will contain all api routes
##
express         = require 'express'
router          = express.Router()
indexController = require './controllers/index'
usersController = require './controllers/users'
middleware      = require './services/middleware'

##
# Middlewares. Middlewares orders are defined on config.
# To add a new middleare function, just add it to the config file
##
middleware.apply router

##
# index routes
##
router.route('/')
  .get(indexController.get)

##
# Users routes
##
router.route('/users')
  .get(usersController.get)
  .post(usersController.post)

# router.route('/users').post usersController.post


module.exports = router
