puts "Please give me the year you were born"
year = gets.chomp.to_i

puts "Please now give me the month you were born"
month = gets.chomp.to_i

puts "Please give me the day of the month you were born"
day_of_month = gets.chomp.to_i

puts "In what hour were you born? please enter 0-23"
hour = gets.chomp.to_i

puts "Finally, please give me the minute you were born"
min = gets.chomp.to_i

date_of_birth = Time.local(year, month, day_of_month, hour, min)
billion_sec = date_of_birth + 1000000000

if billion_sec.min < 10
	the_mins = 0.to_s + "#{billion_sec.min}"
else
	the_mins = billion_sec.min
end

puts "You will be one billion seconds on #{billion_sec.month}-#{billion_sec.day}-#{billion_sec.year} at #{billion_sec.hour}:#{the_mins}"