class UsersController < ApplicationController

  def show
    @user = User.all
  end

  private def user_params
    params.require(:user).permit(:email)
  end

end
