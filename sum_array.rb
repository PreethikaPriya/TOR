values = [100,200,300,[125,25,75],300]
puts values.to_s
sum = 0 
values.each do |value|    #value.class?
	if value.is_a? Array
		value.each do |n|
			sum += n
		end
	else
	sum += value
	end
end
puts "Sum of the array is : #{sum}"

#### orrrr######
#puts 100.class

=begin
values.flatten.each do |value|
	sum += value
end
puts "Sum of the array is : #{sum
=end



