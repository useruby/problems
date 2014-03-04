require 'spec_helper'

# Factorial digit sum
# Problem 20
#
# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

describe Problems::Twenty do
  describe '.solve' do
    it 'should return sum of the digits in the number 100!' do
      expect(Problems::Twenty.solve).to eq 648
    end
  end

  # ruby doesn't have build in method for getting factorial
  describe '.factorial' do
    it 'should return factorial for 10' do
      expect(Problems::Twenty.factorial(10)).to eq 3_628_800
    end

    it 'should return factorial for 100' do
      expect(Problems::Twenty.factorial(100)).to eq 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000
    end
  end
end

