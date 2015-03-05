require 'forwardable'
class Grid
  include Enumerable
  extend Forwardable

  def_delegators :grid, :each, :each_with_index, :[]

  def initialize nums, length, depth
    nums = nums.split()
    if nums.length != length * depth
      raise ArgumentError, "size mismatch for numbers and grid size required"
    end
    @grid = []
    nums.each_slice(length) { |row| @grid << row }
  end

  private
  attr_accessor :grid
end
