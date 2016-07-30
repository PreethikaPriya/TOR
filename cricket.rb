puts "enter the cricketers:"
names = gets.chomp.split(/,/)
puts names.to_s
h_player_count = Hash.new 0
names.each do |name|
	h_player_count[name] += 1
end
puts "Result:"
h_player_count.each do |key,value|
	puts "#{key} - #{"*" * value}"
end
