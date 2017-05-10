require_relative "node"
require "pry"

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil

  end

  def append(data)
    current = @head
    if @head == nil
      @head = Node.new(data)
    else
      until current.next_node == nil
        current = current.next_node
      end
      current.next_node = Node.new(data)
     end
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    hold_node = current_node.next_node.data
    current_node.next_node = nil
    hold_node
  end

  def count
   counter = 1
   current = @head
   until current.next_node == nil
     counter += 1
     current = current.next_node
   end
   counter
  end

  def to_string
   sound = ""
   current_node = @head
   sound << current_node.data + ' '
   until current_node.next_node == nil
     current_node = current_node.next_node
       sound = sound + current_node.data + ' '
     end
   sound.chop
  end

  def prepend(data)
   temp = @head
   @head = Node.new(data)
   @head.next_node = temp
  end


  def insert(place,data)
    current_node = @head
     (place - 1).times do
       current_node = current_node.next_node
     end
    last_nodes = current_node.next_node
    current_node.next_node = Node.new(data)
    current_node.next_node.next_node = last_nodes
  end

  def includes?(data)
  current_node = @head
  until current_node == nil
     if current_node.data == data
       return true
     else
    current_node = current_node.next_node
      end
  end
  false
  end
  

  def find(place, return_amount)
    current_node = @head
    sounds = ""
    place.times do
      current_node = current_node.next_node
    end

    sounds << current_node.data
    (return_amount - 1).times do
      current_node = current_node.next_node
      sounds << " #{current_node.data}"
    end
    sounds
  end

end
