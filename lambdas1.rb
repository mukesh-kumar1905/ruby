class SomeClass
  def initialize(value1)
    @value1 = value1
  end
 
  def value_incrementer
    lambda {@value1 += 1}
  end
 
  def value_printer
    lambda {puts "value1: #{@value1}"}
  end
end
 
some_class = SomeClass.new(2)
 
incrementer = some_class.value_incrementer
printer = some_class.value_printer
 
(1..3).each do
  incrementer.call
  printer.call
end