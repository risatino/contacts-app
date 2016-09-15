class PagesController < ApplicationController
  
  def fortune
    potential_messages = ["meet a golden monkey", "be caught and give you a hug", "enhance your calm", "see a lime green creature"] 
    @fortune_message = potential_messages.sample
  end

  def lotto
    number_list = []

    6.times do
      number_list << rand(1..99)
    end

    @lucky_numbers = number_list.join(", ")
  end

  def page_visits
    @count = 0
    @count += 1
  end
end
