class UsersController < ApplicationController
  load_and_authorize_resource
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: 'thank you for registering!'
    else 
      render action 'new'
    end
  end



  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if params[:user][:role] && current_user.role?('admin')
      @user.role = params[:user].delete(:role)
    end

    if @user.update_attributes(params[:user])
      redirect_to user_path, notice: 'your changes have been saved'
    else
      render action 'edit'
    end
  end

  def dashboard
  end

  def destroy
  end

end
