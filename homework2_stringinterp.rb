# string interp #{}


def this_program(number)

puts "If I wanted to I could tell this dumb program to print #{number} many times...\nbut instead it will only show once. Haha!"
puts
	number.times do |i|
	puts "Nevermind. I'll print this line #{number} times. Printing time # #{i+1}"
end
puts
end

this_program(5)



