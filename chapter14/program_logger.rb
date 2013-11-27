def logger description, &block
	puts "Beginning #{description}...."
	value = block.call
	puts "....#{description} finished, returning: #{value}"
end

logger "Outer Block" do 
	logger "some little block" do
		5
	end

	logger "yet another block" do
		"I like Thai food"
	end

	false
end