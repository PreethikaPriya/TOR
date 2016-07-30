#Generate password. 

puts "Create a password of maximum length 10"
puts "Enter the total number of digits : "
tot_num = gets.to_i

puts "Enter the total number of special characters : "
tot_special_char = gets.to_i

puts "Enter the total number of alhpabets :"
tot_alphabet = gets.to_i

if (tot_num + tot_special_char + tot_alphabet) > 10 
	puts "Password exceeds maximum length. Try again!"
else
	numbers = [*(0..9)].sample(tot_num)
	#puts numbers

	special_char = [*('!'..'.')].sample(tot_special_char)
	#puts special_char

	alphabets = [*('a'..'z'),*('A'..'Z')].sample(tot_alphabet)
	#puts alphabets
 
	password = numbers + special_char + alphabets
	puts "The password generated is : #{password.shuffle.join}"
end


=begin
if password.length > 10
	puts "length exceeds 10"
else
puts "The password generated is : #{password.shuffle.join}"
end
=end

=begin
arrays = []
i = 0
while i < tot_num do 
 #arrays.unshift(Random.rand(9))
 arrays.push(Random.rand(9))
 i += 1
end
=end
	
#puts arrays.shuffle.to_s
=begin
alphabets = ([*('A'..'Z'),*('a'...'z')].sample(tot_alphabet).join)
new_alha = alphabets.to_s
puts alphabets
=end

=begin
y = 0
while y < tot_alphabet do
	y +=1
arrays.push([*('A'..'Z'),*('a'...'z')].sample(1).join.chomp)

puts arrays.map { |array| "#{array}"}.join
puts arrays.shuffle.to_s


#
#alhpabet = [*('A'..'Z')].sample(tot_alphabet).join
=end
