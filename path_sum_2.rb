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
# @return {Integer[][]}

# iterative solution
def path_sum_two(root, target_sum)
    return [] if root.nil?

    output, list = [], []
    stack = [[root, list]]

    until stack.empty?
        current, list = stack.pop
        list << current.val

        if current.left.nil? && current.right.nil? 
            if list.sum == target_sum
                output << list.dup
            end
        end

        stack << [current.left, list.dup] if current.left
        stack << [current.right, list.dup] if current.right
    end

    output
end

# recursive solution
def path_sum(root, target_sum)
    return [] if root.nil?
  
    output = []
  
    def dfs(node, current_path, current_sum, target_sum, output)
      return if node.nil?
  
      current_path << node.val
      current_sum += node.val
  
      if node.left.nil? && node.right.nil? && current_sum == target_sum
        output << current_path.dup
      else
        dfs(node.left, current_path, current_sum, target_sum, output)
        dfs(node.right, current_path, current_sum, target_sum, output)
      end
  
      current_path.pop
    end
  
    dfs(root, [], 0, target_sum, output)
    output
end
  