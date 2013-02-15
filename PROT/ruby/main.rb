#!/usr/bin/env ruby -wKU

if ARGV[0]
  data_file = '../data/' + ARGV[0]
else
  data_file = "../data/sample.txt"
end

data_string = data_array = File.open(data_file, 'r').read

codon_table = Hash[
"UUU" => "F",
"UUC" => "F",
"UUA" => "L",
"UUG" => "L",
"UCU" => "S",
"UCC" => "S",
"UCA" => "S",
"UCG" => "S",
"UAU" => "Y",
"UAC" => "Y",
"UGU" => "C",
"UGC" => "C",
"UGG" => "W",
"CUU" => "L",
"CUC" => "L",
"CUA" => "L",
"CUG" => "L",
"CCU" => "P",
"CCC" => "P",
"CCA" => "P",
"CCG" => "P",
"CAU" => "H",
"CAC" => "H",
"CAA" => "Q",
"CAG" => "Q",
"CGU" => "R",
"CGC" => "R",
"CGA" => "R",
"CGG" => "R",
"AUU" => "I",
"AUC" => "I",
"AUA" => "I",
"AUG" => "M",
"ACU" => "T",
"ACC" => "T",
"ACA" => "T",
"ACG" => "T",
"AAU" => "N",
"AAC" => "N",
"AAA" => "K",
"AAG" => "K",
"AGU" => "S",
"AGC" => "S",
"AGA" => "R",
"AGG" => "R",
"GUU" => "V",
"GUC" => "V",
"GUA" => "V",
"GUG" => "V",
"GCU" => "A",
"GCC" => "A",
"GCA" => "A",
"GCG" => "A",
"GAU" => "D",
"GAC" => "D",
"GAA" => "E",
"GAG" => "E",
"GGU" => "G",
"GGC" => "G",
"GGA" => "G",
"GGG" => "G"]

finished = false

protein_string = ""

while !finished && protein_string
  to_translate = data_string.slice!(0..2)
  if to_translate == "UAA" || to_translate == "UAG" || to_translate == "UGA"
    finished = true
  else
    protein_string << codon_table[to_translate]
  end
end

puts protein_string

