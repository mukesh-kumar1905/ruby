require "yaml"
require "benchmark"
require "profile"
@prefs={"word-wrapping"=>true,"color"=>"black","Blah"=>"blah?"}
output=File.new("prefs.yaml","w")
output.puts YAML.dump(@prefs)
output.close
output=File.new("prefs.yaml","r")
@pr=YAML.load(output.read)
output.close
puts @pr.inspect

class Person
	def initialize name
		@name=name
	end
end
tom=Person.new "Tom"
output=File.new("tom.yaml","w")
output.puts YAML.dump(tom)
output.close

a=Benchmark.measure do 
	1_000_000.times do |i|
		x=i
	end
end
puts a

Benchmark.bm do |bm|
	bm.report("Test 1: ") do
			1_000_000.times do |i|
				x=i
			end
	end
	bm.report("Test 2: ") do
			1_000_000.times do |i|
				x=i+1
			end
	end
end