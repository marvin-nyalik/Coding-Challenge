class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end
  
def merge_k_lists(lists)
  return nil if lists.empty?
  return lists.first if lists.length == 1
  mid = lists.length / 2
  left = lists[0...mid]
  right = lists[mid..-1]
  merge(merge_k_lists(left), merge_k_lists(right))
end

def merge(l1, l2)
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

    current.next = l1 if l1
    current.next = l2 if l2

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

input_lists = [[1, 4, 5], [1, 3, 4], [2, 6]]
lists = input_lists.map { |arr| array_to_linked_list(arr) }


result = merge_k_lists(lists)

while result
  print "#{result.val} -> "
  result = result.next
end
