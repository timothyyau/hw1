class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @users = User.all
      render 'index'
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  private
    def user_params
      params.require(:user).permit(:name, :years_old, :major)
    end
end
