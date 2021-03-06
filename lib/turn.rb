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

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = (user_input.to_i) - 1
end

def move(board, input, value = 'X')
  def update_array_at_with(board, input, value = 'X')
    board[input] = value
  end
  update_array_at_with(board, input, value)
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input = input_to_index(user_input)
  if valid_move?(board, input)
    move(board, input, value = 'X')
  else
    turn(board)
  end
    display_board(board)
end
