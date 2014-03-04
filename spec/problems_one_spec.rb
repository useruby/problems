require 'spec_helper'

# Multiples of 3 and 5
# Problem 1
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def brut_force_solution
  (1...1000).inject(0){|sum, digit| ((digit % 3 == 0) || (digit % 5 == 0)) ? sum += digit : sum}
end

describe Problems::One do
  describe '.solve' do
    it 'should return sum of all the multiples of 3 or 5 below 1000' do
      expect(Problems::One.solve).to eq 233168
    end

    it 'should return same value as brut force solution' do
      expect(Problems::One.solve).to eq brut_force_solution
    end

    it 'should works faster than brut force solution' do
      elapsed_time = Benchmark.realtime {Problems::One.solve}
      elapsed_time_brut_force_solution = Benchmark.realtime {brut_force_solution}

      expect(elapsed_time < elapsed_time_brut_force_solution).to be_true
    end
  end
end
