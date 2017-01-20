# Sudoku

> Based on [this challenge](https://www.hackerrank.com/contests/cafinale/challenges/sudoku-1)

## Overview

Amaira loves solving sudoku but finds it difficult to check if the sodoku she solved is valid or not. Help her to check the same.

##### Input
First line will contain integer T denoting the number of test cases. Each test case will contain 9 lines each containing 9 integers denoting the sudoku puzzle.

##### Output
For each test case print "Valid" if the sudoku is valid , else print "Invalid" in a new line.

> Constraints

```plain
1<=T<=10
```

> Sample Input

```sh
1
5 3 4 6 7 8 9 1 2
6 7 2 1 9 5 3 4 8
1 9 8 3 4 2 5 6 7
8 5 9 7 6 1 4 2 3
4 2 6 8 5 3 7 9 1
7 1 3 9 2 4 8 5 6
9 6 1 5 3 7 2 8 4
2 8 7 4 1 9 6 3 5
3 4 5 2 8 6 1 7 9
```

> Sample Output

```sh
Valid
```

## Usage

Run ``

## Implementation

Individual 'rules' of [Sudoku](https://en.wikipedia.org/wiki/Sudoku) are validated by generating an array of values for each individual row, column and sector -- where each set of values needs to include one each of 1-9.

```rb
[1] pry(#<Sudoku::Board>)> board
=> [[1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 2, 3, 4, 5, 6, 7, 8, 9],
    [1, 2, 3, 4, 5, 6, 7, 8, 9]]
[2] pry(#<Sudoku::Board>)> column_data
=> [[1, 1, 1, 1, 1, 1, 1, 1, 1],
    [2, 2, 2, 2, 2, 2, 2, 2, 2],
    [3, 3, 3, 3, 3, 3, 3, 3, 3],
    [4, 4, 4, 4, 4, 4, 4, 4, 4],
    [5, 5, 5, 5, 5, 5, 5, 5, 5],
    [6, 6, 6, 6, 6, 6, 6, 6, 6],
    [7, 7, 7, 7, 7, 7, 7, 7, 7],
    [8, 8, 8, 8, 8, 8, 8, 8, 8],
    [9, 9, 9, 9, 9, 9, 9, 9, 9]]
[3] pry(#<Sudoku::Board>)> sector_data
=> [[1, 2, 3, 1, 2, 3, 1, 2, 3],
    [1, 2, 3, 1, 2, 3, 1, 2, 3],
    [1, 2, 3, 1, 2, 3, 1, 2, 3],
    [4, 5, 6, 4, 5, 6, 4, 5, 6],
    [4, 5, 6, 4, 5, 6, 4, 5, 6],
    [4, 5, 6, 4, 5, 6, 4, 5, 6],
    [7, 8, 9, 7, 8, 9, 7, 8, 9],
    [7, 8, 9, 7, 8, 9, 7, 8, 9],
    [7, 8, 9, 7, 8, 9, 7, 8, 9]]
```
