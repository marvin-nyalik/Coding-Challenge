def good_nodes(root)
    return 0 if root.nil?
    count = 0
    stack = [[root, root.val]]

    until stack.empty?
      current, max_so_far = stack.pop
      if current.val >= max_so_far
        count += 1
        max_so_far = current.val
      end
      stack << [current.right, max_so_far] if current.right
      stack << [current.left, max_so_far] if current.left
    end
    
    count
end