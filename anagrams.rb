

def first_anagram?(str1, str2)
    anagrams = []
    (0...str1.length - 1).each do |i|
        (i...str1.length).each do |j|
            anagrams << str1[i..j] if str1[i..j] == str1[i..j]
        end
    end

end


anagram?("gizmo", "sally")    #=> false
anagram?("elvis", "lives")    #=> true