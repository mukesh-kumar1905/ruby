def args(code)
  one, two = 1, 2
  code.call(one, two)
end

args(Proc.new{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

args(lambda{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

# => Give me a 1 and a 2 and a NilClass
# *.rb:8: ArgumentError: wrong number of arguments (2 for 3) (ArgumentError)