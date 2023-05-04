require 'byebug'
class Stack

    attr_reader :stack

    attr_reader :limit

    def initialize limit = nil
        @stack = []
        @limit = limit
    end

    def push element
        if limit && stack.length >= limit
            raise "Stack Overflow"
        end
        stack.push(element)
    end

    def pop
        stack.pop
    end

    def peek 
        stack.last
    end

    def size
        stack.length
    end

    def empty?
        stack.empty?
    end

    def full?
        stack.length === limit
    end

    def search target
        index = stack.rindex(target)
        index ? stack.length - (index + 1): -1
    end
end