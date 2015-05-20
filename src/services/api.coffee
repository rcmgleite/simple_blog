class APIServices
  @Auth = (req, res, next)->
    #TODO
    console.log 'Did passed on auth middleware\n'
    next()


  @Log = (req, res, next)->
    # Initial time of request in mills
    start = +new Date()

    res.on 'finish', ()->
      duration = +new Date() - start
      process.stdout.write(req.method + ' to ' + req.url + ' took ' + duration + ' ms\n\n')
    # Next MUST be called OUTSIDE the finish callback... otherwise the request would block inside
    # the callback
    next()

  #TODO delete test middleware
  @Test = (req, res, next)->
    console.log 'passed on test middleware\n'
    next()

module.exports = APIServices
