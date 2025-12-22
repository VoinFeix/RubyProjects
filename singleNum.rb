
# Single Number
# Returns the number which appears once in an array
=begin
def singleNum(nums)
  h = {}
  for i in 0...nums.length do
    h[nums[i].to_s] = 0
  end
#  print "H: ", h, "\n\n"
  
  for i in nums.each do 
    h[i.to_s] += 1
  end
# print "H: ", h, "\n"

  h.each do |num, times|
    if times==1
      return num
    else
      next
    end
  end
end
=end

def singleNum(nums)
  result = 0
  for num in nums.each do
    result ^= num
  end
  return result
end

def main()
  a = singleNum([1, 2, 2, 3, 2, 5, 4])
  print "Result: #{a}\n"    # Result: 1

end

main()

