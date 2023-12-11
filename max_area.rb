require 'set'

def max_area_of_island(grid)
    max_size = 0
    visited = Set.new

    (0...grid.size).each do |r|
        (0...grid[0].size).each do |c|
            if grid[r][c] == 1
                area = dfs(grid, r, c, visited)
                max_size = [max_size, area].max
            end
        end
    end
    max_size
end

def dfs(grid, r, c, visited)
    row_inbound = (0 <= r) && (r < grid.length)
    col_inbound = (0 <= c) && (c < grid[0].length)

    return 0 if !row_inbound || !col_inbound
    return 0 if grid[r][c] == 0

    pos = "#{r}, #{c}"
    return 0 if visited.include?(pos)

    visited.add(pos)

    size = 1
    size += dfs(grid, r + 1, c, visited)
    size += dfs(grid, r - 1, c, visited)
    size += dfs(grid, r, c + 1, visited)
    size += dfs(grid, r, c - 1, visited)

    size
end