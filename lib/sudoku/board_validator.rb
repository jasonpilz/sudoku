module Sudoku
  class BoardValidator
    attr_reader :rows

    SPEC = [1, 2, 3, 4, 5, 6, 7, 8, 9].freeze

    def initialize(rows)
      @rows = rows
    end

    def validate
      rows.map { |row| validate_row(row) }.include?(false) ? 'invalid' : 'valid'
    end

    private

    def validate_row(row)
      SPEC == row.sort
    end
  end
end
