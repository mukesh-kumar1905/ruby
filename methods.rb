class Post
	attr_reader :author,:title,:body,:comments
	def initialize values
		@author=values[:author]
		@title=values[:title]
		@body=values[:body]
		@comments=values[:comments]||[]
	end
	#a splat groups several parameters(length can be anything) passed to a a method
	def insert_commment *splat
		splat.each { |c| @comments << c }
	end
end
class Comment
	attr_reader :user,:body
	def initialize values
		@user=values[:user]
		@body=values[:body]
	end
end

post=Post.new author:"Mukesh",title:"first post",body:"This post is awesome"
post.insert_commment Comment.new({ user:"user1",body:"This comment is awesome" }),Comment.new({ user:"user1",body:"This comment is more awesome" })
p post.inspect

def method *list
	p list.inspect
end
method 1,2,3,4,5
args=[6,7,8,9]
method args
method *args
method 1,2,[3,4],*[5,6]