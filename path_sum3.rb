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
# @param {Integer} target_sum
# @return {Integer}
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
  end
  
  def path_sum(root, target_sum)
    return 0 if root.nil?
    count = dfs(root, target_sum) + path_sum(root.left, target_sum) + path_sum(root.right, target_sum)
    return count
  end
  
  def dfs(node, target_sum, current_sum = 0)
    return 0 if node.nil?
    current_sum += node.val
    count = (current_sum == target_sum ? 1 : 0) + dfs(node.left, target_sum, current_sum) + dfs(node.right, target_sum, current_sum)
    return count
  end