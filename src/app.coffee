##
# Entry point of the application.
# All setup will be done here
##

express = require 'express'
path = require 'path'
cookieParser = require 'cookie-parser'
bodyParser = require 'body-parser'
http = require 'http'
config = require './config'
router = require './router'
mongoose = require 'mongoose'
app = express();

app.use bodyParser.json()
app.use bodyParser.urlencoded { extended: false }
app.use cookieParser()

##
# Define the router for the entire application
##
app.use '/api', router
##
# Get port from environment and store in Express.
##
port = config.api.port
app.set 'port', port

##
# Db setup
##
mongoose.connect config.api.mongodb

##
# Create HTTP server. for now would be the same as app.listen() but int future
# https will be used and so we will neede the https.createServer.
##
server = http.createServer app

##
# Listen on provided port
##
server.listen port, ()->
  console.log "Server listening on port #{port}"

module.exports = app;
