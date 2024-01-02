require_relative 'patronus'
require_relative 'student'


harry = Student.new
nane = harry.get_name
house = harry.get_house
patronus = harry.get_patronus
harry.cast_patronus
harry.add_to_house(house, nane)

puts harry




