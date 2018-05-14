class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end

  def method_missing(m, *args, &block)
    if /set_(.*)/.match(m)
      puts "$1 => #{$1}"
      self.send("#{$1}=", *args)
    else
      super
    end
  end
end
