class UserController < ApplicationController
  def show
    @user = User.find(params['id'])
  end

  def index
  end

  def new
    @user = User.new
    @city = City.all
  end

  def create 
    user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    if user.save
      flash[:success] = "nouvelle utilisateur creer, veuillez vous connecter"
      redirect_to new_session_path
    else
      flash[:alert] = "compte n a pas ete creer"
      render 'new'
    end
  end
end
