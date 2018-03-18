class BooksController < ApplicationController

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

	def update

	end

	def destroy
	end

	private

	def book_params
		params.require(:book).permit(:title, :opinion, :book_id, :user_id)
	end

end