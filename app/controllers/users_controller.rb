class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    if params[:search]
        @users = User.search(params[:search]).paginate(:page => params[:page], :per_page => 5)       
      else
    @users = User.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  #def edit
 #   @user = User.find(params[:id])
#  end
  
  def update
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end
    
  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "User deleted."
    else
      redirect_to users_path, :notice => "Can't delete yourself."
    end
  end
 
    def new

      @user = User.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @enroll }
      end
    end
    
    def create
           @user = User.new(params[:user])
           if @user.save
               flash[ :succes] = "Welcome to Nuvolio!"
               if current_user.has_role? :admin
                redirect_to new_admin_user_path
              else
               redirect_to @user
               end
               else
               @title = "Sign Up"
               render 'new'
           end
    end
end