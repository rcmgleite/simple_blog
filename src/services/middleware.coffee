
config          = require '../config'
class middleware
  @apply = (router) ->
    for midFunction in config.api.middlewareOrder
      router.use midFunction

module.exports = middleware
