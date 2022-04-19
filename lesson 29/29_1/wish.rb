require "date"

class Wish
  attr_reader :text, :date, :overdue

  def initialize(text, date)
    @text = text
    @date = date
    @overdue = if Date.parse(@date) < Date.today
                true
              else
                false
               end
  end
end
