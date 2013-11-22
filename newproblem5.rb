# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#everyone, please ignore this disgusting mess.

so you can get to 2520 by
10 * 9 * 7 * 4 * 1
7 * 5 * 3 * 3 * 2 * 2 * 2 * 1

prime_factor = []
(2..10).each do |number|
    if number.prime?
      prime_factor.push(number)
    else (1..10).each do |divide_by|
      puts number
      puts divide_by
      puts "This is the #{prime_factor}"
      puts "------"
        if number % divide_by == 0 && divide_by != 1 && divide_by != number
          prime_factor.push(divide_by)
          puts number
          puts divide_by
          puts "This is the #{prime_factor}"
          puts "------"
        end
      end
    end
  end

prime_factor

