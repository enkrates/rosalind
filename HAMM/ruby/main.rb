#!/usr/bin/env ruby -wU

if ARGV[0]
  data_file = '../data/' + ARGV[0]
else
  data_file = "../data/sample.txt"
end

data_array = File.open(data_file, 'r').read.split("\n")

hamming = 0

(0...(data_array[0].size)).each do |index|
	hamming += ((data_array[0][index] == data_array[1][index]) ? 0 : 1)
end

puts hamming