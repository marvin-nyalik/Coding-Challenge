# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
    row_hash = Hash.new { |hash, key| hash[key] = [] }
    count = 0
  
    grid.each_with_index do |row, i|
      row_hash[row] << i
    end
  
    grid[0].size.times do |j|
      col = (0...grid.size).map { |k| grid[k][j] }
      count += row_hash[col].size
    end
  
    count
end
  
# bruteforce soln
# @param {Integer[][]} grid
# @return {Integer}

def equal_pairs(grid)
    count = 0
    (0...grid.size).each do |i|
        (0...grid[0].size).each do |j|
          count += 1 if grid[i] == (0...grid[0].size).map { |k| grid[k][j] }
        end
    end
    count
end