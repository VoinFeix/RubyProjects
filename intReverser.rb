
# Integer Reverser

def intReverse(num)
  n = num.to_s
#  print "N: ", n, "\n"
  lst = []
  
  for i in 0...n.length do
    lst.push(n[i])
  end
#  print "List: ", lst, "\n"

  lst = lst.reverse
#  print "RevList: ", lst, "\n"

  tmp = ''
  for i in 0..lst.length do
    tmp += lst[i].to_s
  end
  
#  print "Tmp: ", tmp, "\n"

  if tmp[-1] == "-"
    tmp = "-#{tmp}"
  end
  tmp = tmp.to_i
  
  if tmp < (-2**31) || tmp > (2**31 -1)
    return 0
  else
    return tmp
  end

end

print "Num: "
input = gets.chomp
a = intReverse(input)
puts a


