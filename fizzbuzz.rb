# psuedocode
# all numbers equally divisible by 3 to print "Fizz"
# all numbers equally divisible by 5 to print "Buzz"
# unless that number is equally divisible by 5 and 3, then print "Fizzbuzz"

class Fizzbuzz
  def output(number)

  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

RSpec.describe Fizzbuzz do
  let(:fizzbuzz) { Fizzbuzz.new }
  describe '#output' do
    it 'should return 1 if given 1' do
      expect(fizzbuzz.output(1)).to eq(1)
    end
  end
end