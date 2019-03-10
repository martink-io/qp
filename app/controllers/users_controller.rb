class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    respond_to do |format|
      if @user.save
        session[:current_user_id] = @user.id
        format.html { redirect_to new_quotation_path, notice: 'Please Add products to get Quotations' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :email, :phone)
  end
end
