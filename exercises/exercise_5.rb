require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

p Store.sum("annual_revenue").to_f

p Store.average("annual_revenue").to_f

p "There are " + Store.where("annual_revenue > ?", 1000000).count.to_s + " stores."