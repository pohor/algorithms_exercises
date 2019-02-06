class Celsius

attr_reader :temperature

  def initialize(temperature)
    @temperature = temperature
  end

  def to_fahrenheit
    return ((temperature*1.8) + 32).to_i
  end

  def to_s
    "#{temperature} degrees C"
  end
end


new_temp = Celsius.new(16)

p new_temp.to_fahrenheit

new_temp.to_s
