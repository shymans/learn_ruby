class Array

  def sum
    self.inject(0){|total, num| total + num }
  end

  def square
    map { |num| num ** 2 }
  end

  def square!
    map! { |num| num ** 2 }
  end

end