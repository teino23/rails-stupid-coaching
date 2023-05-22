class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]

    if @ask.end_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    elsif @ask == 'I am going to work'
      @answer = 'Great'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
