# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
    return 0 if is_connected.nil? || is_connected.empty?
    visited = Array.new(is_connected.size, false)
    provinces = 0

    (0...is_connected.size).each do |c|
        unless visited[c]
            visited[c] = true
            stack = [c]

            until stack.empty?
                current_city = stack.pop
                is_connected[current_city].each_with_index do |neighbor, idx|
                    if neighbor == 1 && !visited[idx]
                        visited[idx] = true
                        stack.push(idx)
                    end
                end
            end
            provinces += 1
        end
    end
    provinces
end
