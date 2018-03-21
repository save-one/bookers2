class BooksController < ApplicationController

	  before_action :authenticate_user!

	def new
	end

	def index
		@book = Book.new
		@books = Book.all
	end

	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
		@book.save
		redirect_to books_path
	end

	def show
		@book = Book.new
		@books = Book.find(params[:id])
	end

	def edit
		@books = Book.find(params[:id])
	end

	def update
		@books = Book.find(params[:id])
		@books.update(book_params)
		redirect_to book_path
	end

	def destroy
		@books = Book.find(params[:id])
		@books.destroy
		redirect_to books_path
	end

	private

	def book_params
		params.require(:book).permit(:title, :opinion, :book_id, :user_id)
	end

end
