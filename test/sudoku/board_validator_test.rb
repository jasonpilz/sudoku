require 'test_helper'

class Sudoku::BoardValidatorTest < Minitest::Test
  def setup
    @valid_board_rows = [
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9].reverse,
      [1, 2, 3, 4, 5, 6, 7, 8, 9].shuffle
    ]

    @invalid_board_rows = [
      [1, 2, 3, 4, 5, 6, 7, 8, 9].drop(1).push(2),
      [1, 2, 3, 4, 5, 6, 7, 8, 9].drop(3).concat([1, 2, 3])
    ]
  end


  def test_it_returns_invalid_for_invalid_board_rows
    validator = Sudoku::BoardValidator.new(@invalid_board_rows)

    result = validator.validate

    assert_equal result, 'invalid'
  end

  def test_it_returns_valid_for_valid_board_rows
    validator = Sudoku::BoardValidator.new(@valid_board_rows)

    result = validator.validate

    assert_equal result, 'valid'
  end
end
