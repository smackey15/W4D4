def my_min_1(array)
    return array if array.length == 1

    pivot = array.first 
    left = array[1..-1].select {|ele| pivot > ele}
    right = array[1..-1].select {|ele| pivot <= ele}
    my_min_1(left) + [pivot] + my_min_1(right)
end

    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    p my_min_1(list)  # =>  -5

#Phase I
#First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
#What is the time complexity for this function?