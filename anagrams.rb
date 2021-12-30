##PHASE I
def first_anagram?(str1, str2) #time complexity O(n!)
    str1_array = str1.chars #O(1)
    perms = str1_array.permutation.to_a #O(n!)
    perms.each do |perm|    #O(n)
        if perm.join("") == str2  #O(1)
            return true
        end
    end
    false 
end

# p first_anagram?("eat", "tea")        #=>true
# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

##PHASE II
def second_anagram?(str1, str2)
    str1.each_char.with_index do |char, i|
        # other_char =
        index = str2.index(char)
        str2[index] = ""
        # str2.delete(other_char)
    end
    str2.empty?

end

p second_anagram?("eat", "tea")        #=>true
p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true


