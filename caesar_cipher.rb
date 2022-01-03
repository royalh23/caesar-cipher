require "pry-byebug"

def caesar_cipher(string, shift_factor)
  # An array to store the letters of the encoded string
  final_str_array = []

  # Alphabet array
  alphabet = ("a".."z").to_a

  # An array to store the letters of the given string separately
  first_array = string.split("")

  # Looping over the arrays
  alphabet.each do |alphabet_letter|
    first_array.each do |string_letter|
      if string_letter == alphabet_letter
        index = alphabet.index(alphabet_letter) + shift_factor
        final_str_array.push(alphabet[index])
      end
    end
  end
  final_string = final_str_array.join
end

puts caesar_cipher("abcd", 5)