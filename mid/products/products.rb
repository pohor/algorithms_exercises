require "csv"
require "./product.rb"
require "./products_list.rb"

products_list = ProductsList.new

if ARGV[0] == "-f"
  product = products_list.find_product(ARGV[1])
  puts "#{product.name}: #{product.price} zł"

elsif ARGV[0] == "-gt"
  product = products_list.greater_than_price(ARGV[1].to_i)

elsif ARGV[0] == "-lt"
  product = products_list.lower_than_price(ARGV[1].to_i)

elsif ARGV[0] == "-c"
    products_list.convert_and_save(ARGV[1].to_f,ARGV[3])

else
  puts "USAGE: ruby products.rb FUNCTION ARGUMENT"
end
