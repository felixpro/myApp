class Api::V1::UsersController < ApplicationController

  # GET /procedures
  # GET /procedures.json
  def index
    @users = User.all
    render json: @users
  end

  # GET /procedures/1
  # GET /procedures/1.json
  def show
    @user = User.find(params[:id])
    render json: @user
  end


  # POST /procedures
  # POST /procedures.json
  def create
    @user = User.new(user_params)


      if @user.save
        format json: @user
      else
        render error: {error: 'Unable to create User.'}, status: 400
      end
  
  end


  # PATCH/PUT /procedures/1
  # PATCH/PUT /procedures/1.json
  def update

    @user = User.find(params[:id])

      if @user
        @user.update(user_params)
        render json: {message: 'User successfully update'}, status: 200
      else
        render json: {error: 'Unable to update User.'}, status: 400
      end
  end

  # DELETE /procedures/1
  # DELETE /procedures/1.json
  def destroy
    @user = User.find(params[:id])

    if @user
      @user.destroy
      render json: {message: 'User successfully deleted'}, status: 200
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password)
    end

end
