class UsersController < ApplicationController
  def show
  	@book = Book.new
  	@user = User.find(params[:id])
  	@books = @user.books.page(params[:page])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_path
  end

  private

  def user_params
  	params.require(:user).permit(:name, :introduction, :image)
  end
end
