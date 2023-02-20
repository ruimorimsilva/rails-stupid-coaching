class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:answer]
    @answer = stupidcoach(@question)
  end

  def stupidcoach(question)
    if question.downcase == 'i am going to work right now!'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
