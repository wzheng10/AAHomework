class LRUCache
    def initialize(size)
        @size = size
        @cache = []
    end

    def count
        @cache.count
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(ele)
            @cache << el
        elsif count >= @size
            @cache.shift
            @cache << el
        else
            @cache << el
        end
    end
    def show
        p @cache
        nil
    end
     
end

# johnny_cache = LRUCache.new(4)

#   johnny_cache.add("I walk the line")
#   johnny_cache.add(5)

#   johnny_cache.count # => returns 2

#   johnny_cache.add([1,2,3])
#   johnny_cache.add(5)
#   johnny_cache.add(-5)
#   johnny_cache.add({a: 1, b: 2, c: 3})
#   johnny_cache.add([1,2,3,4])
#   johnny_cache.add("I walk the line")
#   johnny_cache.add(:ring_of_fire)
#   johnny_cache.add("I walk the line")
#   johnny_cache.add({a: 1, b: 2, c: 3})


#   johnny_cache.show