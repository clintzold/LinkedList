
class LinkedList

attr_accessor :head

def initialize
  @head = nil
end

  #Adds node to beginning of the list
def append(value)
  if self.head.nil?
    self.head = Node.new(value)
  else
    last_node = self.head
    while !last_node.next_node.nil?
      last_node = last_node.next_node
    end
    last_node.next_node = Node.new(value)
  end

  #Adds node to the end of the list
  def prepend(value)
    first_node = self.head
    self.head = Node.new(value, first_node)
  end

  #Returns the number of nodes in the list
  def size
    if self.head.nil?
      return 0
    else
      count = 0 
      current = self.head
      loop do
        count += 1
        break if current.next_node.nil?
        current = current.next_node
      end
      return count
    end
  end

  #Returns final node in life
  def tail
    last_node = self.head
    until last_node.next_node.nil?
      last_node = last_node.next_node
    end
    return last_node
  end

  #Returns node by index position
  def at(index)
    count = 0
    current = self.head
    until count == index || current.nil?
      current = current.next_node
      count += 1
    end
    return current
  end

  #Identical in function to the Array#pop method. Remove and returns the last node of the list
  def pop
    current = self.head
    until current.next_node.next_node.nil?
      current = current.next_node
    end
    removed = current.next_node
    current.next_node = nil
    return removed
  end

  #Checks for a matching value inside the list 
  def contains?(value)
    current = self.head
    until current.value == value || current.next_node.nil?
      current = current.next_node
    end
    if current.next_node.nil? && current.value != value
      return false
    else
      return true
    end
  end

  #Returns index location or nil depending on value's existence
  def find(value)
    count = 0
    current = self.head
    until current.value == value || current.next_node.nil?
      current = current.next_node
      count += 1
    end
    if current.next_node.nil? && current.value != value
      return nil
    else
      return count
    end
  end

  #Prints the list structure as a string
  def to_s
    current = self.head
    until current.next_node.nil?
      print "( #{current.value} ) -> "
      current = current.next_node
    end
    print "nil\n"
  end
  
end


  class Node

    attr_accessor :value, :next_node

    def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
    end

  end

end
