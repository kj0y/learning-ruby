count = 0

while count < 100
    count += 1
    if (count%3 == 0) && (count%5 == 0)
        puts "FizzBuzz"
    elsif count%3 == 0
        puts "Fizz"
    elsif count%5 == 0
        puts "Buzz"
    else
        puts count
    end
end
