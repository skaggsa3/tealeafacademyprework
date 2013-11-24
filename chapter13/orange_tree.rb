class OrangeTree
	attr_reader :age_of_tree, :tree_height, :orange_count, :oranges_left

	def initialize
		@age_of_tree = 0
		@tree_height = 0
		@orange_count = 0
		@oranges_left = 0
	end

	def height
		@tree_height
	end

	def one_year_passes
		@age_of_tree = @age_of_tree + 1
		if @age_of_tree > 2 and @age_of_tree < 10
			oranges
			@tree_height = @tree_height + 1
			puts "After another year, the tree is #{@tree_height} feet tall"
		elsif @age_of_tree > 10
			oranges + 10
			@tree_height = @tree_height + 1
			puts "After another year, the tree is #{@tree_height} feet tall"
		elsif @age_of_tree > 20
			passed
		else
			@age_of_tree
			@tree_height = @tree_height + 1
			puts "After another year, the tree is #{@tree_height} feet tall and since this tree is less than 2 years old, there will be no oranges"
		end
	end
			
	def passed
		puts "Unfortunately, your tree has become to old and has passed away."
	end

	def oranges
		@orange_count = @orange_count + 10
	end	

	def count_the_oranges
		@orange_count
	end

	def pick_an_orange
		@orange_count = @orange_count - 1
		@oranges_left = @orange_count
		if @orange_count > 0
			puts "That orange was awesome"
		else
			puts "There are no more oranges to pick this year"
		end
	end

	def leftover_oranges
		@oranges_left
	end

end

#The below tests the above class

orange = OrangeTree.new
puts "The initial height of the orange tree is #{orange.height}ft"
puts "The initial orange count on the orange tree is #{orange.orange_count}"
orange.one_year_passes
puts "And the new orange count is #{orange.orange_count} oranges"
orange.one_year_passes
puts "And the new orange count is #{orange.orange_count} oranges"
orange.one_year_passes
puts "And the new orange count is #{orange.orange_count} oranges"
puts "Lets try and pick an orange"
orange.pick_an_orange
puts "There were #{orange.leftover_oranges} oranges left on the tree at the end of year #{orange.age_of_tree}"


