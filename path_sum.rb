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
# @return {Boolean}

def has_path_sum(root, target_sum)
    return false if root.nil?
    sum = 0
    stack = [[root, sum]]

    until stack.empty?
        current, sum = stack.pop
        sum += current.val
        
        if current.left.nil? && current.right.nil?
            return true if sum == target_sum
        end

        stack << [current.left, sum] if current.left
        stack << [current.right, sum] if current.right
    end

    false
end