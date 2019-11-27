class UsersController < ApplicationController
  before_action :authenticate_user!,only: [:index, :show, :edit]

  def index
  	@book = Book.new
  	@users = User.all
  end

  def show
    @book = Book.new
  	@user = User.find(params[:id])
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to user_path(current_user)
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if
    @user.save
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(@user.id)
    else
      render'edit'
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
