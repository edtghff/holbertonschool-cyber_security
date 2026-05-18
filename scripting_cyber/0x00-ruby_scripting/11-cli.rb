#!/usr/bin/env ruby

require 'optparse'

TASKS_FILE = 'tasks.txt'
options = {}

OptionParser.new do |opts|
  opts.banner = 'Usage: cli.rb [options]'

  opts.on('-a', '--add TASK', 'Add a new task') do |task|
    options[:add] = task
  end

  opts.on('-l', '--list', 'List all tasks') do
    options[:list] = true
  end

  opts.on('-r', '--remove INDEX', Integer, 'Remove a task by index') do |idx|
    options[:remove] = idx
  end

  opts.on('-h', '--help', 'Show help') do
    puts opts
    exit
  end
end.parse!

if options[:add]
  File.open(TASKS_FILE, 'a') do |f|
    f.puts options[:add]
  end
  puts "Task '#{options[:add]}' added."
elsif options[:list]
  if File.exist?(TASKS_FILE)
    if File.zero?(TASKS_FILE) == false
      n = 1
      File.foreach(TASKS_FILE) do |line|
        puts "#{n}. #{line.strip}"
        n += 1
      end
    end
  end
elsif options[:remove]
  if File.exist?(TASKS_FILE)
    tasks = File.readlines(TASKS_FILE)
    idx = options[:remove] - 1

    if idx >= 0
      if idx < tasks.length
        removed = tasks[idx].strip
        tasks.delete_at(idx)
        File.write(TASKS_FILE, tasks.join)
        puts "Task '#{removed}' removed."
      else
        puts 'Invalid task index.'
      end
    else
      puts 'Invalid task index.'
    end
  end
end
