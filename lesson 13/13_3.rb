require "date"

class Patient
  def initialize(name, second_name, surname, date_of_birth, address)
    @name = name
    @second_name = second_name
    @surname = surname
    @date_of_birth = Date.parse(date_of_birth)
    @address = address
  end
end

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
patient1 = Patient.new("name1", "second_name1", "surname1", '11.05.2020', addr1)

p patient1