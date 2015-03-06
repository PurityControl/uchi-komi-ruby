require 'forwardable'
class Grid
  include Enumerable
  extend Forwardable

  def_delegators :grid, :each, :each_with_index, :[], :length

  def initialize nums, length, depth
    nums = nums.split().map(&:to_i)
    if nums.length != length * depth
      raise ArgumentError, "size mismatch for numbers and grid size required"
    end
    @grid = []
    nums.each_slice(length) { |row| @grid << row }
  end

  def each_with_coords
    each_with_index do |row, row_index|
      row.each_with_index do |item, col_index|
        yield item, [row_index, col_index]
      end
    end
  end

  private
  attr_accessor :grid
end
