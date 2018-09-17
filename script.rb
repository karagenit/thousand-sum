#!/usr/bin/env ruby

class Array
  def all_combinations(size)
    (self * size).combination(size).to_a.uniq.sort
  end
end

operators = [:+, :-, :*, :/, :**]

puts operators.all_combinations(8).size
