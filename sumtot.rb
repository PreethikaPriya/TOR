puts "enter the array value"
num = Array.new() 
num = gets.chomp.split(/,/)
i = sum = 0
=begin
while i < 5
	sum += num[i].to_i
	i += 1
end
=end
puts num
#=begin
num.each do |value|
	if i < 5
	sum += value.to_i
	end
	i += 1
end
#=end
puts num.to_s
puts "sum is #{sum}"	


=begin
	

	
end






