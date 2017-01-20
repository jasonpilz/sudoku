require_relative 'sector'
require_relative 'board_validator'

module Sudoku
  class Board
    attr_accessor :board

    def initialize(board)
      @board = board
    end

    def validate
      generate_column_and_sector_data

      validate_board
    end

    private

    def generate_column_and_sector_data
      column_data = board.transpose
      sector_data = Sector.new(board).generate_data

      column_data.concat(sector_data).each { |row| board << row }
    end

    def validate_board
      BoardValidator.new(board).validate
    end
  end
end
