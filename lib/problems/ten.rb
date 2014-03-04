class Problems::Ten
  LAST_NUMBER = 2_000_000

  def self.solve
    # FIXME need to use Prime.each() instead of own solution
    # build in solution is 7 times faster, look at the specs
    (1...LAST_NUMBER).inject(0){|sum, digit| prime?(digit) ? sum += digit : sum}
  end

  def self.prime? number
    return false if number <= 1

    (2..(Math.sqrt(number))).each do |digit|
      return false if number % digit == 0
    end
    
    true
  end
end
