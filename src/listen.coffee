###
Report test results to AppVeyor
###
path = require 'path'
post = require './post'

events =
  pending: 'Ignored'
  pass:    'Passed'
  fail:    'Failed'

module.exports = (runner)->
  for k, v of events
    do (v)->
      runner.on k, (test)->
        post
          testFramework: 'mocha'
          testName: test.fullTitle()
          fileName: path.relative '', test.file
          outcome: v
          durationMilliseconds: test.duration
          ErrorMessage: test.err?.message
          ErrorStackTrace: test.err?.stack
          '/api/tests'
