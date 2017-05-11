require "pry"
require "./lib/linked_list"

class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end


  def append(words)
    sep_words = words.split
    sep_words.each do |word|
      list.append(word)
    end
  end

  def count
    list.count
  end

  def play
    @rate = 150
    @voice = "Karen"

    `say -r #{@rate} -v #{@voice} #{list.to_string}`
  end
  #binding.pry
end
