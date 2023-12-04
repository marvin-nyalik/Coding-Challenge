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
# @return {Integer}

def max_level_sum(root)
    return nil if root.nil?
    q = [root]
    level = 1
    max_level = 1
    max_sum = root.val

    until q.empty?
        sum = 0
        q.size.times do
            cur = q.shift
            sum += cur.val
            q << cur.right if cur.right
            q << cur.left if cur.left
        end

        if sum > max_sum
            max_level = level
            max_sum = sum
        end

        level += 1
    end

    max_level
end
