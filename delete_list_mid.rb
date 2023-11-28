def delete_mid(head)
  current = head
  length = 0
  while current
    length += 1
    current = current.next
  end

  mid = length / 2
  cur = head
  prev = nil
  start = -1

  while cur
    start += 1
    next_node = cur.next

    if start == mid
      if prev
        prev.next = cur.next
      else
        return nil
      end
      break
    end
    prev = cur
    cur = next_node
  end
  head
end
