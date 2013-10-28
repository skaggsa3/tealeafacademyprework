line_width = 50
rj_width = 5

t = ["Chapter 1: Getting Started", "Chapter 2: Numbers", "Chapter 9: Letters"]
p = ["Page 1", "Page 9", "Page 13"]

puts "Table of Contents\n\n".center(line_width)

t.zip(p) do |title, page|
	puts "#{title}".ljust(line_width) + "#{page}".rjust(rj_width)
end
