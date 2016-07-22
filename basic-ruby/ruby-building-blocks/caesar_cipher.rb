# Caesar Cipher

# In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift
# cipher, Caesar's code or Caesar shift, is one of the simplest and most
# widely known encryption techniques. It is a type of substitution cipher in
# which each letter in the plaintext is replaced by a letter some fixed
# number of positions down the alphabet. For example, with a left shift of 3,
# D would be replaced by A, E would become B, and so on. The method is named
# after Julius Caesar, who used it in his private correspondence.
class CaesarCipher
  # Constants
  UPPER_A = 65
  UPPER_Z = 90
  LOWER_A = 97
  LOWER_Z = 122
  ALPHABETS = 26

  def encoder(string, factor)
    # convert string to array of characters
    characters = string.chars
    # check the ascii value of each character
    check_ascii(characters, factor)
    # return the string formed by each characters in the array
    characters.join
  end

  def check_ascii(characters, factor)
    characters.collect! do |char|
      # char is within A-Z
      if char.ord >= UPPER_A && char.ord <= UPPER_Z
        convert_uppercase(char, factor)
      # char is within a-z
      elsif char.ord >= LOWER_A && char.ord <= LOWER_Z
        convert_lowercase(char, factor)
      else
        # do nothing
        char
      end
    end
  end

  def convert_uppercase(char, factor)
    # if adding the factor results in a "overflow"
    if char.ord + factor > UPPER_Z
      # wrap from Z to A
      ((char.ord + factor - UPPER_A) % ALPHABETS + UPPER_A).chr
    else
      # just shift the character
      (char.ord + factor).chr
    end
  end

  def convert_lowercase(char, factor)
    # if adding the factor results in a "overflow"
    if char.ord + factor > LOWER_Z
      # wrap from z to a
      ((char.ord + factor - LOWER_A) % ALPHABETS + LOWER_A).chr
    else
      # just shift the character
      (char.ord + factor).chr
    end
  end
end
