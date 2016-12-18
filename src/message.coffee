###
Message to AppVeyor
###
exports = require './'
post = require './post'

exports.message =
message = (msg)->
  post
    category: 'info'
    message: msg
    '/api/build/messages'

exports.log = (msg)->
  console.log msg
  message msg
