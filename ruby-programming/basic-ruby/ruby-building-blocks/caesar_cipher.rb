# Caesar Cipher

# In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift 
# cipher, Caesar's code or Caesar shift, is one of the simplest and most
# widely known encryption techniques. It is a type of substitution cipher in
# which each letter in the plaintext is replaced by a letter some fixed
# number of positions down the alphabet. For example, with a left shift of 3,
# D would be replaced by A, E would become B, and so on. The method is named
# after Julius Caesar, who used it in his private correspondence.

# Constants
UPPER_A = 65
UPPER_Z = 90
LOWER_A = 97
LOWER_Z = 122
ALPHABETS = 26

def caesar_cipher string, factor
    # convert string to array of characters
    characters = string.chars
    # check the ascii value of each character
    characters.collect! do |char|
        # char is within A-Z
        if char.ord >= UPPER_A and char.ord <= UPPER_Z    
            # if adding the factor results in a "overflow" 
            if char.ord + factor > UPPER_Z
                # wrap from Z to A
                ((char.ord + factor - UPPER_A) % ALPHABETS + UPPER_A).chr
            else
                # just shift the character
                (char.ord + factor).chr
            end
        # char is within a-z
        elsif char.ord >= LOWER_A and char.ord <= LOWER_Z
            # if adding the factor results in a "overflow"
            if char.ord + factor > LOWER_Z
                # wrap from z to a
                ((char.ord + factor - LOWER_A) % ALPHABETS + LOWER_A).chr
            else
                # just shift the character
                (char.ord + factor).chr
            end
        else
            # do nothing
            char
        end
    end

    # return the string formed by each characters in the array
    characters.join()
end
