# Substrings

# This method takes a word as the first argument and then an array of valid sub-
# strings (your dictionary) as the second argument. It should return a hash lis-
# ting each substring (case insensitive) that was found in the original string 
# and how many times it was found.

def substrings string, dictionary
    result = {}
    # split the word by spaces then sort the array, then loop thru each word
    string.split.sort.each do |word|
        # now loop thru each entry in the dictionary
        dictionary.each do |entry|
            # check if the word contains a specific substring (case insensitive)
            if word.downcase.include? entry
                if result[entry] == nil
                    result[entry] = 1
                else
                    result[entry] += 1
                end
            end
        end
    end
    result
end