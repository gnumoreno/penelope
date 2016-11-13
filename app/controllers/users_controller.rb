class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Penelope!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  private
  
  def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  end
  
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
  
  def correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      flash[:danger] = "You can't view or update other users, Smartass!"
      redirect_to @user
    end
  end
  
  def admin_user
    @user = current_user
    redirect_to @users unless current_user.admin?
  end
  
  def editor_user
    @user = current_user
    redirect_to @user unless current_user.edit?
  end
  
end
