##
# Controller for all / requests
##
class indexRouter

  @get = (req, res)->
    res.json
      message: 'You made a request to /'

module.exports = indexRouter
