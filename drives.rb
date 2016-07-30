drives = { "day1" => [14,3,17,25], "day2" => [100,125,15] , "day3" => [125]}
puts drives
day_km = 0
total_km = 0
avg_km = 0
drives.each do |day,km|
	day_km = km.inject(:+)
	puts "total km driven on #{day} is: #{day_km}km" 
	total_km += day_km
end
avg_km =  (total_km.to_f/drives.length).round(2)
puts "Total km driven is : #{total_km}"
puts "Average km driven is #{avg_km}"
