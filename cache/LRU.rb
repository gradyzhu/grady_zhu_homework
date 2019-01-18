class LRUCache
    def initialize(n)
        @cache = []
        @cache_max = n
    end

    def count
      # returns number of elements currently in cache
      @cache.count
    end

    def add(el)
        if @cache.include?(el) && count == cache_max
            @cache.delete(el)
            @cache.unshift(el)
        elsif !@cache.include?(el) && count < cache_max
            @cache.unshift(el)
        else !@cache.include?(el) && count == cache_max
            @cache.pop
            @cache.unshift(el)
        end

        #if element 
      # adds element to cache according to LRU principle
    end

    def show
        p @cache.reverse
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!
    attr_reader :cache_max
  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})

  johnny_cache.show