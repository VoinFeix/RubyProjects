
# Calculator

def sum(num1, num2)
  result = num1 + num2
  return result
end

def difference(num1, num2)
  result = num1 - num2
  return result
end

def product(num1, num2)
  result = num1 * num2
  return result
end

def division(num1, num2)
  if num2==0
    puts "Error: Can't Divide with zero!!"
    return
  else
    result = num1 / num2
    return result
  end
end

def power(num1, num2)
  if num2==0
    return 1
  else
    result = num1 ** num2
    return result
  end
end

def main()  
  while true
    print "First number: "
    num1 = gets.chomp.to_i

    print "Sign [+, -, *, /, ^]: "
    sign = gets.chomp
  
    print "Second number: "
    num2 = gets.chomp.to_i
  
    if sign=="+"
      output = sum(num1, num2)
    elsif sign=="-"
      output = difference(num1, num2)
    elsif sign=="*"
      output = product(num1, num2)
    elsif sign=="/"
      output = division(num1, num2)
    elsif sign=="^"
      output = power(num1, num2)
    else
      print "\nInvalid Options: Try again\n"
      break
    end

    print "Result: #{output}\n"

    print "\nContinue [y/n]: "
    choice = gets.chomp
    
    if choice.downcase=='y'
      next
    elsif choice.downcase=='n'
      break
    else
      print "Invalid Choice!!\n"
      return
    end
  end

end


main()

