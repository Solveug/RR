# encoding: utf-8
#
# Изменяемая кредитная заявка
#
# (с) goodprogrammer.ru
#
# Состояние объекта меняется в любой момент. Перед получением актуального
# рейтинга требуется перерасчет.
class MutableCreditRequest
  attr_reader :score

  attr_accessor :age, :sex, :income, :has_history, :credit_amount

  SCORE_THRESHOLD = 50

  # Делает перерасчет текущего кредитного балла.
  def update_score
    if @age.nil? || @sex.nil? || @income.nil? ||
       @has_history.nil? || @credit_amount.nil?
      # Бросаем эксепшен в случае нехватки данных
      raise 'Data not complete. Age, sex, income, has_history, credit_amount ' \
        ' required.'
    end

    # Сбрасываем скоринговый балл
    @score = 0

    if @age > 21 && @age < 40
      @score += 10
    elsif @age > 40
      @score += 20
    end

    @score += 10 if @sex == :female

    if @income > 20000 && @income < 40000
      @score += 10
    elsif @income >= 40000
      @score += 20
    end

    @score += 20 if @has_history

    if @credit_amount < 20000
      @score += 20
    elsif @credit_amount < 40000
      @score += 10
    end
  end

  def approved?
    @score >= SCORE_THRESHOLD
  end
end
