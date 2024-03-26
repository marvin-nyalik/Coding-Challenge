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

# @param {Integer[][]} rooms
# @return {Boolean}
# def can_visit_all_rooms(rooms)
#     stack = [0]
#     visited = Set.new
#     visited.add(0)
#     all_rooms = Set.new(0..rooms.size - 1)
    
#     until stack.empty?
#         cur = stack.pop
#         visited << cur if cur
#         rooms[cur].each do |room|
#             next if visited.include?(room)
#             visited.add(room)
#             stack << room
#         end
#     end
#     all_rooms == visited
# end
