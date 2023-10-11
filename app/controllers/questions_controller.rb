class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @answer = params[:answer]

    if @answer == "I am going to work"
      @coach_message = "Great"
    elsif @answer.end_with?("?")
      @coach_message = "Silly question, get dressed and go to work!."
    else
      @coach_message = " I don't care, get dressed and go to work!."
    end
  end
end
