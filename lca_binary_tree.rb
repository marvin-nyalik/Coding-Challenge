# # Definition for a binary tree node.
# # class TreeNode
# #     attr_accessor :val, :left, :right
# #     def initialize(val)
# #         @val = val
# #         @left, @right = nil, nil
# #     end
# # end

# # @param {TreeNode} root
# # @param {TreeNode} p
# # @param {TreeNode} q
# # @return {TreeNode}
# def lowest_common_ancestor(root, p, q)
#     return root if p == root || q == root
#     cur = root
#     while cur
#         if p.val < cur.val && q.val < cur.val
#             cur = cur.left
#         elsif p.val > cur.val && q.val > cur.val
#             cur = cur.right
#         else
#             return cur
#         end
#     end
# end

def lowest_common_ancestor(root, p, q)
    return root if root.nil? || p==root || q==root

    left = lowest_common_ancestor(root.left, p, q)
    right = lowest_common_ancestor(root.right, p, q)

    return root if left && right 
    
    left || right
end

def lowest_common_ancestor(root, p, q)
    return nil unless root
    return root if [p, q].include?(root)
    left = lowest_common_ancestor(root.left, p, q)
    right = lowest_common_ancestor(root.right, p,q)
    return root if left && right
    left || right
end