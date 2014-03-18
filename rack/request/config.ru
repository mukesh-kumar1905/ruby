class Hello
	def call(env)
		req = Rack::Request.new(env)
		puts req.request_method #=> GET, POST, PUT, etc.
		puts req.get?           # is this a GET requestion
		puts req.path_info      # the path this request came in on
		puts req.session        # access to the session object, if using the
		# Rack::Session middleware
		puts req.params.inspect         # a hash of merged GET and POST params, useful for
		return [200, {"Content-type"=>"text/html"},["Hello"]] 
		# pulling values out of a query string
		# ... and many more
	end
end
 
# Tell Rack what to run our app
run Hello.new 
