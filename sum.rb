require "csv"
require "pry"

numbers = []

CSV.foreach("numbers.csv", converters: :all) do |row|
  numbers.push row
end

sum = 0
numbers.each do |num|
  sum += num
end
puts sum

puts numbers.count
