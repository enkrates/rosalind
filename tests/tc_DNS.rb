#!/usr/bin/env ruby -wU

require_relative "../DNA/ruby/main"
require "minitest/autorun"
require 'minitest/pride'
 
class TestDNA < MiniTest::Unit::TestCase

	def setup
		dna_string = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAA" +
					 "AAAGAGTGTCTGATAGCAGC"
		@dna = DNA.new(dna_string)
	end
 
  def test_simple
    assert_equal(@dna.nucleobase_count, [20, 12, 17, 21] )
  end
 
end