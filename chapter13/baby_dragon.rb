class Dragon
	attr_accessor :name
	
	def initialize(name)
		@name = name
		dispatch
	end

	def dispatch()
		while true
			puts "What does #{@name} need? Feed? Walk? Sleep?"
			@choice = gets.chomp.downcase

			case @choice
			when "feed"
				feed
				puts "Would you like to take a break from #{@name}? if so, say yes and you can come back later to play with #{@name}, otherwise please enter no"
				@continue = gets.chomp.downcase
				if @continue == "yes"
					break
				else
					next
				end
			when "walk"
				walk
				puts "Would you like to take a break from #{@name}? if so, say yes and you can come back later to play with #{@name}, otherwise please enter no"
				@continue = gets.chomp.downcase
				if @continue == "yes"
					break
				else
					next
				end
			when "sleep"
				sleeping
				puts "Would you like to take a break from #{@name}? if so, say yes and you can come back later to play with #{@name}, otherwise please enter no"
				@continue = gets.chomp.downcase
				if @continue == "yes"
					break
				else
					next
				end
			else
				puts "Please pick either feed, walk, or sleep"
			end
		end
	end

	def feed
		puts "Alright, lets get #{@name} fed"
		puts "What is #{@name} in the mood for? Turkey? Chicken? Soup?"
		@answer = gets.chomp.downcase

		 
		case @answer
		when "turkey"
			puts "#{@name} loves that turkey"
		when "chicken"
			puts "#{@name} really loves chicken"
		when "soup"
			puts "Is #{@name} sick? #{@name} doesn't normally like soup!"
		end
	end

	def walk
		puts "How many miles does #{@name} want to walk today? Please enter 1-100"
		@distance = gets.to_i

		if @distance.between?(1, 100) 
			puts "Alright, lets walk for #{@distance} miles"
		else
			puts "Please enter a valid distance"
		end
	end

	def sleeping
		@sleep_time = 0
		print "Sleeping"
		while @sleep_time <= 20
			print "."
			sleep(1)
			@sleep_time = @sleep_time + 1
		end
		print "\n"
	end
end

Dragon.new("Harry")


