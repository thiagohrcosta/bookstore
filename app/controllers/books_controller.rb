class BooksController < ApplicationController
  before_action :set_author, only: [:new, :create, :update]
  before_action :set_book, only: [:show, :update]

  def index
    @books = Book.all
  end

  def show;  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to author_books_path(@books)
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def set_author
    @author = Author.find(params[:author_id])
  end

  def book_params
    params.require(:book).permit(:title, :genre, :cover, :resume, :year, :rating)
  end
end
