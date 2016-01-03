class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  @token = ''

  def registration
  	logger.info '123'
    @token = params[:token]
    logger.info params[:question]
    question = params[:question]

    logger.info params
	render json: {answer: 'answer'}
  end

end
