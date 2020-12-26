class BooksController < ApplicationController
    def index
        render json: Book.all
    end

    def create
        book = Book.create(book_params)
        render json: book
    end

    def update
        book = Book.find(params[:id])
        book.update(book_params)
        book.save
        render json: book
    end

    def destroy
        deleted = Book.find(params[:id])
        deleted.delete
        render json: params[:id]
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :status)
    end
end
