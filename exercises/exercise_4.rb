require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
@store4 = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
@store5 = Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
@store6 = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end
# output = @mens_stores.select(:name, :annual_revenue).map{|row| row.name + " " + row.annual_revenue.to_s}
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)


# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
