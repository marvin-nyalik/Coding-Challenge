class TreeNode
    attr_accessor :val, :left, :right
  
    def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
end

def longest_zig_zag(root)
    @path_length = 0
    def dfs(node, go_left, steps)
        if node
            @path_length = [@path_length, steps].max
            if go_left
                dfs(node.left, false, steps + 1)
                dfs(node.right, true, 1)
            else
                dfs(node.left, false, 1)
                dfs(node.right, true, steps + 1)
            end
        end
    end

    dfs(root, false, 0)
    dfs(root, true, 0)
    @path_length
end
