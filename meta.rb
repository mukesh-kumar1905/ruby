module Reader
	def my_attr_reader(*ivars)
		ivars.each do |ivar|
			self.class_eval <<-EOT
			def #{ivar} ; @#{ivar} ; end
			EOT
			end
		end
end

class Account
	extend Reader
	my_attr_reader :balance,:name
	def initialize(name);@balance=0;@name=name;end
	def deposit(amt);@balance+=amt;puts "balance =#{balance}";end
	def withdraw(amt);@balance-=amt;puts "balance =#{balance}";end
end

a=Account.new("Mukesh")
puts a.name
a.deposit(200)
a.withdraw(100)
a.deposit(500)