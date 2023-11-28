class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def odd_even_list(head)
  current = head
  odd_head = odd_tail = ListNode.new
  even_head = even_tail = ListNode.new
  is_odd = true

  while current
    if is_odd
      odd_tail.next = current
      odd_tail = odd_tail.next
    else
      even_tail.next = current
      even_tail = even_tail.next
    end
    is_odd = !is_odd
    current = current.next
  end

  even_tail.next = nil
  odd_tail.next = even_head.next

  odd_head.next
end