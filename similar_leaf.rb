# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# using iteration
def leaf_similar(root1, root2)
  leaves1 = find_leaves(root1)
  leaves2 = find_leaves(root2)

  leaves1 == leaves2
end

def find_leaves(root)
  return [] if root.nil?

  leaves = []
  stack = [root]

  until stack.empty?
    current = stack.pop

    if current.left.nil? && current.right.nil?
      leaves << current.val
    end

    stack.push(current.right) if current.right
    stack.push(current.left) if current.left
  end

  leaves
end

Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

#using recursion
def leaf_similar(root1, root2)
    leaves1 = find_leaves(root1)
    leaves2 = find_leaves(root2)
  
    leaves1 == leaves2
  end
  
  def find_leaves(root)
    return [] if root.nil?
  
    if root.left.nil? && root.right.nil?
      [root.val]
    else
      find_leaves(root.left) + find_leaves(root.right)
    end
  end
  
#The recursion made simple
def leaf_similar(root1, root2)
  
  def leaf_values(root)
      return [] if root.nil?

      return [root.val] if root.left.nil? && root.right.nil?

      left_leaves = leaf_values(root.left)
      right_leaves = leaf_values(root.right)
      left_leaves.concat(right_leaves)
  end

  leaf_values(root1) == leaf_values(root2)
end