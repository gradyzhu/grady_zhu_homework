#need to review quadratic search.


def sluggish_octo(arr)
    longest = ""
    i = 0
    while i < arr.length - 1
        j = 0
        while j < arr.length
            longest = arr[j] if arr[j].length > arr[i].length && arr[j].length > longest.length
            j += 1
        end
        i += 1
    end
    longest
end

def dominant_octo(arr)
    return arr if arr.length <= 1

    mid = arr.length / 2
    sorted_left = dominant_octo(arr.take(mid))
    sorted_right = dominant_octo(arr.drop(mid))

    merge(sorted_left, sorted_right)
end

def merge(left, right)
    merged = []
    until left.empty? || right.empty?
        if left[0].length < right[0].length
            merged << left.shift
        elsif left[0].length > right[0].length
            merged << right.shift 
        else
            merged << left.shift
        end
    end
    merged + left + right 
end

def clever_octo(arr)
    i = arr.length
    longest = ""
    (0...i).each do |i|
        unless i.nil?
            longest = arr[i] if arr[i].length > longest.length
        end
    end
    longest
end

def slow_dance(direction, array)
    array.each_with_index do |dir, i|
        return i if dir == direction
    end
end

def constant_dance(direction, hash)
    hash[direction]
end

hash = {
    "up": 0,
    "right-up": 1,
    "right": 2,
    "right-down": 3,
    "down": 4,
    "left-down": 5,
    "left": 6,
    "left-up": 7
}

__FILE__ == $PROGRAM_NAME

p sluggish_octo(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
p dominant_octo(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']).last
p clever_octo(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
p slow_dance("up", ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ])
p slow_dance("right-down", ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ])
fast_dance("up", new_tiles_data_structure)
fast_dance("right-down", new_tiles_data_structure)