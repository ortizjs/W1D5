require "byebug"

module Searchable

  def dfs(target)
    return self if self.value == target
    self.children.each do |child|
      node = child.dfs(target)
      return node unless node.nil?
    end
    nil
  end


  def bfs(target)
    queue = [self]
    until queue.empty? 
      return queue.first if queue.first.value == target
      queue << queue.first.children     
      queue.shift
      queue.flatten!
    end 
    nil
  end
end


class PolyTreeNode
  include Searchable
  attr_reader :children
  def initialize(child_node= nil)
    @parent = nil
    @children = []
    @value = child_node
  end
  
  def inspect
    "<PolyTreeNode value=#{@value} >"
  end
  
  def parent
    @parent
  end
  
  def parent= (value)
    self.parent.children.delete(self) unless self.parent == nil
    if value
      @parent = value
      @parent.children << self unless @parent.children.include?(self)
    else
      @parent = value
    end
  end
  
  def children
    @children
  end
  
  def value
    @value
  end
  
  def add_child(child)
    child.parent = self
  end
  
  def remove_child(child)
    raiseException "error not a child!" unless @children.include?(child) 
    child.parent = nil
  end
end






