require 'set'

class GraphNode

    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neighbor(node)
        self.neighbor << node
    end

end 

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new() 
    #visited stores the nodes we have come across

    while !queue.empty?     
        #will iterate while the queue is not empty
        node = queue.shift  
        #node is equal to what is being taken out of the first position
        unless visited.include?(node)   
            #unless checks to see if the node has already been visited
            #or goes back to the start of the while
            return node.val if node.val == target_value
            #checks the val of the node to the target_value to see
            #if there is a match
            visited.add(node)
            #if there is no match, the node is added to visited
            queue += node.neighbors
            #node is concatenated into the end of the queue 
        end
    end

    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")
p bfs(a, "f")