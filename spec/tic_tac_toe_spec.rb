# No matter which of the below tests I run (meaning commenting out all others),
# I receive the same error from RSpec: NoMethodError: undefined method 'chomp'
# for nil:NilClass. I understand the error, however when trying to allow the gets
# to receive a certain value, it still get the error. My understanding is that 
# the allow method is the way to get around expected user input, however my
# understanding thus far seems to be misguided. I will spend some time with it.

require_relative '../lib/tic_tac_toe'

describe Board do
  subject(:helper) { Board.new }

  # describe '#game_over?' do
  #   context 'when #row_win? returns true' do
  #     it 'returns true' do
  #       allow(helper).to receive(:row_win?).and_return(true)
  #       expect(helper.game_over?).to be(true)
  #       helper.game_over?
  #     end
  #   end
  # end

  # describe '#already_selected?' do
  #   context 'when the square has already been selected' do
  #     before do
  #       row = 1
  #       column = 1
  #       mark = 'X'
  #       helper.board[row][column] << mark
  #     end
  #     it 'displays error message' do
  #       error_message = 'Box already selected. Choose again.'
  #       expect(helper).to receive(:puts).with(error_message)
  #       helper.already_selected?(row, column, mark)
  #     end
  #   end
  #   context 'when the square has not yet been selected' do
  #     before do
  #       row = 2
  #       column = 3
  #       mark = 'O'
  #     end
  #     it 'assigns mark to the row and column given' do
  #       expect(board[row][column]).to be(mark)
  #       helper.already_selected?(row, column, mark)
  #     end
  #   end
  # end

  # describe '#validate_input' do
  #   context 'when the input is valid' do
  #     it 'returns 1 less than the number inputed' do
  #       allow(helper).to receive(:gets.chomp).and_return(1)
  #       expect(validate_input).to be(0)
  #       helper.validate_input
  #     end
  #   end
  #   context 'when the input is invalid' do
  #     it 'displays error message' do
  #       error_message = 'Must Enter a Number Between 1 and 3'
  #       allow(helper).to receive(:gets.chomp).and_return(6)
  #       expect(helper).to receive(:puts).with(error_message)
  #       helper.validate_input
  #     end
  #   end
  # end

  # Below I need tests for row_win?, column_win?, and diagonal_win?
  # I'd like two tests for each, one that returns true and another that returns
  # false.
end
