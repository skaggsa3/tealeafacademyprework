puts "Please tell me the year you were born"
year = gets.chomp

puts "Please tell me the month you were born"
month = gets.chomp

puts "Please tell me the day you were born"
day = gets.chomp

puts ""

current_time = Time.new
birth_date = Time.new(year, month, day)

age = current_time.year - birth_date.year

age_loop = 1

while age_loop <= age
	puts "#{age_loop} SPANK'S!"
	age_loop += 1
end

