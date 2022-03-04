require "date"

class Patient
  def initialize(name, second_name, surname, date_of_birth)
    @name = name
    @second_name = second_name
    @surname = surname
    @date_of_birth = Date.parse(date_of_birth)
  end

end
