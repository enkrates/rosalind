# #!/usr/bin/env ruby -wU

class REVC
 
  def initialize(dna_string)
    @dna_string = dna_string
  end

  def dna_complement char
	  case char
	    when 'A' then 'T'
	    when 'T' then 'A'
	    when 'C' then 'G'
	    when 'G' then 'C'
	  end
	end

  def reverse_complement
    @dna_string.split('').reverse.map { |e| dna_complement e }.join("")
  end
 
end