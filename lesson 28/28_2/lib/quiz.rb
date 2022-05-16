class Quiz
  attr_accessor :questions, :points, :correct_answers

  def initialize(question_quantity)
    @questions = []
    @points = 0
    @correct_answers = 0
    @question_quantity = question_quantity
  end

  def read_questions(path)
    file_name = path + "/data/questions.xml"

    abort "Sorry, file questions.xml was not found" unless File.exist?(file_name)

    file = File.new(file_name)

    doc = REXML::Document.new(file)

    doc.elements.each("questions/question") do |item|
      text = item.elements["text"].text
      time = item.attributes["minutes"].to_i
      points = item.attributes["points"].to_i
      answer = ""
      options = []

      item.elements.each("options/option") do |option|
        answer = option.text if option.attributes["correct"] == "true"
        options << option.text
      end

      @questions << Question.new(text, answer, options, points, time)
    end

    file.close
  end

  def question_list
    @questions.sample(@question_quantity).shuffle
  end

  def add_correct_answers
    @correct_answers += 1
  end

  def add_points(points)
    @points += points
  end

  def ending_text
    <<~TEXT
    The end!
    Questions answered right: #{@correct_answers} of #{@question_quantity}
    You earned #{@points} points
    TEXT
  end
end
