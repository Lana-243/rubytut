class Question
  attr_reader :question, :options, :answers

  def initialize(question, options, answers)
    @question = question
    @options = options
    @answers = answers
  end

  def wins?(answer)
    answers.include? answer
  end

  def result(win)
    win ? 1 : 0
  end

  def option?(answer)
    if /[0-9]/.match?(answer)
      answer.to_i.between?(1, @options.length)
    end
  end
end
