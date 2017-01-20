#!/usr/bin/env ruby

require_relative 'sudoku/board'
require 'pry'

squared = 9

board_count = gets.chomp.to_i

raise 'Board count must be <= 10' if board_count > 10

boards = Array.new(board_count) { [] }

boards.each do |board|
  squared.times do
    line = gets.chomp
    raise "Each row must contain #{squared} digits" if line.length != squared
    board << Array(line.chars.map(&:to_i))
  end
end

boards.each do |board|
  validation = Sudoku::Board.new(board).validate

  puts "#{validation.capitalize}\n"
end
