#class of product which uses hash as an initializer.
class Product

	def initialize(product_details)
		@name = product_details["name"]
		@price = product_details["price"]
		@unit = product_details["unit"]
	end

	def details
		"#{@name} - #{@price} - #{@unit}"
	end

	def get_name
		@name
	end

	def get_price
		@price
	end

	def get_unit
		@unit
	end

end
 
#create an array called products , create objects p1,p2,p3 and load attrtibute values through hash

#1)load objects p1,p2,p3 into the array
Products = Array.new 0
p1 = Product.new({"name" => "ipad","price" => 17000,"unit" => 25})
p2 = Product.new({"name" => "mac book","price" => 150000,"unit" => 50})
p3 = Product.new({"name" => "mac air","price" => 75000,"unit" => 10})
Products.push(p1,p2,p3)
#puts p1.details, p2.details,p3.details
puts Products.to_s

#2)search product by name
puts "Enter the product name"
input_name = gets.chomp
puts "#{"*" * 50}"
=begin
found = 0
Products.each do |product|
	if input_name == product.get_name
		puts "Product #{input_name} is found ===> : #{product.details}" 
		puts "#{"*" * 50}"
		found = 1
	end
end
=end

#use array find method for 2nd part
product = Products.find{|product| product.get_name == input_name}
if !product.nil?
	puts " #{input_name} is found"
	puts "#{"*" * 50}"
else
	puts " #{input_name} out of stock"
	puts "#{"*" * 50}"
end

=begin
if found == 0
	puts "Product #{input_name} not found " 
	puts "#{"*" * 50}"
end
=end

#3)search all products where unit > 40
Products.each do |product|
	if product.get_unit > 40
		puts "Product with unit > 40 is : #{product.details}"
		puts "#{"*" * 50}"
	end
end

#4)total stock
total_stock = 0
Products.each do |product|
	puts "Total stock of #{product.get_name} is : #{product.get_unit}"
	total_stock += product.get_unit
end
puts "Total stock of all products is : #{total_stock}"
puts "#{"*" * 50}"

#5)total stock value
total_stock_value = 0
Products.each do |product|
	puts "Total stock value of #{product.get_name} is #{product.get_price * product.get_unit}"
	total_stock_value += product.get_price * product.get_unit
end
puts "Total stock value of all the products is #{total_stock_value}"
puts "#{"*" * 50}"
