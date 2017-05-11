require "./lib/jungle_beat"
require "./lib/linked_list"
require "pry"

gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class JungleBeatTest < Minitest::Test

  def test_if_new_jb_list_created
    jb = JungleBeat.new
    assert jb
  end

  def test_does_it_append_words
    jb = JungleBeat.new
    jb.append("boop")
    assert jb.append("boop")
  end

end
