class TheClass
 def initialize(a)
 	@vlaue=a
 	puts @value
 end
end
class Subclass < TheClass
	def initialize(a)
 		@b=200
 		super(a+b)
 	end
 	def show
 		puts @a
 	end
 end