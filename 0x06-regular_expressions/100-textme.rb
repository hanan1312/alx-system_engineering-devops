#!/usr/bin/env ruby
# puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
input = ARGV[0]
matches = input.scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)
output = matches.map { |match| match.join(',') }.join(',')
puts output
