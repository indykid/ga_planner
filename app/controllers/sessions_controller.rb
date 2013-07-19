class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
   session[:user_id] = user.id
   redirect_to root_url, notice: "you are logged in!"
  else
   flash.now.alert = "invalid login credentials, please try again"
   render "new"
  end
 end
 
 def logout 
  session[:user_id] = nil
  redirect_to root_url, notice: "see you next time!"
 end
end
  

  
