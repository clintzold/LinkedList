require_relative 'linked_list'

#Creates a new list and populates it with nodes
my_list = LinkedList.new()
my_list.append("Node1")
my_list.append("Node2")
my_list.append("Node3")
my_list.append("Node4")
my_list.append("Node5")

my_list.prepend('This node goes to the begging')  #adds a node to the start of the list
my_list.size  #returns number of nodes
my_list.tail  #returns the last node
my_list.at(5) #returns node at index 5
my_list.pop   #removes and returns last node
my_list.contains?('Non-existant') #returns false
my_list.contains?("Node5")  #returns true
my_list.find("Node4") #returns index
my_list.to_s  #prints list structure as a string
puts my_list  #works the same as #to_s
