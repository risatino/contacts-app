class ParamsGamesController < ApplicationController
  def app_name
    @message = params[:name]
  end

  def a_start
    @message = params[:name].upcase
  end

  def url
    @url = params[:guess]
  end

  def get_form
     
  end

  def send_form
    guess = params[:guess]
    if guess
      guess = guess.to_i
      correct_answer = 32

      if guess == correct_answer
        @message = "You Did It!!!!"
      elsif guess < 1 || guess > 100
        @message = "You're out of bounds, Guy."
      elsif guess < correct_answer
        @message = "Guess higher, buddy."
      elsif guess > correct_answer
        @message = "Guess lower, friend"
      end
    
    else
      @message = "You obviously need to put something in the URL."
    end
  end

  def guess_url
    guess = params[:guess]
    if guess
      guess = guess.to_i
      correct_answer = 32

      if guess == correct_answer
        @message = "Right ON!"
      elsif guess < 1 || guess > 100
        @message = "not a guess"
      elsif guess < correct_answer
        @message = "too low"
      elsif guess > correct_answer
        @message = "too high"
      end
    
    else
      @message = "You obviously need to put something in the URL."
    end
  end
end
