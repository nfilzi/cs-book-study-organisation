class Ticket
  # TICKETS = []
  attr_accessor :price
  attr_reader :location
  def initialize(attributes = {})
    @location = attributes[:location]
    @date = attributes[:date]
    @price = 0
    # TICKETS << self
  end

  def self.most_expensive(*tickets)
    tickets.max_by(&:price)
  end

  # Different implementation, using a constant at the model level
  # to store every object it spawns.
  # => No ticket objects list needed this time :)
  # def self.most_expensive
  #   TICKETS.max_by(&:price)
  # end
end


th = Ticket.new(location: "Town Hall", date: "11/12/13")
cc = Ticket.new(location: "Convention Center", date: "12/13/14")
fg = Ticket.new(location: "Fairgrounds", date: "13/14/15")
th.price = 12.55
cc.price = 10.00
fg.price = 18.00

highest = Ticket.most_expensive(th, cc, fg)
puts "The highest-priced ticket is the one for #{highest.location}"


# class Temperature
#   attr_accessor :temperature_number, :measurement_system
#   def initialize(attributes = {})
#     @temperature_number = attributes[:temperature_number]
#     @measurement_system = attributes[:measurement_system]
#   end

#   def c2f
#     if @measurement_system == "fahrenheit"
#       "This temperature is already expressed in Celsius degrees, you dummy!"
#     else
#       @temperature_number * 9.0 / 5 + 32
#     end
#   end

#   def f2c
#     if @measurement_system == "celsius"
#       "This temperature is already expressed in Fahrenheit degrees, you dummy!"
#     else
#       (@temperature_number - 32) * 5 / 9.0
#     end
#   end
# end

# celsius = Temperature.new(temperature_number: 37.5, measurement_system: "celsius")
# fahrenheit = Temperature.new(temperature_number: 99.5, measurement_system: "fahrenheit")

# celsius_in_fahrenheit = celsius.c2f
# p celsius_in_fahrenheit

# module Hello
#   def say_hello
#     if instance_variables.include?(:@first_name) && !@first_name.nil?
#       puts "Hello dear, my name is #{@first_name}"
#     else
#       puts "Hello dear, I don't have a first name yet :("
#       puts "Would you like to give me one? (y/n)"
#       print "> "
#       answer = gets.chomp
#       if answer.downcase == "y"
#         puts "What is my new first name dear?"
#         print "> "
#         @first_name = gets.chomp
#         puts "Ok, from now on, my first name will be #{@first_name}"
#       else
#         puts "Ok then, I'll stay nameless for now."
#       end
#     end
#   end
# end

# class User
#   attr_accessor :first_name, :last_name
#   def initialize(attributes = {})
#     @first_name = attributes[:first_name]
#     @last_name = attributes[:last_name]
#   end

#   include Hello
# end

# user1 = User.new(first_name: "Nicolas", last_name: "Filzi")
# user1.say_hello
