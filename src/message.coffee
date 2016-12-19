###
Message to AppVeyor
###
exports = require './'
post = require './post'

exports.message =
message = (msg, details)->
  post
    category: 'info'
    message: msg
    details: details
    '/api/build/messages'

exports.log = (msg, details)->
  console.log msg
  message msg, details
