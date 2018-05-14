class Person
  attr_accessor :age
  def initialize(attributes = {})
    @age = attributes[:age]
    # No need to set it, it can be processed as needed with a scope thingy
    # set_age_class
  end

  def teenager?
    (13..19).include?(@age)
  end

  # def set_age_class
  #   if @age < 3
  #     @age_class = "baby"
  #   elsif @age >= 3 && @age < 13
  #     @age_class = "child"
  #   elsif @age >= 13 && @age < 19
  #     @age_class = "teenager"
  #   elsif @age >= 19 && @age < 30
  #     @age_class = "young adult"
  #   else
  #     @age_class = "adult"
  #   end
  # end
end

people = 0.step(25, 3).map {|i| Person.new(age: i)}
p people
# Alternative randomer way of creating the people array
# people2 = []
# 6.times { people2 << Person.new(age: rand(10..25)) }

# teens = people.partition { |person| person.teenager? }
# p teens
