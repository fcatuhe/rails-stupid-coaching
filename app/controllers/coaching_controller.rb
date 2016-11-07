class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include?("?")
      "Silly question, get dressed and go to work!"
    elsif your_message.downcase == "i am going to work right now!"
      "OK great!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.downcase == "i am going to work right now!"
      "OK great!"
    elsif your_message.upcase != your_message
      coach_answer(your_message)
    else
      "I can feel your motivation! #{coach_answer(your_message)}"
    end
  end

end
