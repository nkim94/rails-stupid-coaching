class QuestionsController < ApplicationController
  def ask

  end

  def answer
    if params[:question].nil?
      @answer = 'Go to work!'
    elsif params[:question][-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
      @answer
    elsif params[:question] == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = 'Go to work!'
    end
  end
end
