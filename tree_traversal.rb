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
def postorder_traversal(root)
    return [] if root.nil?
    order = []
    order.concat(postorder_traversal(root.left))
    order.concat(postorder_traversal(root.right))
    order << root.val
    order
end

def preorder_traversal(root)
    return [] if root.nil?
    order = []
    order << root.val
    order.concat(postorder_traversal(root.left))
    order.concat(postorder_traversal(root.right))
    order
end

def inorder_traversal(root)
    return [] if root.nil?
    order = []
    order.concat(postorder_traversal(root.left))
    order << root.val
    order.concat(postorder_traversal(root.right))
    order
end

