require_relative "00_tree_node"

class KnightPathFinder
  attr_reader :init_pos
  
  def initialize(pos=[0,0])
    @init_pos = pos
  end
  
  def find_path(pos)
    
  end
end 

git filter-branch -f --env-filter "GIT_AUTHOR_NAME='Safuh95'; GIT_AUTHOR_EMAIL='safoh95@windowslive.com'; GIT_COMMITTER_NAME='Safuh Alsarayji'; GIT_COMMITTER_EMAIL='safoh95@windowslive.com';" HEAD