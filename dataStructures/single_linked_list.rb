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

  #iterative way of finding value
  def find(val)
    return if !@head
    node = @head
    while node
      return true if node.value == val
      node = node.next
    end
    return false
  end

  #recursive way of finding value
  def find_recursive(head = @head, val)
    return false if !@head
    node = @head
    return true if node.value == val
    return find_recursive(node.next, val)
  end

  #reverse linked list
  def reverse_list
      current = @head
      previous = nil
      return if !@head || !@head.next
      while (current!= nil)
          temp = current.next
          current.next = previous
          previous = current
          current = temp
      end
       @head = previous
  end
end

linkedList = LinkedList.new(3)
linkedList.append(5)
linkedList.append(8)
linkedList.append(4)
##linkedList.delete(3)
##linkedList.delete(3)
p linkedList.print
 linkedList.reverse_list
p linkedList.print
#p linkedList.find_recursive(nil, 9)



