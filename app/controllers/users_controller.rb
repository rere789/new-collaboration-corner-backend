class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :update, :destroy, :current_user_edit]

def profile
     render json: { user: current_user }, status: :accepted
end

def index
    @users = User.all 
    render json: @users
end 

def show
    user = current_user
    render json: user, :only => [:username, :img, :name, :school, :skillset, :name]
end
 
def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: @user, jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
end


def current_user_edit
     user = User.find(params[:id])
    user.update(user_params)
    render json: user
end

# def update
#     user = current_user
#     if user.update(user_params)
#         render json: user
#     # head :no_content
#     else  
#     render json: { error: 'edit'}
#     end
#   end

def destroy
    user = User.find(params[:id])
    user.destroy
  end

     
private
def user_params
    params.require(:user).permit(:username, :password, :skillset, :img, :school, :name)
    end
    
end
