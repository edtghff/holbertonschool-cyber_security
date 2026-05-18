#!/usr/bin/env ruby

require 'json'

def count_user_ids(path)
  content = File.read(path)
  data = JSON.parse(content)
  counts = Hash.new(0)

  data.each do |entry|
    counts[entry['userId']] += 1
  end

  counts.sort.each do |uid, total|
    puts "#{uid}: #{total}"
  end
end
