require 'json'

class MuseumsController < ApplicationController

  respond_to :json

  def index
    @museums = Museum.all
  end

end
