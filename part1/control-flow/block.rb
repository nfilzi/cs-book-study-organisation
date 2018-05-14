# def block_local_parameter
#   x = 100
#   (1..3).to_a.each do |x|
#     puts "Paramater x is #{x}"
#     x += 10
#     puts "Reassigned to x in block; it's now #{x}"
#   end
#   puts "Outer x is still #{x}"
# end


# block_local_parameter


def block_local_variable
  x = "Original x!"
  3.times do |i;x|
    x = i
    puts "x in the block is now #{x}"
  end
  puts "x after the block ended is #{x}"
end

block_local_variable
