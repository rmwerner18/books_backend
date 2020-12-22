class BooksController < ApplicationController
    def index
        render json: Book.all
    end

    def create
        book = Book.create(book_params)
        render json: book
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :status)
    end
end
