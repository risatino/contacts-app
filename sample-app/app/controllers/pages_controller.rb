class PagesController < ApplicationController
  
  def home
    render 'home.html'
  end

  def time
    @current_time = Time.now.strftime("%l:%M %p")
    @page_title = 'Time'
  end

  def money
    @current_balance = 20.4 * 50.7
    # p "*********"
    # p "*********"
    # p @current_balance
    # p "*********"
    # p "*********"
    @page_title = 'Money'
  end

  def kids
    render 'kids.html'
  end

  def quotes
    render 'quotes.html'
  end
end
