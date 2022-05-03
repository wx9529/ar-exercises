require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print 'Please provide a name for a new store > '
answer = gets.chomp

new_store = Store.create(name: answer)
p "IS THE NEW STORE VALID? " + new_store.valid?.to_s.upcase
p "----- REASONS WHY IT IS NOT VALID -----"
p "name errors: " + new_store.errors.details[:name].to_s
p "annual_revenue errors: " + new_store.errors.details[:annual_revenue].to_s
p "mens_apparel / womens_apparel errors: " + new_store.errors.details[:mens_apparel].to_s
