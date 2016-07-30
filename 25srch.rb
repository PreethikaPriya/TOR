puts "enter 25 number"
num = Array.new()
i = y = count = 0
MAX_INPUT = 5
#to populate array elements by taking user input.
while i < MAX_INPUT
	num[i] = gets.to_i
	i += 1
end
puts num.to_s
puts "enter the number to be searched:"
search_num = gets.to_i
#to search element in the array.
#while y < MAX_INPUT
#num.include? search_num  try this 
num.each do |value|
	if value.to_i == search_num
		count +=1
	end
    y += 1
end
# if element was found, count the number of times it appears
if count > 0
	puts "Number #{search_num} is present in the array #{count} times."
else
	puts " Number #{search_num} is not present in the array."
end


=begin
	numbers = []
	#25.times do
	#	numbers.push(Random.rand(100))
	10.times do
		numbers.push(gets.to_i)
		end

puts "enter num to search"
search = gets.to_i


if numbers.include? search
	puts numbers.count search
	else
		puts "search doesnt exists"
end

  orr
  if number ==search