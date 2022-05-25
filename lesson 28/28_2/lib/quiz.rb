class Quiz

  attr_accessor :points, :question_list

  def self.read_questions(path, question_quantity)
    file_name = path + "/data/questions.xml"

    abort "Sorry, file questions.xml was not found" unless File.exist?(file_name)

    file = File.new(file_name)

    doc = REXML::Document.new(file)

    questions = []

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

      questions << Question.new(text, answer, options, points, time)
    end

    self.new(question_quantity, questions)
  end

  def initialize(question_quantity, questions)
    @points = 0
    @correct_answers = 0
    @question_quantity = question_quantity
    @question_list = questions.sample(@question_quantity).shuffle
  end

  def add_points_and_correct_answers(points)
    @points += points
    @correct_answers += 1
  end

  def answer_check(question, user_answer)
    if question.correct_answer?(user_answer)
      add_points_and_correct_answers(question.points.to_i)
      puts 'Correct!'
    else
      puts 'Wrong answer.'
      puts "Correct answer: #{question.answer}"
    end
  end

  def ending_text
    <<~TEXT
    The end!
    Questions answered right: #{@correct_answers} of #{@question_quantity}
    You earned #{@points} points
    TEXT
  end
end
