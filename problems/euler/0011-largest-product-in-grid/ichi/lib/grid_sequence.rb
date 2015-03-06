class GridSequence

  def initialize grid, sequence_length
    @grid = grid
    @sequence_length = sequence_length
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

  attr_accessor :grid, :sequence_length
end
