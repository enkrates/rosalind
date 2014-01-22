#!/usr/bin/env ruby -wU

if ARGV[0]
  length = ARGV[0]
else
  length = 3 # value given as an example in the problem
end

original_string = (1..length.to_i).to_a.join

def permutations string
  list_permutations "", string	
end

def list_permutations prefix, rest
  if rest.length == 0
    puts prefix.split("").join(" ")
  else
    rest.each_char do |c|
      pre = prefix + c
      remaining = rest.delete(c)
      list_permutations pre, remaining
    end
  end
end

def factorial num
  return (2..num).reduce(:*)
end

puts factorial length.to_i

permutations original_string