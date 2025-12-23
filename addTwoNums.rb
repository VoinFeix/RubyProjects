
# Add Two Numbers
# Example:
# Input: l1 = [2, 4, 3], l2 = [5, 6, 4]
# Output: [7, 0, 8]
# Explanation: 342 + 465 = 807
# The inputs and outputs are in reverse.

def addTwoNums(l1, l2)
  tmp1 = l1.reverse
  tmp2 = l2.reverse

  temp1 = ''
  temp2 = ''
  for i in 0...tmp1.length do
    temp1 += tmp1[i].to_s
  end

  for j in 0...tmp2.length do
    temp2 += tmp2[j].to_s
  end

  result = temp1.to_i + temp2.to_i
  result = result.to_s
  lst = []
  for k in 0...result.length do
    lst.push(result[k].to_i)
  end

  return lst.reverse
end

def main()
  print "Enter values seperated by spaces.\n"
  print "Ex:L1: 2 4 3 and L2: 5 6 4\n\n"

  print "L1: "
  l1 = gets.chomp.split.map(&:to_i)

  print "L2: "
  l2 = gets.chomp.split.map(&:to_i)
  
  puts ""

  res = addTwoNums(l1, l2)
  print "L1: #{l1}\n"
  print "L2: #{l2}\n"
  print "Result: #{res}\n"
end

main()

