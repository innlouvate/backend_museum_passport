require 'json'

class QuestionsController < ApplicationController

respond_to :json

  def index
    @questions = Question.all
  end


  # def find_questions(exhibit_id)
  #
  # end

end
