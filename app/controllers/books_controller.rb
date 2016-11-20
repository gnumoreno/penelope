class BooksController < ApplicationController
  
  
  def new
    @book = Book.new
  end
  
  def create
    @user = current_user
    @book = @user.books.create(user_params)
    if @book.save
      flash[:sucess] = "Book created"
      redirect_to books_url
    else
      render 'new'
    end
  end
  
  def destroy
    @book.destroy
    flash[:sucess] = "Book deleted"
    redirect_to books_url
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def index
    @user = current_user
    @books = Book.where(user_id: @user)
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(user_params)
      redirect_to books_path
    else
      render 'edit'
    end
  end
  
  private
  def user_params
      params.require(:book).permit(:title, :pages, :user_id)
  end
end
