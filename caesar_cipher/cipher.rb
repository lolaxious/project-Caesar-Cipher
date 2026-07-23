def caesar_cipher(string, shift)
  string.chars.map do |char|
    base = char.ord.between?(65, 90) ? 65 : 97
    
    if char.match?(/[A-Za-z]/)
      ((char.ord - base + shift) % 26 + base).chr
    else
      char
    end
  end.join
end

# Example 
puts caesar_cipher("What a string!", 5) 
puts caesar_cipher("Hello!",9)
puts caesar_cipher("My name is Grace!", 75)
