class ToUpperMiddleware
  # Our class will be initialize with another Rack app
  def initialize(app)
    @app = app
  end
 
  def call(env)
    # First, call `@app`
    status, headers, body  = @app.call(env)
 
    # Iterate through the body, upcasing each chunk
    upcased_body = body.map { |chunk| chunk.upcase }
 
    # Pass our new body on through
    [status, headers, upcased_body]
  end
end
 
# This is the same Hello app from before, just without all the comments
class Hello
  def self.call(env)
    [ 200, {"Content-Type" => "text/plain"}, ["Hello from Rack!"] ]
  end
end

#using ToUpper middleware
#can do
#app = ToUpper.new(Hello)
#run app

#can do the same by
use ToUpperMiddleware # Tell Rack to use our newly-minted middleware
run Hello
