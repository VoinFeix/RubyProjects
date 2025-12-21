

# Words Counter

def wordsCounter(text)
  lst = []
  words = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

  for i in 0...text.length do
    for j in words.each do
      if text[i] == j
        lst.push(text[i])
      end
    end
  end

  length = 0
  lst.each do |i|
    if i==' '
      next
    else
        length += 1
    end
  end

  return length
end

print "Text: "
input = gets.chomp

a = wordsCounter(input)
print "Length: #{a}\n"


