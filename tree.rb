# Example of Self-Referential Data Structures - A Binary Tree

class TreeNode
    attr_accessor :value, :left, :right
    
    # The Tree node contains a value, and a pointer to two children - left and right 
    # Values lesser than this node will be inserted on its left
    # Values greater than it will be inserted on its right
    def initialize val,left,right
        @value = val
        
            fsdjks djks df
        
 
        @right = right
    end
end

class BinarySearchTree
    
    # Initialize the Root Node
    def initialize val
        puts "Initializing with: " + val.to_s
        @root = TreeNode.new(val,nil,nil)   
    end

    # Pre-Order Traversal
    def preOrderTraversal(node= @root)
        return if (node == nil)
        preOrderTraversal(node.left)
        preOrderTraversal(node.right)
        puts node.value.to_s
    end

    # Post-Order Traversal
    def postOrderTraversal(node = @root)
        return if (node == nil)
        puts node.value.to_s
        postOrderTraversal(node.left)
        postOrderTraversal(node.right)
    end

    # In-Order Traversal : Displays the final output in sorted order
    # Display smaller children first (by going left)
    # Then display the value in the current node 
    # Then display the larger children on the right
    def inOrderTraversal(node = @root)
        return if (node == nil)
        inOrderTraversal(node.left)
        puts node.value.to_s
        inOrderTraversal(node.right)
    end

     
    # Inserting a value
    # When value > current node, go towards the right
    # when value < current node, go towards the left
    # when you hit a nil node, it means, the new node should be created there
    # Duplicate values are not inserted in the tree
    def insert(value)
        puts "Inserting :" + value.to_s
        node = @root
        while nil != node
            if (value < node.value) && (node.left == nil)
                node.left = TreeNode.new(value,nil,nil)
            elsif  (value > node.value) && (node.right == nil)
                node.right = TreeNode.new(value,nil,nil)
            elsif (value < node.value)
                node = node.left
            elsif (value > node.value)
                node = node.right
            else
                return
            end
        end
    end
end

bst = BinarySearchTree.new(10)
bst.insert(11)
bst.insert(9)
bst.insert(5)
bst.insert(7)
bst.insert(18)
bst.insert(17)
bst.insert(4)
bst.insert(19)
# Demonstrating Different Kinds of Traversals
puts "In-Order Traversal:"
bst.inOrderTraversal
puts "Pre-Order Traversal:"
bst.preOrderTraversal
puts "Post-Order Traversal:"
bst.postOrderTraversal

=begin

Output :
Initializing with: 10
Inserting :11
Inserting :9
Inserting :5
Inserting :7
Inserting :18
Inserting :17
In-Order Traversal:
5
7
9
10
11
17
18
Pre-Order Traversal:
7
5
9
17
18
11
10
Post-Order Traversal:
10
9
5
7
11
18
17

=end
