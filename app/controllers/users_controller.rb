class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    json_response(@users)
  end

  # POST /users
  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  # GET /users/:id
  def show
    json_response(@user)
  end

  # PUT /users/:id
  def update
    @user.update(user_params)
    head :no_content
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    head :no_content
  end

  # POST /rest/verify/:email
  def verify
    @user = User.find_by!(email: params[:email])
    message, status = verify_user(@user, params[:image]) ? ["OK", 200] : ["No Autorizado", 401]
    json_response({ message: message }, status)
  end

  private

  def user_params
    # whitelist params
    params.permit(:email, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
