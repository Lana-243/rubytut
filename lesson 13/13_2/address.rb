class Address
  def initialize(region, city, street, house_number, apartment_number)
    @region = region
    @city = city
    @street = street
    @house_number = house_number
    @apartment_number = apartment_number
   end

   def full_info
    return "#{@region}, #{@city}, #{@street}, #{@house_number}, #{@apartment_number}"
  end
end

addr1 = Address.new("Moscow", "Moscow", "Main street", "11", "5")
puts addr1.full_info