#!/usr/bin/env ruby

start = Time.now
turns = 0
correct = 0
wrong = 0

print "How many turns do you want to play? "
plays = gets.to_i
plays ||=0

while turns < plays
    turns = turns +1
    
    x = Random.rand(1..10)
    y = Random.rand(1..10)

    print "#{x} + #{y} = "

    answer = gets.to_i

    if answer == x + y
        puts "Right!"
        correct = correct + 1
    else
        puts "Wrong!"
        wrong = wrong + 1
    end
end

puts turns

score = 100 * (correct.to_f / turns)

puts "Rights #{correct}; Wrongs #{wrong}; Score #{score}%"

duration = Time.now - start

puts "Total time #{duration} seconds"
puts "#{duration/turns} seconds per problem"