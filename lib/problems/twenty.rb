class Problems::Twenty
  FACTORIAL_NUMBER = 100

  def self.solve
    factorial(FACTORIAL_NUMBER).to_s.split(//).map(&:to_i).inject(:+)
  end

  def self.factorial number
    number.downto(1).inject(:*)   
  end
end
