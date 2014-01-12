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