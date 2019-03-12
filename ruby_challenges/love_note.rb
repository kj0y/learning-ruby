puts "Is your heart still beating? (Y/N)"
heart_beating = gets.chomp.downcase

while (heart_beating == "y")
    puts "I still love you!"
    puts "Is your heart still beating? (Y/N)"
    heart_beating = gets.chomp.downcase
end

puts "You should call a doctor!"


