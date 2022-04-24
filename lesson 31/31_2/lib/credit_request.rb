class CreditRequest
  # age - возраст
  # gender - пол (m/w)
  # salary - доход
  # credit_history - кредитная история (y/n)
  # request_amount - запрашиваемая сумма

  attr_reader :age, :salary, :gender, :credit_history, :request_amount

  def initialize(age, salary, gender, credit_history, request_amount)
    @age = age
    @salary = salary
    @gender = gender
    @credit_history = credit_history
    @request_amount = request_amount
    @scoring = calculate_scoring
  end

  def calculate_scoring
    # должен вернуть скоринговый балл

    # age   |  salary  | gender  |  credit_history  | request_amount  | scoring
    # 20    |  30_000  | m       |  n               | 50_000          | 10
    # 25    |  60_000  | w       |  n               | 10_000          | 10+10+20+20 = 60
    # 45    |  25_000  | w       |  y               | 5_000           | 20+10+10+20+20 = 80

    result = 0

    if @age >= 21 && @age <= 40
      result += 10
    elsif @age > 40
      result += 20
    end

    if @gender == 'w'
      result += 10
    end

    if @salary >= 20_000 && @salary <= 40_000
      result += 10
    elsif @salary > 40_000
      result += 20
    end

    if @credit_history == 'y'
      result += 20
    end

    if @request_amount <= 20_000
      result += 20
    elsif @request_amount <= 40_000
      result += 10
    end

    return result
  end

  def approve?
    # должен вернуть, одобрена ли кредитная заявка (т.е. скоринговый балл >= 50)
    return @scoring >= 50
  end
end

