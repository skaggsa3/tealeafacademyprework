def profile block_description, profile, &block
	profiling = profile

	if profiling
		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
	else
		block.call
	end
end

#Test the modded profile method

profile 'double up', true do 
	number = 1

	10000.times do
		number = number + number
	end

	puts "#{number.to_s.length} digits"

end