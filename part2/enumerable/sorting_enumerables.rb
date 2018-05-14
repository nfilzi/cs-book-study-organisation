class Painting
  include Comparable

  attr_reader :price, :year
  def initialize(attributes = {})
    @price = attributes[:price]
    @year = attributes[:year]
  end

  # def self.sort_by_price
  #   ALL.sort_by(&:price)
  # end

  def <=>(other_painting)
    self.price <=> other_painting.price
  end

  def self.sort_by(paintings, &block)
    paintings.sort_by(&block)
  end
end

pa1 = Painting.new(price: 2_000_000, year: 1987)
pa2 = Painting.new(price: 3_000_000, year: 1956)
pa3 = Painting.new(price: 4_000_000, year: 1843)
pa4 = Painting.new(price: 5_000_000, year: 1789)
paintings = [pa1, pa3, pa4, pa2]

year_sort = Painting.sort_by(paintings, &:year)

p year_sort
