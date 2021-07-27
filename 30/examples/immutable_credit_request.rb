# encoding: utf-8
#
# Неизменяемая кредитная заявка
#
# (с) goodprogrammer.ru
#
# Состояние объекта определяется в момент создания по набору данных в
# конструкторе и не может быть изменено.
class ImmutableCreditRequest
  attr_reader :age, :sex, :income, :history, :credit_amount

  SCORE_THRESHOLD = 50

  def initialize(age, sex, income, history, credit_amount)
    @age = age
    @sex = sex
    @income = income
    @history = history
    @credit_amount = credit_amount
  end

  def score
    # Сбрасываем скоринговый балл
    @score = 0

    if @age > 21 && @age < 40
      @score += 10
    elsif @age > 40
      @score += 20
    else
      @score = @score
    end

    @score += 10 if @sex == :female

    if @income > 20001 && @income < 40000
      @score += 10
    elsif @income > 40000
      @score += 20
    end

    @score = @score if @history

    if @summ < 20000
      @score += 20
    elsif @summ < 40000
      @score += 10
    else
      @score = @score
    end

    @score
  end

  def approved?
    @score >= SCORE_THRESHOLD
  end
end
