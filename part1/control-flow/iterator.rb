class Integer
  def self.new(number)
    @number = number
  end

  def my_times
    (1..self).to_a.my_each do |i|
      yield(i)
    end
  end
end

class Array
  def my_each
    for i in (0..size-1)
      yield(self[i])
    end
    self
  end

  def my_map
    acc = []
    my_each {|e| acc << yield(e)}
    acc
  end
end
