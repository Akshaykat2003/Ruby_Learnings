def is_valid_sudoku(board)
  seen = Set.new

  (0...9).each do |i|
    (0...9).each do |j|
      if board[i][j] != '.'
        b = "(#{board[i][j]})"
        # Add checks for rows, columns, and sub-boxes
        return false unless seen.add?(b + i.to_s)
        return false unless seen.add?(j.to_s + b)
        return false unless seen.add?((i / 3).to_s + b + (j / 3).to_s)
      end
    end
  end

  true
end



# Example usage:
board = [
  ['5', '3', '.', '.', '7', '.', '.', '.', '.'],
  ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
  ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
  ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
  ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
  ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
  ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
  ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
  ['.', '.', '.', '.', '8', '.', '.', '7', '9']
]

result = is_valid_sudoku(board)
puts "Is the Sudoku board valid? #{result}" 
