puts "Enter your name"
name = gets
puts "Welcome to the game " + name
target = Random.rand(100)
puts "The random target number generated is #{target}"
max_chance = 5
user_chance = 0
range1 = 0
range2 = 100
while user_chance < max_chance
	puts " Guess a number between #{range1} to #{range2}"
    user_guess = gets.to_i
    if user_guess <= range1 || user_guess >= range2
    	puts "Invalid Input! Try again :) "
    	next
    end
	if user_guess < target
		puts "#{user_guess} is too low"
		range1 = user_guess
	elsif user_guess > target
		puts " #{user_guess} is too high"
		range2 = user_guess
	else
		puts "Congratulations!!! You have guessed right!!!"
		break
	end
	user_chance += 1
	
end
puts "The target random number was #{target}"