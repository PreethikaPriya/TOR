puts "enter value1 :"
a = gets.to_i
puts "enter value2 :"
b = gets.to_i
puts "enter value3 :"
c = gets.to_i
puts a,b,c.to_s
 (a > b) && (a > c) ? (puts "#{a} is greater") : ((b > c) ?  (puts "#{b}is greater") : (puts "#{c} is greater"))
