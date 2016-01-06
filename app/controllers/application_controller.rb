require 'net/http'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token
  @token = ''

  def registration
    @token = params[:token]
    question = params[:question]

    puts @token
    Rails.logger.fatal("Token: #{@token}")
	render json: {answer: 'answer'}
  end

end
