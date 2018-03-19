class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
  	@users = User.all
  	@book = Book.new
  end

  def show
  	@book = Book.new
  	@user = User.find(params[:id])
  	@books = @user.books.page(params[:page])
  end

  def edit
  	@user = current_user
  end

  def update
  	@user = current_user
  	@user.update(user_params)
  	redirect_to user_path
  end

  private

  def user_params
  	params.require(:user).permit(:name, :introduction, :image)
  end
end
