class Board
  attr_accessor :board

  def initialize
    @board = [Array.new(3), Array.new(3), Array.new(3)]
  end

  def show_board
    board.each { |row| p row }
  end

  def play_round(mark)
    row = prompt_input('Row')
    column = prompt_input('Column')
    already_selected?(row, column, mark)
    show_board
  end

  def game_over?(mark)
    if row_win?(mark) == true ||
       column_win?(mark) == true ||
       diagonal_win?(mark) == true
      puts "Game Over. #{mark} wins."
      true
    else
      false
    end
  end

  private

  def already_selected?(row, column, mark)
    if board[row][column].nil?
      board[row][column] = mark
    else
      puts 'Box already selected. Choose again.'
      row = prompt_input('Row')
      column = prompt_input('Column')
      already_selected?(row, column, mark)
    end
  end

  def prompt_input(line)
    puts "Enter #{line}"
    validate_input
  end

  def validate_input
    input = gets.chomp.to_i - 1
    while input != 0 && input != 1 && input != 2
      puts 'Must Enter a Number Between 1 and 3'
      input = gets.chomp.to_i - 1
    end
    input
  end

  def row_win?(mark)
    win = false
    board.each do |row|
      if row[0] == mark && row[1] == mark && row[2] == mark
        win = true
        break
      else
        win = false
      end
    end
    win
  end

  def column_win?(mark)
    win = false
    if board[0][0] == mark && board[1][0] == mark && board[2][0] == mark ||
       board[0][1] == mark && board[1][1] == mark && board[2][1] == mark ||
       board[0][2] == mark && board[1][2] == mark && board[2][2] == mark
      win = true
    end
    win
  end

  def diagonal_win?(mark)
    win = false
    if board[0][0] == mark && board[1][1] == mark && board[2][2] == mark ||
       board[0][2] == mark && board[1][1] == mark && board[2][0] == mark
      win = true
    end
    win
  end
end

class Mark
  attr_reader :mark

  def initialize(mark)
    @mark = mark
  end

  def to_s
    @mark
  end
end

tic_tac_toe = Board.new

def play_game(tic_tac_toe)
  x = Mark.new('X').to_s
  o = Mark.new('O').to_s
  mark = o
  9.times do
    mark == o ? mark = x : mark = o
    tic_tac_toe.play_round(mark)
    tic_tac_toe.game_over?(mark) == true ? break : next
  end
end

play_game(tic_tac_toe)
