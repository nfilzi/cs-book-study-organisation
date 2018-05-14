module M
  def self.included(c)
    puts "Hi there! I'm module #{self} and I've just been mixed into #{c}"
    def c.a_class_method
      puts "Now the class has a new class method."
    end
  end

  def an_inst_method
    puts "This module supplies this instance method."
  end
end

# module N
#   include M
# end

class C
  include M
end

c = C.new
c.an_inst_method
C.a_class_method
