# @param {Character[][]} grid
# @return {Integer}
require 'set'

def num_islands(grid)
    islands = 0
    visited = Set.new

    (0...grid.size).each do |r|
        (0...grid[0].size).each do |c|
            if grid[r][c] == "1"
                islands += 1 if dfs(grid, r, c, visited)
            end
        end
    end

    islands
end


def dfs(grid, r, c, visited)
    rowInbound = (0 <= r) && (r < grid.length)
    colInbound = (0 <= c) && (c < grid[0].length)
    
    return false if !rowInbound || !colInbound
    return false if grid[r][c] == "0"

    pos = "#{r},#{c}"
    return false if visited.member?(pos)

    visited.add(pos)

    dfs(grid, r + 1, c, visited)
    dfs(grid, r - 1, c, visited)
    dfs(grid, r, c + 1, visited)
    dfs(grid, r, c - 1, visited)

    true
end