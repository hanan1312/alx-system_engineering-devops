#!/usr/bin/env ruby

if ARGV.empty?
    puts "Please provide an argument."
    exit
  end
  
  input = ARGV[0]
  
  pattern = /\[from:(?<from>.*?)\] \[to:(?<to>.*?)\] \[flags:(?<flags>.*?)\]/
  
  match_data = input.match(pattern)
  
  if match_data
    from = match_data[:from]
    to = match_data[:to]
    flags = match_data[:flags]
    puts "From: #{from}, To: #{to}, Flags: #{flags}"
  else
    puts "No match found."
  end
  