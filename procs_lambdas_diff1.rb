def proc_return
  Proc.new { return "Proc.new"}.call
  return "proc_return method finished"
end

def lambda_return
  lambda { return "lambda" }.call
  return "lambda_return method finished"
end

puts proc_return
puts lambda_return

def generic_return(code)
  code.call
  return "generic_return method finished"
end

#=>will give an error
puts generic_return(Proc.new { return "Proc.new" })

puts generic_return(lambda { return "lambda" })
