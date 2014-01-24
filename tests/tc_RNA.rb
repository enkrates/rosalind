#!/usr/bin/env ruby -wU

require "RNA"
require "minitest/autorun"
require 'minitest/pride'
 
class TestRNA< MiniTest::Unit::TestCase

	def setup
		dna_string = "GATGGAACTTGACTACGTAAATT"
		@rna_string = "GAUGGAACUUGACUACGUAAAUU"
		@rna = RNA.new(dna_string)
	end
 
  def test_simple
    assert_equal(@rna.rna_converted_string, @rna_string )
  end
 
end