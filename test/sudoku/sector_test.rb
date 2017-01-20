require_relative '../test_helper'

class Sudoku::SectorTest < Minitest::Test
  def setup
    @board = [
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9]
    ]
  end

  def test_it_returns_rows_for_all_board_sectors
    expected_data = [
      [1, 2, 3, 1, 2, 3, 1, 2, 3],
      [1, 2, 3, 1, 2, 3, 1, 2, 3],
      [1, 2, 3, 1, 2, 3, 1, 2, 3],
      [4, 5, 6, 4, 5, 6, 4, 5, 6],
      [4, 5, 6, 4, 5, 6, 4, 5, 6],
      [4, 5, 6, 4, 5, 6, 4, 5, 6],
      [7, 8, 9, 7, 8, 9, 7, 8, 9],
      [7, 8, 9, 7, 8, 9, 7, 8, 9],
      [7, 8, 9, 7, 8, 9, 7, 8, 9]
    ]
    sector_generator = Sudoku::Sector.new(@board)

    data = sector_generator.generate_data

    assert_equal data, expected_data
  end
end
