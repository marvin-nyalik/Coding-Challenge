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
# @return {Integer[]}

def right_side_view(root)
    return [] if root.nil?
    q = [root]
    result = []
    
    until q.empty?
        size = q.length
        rightmost = nil

        size.times do 
            cur = q.shift
            rightmost = cur.val

            q << cur.left if cur.left
            q << cur.right if cur.right
        end
        result << rightmost
    end

    result
end
