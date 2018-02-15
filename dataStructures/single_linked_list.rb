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

    while node.next
      node.next=node.next.next if node.next.value == val
      node = node.next
    end
  end

  def print
    return 'linked list is empty' if !@head
    node = @head
    nodes = []
    while  node
       nodes << node.value
      node = node.next
    end
     nodes
  end

  def find(val)
    return if !@head
    node = @head
    while node
      return true if node.value == val
      node = node.next
    end
    return false
  end
end

linkedList = LinkedList.new(3)
linkedList.append(5)
linkedList.append(8)
linkedList.append(4)
#linkedList.delete(3)
#linkedList.delete(3)
p linkedList.print

p linkedList.find(9)



