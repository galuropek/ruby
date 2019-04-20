class UsersController < ApplicationController

  def show
    @user = User.all
    @index = 0
  end

  private def user_params
    params.require(:user).permit(:email)
  end

end
