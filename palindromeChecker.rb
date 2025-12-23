
# Palindrome Checker

def palindromeChecker(text)
  lst = []

  for i in 0...text.length do 
    lst.push(text[i])
  end

  rev_lst = lst.reverse
  tmp = ""

  rev_lst.each do |i|
    tmp += i
  end

  if text.downcase == tmp.downcase
    return true
  else
    return false
  end
end

print "Text: "
input = gets.chomp 

a = palindromeChecker(input)
if a
  print "#{input}: It is a palindrome.\n"
else
  print "#{input}: It is not a palindrome.\n"
end

