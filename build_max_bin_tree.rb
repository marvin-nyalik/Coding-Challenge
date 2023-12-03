# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}

def construct_maximum_binary_tree(nums)
    return nil if nums.nil? || nums.empty?
    current = nums.max
    left = nums[0...nums.index(current)]
    right = nums[nums.index(current) + 1..nums.size-1]
    nums.delete_at(nums.index(current))
    root = TreeNode.new(current)

    root.left = construct_maximum_binary_tree(left)
    root.right = construct_maximum_binary_tree(right)
    
    root
end
