
class Stack
    def initialize
        @ivar = []
    end 

    def push(el)
        @ivar.push(el)
    end

    def pop
        @ivar.pop
    end

    def peek
        @ivar.length >= 1 ? @ivar.first : []
    end
end

class Queue
    def initialize 
        @ivar = []
    end

    def enqueue(el)
        @ivar.push(el)
    end

    def dequeue
        @ivar.shift
    end
    
    def peek
        @ivar.length >= 1 ? @ivar.first : []
    end
end

class Map
    attr_accessor :ivar

    def initialize
        @ivar = []
    end

    def set(key, value)
        @ivar.each_with_index do |pair, i|
            if pair[0] == key
                @ivar[i] = [key, value]
                return @ivar
            end
        end
        @ivar << [key, value]
    end

    def get(key)
        @ivar.each_with_index do |pair, i|
            return @ivar[i][1] if pair[0] == key
        end
    end

    def delete(key)
        @ivar.each_with_index do |pair, i|
            @ivar.delete(@ivar[i]) if pair[0] == key
        end
    end

    def show
        @ivar
    end
end