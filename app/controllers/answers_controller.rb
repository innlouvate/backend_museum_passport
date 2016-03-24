require 'json'

class AnswersController < ApplicationController
  respond_to :json

  skip_before_filter :verify_authenticity_token
  
  def create
    @answer = Answer.new(entry: params[:entry], question_id: params[:question_id])
    # @response.user_id = current_user.id
    if @answer.save
      respond_to do |format|
        format.json{render :json => @answer, :status => :created}
      end
    end


  def answer_params
    params.require(:answer).permit(:entry, :question)
  end

  end

end
