gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require "pry"


class LinkedListTest < Minitest::Test
  def test_can_initialize_linked_class
    linked_list = LinkedList.new
    assert LinkedList, linked_list.class
  end

  def test_does_head_return_nil
    linked_list = LinkedList.new
    assert_nil nil, linked_list.head
  end

  def test_append_return_first
    linked_list = LinkedList.new
    assert "hi", linked_list.append("hi")
  end

  def test_can_count_number_of_nodes
    linked_list = LinkedList.new
    linked_list.append("mike")
    linked_list.append("john")
    linked_list.append("bobslob")
    assert_equal 3, linked_list.count
  end

  def test_to_string
    linked_list = LinkedList.new
    linked_list.append("mike")
    linked_list.append("gibber")
    assert_equal "mike gibber", linked_list.to_string

  end

  def test_to_prepend
    linked_list = LinkedList.new
    linked_list.append("mike")
    linked_list.append("bob")
    linked_list.append("mary")
    linked_list.prepend("this should be first")
    linked_list.prepend("this should actually really be first")
    assert_equal "this should actually really be first", linked_list.head.data
  end

  def test_to_insert
    linked_list = LinkedList.new
    linked_list.append("mike")
    linked_list.append("anthony")
    linked_list.append("John")
    linked_list.insert(2,"Second")
    assert_equal "Second", linked_list.head.next_node.next_node.data
  end

  def test_does_data_includes
    linked_list = LinkedList.new
    linked_list.append("bobb")
    assert true, linked_list.includes?("bobb")
  end

  def test_data_includes_with_multi_nodes
    linked_list = LinkedList.new
    linked_list.append("katie")
    linked_list.append("heidi")
    linked_list.append("matt")
    linked_list.append("james")
    assert linked_list.includes?("james")
    refute linked_list.includes?("trudy")
  end


  def test_pop_removes_last
    linked_list = LinkedList.new
    linked_list.append("katie")
    linked_list.append("matt")
    assert_equal "matt", linked_list.pop
    assert_nil linked_list.head.next_node
  end

  def test_that_find_works
    linked_list = LinkedList.new
    linked_list.append("katie")
    linked_list.append("matt")
    linked_list.append("james")
    linked_list.append("heidi")
    assert_equal "matt james heidi", linked_list.find(1,3)
  end


end
