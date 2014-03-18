class Hello
	def self.call(env)
		res = Rack::Response.new
		 
		# This will automatically set the Content-Length header for you
		res.write "Hello from Rack!"
		 
		# returns the standard [status, headers, body] array
		res.finish
		#same as returning [200, {"Content-type"=>"text/html"},["Hello from Rack!"]] 
		# You can get/set headers with square bracket syntax:
		#   res["Content-Type"] = "text/plain"
		# You can set and delete cookies
		#   res.set_cookie("user_id", 1)
		#   res.delete_cookie("user_id")
	end
end
run Hello
