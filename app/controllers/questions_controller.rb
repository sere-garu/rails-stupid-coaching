class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer == "I'm going to work"
      @message = 'Great!'
    elsif @answer.include? '?'
      @message = 'Silly question, get dressed and go to work!'
    else
      @message = "I don't care, get dressed and go to work!"
    end
  end
end
