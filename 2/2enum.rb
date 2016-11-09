# My Enumerable module
module MyEnumerable
  def select
    res = []
    each do |t|
      res << t if yield(t) == true
    end
    res
  end

  def my_reduce(*args)
  end

  def maxmin(*_args)
  end
end
