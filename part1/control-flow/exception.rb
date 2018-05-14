# print "Enter a number: "
# print "> "
# n = gets.to_i
# begin
#   result = 100 / n
# rescue ZeroDivisionError
#   puts "Your number did not work. Was it zero???"
#   exit
# end


# puts "100/#{n} is #{result}."


def open_user_file
  print "File to open: "
  filename = gets.chomp
  fh = File.open(filename)
  yield fh
  fh.close
  rescue
    puts "Couln't open your file!"
  end
end
