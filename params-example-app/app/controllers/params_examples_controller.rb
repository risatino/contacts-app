class ParamsExamplesController < ApplicationController
  def query
    @message = params[:message].delete("e")
    @other_message = params[:other_message]
  end

  def name
    @name = params[:name].upcase
  end

  def url
    @awkward = params[:wildcard]
  end

  def name_starts_with_a
    @a_name = params[:name]
    if @a_name != nil
      if @a_name.starts_with?("a") || @a_name.starts_with?("A")
        @message = "Your name start with an A."
      end
    end
  end

  def guess_query
    guess = params[:guess].to_i
    correct_answer = 32

    if guess == correct_answer
      @message = "You Did It!!!"
    elsif guess < 1 || guess > 100
      @message = "You're out of bounds, Guy."
    elsif guess < correct_answer
      @message = "Guess higher, buddy."
    elsif guess > correct_answer
      @message = "Guess lower, fwend"
    end
  end
  
  def get_form

  end

  def send_form
    @message = params[:message]
  end

  def display_guess_form
    
  end
end
