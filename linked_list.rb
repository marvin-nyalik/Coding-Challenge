class LinkedList
    attr_accessor :head, :tail
    attr_reader :size
  
    def initialize
      @head = nil
      @tail = nil
      @size = 0
    end
  
    def traverse
      current = @head
      while current
        puts current.data
        current = current.next_node
      end
    end
  
    def add_node(data)
      new_node = Node.new(data)
      if @head.nil?
        @head = new_node
        @tail = new_node
      else
        @tail.next_node = new_node
        @tail = new_node
      end
      @size += 1
    end
  
    def remove_node_at(index)
        return if @head.nil? || index < 0 || index >= @size
      
        if index == 0
          @head = @head.next_node
          @tail = @head if @head.nil?
        else
          current = @head
          (index - 1).times do
            current = current.next_node
          end
      
          current.next_node = current.next_node.next_node
          @tail = current if current.next_node.nil?
        end
      
        @size -= 1
      
        @tail = current if index == @size
      end
      
  
    def update_node_data(index, new_data)
      return if @head.nil? || index < 0 || index >= @size
  
      current = @head
      index.times do
        current = current.next_node
      end
  
      current.data = new_data
    end
end
  