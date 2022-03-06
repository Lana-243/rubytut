class Question
  attr_reader :text, :answer, :answer_points
  def initialize(text, answer, answer_points)
    @text = text
    @answer = answer
    @answer_points = answer_points
  end
end



