require 'json'

class AnswersController < ApplicationController
  respond_to :json

  skip_before_filter :verify_authenticity_token
  # before_filter :set_headers
  # protect_from_forgery with: :null_session

  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

  # For all responses in this controller, return the CORS access control headers.

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, OPTIONS'
    headers['Access-Control-Max-Age'] = "1728000"
  end

  # If this is a preflight OPTIONS request, then short-circuit the
  # request, return only the necessary headers and return an empty
  # text/plain.

  def cors_preflight_check
    if request.method == :options
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
      headers['Access-Control-Max-Age'] = '1728000'
      render :text => '', :content_type => 'text/plain'
    end
  end


  def create
    @answer = Answer.new(entry: params[:entry], question_id: params[:question_id], user_id: params[:user_id])
    p @answer
    # @response.user_id = current_user.id
    if @answer.save
      respond_to do |format|
        format.json{render :json => @answer, :status => :created}
      end
    end
  end

  def update
    if @answer = Answer.update(params[:answer_id], entry: params[:entry])
      p @answer
      respond_to do |format|
        format.json{render :json => @answer, :status => :updated}
      end
    end
  end



  def answer_params
    params.require(:answer).permit(:entry, :question)
  end

  def options
     set_headers
     # this will send an empty request to the clien with 200 status code (OK, can proceed)
     render :text => '', :content_type => 'text/plain'
  end

  private

  def set_headers
     headers['Access-Control-Allow-Origin'] = '*'
     headers['Access-Control-Expose-Headers'] = 'Etag'
     headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, PATCH, OPTIONS, HEAD'
     headers['Access-Control-Allow-Headers'] = '*, x-requested-with, Content-Type, If-Modified-Since, If-None-Match'
     headers['Access-Control-Max-Age'] = '86400'

   end

end
