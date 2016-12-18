###
Patch mocha
###
R = require 'mocha'
  .Runner

listen = require './listen'

emit = R::emit

R::emit = ->
  delete R::emit
  listen @
  emit.apply @, arguments
