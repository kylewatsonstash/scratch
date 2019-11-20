
if 1 + 1 == 3
	puts "math is correct"
else 
	puts "mathbad"
end


if true 
	puts "it was true!"
end

if false 
	puts "this code never runs"
end

# this is a list of class attendees
cool_people = [ "ally", "anne", "kyle", "cliff", "devin" ]

if cool_people.include?("ANNE".downcase)
	puts "They were in class today"
else 
	puts "we're so sad that they no here now"
end
