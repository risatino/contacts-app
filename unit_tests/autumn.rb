require 'rspec'

class Autumn
  def first_day_autumn(date)
    return 'Today is the official first day of Fall in Chicago' if date == 'Fall'
  end
end

Autumn.new

RSpec.describe Autumn do
  let(:autumn) { Autumn.new }

  describe '#date' do
    it 'should return "09/22/2016" if given "Fall"' do
      expect(autumn.first_day_autumn("Fall")).to eq("09/22/2016")
    end 
  end
end
