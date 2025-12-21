

# Vowels Counter

def vowelsCounter(text)
  vowels = ["a", "e", "i", "o", "u"]
  tmp = []

  for i in 0...text.length do
    for j in vowels.each do
      if text[i]==j
        tmp.push(text[i])
      end
    end
  end
  
  temp = {
    "a" => 0,
    "e" => 0,
    "i" => 0,
    "o" => 0,
    "u" => 0,
  }

  for i in tmp.each do
    temp[i] += 1
  end
  return temp
end

print "Text: "
input = gets.chomp

a = vowelsCounter(input)
a.each do |vowel, times|
  if times==0
    next
  end
  print "Vowel: #{vowel}, Times: #{times}\n"
end


