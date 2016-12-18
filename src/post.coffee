###
Post to AppVeyor Worker API
###

url = require 'url'
http = require 'http'

api = require './api'

module.exports = (data, path)->
  return unless api
  uri = url.parse api
  data = JSON.stringify data
  uri.method = 'POST'
  uri.path = path
  uri.headers =
    'Content-Type': 'application/json'
  http.request uri
  .end data
