class Node
  attr_accessor :next
  attr_reader   :value

  def initialize(val)
    @value = val
    @next = nil
  end
end

class LinkedList
  def initialize(val = nil)
    @head = Node.new(val)
  end

  def append(val)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(val)
  end

  def delete(val)
    return if !@head
    node=@head
    @head= node.next if node.value == val
    if node.next
      until node.next.value == val
          node = node.next
      end
      node.next=node.next.next
    end
  end

  def print
    return 'linked list empty' if !@head
    node = @head
    nodes = []
    while  node
       nodes << node.value
      node = node.next
    end
     nodes
  end
end

linkedList = LinkedList.new(3)
#linkedList.append(5)
#linkedList.append(8)
#linkedList.append(4)
linkedList.delete(3)
linkedList.delete(3)
p linkedList.print



