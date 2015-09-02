#!/usr/bin/env ruby

for x in 1..100
  if x % 15 == 0
    puts("fizzbuzz")
  elsif x % 3 == 0
    puts("fizz")
  elsif x % 5 == 0
    puts("buzz")
  else
    puts x
  end
end
