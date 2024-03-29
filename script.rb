#!/usr/bin/env ruby

operators = [:+, :-, :*, :/, :**, :%, :<<, :>>, :&, :^, :|]

indices = [ 0 ] * 7

puts "Estimate: #{operators.size ** 7}"

count = 0

loop do
  total = 8
  indices.each do |index|
    total = total.send(operators[index], 8)
  end

  if total == 1000
    print "\r"
    indices.each { |i| print "8 #{operators[i].to_s} " }
    print "8\t\t\n"
  end

  indices[0] += 1

  for i in 0...(indices.size - 1)
    if indices[i] == operators.size
      indices[i] = 0
      indices[i+1] += 1
    end
  end

  count += 1

  print "\rProcessed #{count}\t\t"

  break if indices[-1] == operators.size
end

