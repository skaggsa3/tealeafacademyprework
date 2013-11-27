def logger description, depth, &block
	puts "#{"\s" * depth}Beginning #{description}...."
	value = block.call
	puts "#{"\s" * depth}....#{description} finished, returning: #{value}"
end

logger "outer block", 0 do
	logger "some little block", 2 do
		logger "teeny tiny block", 4 do
			"lots of love"
		end
		42
	end
	logger "yet another block", 2 do
		"I love indian food"
	end
	true
end