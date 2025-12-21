
# Collatz Conjecture

def collatz_conjecture(n)
  if n==1
    print "Number: #{n}\n"
    return 1
  elsif n<=1
    print "Number: #{n}\n"
    return -1
  end
  # If number is even
  if n%2==0
    print "Number: #{n} is even => #{n}/2\n"
    num = n/2    
    return collatz_conjecture(num)
  # If number is odd 
  elsif n%2==1
    print "Number: #{n} is odd => 3*#{n} + 1\n"
    num = (3*n) + 1
    return collatz_conjecture(num)
  end
end

def main()
  print "Enter your number: "
  input = gets.chomp.to_i
  
  collatz_conjecture(input)  
end


main()



