# n * log(n)
#Phase I
#First, write a function that compares each element to every other element of the list. 
#Return the element if all other elements in the array are larger.
#What is the time complexity for this function?
def quick_sort(array)
    return array if array.length <= 1 

    pivot = array.first 
    left = array[1..-1].select {|ele| pivot > ele} 
    right = array[1..-1].select {|ele| pivot <= ele}
    result = quick_sort(left) + [pivot] + quick_sort(right)
end

def my_min_1(array)
    quick_sort(array)[0]
end

    # list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    # p my_min_1(list) # =>  -5

def my_min_2(array)
    # result = array[0]
    # array.each_with_index do |num1, i1|
    #     array.each_with_index do |num2, i2|
    #         if i2 > i1 && num1 < num2
    #             return num1
    #         end
    #     end
    # end
        # array.inject {|acc, el| el if el < acc}
end

#   list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#     p my_min_2(list) # =>  -5

##Phase II

def min(array) #time complexity O(n)
    min = array.first
    array.each do |num|
        min = num if num < min
    end
    min
end

  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    p min(list) # =>  -5



