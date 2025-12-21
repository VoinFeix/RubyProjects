

# Factorial Finder

def factorial(n)
  if n<1
    print "Invalid Input\n"
    return
  elsif n==1
    return 1
  else
    return n * factorial(n-1)
  end
end


print "Enter your number: "
input = gets.chomp.to_i
print "Result: #{factorial(input)}\n"
