class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"

matz = Person.new
matz.name = "Matz"

ruby = Person.new
ruby.name = "Ruby"

# def david.name
#   "[not available]"
# end

module Secretive
  def name
    "[not available]"
  end
end

class << david
  include Secretive
end
class << ruby
  include Secretive
end

puts "We've got one person named #{matz.name},"
puts "one named #{david.name},"
puts "and one named #{ruby.name}."
