require_relative "shout"

class Person
  attr_accessor :name
  using Shout
  def announce
    puts "Announcing #{name.shout}"
  end
end
