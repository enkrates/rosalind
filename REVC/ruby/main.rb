#!/usr/bin/env ruby -wKU

if ARGV[0]
  data_file = '../data/' + ARGV[0]
else
  data_file = "../data/sample.txt"
end

def dna_complement (char)
	case char
		when 'A' then 'T'
		when 'T' then 'A'
		when 'C' then 'G'
		when 'G' then 'C'
	end
end

dna_string = File.open(data_file, 'r').read

puts dna_string.split('').reverse.map { |e| dna_complement e }.join("")