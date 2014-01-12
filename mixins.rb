module TimeStamp
	def puts(string)
		super("#{Time.now}:#{string}")
	end
end
class MyClass
	def initialize
		puts "initialize"
	end
end

s="Hello"
puts s
s.extend TimeStamp
s.puts s

class << s
	def puts(s); super s +"--qqqqqq";end
end

puts s
s.puts s
MyClass.new
class MyClass
	include TimeStamp
end


MyClass.new
#execution happens in order of ancestors
MyClass.ancestors.each_with_index do |x,i|
	puts"#{i}:#{x}"
end
