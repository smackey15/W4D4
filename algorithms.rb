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

#list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#p min(list) # =>  -5


def largest_contiguous_subsum(list) #time complexity: O(n^3)
    sub_array = []
    (0...list.length).each do |i| #O(n^2)
        (i...list.length).each do |j|
            sub_array << list[i..j] #O(n)
        end
    end
    sum = sub_array.map {|array| array.sum} #O(n)
    sum.max #O(n)
end
  
    
# p largest_contiguous_subsum([-5, -1, -3]) # => -1
# p largest_contiguous_subsum([2, 3, -6, 7, -6, 7]) # => 8
# p largest_contiguous_subsum([5, 3, -7]) # => 8

def subsum(list)
    largest = list.first #2
    current_sum = list.first #2
    list.drop(1).each do |num| #3
        current_sum = current_sum + num # 5
    end
end

p subsum([-5, -1, -3]) # => -1
p subsum([2, 3, -6, 7, -6, 7]) # => 8
p subsum([5, 3, -7]) # => 8

