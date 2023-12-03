def insert_into_max_tree(root, val)
    if root.nil? || val > root.val
        node = TreeNode.new(val)
        node.left = root
        return node
    else
        root.right = insert_into_max_tree(root.right, val)
    end
    root
end