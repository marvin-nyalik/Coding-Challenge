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
# @return {Integer[][]}
def level_order_bottom(root)
    return [] if root.nil?
    levels = []
    queue = [root]
 
    until queue.empty?
       level_size = queue.size
       level_vals = []
 
       level_size.times do
         cur = queue.shift
         level_vals << cur.val
 
         queue << cur.left if cur.left
         queue << cur.right if cur.right
       end
 
       levels << level_vals
    end
 
    levels.reverse
 end