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

# Another trial
def good_nodes(root)
  return 0 if root.nil?
  stack = [[root, root.val]]
  count = 0

  until stack.empty?
      node, max_so_far = stack.pop
      count += 1 if node.val >= max_so_far

      max_so_far = [node.val, max_so_far].max
      stack << [node.left, max_so_far] if node.left
      stack << [node.right, max_so_far] if node.right
  end

  count
end