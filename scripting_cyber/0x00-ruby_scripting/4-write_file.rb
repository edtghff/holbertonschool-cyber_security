#!/usr/bin/env ruby

require 'json'

def merge_json_files(file1_path, file2_path)
  extra = JSON.parse(File.read(file1_path))
  base = JSON.parse(File.read(file2_path))
  merged = base + extra

  File.write(file2_path, JSON.pretty_generate(merged))
end
