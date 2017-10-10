class UsersController < ApplicationController
  def index
     session[:views] ||= 0
  end

  def process_form
    session[:views] = session[:views] + 1
    session[:result] = params[:user]
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{ session[:views] } time(s) now."
    redirect_to '/users/result'

  end

  def result
  @user = session[:result]

  end
end
