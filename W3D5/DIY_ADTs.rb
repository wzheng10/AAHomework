class Stack

    attr_reader :stack

    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      stack.push(el)
    end

    def pop
      # removes one element from the stack
      stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      stack.last
    end

end
stacking = Stack.new

p stacking.push(1)
p stacking.push(2)
p stacking.push(3)
p stacking
p stacking.pop
p stacking
p stacking.peek