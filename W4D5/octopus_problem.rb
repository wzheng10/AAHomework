# Big O-ctopus and Biggest Fish
array =['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

#quadratic Bubble Sort
def bubble_sort(array)
    sorted = false

    until sorted
        sorted = true
        (0...array.length-1).each do |idx|
            if array[idx].length > array[idx +1].length
                array[idx] , array[idx + 1] = array[idx + 1], array[idx]
                sorted = false
            end
        end
    end

    array
end

p bubble_sort(array).last
# p bubble_sort([2, 8, 5, 2, 6])

#O(n log n) Merge_sort
def merge_sort(array)
    return array if array.length <= 1

    mid = array.length / 2

    left = merge_sort(array.take(mid)),
    right = merge_sort(array.drop(mid))
    merge(left, right)
end

def merge(left, right)
    merged = []
    until left.empty? || right.empty?
        if left.first.length < right.first.length
            merged << left.shift
        else
            merged << right.shift
        end
        # merge << ((left.first < right.first) ?  left.shift : right.shift)
    end

    merged + left + right
end
p merge_sort(array).last

# O(n)
array1 =['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def linear(array)

    biggest = array.first
    array.each do |ele|
        if ele.length > biggest.length
            biggest = ele
        end
    end
    biggest
end

p linear(array1)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# O(n)
def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |move, idx|
        if direction == move
            return idx
        end
    end
end
p slow_dance("up", tiles_array) # => 0

p slow_dance("right-down", tiles_array)# => 3

#O(1)
new_tiles_data_structure = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}
def fast_dance(direction, new_tiles_data_structure) 
    new_tiles_data_structure[direction]
end


p fast_dance("up", new_tiles_data_structure) #=> 0

p fast_dance("right-down", new_tiles_data_structure) #=> 3