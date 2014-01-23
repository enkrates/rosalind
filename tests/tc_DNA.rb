#!/usr/bin/env ruby -wU

require "DNA"
require "minitest/autorun"
require 'minitest/pride'
 
class TestDNA < MiniTest::Unit::TestCase

	def setup
		dna_string = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATT" +
					 "AAAAAAAGAGTGTCTGATAGCAGC"
		@dna = DNA.new(dna_string)
	end
 
  def test_simple
    assert_equal(@dna.nucleobase_count, [20, 12, 17, 21] )
  end
 
end