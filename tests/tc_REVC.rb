#!/usr/bin/env ruby -wU

require "REVC"
require "minitest/autorun"
require 'minitest/pride'
 
class TestREVC< MiniTest::Unit::TestCase

	def setup
		dna_string = "AAAACCCGGT"
		@reverse_complement = "ACCGGGTTTT"
		@revc = REVC.new(dna_string)
	end

	def test_dna_complement
    assert_equal(@revc.dna_complement("T"), "A" )
    assert_equal(@revc.dna_complement("A"), "T" )
    assert_equal(@revc.dna_complement("C"), "G" )
    assert_equal(@revc.dna_complement("G"), "C" )
	end
 
  def test_simple
    assert_equal(@revc.reverse_complement, @reverse_complement )
  end
 
end