# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    right = head
    left = reverse(clone_list(head))
    
    while right
        if right.val != left.val
            return false
        end
        right = right.next
        left = left.next
    end
    return true
end

def reverse(head)
    current = head
    prev = nil

    while current
      next_node =  current.next
      current.next = prev
      prev = current
      current = next_node
    end

    prev
end

def clone_list(head)
    current = head
    new_head = ListNode.new(current.val)
    n_current = new_head

    while current.next
        current = current.next
        l_node = ListNode.new(current.val)
        n_current.next = l_node
        n_current = n_current.next
    end
    new_head
end

'''
This solution can be optimized
1. Find mid point of the liked list
2. Reverse second half of the linked list
3. Compare first half with reversed second half, while reversed second half is true
'''
