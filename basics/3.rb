class Polygon
	def initialize
	end
  @@sides = 10
  def self.sides
    @@sides
  end
end

puts "poly sides #{Polygon.sides }"
class Triangle < Polygon
	def initialize
		super
	end
  @@sides = 3
end

puts "tri sides #{Triangle.sides }"
puts "poly sides #{Polygon.sides }"
#http://railstips.org/blog/archives/2006/11/18/class-and-instance-variables-in-ruby/
class String
	def words
		scan(/\w[\w\'\-]*/)
	end
end
puts "Hello World!".words.inspect
module Check
	class TryClass
		def initialize(name="world")
		@name=name
		end
		attr_accessor :name
		
	end
	def self.included(receiver)
		receiver.extend         ClassMethods
		receiver.send :include, InstanceMethods
	end
	def self.hello
			puts "hello"
		end
end

tr=Check::TryClass.new
tr.name="sadsad"
