class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def create
    @user = current_user
    @book = @user.books.create    
    if @book.save
      flash[:info] = "Book created"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def show
  end
  
  private
  def user_params
      params.require(:book).permit(:title, :pages, :user_id)
  end
end
