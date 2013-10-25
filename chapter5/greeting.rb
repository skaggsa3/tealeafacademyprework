puts "Hello! May I have your first name? "
first_name = gets.chomp

puts "Can I have your middle name? "
middle_name = gets.chomp

puts "Finally, may I have your last name? "
last_name = gets.chomp

full_name = first_name + ' ' + middle_name + ' ' + last_name

puts "Hello #{full_name}!"