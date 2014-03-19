def my_method
  puts "before proc"
  my_proc = proc do
    puts "inside proc"
    break
  end
  my_proc.call
  puts "after proc"
end
#LocalJumpError 
my_method


def my_method
  puts "before proc"
  my_proc = proc do
    puts "inside proc"
    break
  end
  [1,2,3].each {my_proc.call}
  puts "after proc"
end
 
my_method
#

def my_method
  puts "before proc"
  my_proc = lambda do
    puts "inside proc"
    break
  end
  my_proc.call
  puts "after proc"
end
 
my_method

# break keyword within a lambda will cause us to break out of the lambda itself, but 
#within a proc we get an error if there is no iterator around the proc and we break 
#out of the iterator if we do have one