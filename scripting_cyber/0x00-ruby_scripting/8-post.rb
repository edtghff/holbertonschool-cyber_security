#!/usr/bin/env ruby

require 'net/http'
require 'uri'
require 'json'

def post_request(url, body_params)
  uri = URI(url)
  http = Net::HTTP.new(uri.host, uri.port)

  if uri.scheme == 'https'
    http.use_ssl = true
  end

  req = Net::HTTP::Post.new(uri.path)
  req['Content-Type'] = 'application/json'
  req.body = body_params.to_json

  response = http.request(req)

  puts "Response status: #{response.code} #{response.message}"
  puts "Response body:"
  puts JSON.pretty_generate(JSON.parse(response.body))
end
