def factorial(n)
  result = 1
  n.times do |i|
    #p i
    result *= i + 1
  end
  result
end

puts "1 factorial calculated with a loop: #{factorial(1)}"
puts "10 factorial calculated with a loop: #{factorial(10)}"

def recursive_factorial_debug(n)
  puts "Comupting factorial(#{n})"
  if n < 1
    puts "factorial(#{n}) == 1 since #{n} < 1"
    return 1
  else
    puts "let's compute factorial(#{n}) == #{n} * factorial(#{n-1})"
  end
  result = recursive_factorial_debug(n - 1) * n
  puts "So factorial(#{n}) == factorial(#{n-1}) * #{n} == #{result}"
  result
end

recursive_factorial_debug(10)

def recursive_factorial(n)
  n < 2 ? 1 : factorial(n-1) * n
end

puts recursive_factorial(10)