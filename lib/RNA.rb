# #!/usr/bin/env ruby -wU

class RNA
 
  def initialize(dna_string)
    @dna_string = dna_string
  end
 
  def rna_converted_string
  	@dna_string.tr('T', 'U')
  end
 
end