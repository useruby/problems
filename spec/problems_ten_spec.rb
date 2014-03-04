require 'spec_helper'

require 'prime'

# Summation of primes
# Problem 10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

describe Problems::Ten do
  before :all do
    @elapsed_time_ruby_build_in_solution = Benchmark.realtime do
      @ruby_build_in_solution = 0
      Prime.each(2_000_000){|prime_number| @ruby_build_in_solution += prime_number}
    end
  end

  describe '.solve' do
    it 'should return sum of all primes below 2 million' do
      expect(Problems::Ten.solve).to eq 142_913_828_922
    end

    it 'should return same sum as ruby build in solution' do
      expect(Problems::Ten.solve).to eq @ruby_build_in_solution
    end

    it 'should be faster than ruby build in solution' do
      pending('Ruby build in solution is 7 times faster')
      elapsed_time = Benchmark.realtime {Problems::Ten.solve}

      expect(elapsed_time < @elapsed_time_ruby_build_in_solution).to be_true
    end
  end

  describe '.prime?' do
    it 'should return false for 1' do
      expect(Problems::Ten.prime?(1)).to be_false
    end

    it 'should return true for 2' do
      expect(Problems::Ten.prime?(2)).to be_true
    end

    it 'should return true for 17' do
      expect(Problems::Ten.prime?(17)).to be_true
    end

    it 'should return false for 21' do
      expect(Problems::Ten.prime?(21)).to be_false
    end
  end
end
