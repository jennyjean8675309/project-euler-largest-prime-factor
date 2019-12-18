require 'pry'
# Enter your procedural solution here!
# The prime factors of 13195 are 5, 7, 13 and 29. The largest prime factor in this case is 29.
# What is the largest prime factor of the number 600851475143 ?

# Write a method to check if a number is prime

def isPrime?(num)
    (2...num).each do |rangeNum|
        if num % rangeNum == 0
            return false
        end
    end
    return true
end

# Write a method to check if a number is a factor of a given number

def isFactor?(num, target)
    if target % num == 0
        return true
    else
        return false
    end
end

# Write a method to check for both and return the first prime factor
def get_first_prime_factor(limit)
    (2..limit).each do |rangeNum|
        if isPrime?(rangeNum) && isFactor?(rangeNum, limit)
            return rangeNum
        end
    end
end

# puts 'testing isPrime?'
# puts "10, #{isPrime?(10)}"
# puts "13, #{isPrime?(13)}"

# puts 'testing isFactor?'
# puts "2, 6 - #{isFactor?(2, 6)}"
# puts "3, 10 - #{isFactor?(3, 10)}"

# puts 'testing get_first_prime_factor'
# puts "20 - #{get_first_prime_factor(20)}"
# puts "9 - #{get_first_prime_factor(9)}"
# puts "600851475143 - #{get_first_prime_factor(600851475143)}"

# Now that I have the first prime factor I can split my range, and continue checking for the first prime factor for the remaining numbers greater than the first prime factor

# def largest_prime_factor(limit)
#     number = limit
#     prime_factors = []
#     n = number
#     until isPrime?(n)
#         # until the number (based on limit) is prime
#         # if the number we're checking for, say 7, is prime, then we know that that number would itself be the largest prime factor
#         prime_factor = get_first_prime_factor(n)
#         puts "prime factor, #{prime_factor}"
#         prime_factors << prime_factor
#         n = n / prime_factor
#         # here, the until loop will keep running, only this time we reset n
#         # if n was 90, the first prime factor would be 5, and now the until loop runs again with n equal to 18
#         # the first prime factor of 18 is 3, so the the until loops runs with n equal to 18
#         # puts "prime factor - #{prime_factor} && n - #{n}"
#     end
#     # because n is being divided every time by the prime factor, n is also going to be a prime factor (on the last iteration) so we also need to collect n after the until loop runs
#     prime_factors << n
#     return prime_factors.max
# end

puts 'testing largest_prime_factor'
puts "90 - #{largest_prime_factor(18)}"
puts "48 - #{largest_prime_factor(48)}"
puts "7 - #{largest_prime_factor(7)}"
puts "600851475143 - #{largest_prime_factor(600851475143)}"

# Could not get this to run in my terminal... my computer killed the process at almost 6 minutes in!!!



def largest_prime_factor(input)
    prime = input
    (2..Math.sqrt(input).to_i).each do |i|
        # Here we use the square root function to cut our range down drastically
      break if prime <= 1
      while (prime > i && prime % i == 0) do
        prime /= i
        puts "prime - #{prime}, i - #{i}"
      end
    end
    prime
end

  puts 'testing largest_prime_factor'
  puts "90 - #{largest_prime_factor(90)}"
  puts "48 - #{largest_prime_factor(48)}"
  puts "600851475143 - #{largest_prime_factor(600851475143)}"
  puts "13 - #{largest_prime_factor(13)}"


# def largest_prime_factor(13)
#     prime = 13
#     (2..Math.sqrt(13).to_i).each do |i| # this sets my range from (2..3)
#         break if prime <= 1
#         prime /= i while (prime > i && prime % i == 0)
#         # here the prime number is reset 
#             # for 2, it is NOT reset to 6 (13/2 - Ruby won't calculate the result as a float)
#             # because 6 is greater than 2, but 13 % 2 is NOT equal to zero, the while condition is not met, and the loop exits
#     end
#     prime # and so 13 is returned
#  end

 # largest_prime_factor(90)
    # prime = 90
    # (2..Math.sqrt(90).to_i).each do |i|     (this sets the range from (2..9))
        # while conditional (90 is greater than 2 && 90 % 2 == 0) - so the prime is reset to 90/2 (prime = 45)
        # (still in the while loop..., i is still equal to 2)
        # while conditional (45 is greater than 2, but 45 % 2 is NOT EQUAL to 0) so we break out of the while loop
    # (each loop continues..., i is equal to 3)
        # while conditional (45 is is greater than 3 && 45 % 3 == 0) - so the the prime is reset to 45/3 (prime = 15)
        # (still in the while loop..., i is still equal to 3)
        # while conditional (15 is greater than 3 && 15 % 3 == 0) - so the prime is reset to 15/3 (prime = 5)
        # (still in the while loop..., i is still equal to 3)
        # while conditional (5 is greater than 3, but 5 % 3 is NOT EQUAL to 0) so we break out of the while loop
    # (each loop continues...,i is equal to 4)
        # while conditional (5 is greater than 4, but 5 % 4 is NOT EQUAL to 0) so we break out of the while loop
    # (each loop continues..., i is equal to 5)
        # while conditional (5 is NOT GREATER THAN 5) so we break out of the while loop
    # (each loop continues..., i is equal to 6)
        # while conditional (5 is NOT GREATER THAN 6) so we break out of the while loop
    # (each loop continues..., i is equal to 7)
        # while conditional (5 is NOT GREATER THAN 7) so we break out of the while loop
    # (each loop continues..., i is equal to 8)
        # while conditional (5 is NOT GREATER THAN 8) so we break out of the while loop
    # (each loop continues..., i is equal to 9)
        # while conditional (5 is NOT GREATER THAN 9) so we break out of the while loop
    # each loop completed
    # prime (5) is returned

    # 600,851,475,143

