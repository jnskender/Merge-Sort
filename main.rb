def merge_sort(array)
    return array if array.length == 1
    middle = array.length / 2
    left = merge_sort(array[0...middle]) #Continue to break down to individual values
    right = merge_sort(array[middle..-1])

   merge(left, right)
end

def merge(left, right)
    merged = []
    while !left.empty? && !right.empty?
        if left.first <= right.first
            merged << left.shift
        elsif left.first > right.first
            merged << right.shift
        end
    end
    merged += (left.empty? ? right : left)
end

array = [2, 6, 3, 5, 5, 6, 9, 1, 0]

puts("#{array} => #{merge_sort(array)}")
