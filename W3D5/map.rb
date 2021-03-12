class Map

    attr_reader :arr

    def initialize 
        @arr = []
    end
    # my_map = [[k1, v1], [k2, v2], [k3, v2]]
    def set(key, value)
        pair_index = arr.index { |pair| pair[0] == key}
        if pair_index
            arr[pair__index][1] = value
        else
            arr.push([key, value])
        end

        value
    end

    def get(key)
        arr.each { |pair| return pair if pair[0] ==key}
    end

    def delete(key)
        value = get(key)
        arr.reject! { |pair| pair[0] == key}
        value
    end

    def show
        deep_dupe(arr)
    end

    def deep_dup(arr)   
        arr.map { |el| el.is_a?(Array) ? deep_dup(el : el)}
    end
end


