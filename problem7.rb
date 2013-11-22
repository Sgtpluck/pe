# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?

#this is a brute force method, and takes a long time. It gets me the right answer but I should just improve it.

def is_prime(n)
  for d in 2..(n - Math.sqrt(n))
    return false if (n % d) == 0
  end
  true
end

i = 0
x = 1
while i < 10002
  i+=1 if is_prime(x) == true
  x+=1
end
puts x-1