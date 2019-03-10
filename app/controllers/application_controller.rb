class ApplicationController < ActionController::Base
  def current_user
    @user ||= User.find_by(id: session[:current_user_id])
  end

  def authrize_user
    redirect_to root_path if @user.blank?
  end
end
