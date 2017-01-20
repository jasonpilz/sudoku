module Sudoku
  class Sector
    attr_reader :board

    def initialize(board)
      @board = board
    end

    def generate_data
      sliced = board.map { |row| row.each_slice(3).to_a }

      sliced.transpose.each_with_object([]) do |slice, res|
        res << slice.each_slice(3).to_a.map(&:flatten)
      end.flatten(1)
    end
  end
end
