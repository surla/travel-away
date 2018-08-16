class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(users_params)
    redirect_to @user
  end

  private
    def users_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
