def reverser
	result = yield if block_given?
	result.split(" ").map {|word| word.reverse }.join(" ")
end

def adder( amt = 1 )
	result = yield if block_given?
	
	result += amt
end

def repeater( amt = 3 )
	amt.times do
		yield
	end
end