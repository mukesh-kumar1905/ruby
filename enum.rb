#enum(like most standard mixins) requires 1 func to work
class Alpha
	def each
		('a'..'z').to_a.each do |letter|
			yield letter
		end
	end
end
a=Alpha.new
puts "a before each"
puts a.inspect
puts "each"
a.each { |l| puts l}
puts "a after each"
puts a.inspect
class Alpha; include Enumerable; end
#map relies on each
b=a.map {|l| "Letter #{l}"}
puts b
b=a.zip((1..26).to_a)
puts b