def max_depth(root)
    return 0 if root.nil?
    
    left_depth = max_depth(root.left)
    right_depth = max_depth(root.right)

    [left_depth, right_depth].max + 1
end

def min_depth(root)
    return 0 if root.nil?

    if root.left.nil? || root.right.nil?
        return [min_depth(root.left), min_depth(root.right)].max + 1
    end

    return [min_depth(root.left), min_depth(root.right)].min + 1
end
