

def first_anagram?(str1, str2)
    str1_array = str1.chars
    str1_array.permutation.each do |perm|
        return true if perm == str2
    end
    false
end


p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true