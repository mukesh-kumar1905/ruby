#to make string  #{}
class Greeter
	def initialize(name="world")
		@name=name
		end
	attr_accessor :name
	def hello
		puts "hello #{@name}"
	end
	def self.hi(name)
		puts "hi "+name
	end
end
=begin
class Polygon
  class << self; attr_accessor :sides end
  @sides = 8
end

puts Polygon.sides # => 8
=end
#Using attr_accessor defined two new methods for us, name to get the value, and name= to set it.
name=gets.chomp
#chomp removes \n
 g=Greeter.new(name)
 g.hello
 Greeter.hi "MUUUU"
 count=0;
 name.length.times do |x|
 	puts x
 end
 name.each_char do |x|
 	puts x
 end
 #puts name.methods
 puts name.capitalize
 puts name.sub("e","z")
 puts name.gsub("e","z")
name.scan(/\w\w/) { |x| puts x  }

ar=["a","b","c"]
puts "at 0 "+ar[0]
puts "ar=#{ar}"
ar+=["d"]
ar+=["e"]
puts "0-2: #{ar[0..2]}"
puts "1-end: #{ar[1..-1]}"
ar.each do |x|
	puts x
	end
ar.collect do |x|
	x*2
	end
y=ar.collect { |x| x*2  }
puts y.empty?
puts y
#y.sort
#y.reverse
#ar.delete("a")
#ar.delete_at(1)

ar+=["d"]
ar+=["d"]
puts "sadasd"
puts ar.inspect
=begin
if ar.include?("d") 
	count=0
	ar.find_all("d").to_a.length.each do |x|
		puts x
	end
	puts "count="+count
end
=end
# fin problem ar.find("d").each do
hash={"asdas"=>"asdasd","a"=>"value"}
hash["b"]="sadsadsa"
puts hash["a"]+" "+hash["b"]
def print(hash)
	hash.each do |pair|
		puts "Key: "+pair[0]
		puts "Value :"+pair[1]
	end
end
#hash.each_key do |x| puts "key+="+x end
#hash.each_value
hash.delete("b")
print(hash)
#puts hash.empty?
count=0
hash.keys.to_a.each do |x|
	puts "key[#{count}]"+x
	count+=1
end
#hash.values
#hash.size
