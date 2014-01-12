ar=["1","2","3"]
ar.each { |item| puts item}

x=5
y=2
if x<5 and y==1
	puts x
elsif x==5 or y==2
	puts "zero"		
else
	puts x%5
end

unless x==7
	puts "not se7en"
end
case x
when 1 then
	puts "it's one"
when 7 then
	puts "it's seven"
else
	puts "not one or seven"	
end
y=1
while y<=5
	puts y
	y+=1
end
y=0
until y==3
	y+=1
	puts y	
end
nums=[1,2,3,54]
for num in nums
	puts num
end
i=0
for i in 0..5
   if i < 2 then
      next
   end
   puts "Value of local variable is #{i}"
end
puts i
#infinite loop
#for i in 0..5
 #  if i < 2 then
  #    puts "Value of local variable is #{i}"
   #   redo
   #end
#end
#retry
#