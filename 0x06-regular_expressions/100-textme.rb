#!/usr/bin/env ruby
input=$(echo $1 | sed 's/\[from:\(.*\)\] \[to:\(.*\)\] \[flags:\(.*\)\]/echo \1,\2,\3/e')
echo $input

# if ARGV.empty?
#     puts "Please provide an argument."
#     exit
#   end
  
#   input = ARGV[0]
  
#   pattern = /\[from:(?<from>.*?)\] \[to:(?<to>.*?)\] \[flags:(?<flags>.*?)\]/
  
#   match_data = input.match(pattern)
  
#   if match_data
#     from = match_data[:from]
#     to = match_data[:to]
#     flags = match_data[:flags]
#     puts "From: #{from}, To: #{to}, Flags: #{flags}"
#   else
#     puts "No match found."
#   end
  