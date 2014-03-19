class SomeClass
  def initialize(value1)
    @value1 = value1
  end
 
  def value_printer(value2)
    lambda {puts "Value1: #{@value1}, Value2: #{value2}"}
  end
end
 
def caller(some_closure)
  some_closure.call
end
 
some_class = SomeClass.new(5)
printer = some_class.value_printer("some value")
 
caller(printer)

normal_lambda = lambda {|param1, param2| puts "param1: #{param1} and param2: #{param2}"}
normal_lambda.call(10, 20)

#new syntax it is slightly different. 
#We replace the lambda method with the -> method (as in minus followed by greater than sign). 
#The parameters move out of the block, and move into some brackets right after the -> method (so they look like method parameters, but in reality are still block parameters).
#Everything else is the same
normal_lambda = ->(param1, param2) {puts "param1: #{param1} and param2: #{param2}"}
normal_lambda.call(10, 20)