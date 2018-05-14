f = File.new("ticket2.rb")
# p f.read
# p f.gets
# # p f.readline
# f.rewind

# p f.readlines

# f.each {|line| puts "Next line: #{line}"}
p f.getc
p f.ungetc("X")
p f.getc
