gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require "pry"


class JungleTest < Minitest::Test
  def test_can_initialize_node_class
    nodes = Node.new("plop")
    assert_equal Node, nodes.class
  end

  def test_data_returns_plop
    node = Node.new("plop")
    assert "plop", node.data
  end

  def test_next_node_returns_nil_by_default
    node = Node.new("Hello")
    assert_nil nil, node.next_node
  end

  def test_next_node_is_not_nil_given_data
    node = Node.new("Hello", "Johnbro")
    assert "Johnbro", node.next_node
  end
end
