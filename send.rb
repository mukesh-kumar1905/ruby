class Car

  def start
    puts "vroom"
  end

  private

  def engine_temp
    puts "Just Right"
  end

end

@car = Car.new
@car.start # output: vroom
@car.send(:start) # output: vroom

#@car.engine_temp  # This doesn't work, it will raise an exception
@car.send(:engine_temp)  # output: Just Right