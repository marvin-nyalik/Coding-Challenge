# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {Integer}
def pair_sum(head)
    values = []
    current = head
    while current && current.val
       values << current.val
       current = current.next
    end

    left = 0
    right = values.length - 1
    max = 0

    while left < right
       s = values[left] + values[right]
       max = [max, s].max
       left += 1
       right -= 1
    end
    max
end
