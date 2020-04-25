class UsersController < ApplicationController
  
before_action :save_login_state, :only => [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "signed up successfully"
      flash[:color] ="valid"
      redirect_to articles_path , controller: 'articles'
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      return 'new'
    end
    
  end

  private
  def user_params
    params.require(:user).permit(:username, :name ,:password_confirmation, :password, :email)
  end
end
