class Car
  @@makes = []
  @@cars = {}
  @@total_count = 0
  @@cars_repo = []
  attr_reader :make

  def self.total_count
    @@total_count
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
      puts "#{make} has successfully been created ;)"
      return
    end
    puts "#{make} has already been created before."
  end

  def self.makes
    @@makes
  end

  def self.all
    @@cars_repo
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}"
      @make = make
      @@cars[make] += 1
      @@total_count += 1
      @@cars_repo << self
    else
      puts "No such make: #{make}; would you want to create it now?"
      answer = gets.chomp.downcase
      if answer == "y"
        Car.add_make(make)
        initialize(make)
      else
        raise "No such make: #{make}, exiting the program now."
      end
    end
  end

  def make_mates
    @@cars[self.make]
  end
end
