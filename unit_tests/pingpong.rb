require 'rspec'

class Pingpong
  def change(cents)
    denominations = [25, 10, 5, 1]
    coins = []
    denominations.each do |denomination|
      while cents >= denomination
        coins << denomination
        cents -= denomination
      end
    end
    coins
  end
end

Pingpong.new

RSpec.describe Pingpong do
  let(:pingpong) { Pingpong.new }

describe '#change' do
    it 'should return [1] if given 1' do
      expect(pingpong.change(1)).to eq([1])
    end

    it 'should return [1,1] if given 2' do
      expect(pingpong.change(2)).to eq([1,1])
    end
    
    it 'should return [1,1,1] if given 3' do
      expect(pingpong.change(3)).to eq([1,1,1])
    end

    it 'should return [1,1,1,1] if given 4' do
      expect(pingpong.change(4)).to eq([1,1,1,1])
    end

    it 'should return [5] if given 5' do
      expect(pingpong.change(5)).to eq([5])
    end

    it 'should return [5,1] if given 6' do
    expect(pingpong.change(6)).to eq([5,1])
    end

    it 'should return [5,1,1] if given 7' do
    expect(pingpong.change(7)).to eq([5,1,1])
    end

    it 'should return [5,1,1,1] if given 8' do
    expect(pingpong.change(8)).to eq([5,1,1,1])
    end

    it 'should return [5,1,1,1,1] if given 9' do
    expect(pingpong.change(9)).to eq([5,1,1,1,1])
    end

  end
end