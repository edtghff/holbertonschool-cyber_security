#!/usr/bin/env ruby

require 'open-uri'
require 'uri'
require 'fileutils'

if ARGV.length < 2
  puts "Usage: 9-download_file.rb URL LOCAL_FILE_PATH"
  exit
end

url = ARGV[0]
dest = ARGV[1]

puts "Downloading file from #{url}..."

begin
  URI.open(url) do |remote|
    File.open(dest, 'wb') do |local|
      local.write(remote.read)
    end
  end

  puts "File downloaded and saved to #{dest}."
rescue StandardError => e
  puts "Error downloading file: #{e.message}"
  exit 1
end
