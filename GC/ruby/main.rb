#!/usr/bin/env ruby -wKU

if ARGV[0]
  data_file = '../data/' + ARGV[0]
else
  data_file = "../data/sample.txt"
end

def gc_content strand
	cg_chars = 0
	strand.each_char do |c|
    if (c == 'G' || c == 'C')
		  cg_chars += 1
    end
  end
  return cg_chars / strand.length.to_f
end

data = File.open(data_file, 'r').read

data_array = data.split(">")

data_array.delete_at(0)

best_gc_name  = ""
best_gc_score = 0

data_array.each do |fasta|
  this_array = fasta.split("\n")
  string_name = this_array.shift
  dna_string = this_array.join

  gc_score = gc_content dna_string

  if gc_score > best_gc_score
    best_gc_name  = string_name
    best_gc_score = gc_score
  end
end

puts best_gc_name
puts "#{(best_gc_score * 100).round(6)}%"