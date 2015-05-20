##
#  All config variables will be set here
##
APIServices     = require './services/api'

class Configurations
  @api =
    port: process.env.PORT or 3001
    mongodb: process.env.mongoURL or 'localhost/blog'
    middlewareOrder:
      [APIServices.Log, APIServices.Test, APIServices.Auth]

module.exports = Configurations
