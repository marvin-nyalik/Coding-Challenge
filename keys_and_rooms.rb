# @param {Integer[][]} rooms
# @return {Boolean}

def can_visit_all_rooms(rooms)
    stack = [0]
    visited = Set.new

    until stack.empty?
        cur = stack.pop
        next if visited.member?(cur)
        visited.add(cur)
        rooms[cur].each do |r|
            stack << r
        end
    end
    rooms.size == visited.size
end
