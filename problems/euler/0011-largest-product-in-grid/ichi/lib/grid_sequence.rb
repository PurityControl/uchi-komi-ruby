class GridSequence
  include Enumerable

  def initialize grid, sequence_length
    @grid = grid
    @sequence_length = sequence_length
  end

  def each
    grid.each_with_coords do |item, index|
      yield horizontal_sequence(index) if horizontal_sequence?(index)
      yield vertical_sequence(index) if vertical_sequence?(index)
    end
  end

  private

  def horizontal_sequence? coords
    row, col = coords
    col + sequence_length <= grid[0].length
  end

  def horizontal_sequence coords
    row, col = coords
    grid[row][col, sequence_length]
  end


  def vertical_sequence? coords
    row, col = coords
    row + sequence_length <= grid.length
  end

  def vertical_sequence coords
    row, col = coords
    seq = []
    row.upto(row + sequence_length - 1) { |index| seq << grid[index][col] }
    seq
  end

  attr_accessor :grid, :sequence_length
end
