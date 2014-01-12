my_file=File.new("example.txt",'w')
my_file.puts "Hello"
my_file.puts "Hello dsfsdf"
my_file.close
my_file=File.new("example.txt",'r')
#puts my_file.read
#puts my_file.read(4)
puts my_file.readlines.inspect
my_file.close

File.open("example.txt",'r') do |file|
	puts "file"+file.readlines.join(";")
end

#Dir.mkdir "TestDir"
puts Dir.entries(".")
#Dir.rmdir "TestDir"
#for block Dir.foreach(".")

begin
	#Code that could generate errors
rescue ArgumentError
	#handles angument error and so on
rescue NoMethodError
	#ob use
rescue 
	#all other errors
ensure 
	#always happens
end

#raise errors
def mymethod data
	if data!=0
		raise ArgumentError
	end
end