# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

def find_longest_word(sentence)
<<<<<<< HEAD
  @sentence = sentence
  @array = [] << sentence.split
  
  find_longest_word = ""
  words = sentence.split(" ")
  words.each do |word|
    find_longest_word = word unless word.length <= find_longest_word.length
  end

  find_longest_word
=======

>>>>>>> eb95bf7c74b5dbc8ae2c61f7946212fcd600e838
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end