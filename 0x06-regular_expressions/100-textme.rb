#!/usr/bin/env ruby
input = ARGV[0]
matches = input.scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)
output = matches.map { |match| match.join(',') }.join(',')
puts output
