class Problems::One
  BELOW_NUMBER = 1000

  def self.solve
    sum_digit_divided_by(3) + sum_digit_divided_by(5) - sum_digit_divided_by(15)
  end

  private
  def self.sum_digit_divided_by number
    last_digit = BELOW_NUMBER.fdiv(number).ceil
    last_digit > 1 ? (1...last_digit).inject(0){|sum, digit| sum += digit}*number : 0
  end
end
