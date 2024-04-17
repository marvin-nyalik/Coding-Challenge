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
# @return {Boolean}

def is_valid_bst(root)
    def validate(node, min_val, max_val)
        return true if node.nil? 

        if (min_val && node.val <= min_val) || (max_val && node.val >= max_val)
            return false
        end

        return validate(node.left, min_val, node.val) && validate(node.right, node.val, max_val)
    end
    validate(root, nil, nil)
end
