#!/usr/bin/env ruby

we_wanna_ride = true

stops = ["Archway", "Bank", "Temple", "Embankment"]

while we_wanna_ride
    print "Where ya headin', friend?: "
    destination = (gets.chomp).capitalize
    
    if stops.include? destination
        puts "I know how to get tp #{destination}! Here's the station list:"
        stops.each do |stop|
            puts stop
            break if stop == destination
        end
    else
        puts "Sorry, we don't stop at that station. Maybe another time!"
        we_wanna_ride = false
    end
    we_wanna_ride = false
end
