class LinkedListNode
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
  
  end
  
class Stack
    attr_reader :data
  
    def initialize
        @data = nil
    end
  
    # Push a value onto the stack
    def push(value)
        if @data == nil
            @data = LinkedListNode.new(value)
        else
            @data = LinkedListNode.new(value, @data)
        end
    end
  
    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        removed_item = @data
        @data = @data.next_node
        removed_item.next_node = nil
        removed_item
    end
  
  
    def print_list
  
        list = @data
        while list
            print "#{list.value} --> "
            list = list.next_node
        end
    end
  
  
    def reverse_list
        stack = Stack.new
        list = @data
        while list
            stack.push(list.value)
            list = list.next_node
        end

        return stack

    end
     
  end

x = Stack.new
x.push(5)
x.push(11)
x.push(17)
x.push(2)
x.print_list
puts "-------"
x.reverse_list.print_list