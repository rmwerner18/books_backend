class BooksController < ApplicationController
    def index
        render json: Book.all
    end

    def create
        render json: Book.all
    end
end
