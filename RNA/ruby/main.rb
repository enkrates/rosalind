#!/usr/bin/env ruby -wKU

if ARGV[0]
  data_file = '../data/' + ARGV[0]
else
  data_file = "../data/sample.txt"
end

dna = File.open(data_file, 'r').read

puts dna.tr('T', 'U')