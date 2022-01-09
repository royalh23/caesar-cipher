def caesar_cipher(string, shift_factor)
  # An array to store the letters of the encoded string
  final_str_array = []

  # Alphabet array
  alphabet = ("a".."z").to_a

  # An array to store the letters of the given string separately
  first_array = string.split("")

  # Looping over the arrays
  first_array.each do |string_letter|
    # Check if the string_letter is a space 
    if string_letter == " "
      final_str_array.push(string_letter)
    end

    # Check if the string_letter is a symbol or a punctuation mark
    if %w(! @ # $ % ^ & * < > ?).include?(string_letter)
      final_str_array.push(string_letter)
    end
    
    # Loop over the alphabet
    alphabet.each do |alphabet_letter|
      if string_letter.downcase == alphabet_letter
        index = alphabet.index(alphabet_letter) + shift_factor

        # Check if the index number exceeds 26 and adjust it accordingly 
        if index >= 26
          index -= 26
        end

        # Check if the string_letter is in uppercase
        if string_letter == string_letter.upcase
          alphabet[index].upcase!
        end
        final_str_array.push(alphabet[index])
      end
    end
  end
  final_string = final_str_array.join
end