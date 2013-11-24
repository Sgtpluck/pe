# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# a**2 + b**2 = c **2
# a+b+c = 1000

sets = []


(2..1000).each do |a|
  ((a+1)..1000).each do |b|
    c = 1000 - (a+b)
    sets << [a, b, c] if c > b
  end
end

triplet = sets.find_all { |array| (array[0]**2) + (array[1]**2) == array[2]**2 }.flatten
triplet.inject(:*)
