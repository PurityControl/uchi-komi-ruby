module SelectionSort

  module_function
  def sort unsorted
    sorted = []
    until unsorted.empty? do
      smallest = unsorted[0]
      position = 0
      unsorted.each_with_index do |item, index|
        if item < smallest
          smallest = item
          position = index
        end
      end
      sorted.push(unsorted.delete_at(position))
    end
    sorted
  end
end
