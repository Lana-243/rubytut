class Question
  attr_reader :text, :answer, :options, :points, :time

  def initialize(text, answer, options, points, time)
    @text = text
    @answer = answer
    @options = options
    @points = points
    @time = time
  end

  def correct_answer?(answer)
    @answer == answer
  end

  def show_questions_and_options
    puts @text
    @options.shuffle.each { |option| puts option }
  end
end


