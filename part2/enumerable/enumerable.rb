class Rainbow
  include Enumerable

  @@all = []

  attr_accessor :location, :colors
  def initialize(attributes = {})
    @location = attributes[:location]
    @colors = %w(red orange yellow green blue indigo violet)
    @@all << self
  end

  def self.each
    @@all.each { |rainbow| yield(rainbow) }
  end

  def each
    @colors.each {|color| yield(color)}
  end

  def find_with_index
    self.each_with_index do |color, index|
      result = yield(color)
      if result
        return [color, index]
      else
        next
      end
    end
  end
end

class Integer
  def to_ord
    cardinal = self.abs
    p cardinal
    digit = cardinal%10
    p digit
    if (1..3).include?(digit) and not (11..13).include?(cardinal%100)
      self.to_s << %w{st nd rd}[digit-1]
    else
      self.to_s << 'th'
    end
  end
end

rainbow_paris = Rainbow.new(location: "Paris")
rainbow_brussels = Rainbow.new(location: "Brussels")
rainbow_amsterdam = Rainbow.new(location: "Amsterdam")
Rainbow.each {|rainbow| p rainbow.location}

# rainbow.each {|color| puts color}
# result = rainbow.find_with_index do |color|
#   color.start_with?('y')
# end

# p result
# puts "First color starting with 'y' is #{result.first}, and was #{(result.last + 1).to_ord} among the colors of the rainbow"
p rainbow_amsterdam.colors
p rainbow_amsterdam.select {|color| color.length == 6 }
p rainbow_amsterdam.map {|color| color[0,3]}
p rainbow_amsterdam.drop_while {|color| color.size < 6}
