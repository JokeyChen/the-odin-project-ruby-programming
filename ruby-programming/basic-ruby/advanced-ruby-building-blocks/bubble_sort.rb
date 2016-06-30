# Bubble Sort

# This method takes an array and returns a sorted array using bubble sort method

def bubble_sort elements
    i = elements.size
    while i > 0
        for j in (0...i)
            if j + 1 == elements.size
                # complete bubbling the max element to the end
                next
            end
            if elements[j] > elements[j + 1]
                # swap the two elements
                temp = elements[j + 1]
                elements[j + 1] = elements[j]
                elements[j] = temp
            end
        end
        i -= 1
    end
    elements
end

def bubble_sort_by elements
    return unless block_given?
    
    i = elements.size
    while i > 0
        for j in (0...i)
            if j + 1 == elements.size
                # complete bubbling the max element to the end
                next
            end
            if yield(elements[j], elements[j + 1]) > 0
                # swap the two elements
                temp = elements[j + 1]
                elements[j + 1] = elements[j]
                elements[j] = temp
            end
        end
        i -= 1
    end
    elements
end