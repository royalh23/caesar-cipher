require "pry-byebug"

def caesar_cipher(string, shift_factor)
  # An array to store the letters of the encoded string
  final_str_array = []

  # Alphabet array
  alphabet = ("a".."z").to_a

  # An array to store the letters of the given string separately
  first_array = string.split("")

  # Looping over the arrays
  first_array.each do |string_letter|
    # Check if the string letter is a space 
    if string_letter == " "
      final_str_array.push(string_letter)
    end
    alphabet.each do |alphabet_letter|
      if string_letter.downcase == alphabet_letter
        index = alphabet.index(alphabet_letter) + shift_factor
        if index >= 26
          index -= 26
        end
        final_str_array.push(alphabet[index])
      end
    end
  end
  final_string = final_str_array.join
end

puts caesar_cipher("What a string!", 5)