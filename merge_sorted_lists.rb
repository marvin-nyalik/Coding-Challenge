class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end
  
def merge_sorted_list(l1, l2)
    dummy = ListNode.new
    current = dummy

    while l1 && l2
        if l1.val <= l2.val
          current.next = l1
          l1 = l1.next
        else
          current.next = l2
          l2 = l2.next
        end
        current = current.next
    end

    current.next = l1 || l2

    dummy.next
end

def array_to_linked_list(arr)
  return nil if arr.empty?
  head = ListNode.new(arr[0])
  current = head

  (1...arr.length).each do |i|
    current.next = ListNode.new(arr[i])
    current = current.next
  end

  head
end

result = merge_k_lists(lists)

while result
  print "#{result.val} -> "
  result = result.next
end
