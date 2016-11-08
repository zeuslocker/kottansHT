module Enumerator
    def each_square
          k = 0
        until k == @heroArray.size
        yield(@heroArray[k] ** 2)
        k+=1
        end
       self
    end
end