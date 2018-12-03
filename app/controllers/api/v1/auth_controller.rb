class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create # POST /api/v1/login
    @user = User.find_by(email: user_login_params[:email])
    # @user.authenticate('password')
    if @user && @user.authenticate(user_login_params[:password])
      # encode_token comes from application controller
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end

  private

  def user_login_params
    # { user: { email: 'Chandler Bing', password: 'hi' } }
    params.require(:user).permit(:email, :password)
  end
end
