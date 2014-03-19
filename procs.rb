class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array_1 = [1, 2, 3, 4]
array_2 = [2, 3, 4, 5]

square = Proc.new do |n|
  n ** 2
end

array_1.iterate!(square)
array_2.iterate!(square)

puts array_1.inspect
puts array_2.inspect

# => [1, 4, 9, 16]
# => [4, 9, 16, 25]

def some_method
 Proc.new
end
 
my_proc = some_method{puts "I am a happy proc"}
my_proc.call

#array syntax, this works in both Ruby 1.8 and 1.9
puts Proc.new{|x|"blah1"*x}[2]

#procs and lambdas have an arity method which allows you to find out how many arguments a Proc objects expects to receive
puts "I need #{my_proc.arity} arguments"

# the fun bit starts when the block you use to create the proc expects an arbitrary number of arguments
my_proc = Proc.new{|x, *rest|"blah1 #{x} - #{rest}"}
puts "I need #{my_proc.arity} arguments"
#=>I need -2 arguments

#all you can do is find out how many arguments are required (the rest will be optional)
# by using the ~ operator on the return value of the arity method
my_proc = Proc.new{|x, *rest|"blah1 #{x} - #{rest}"}
puts "I actually require #{~my_proc.arity} arguments, the rest are optional"