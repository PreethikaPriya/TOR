# Program to find total number of positive,negative,even and odd numbers

puts "Please enter 25 numbers: "
num = Array.new()
i = positive = negative = even = odd = 0
MAX_INPUT = 25
while i < MAX_INPUT   do 
	num[i] = gets.to_i
    #if num[i] >= 0 ? positive += 1 : negative += 1
    if num[i] >= 0
    	positive += 1
    else
    	negative += 1
    end
    if num[i].even?
    	even += 1
    else
    	odd += 1
    end
	i += 1
end
puts "total negative numbers are : #{negative}
      total positive numbers are : #{positive}
      total even numbers are : #{even}
      total odd numbers are : #{odd}"
puts num.to_s


=begin

pos_num = []
neg_num = []
even_num = []
odd_num = []

 25.times do
  num = gets.to_i
  numbers.push(num)
end

if num > 0
  pos_num.push(num)
else
  neg_num.push(num)
end

if num.even?
  even_num.push(num)
else
  odd_num.push(num)
end
puts pos_num , pos_num.length etc




