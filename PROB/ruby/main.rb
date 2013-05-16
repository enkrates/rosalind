#!/usr/bin/env ruby -wU

if ARGV[0]
  data_file = '../data/' + ARGV[0]
else
  data_file = "../data/sample.txt"
end

data_array = File.open(data_file, 'r').read.split(" ")

final_result_array = Array.new

data_array.each do |datum|
  final_result_array << ( (((datum.to_f/2)**2)*2) + 
                          ((((1.0 - datum.to_f)/2)**2)*2) ).round(4)
end

puts final_result_array.join(" ")