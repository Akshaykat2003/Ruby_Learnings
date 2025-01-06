

def numIsland(grid)
  count = 0
  for i in 0...grid.length
    for j in 0...grid[0].length
      if grid[i][j] == '1'
        DfsFill(grid,i,j)
        count+=1
      end
    end
  end
  count
end


def DfsFill(grid,i,j)
  if i>=0 && j>=0 && i<grid.length && j<grid[0].length && grid[i][j] == '1'
    grid[i][j] = '0'
    DfsFill(grid,i+1,j)
    DfsFill(grid,i-1,j)
    DfsFill(grid,i,j+1)
    DfsFill(grid,i,j-1)
  end
end

grid = [
  ['1', '1', '0', '0', '0'],
  ['1', '1', '0', '0', '0'],
  ['0', '0', '1', '0', '0'],
  ['0', '0', '0', '1', '1']
]

# Output the result
puts "Number of islands: #{numIsland(grid)}"