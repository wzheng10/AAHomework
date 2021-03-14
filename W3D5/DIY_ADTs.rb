class Stack

   

    def initialize
      # create ivar to store stack here!
      @stack = []   #underlying data structure (array)
    end

    def push(el)    #<<(value)
        #store << value
        #self   #avoid implicit return of the store  by returning self
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
    # def size
    # store.length
    # end

    #def empty?
    # store.empty?
    # end

    # define inspec #called by pry whe we look at an instance (among other places)
    # "#<Stack:#{self.object_id}>" # so we do not expose @store

    #private #can only call private methods within this class
    #everything below this line is private
    #attr_reader :store can only call private methods within this class
    #misspelled getter? loud, clear error
    #misspelled ivar?(instance variable) might not even get caught; at best unclear error
end
stacking = Stack.new

p stacking.push(1)
p stacking.push(2)
p stacking.push(3)
p stacking
p stacking.pop
p stacking
p stacking.peek