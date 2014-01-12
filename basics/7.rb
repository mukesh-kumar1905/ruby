puts "Enter ruby code"
a=gets.chomp
eval a
 def my_method binding
 	eval "puts x",binding
 end
 x=5
 my_method binding
 exec("ls")