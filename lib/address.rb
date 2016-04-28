# Address class
class Address
  attr_accessor :city, :street, :house

  def initialize(city, street, house)
    @city = city
    @street = street
    @house = house
  end

  def to_s
    "Address => {city : #{@city}, street : #{@street}, house = #{@house}"
  end
end
