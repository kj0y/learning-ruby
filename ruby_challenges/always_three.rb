def always_three(user_number)
    puts "Always #{((((user_number+5)*2)-4)/2)-user_number}"
end

puts "Give me a number:"
user_number = gets.to_i

always_three(user_number)
