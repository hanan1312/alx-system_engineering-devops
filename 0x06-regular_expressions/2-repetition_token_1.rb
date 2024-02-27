#!/usr/bin/env ruby

if ARGV.empty?
    puts "Please provide an argument."
    exit
  end
  
  input = ARGV[0]
  
  matches = input.scan(/hb?t?n/)
  
  puts matches.join
  