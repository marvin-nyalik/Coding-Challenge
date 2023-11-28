# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def reverse_linked_list(head)
  current = head
  prev = nil
  
  while current
    next_node = current.next
    current.next = prev
    prev = current
    current = current.next
  end

  prev
end
