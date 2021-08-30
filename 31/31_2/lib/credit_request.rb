class CreditRequest
  attr_reader :age, :sex, :income, :history, :amount, :score

  SCORE_THRESHOLD = 50

  def initialize(age, sex, income, history, amount)
    @age = age
    @sex = sex
    @income = income
    @history = history
    @amount = amount
    @score = nil

    calculate_score!
  end

  def calculate_score!
    return unless @score.nil?

    @score = 0

    if @age.between?(21, 40)
      @score += 10
    elsif @age > 40
      @score += 20
    end

    @score += 10 if @sex == :female

    if @income.between?(20_001, 40_000)
      @score += 10
    elsif @income > 40_000
      @score += 20
    end

    @score += 20 if @history == true

    if @amount.between?(20_001, 40_000)
      @score += 10
    elsif @amount < 20_000
      @score += 20
    end

    self
  end

  def approved?
    @score >= SCORE_THRESHOLD
  end
end
