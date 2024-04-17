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

def find_mode(root)
    return [] if root.nil?
    stack = [root]
    counter = {}

    until stack.empty?
        cur = stack.pop
        val = cur.val
        if counter.has_key?(val.to_s)
          counter[val.to_s] += 1
        else
          counter[val.to_s] = 1
        end

        stack << cur.left if cur.left
        stack << cur.right if cur.right
    end
    max_val = counter.values.max
    results = []

    counter.each do |k,v|
        next if v != max_val
        results << k.to_i
    end

    results
end
