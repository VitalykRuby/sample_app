class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
<<<<<<< HEAD
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
=======
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
    render 'new'
>>>>>>> d2660275cf4a5feb2bf84fe454f49ecad7dd918c
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
