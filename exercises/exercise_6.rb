require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Billybob", last_name: "Jones", hourly_rate: 40)
@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store6.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 25)
@store5.employees.create(first_name: "Homer", last_name: "Simpson", hourly_rate: 100)


# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.
