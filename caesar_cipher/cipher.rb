# create a method
def caesar_cipher(string, shift)

  # break the string into character
  # loop through every character
  string.chars.map do |char|

    # check if the character is a letter,uppercase,lowercase
    if char.match?(/[A-Z]/)
      ascii = char.ord
      position = ascii - 'A'.ord
      shifted = (position + shift) % 26
      (shifted + "A".ord).chr
      # shift uppercase letter


    elsif char.match?(/[a-z]/)
      ascii = char.ord
      position = ascii - 'a'.ord
      shifted = (position + shift) % 26
      (shifted + "a".ord).chr
      # shift lowercase letter

    else
      char
    end
  end.join
end

# Example 
puts caesar_cipher("What a string!",5) 
puts caesar_cipher("Hello!",9)
puts caesar_cipher("My name is Grace!",75)
puts caesar_cipher("Xyz!",4)
