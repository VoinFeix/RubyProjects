
# String Reverser

def reverse(array)
  return array.reduce([]) { |memo, el| memo.unshift(el) }
end

def strReverse(text)
  lst = []
  for i in 0...text.length do
    lst.push(text[i])
  end

  z = reverse(lst)
  tmp = ''

  for i in z.each do
    tmp = tmp + i
  end
  
  return tmp
end

print "Enter a string: "
input = gets.chomp

print "Result: #{strReverse(input)}\n"


