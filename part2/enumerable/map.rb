names = %w(David Yukihiro Chad Amy)

result = names.map(&:upcase)
p result
p names

names.map(&:upcase!)
p names
