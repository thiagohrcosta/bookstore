class AuthorsController < ApplicationController
  before_action :set_book, only: [:update, :edit, :show]

  def index
    @authors = Author.all
  end

  def show; end

  def edit; end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def update
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def set_book
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
end
