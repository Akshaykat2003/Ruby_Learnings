

class Node
  attr_accessor :value,:nextNode

  def initialize(value,nextNode = nil)
    self.value = value
    self.nextNode = nextNode
  end
end


class SingleLinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end


  #adding Elements into a list form tail
  def addFromTail(value)
    if(self.head.nil?)
      self.head = Node.new(value,nil)
      return
    else
      lastNode = self.head
      while(!lastNode.nextNode.nil?)
        lastNode = lastNode.nextNode
      end
      lastNode.nextNode = Node.new(value,nil)
    end
  end

  #adding the element form the start
  def addFromStart(value)
    if head.nil?
      self.head = Node.new(value,nil)
      return 
    else
      old_head= head
      self.head = Node.new(value,old_head)
    end
  end
  
#removing the the elements form the list
  def remove(value)
    return if head.nil?
    
    node = self.head
    prev_node = nil
    until(node.nil?)
      if(node.value == value)
        if (!prev_node.nil?)
          prev_node.nextNode = node.nextNode
          return
        else
          self.head = nil
          return
        end
      end
      prev_node = node
      node = node.nextNode
    end
  end


#printing all the added elements present in the list
  def print_List
    node = self.head
    while node
      print "#{node.value}->"
      node = node.nextNode
    end
    puts "nil"
  end


#searching a value in list 
  def search(value)
    node = self.head
    while(!node.nil?)
      if(node.value == value)
        return true
      end
      node = node.nextNode
    end
    return false
  end

#reversed a list 
  def reverseList 
    prev = nil
    current = head
    while current
      next_node = current.nextNode
      current.nextNode = prev
      prev = current
      current = next_node
    end
    self.head = prev
  end

#counting number of nodes in a list
  def countNodes
    count = 0
    current = head
    while current
      count+=1
      current = current.nextNode
    end
    return count
  end
end



ll = SingleLinkedList.new
# ll.addFromTail(10)
# ll.addFromTail(20)
# ll.addFromTail(30)


ll.addFromStart(20)
ll.addFromStart(30)
ll.addFromStart(40)
ll.reverseList
puts "#{ll.countNodes}"

ll.print_List




