
# Fibonacci Sequence

def fibonacci(n)
  if n < 0
    print("Invalid Input")

  elsif n==0
    return 0

  elsif n==1 || n==2
    return 1

  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

print 'Enter your number: '
input = gets.chomp.to_i
result = "Fibonacci: #{fibonacci(input)}"
puts result
