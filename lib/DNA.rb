# #!/usr/bin/env ruby -wU

class DNA
 
  def initialize(dna_string)
    @dna_string = dna_string
  end
 
  def nucleobase_count
  	bases = Hash["A" => 0,
	             "C" => 0,
	             "G" => 0,
	             "T" => 0]

	@dna_string.each_char do |character|
	  bases[character] += 1
	end
    bases.values
  end
 
end