class ProductsList
  attr_writer :products

  def initialize
    self.products = []
  end

  def parse
    self.products = csv_data.map do |elements|
      Product.new(elements[0], elements[1].to_f, elements[2].to_f)
    end
  end

  def products
    if @products.count == 0
      parse
    else
      @products
    end
  end

  def find_product(name)
    products.find { |product| product.name == name }
  end

  def greater_than_price(input_price)
    products.find { |product| puts "#{product.name}: #{product.price} zł" if product.price > input_price }
  end

  def lower_than_price(input_price)
    products.find { |product| puts "#{product.name}: #{product.price} zł" if product.price < input_price }
  end

  def convert_and_save(rate, file_name)
    products_array = []
    products.each { |product| products_array << ["#{product.name}", "#{((product.price)*rate).round(2)}", "#{product.weight}"] }
    CSV.open("#{file_name}", "wb") do |csv|
        products_array.each { |row| csv << row }
    end
  end

  private

  def file
    @file ||= File.read("products.csv")
  end

  def csv_data
    csv_array = CSV.parse(file)
    csv_array.shift
    csv_array
  end
end
