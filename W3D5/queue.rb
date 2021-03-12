class Queue
    attr_reader :line

    def initialize 
        @line = []
    end

    def enqueue(el)
        line.push(el)
    end

    def dequeue
        line.shift
    end

    def peek
        line.first
    end
end

line = Queue.new
p line.enqueue(1)
p line.enqueue(2)
p line.enqueue(3)
p line
p line.dequeue
p line
p line.peek