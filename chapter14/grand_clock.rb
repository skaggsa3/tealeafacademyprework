def hours_passed &block
	current_hour = Time.new.hour
	if current_hour > 12
		new_time = current_hour - 12
		puts "The current time is #{new_time} PM"
		new_time.times do
			block.call
		end
	elsif current_hour == 12
		current_hour.times do
			puts "The current time is #{current_hour} PM"
			block.call
		end
	else
		puts "The current time is #{current_hour} AM"
		current_hour.times do
			block.call
		end
	end
end

hours_passed do
	puts "Ding Dong"
end

