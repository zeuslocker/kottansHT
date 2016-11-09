# My Enumerator module
module Enumerator
  def each_square
    k = 0
    until k == @hero_array.size
      yield(@hero_array[k]**2)
      k += 1
    end
    self
  end
end
