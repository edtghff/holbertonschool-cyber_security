#!/usr/bin/env ruby

def print_arguments
  if ARGV.empty?
    puts "No arguments provided."
  else
    i = 1
    ARGV.each do |arg|
      puts "#{i}. #{arg}"
      i += 1
    end
  end
end
