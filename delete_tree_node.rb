# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} key
# @return {TreeNode}

def delete_node(root, key)
    return root if root.nil?
  
    if key < root.val
      root.left = delete_node(root.left, key)
    elsif key > root.val
      root.right = delete_node(root.right, key)
    else
      # Node with only one child or no child
      return root.right if root.left.nil?
      return root.left if root.right.nil?
  
      # Node with two children
      root.val = find_min(root.right).val
      root.right = delete_node(root.right, root.val)
    end
  
    root
  end
  
def find_min(node)
    current = node
    current = current.left until current.left.nil?
    current
end
  