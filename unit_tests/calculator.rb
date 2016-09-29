require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def modulus(number_1, number_2)
    number_1 % number_2
  end
end


# Tests

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe '#add' do
    it "should return the sum of two numbers" do
      expect(calculator.add(2,3)).to eq(5)
      # calculator.add(2,3) == 5
    end
  end

  describe '#subtract' do
    it "should return the difference between two numbers" do
      expect(calculator.subtract(9,3)).to eq(6)
    end
  end

  describe '#multiply' do
    it "should multiply two numbers" do
      expect(calculator.multiply(3,4)).to eq(12)
    end
  end

  describe '#divide' do
    it "should divide two numbers" do
      expect(calculator.divide(10,2)).to eq(5)
    end
  end

  describe '#square' do
    it "should return the square root of a number" do
      expect(calculator.square(5)).to eq(25)
    end
  end

  describe '#power' do
    it "should return the quotient of two numbers" do
      expect(calculator.power(5,3)).to eq(125)
    end
  end

  describe '#modulus' do
    it "should return the remainder of one number divided by another" do
      expect(calculator.modulus(3,2)).to eq(1)
    end
  end
end




