#!/usr/bin/env ruby -w


if ARGV[0]
  data_file = '../data/' + ARGV[0]
else
  data_file = "../data/sample.txt"
end

def string_match first, second
  if first.length != second.length
    match = false
  else
    first.each_char.to_a.each_with_index do |item, index|
      if first[index] == second[index]
        match = true unless match == false
      else
        match = false
      end
    end
  end
  return match
end

data = File.open(data_file, 'r').read.split("\n")

haystack = data[0]
needle   = data[1]

match_locations = Array.new

haystack.each_char.to_a.each_with_index do |item, index|
  if string_match needle, haystack[index.to_i, needle.length]
    match_locations.push index.to_i + 1
  end
end

puts match_locations.join(" ")

