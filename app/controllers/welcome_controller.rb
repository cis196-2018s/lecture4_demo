class WelcomeController < ApplicationController
  def index
    @cis196 = 'CIS 196'
  end

  def subscribe
    if params[:name].present? && params[:email].present?
      # Store in database
      redirect_to "/subscribed/#{params[:name]}"
    else
      render :index
    end
  end

  def subscribed
    @user_name = params[:user_name].titleize
  end
end
