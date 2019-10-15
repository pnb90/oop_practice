class Tree
  attr_accessor :christmas_tree
  def initialize(levels)
    @christmas_tree = []

    numbers = levels - 1
    levels.times do |index|
      tree_row = Row.new.level
      looper = index + 1 
      numbers.times { tree_row << " " }
      looper.times { tree_row << add_left }
      tree_row << add_middle
      looper.times { tree_row << add_right }

      @christmas_tree << tree_row
      numbers -= 1
    end
    @christmas_tree << add_root(levels)
  end

  def add_right
    RightLeft.new.right
  end

  def add_middle
    Stem.new.bark
  end

  def add_left
    LeftLeaf.new.left
  end

  def add_root(number)
    Root.new(number).root
  end
end

class Row
  attr_accessor :level
  def initialize
    @level = []
  end
end

class LeftLeaf
  attr_reader :left
  def initialize
    @left = "/"
  end
end

class RightLeft
  attr_reader :right
  def initialize
    @right = "\\"
  end
end

class Stem
  attr_reader :bark
  def initialize
    @bark = "|"
  end
end

class Root
  attr_reader :root

  def initialize(levels)
    @root = []
    levels.times { @root << " " }
    @root << "|"
  end
end

tree = Tree.new(5)

tree.christmas_tree.each do |level|
  level.each { |thing| print thing }
  puts ""
end 