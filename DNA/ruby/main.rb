#!/usr/bin/env ruby -wU

if ARGV[0]
  data_file = '../data/' + ARGV[0]
else
  data_file = "../data/sample.txt"
end

bases = Hash["A" => 0,
             "C" => 0,
             "G" => 0,
             "T" => 0]

File.open(data_file, 'r').each_char do |character|
  bases[character] += 1
end

puts bases.values.join(' ')