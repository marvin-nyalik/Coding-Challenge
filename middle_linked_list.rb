# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    size = 0
    current = head

    while current && current.val
        size += 1
        current = current.next
    end

    mid = size / 2
    if mid % 1 == 0.5
        mid = mid.round
    else
        mid = mid.ceil
    end

    index = -1
    cur = head

    while cur
        index += 1
        if index == mid
            return cur
        end
        cur = cur.next
    end
end

def middle_node_optimized(head)
    slow = head
    fast = head

    while fast && fast.next
        slow = slow.next
        fast = fast.next.next
    end

    return slow
end
