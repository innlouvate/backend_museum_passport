require 'json'

class AnswersController < ApplicationController
  respond_to :json

  def create
    @answer = Answer.new(answer_params)
    # @response.user_id = current_user.id
    if @answer.save
      respond_to do |format|
        format.json{render :json => @answer, :status => :created}
      end
    end

    private

    def answer_params
      params.require(:answer).permit(:entry, :question_id)
    end

  end

end
