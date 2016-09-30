def calculate_tax(income)
  tax_rate = 0.2
  yield income * tax_rate
end

income = 60000
net_income = income
calculate_tax(income) do |tax|
  puts "Your owe #{tax}" #=> Your owe 12000
  net_income -= tax
end

puts "Your net income: #{net_income}" #=> Your net income: 48000
