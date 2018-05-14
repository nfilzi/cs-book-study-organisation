# print "Method name: "
# m = gets.chomp
# eval("def #{m}; puts 'Hi!'; end")
# eval(m)

def use_a_binding(b)
  eval("puts str", b)
end

str = "I'm a string in top-level binding!"
use_a_binding(binding)
