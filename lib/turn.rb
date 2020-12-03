def valid_move?(board, index)
  if position_taken?(board, index)
  else
    index.between?(0, 8)
  end
end

def position_taken?(board, index)
board[index] == " " || board[index] == "" || board[index] == nil
board[index] == "X" || board[index] == "O"
end
