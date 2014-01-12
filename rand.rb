def twice
  yield
  yield
end
twice { puts "43534212"}
a=proc { puts "1212"}
twice &a