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

#how do they closures the values of the variables that were in scope when the closure was defined? 
#This must be supported by the language and there are two ways to do that.
#1.)The closure will create a copy of all the variables that it needs when it is defined. 
#The copies of the variables will therefore come along for the ride as the closure gets passed around.
#2.)The closure will actually extend the lifetime of all the variables that it needs. 
#It will not copy them, but will retain a reference to them and the variables themselves will not be eligible for garbage
#collection (if the language has garbage collection) while the closure is around.

#If a language supports the second way, then all closures will reference the same variables, i.e. they will in effect 
#be dealing with exactly the same variable. This is how Ruby does things.